//*****************************************************************************************************************************************
//Instituto Federal de Educação, Ciência e Tecnologia de Santa Catarina - Campus Florianópolis
//Departamento Acadêmico de Eletrônica
//Titulo:     Divisores de tensão e corrente em CC
//Professor:  Marco Valério Miorim Villaça
//Autora:     Thaine Martini
//Data:       26/04/2018
//Descrição:  O projeto consiste em calcular divisores de tensão e de corrente em corrente continua
//******************************************************************************************************************************************/

while 1 do  
    printf("\t MENU PRINCIPAL \n<1> Para divisor de tensão\n<2> Para divisor de corrente.\n<3> Para sair.\n")
    option=input(" ","s");
    clc
    if (option=='3')
        break
    end

    select option

    case '1' then//VAI PARA O SUBMENU DE DIVISÃO DE TENSÃO.
        while 1 do
            printf("\tSUBMENU DIVISOR DE TENSÃO\n\n                + V2 -\n+Vo-----R1---o---R2---oGND\n\nDigite:\n<1> Para calcular o resistor R1;\n<2> Para calcular O resistor R2;\n<3> Para calcular a tensão em V2;\n<4> Para calcular a tensão em V;\n<5> Para voltar ao menu principal;\n")
            option2 = input(" ","s");
            clc

            select option2


            case '1' then//PARA CALCULAR O VALOR DO RESISTOR R1.

                v=input("Entre com o valor de V:")

                v2=input("Entre com o valor de V2:")

                r2=input("Entre com o valor de R2:")

                r1=((v*r2)/v2) - r2
                printf("O valor de R1 é:%.2g \n\n",r1)
                sleep(2500)
                clc
                continue


            case '2' then//PARA  CALCULAR O VALOR NO RESISTOR R2.
                v=input("Entre com o valor de V:")

                v2=input("Entre com o valor de V2:")

                r1=input("Entre com o valor de R1:")
                r2=((v*r1)/(v-v2)) - r1;
                printf("O valor de R2 é:%.2g \n\n",r2)
                sleep(2500)
                clc
                continue


            case '3' then//PARA CALCULAR A TENSÃO NO RESISTOR V2.

                v=input("Entre com o valor de V:")

                r1=input("Entre com o valor de r1:")

                r2=input("Entre com o valor de R2:")
                v2=(v*r2)/(r2+r1);
                printf("O valor de V2 é:%.2g \n\n",v2)
                sleep(2500)
                clc


                continue

            case '4' then//PARA CALCULAR O VALOR DA TENSÃO.

                v2=input("Entre com o valor de V2:")

                r1=input("Entre com o valor de r1:")

                r2=input("Entre com o valor de R2:")
                v=(v2*(r1+r2))/r2;
                printf("O valor de V é:%.2g \n\n",v)
                sleep(2500)
                clc

                continue

            case '5' then//PARA VOLTAR AO MENU PRINCIPAL.
                break;
            end

        else//PARA QUANDO APERTAR QUALQUER OUTRA TECLA, PEDIR PARA TENTAR NOVAMENTE.
            printf("Informe novamente...\n\n")
            continue
        end


    case '2' then//DIVISOR DE CORRENTE.
        while 1 do

            printf("      SUBMENU DIVISOR DE CORRENTE\n\n\t   ________________\n \t  | I-->   |       |\n\t  |        |       |\n \t +|      - |     - |\n \t V      I1 R1   I2 R2\n \t -|      + |     + |\n\t  |        |       |\n \t  |________|_______|\nDigite:\n<1> Para calcular o resistor R1;\n<2> Para calcular resistor R2;\n<3> Para calcular a corrente em I2;\n<4> Para calcular a corrente em I;\n<5> Para voltar ao menu principal;\n")

            option3 = input(" ","s");
            clc

            select option3

            case '1' then//PARA CALCULAR O VALOR DO RESISTOR R1.

                i=input("Entre com o valor de i:")

                i2=input("Entre com o valor de i2:")

                r2=input("Entre com o valor de R2:")
                r1=((i*r2)/i2) - r2;
                printf("O valor de R1 é:%.2g \n\n",r1)
                sleep(2500)
                clc

                continue

            case '2' then//PARA CALCULAR O VALOR DO RESISTOR R2.

                i=input("Entre com o valor de i:")

                i2=input("Entre com o valor de i2:")

                r1=input("Entre com o valor de R1:")
                r2=((i*r1)/(i-i2)) - r1;
                printf("O valor de R2 é:%.2g \n\n",r2)
                sleep(2500)
                clc

                continue

            case '3' then//PARA CALCULAR O VALOR DA CORRENTE NO RESISTOR I2.

                i=input("Entre com o valor de i:")

                r2=input("Entre com o valor de r2:")

                r1=input("Entre com o valor de R1:")
                i2=(i*r2)/(r2+r1);
                printf("O valor de I2 é:%.2g \n\n",i2)
                sleep(2500)
                clc

                continue

            case '4' then//PARA CALCULAR A CORRENTE TOTAL DO CIRCUITO.

                i2=input("Entre com o valor de I2:")

                r1=input("Entre com o valor de R1:")

                r2=input("Entre com o valor de R2:")
                i=(i2*(r1+r2))/r2;
                printf("O valor de I é:%.2g \n\n",i)
                sleep(2500)
                clc
                continue


            case  '5' then//PARA VOLTAR AO MENU PRINCIPAL.
                break;
            end

        else
            printf("Informe novamente...\n\n")//PARA QUANDO APERTAR QUALQUER OUTRA TECLA, PEDIR PARA TENTAR NOVAMENTE.
            continue
        end

    case'3' then//FECHAR O PROGRAMA.

    end
end
