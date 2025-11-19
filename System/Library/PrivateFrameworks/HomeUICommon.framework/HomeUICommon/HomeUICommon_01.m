uint64_t sub_25458A680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25458A6F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25458A760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25458A7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25458A840@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return IconStore.IconKind.init(rawValue:)(a1);
}

unint64_t sub_25458A84C@<X0>(unint64_t *a1@<X8>)
{
  result = IconStore.IconKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_25458A874()
{
  type metadata accessor for MicaPackageProvider();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605318, &qword_25459D388);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  result = sub_25458C750(MEMORY[0x277D84F90]);
  *(v1 + 24) = result;
  qword_27F605190 = v1;
  return result;
}

uint64_t static IconStore<>.shared.getter()
{
  if (qword_27F604BA0 != -1)
  {
    swift_once();
  }
}

uint64_t static IconStore<>.iconSymbolToMicaPackageIdentifier(iconSymbol:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 0xD00000000000001DLL && 0x800000025459F0B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 0;
  }

  else if (v4 == 0xD000000000000011 && 0x800000025459F0D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 1;
  }

  else if (v4 == 0xD000000000000011 && 0x800000025459F0F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 2;
  }

  else if (v4 == 0xD00000000000001CLL && 0x800000025459F110 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 3;
  }

  else if (v4 == 0xD000000000000014 && 0x800000025459F130 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 4;
  }

  else if (v4 == 0xD00000000000001FLL && 0x800000025459F150 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 5;
  }

  else if (v4 == 0xD00000000000001FLL && 0x800000025459F170 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 6;
  }

  else if (v4 == 0xD000000000000014 && 0x800000025459F190 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 7;
  }

  else if (v4 == 0xD00000000000001BLL && 0x800000025459F1B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 8;
  }

  else if (v4 == 0xD000000000000012 && 0x800000025459F1D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000010 && 0x800000025459F1F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 11;
  }

  else if (v4 == 0xD000000000000012 && 0x800000025459F210 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000010 && 0x800000025459F230 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 12;
  }

  else if (v4 == 0xD00000000000001DLL && 0x800000025459F250 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD00000000000001BLL && 0x800000025459F270 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 13;
  }

  else if (v4 == 0xD000000000000015 && 0x800000025459F290 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000013 && 0x800000025459F2B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 10;
  }

  else if (v4 == 0xD000000000000016 && 0x800000025459F2D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000014 && 0x800000025459F2F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 9;
  }

  else if (v4 == 0xD00000000000001DLL && 0x800000025459F310 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD00000000000001BLL && 0x800000025459F330 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 15;
  }

  else if (v4 == 0xD00000000000001ELL && 0x800000025459F350 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD00000000000001CLL && 0x800000025459F370 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 16;
  }

  else if (v4 == 0xD000000000000016 && 0x800000025459F390 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000014 && 0x800000025459F3B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 14;
  }

  else if (v4 == 0xD000000000000010 && 0x800000025459F3D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 17;
  }

  else if (v4 == 0xD00000000000001ALL && 0x800000025459F3F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
  {
    v6 = 18;
  }

  else
  {
    result = 0x6B7365642E6E6166;
    if (v4 == 0x6B7365642E6E6166 && a2 == 0xE800000000000000 || (result = sub_25459AB70(), (result & 1) != 0))
    {
      v6 = 19;
    }

    else
    {
      result = 0x6F6F6C662E6E6166;
      if (v4 == 0x6F6F6C662E6E6166 && a2 == 0xE900000000000072 || (result = sub_25459AB70(), (result & 1) != 0))
      {
        v6 = 20;
      }

      else
      {
        result = 0x696C65646E616863;
        if (v4 == 0x696C65646E616863 && a2 == 0xEF6C6C69662E7265 || (result = sub_25459AB70(), (result & 1) != 0))
        {
          v6 = 22;
        }

        else if (v4 == 0xD000000000000011 && 0x800000025459F410 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
        {
          v6 = 21;
        }

        else
        {
          result = 0x7365642E706D616CLL;
          if (v4 == 0x7365642E706D616CLL && a2 == 0xEE006C6C69662E6BLL || (result = sub_25459AB70(), (result & 1) != 0))
          {
            v6 = 24;
          }

          else
          {
            result = 0x6F6C662E706D616CLL;
            if (v4 == 0x6F6C662E706D616CLL && a2 == 0xEF6C6C69662E726FLL || (result = sub_25459AB70(), (result & 1) != 0))
            {
              v6 = 25;
            }

            else
            {
              result = 0x6261742E706D616CLL;
              if (v4 == 0x6261742E706D616CLL && a2 == 0xEF6C6C69662E656CLL || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 34;
              }

              else if (v4 == 0xD00000000000001ELL && 0x800000025459F430 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 23;
              }

              else if (v4 == 0xD000000000000010 && 0x800000025459F450 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 30;
              }

              else if (v4 == 0xD000000000000015 && 0x800000025459F470 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 33;
              }

              else if (v4 == 0xD000000000000013 && 0x800000025459F490 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 32;
              }

              else if (v4 == 0xD000000000000011 && 0x800000025459F4B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 31;
              }

              else if (v4 == 0xD000000000000010 && 0x800000025459F4D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 27;
              }

              else if (v4 == 0xD000000000000012 && 0x800000025459F4F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 28;
              }

              else if (v4 == 0xD000000000000017 && 0x800000025459F510 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
              {
                v6 = 29;
              }

              else if (v4 == 0x6C7562746867696CLL && a2 == 0xE900000000000062)
              {
                v6 = 26;
              }

              else
              {
                result = sub_25459AB70();
                v8 = v4 == 0x6C7562746867696CLL && a2 == 0xEE006C6C69662E62;
                v6 = 26;
                if ((result & 1) == 0 && !v8)
                {
                  result = sub_25459AB70();
                  if ((result & 1) == 0)
                  {
                    result = 0x2E74726F70726961;
                    if (v4 == 0x2E74726F70726961 && a2 == 0xEF656D6572747865 || (result = sub_25459AB70(), (result & 1) != 0))
                    {
                      v6 = 35;
                    }

                    else if (v4 == 0xD000000000000011 && 0x800000025459F530 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                    {
                      v6 = 36;
                    }

                    else
                    {
                      result = 0x746F6D65722E7661;
                      if (v4 == 0x746F6D65722E7661 && a2 == 0xEE006C6C69662E65 || (result = sub_25459AB70(), (result & 1) != 0))
                      {
                        v6 = 37;
                      }

                      else
                      {
                        result = 0x6C6C69662E7674;
                        if (v4 == 0x6C6C69662E7674 && a2 == 0xE700000000000000 || (result = sub_25459AB70(), (result & 1) != 0))
                        {
                          v6 = 38;
                        }

                        else if (v4 == 0xD000000000000014 && 0x800000025459F550 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                        {
                          v6 = 39;
                        }

                        else
                        {
                          result = 0x697473616964656DLL;
                          if (v4 == 0x697473616964656DLL && a2 == 0xEA00000000006B63 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 40;
                          }

                          else if (v4 == 0xD000000000000010 && 0x800000025459F570 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 41;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F590 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 42;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F5B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 43;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F5D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 44;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F5F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 45;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F610 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 46;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F630 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 47;
                          }

                          else if (v4 == 0xD000000000000017 && 0x800000025459F650 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 48;
                          }

                          else if (v4 == 0xD000000000000016 && 0x800000025459F670 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                          {
                            v6 = 49;
                          }

                          else
                          {
                            result = 0x6C69662E6B636F6CLL;
                            if (v4 == 0x6C69662E6B636F6CLL && a2 == 0xE90000000000006CLL || (result = sub_25459AB70(), (result & 1) != 0) || (result = 0x65706F2E6B636F6CLL, v4 == 0x65706F2E6B636F6CLL) && a2 == 0xEE006C6C69662E6ELL || (result = sub_25459AB70(), (result & 1) != 0))
                            {
                              v6 = 50;
                            }

                            else
                            {
                              result = 0x69662E6F65646976;
                              if (v4 == 0x69662E6F65646976 && a2 == 0xEA00000000006C6CLL || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 51;
                              }

                              else if (v4 == 0xD000000000000017 && 0x800000025459F690 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 52;
                              }

                              else if (v4 == 0xD000000000000015 && 0x800000025459F6B0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 53;
                              }

                              else if (v4 == 0xD000000000000013 && 0x800000025459F6D0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                              {
                                v6 = 54;
                              }

                              else
                              {
                                result = 0x6964656D2E697161;
                                if (v4 == 0x6964656D2E697161 && a2 == 0xEA00000000006D75 || (result = sub_25459AB70(), (result & 1) != 0))
                                {
                                  v6 = 55;
                                }

                                else if (v4 == 0xD000000000000019 && 0x800000025459F6F0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                {
                                  v6 = 56;
                                }

                                else if (v4 == 0xD00000000000001ALL && 0x800000025459F710 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                {
                                  v6 = 57;
                                }

                                else
                                {
                                  result = 0x2E746361746E6F63;
                                  if (v4 == 0x2E746361746E6F63 && a2 == 0xEE00726F736E6573 || (result = sub_25459AB70(), (result & 1) != 0))
                                  {
                                    v6 = 58;
                                  }

                                  else
                                  {
                                    result = 0x662E726F736E6573;
                                    if (v4 == 0x662E726F736E6573 && a2 == 0xEB000000006C6C69 || (result = sub_25459AB70(), (result & 1) != 0))
                                    {
                                      v6 = 59;
                                    }

                                    else
                                    {
                                      result = 0x79746964696D7568;
                                      if (v4 == 0x79746964696D7568 && a2 == 0xED00006C6C69662ELL || (result = sub_25459AB70(), (result & 1) != 0))
                                      {
                                        v6 = 60;
                                      }

                                      else if (v4 == 0xD000000000000012 && 0x800000025459F730 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                      {
                                        v6 = 61;
                                      }

                                      else
                                      {
                                        result = 0xD000000000000022;
                                        if (v4 == 0xD000000000000022 && 0x800000025459F750 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                        {
                                          v6 = 62;
                                        }

                                        else if (v4 == 0xD000000000000014 && 0x800000025459F780 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                        {
                                          v6 = 63;
                                        }

                                        else
                                        {
                                          result = 0x772E657275676966;
                                          if (v4 == 0x772E657275676966 && a2 == 0xEB000000006B6C61 || (result = sub_25459AB70(), (result & 1) != 0))
                                          {
                                            v6 = 64;
                                          }

                                          else
                                          {
                                            result = 0x69662E656B6F6D73;
                                            if (v4 == 0x69662E656B6F6D73 && a2 == 0xEA00000000006C6CLL || (result = sub_25459AB70(), (result & 1) != 0))
                                            {
                                              v6 = 65;
                                            }

                                            else if (v4 == 0xD000000000000012 && 0x800000025459F7A0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                            {
                                              v6 = 66;
                                            }

                                            else
                                            {
                                              result = 0x662E746F67697073;
                                              if (v4 == 0x662E746F67697073 && a2 == 0xEB000000006C6C69 || (result = sub_25459AB70(), (result & 1) != 0))
                                              {
                                                v6 = 67;
                                              }

                                              else if (v4 == 0xD00000000000001ALL && 0x800000025459F7C0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                              {
                                                v6 = 68;
                                              }

                                              else
                                              {
                                                result = 0x656C6B6E69727073;
                                                if (v4 == 0x656C6B6E69727073 && a2 == 0xEE006C6C69662E72 || (result = sub_25459AB70(), (result & 1) != 0))
                                                {
                                                  v6 = 69;
                                                }

                                                else if (v4 == 0xD000000000000019 && 0x800000025459F7E0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                {
                                                  v6 = 70;
                                                }

                                                else if (v4 == 0xD000000000000014 && 0x800000025459F800 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                {
                                                  v6 = 71;
                                                }

                                                else
                                                {
                                                  result = 0x662E7265776F6873;
                                                  if (v4 == 0x662E7265776F6873 && a2 == 0xEB000000006C6C69 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 72;
                                                  }

                                                  else if (v4 == 0xD000000000000013 && 0x800000025459F820 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 73;
                                                  }

                                                  else if (v4 == 0xD000000000000018 && 0x800000025459F840 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000016 && 0x800000025459F860 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 75;
                                                  }

                                                  else if (v4 == 0xD000000000000016 && 0x800000025459F880 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000014 && 0x800000025459F8A0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                  {
                                                    v6 = 76;
                                                  }

                                                  else if (v4 == 0x736E696174727563 && a2 == 0xEF6465736F6C632ELL)
                                                  {
                                                    v6 = 77;
                                                  }

                                                  else
                                                  {
                                                    result = sub_25459AB70();
                                                    v10 = v4 == 0x736E696174727563 && a2 == 0xED00006E65706F2ELL;
                                                    v6 = 77;
                                                    if ((result & 1) == 0 && !v10)
                                                    {
                                                      result = sub_25459AB70();
                                                      if ((result & 1) == 0)
                                                      {
                                                        if (v4 == 0xD000000000000013 && 0x800000025459F8C0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000011 && 0x800000025459F8E0 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 78;
                                                        }

                                                        else if (v4 == 0xD000000000000013 && 0x800000025459F900 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000011 && 0x800000025459F920 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 79;
                                                        }

                                                        else if (v4 == 0xD000000000000012 && 0x800000025459F940 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000010 && 0x800000025459F960 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 80;
                                                        }

                                                        else if (v4 == 0xD000000000000014 && 0x800000025459F980 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || (result = 0x612E776F646E6977, v4 == 0x612E776F646E6977) && a2 == 0xED0000676E696E77 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 81;
                                                        }

                                                        else if (v4 == 0xD000000000000016 && 0x800000025459F9A0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0x632E776F646E6977 && a2 == 0xEF746E656D657361 || (result = sub_25459AB70(), (result & 1) != 0))
                                                        {
                                                          v6 = 82;
                                                        }

                                                        else if (v4 == 0xD000000000000015 && 0x800000025459F9C0 == a2)
                                                        {
                                                          v6 = 83;
                                                        }

                                                        else
                                                        {
                                                          result = sub_25459AB70();
                                                          v12 = v4 == 0x632E776F646E6977 && a2 == 0xEE00676E696C6965;
                                                          v6 = 83;
                                                          if ((result & 1) == 0 && !v12)
                                                          {
                                                            result = sub_25459AB70();
                                                            if ((result & 1) == 0)
                                                            {
                                                              if (v4 == 0xD000000000000018 && 0x800000025459F9E0 == a2 || (result = sub_25459AB70(), (result & 1) != 0) || v4 == 0xD000000000000011 && 0x800000025459FA00 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                              {
                                                                v6 = 84;
                                                              }

                                                              else if (v4 == 0xD000000000000016 && 0x800000025459FA20 == a2 || (result = sub_25459AB70(), (result & 1) != 0))
                                                              {
                                                                v6 = 85;
                                                              }

                                                              else
                                                              {
                                                                v6 = 85;
                                                                if (v4 != 0xD000000000000014 || 0x800000025459FA40 != a2)
                                                                {
                                                                  result = sub_25459AB70();
                                                                  if (result)
                                                                  {
                                                                    v6 = 85;
                                                                  }

                                                                  else
                                                                  {
                                                                    v6 = 93;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = v6;
  return result;
}

unint64_t sub_25458C56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_25459A700();

  return sub_25458C5C8(a1, v9, a2, a3);
}

unint64_t sub_25458C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_25459A720();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_25458C750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605178, &qword_25459D058);
    v3 = sub_25459AB20();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_254588354(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25458C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25459A840())
  {
    sub_25459AB30();
    v13 = sub_25459AB20();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25459A840();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25459A820())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25459AA20();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25458C56C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t *sub_25458CB30(uint64_t a1)
{
  v2 = *v1;
  (*(*(*(*v1 + 80) - 8) + 16))(v1 + *(*v1 + 96), a1, *(*v1 + 80));
  v3 = *(v2 + 88);
  v4 = type metadata accessor for IconStore.IconKind();
  swift_getAssociatedTypeWitness();
  v5 = sub_25459A870();
  swift_getTupleTypeMetadata2();
  v6 = sub_25459A810();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_25458C844(v6, v4, v5, WitnessTable);

  *(v1 + *(*v1 + 104)) = v8;
  return v1;
}

uint64_t sub_25458CCAC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25458CD98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for IconStore.IconKind();
  if (v4 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25458CE48(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0xA3)
  {
    v11 = 163;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_26;
  }

  v14 = ((v12 + 1) & ~v12) + v13;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *&a1[v14];
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 > 0xFF)
    {
      v16 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 < 2)
    {
LABEL_26:
      if (v10 > 0xA3)
      {
        v21 = *(v9 + 48);

        return v21(&a1[v12 + 1] & ~v12);
      }

      else
      {
        v20 = *a1;
        if (v20 >= 0x5D)
        {
          return v20 - 92;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v16 = a1[v14];
  if (!a1[v14])
  {
    goto LABEL_26;
  }

LABEL_15:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_25458D01C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0xA3)
  {
    v12 = 163;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 1) & ~v11) + *(v9 + 64);
  if (a3 <= v12)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v12 < a2)
  {
    v15 = ~v12 + a2;
    if (v13 < 4)
    {
      v16 = (v15 >> (8 * v13)) + 1;
      if (v13)
      {
        v19 = v15 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_44:
              if (v14 == 2)
              {
                *&a1[v13] = v16;
              }

              else
              {
                *&a1[v13] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v14)
    {
      a1[v13] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v13] = 0;
  }

  else if (v14)
  {
    a1[v13] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 > 0xA3)
  {
    v20 = *(v9 + 56);

    v20(&a1[v11 + 1] & ~v11, a2);
  }

  else
  {
    *a1 = a2 + 92;
  }
}

uint64_t sub_25458D28C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA4)
  {
    goto LABEL_17;
  }

  if (a2 + 92 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 92) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 92;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 92;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 92;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5D;
  v8 = v6 - 93;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25458D31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 92 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 92) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA4)
  {
    v4 = 0;
  }

  if (a2 > 0xA3)
  {
    v5 = ((a2 - 164) >> 8) + 1;
    *result = a2 + 92;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 92;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_25458D418@<X0>(void *a1@<X8>)
{
  result = _s12HomeUICommon19MicaPackageProviderC4loadySo9CAPackageCSgSSF_0();
  *a1 = result;
  return result;
}

id _s12HomeUICommon19MicaPackageProviderC4loadySo9CAPackageCSgSSF_0()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = sub_25459A730();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D74210]);
  v3 = v1;
  v4 = sub_25459A730();
  v5 = [v2 initWithName:v4 bundle:v3];

  if (!v5)
  {

LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  v6 = objc_opt_self();
  [v6 begin];
  v7 = [v5 data];
  v8 = sub_25459A160();
  v10 = v9;

  v11 = [v5 typeIdentifier];
  sub_25459A740();

  v12 = sub_25459A150();
  v13 = sub_25459A730();

  v20[0] = 0;
  v14 = [objc_opt_self() packageWithData:v12 type:v13 options:0 error:v20];

  v15 = v20[0];
  if (!v14)
  {
    v17 = v15;
    v18 = sub_25459A140();

    swift_willThrow();
    sub_25458D704(v8, v10);

    [v6 commit];
    goto LABEL_7;
  }

  sub_25458D704(v8, v10);
  [v6 commit];

  result = v14;
LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25458D704(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25458D758@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25459A3B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_254591A0C(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25459A2E0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25459A940();
    v16 = sub_25459A520();
    sub_25459A200();

    sub_25459A3A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_25458D940(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_25459175C(v5, v7) & 1;
}

uint64_t MicaIconView.init(package:state:size:color:useAssetMarginSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MicaIconView(0);
  v17 = *(v16 + 20);
  type metadata accessor for MicaIconView.PackageState(0);
  result = sub_25459A6C0();
  if (a4)
  {
    sub_25459A8A0();

    sub_25459A890();
    sub_25459A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_254582148(0, &qword_27F605328, 0x277D75340);
    v19 = sub_25459A970();
  }

  else
  {
    v19 = 0;
  }

  v20 = a6 + *(v16 + 24);
  *v20 = a2;
  *(v20 + 1) = a3;
  *(v20 + 2) = a7;
  *(v20 + 3) = a8;
  *(v20 + 4) = v19;
  v20[40] = a5 & 1;
  *(v20 + 6) = a1;
  return result;
}

uint64_t MicaIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for MicaIconView(0);
  v3 = *(v2 - 8);
  v49 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605330, &qword_25459D438);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605338, &qword_25459D440);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v43 = v39 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605340, &qword_25459D448);
  v14 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v39 - v15;
  v41 = sub_25458DFC8();
  v40 = v16;
  v39[1] = v17;
  v42 = v1;
  v18 = sub_25458E180();
  type metadata accessor for CAPackageViewLayer();
  sub_254590DC8(v1, v5);
  v19 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v20 = swift_allocObject();
  sub_254590E2C(v5, v20 + v19);
  *(v20 + ((v19 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v48 = v18;
  sub_25459A300();
  sub_25459A6B0();
  sub_25459A310();
  v21 = v43;
  (*(v46 + 32))(v43, v9, v47);
  v22 = (v21 + *(v11 + 44));
  v23 = v58;
  *v22 = v57;
  v22[1] = v23;
  v22[2] = v59;
  v24 = v42;
  sub_254590DC8(v42, v5);
  v25 = swift_allocObject();
  sub_254590E2C(v5, v25 + v19);
  v26 = v44;
  sub_254590F70(v21, v44);
  v27 = (v26 + *(v45 + 36));
  *v27 = sub_254590F2C;
  v27[1] = v25;
  v27[2] = 0;
  v27[3] = 0;
  v28 = v24;
  v29 = v24 + *(v49 + 32);
  v30 = *(v29 + 8);
  v31 = *(v29 + 32);
  v32 = *(v29 + 40);
  v33 = *(v29 + 48);
  v51 = *v29;
  v52 = v30;
  v53 = *(v29 + 16);
  v54 = v31;
  v55 = v32;
  v56 = v33;
  sub_254590DC8(v28, v5);
  v34 = swift_allocObject();
  sub_254590E2C(v5, v34 + v19);
  sub_254591258();
  sub_2545913D4();

  v35 = v31;
  v36 = v33;
  sub_25459A630();

  v37 = v54;

  return sub_254579D40(v26, &qword_27F605340, &qword_25459D448);
}

uint64_t sub_25458DFC8()
{
  v1 = type metadata accessor for MicaIconView(0);
  v2 = v0 + *(v1 + 24);
  if (*(v2 + 40) != 1)
  {
    result = *(v2 + 16);
    v10 = *(v2 + 24);
    return result;
  }

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  sub_25459A6D0();
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v11 + 72);
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = [v5 rootLayer];

  if (!v6)
  {
    return 0;
  }

  sub_25459A8A0();
  v7 = v6;
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v7 frame];
  Width = CGRectGetWidth(v12);
  [v7 frame];
  CGRectGetHeight(v13);

  return *&Width;
}

id sub_25458E180()
{
  v1 = sub_25459A2E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for MicaIconView(0) + 24) + 32);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_25458D758(v5);
  v8 = (*(v2 + 88))(v5, v1);
  v9 = *MEMORY[0x277CDF3C0];
  v10 = objc_opt_self();
  if (v8 == v9)
  {
    v11 = [v10 traitCollectionWithUserInterfaceStyle_];
    v12 = [v7 resolvedColorWithTraitCollection_];
  }

  else
  {
    v13 = [v10 traitCollectionWithUserInterfaceStyle_];
    v12 = [v7 resolvedColorWithTraitCollection_];

    (*(v2 + 8))(v5, v1);
  }

  return v12;
}

void sub_25458E338(char *a1, uint64_t a2, void *a3)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(type metadata accessor for MicaIconView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  sub_25459A6D0();
  v6 = *&a1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState];
  *&a1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState] = v10;

  sub_25459A6D0();
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v7 = *(v10 + 72);
  v8 = [v7 rootLayer];

  sub_25459054C(v8);
  if (a3)
  {
    v9 = a3;
    sub_25458E4E4(a1, v9);
  }

  else
  {
  }
}

void sub_25458E4E4(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [a2 CGColor];
    Alpha = CGColorGetAlpha(v6);

    v8 = [v5 fillColor];
    if (v8)
    {
      v9 = v8;
      v10 = CGColorGetAlpha(v8);
    }

    else
    {
      v10 = 0.0;
    }

    if (v10 >= Alpha)
    {
      v17 = Alpha;
    }

    else
    {
      v17 = v10;
    }

    v18 = [a2 colorWithAlphaComponent_];
    v19 = [v18 CGColor];

    [v5 setFillColor_];
  }

  else
  {
    v11 = [a1 backgroundColor];
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = [a2 CGColor];
    v13 = CGColorGetAlpha(v12);

    v14 = [a1 backgroundColor];
    if (v14)
    {
      v15 = v14;
      v16 = CGColorGetAlpha(v14);
    }

    else
    {
      v16 = 0.0;
    }

    if (v16 >= v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = v16;
    }

    v21 = [a2 colorWithAlphaComponent_];
    v19 = [v21 CGColor];

    [a1 setBackgroundColor_];
  }

LABEL_18:
  v22 = [a1 sublayers];
  if (v22)
  {
    v23 = v22;
    sub_254582148(0, &qword_27F605160, 0x277CD9ED0);
    v24 = sub_25459A7E0();

    if (!(v24 >> 62))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_20:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  v25 = sub_25459A9E0();
  if (!v25)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v25 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v25; ++i)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x259C10840](i, v24);
    }

    else
    {
      v27 = *(v24 + 8 * i + 32);
    }

    v28 = v27;
    sub_25458E4E4(v27, a2);
  }

LABEL_29:
}

uint64_t sub_25458E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  sub_25459A8A0();
  v31 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for MicaIconView(0);
  v7 = *(v6 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  sub_25459A6D0();
  v8 = v32;
  v9 = [objc_opt_self() areAnimationsEnabled];
  if (v9 == *(v32 + 64))
  {
    *(v32 + 64) = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v28 = &v28;
    MEMORY[0x28223BE20](KeyPath);
    v32 = v8;
    sub_254591874();
    sub_25459A1C0();
  }

  sub_25459A6D0();
  v11 = v32;
  v12 = a1 + *(v6 + 24);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (*(v32 + 40) == v14 && *(v32 + 48) == v13)
  {
    *(v32 + 40) = v14;
    *(v11 + 48) = v13;
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    v32 = v11;
    sub_254591874();
    sub_25459A1C0();
  }

  sub_25459A6D0();
  v17 = v32;
  v18 = *(v12 + 40);
  if (v18 == *(v32 + 32))
  {
    *(v32 + 32) = v18;
  }

  else
  {
    v19 = swift_getKeyPath();
    v29 = &v28;
    MEMORY[0x28223BE20](v19);
    v32 = v17;
    sub_254591874();
    sub_25459A1C0();
  }

  sub_25459A6D0();
  v20 = *(v12 + 48);
  v21 = v20;
  sub_25458F9E4(v20);

  sub_25459A6D0();
  v22 = *v12;
  v23 = *(v12 + 8);

  sub_25458ED00(v22, v23);

  sub_25459A6D0();
  v24 = v32;
  swift_getKeyPath();
  v32 = v24;
  sub_254591874();
  sub_25459A1D0();

  v26 = *(v24 + 16);
  v25 = *(v24 + 24);

  if (v25)
  {
    sub_25459A6D0();
    sub_2545901CC();
  }
}

uint64_t sub_25458EC04()
{
  swift_getKeyPath();
  v4 = v0;
  sub_254591874();
  sub_25459A1D0();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_25458EC84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_25458ED00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (sub_25459AB70())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_25458EE40()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  return *(v0 + 32);
}

uint64_t sub_25458EEB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_25458EF28(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }

  return result;
}

double sub_25458F008()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

__n128 sub_25458F078@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_25458F0F0(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }
}

void *sub_25458F1E0()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_25458F258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_25458F2E0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F605188, 0x277CD9FB8);
  v5 = v4;
  v6 = a1;
  v7 = sub_25459A980();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

uint64_t sub_25458F440()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  return *(v0 + 64);
}

uint64_t sub_25458F4B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_25458F528(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }

  return result;
}

void sub_25458F608(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = v1[9];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    swift_getKeyPath();
    sub_25459A1D0();

    v8 = v2[9];
    if (!v8 || (v9 = [v8 rootLayer]) == 0)
    {
      if (v2[7])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_25459A1C0();
      }

      return;
    }

    v10 = v9;
    sub_25458F2E0([objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_]);
    swift_getKeyPath();
    sub_25459A1D0();

    if (v2[3])
    {
      v11 = v2[2];
      v12 = v2[3];

      sub_2545901CC();

LABEL_21:

      return;
    }

    v14 = sub_25458FB6C();
    if (v14 >> 62)
    {
      v17 = v14;
      v18 = sub_25459A9E0();
      v14 = v17;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x259C10840](0);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;

      goto LABEL_20;
    }

    v16 = 0;
LABEL_20:
    sub_254590044(v16);
    goto LABEL_21;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F6053D8, 0x277CD9F28);
  v5 = v4;
  v6 = a1;
  v7 = sub_25459A980();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void *sub_25458F8E4()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_25458F95C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_25458F9E4(void *a1)
{
  v3 = *(v1 + 72);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F6053D8, 0x277CD9F28);
  v4 = v3;
  v5 = a1;
  v6 = sub_25459A980();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 72);
LABEL_8:
  *(v1 + 72) = a1;
  v8 = v5;
  sub_25458F608(v9);
}

uint64_t sub_25458FB6C()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 states];

      if (v4)
      {
        v5 = sub_25459A7E0();

        v6 = sub_25458FC68(v5);

        if (v6)
        {
          return v6;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25458FC68(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25459AA80();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_254581EF8(i, v6);
    sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25459AA60();
    v4 = *(v7 + 16);
    sub_25459AA90();
    sub_25459AAA0();
    sub_25459AA70();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_25458FD74(void *a1)
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v3 = *(v1 + 80);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v4 name];
  if (v5)
  {
    v6 = v5;
    v7 = sub_25459A740();
    v9 = v8;

    if (a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = 0;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v9 = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = [a1 name];
  if (v10)
  {
    v11 = v10;
    v12 = sub_25459A740();
    a1 = v13;

    if (!v9)
    {
LABEL_14:
      if (a1)
      {
        goto LABEL_15;
      }

LABEL_20:

      return;
    }
  }

  else
  {
    v12 = 0;
    a1 = 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

LABEL_9:
  if (a1)
  {
    if (v7 == v12 && v9 == a1)
    {

LABEL_18:

      return;
    }

    v16 = sub_25459AB70();

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_15:

LABEL_16:
  v14 = [v4 name];
  if (v14)
  {
    v15 = v14;
    sub_25459A740();

    sub_2545901CC();
    goto LABEL_18;
  }

  __break(1u);
}

void *sub_25458FF44()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_25458FFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_254590044(void *a1)
{
  v3 = *(v1 + 80);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
  v4 = v3;
  v5 = a1;
  v6 = sub_25459A980();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 80);
LABEL_8:
  *(v1 + 80) = a1;
  v8 = v5;
  sub_25458FD74(v9);
}

void sub_2545901CC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v2 = *(v0 + 56);
  if (v2)
  {
    swift_getKeyPath();
    v3 = v2;
    sub_25459A1D0();

    v4 = *(v0 + 72);
    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = [v4 rootLayer];
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = v5;
    v7 = sub_25459A730();
    v8 = [v6 stateWithName_];

    if (!v8)
    {
      v9 = v3;
LABEL_14:

      v3 = v6;
LABEL_15:

      return;
    }

    v9 = v6;
    v10 = [v3 stateOfLayer_];
    if (v10)
    {
      v11 = v10;
      sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
      v12 = v8;
      v13 = sub_25459A980();

      if (v13)
      {

        v14 = v9;
        v8 = v3;
LABEL_13:

        v6 = v8;
        goto LABEL_14;
      }
    }

    else
    {
      v15 = v8;
    }

    swift_getKeyPath();
    sub_25459A1D0();

    v16 = 0.0;
    if (*(v1 + 64))
    {
      *&v16 = 1.0;
    }

    [v3 setState:v8 ofLayer:v9 transitionSpeed:v16];

    [v3 cancelTimers];
    v14 = v3;
    goto LABEL_13;
  }
}

uint64_t MicaIconView.PackageState.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCV12HomeUICommon12MicaIconView12PackageState___observationRegistrar;
  v3 = sub_25459A1F0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MicaIconView.PackageState.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCV12HomeUICommon12MicaIconView12PackageState___observationRegistrar;
  v3 = sub_25459A1F0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void sub_25459054C(void *a1)
{
  v2 = OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

id sub_2545905E4()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for CAPackageViewLayer();
  result = objc_msgSendSuper2(&v31, sel_layoutSublayers);
  v3 = *&v0[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer];
  if (!v3)
  {
    return result;
  }

  v4 = *&v1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState];
  if (v4 == 0.0)
  {
    return result;
  }

  v5 = objc_opt_self();
  v6 = v3;

  [v5 begin];
  [v5 setDisableActions_];
  swift_getKeyPath();
  v30.m11 = v4;
  sub_254591874();
  sub_25459A1D0();

  if (*(*&v4 + 32) == 1)
  {
    swift_getKeyPath();
    v28[0] = *&v4;
    sub_25459A1D0();

    v7 = *(*&v4 + 72);
    if (v7)
    {
      v8 = v7;
      v9 = sub_25459A730();
      v10 = [v8 publishedObjectWithName_];

      if (v10)
      {
        sub_25459A9B0();
        swift_unknownObjectRelease();
      }

      else
      {
        *v28 = 0u;
        v29 = 0u;
      }

      *&v30.m11 = *v28;
      *&v30.m13 = v29;
      if (*(&v29 + 1))
      {
        sub_254582148(0, &qword_27F605160, 0x277CD9ED0);
        if (swift_dynamicCast())
        {
          v11 = v28[0];
          [v28[0] bounds];
          Height = CGRectGetHeight(v32);
          [v28[0] bounds];
          Width = CGRectGetWidth(v33);
          [v6 bounds];
          v15 = v14;
          v17 = v16;
          [v28[0] bounds];
          v20 = v15 - v19;
          if (Width < Height)
          {
            v20 = v17 - v18;
          }

          v21 = v20 * 0.5;
          [v6 bounds];
          v35 = CGRectInset(v34, v21, v21);
          [v6 setBounds_];
        }

        goto LABEL_15;
      }
    }

    else
    {
      memset(&v30, 0, 32);
    }

    sub_254579D40(&v30, &qword_27F605158, &qword_25459CFF8);
  }

LABEL_15:
  [v6 bounds];
  v23 = v22;
  v25 = v24;
  swift_getKeyPath();
  v30.m11 = v4;
  sub_25459A1D0();

  v26 = *(*&v4 + 40) / v23;
  swift_getKeyPath();
  v30.m11 = v4;
  sub_25459A1D0();

  if (*(*&v4 + 48) / v25 < v26)
  {
    v26 = *(*&v4 + 48) / v25;
  }

  [v1 bounds];
  MidX = CGRectGetMidX(v36);
  [v1 bounds];
  [v6 setPosition_];
  CATransform3DMakeScale(&v30, v26, v26, 1.0);
  [v6 setTransform_];
  [v6 setGeometryFlipped_];
  [v5 commit];
}

id sub_254590BCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_254590C50(uint64_t a1)
{
  v2 = sub_25459A2E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25459A360();
}

uint64_t sub_254590D38@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MicaIconView.PackageState(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_254591A7C(0, 0, 0);
  *a1 = result;
  return result;
}

uint64_t sub_254590DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MicaIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254590E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MicaIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_254590E90(char *a1)
{
  v3 = *(type metadata accessor for MicaIconView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_25458E338(a1, v1 + v4, v5);
}

uint64_t sub_254590F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605338, &qword_25459D440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for MicaIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25459A2E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605348, &qword_25459D450);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458) + 28)];

  v11 = v5 + *(v1 + 24);
  v12 = *(v11 + 1);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_254591258()
{
  result = qword_27F605358;
  if (!qword_27F605358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605340, &qword_25459D448);
    sub_2545912E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605358);
  }

  return result;
}

unint64_t sub_2545912E4()
{
  result = qword_27F605360;
  if (!qword_27F605360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605338, &qword_25459D440);
    sub_254591370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605360);
  }

  return result;
}

unint64_t sub_254591370()
{
  result = qword_27F605368;
  if (!qword_27F605368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605330, &qword_25459D438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605368);
  }

  return result;
}

unint64_t sub_2545913D4()
{
  result = qword_27F605370;
  if (!qword_27F605370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605370);
  }

  return result;
}

void sub_25459146C()
{
  sub_254591558(319, &qword_27F605398, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_254591558(319, &qword_27F6053A0, type metadata accessor for MicaIconView.PackageState, MEMORY[0x277CE1438]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254591558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2545915C4()
{
  result = sub_25459A1F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2545916B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254591700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25459175C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_25459AB70() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    sub_254582148(0, &qword_27F605328, 0x277D75340);
    v7 = v6;
    v8 = v5;
    v9 = sub_25459A980();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)))
  {
    return 0;
  }

  sub_254582148(0, &qword_27F6053C8, 0x277D82BB8);
  v11 = *(a1 + 48);
  v12 = *(a2 + 48);
  return sub_25459A980() & 1;
}

unint64_t sub_254591874()
{
  result = qword_27F6053D0;
  if (!qword_27F6053D0)
  {
    type metadata accessor for MicaIconView.PackageState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6053D0);
  }

  return result;
}

void sub_2545918CC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 80);
  *(v2 + 80) = v1;
  v4 = v1;
  sub_25458FD74(v3);
}

void sub_254591918()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  v4 = v1;
  sub_25458F608(v3);
}

void sub_254591964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

__n128 sub_2545919AC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_2545919CC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_254591A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254591A7C(void *a1, void *a2, void *a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  sub_25459A1E0();
  v7 = a1;
  sub_25458F2E0(a1);
  v8 = a2;
  sub_25458F9E4(a2);
  sub_254590044(a3);
  return v3;
}

unint64_t sub_254591B5C()
{
  result = sub_254591B80();
  qword_27F6053E0 = result;
  *algn_27F6053E8 = v1;
  return result;
}

unint64_t sub_254591B80()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() redColor];
  v7 = 0;
  v8[0] = 0;
  v6 = 0;
  [v0 getRed:v8 green:&v7 blue:&v6 alpha:0];
  sub_25459AA10();

  v1 = sub_25459A8F0();
  MEMORY[0x259C10580](v1);

  MEMORY[0x259C10580](0x206E6565726720, 0xE700000000000000);
  v2 = sub_25459A8F0();
  MEMORY[0x259C10580](v2);

  MEMORY[0x259C10580](0x2065756C6220, 0xE600000000000000);
  v3 = sub_25459A8F0();
  MEMORY[0x259C10580](v3);

  result = 0xD000000000000017;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static PlatformCanary.tweet.getter()
{
  if (qword_27F604BA8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F6053E0;

  return v0;
}

id PlatformCanary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlatformCanary.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformCanary();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlatformCanary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformCanary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_254591E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25459A4C0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25459A4D0();
}

uint64_t sub_254591F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25459A4C0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25459A4D0();
}

uint64_t View.modify<A>(if:then:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a7;
  v44 = a6;
  v37 = a3;
  v38 = a2;
  v40 = a1;
  v39 = *(a4 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v15);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v42 = sub_25459A4E0();
  v26 = *(v42 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v42);
  v29 = &v37 - v28;
  if (v40)
  {
    v38(v41);
    v30 = v19[2];
    v30(v25, v23, a5);
    v41 = a8;
    v31 = v19[1];
    v31(v23, a5);
    v30(v23, v25, a5);
    sub_254591E5C(v23, a5);
    v31(v23, a5);
    v31(v25, a5);
    a8 = v41;
  }

  else
  {
    v32 = v39;
    v33 = *(v39 + 16);
    v33(v17, v41, a4);
    v33(v14, v17, a4);
    sub_254591F54(v14, a5, a4);
    v34 = *(v32 + 8);
    v34(v14, a4);
    v34(v17, a4);
  }

  v45 = v43;
  v46 = v44;
  v35 = v42;
  swift_getWitnessTable();
  (*(v26 + 16))(a8, v29, v35);
  return (*(v26 + 8))(v29, v35);
}

uint64_t View.modify<A, B>(if:then:else:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = a5;
  v44 = a4;
  v41 = a3;
  v42 = a2;
  v13 = a1;
  v49 = a8;
  v45 = *(a7 - 8);
  v14 = *(v45 + 64);
  v48 = a11;
  v50 = a10;
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v18);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - v27;
  v47 = sub_25459A4E0();
  v29 = *(v47 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v47);
  v32 = &v41 - v31;
  if (v13)
  {
    v42(v46);
    v33 = v22[2];
    v33(v28, v26, a6);
    v34 = v22[1];
    v34(v26, a6);
    v33(v26, v28, a6);
    v35 = v48;
    sub_254591E5C(v26, a6);
    v34(v26, a6);
    v34(v28, a6);
  }

  else
  {
    v44(v46);
    v36 = v45;
    v37 = *(v45 + 16);
    v37(v20, v17, a7);
    v38 = *(v36 + 8);
    v38(v17, a7);
    v37(v17, v20, a7);
    v35 = v48;
    sub_254591F54(v17, a6, a7);
    v38(v17, a7);
    v38(v20, a7);
  }

  v51 = v50;
  v52 = v35;
  v39 = v47;
  swift_getWitnessTable();
  (*(v29 + 16))(v49, v32, v39);
  return (*(v29 + 8))(v32, v39);
}

id HUIconImageNamed(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __HUIconImageNamed_block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = a2;
  v6 = __HUIconImageNamed_block_invoke(v18);
  v7 = @"-vibrant";
  if (a3 == 1)
  {
    v7 = &stru_286674A20;
  }

  v8 = v7;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, v8, v6];
  v10 = HUCommonNullableImageNamed(v9);
  if (v10)
  {
    goto LABEL_4;
  }

  v12 = [v5 stringByAppendingString:v6];
  v11 = HUCommonNullableImageNamed(v12);

  if (!v11)
  {
    v13 = [v5 stringByAppendingString:v8];
    v11 = HUCommonNullableImageNamed(v13);

    if (!v11)
    {
      v10 = HUCommonNullableImageNamed(v5);
      if (!v10)
      {
        v15 = *MEMORY[0x277D13A38];
        if ([v5 isEqualToString:*MEMORY[0x277D13A38]])
        {
          v16 = [MEMORY[0x277CCA890] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIImage * _Nonnull HUIconImageNamed(NSString *__strong _Nonnull, HUIconSize, HUIconDisplayStyle)"}];
          [v16 handleFailureInFunction:v17 file:@"HUIconDefines.m" lineNumber:42 description:@"No generic fallback icon found"];
        }

        v10 = HUIconImageNamed(v15, a2, a3);
      }

LABEL_4:
      v11 = v10;
    }
  }

  return v11;
}

double HUDefaultSizeForIconSize(uint64_t a1)
{
  result = 16.0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 32.0;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return *MEMORY[0x277D77268];
      }

      return result;
    }

    return 48.0;
  }

  if (!a1 || a1 == 2)
  {
    return 24.0;
  }

  return result;
}

void sub_254595CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254596484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id HUCommonBundle()
{
  if (qword_281122560 != -1)
  {
    dispatch_once(&qword_281122560, &__block_literal_global_0);
  }

  v1 = qword_281122558;

  return v1;
}

uint64_t __HUCommonBundle_block_invoke()
{
  qword_281122558 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id HUCommonImageNamed(void *a1)
{
  v1 = a1;
  v2 = HUCommonNullableImageNamed(v1);
  if (!v2)
  {
    NSLog(&cfstr_MissingImage.isa, v1);
  }

  return v2;
}

id HUCommonNullableImageNamed(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:*MEMORY[0x277D13A50]] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D13A40]))
  {
    v2 = MEMORY[0x277D755B0];
    v3 = HFHomeAppBundleID();
    v4 = [v2 _applicationIconImageForBundleIdentifier:v3 format:2];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = __HUCommonNullableImageNamed_block_invoke;
    v12 = &unk_27977D718;
    v13 = v1;
    v5 = v13;
    v6 = v10;
    if (qword_281122568 != -1)
    {
      dispatch_once(&qword_281122568, &__block_literal_global_13);
    }

    if (_MergedGlobals_7 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"HomeUICommon_%@", v5];
      v8 = [MEMORY[0x277D65ED0] systemAppPersistenteCache];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = ___HUCommonLoadCachedImageWithGenerationBlock_block_invoke;
      v14[3] = &unk_27977D740;
      v15 = v6;
      v4 = [v8 imageForKey:v7 generatingIfNecessaryWithBlock:v14];
    }

    else
    {
      v4 = v11(v6);
    }
  }

  return v4;
}

id __HUCommonNullableImageNamed_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D755B0];
  v2 = *(a1 + 32);
  v3 = HUCommonBundle();
  v4 = [v1 imageNamed:v2 inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}