void MomentsEventData.TimeTagType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_71_21(0x6E726F4Du);
        return;
      case 2:
        OUTLINED_FUNCTION_260_0(0x6E7265746641);
        return;
      case 3:
        OUTLINED_FUNCTION_71_21(0x6E657645u);
        return;
      case 4:
        OUTLINED_FUNCTION_255_3(1751607630);
        return;
      case 0xBLL:
        v1 = 1801807191;
        goto LABEL_17;
      case 0xCLL:
        OUTLINED_FUNCTION_194_4(0x6E656B656557);
        return;
      case 0xELL:
        v1 = 1768714056;
        goto LABEL_17;
      case 0x12:
        OUTLINED_FUNCTION_186_4(1633972052);
        return;
      case 0x16:
        v1 = 1936029012;
LABEL_17:
        OUTLINED_FUNCTION_263_2(v1 & 0xFFFF0000FFFFFFFFLL | 0x616400000000);
        return;
      case 0x1DLL:
      case 0x1ELL:
        OUTLINED_FUNCTION_144();
        return;
      case 0x1FLL:
        v2 = 1936287828;
        goto LABEL_15;
      case 0x20:
        v2 = 1953718604;
LABEL_15:
        OUTLINED_FUNCTION_190_3(v2 & 0xFFFF0000FFFFFFFFLL | 0x655900000000);
        break;
      default:
        return;
    }
  }
}

void MomentsEventData.TimeTagType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_148_9();
    v5 = v3 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_46_24(0x6E726F4Du);
      v6 = v3 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x6F6F6E7265746641 && v0 == 0xE90000000000006ELL;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_46_24(0x6E657645u);
          v8 = v3 && v0 == 0xE700000000000000;
          if (v8 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_154_9(1751607630);
            v9 = v3 && v0 == 0xE500000000000000;
            if (v9 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v10 = v1 == 0x746867694E64694DLL && v0 == 0xE800000000000000;
              if (v10 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v11 = v1 == 7954756 && v0 == 0xE300000000000000;
                if (v11 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v12 = v1 == 1801807191 && v0 == 0xE400000000000000;
                  if (v12 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_299_2(1953394509);
                    v13 = v3 && v0 == 0xE500000000000000;
                    if (v13 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v14 = v1 == 1918985561 && v0 == 0xE400000000000000;
                      if (v14 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v15 = v1 == 0x6D726554676E6F4CLL && v0 == 0xE800000000000000;
                        if (v15 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_129_12(0x61646B656557);
                          v16 = v3 && v0 == 0xE700000000000000;
                          if (v16 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_141_9(0x6E656B656557);
                            v17 = v3 && v0 == 0xE700000000000000;
                            if (v17 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_204_2(0x676E6F4Cu);
                              v19 = v3 && v0 == v18;
                              if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_129_12(0x6164696C6F48);
                                v20 = v3 && v0 == 0xE700000000000000;
                                if (v20 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v21 = v1 == 0x6E6F697461636156 && v0 == 0xE800000000000000;
                                  if (v21 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v22 = v1 == 0x6E6F6F6E657250 && v0 == 0xE700000000000000;
                                    if (v22 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v23 = v1 == 0x696E657665657250 && v0 == 0xEA0000000000676ELL;
                                      if (v23 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_187_4(1633972052);
                                        v24 = v3 && v0 == 0xE500000000000000;
                                        if (v24 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          v25 = v1 == 0x6164726574736559 && v0 == 0xE900000000000079;
                                          if (v25 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v26 = v1 == 0x7961646E7553 && v0 == 0xE600000000000000;
                                            if (v26 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v27 = v1 == 0x7961646E6F4DLL && v0 == 0xE600000000000000;
                                              if (v27 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_129_12(0x616473657554);
                                                v28 = v3 && v0 == 0xE700000000000000;
                                                if (v28 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v29 = v1 == 0x616473656E646557 && v0 == 0xE900000000000079;
                                                  if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v30 = v1 == 0x7961647372756854 && v0 == 0xE800000000000000;
                                                    if (v30 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      v31 = v1 == 0x796164697246 && v0 == 0xE600000000000000;
                                                      if (v31 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v32 = v1 == 0x7961647275746153 && v0 == 0xE800000000000000;
                                                        if (v32 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_204_2(0x73696854u);
                                                          v33 = v3 && v0 == 0xE800000000000000;
                                                          if (v33 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_204_2(0x7473614Cu);
                                                            v34 = v3 && v0 == 0xE800000000000000;
                                                            if (v34 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              v35 = v1 == 0x746E6F4D73696854 && v0 == 0xE900000000000068;
                                                              if (v35 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                v36 = v1 == 0x746E6F4D7473614CLL && v0 == 0xE900000000000068;
                                                                if (v36 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_155_7(0x655973696854);
                                                                  v37 = v3 && v0 == 0xE800000000000000;
                                                                  if (v37 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_155_7(0x65597473614CLL);
                                                                    v38 = v3 && v0 == 0xE800000000000000;
                                                                    if (v38 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = v1 == 0x7361666B61657242 && v0 == 0xE900000000000074;
                                                                      if (v39 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_299_2(1668183372);
                                                                        v40 = v3 && v0 == 0xE500000000000000;
                                                                        if (v40 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_215_3(1852729668);
                                                                          if (v3 && v0 == 0xE600000000000000)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            OUTLINED_FUNCTION_21_38();
                                                                            OUTLINED_FUNCTION_89();
                                                                            v4 = 35;
                                                                            if ((v1 & 1) == 0)
                                                                            {
                                                                              v4 = 0;
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
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.GenreType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.GenreType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v159 = OUTLINED_FUNCTION_39(v11);
    v163 = OUTLINED_FUNCTION_84_2(v159, v160, v161, v162, &qword_1EAE42E08, &qword_1939970D8);
    v7 = OUTLINED_FUNCTION_17_2(v163);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v164 = OUTLINED_FUNCTION_39(v18);
    v168 = OUTLINED_FUNCTION_85(v164, v165, v166, v167, &qword_1EAE42E08, &qword_1939970D8);
    v14 = OUTLINED_FUNCTION_17_2(v168);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v169, v170, v171, v172, v173, v174);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v175 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v175, v176, v177, v178, &qword_1EAE42E08, &qword_1939970D8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v179 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v179, v180, v181, v182, &qword_1EAE42E08, &qword_1939970D8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v183 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v183, v184, v185, v186, &qword_1EAE42E08, &qword_1939970D8);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v187 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v187, v188, v189, v190, &qword_1EAE42E08, &qword_1939970D8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v191 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v191, v192, v193, v194, &qword_1EAE42E08, &qword_1939970D8);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v195 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v195, v196, v197, v198, &qword_1EAE42E08, &qword_1939970D8);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v199 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v199, v200, v201, v202, &qword_1EAE42E08, &qword_1939970D8);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v203 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v203, v204, v205, v206, &qword_1EAE42E08, &qword_1939970D8);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v207 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v207, v208, v209, v210, &qword_1EAE42E08, &qword_1939970D8);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v211 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v211, v212, v213, v214, &qword_1EAE42E08, &qword_1939970D8);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v215 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v215, v216, v217, v218, &qword_1EAE42E08, &qword_1939970D8);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v219 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v219, v220, v221, v222, &qword_1EAE42E08, &qword_1939970D8);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v223 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v223, v224, v225, v226, &qword_1EAE42E08, &qword_1939970D8);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v227 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v227, v228, v229, v230, &qword_1EAE42E08, &qword_1939970D8);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v231 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v231, v232, v233, v234, &qword_1EAE42E08, &qword_1939970D8);
    v99 = v96;
  }

  OUTLINED_FUNCTION_19_54(v96, v97, v98, v99);
  if (!(v19 ^ v20 | v13))
  {
    v235 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v235, v236, v237, v238, &qword_1EAE42E08, &qword_1939970D8);
    v104 = v101;
  }

  OUTLINED_FUNCTION_20_47(v101, v102, v103, v104);
  if (!(v19 ^ v20 | v13))
  {
    v239 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_84_2(v239, v240, v241, v242, &qword_1EAE42E08, &qword_1939970D8);
    v109 = v106;
  }

  OUTLINED_FUNCTION_25_36(v106, v107, v108, v109);
  if (!(v19 ^ v20 | v13))
  {
    v243 = OUTLINED_FUNCTION_39(v115);
    v111 = OUTLINED_FUNCTION_85(v243, v244, v245, v246, &qword_1EAE42E08, &qword_1939970D8);
    v114 = v111;
  }

  OUTLINED_FUNCTION_22_38(v111, v112, v113, v114);
  if (!(v19 ^ v20 | v13))
  {
    v247 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v247, v248, v249, v250, &qword_1EAE42E08, &qword_1939970D8);
    v119 = v116;
  }

  OUTLINED_FUNCTION_24_46(v116, v117, v118, v119);
  if (!(v19 ^ v20 | v13))
  {
    v251 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_85(v251, v252, v253, v254, &qword_1EAE42E08, &qword_1939970D8);
    v124 = v121;
  }

  OUTLINED_FUNCTION_21_45(v121, v122, v123, v124);
  if (!(v19 ^ v20 | v13))
  {
    v255 = OUTLINED_FUNCTION_39(v130);
    v126 = OUTLINED_FUNCTION_84_2(v255, v256, v257, v258, &qword_1EAE42E08, &qword_1939970D8);
    v129 = v126;
  }

  OUTLINED_FUNCTION_23_44(v126, v127, v128, v129);
  if (!(v19 ^ v20 | v13))
  {
    v259 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_85(v259, v260, v261, v262, &qword_1EAE42E08, &qword_1939970D8);
    v134 = v131;
  }

  OUTLINED_FUNCTION_28_32(v131, v132, v133, v134);
  if (!(v19 ^ v20 | v13))
  {
    v263 = OUTLINED_FUNCTION_39(v140);
    v136 = OUTLINED_FUNCTION_84_2(v263, v264, v265, v266, &qword_1EAE42E08, &qword_1939970D8);
    v139 = v136;
  }

  OUTLINED_FUNCTION_32_33(v136, v137, v138, v139);
  if (!(v19 ^ v20 | v13))
  {
    v267 = OUTLINED_FUNCTION_39(v145);
    v141 = OUTLINED_FUNCTION_85(v267, v268, v269, v270, &qword_1EAE42E08, &qword_1939970D8);
    v144 = v141;
  }

  OUTLINED_FUNCTION_30_29(v141, v142, v143, v144);
  if (!(v19 ^ v20 | v13))
  {
    v271 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_84_2(v271, v272, v273, v274, &qword_1EAE42E08, &qword_1939970D8);
    v149 = v146;
  }

  OUTLINED_FUNCTION_31_39(v146, v147, v148, v149);
  if (!(v19 ^ v20 | v13))
  {
    v275 = OUTLINED_FUNCTION_39(v155);
    v151 = OUTLINED_FUNCTION_85(v275, v276, v277, v278, &qword_1EAE42E08, &qword_1939970D8);
    v154 = v151;
  }

  OUTLINED_FUNCTION_47_5(v151, v152, v153, v154);
  return OUTLINED_FUNCTION_89_3(v156, v157);
}

void MomentsEventData.GenreType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_198_2(1702194242);
        break;
      case 2:
        OUTLINED_FUNCTION_164_7(0x72646C696843);
        break;
      case 3:
        OUTLINED_FUNCTION_245_4();
        break;
      case 6:
        OUTLINED_FUNCTION_263_2(0x72746E756F43);
        break;
      case 7:
        OUTLINED_FUNCTION_115_12(1668178244);
        break;
      case 8:
        OUTLINED_FUNCTION_118_14();
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_286_2();
        break;
      case 0x14:
        OUTLINED_FUNCTION_191_4(0x7277676E6F53);
        break;
      case 0x15:
        OUTLINED_FUNCTION_259_2(0x74646E756F53);
        break;
      case 0x16:
        OUTLINED_FUNCTION_144();
        break;
      case 0x19:
        OUTLINED_FUNCTION_115_12(1768189513);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.GenreType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_192_3(0x6E7265746C41);
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_307_1(1702194242);
      v7 = v3 && v0 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_210_2(0x72646C696843);
        v9 = v3 && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v11 = v1 == OUTLINED_FUNCTION_245_4() && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v12 = v1 == 0x6163697373616C43 && v0 == 0xE90000000000006CLL;
            if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v13 = v1 == 0x7964656D6F43 && v0 == 0xE600000000000000;
              if (v13 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_103_14();
                v14 = v3 && v0 == 0xE700000000000000;
                if (v14 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_116_15(1668178244);
                  v15 = v3 && v0 == 0xE500000000000000;
                  if (v15 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v16 = v1 == 0x6E6F727463656C45 && v0 == 0xEA00000000006369;
                    if (v16 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v17 = v1 == 0x706F48706948 && v0 == 0xE600000000000000;
                      if (v17 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v18 = v1 == 7364946 && v0 == 0xE300000000000000;
                        if (v18 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v19 = v1 == 2054840650 && v0 == 0xE400000000000000;
                          if (v19 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v20 = v1 == 7368528 && v0 == 0xE300000000000000;
                            if (v20 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v21 = v1 == 0x6E6974614CLL && v0 == 0xE500000000000000;
                              if (v21 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v22 = v1 == 1801678674 && v0 == 0xE400000000000000;
                                if (v22 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v24 = v1 == OUTLINED_FUNCTION_286_2() && v0 == v23;
                                  if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v25 = v1 == 0x42444E4152 && v0 == 0xE500000000000000;
                                    if (v25 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v26 = v1 == 1819635539 && v0 == 0xE400000000000000;
                                      if (v26 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v27 = v1 == 0x656167676552 && v0 == 0xE600000000000000;
                                        if (v27 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_215_3(1735289171);
                                          v28 = v3 && v0 == 0xE600000000000000;
                                          if (v28 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v29 = v1 == 0x74697277676E6F53 && v0 == 0xEA00000000007265;
                                            if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v30 = v1 == 0x617274646E756F53 && v0 == 0xEA00000000006B63;
                                              if (v30 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v31 = v1 == 0x646977646C726F57 && v0 == 0xE900000000000065;
                                                if (v31 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v32 = v1 == 1937008968 && v0 == 0xE400000000000000;
                                                  if (v32 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v33 = v1 == 0x736569646C4FLL && v0 == 0xE600000000000000;
                                                    if (v33 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_116_15(1768189513);
                                                      v34 = v3 && v0 == 0xE500000000000000;
                                                      if (v34 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v35 = v1 == 0x6C6174654DLL && v0 == 0xE500000000000000;
                                                        if (v35 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else if (v1 == 0x73726568744FLL && v0 == 0xE600000000000000)
                                                        {

                                                          OUTLINED_FUNCTION_159_9();
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_21_38();
                                                          OUTLINED_FUNCTION_89();
                                                          v4 = 27;
                                                          if ((v1 & 1) == 0)
                                                          {
                                                            v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.MediaType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.MediaType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v59 = OUTLINED_FUNCTION_39(v11);
    v63 = OUTLINED_FUNCTION_84_2(v59, v60, v61, v62, &qword_1EAE42E00, &qword_1939970D0);
    v7 = OUTLINED_FUNCTION_17_2(v63);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v64 = OUTLINED_FUNCTION_39(v18);
    v68 = OUTLINED_FUNCTION_85(v64, v65, v66, v67, &qword_1EAE42E00, &qword_1939970D0);
    v14 = OUTLINED_FUNCTION_17_2(v68);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v69, v70, v71, v72, v73, v74);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v75 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v75, v76, v77, v78, &qword_1EAE42E00, &qword_1939970D0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v79 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v79, v80, v81, v82, &qword_1EAE42E00, &qword_1939970D0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v83 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v83, v84, v85, v86, &qword_1EAE42E00, &qword_1939970D0);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v87 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v87, v88, v89, v90, &qword_1EAE42E00, &qword_1939970D0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v91 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v91, v92, v93, v94, &qword_1EAE42E00, &qword_1939970D0);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v95 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v95, v96, v97, v98, &qword_1EAE42E00, &qword_1939970D0);
    v54 = v51;
  }

  OUTLINED_FUNCTION_47_5(v51, v52, v53, v54);
  return OUTLINED_FUNCTION_89_3(v56, v57);
}

uint64_t MomentsEventData.MediaType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x636973754DLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_111_14(0x736163646F50);
      break;
    case 2:
      result = OUTLINED_FUNCTION_260_0(0x426F69647541);
      break;
    case 3:
      result = 0x5573656E755449;
      break;
    case 4:
      result = OUTLINED_FUNCTION_270_3();
      break;
    case 5:
      v2 = 1768191297;
      goto LABEL_11;
    case 6:
      v2 = 1701079382;
LABEL_11:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 7:
      result = 0x726568744FLL;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.MediaType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x636973754DLL && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_106_16(0x736163646F50);
      v6 = v3 && v0 == 0xE700000000000000;
      if (v6 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x6F6F426F69647541 && v0 == 0xE90000000000006BLL;
        if (v7 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v8 = v1 == 0x5573656E755449 && v0 == 0xE700000000000000;
          if (v8 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v10 = v1 == OUTLINED_FUNCTION_270_3() && v0 == v9;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_224_2(1768191297);
              v11 = v3 && v0 == 0xE500000000000000;
              if (v11 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_224_2(1701079382);
                v12 = v3 && v0 == 0xE500000000000000;
                if (v12 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_69_20();
                  if (v3 && v0 == 0xE500000000000000)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_15_14();
                    OUTLINED_FUNCTION_89();
                    v4 = 7;
                    if ((v1 & 1) == 0)
                    {
                      v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.AgeRangeType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.AgeRangeType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v49 = OUTLINED_FUNCTION_39(v11);
    v53 = OUTLINED_FUNCTION_84_2(v49, v50, v51, v52, &qword_1EAE42DF8, &qword_1939970C8);
    v7 = OUTLINED_FUNCTION_17_2(v53);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v54 = OUTLINED_FUNCTION_39(v18);
    v58 = OUTLINED_FUNCTION_85(v54, v55, v56, v57, &qword_1EAE42DF8, &qword_1939970C8);
    v14 = OUTLINED_FUNCTION_17_2(v58);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v59, v60, v61, v62, v63, v64);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v65 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v65, v66, v67, v68, &qword_1EAE42DF8, &qword_1939970C8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v69 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v69, v70, v71, v72, &qword_1EAE42DF8, &qword_1939970C8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v73 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v73, v74, v75, v76, &qword_1EAE42DF8, &qword_1939970C8);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v77 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v77, v78, v79, v80, &qword_1EAE42DF8, &qword_1939970C8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_47_5(v41, v42, v43, v44);
  return OUTLINED_FUNCTION_89_3(v46, v47);
}

void MomentsEventData.AgeRangeType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_118_14();
        break;
      case 5:
        OUTLINED_FUNCTION_238_4();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.AgeRangeType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x316F54306D6F7246 && v0 == 0xE900000000000037;
    if (v5 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x6F5438316D6F7246 && v0 == 0xEA00000000003432;
      if (v6 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x6F5435326D6F7246 && v0 == 0xEA00000000003433;
        if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v8 = v1 == 0x6F5435336D6F7246 && v0 == 0xEA00000000003434;
          if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v9 = v1 == 0x6F5435346D6F7246 && v0 == 0xEA00000000003436;
            if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else if (v1 == OUTLINED_FUNCTION_238_4() && v0 == v10)
            {

              OUTLINED_FUNCTION_83();
            }

            else
            {
              OUTLINED_FUNCTION_0_9();
              OUTLINED_FUNCTION_89();
              v4 = 5;
              if ((v1 & 1) == 0)
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.BiologicalSexType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1701601613;
  if (*v0 != 1)
  {
    v1 = 0x726568744FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C616D6546;
  }
}

void MomentsEventData.BiologicalSexType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x656C616D6546 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 1701601613 && v0 == 0xE400000000000000;
      if (v6 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_69_20();
        if (v3 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_15_14();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.BundleEngagementType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6F77546C6576654CLL;
  if (*v0 != 1)
  {
    v1 = 0x7268546C6576654CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E4F6C6576654CLL;
  }
}

void MomentsEventData.BundleEngagementType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x656E4F6C6576654CLL && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x6F77546C6576654CLL && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 0x7268546C6576654CLL && v0 == 0xEA00000000006565)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_59_20();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.SuggestionType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.SuggestionType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v144 = OUTLINED_FUNCTION_39(v11);
    v148 = OUTLINED_FUNCTION_84_2(v144, v145, v146, v147, &qword_1EAE42DE0, &qword_1939970B0);
    v7 = OUTLINED_FUNCTION_17_2(v148);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v149 = OUTLINED_FUNCTION_39(v18);
    v153 = OUTLINED_FUNCTION_85(v149, v150, v151, v152, &qword_1EAE42DE0, &qword_1939970B0);
    v14 = OUTLINED_FUNCTION_17_2(v153);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v154, v155, v156, v157, v158, v159);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v160 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v160, v161, v162, v163, &qword_1EAE42DE0, &qword_1939970B0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v164 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v164, v165, v166, v167, &qword_1EAE42DE0, &qword_1939970B0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v168 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v168, v169, v170, v171, &qword_1EAE42DE0, &qword_1939970B0);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v172 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v172, v173, v174, v175, &qword_1EAE42DE0, &qword_1939970B0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v176 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v176, v177, v178, v179, &qword_1EAE42DE0, &qword_1939970B0);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v180 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v180, v181, v182, v183, &qword_1EAE42DE0, &qword_1939970B0);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v184 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v184, v185, v186, v187, &qword_1EAE42DE0, &qword_1939970B0);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v188 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v188, v189, v190, v191, &qword_1EAE42DE0, &qword_1939970B0);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v192 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v192, v193, v194, v195, &qword_1EAE42DE0, &qword_1939970B0);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v196 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v196, v197, v198, v199, &qword_1EAE42DE0, &qword_1939970B0);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v200 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v200, v201, v202, v203, &qword_1EAE42DE0, &qword_1939970B0);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v204 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v204, v205, v206, v207, &qword_1EAE42DE0, &qword_1939970B0);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v208 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v208, v209, v210, v211, &qword_1EAE42DE0, &qword_1939970B0);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v212 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v212, v213, v214, v215, &qword_1EAE42DE0, &qword_1939970B0);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v216 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v216, v217, v218, v219, &qword_1EAE42DE0, &qword_1939970B0);
    v99 = v96;
  }

  OUTLINED_FUNCTION_19_54(v96, v97, v98, v99);
  if (!(v19 ^ v20 | v13))
  {
    v220 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v220, v221, v222, v223, &qword_1EAE42DE0, &qword_1939970B0);
    v104 = v101;
  }

  OUTLINED_FUNCTION_20_47(v101, v102, v103, v104);
  if (!(v19 ^ v20 | v13))
  {
    v224 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_84_2(v224, v225, v226, v227, &qword_1EAE42DE0, &qword_1939970B0);
    v109 = v106;
  }

  OUTLINED_FUNCTION_25_36(v106, v107, v108, v109);
  if (!(v19 ^ v20 | v13))
  {
    v228 = OUTLINED_FUNCTION_39(v115);
    v111 = OUTLINED_FUNCTION_85(v228, v229, v230, v231, &qword_1EAE42DE0, &qword_1939970B0);
    v114 = v111;
  }

  OUTLINED_FUNCTION_22_38(v111, v112, v113, v114);
  if (!(v19 ^ v20 | v13))
  {
    v232 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v232, v233, v234, v235, &qword_1EAE42DE0, &qword_1939970B0);
    v119 = v116;
  }

  OUTLINED_FUNCTION_24_46(v116, v117, v118, v119);
  if (!(v19 ^ v20 | v13))
  {
    v236 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_85(v236, v237, v238, v239, &qword_1EAE42DE0, &qword_1939970B0);
    v124 = v121;
  }

  OUTLINED_FUNCTION_21_45(v121, v122, v123, v124);
  if (!(v19 ^ v20 | v13))
  {
    v240 = OUTLINED_FUNCTION_39(v130);
    v126 = OUTLINED_FUNCTION_84_2(v240, v241, v242, v243, &qword_1EAE42DE0, &qword_1939970B0);
    v129 = v126;
  }

  OUTLINED_FUNCTION_23_44(v126, v127, v128, v129);
  if (!(v19 ^ v20 | v13))
  {
    v244 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_85(v244, v245, v246, v247, &qword_1EAE42DE0, &qword_1939970B0);
    v134 = v131;
  }

  OUTLINED_FUNCTION_28_32(v131, v132, v133, v134);
  if (!(v19 ^ v20 | v13))
  {
    v248 = OUTLINED_FUNCTION_39(v140);
    v136 = OUTLINED_FUNCTION_84_2(v248, v249, v250, v251, &qword_1EAE42DE0, &qword_1939970B0);
    v139 = v136;
  }

  OUTLINED_FUNCTION_50(v136, v137, v138, v139);
  return OUTLINED_FUNCTION_38_1(v141, v142);
}

void MomentsEventData.SuggestionType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_197_4(1701538124);
        break;
      case 3:
        OUTLINED_FUNCTION_185_6(0x6B696C736944);
        break;
      case 4:
      case 0x10:
        OUTLINED_FUNCTION_144();
        break;
      case 5:
        OUTLINED_FUNCTION_194_4(0x6574656C6544);
        break;
      case 7:
        OUTLINED_FUNCTION_232_5();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_93_13();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_175_7();
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_81_12();
        break;
      case 0x11:
        v1 = 1769172816;
        goto LABEL_17;
      case 0x12:
        v1 = 1634166094;
LABEL_17:
        OUTLINED_FUNCTION_257_1(v1 & 0xFFFF0000FFFFFFFFLL | 0x697400000000);
        break;
      case 0x13:
        OUTLINED_FUNCTION_149_10();
        break;
      case 0x14:
        OUTLINED_FUNCTION_185_6(0x7463656A6552);
        break;
      case 0x15:
        OUTLINED_FUNCTION_185_6(0x747065636341);
        break;
      case 0x17:
        OUTLINED_FUNCTION_185_6(0x7265746C6946);
        break;
      case 0x18:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.SuggestionType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_93_2(0x7463656C6553);
    v5 = v3 && v0 == 0xE800000000000000;
    if (v5 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_189_2(1918986323);
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_305_1(1701538124);
        v7 = v3 && v0 == 0xE500000000000000;
        if (v7 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_93_2(0x6B696C736944);
          v8 = v3 && v0 == 0xE800000000000000;
          if (v8 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_180_8();
            v10 = v3 && v0 == v9;
            if (v10 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_141_9(0x6574656C6544);
              v11 = v3 && v0 == 0xE700000000000000;
              if (v11 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v12 = v1 == 0x6E6564646948 && v0 == 0xE600000000000000;
                if (v12 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v14 = v1 == OUTLINED_FUNCTION_232_5() && v0 == v13;
                  if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_189_2(2003134806);
                    v15 = v3 && v0 == 0xE600000000000000;
                    if (v15 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v16 = v1 == 0x6F4473626D756854 && v0 == 0xEA00000000006E77;
                      if (v16 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_294_3(0x69726F766146);
                        v17 = v3 && v0 == 0xE800000000000000;
                        if (v17 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v18 = v1 == 0x705573626D756854 && v0 == 0xE800000000000000;
                          if (v18 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_221_2();
                            v19 = v3 && v0 == 0xEC00000064657461;
                            if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v21 = v1 == OUTLINED_FUNCTION_93_13() && v0 == v20;
                              if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v22 = v1 == OUTLINED_FUNCTION_175_7() && v0 == 0xEC00000064657465;
                                if (v22 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v24 = v1 == OUTLINED_FUNCTION_81_12() && v0 == v23;
                                  if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_294_3(0x61746F6E6E41);
                                    v25 = v3 && v0 == 0xE900000000000064;
                                    if (v25 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_296_2(0x697469736F50);
                                      v26 = v3 && v0 == 0xE800000000000000;
                                      if (v26 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_296_2(0x69746167654ELL);
                                        v27 = v3 && v0 == 0xE800000000000000;
                                        if (v27 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_208_2();
                                          v28 = v3 && v0 == 0xE700000000000000;
                                          if (v28 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_93_2(0x7463656A6552);
                                            v29 = v3 && v0 == 0xE800000000000000;
                                            if (v29 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              OUTLINED_FUNCTION_93_2(0x747065636341);
                                              v30 = v3 && v0 == 0xE800000000000000;
                                              if (v30 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_189_2(1953722192);
                                                v31 = v3 && v0 == 0xE600000000000000;
                                                if (v31 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_93_2(0x7265746C6946);
                                                  v32 = v3 && v0 == 0xE800000000000000;
                                                  if (v32 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_65_0();
                                                    if (v3 && v33 == v0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_25_7();
                                                      OUTLINED_FUNCTION_89();
                                                      v4 = 24;
                                                      if ((v1 & 1) == 0)
                                                      {
                                                        v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.AppEntryEventType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6572437972746E45;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_93_13();
      break;
    case 2:
      result = OUTLINED_FUNCTION_175_7();
      break;
    case 3:
      result = OUTLINED_FUNCTION_81_12();
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.AppEntryEventType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_221_2();
    v5 = v3 && v0 == 0xEC00000064657461;
    if (v5 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_93_13() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == OUTLINED_FUNCTION_175_7() && v0 == 0xEC00000064657465;
        if (v8 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == OUTLINED_FUNCTION_81_12() && v0 == v9)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.ClientActivityEventType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

void MomentsEventData.ClientActivityEventType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_75();
        break;
      case 2:
        OUTLINED_FUNCTION_135_11();
        break;
      case 3:
        OUTLINED_FUNCTION_187_1();
        break;
      default:
        OUTLINED_FUNCTION_38();
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.ClientActivityEventType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_206_3();
    OUTLINED_FUNCTION_26_4();
    v7 = v4 && v6 == v0;
    if (v7 || (OUTLINED_FUNCTION_44_25() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_138();
      v9 = v4 && v8 == v0;
      if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        v11 = v1 == v2 + 6 && v10 == v0;
        if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_38();
          if (v1 == v2 + 8 && v12 == v0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_0_9();
            OUTLINED_FUNCTION_89();
            v5 = 3;
            if ((v1 & 1) == 0)
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t sub_19379AA48()
{
  OUTLINED_FUNCTION_91_0();
  v1 = OUTLINED_FUNCTION_95_0();
  v5 = OUTLINED_FUNCTION_88_0(v1, v2, v3, v4);
  v6 = OUTLINED_FUNCTION_63_2(v5);
  if (!(!v12 & v11))
  {
    v45 = OUTLINED_FUNCTION_33_5((v10 > 1), v7, v8, v9);
    v6 = OUTLINED_FUNCTION_17_2(v45);
  }

  OUTLINED_FUNCTION_53_3(v6, v7, v8, v9);
  if (v18 != v19)
  {
    v46 = OUTLINED_FUNCTION_39_2((v17 > 1), v14, v15, v16);
    v13 = OUTLINED_FUNCTION_17_2(v46);
  }

  OUTLINED_FUNCTION_46_2(v13, v14, v15, v16);
  if (v18 != v19)
  {
    v20 = OUTLINED_FUNCTION_51((v24 > 1), v0, v22, v23);
    v23 = v20;
  }

  OUTLINED_FUNCTION_45_0(v20, v21, v22, v23);
  if (!(v18 ^ v19 | v12))
  {
    v25 = OUTLINED_FUNCTION_33_5((v29 > 1), v26, v27, v28);
    v28 = v25;
  }

  OUTLINED_FUNCTION_32(v25, v26, v27, v28);
  if (!(v18 ^ v19 | v12))
  {
    v30 = OUTLINED_FUNCTION_39_2((v34 > 1), v31, v32, v33);
    v33 = v30;
  }

  OUTLINED_FUNCTION_149(v30, v31, v32, v33);
  OUTLINED_FUNCTION_90_7(v35, v36);
  OUTLINED_FUNCTION_301_2();
  if (!(v18 ^ v19 | v12))
  {
    v37 = OUTLINED_FUNCTION_33_5((v41 > 1), v38, v39, v40);
    v40 = v37;
  }

  OUTLINED_FUNCTION_160_1(v37, v38, v39, v40);
  return OUTLINED_FUNCTION_38_1(v42, v43);
}

uint64_t MomentsEventData.PhotoSourceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6867696C68676948;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_168_6();
      break;
    case 2:
      result = 0x736569726F6D654DLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_185_6(0x727574616546);
      break;
    case 4:
      result = 1919251285;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.PhotoSourceType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6867696C68676948 && v0 == 0xEA00000000007374;
    if (v5 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_148_9();
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x736569726F6D654DLL && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_93_2(0x727574616546);
          v8 = v3 && v0 == 0xE800000000000000;
          if (v8 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else if (v1 == 1919251285 && v0 == 0xE400000000000000)
          {

            OUTLINED_FUNCTION_69_2();
          }

          else
          {
            OUTLINED_FUNCTION_19_8();
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_214_2();
            if (v3)
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void MomentsEventData.PhotoLibraryType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsEventData.PhotoLibraryType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x694C6D6574737953;
  }
}

void MomentsEventData.PhotoLibraryType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x694C6D6574737953 && v0 == 0xED00007972617262;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_26_4();
      v7 = v3 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_38();
        if (v1 == 0xD000000000000013 && v8 == v0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.PRType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x646E65697246;
  }

  return 0x796C696D6146;
}

void MomentsEventData.PRType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_144_9();
    v5 = v3 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
    {

      v4 = 0;
    }

    else if (v1 == OUTLINED_FUNCTION_292_1() && v0 == 0xE600000000000000)
    {

      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_89();
      v4 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t MomentsEventData.MapItemSourceType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.MapItemSourceType.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v104 = OUTLINED_FUNCTION_39(v11);
    v108 = OUTLINED_FUNCTION_84_2(v104, v105, v106, v107, &qword_1EAE42DB0, &qword_193997080);
    v7 = OUTLINED_FUNCTION_17_2(v108);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v109 = OUTLINED_FUNCTION_39(v18);
    v113 = OUTLINED_FUNCTION_85(v109, v110, v111, v112, &qword_1EAE42DB0, &qword_193997080);
    v14 = OUTLINED_FUNCTION_17_2(v113);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v114, v115, v116, v117, v118, v119);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v120 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v120, v121, v122, v123, &qword_1EAE42DB0, &qword_193997080);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v124 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v124, v125, v126, v127, &qword_1EAE42DB0, &qword_193997080);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v128 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v128, v129, v130, v131, &qword_1EAE42DB0, &qword_193997080);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v132 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v132, v133, v134, v135, &qword_1EAE42DB0, &qword_193997080);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v136 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v136, v137, v138, v139, &qword_1EAE42DB0, &qword_193997080);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v140 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v140, v141, v142, v143, &qword_1EAE42DB0, &qword_193997080);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v144 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v144, v145, v146, v147, &qword_1EAE42DB0, &qword_193997080);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v148 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v148, v149, v150, v151, &qword_1EAE42DB0, &qword_193997080);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v152 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v152, v153, v154, v155, &qword_1EAE42DB0, &qword_193997080);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v156 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v156, v157, v158, v159, &qword_1EAE42DB0, &qword_193997080);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v160 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v160, v161, v162, v163, &qword_1EAE42DB0, &qword_193997080);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v164 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v164, v165, v166, v167, &qword_1EAE42DB0, &qword_193997080);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v168 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v168, v169, v170, v171, &qword_1EAE42DB0, &qword_193997080);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v172 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v172, v173, v174, v175, &qword_1EAE42DB0, &qword_193997080);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v176 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v176, v177, v178, v179, &qword_1EAE42DB0, &qword_193997080);
    v99 = v96;
  }

  OUTLINED_FUNCTION_50(v96, v97, v98, v99);
  return OUTLINED_FUNCTION_38_1(v101, v102);
}

void MomentsEventData.MapItemSourceType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 4:
      case 6:
      case 0x10:
        OUTLINED_FUNCTION_187_1();
        break;
      case 5:
        OUTLINED_FUNCTION_136_10();
        break;
      case 7:
        OUTLINED_FUNCTION_191_4(0x4B746E657645);
        break;
      case 8:
        OUTLINED_FUNCTION_267_3();
        break;
      case 9:
        OUTLINED_FUNCTION_246_3();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_38();
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_191_4(0x617274726F50);
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_269_3();
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_118_14();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.MapItemSourceType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x4765737265766552 && v0 == 0xEE0065646F636F65;
    if (v5 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x4764726177726F46 && v0 == 0xEE0065646F636F65;
      if (v6 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x73746361746E6F43 && v0 == 0xE800000000000000;
        if (v7 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v8 = v1 == 1919251285 && v0 == 0xE400000000000000;
          if (v8 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_206_3();
            OUTLINED_FUNCTION_38();
            v10 = v1 == 0xEE0065646F636F67 && v9 == v0;
            if (v10 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v12 = v1 == 0xEE0065646F636F71 && v11 == v0;
              if (v12 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_38();
                v14 = v1 == 0xEE0065646F636F78 && v13 == v0;
                if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_298_2(0x4B746E657645);
                  v15 = v3 && v0 == 0xE800000000000000;
                  if (v15 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v17 = v1 == OUTLINED_FUNCTION_267_3() && v0 == v16;
                    if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v19 = v1 == OUTLINED_FUNCTION_246_3() && v0 == v18;
                      if (v19 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_26_4();
                        v21 = v3 && v20 == v0;
                        if (v21 || (OUTLINED_FUNCTION_44_25() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_298_2(0x617274726F50);
                          v22 = v3 && v0 == 0xE800000000000000;
                          if (v22 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v24 = v1 == OUTLINED_FUNCTION_269_3() && v0 == v23;
                            if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v25 = v1 == 0x494F5065756C42 && v0 == 0xE700000000000000;
                              if (v25 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v26 = v1 == 0x556D65744970614DLL && v0 == 0xEA00000000004C52;
                                if (v26 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v27 = v1 == 0x50746E6572727543 && v0 == 0xEA0000000000494FLL;
                                  if (v27 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_138();
                                    if (v3 && v28 == v0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_0_9();
                                      OUTLINED_FUNCTION_89();
                                      v4 = 16;
                                      if ((v1 & 1) == 0)
                                      {
                                        v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.VisitPlaceTypes.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 4804432;
  if (*v0 != 1)
  {
    v1 = 0x73736572646441;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 4804417;
  }
}

void MomentsEventData.VisitPlaceTypes.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 4804417 && v0 == 0xE300000000000000;
    if (v5 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 4804432 && v0 == 0xE300000000000000;
      if (v6 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = OUTLINED_FUNCTION_264_1();
        OUTLINED_FUNCTION_160_9(v7);
        if (v3 && v0 == 0xE700000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v3)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.PlaceInferenceGranularityType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x5073736572646441;
  switch(*v0)
  {
    case 1:
      result = 0x746565727453;
      break;
    case 2:
      result = OUTLINED_FUNCTION_162_10();
      break;
    case 3:
      result = OUTLINED_FUNCTION_184_8();
      break;
    case 4:
      result = 0x7972746E756F43;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.PlaceInferenceGranularityType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == (OUTLINED_FUNCTION_264_1() & 0xFFFFFFFFFFFFLL | 0x5073000000000000) && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == 0x746565727453 && v0 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_209_2();
        v9 = v3 && v0 == v8;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v10 = v1 == 2037672259 && v0 == 0xE400000000000000;
          if (v10 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_103_14();
            if (v3 && v0 == 0xE700000000000000)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_22_7();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_214_2();
              if (v3)
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.RankingType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x3031706F54;
  if (*v0 != 1)
  {
    v1 = 1953719634;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 896560980;
  }
}

void MomentsEventData.RankingType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 896560980 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v6 = v1 == 0x3031706F54 && v0 == 0xE500000000000000;
      if (v6 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 1953719634 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.LabelConfidenceScoreType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 1751607624;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7827276;
  }
}

void _s27IntelligencePlatformLibrary16MomentsEventDataV24LabelConfidenceScoreTypeOyAESgSScfC_0()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 7827276 && v0 == 0xE300000000000000;
    if (v5 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_91_15();
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 1751607624 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.DistanceFromHomeType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 1918985550;
  switch(*v0)
  {
    case 1:
      result = 0x6D756964654DLL;
      break;
    case 2:
      result = 7496006;
      break;
    case 3:
      result = 0x7261466F53;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.DistanceFromHomeType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1918985550 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_91_15();
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 7496006 && v0 == 0xE300000000000000;
        if (v7 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else if (v1 == 0x7261466F53 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_59();
        }

        else
        {
          OUTLINED_FUNCTION_15_14();
          OUTLINED_FUNCTION_89();
          v4 = 3;
          if ((v1 & 1) == 0)
          {
            v4 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.CallDurationTypes.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 1735290700;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74726F6853;
  }
}

void MomentsEventData.CallDurationTypes.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_154_9(1919903827);
    v5 = v3 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_91_15();
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 1735290700 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.InteractionCountTypes.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6D756964654DLL;
  if (*v0 != 1)
  {
    v1 = 1751607624;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7824710;
  }
}

void MomentsEventData.InteractionCountTypes.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 7824710 && v0 == 0xE300000000000000;
    if (v5 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_91_15();
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else if (v1 == 1751607624 && v0 == 0xE400000000000000)
      {

        OUTLINED_FUNCTION_55_0();
      }

      else
      {
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_152_0();
        if (v3)
        {
          v4 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

void MomentsEventData.BundleInteractionTypes.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_275_3();
        break;
      case 2:
        OUTLINED_FUNCTION_38();
        break;
      case 3:
        OUTLINED_FUNCTION_199_3(0x43796C696144);
        break;
      case 4:
        OUTLINED_FUNCTION_187_1();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.BundleInteractionTypes.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6563655274736F4DLL && v0 == 0xEE006C6C6143746ELL;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_275_3() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_206_3();
        OUTLINED_FUNCTION_26_4();
        v9 = v3 && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_44_25() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_223_3(0x43796C696144);
          v11 = v3 && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_138();
            if (v3 && v12 == v0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_0_9();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_214_2();
              if (v3)
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.CallPlaceType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 1802661719;
  if (*v0 != 1)
  {
    v1 = 0x726568744FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701670728;
  }
}

void MomentsEventData.CallPlaceType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_201_3();
    v4 = v2 && v0 == 0xE400000000000000;
    if (v4 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
    {

      v3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_130_12();
      v5 = v2 && v0 == 0xE400000000000000;
      if (v5 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
      {

        v3 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_69_20();
        if (v2 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_15_14();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v2)
          {
            v3 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v3);
}

uint64_t MomentsEventData.AvailabilityType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x6C69617641746F4ELL;
  }

  else
  {
    result = 0x6C62616C69617641;
  }

  *v0;
  return result;
}

void MomentsEventData.AvailabilityType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x6C62616C69617641 && v0 == 0xE900000000000065;
    if (v5 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
    {

      v4 = 0;
    }

    else if (v1 == 0x6C69617641746F4ELL && v0 == 0xEC000000656C6261)
    {

      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_89();
      v4 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t MomentsEventData.AnomalousType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x616D6F6E41746F4ELL;
  }

  else
  {
    result = 0x756F6C616D6F6E41;
  }

  *v0;
  return result;
}

void MomentsEventData.AnomalousType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x756F6C616D6F6E41 && v0 == 0xE900000000000073;
    if (v5 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
    {

      v4 = 0;
    }

    else if (v1 == 0x616D6F6E41746F4ELL && v0 == 0xEC00000073756F6CLL)
    {

      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_89();
      v4 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t MomentsEventData.StateOfMindLabel.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    case 31:
      v3 = 31;
      break;
    case 32:
      v3 = 32;
      break;
    case 33:
      v3 = 33;
      break;
    case 34:
      v3 = 34;
      break;
    case 35:
      v3 = 35;
      break;
    case 36:
      v3 = 36;
      break;
    case 37:
      v3 = 37;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.StateOfMindLabel.allCases.getter()
{
  v1 = OUTLINED_FUNCTION_95_0();
  v7 = sub_1934B0FCC(v1, v2, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_16_0(v7);
  if (!(!v14 & v13))
  {
    v230 = OUTLINED_FUNCTION_39(v12);
    v234 = OUTLINED_FUNCTION_84_2(v230, v231, v232, v233, &qword_1EAE42D48, &qword_193997018);
    v8 = OUTLINED_FUNCTION_17_2(v234);
  }

  OUTLINED_FUNCTION_13_6(v8, v9, v10, v11);
  if (v20 != v21)
  {
    v235 = OUTLINED_FUNCTION_39(v19);
    v239 = OUTLINED_FUNCTION_85(v235, v236, v237, v238, &qword_1EAE42D48, &qword_193997018);
    v15 = OUTLINED_FUNCTION_17_2(v239);
  }

  OUTLINED_FUNCTION_8_5(v15, v16, v17, v18);
  if (v20 != v21)
  {
    OUTLINED_FUNCTION_39(v26);
    OUTLINED_FUNCTION_57();
    v22 = sub_1934B0FCC(v240, v241, v242, v243, v244, v245);
    v25 = v22;
  }

  OUTLINED_FUNCTION_9_7(v22, v23, v24, v25);
  if (!(v20 ^ v21 | v14))
  {
    v246 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_84_2(v246, v247, v248, v249, &qword_1EAE42D48, &qword_193997018);
    v30 = v27;
  }

  OUTLINED_FUNCTION_3_7(v27, v28, v29, v30);
  if (!(v20 ^ v21 | v14))
  {
    v250 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v250, v251, v252, v253, &qword_1EAE42D48, &qword_193997018);
    v35 = v32;
  }

  OUTLINED_FUNCTION_5_11(v32, v33, v34, v35);
  if (!(v20 ^ v21 | v14))
  {
    v254 = OUTLINED_FUNCTION_39(v41);
    v37 = OUTLINED_FUNCTION_84_2(v254, v255, v256, v257, &qword_1EAE42D48, &qword_193997018);
    v40 = v37;
  }

  OUTLINED_FUNCTION_7_3(v37, v38, v39, v40);
  if (!(v20 ^ v21 | v14))
  {
    v258 = OUTLINED_FUNCTION_39(v46);
    v42 = OUTLINED_FUNCTION_85(v258, v259, v260, v261, &qword_1EAE42D48, &qword_193997018);
    v45 = v42;
  }

  OUTLINED_FUNCTION_4_8(v42, v43, v44, v45);
  if (!(v20 ^ v21 | v14))
  {
    v262 = OUTLINED_FUNCTION_39(v51);
    v47 = OUTLINED_FUNCTION_84_2(v262, v263, v264, v265, &qword_1EAE42D48, &qword_193997018);
    v50 = v47;
  }

  OUTLINED_FUNCTION_6_14(v47, v48, v49, v50);
  if (!(v20 ^ v21 | v14))
  {
    v266 = OUTLINED_FUNCTION_39(v56);
    v52 = OUTLINED_FUNCTION_85(v266, v267, v268, v269, &qword_1EAE42D48, &qword_193997018);
    v55 = v52;
  }

  OUTLINED_FUNCTION_11_7(v52, v53, v54, v55);
  if (!(v20 ^ v21 | v14))
  {
    v270 = OUTLINED_FUNCTION_39(v61);
    v57 = OUTLINED_FUNCTION_84_2(v270, v271, v272, v273, &qword_1EAE42D48, &qword_193997018);
    v60 = v57;
  }

  OUTLINED_FUNCTION_14_56(v57, v58, v59, v60);
  if (!(v20 ^ v21 | v14))
  {
    v274 = OUTLINED_FUNCTION_39(v66);
    v62 = OUTLINED_FUNCTION_85(v274, v275, v276, v277, &qword_1EAE42D48, &qword_193997018);
    v65 = v62;
  }

  OUTLINED_FUNCTION_11_52(v62, v63, v64, v65);
  if (!(v20 ^ v21 | v14))
  {
    v278 = OUTLINED_FUNCTION_39(v71);
    v67 = OUTLINED_FUNCTION_84_2(v278, v279, v280, v281, &qword_1EAE42D48, &qword_193997018);
    v70 = v67;
  }

  OUTLINED_FUNCTION_13_56(v67, v68, v69, v70);
  if (!(v20 ^ v21 | v14))
  {
    v282 = OUTLINED_FUNCTION_39(v76);
    v72 = OUTLINED_FUNCTION_85(v282, v283, v284, v285, &qword_1EAE42D48, &qword_193997018);
    v75 = v72;
  }

  OUTLINED_FUNCTION_10_64(v72, v73, v74, v75);
  if (!(v20 ^ v21 | v14))
  {
    v286 = OUTLINED_FUNCTION_39(v81);
    v77 = OUTLINED_FUNCTION_84_2(v286, v287, v288, v289, &qword_1EAE42D48, &qword_193997018);
    v80 = v77;
  }

  OUTLINED_FUNCTION_15_54(v77, v78, v79, v80);
  if (!(v20 ^ v21 | v14))
  {
    v290 = OUTLINED_FUNCTION_39(v86);
    v82 = OUTLINED_FUNCTION_85(v290, v291, v292, v293, &qword_1EAE42D48, &qword_193997018);
    v85 = v82;
  }

  OUTLINED_FUNCTION_12_53(v82, v83, v84, v85);
  if (!(v20 ^ v21 | v14))
  {
    v294 = OUTLINED_FUNCTION_39(v91);
    v87 = OUTLINED_FUNCTION_84_2(v294, v295, v296, v297, &qword_1EAE42D48, &qword_193997018);
    v90 = v87;
  }

  OUTLINED_FUNCTION_16_41(v87, v88, v89, v90);
  if (!(v20 ^ v21 | v14))
  {
    v298 = OUTLINED_FUNCTION_39(v96);
    v92 = OUTLINED_FUNCTION_85(v298, v299, v300, v301, &qword_1EAE42D48, &qword_193997018);
    v95 = v92;
  }

  OUTLINED_FUNCTION_17_41(v92, v93, v94, v95);
  if (!(v20 ^ v21 | v14))
  {
    v302 = OUTLINED_FUNCTION_39(v101);
    v97 = OUTLINED_FUNCTION_84_2(v302, v303, v304, v305, &qword_1EAE42D48, &qword_193997018);
    v100 = v97;
  }

  OUTLINED_FUNCTION_19_54(v97, v98, v99, v100);
  if (!(v20 ^ v21 | v14))
  {
    v306 = OUTLINED_FUNCTION_39(v106);
    v102 = OUTLINED_FUNCTION_85(v306, v307, v308, v309, &qword_1EAE42D48, &qword_193997018);
    v105 = v102;
  }

  OUTLINED_FUNCTION_20_47(v102, v103, v104, v105);
  if (!(v20 ^ v21 | v14))
  {
    v310 = OUTLINED_FUNCTION_39(v111);
    v107 = OUTLINED_FUNCTION_84_2(v310, v311, v312, v313, &qword_1EAE42D48, &qword_193997018);
    v110 = v107;
  }

  OUTLINED_FUNCTION_25_36(v107, v108, v109, v110);
  if (!(v20 ^ v21 | v14))
  {
    v314 = OUTLINED_FUNCTION_39(v116);
    v112 = OUTLINED_FUNCTION_85(v314, v315, v316, v317, &qword_1EAE42D48, &qword_193997018);
    v115 = v112;
  }

  OUTLINED_FUNCTION_22_38(v112, v113, v114, v115);
  if (!(v20 ^ v21 | v14))
  {
    v318 = OUTLINED_FUNCTION_39(v121);
    v117 = OUTLINED_FUNCTION_84_2(v318, v319, v320, v321, &qword_1EAE42D48, &qword_193997018);
    v120 = v117;
  }

  OUTLINED_FUNCTION_24_46(v117, v118, v119, v120);
  if (!(v20 ^ v21 | v14))
  {
    v322 = OUTLINED_FUNCTION_39(v126);
    v122 = OUTLINED_FUNCTION_85(v322, v323, v324, v325, &qword_1EAE42D48, &qword_193997018);
    v125 = v122;
  }

  OUTLINED_FUNCTION_21_45(v122, v123, v124, v125);
  if (!(v20 ^ v21 | v14))
  {
    v326 = OUTLINED_FUNCTION_39(v131);
    v127 = OUTLINED_FUNCTION_84_2(v326, v327, v328, v329, &qword_1EAE42D48, &qword_193997018);
    v130 = v127;
  }

  OUTLINED_FUNCTION_23_44(v127, v128, v129, v130);
  if (!(v20 ^ v21 | v14))
  {
    v330 = OUTLINED_FUNCTION_39(v136);
    v132 = OUTLINED_FUNCTION_85(v330, v331, v332, v333, &qword_1EAE42D48, &qword_193997018);
    v135 = v132;
  }

  OUTLINED_FUNCTION_28_32(v132, v133, v134, v135);
  if (!(v20 ^ v21 | v14))
  {
    v334 = OUTLINED_FUNCTION_39(v141);
    v137 = OUTLINED_FUNCTION_84_2(v334, v335, v336, v337, &qword_1EAE42D48, &qword_193997018);
    v140 = v137;
  }

  OUTLINED_FUNCTION_32_33(v137, v138, v139, v140);
  if (!(v20 ^ v21 | v14))
  {
    v338 = OUTLINED_FUNCTION_39(v146);
    v142 = OUTLINED_FUNCTION_85(v338, v339, v340, v341, &qword_1EAE42D48, &qword_193997018);
    v145 = v142;
  }

  OUTLINED_FUNCTION_30_29(v142, v143, v144, v145);
  if (!(v20 ^ v21 | v14))
  {
    v342 = OUTLINED_FUNCTION_39(v151);
    v147 = OUTLINED_FUNCTION_84_2(v342, v343, v344, v345, &qword_1EAE42D48, &qword_193997018);
    v150 = v147;
  }

  OUTLINED_FUNCTION_31_39(v147, v148, v149, v150);
  if (!(v20 ^ v21 | v14))
  {
    v346 = OUTLINED_FUNCTION_39(v156);
    v152 = OUTLINED_FUNCTION_85(v346, v347, v348, v349, &qword_1EAE42D48, &qword_193997018);
    v155 = v152;
  }

  OUTLINED_FUNCTION_47_5(v152, v153, v154, v155);
  OUTLINED_FUNCTION_4(v157, v158);
  OUTLINED_FUNCTION_222_2();
  if (!(v20 ^ v21 | v14))
  {
    v350 = OUTLINED_FUNCTION_39(v163);
    v159 = OUTLINED_FUNCTION_84_2(v350, v351, v352, v353, &qword_1EAE42D48, &qword_193997018);
    v162 = v159;
  }

  OUTLINED_FUNCTION_50(v159, v160, v161, v162);
  OUTLINED_FUNCTION_4(v164, v165);
  OUTLINED_FUNCTION_309_1();
  if (!(v20 ^ v21 | v14))
  {
    v354 = OUTLINED_FUNCTION_39(v170);
    v166 = OUTLINED_FUNCTION_85(v354, v355, v356, v357, &qword_1EAE42D48, &qword_193997018);
    v169 = v166;
  }

  OUTLINED_FUNCTION_47_5(v166, v167, v168, v169);
  OUTLINED_FUNCTION_4(v171, v172);
  OUTLINED_FUNCTION_308_2();
  if (!(v20 ^ v21 | v14))
  {
    v358 = OUTLINED_FUNCTION_39(v177);
    v173 = OUTLINED_FUNCTION_84_2(v358, v359, v360, v361, &qword_1EAE42D48, &qword_193997018);
    v176 = v173;
  }

  OUTLINED_FUNCTION_50(v173, v174, v175, v176);
  OUTLINED_FUNCTION_4(v178, v179);
  if (v0 + 33 > (v184 >> 1))
  {
    v362 = OUTLINED_FUNCTION_39(v184);
    v180 = OUTLINED_FUNCTION_85(v362, v363, v364, v365, &qword_1EAE42D48, &qword_193997018);
    v183 = v180;
  }

  OUTLINED_FUNCTION_47_5(v180, v181, v182, v183);
  OUTLINED_FUNCTION_4(v185, v186);
  if (v0 + 34 > (v191 >> 1))
  {
    v366 = OUTLINED_FUNCTION_39(v191);
    v187 = OUTLINED_FUNCTION_84_2(v366, v367, v368, v369, &qword_1EAE42D48, &qword_193997018);
    v190 = v187;
  }

  OUTLINED_FUNCTION_50(v187, v188, v189, v190);
  OUTLINED_FUNCTION_4(v192, v193);
  if (v0 + 35 > (v198 >> 1))
  {
    v370 = OUTLINED_FUNCTION_39(v198);
    v194 = OUTLINED_FUNCTION_85(v370, v371, v372, v373, &qword_1EAE42D48, &qword_193997018);
    v197 = v194;
  }

  OUTLINED_FUNCTION_47_5(v194, v195, v196, v197);
  OUTLINED_FUNCTION_4(v199, v200);
  if (v0 + 36 > (v205 >> 1))
  {
    v374 = OUTLINED_FUNCTION_39(v205);
    v201 = OUTLINED_FUNCTION_84_2(v374, v375, v376, v377, &qword_1EAE42D48, &qword_193997018);
    v204 = v201;
  }

  OUTLINED_FUNCTION_50(v201, v202, v203, v204);
  OUTLINED_FUNCTION_4(v206, v207);
  if (v0 + 37 > (v212 >> 1))
  {
    v378 = OUTLINED_FUNCTION_39(v212);
    v208 = OUTLINED_FUNCTION_85(v378, v379, v380, v381, &qword_1EAE42D48, &qword_193997018);
    v211 = v208;
  }

  OUTLINED_FUNCTION_47_5(v208, v209, v210, v211);
  OUTLINED_FUNCTION_4(v213, v214);
  if (v0 + 38 > (v219 >> 1))
  {
    v382 = OUTLINED_FUNCTION_39(v219);
    v215 = OUTLINED_FUNCTION_84_2(v382, v383, v384, v385, &qword_1EAE42D48, &qword_193997018);
    v218 = v215;
  }

  OUTLINED_FUNCTION_50(v215, v216, v217, v218);
  OUTLINED_FUNCTION_4(v220, v221);
  if (v0 + 39 > (v226 >> 1))
  {
    v386 = OUTLINED_FUNCTION_39(v226);
    v222 = OUTLINED_FUNCTION_85(v386, v387, v388, v389, &qword_1EAE42D48, &qword_193997018);
    v225 = v222;
  }

  OUTLINED_FUNCTION_47_5(v222, v223, v224, v225);
  return OUTLINED_FUNCTION_89_3(v227, v228);
}

void MomentsEventData.StateOfMindLabel.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_186_4(1919381057);
        break;
      case 3:
        v1 = 1769500225;
        goto LABEL_25;
      case 4:
        OUTLINED_FUNCTION_194_4(0x656D61687341);
        break;
      case 5:
        OUTLINED_FUNCTION_115_12(1986097730);
        break;
      case 7:
        OUTLINED_FUNCTION_111_14(0x6E65746E6F43);
        break;
      case 8:
        OUTLINED_FUNCTION_279_2();
        break;
      case 9:
        OUTLINED_FUNCTION_167_7();
        break;
      case 0xCLL:
        OUTLINED_FUNCTION_194_4(0x657469637845);
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_118_14();
        break;
      case 0x10:
        OUTLINED_FUNCTION_186_4(1886413128);
        break;
      case 0x11:
        OUTLINED_FUNCTION_262_1(0x656C65706F48);
        break;
      case 0x13:
        v1 = 1818322250;
LABEL_25:
        OUTLINED_FUNCTION_200_5(v1 & 0xFFFF0000FFFFFFFFLL | 0x756F00000000);
        break;
      case 0x18:
        OUTLINED_FUNCTION_197_4(1970238032);
        break;
      case 0x19:
        OUTLINED_FUNCTION_185_6(0x7665696C6552);
        break;
      case 0x1CLL:
        OUTLINED_FUNCTION_185_6(0x737365727453);
        break;
      case 0x1ELL:
        OUTLINED_FUNCTION_194_4(0x656972726F57);
        break;
      case 0x1FLL:
        OUTLINED_FUNCTION_194_4(0x65796F6E6E41);
        break;
      case 0x20:
        OUTLINED_FUNCTION_164_7(0x6469666E6F43);
        break;
      case 0x21:
        OUTLINED_FUNCTION_194_4(0x656E69617244);
        break;
      case 0x23:
        OUTLINED_FUNCTION_280_2();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.StateOfMindLabel.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_189_2(2053205313);
    v5 = v3 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_189_2(1937075521);
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_187_4(1919381057);
        v7 = v3 && v0 == 0xE500000000000000;
        if (v7 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_160_9(0x756F69786E41);
          v8 = v3 && v0 == 0xE700000000000000;
          if (v8 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_141_9(0x656D61687341);
            v9 = v3 && v0 == 0xE700000000000000;
            if (v9 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_116_15(1986097730);
              v10 = v3 && v0 == 0xE500000000000000;
              if (v10 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v11 = v1 == 1835819331 && v0 == 0xE400000000000000;
                if (v11 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_106_16(0x6E65746E6F43);
                  v12 = v3 && v0 == 0xE700000000000000;
                  if (v12 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v14 = v1 == OUTLINED_FUNCTION_279_2() && v0 == v13;
                    if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v15 = v1 == 0x6172756F63736944 && v0 == 0xEB00000000646567;
                      if (v15 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_294_3(0x737567736944);
                        v16 = v3 && v0 == 0xE900000000000064;
                        if (v16 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v17 = v1 == 0x7361727261626D45 && v0 == 0xEB00000000646573;
                          if (v17 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_141_9(0x657469637845);
                            v18 = v3 && v0 == 0xE700000000000000;
                            if (v18 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_192_3(0x727473757246);
                              v19 = v3 && v0 == 0xEA00000000006465;
                              if (v19 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                v20 = v1 == 0x6C75666574617247 && v0 == 0xE800000000000000;
                                if (v20 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v21 = v1 == 0x79746C697547 && v0 == 0xE600000000000000;
                                  if (v21 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_187_4(1886413128);
                                    v22 = v3 && v0 == 0xE500000000000000;
                                    if (v22 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_310_1(0x656C65706F48);
                                      v23 = v3 && v0 == 0xE800000000000000;
                                      if (v23 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_294_3(0x617469727249);
                                        v24 = v3 && v0 == 0xE900000000000064;
                                        if (v24 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_160_9(0x756F6C61654ALL);
                                          v25 = v3 && v0 == 0xE700000000000000;
                                          if (v25 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v26 = v1 == 0x6C7566796F4ALL && v0 == 0xE600000000000000;
                                            if (v26 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v27 = v1 == 0x796C656E6F4CLL && v0 == 0xE600000000000000;
                                              if (v27 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                v28 = v1 == 0x616E6F6973736150 && v0 == 0xEA00000000006574;
                                                if (v28 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  v29 = v1 == 0x6C75666563616550 && v0 == 0xE800000000000000;
                                                  if (v29 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_305_1(1970238032);
                                                    v30 = v3 && v0 == 0xE500000000000000;
                                                    if (v30 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_93_2(0x7665696C6552);
                                                      v31 = v3 && v0 == 0xE800000000000000;
                                                      if (v31 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        v32 = v1 == 6578515 && v0 == 0xE300000000000000;
                                                        if (v32 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          OUTLINED_FUNCTION_189_2(1918985043);
                                                          v33 = v3 && v0 == 0xE600000000000000;
                                                          if (v33 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_93_2(0x737365727453);
                                                            v34 = v3 && v0 == 0xE800000000000000;
                                                            if (v34 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              v35 = v1 == 0x6573697270727553 && v0 == 0xE900000000000064;
                                                              if (v35 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_141_9(0x656972726F57);
                                                                v36 = v3 && v0 == 0xE700000000000000;
                                                                if (v36 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_141_9(0x65796F6E6E41);
                                                                  v37 = v3 && v0 == 0xE700000000000000;
                                                                  if (v37 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = v1 == 0x6E656469666E6F43 && v0 == 0xE900000000000074;
                                                                    if (v38 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_141_9(0x656E69617244);
                                                                      v39 = v3 && v0 == 0xE700000000000000;
                                                                      if (v39 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = v1 == 0x6C756665706F48 && v0 == 0xE700000000000000;
                                                                        if (v40 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          v42 = v1 == OUTLINED_FUNCTION_280_2() && v0 == v41;
                                                                          if (v42 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            v43 = v1 == 0x6C6568777265764FLL && v0 == 0xEB0000000064656DLL;
                                                                            if (v43 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                            {

                                                                              OUTLINED_FUNCTION_303_1();
                                                                            }

                                                                            else if (v1 == 0x6569667369746153 && v0 == 0xE900000000000064)
                                                                            {

                                                                              OUTLINED_FUNCTION_302_2();
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_30_22();
                                                                              OUTLINED_FUNCTION_89();
                                                                              v4 = 37;
                                                                              if ((v1 & 1) == 0)
                                                                              {
                                                                                v4 = 0;
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
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.StateOfMindDomain.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.StateOfMindDomain.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v109 = OUTLINED_FUNCTION_39(v11);
    v113 = OUTLINED_FUNCTION_84_2(v109, v110, v111, v112, &qword_1EAE42D40, &qword_193997010);
    v7 = OUTLINED_FUNCTION_17_2(v113);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v114 = OUTLINED_FUNCTION_39(v18);
    v118 = OUTLINED_FUNCTION_85(v114, v115, v116, v117, &qword_1EAE42D40, &qword_193997010);
    v14 = OUTLINED_FUNCTION_17_2(v118);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v119, v120, v121, v122, v123, v124);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v125 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v125, v126, v127, v128, &qword_1EAE42D40, &qword_193997010);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v129 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v129, v130, v131, v132, &qword_1EAE42D40, &qword_193997010);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v133 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v133, v134, v135, v136, &qword_1EAE42D40, &qword_193997010);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v137 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v137, v138, v139, v140, &qword_1EAE42D40, &qword_193997010);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v141 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v141, v142, v143, v144, &qword_1EAE42D40, &qword_193997010);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v145 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v145, v146, v147, v148, &qword_1EAE42D40, &qword_193997010);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v149 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v149, v150, v151, v152, &qword_1EAE42D40, &qword_193997010);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v153 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v153, v154, v155, v156, &qword_1EAE42D40, &qword_193997010);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v157 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v157, v158, v159, v160, &qword_1EAE42D40, &qword_193997010);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v161 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v161, v162, v163, v164, &qword_1EAE42D40, &qword_193997010);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v165 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v165, v166, v167, v168, &qword_1EAE42D40, &qword_193997010);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v169 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v169, v170, v171, v172, &qword_1EAE42D40, &qword_193997010);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v173 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v173, v174, v175, v176, &qword_1EAE42D40, &qword_193997010);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v177 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v177, v178, v179, v180, &qword_1EAE42D40, &qword_193997010);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v181 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v181, v182, v183, v184, &qword_1EAE42D40, &qword_193997010);
    v99 = v96;
  }

  OUTLINED_FUNCTION_19_54(v96, v97, v98, v99);
  if (!(v19 ^ v20 | v13))
  {
    v185 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v185, v186, v187, v188, &qword_1EAE42D40, &qword_193997010);
    v104 = v101;
  }

  OUTLINED_FUNCTION_47_5(v101, v102, v103, v104);
  return OUTLINED_FUNCTION_89_3(v106, v107);
}

void MomentsEventData.StateOfMindDomain.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_250_2();
        break;
      case 2:
        OUTLINED_FUNCTION_122_10(1769234756);
        break;
      case 3:
        OUTLINED_FUNCTION_144();
        break;
      case 4:
        OUTLINED_FUNCTION_170_7();
        break;
      case 5:
        OUTLINED_FUNCTION_200_5(0x73656E746946);
        break;
      case 6:
        v1 = OUTLINED_FUNCTION_292_1();
        goto LABEL_16;
      case 8:
        v1 = 0x656962626F48;
LABEL_16:
        OUTLINED_FUNCTION_200_5(v1);
        break;
      case 0xALL:
        OUTLINED_FUNCTION_186_4(1701736269);
        break;
      case 0xBLL:
        OUTLINED_FUNCTION_166_7(0x656E74726150);
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_265_2();
        break;
      case 0xELL:
        OUTLINED_FUNCTION_198_2(1802723668);
        break;
      case 0x10:
        OUTLINED_FUNCTION_131_10();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.StateOfMindDomain.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x74696E756D6D6F43 && v0 == 0xE900000000000079;
    if (v5 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      v7 = v1 == OUTLINED_FUNCTION_250_2() && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_113_12(1769234756);
        v8 = v3 && v0 == 0xE600000000000000;
        if (v8 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x6F69746163756445 && v0 == 0xE90000000000006ELL;
          if (v9 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_144_9();
            v10 = v3 && v0 == 0xE600000000000000;
            if (v10 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_160_9(0x73656E746946);
              v11 = v3 && v0 == 0xE700000000000000;
              if (v11 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v12 = OUTLINED_FUNCTION_292_1();
                OUTLINED_FUNCTION_160_9(v12);
                v13 = v3 && v0 == 0xE700000000000000;
                if (v13 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_304_2();
                  v14 = v3 && v0 == 0xE600000000000000;
                  if (v14 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_160_9(0x656962626F48);
                    v15 = v3 && v0 == 0xE700000000000000;
                    if (v15 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v16 = v1 == 0x797469746E656449 && v0 == 0xE800000000000000;
                      if (v16 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_187_4(1701736269);
                        v17 = v3 && v0 == 0xE500000000000000;
                        if (v17 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_181_8(0x656E74726150);
                          v18 = v3 && v0 == 0xE700000000000000;
                          if (v18 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v19 = v1 == 0x65726143666C6553 && v0 == 0xE800000000000000;
                            if (v19 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              v21 = v1 == OUTLINED_FUNCTION_265_2() && v0 == v20;
                              if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_307_1(1802723668);
                                v22 = v3 && v0 == 0xE500000000000000;
                                if (v22 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v23 = v1 == 0x6C6576617254 && v0 == 0xE600000000000000;
                                  if (v23 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_130_12();
                                    v24 = v3 && v0 == 0xE400000000000000;
                                    if (v24 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_181_8(0x656874616557);
                                      if (v3 && v0 == 0xE700000000000000)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        OUTLINED_FUNCTION_22_7();
                                        OUTLINED_FUNCTION_89();
                                        v4 = 17;
                                        if ((v1 & 1) == 0)
                                        {
                                          v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.StateOfMindValenceClassification.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.StateOfMindValenceClassification.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v54 = OUTLINED_FUNCTION_39(v11);
    v58 = OUTLINED_FUNCTION_84_2(v54, v55, v56, v57, &qword_1EAE42D38, &qword_193997008);
    v7 = OUTLINED_FUNCTION_17_2(v58);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v59 = OUTLINED_FUNCTION_39(v18);
    v63 = OUTLINED_FUNCTION_85(v59, v60, v61, v62, &qword_1EAE42D38, &qword_193997008);
    v14 = OUTLINED_FUNCTION_17_2(v63);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v64, v65, v66, v67, v68, v69);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v70 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v70, v71, v72, v73, &qword_1EAE42D38, &qword_193997008);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v74 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v74, v75, v76, v77, &qword_1EAE42D38, &qword_193997008);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v78 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v78, v79, v80, v81, &qword_1EAE42D38, &qword_193997008);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v82 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v82, v83, v84, v85, &qword_1EAE42D38, &qword_193997008);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v86 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v86, v87, v88, v89, &qword_1EAE42D38, &qword_193997008);
    v49 = v46;
  }

  OUTLINED_FUNCTION_50(v46, v47, v48, v49);
  return OUTLINED_FUNCTION_38_1(v51, v52);
}

void MomentsEventData.StateOfMindValenceClassification.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 2:
        OUTLINED_FUNCTION_75();
        break;
      case 3:
        OUTLINED_FUNCTION_149_10();
        break;
      case 4:
        OUTLINED_FUNCTION_38();
        break;
      case 6:
        OUTLINED_FUNCTION_287_3();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.StateOfMindValenceClassification.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v6 = v1 == 0x6C706E5579726556 && v0 == 0xEE00746E61736165;
    if (v6 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      v7 = v1 == 0x617361656C706E55 && v0 == 0xEA0000000000746ELL;
      if (v7 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
      {

        v5 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_206_3();
        OUTLINED_FUNCTION_38();
        v9 = v1 == (v2 | 2) && v8 == v0;
        if (v9 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_208_2();
          v10 = v4 && v0 == 0xE700000000000000;
          if (v10 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_26_4();
            v12 = v4 && v11 == v0;
            if (v12 || (OUTLINED_FUNCTION_44_25() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v13 = v1 == 0x746E617361656C50 && v0 == 0xE800000000000000;
              if (v13 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else if (v1 == OUTLINED_FUNCTION_287_3() && v0 == v14)
              {

                OUTLINED_FUNCTION_90();
              }

              else
              {
                OUTLINED_FUNCTION_0_9();
                OUTLINED_FUNCTION_89();
                v5 = 6;
                if ((v1 & 1) == 0)
                {
                  v5 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v5);
}

uint64_t MomentsEventData.StateOfMindReflectiveInterval.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x796C696144;
  }

  else
  {
    result = 0x7261746E656D6F4DLL;
  }

  *v0;
  return result;
}

void MomentsEventData.StateOfMindReflectiveInterval.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_155_7(0x746E656D6F4DLL);
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_187_4(1818845508);
      if (v3 && v0 == 0xE500000000000000)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_15_14();
        OUTLINED_FUNCTION_89();
        v4 = v1 & 1;
      }
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t MomentsEventData.PersonRelationshipTag.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    case 16:
      v3 = 16;
      break;
    case 17:
      v3 = 17;
      break;
    case 18:
      v3 = 18;
      break;
    case 19:
      v3 = 19;
      break;
    case 20:
      v3 = 20;
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.PersonRelationshipTag.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v166 = OUTLINED_FUNCTION_39(v11);
    v170 = OUTLINED_FUNCTION_84_2(v166, v167, v168, v169, &qword_1EAE42D28, &qword_193996FF8);
    v7 = OUTLINED_FUNCTION_17_2(v170);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v171 = OUTLINED_FUNCTION_39(v18);
    v175 = OUTLINED_FUNCTION_85(v171, v172, v173, v174, &qword_1EAE42D28, &qword_193996FF8);
    v14 = OUTLINED_FUNCTION_17_2(v175);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v176, v177, v178, v179, v180, v181);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v182 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v182, v183, v184, v185, &qword_1EAE42D28, &qword_193996FF8);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v186 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v186, v187, v188, v189, &qword_1EAE42D28, &qword_193996FF8);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v190 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v190, v191, v192, v193, &qword_1EAE42D28, &qword_193996FF8);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v194 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v194, v195, v196, v197, &qword_1EAE42D28, &qword_193996FF8);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v198 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v198, v199, v200, v201, &qword_1EAE42D28, &qword_193996FF8);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v202 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v202, v203, v204, v205, &qword_1EAE42D28, &qword_193996FF8);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v206 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v206, v207, v208, v209, &qword_1EAE42D28, &qword_193996FF8);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v210 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v210, v211, v212, v213, &qword_1EAE42D28, &qword_193996FF8);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v214 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v214, v215, v216, v217, &qword_1EAE42D28, &qword_193996FF8);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v218 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v218, v219, v220, v221, &qword_1EAE42D28, &qword_193996FF8);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v222 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v222, v223, v224, v225, &qword_1EAE42D28, &qword_193996FF8);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v226 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v226, v227, v228, v229, &qword_1EAE42D28, &qword_193996FF8);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v230 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v230, v231, v232, v233, &qword_1EAE42D28, &qword_193996FF8);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v234 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v234, v235, v236, v237, &qword_1EAE42D28, &qword_193996FF8);
    v94 = v91;
  }

  OUTLINED_FUNCTION_17_41(v91, v92, v93, v94);
  if (!(v19 ^ v20 | v13))
  {
    v238 = OUTLINED_FUNCTION_39(v100);
    v96 = OUTLINED_FUNCTION_84_2(v238, v239, v240, v241, &qword_1EAE42D28, &qword_193996FF8);
    v99 = v96;
  }

  OUTLINED_FUNCTION_19_54(v96, v97, v98, v99);
  if (!(v19 ^ v20 | v13))
  {
    v242 = OUTLINED_FUNCTION_39(v105);
    v101 = OUTLINED_FUNCTION_85(v242, v243, v244, v245, &qword_1EAE42D28, &qword_193996FF8);
    v104 = v101;
  }

  OUTLINED_FUNCTION_20_47(v101, v102, v103, v104);
  if (!(v19 ^ v20 | v13))
  {
    v246 = OUTLINED_FUNCTION_39(v110);
    v106 = OUTLINED_FUNCTION_84_2(v246, v247, v248, v249, &qword_1EAE42D28, &qword_193996FF8);
    v109 = v106;
  }

  OUTLINED_FUNCTION_25_36(v106, v107, v108, v109);
  if (!(v19 ^ v20 | v13))
  {
    v250 = OUTLINED_FUNCTION_39(v115);
    v111 = OUTLINED_FUNCTION_85(v250, v251, v252, v253, &qword_1EAE42D28, &qword_193996FF8);
    v114 = v111;
  }

  OUTLINED_FUNCTION_22_38(v111, v112, v113, v114);
  if (!(v19 ^ v20 | v13))
  {
    v254 = OUTLINED_FUNCTION_39(v120);
    v116 = OUTLINED_FUNCTION_84_2(v254, v255, v256, v257, &qword_1EAE42D28, &qword_193996FF8);
    v119 = v116;
  }

  OUTLINED_FUNCTION_24_46(v116, v117, v118, v119);
  if (!(v19 ^ v20 | v13))
  {
    v258 = OUTLINED_FUNCTION_39(v125);
    v121 = OUTLINED_FUNCTION_85(v258, v259, v260, v261, &qword_1EAE42D28, &qword_193996FF8);
    v124 = v121;
  }

  OUTLINED_FUNCTION_21_45(v121, v122, v123, v124);
  if (!(v19 ^ v20 | v13))
  {
    v262 = OUTLINED_FUNCTION_39(v130);
    v126 = OUTLINED_FUNCTION_84_2(v262, v263, v264, v265, &qword_1EAE42D28, &qword_193996FF8);
    v129 = v126;
  }

  OUTLINED_FUNCTION_23_44(v126, v127, v128, v129);
  if (!(v19 ^ v20 | v13))
  {
    v266 = OUTLINED_FUNCTION_39(v135);
    v131 = OUTLINED_FUNCTION_85(v266, v267, v268, v269, &qword_1EAE42D28, &qword_193996FF8);
    v134 = v131;
  }

  OUTLINED_FUNCTION_28_32(v131, v132, v133, v134);
  if (!(v19 ^ v20 | v13))
  {
    v270 = OUTLINED_FUNCTION_39(v140);
    v136 = OUTLINED_FUNCTION_84_2(v270, v271, v272, v273, &qword_1EAE42D28, &qword_193996FF8);
    v139 = v136;
  }

  OUTLINED_FUNCTION_32_33(v136, v137, v138, v139);
  if (!(v19 ^ v20 | v13))
  {
    v274 = OUTLINED_FUNCTION_39(v145);
    v141 = OUTLINED_FUNCTION_85(v274, v275, v276, v277, &qword_1EAE42D28, &qword_193996FF8);
    v144 = v141;
  }

  OUTLINED_FUNCTION_30_29(v141, v142, v143, v144);
  if (!(v19 ^ v20 | v13))
  {
    v278 = OUTLINED_FUNCTION_39(v150);
    v146 = OUTLINED_FUNCTION_84_2(v278, v279, v280, v281, &qword_1EAE42D28, &qword_193996FF8);
    v149 = v146;
  }

  OUTLINED_FUNCTION_31_39(v146, v147, v148, v149);
  if (!(v19 ^ v20 | v13))
  {
    v282 = OUTLINED_FUNCTION_39(v155);
    v151 = OUTLINED_FUNCTION_85(v282, v283, v284, v285, &qword_1EAE42D28, &qword_193996FF8);
    v154 = v151;
  }

  OUTLINED_FUNCTION_47_5(v151, v152, v153, v154);
  OUTLINED_FUNCTION_4(v156, v157);
  OUTLINED_FUNCTION_222_2();
  if (!(v19 ^ v20 | v13))
  {
    v286 = OUTLINED_FUNCTION_39(v162);
    v158 = OUTLINED_FUNCTION_84_2(v286, v287, v288, v289, &qword_1EAE42D28, &qword_193996FF8);
    v161 = v158;
  }

  OUTLINED_FUNCTION_50(v158, v159, v160, v161);
  return OUTLINED_FUNCTION_38_1(v163, v164);
}

void MomentsEventData.PersonRelationshipTag.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 3:
        OUTLINED_FUNCTION_170_7();
        break;
      case 7:
        OUTLINED_FUNCTION_71_21(0x6C626953u);
        break;
      case 8:
        OUTLINED_FUNCTION_166_7(0x6568746F7242);
        break;
      case 0xALL:
        OUTLINED_FUNCTION_190_3(0x50646E617247);
        break;
      case 0xBLL:
      case 0xCLL:
        OUTLINED_FUNCTION_167_7();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_194_4(0x6C696843794DLL);
        break;
      case 0xELL:
        OUTLINED_FUNCTION_197_4(1818847299);
        break;
      case 0x11:
        OUTLINED_FUNCTION_166_7(0x656E74726150);
        break;
      case 0x13:
        OUTLINED_FUNCTION_194_4(0x6E6162737548);
        break;
      case 0x14:
        OUTLINED_FUNCTION_292_1();
        break;
      case 0x16:
        OUTLINED_FUNCTION_162_10();
        break;
      case 0x17:
        OUTLINED_FUNCTION_258_3(0x6D6573756F48);
        break;
      case 0x19:
        OUTLINED_FUNCTION_84_16();
        break;
      case 0x1ALL:
        OUTLINED_FUNCTION_255_3(1699772749);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.PersonRelationshipTag.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_154_9(1702063701);
    v5 = v3 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_69_20();
      v6 = v3 && v0 == 0xE500000000000000;
      if (v6 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v7 = v1 == 0x666C6573794DLL && v0 == 0xE600000000000000;
        if (v7 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_144_9();
          v8 = v3 && v0 == 0xE600000000000000;
          if (v8 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v9 = v1 == 0x746E65726150 && v0 == 0xE600000000000000;
            if (v9 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v10 = v1 == 0x726568746F4DLL && v0 == 0xE600000000000000;
              if (v10 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v11 = v1 == 0x726568746146 && v0 == 0xE600000000000000;
                if (v11 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_46_24(0x6C626953u);
                  v12 = v3 && v0 == 0xE700000000000000;
                  if (v12 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_181_8(0x6568746F7242);
                    v13 = v3 && v0 == 0xE700000000000000;
                    if (v13 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_215_3(1953720659);
                      v14 = v3 && v0 == 0xE600000000000000;
                      if (v14 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_155_7(0x50646E617247);
                        v16 = v3 && v0 == v15;
                        if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          v17 = v1 == 0x746F6D646E617247 && v0 == 0xEB00000000726568;
                          if (v17 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_192_3(0x66646E617247);
                            v18 = v3 && v0 == 0xEB00000000726568;
                            if (v18 || (OUTLINED_FUNCTION_65_22() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_141_9(0x6C696843794DLL);
                              v19 = v3 && v0 == 0xE700000000000000;
                              if (v19 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_305_1(1818847299);
                                v20 = v3 && v0 == 0xE500000000000000;
                                if (v20 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v21 = v1 == 7237459 && v0 == 0xE300000000000000;
                                  if (v21 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v22 = v1 == 0x7265746867756144 && v0 == 0xE800000000000000;
                                    if (v22 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_181_8(0x656E74726150);
                                      v23 = v3 && v0 == 0xE700000000000000;
                                      if (v23 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v24 = v1 == 1701210455 && v0 == 0xE400000000000000;
                                        if (v24 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_141_9(0x6E6162737548);
                                          v25 = v3 && v0 == 0xE700000000000000;
                                          if (v25 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            v26 = v1 == OUTLINED_FUNCTION_292_1() && v0 == 0xE600000000000000;
                                            if (v26 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v27 = v1 == 0x72656B726F776F43 && v0 == 0xE800000000000000;
                                              if (v27 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_209_2();
                                                v28 = v3 && v0 == 0xE800000000000000;
                                                if (v28 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_192_3(0x6D6573756F48);
                                                  v30 = v3 && v0 == v29;
                                                  if (v30 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    v31 = v1 == 0x696E6D756C41 && v0 == 0xE600000000000000;
                                                    if (v31 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_65_0();
                                                      v33 = v3 && v32 == v0;
                                                      if (v33 || (OUTLINED_FUNCTION_44_25() & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_154_9(1699772749);
                                                        v34 = v3 && v0 == 0xE500000000000000;
                                                        if (v34 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v35 = v1 == 0x676F44794DLL && v0 == 0xE500000000000000;
                                                          if (v35 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            OUTLINED_FUNCTION_154_9(1631811917);
                                                            if (v3 && v0 == 0xE500000000000000)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_15_14();
                                                              OUTLINED_FUNCTION_89();
                                                              v4 = 28;
                                                              if ((v1 & 1) == 0)
                                                              {
                                                                v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t _s27IntelligencePlatformLibrary16MomentsEventDataV15PhotoSourceTypeO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

unint64_t MomentsEventData.OnboardingFlowCompletion.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x7472617453746F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x657373696D736944;
      break;
    case 2:
      result = 0x7472617453746547;
      break;
    case 3:
      result = OUTLINED_FUNCTION_185_6(0x6873696E6946);
      break;
    case 4:
      OUTLINED_FUNCTION_38();
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.OnboardingFlowCompletion.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 0x7472617453746F4ELL && v0 == 0xEA00000000006465;
    if (v5 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_180_8();
      v7 = v3 && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        v8 = v1 == 0x7472617453746547 && v0 == 0xEA00000000006465;
        if (v8 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_93_2(0x6873696E6946);
          v9 = v3 && v0 == 0xE800000000000000;
          if (v9 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_65_0();
            if (v3 && v10 == v0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_25_7();
              OUTLINED_FUNCTION_89();
              OUTLINED_FUNCTION_214_2();
              if (v3)
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t _s27IntelligencePlatformLibrary16MomentsEventDataV0E12ProviderTypeO8rawValueAESgSi_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t sub_19379FFFC()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  v6 = OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_63_2(v6);
  if (!(!v13 & v12))
  {
    v88 = OUTLINED_FUNCTION_33_5((v11 > 1), v8, v9, v10);
    v7 = OUTLINED_FUNCTION_17_2(v88);
  }

  OUTLINED_FUNCTION_53_3(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v89 = OUTLINED_FUNCTION_39_2((v18 > 1), v15, v16, v17);
    v14 = OUTLINED_FUNCTION_17_2(v89);
  }

  OUTLINED_FUNCTION_46_2(v14, v15, v16, v17);
  if (v19 != v20)
  {
    v21 = OUTLINED_FUNCTION_51((v25 > 1), v0, v23, v24);
    v24 = v21;
  }

  OUTLINED_FUNCTION_45_0(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v26 = OUTLINED_FUNCTION_33_5((v30 > 1), v27, v28, v29);
    v29 = v26;
  }

  OUTLINED_FUNCTION_32(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v31 = OUTLINED_FUNCTION_39_2((v35 > 1), v32, v33, v34);
    v34 = v31;
  }

  OUTLINED_FUNCTION_149(v31, v32, v33, v34);
  OUTLINED_FUNCTION_90_7(v36, v37);
  OUTLINED_FUNCTION_301_2();
  if (!(v19 ^ v20 | v13))
  {
    v38 = OUTLINED_FUNCTION_33_5((v42 > 1), v39, v40, v41);
    v41 = v38;
  }

  OUTLINED_FUNCTION_160_1(v38, v39, v40, v41);
  OUTLINED_FUNCTION_90_7(v43, v44);
  if (v1 + 7 > (v49 >> 1))
  {
    v45 = OUTLINED_FUNCTION_39_2((v49 > 1), v46, v47, v48);
    v48 = v45;
  }

  OUTLINED_FUNCTION_149(v45, v46, v47, v48);
  OUTLINED_FUNCTION_90_7(v50, v51);
  if (v1 + 8 > (v56 >> 1))
  {
    v52 = OUTLINED_FUNCTION_33_5((v56 > 1), v53, v54, v55);
    v55 = v52;
  }

  OUTLINED_FUNCTION_160_1(v52, v53, v54, v55);
  OUTLINED_FUNCTION_90_7(v57, v58);
  if (v1 + 9 > (v63 >> 1))
  {
    v59 = OUTLINED_FUNCTION_39_2((v63 > 1), v60, v61, v62);
    v62 = v59;
  }

  OUTLINED_FUNCTION_149(v59, v60, v61, v62);
  OUTLINED_FUNCTION_90_7(v64, v65);
  if (v1 + 10 > (v70 >> 1))
  {
    v66 = OUTLINED_FUNCTION_33_5((v70 > 1), v67, v68, v69);
    v69 = v66;
  }

  OUTLINED_FUNCTION_160_1(v66, v67, v68, v69);
  OUTLINED_FUNCTION_90_7(v71, v72);
  if (v1 + 11 > (v77 >> 1))
  {
    v73 = OUTLINED_FUNCTION_39_2((v77 > 1), v74, v75, v76);
    v76 = v73;
  }

  OUTLINED_FUNCTION_149(v73, v74, v75, v76);
  OUTLINED_FUNCTION_90_7(v78, v79);
  if (v1 + 12 > (v84 >> 1))
  {
    v80 = OUTLINED_FUNCTION_33_5((v84 > 1), v81, v82, v83);
    v83 = v80;
  }

  OUTLINED_FUNCTION_160_1(v80, v81, v82, v83);
  return OUTLINED_FUNCTION_38_1(v85, v86);
}

void MomentsEventData.EventBundle.BundleSuperType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_143_8();
        break;
      case 2:
        OUTLINED_FUNCTION_111_14(0x6361746E6F43);
        break;
      case 3:
        OUTLINED_FUNCTION_98_17();
        break;
      case 4:
        OUTLINED_FUNCTION_118_14();
        break;
      case 5:
        OUTLINED_FUNCTION_42_30();
        break;
      case 6:
        OUTLINED_FUNCTION_62_4();
        break;
      case 7:
        OUTLINED_FUNCTION_66_23();
        break;
      case 9:
        OUTLINED_FUNCTION_244_2();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_38();
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.EventBundle.BundleSuperType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_113_12(1769239887);
    v5 = v3 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_107_14();
      v6 = v3 && v0 == 0xE800000000000000;
      if (v6 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_100_12();
        v7 = v3 && v0 == 0xE700000000000000;
        if (v7 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_140_11();
          v8 = v3 && v0 == 0xE500000000000000;
          if (v8 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_104_13();
            v9 = v3 && v0 == 0xEA0000000000656DLL;
            if (v9 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_47_28();
              v11 = v3 && v0 == v10;
              if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_79_16();
                v13 = v3 && v0 == v12;
                if (v13 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  v15 = v1 == OUTLINED_FUNCTION_66_23() && v0 == v14;
                  if (v15 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v16 = v1 == 0x6972657473756C43 && v0 == 0xEA0000000000676ELL;
                    if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      v18 = v1 == OUTLINED_FUNCTION_244_2() && v0 == v17;
                      if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_65_0();
                        if (v3 && v19 == v0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_25_7();
                          OUTLINED_FUNCTION_89();
                          v4 = 10;
                          if ((v1 & 1) == 0)
                          {
                            v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.EventBundle.BundleSubType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!v3 & v2)
  {
    switch(a1)
    {
      case 301:
        a1 = 13;
        break;
      case 302:
        a1 = 14;
        break;
      case 303:
        a1 = 15;
        break;
      case 801:
        a1 = 56;
        break;
      case 802:
        a1 = 57;
        break;
      case 1101:
        a1 = 74;
        break;
      case 1102:
        a1 = 75;
        break;
      case 1103:
        a1 = 76;
        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 601:
        a1 = 30;
        break;
      case 602:
        a1 = 31;
        break;
      case 603:
        a1 = 32;
        break;
      case 604:
        a1 = 33;
        break;
      case 605:
        a1 = 34;
        break;
      case 606:
        a1 = 35;
        break;
      case 607:
        a1 = 36;
        break;
      case 608:
        a1 = 37;
        break;
      case 609:
        a1 = 38;
        break;
      case 610:
        a1 = 39;
        break;
      case 611:
        a1 = 40;
        break;
      case 612:
        a1 = 41;
        break;
      case 613:
        a1 = 42;
        break;
      case 614:
        a1 = 43;
        break;
      case 615:
        a1 = 44;
        break;
      case 616:
        a1 = 45;
        break;
      case 617:
        a1 = 46;
        break;
      default:
        JUMPOUT(0);
    }
  }

  return OUTLINED_FUNCTION_15_3(a1, a2);
}

uint64_t MomentsEventData.EventBundle.BundleSubType.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1939975A8[result];
  }

  return result;
}

uint64_t sub_1937A0AB8()
{
  OUTLINED_FUNCTION_91_0();
  v2 = OUTLINED_FUNCTION_95_0();
  v6 = OUTLINED_FUNCTION_88_0(v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_63_2(v6);
  if (!(!v13 & v12))
  {
    v550 = OUTLINED_FUNCTION_33_5((v11 > 1), v8, v9, v10);
    v7 = OUTLINED_FUNCTION_17_2(v550);
  }

  OUTLINED_FUNCTION_53_3(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v551 = OUTLINED_FUNCTION_39_2((v18 > 1), v15, v16, v17);
    v14 = OUTLINED_FUNCTION_17_2(v551);
  }

  OUTLINED_FUNCTION_46_2(v14, v15, v16, v17);
  if (v19 != v20)
  {
    v21 = OUTLINED_FUNCTION_51((v25 > 1), v0, v23, v24);
    v24 = v21;
  }

  OUTLINED_FUNCTION_45_0(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v26 = OUTLINED_FUNCTION_33_5((v30 > 1), v27, v28, v29);
    v29 = v26;
  }

  OUTLINED_FUNCTION_32(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v31 = OUTLINED_FUNCTION_39_2((v35 > 1), v32, v33, v34);
    v34 = v31;
  }

  OUTLINED_FUNCTION_149(v31, v32, v33, v34);
  OUTLINED_FUNCTION_90_7(v36, v37);
  OUTLINED_FUNCTION_301_2();
  if (!(v19 ^ v20 | v13))
  {
    v38 = OUTLINED_FUNCTION_33_5((v42 > 1), v39, v40, v41);
    v41 = v38;
  }

  OUTLINED_FUNCTION_160_1(v38, v39, v40, v41);
  OUTLINED_FUNCTION_90_7(v43, v44);
  if (v1 + 7 > (v49 >> 1))
  {
    v45 = OUTLINED_FUNCTION_39_2((v49 > 1), v46, v47, v48);
    v48 = v45;
  }

  OUTLINED_FUNCTION_149(v45, v46, v47, v48);
  OUTLINED_FUNCTION_90_7(v50, v51);
  if (v1 + 8 > (v56 >> 1))
  {
    v52 = OUTLINED_FUNCTION_33_5((v56 > 1), v53, v54, v55);
    v55 = v52;
  }

  OUTLINED_FUNCTION_160_1(v52, v53, v54, v55);
  OUTLINED_FUNCTION_90_7(v57, v58);
  if (v1 + 9 > (v63 >> 1))
  {
    v59 = OUTLINED_FUNCTION_39_2((v63 > 1), v60, v61, v62);
    v62 = v59;
  }

  OUTLINED_FUNCTION_149(v59, v60, v61, v62);
  OUTLINED_FUNCTION_90_7(v64, v65);
  if (v1 + 10 > (v70 >> 1))
  {
    v66 = OUTLINED_FUNCTION_33_5((v70 > 1), v67, v68, v69);
    v69 = v66;
  }

  OUTLINED_FUNCTION_160_1(v66, v67, v68, v69);
  OUTLINED_FUNCTION_90_7(v71, v72);
  if (v1 + 11 > (v77 >> 1))
  {
    v73 = OUTLINED_FUNCTION_39_2((v77 > 1), v74, v75, v76);
    v76 = v73;
  }

  OUTLINED_FUNCTION_149(v73, v74, v75, v76);
  OUTLINED_FUNCTION_90_7(v78, v79);
  if (v1 + 12 > (v84 >> 1))
  {
    v80 = OUTLINED_FUNCTION_33_5((v84 > 1), v81, v82, v83);
    v83 = v80;
  }

  OUTLINED_FUNCTION_160_1(v80, v81, v82, v83);
  OUTLINED_FUNCTION_90_7(v85, v86);
  if (v1 + 13 > (v91 >> 1))
  {
    v87 = OUTLINED_FUNCTION_39_2((v91 > 1), v88, v89, v90);
    v90 = v87;
  }

  OUTLINED_FUNCTION_149(v87, v88, v89, v90);
  OUTLINED_FUNCTION_90_7(v92, v93);
  if (v1 + 14 > (v98 >> 1))
  {
    v94 = OUTLINED_FUNCTION_33_5((v98 > 1), v95, v96, v97);
    v97 = v94;
  }

  OUTLINED_FUNCTION_160_1(v94, v95, v96, v97);
  OUTLINED_FUNCTION_90_7(v99, v100);
  if (v1 + 15 > (v105 >> 1))
  {
    v101 = OUTLINED_FUNCTION_39_2((v105 > 1), v102, v103, v104);
    v104 = v101;
  }

  OUTLINED_FUNCTION_149(v101, v102, v103, v104);
  OUTLINED_FUNCTION_90_7(v106, v107);
  if (v1 + 16 > (v112 >> 1))
  {
    v108 = OUTLINED_FUNCTION_33_5((v112 > 1), v109, v110, v111);
    v111 = v108;
  }

  OUTLINED_FUNCTION_160_1(v108, v109, v110, v111);
  OUTLINED_FUNCTION_90_7(v113, v114);
  if (v1 + 17 > (v119 >> 1))
  {
    v115 = OUTLINED_FUNCTION_39_2((v119 > 1), v116, v117, v118);
    v118 = v115;
  }

  OUTLINED_FUNCTION_149(v115, v116, v117, v118);
  OUTLINED_FUNCTION_90_7(v120, v121);
  if (v1 + 18 > (v126 >> 1))
  {
    v122 = OUTLINED_FUNCTION_33_5((v126 > 1), v123, v124, v125);
    v125 = v122;
  }

  OUTLINED_FUNCTION_160_1(v122, v123, v124, v125);
  OUTLINED_FUNCTION_90_7(v127, v128);
  if (v1 + 19 > (v133 >> 1))
  {
    v129 = OUTLINED_FUNCTION_39_2((v133 > 1), v130, v131, v132);
    v132 = v129;
  }

  OUTLINED_FUNCTION_149(v129, v130, v131, v132);
  OUTLINED_FUNCTION_90_7(v134, v135);
  if (v1 + 20 > (v140 >> 1))
  {
    v136 = OUTLINED_FUNCTION_33_5((v140 > 1), v137, v138, v139);
    v139 = v136;
  }

  OUTLINED_FUNCTION_160_1(v136, v137, v138, v139);
  OUTLINED_FUNCTION_90_7(v141, v142);
  if (v1 + 21 > (v147 >> 1))
  {
    v143 = OUTLINED_FUNCTION_39_2((v147 > 1), v144, v145, v146);
    v146 = v143;
  }

  OUTLINED_FUNCTION_149(v143, v144, v145, v146);
  OUTLINED_FUNCTION_90_7(v148, v149);
  if (v1 + 22 > (v154 >> 1))
  {
    v150 = OUTLINED_FUNCTION_33_5((v154 > 1), v151, v152, v153);
    v153 = v150;
  }

  OUTLINED_FUNCTION_160_1(v150, v151, v152, v153);
  OUTLINED_FUNCTION_90_7(v155, v156);
  if (v1 + 23 > (v161 >> 1))
  {
    v157 = OUTLINED_FUNCTION_39_2((v161 > 1), v158, v159, v160);
    v160 = v157;
  }

  OUTLINED_FUNCTION_149(v157, v158, v159, v160);
  OUTLINED_FUNCTION_90_7(v162, v163);
  if (v1 + 24 > (v168 >> 1))
  {
    v164 = OUTLINED_FUNCTION_33_5((v168 > 1), v165, v166, v167);
    v167 = v164;
  }

  OUTLINED_FUNCTION_160_1(v164, v165, v166, v167);
  OUTLINED_FUNCTION_90_7(v169, v170);
  if (v1 + 25 > (v175 >> 1))
  {
    v171 = OUTLINED_FUNCTION_39_2((v175 > 1), v172, v173, v174);
    v174 = v171;
  }

  OUTLINED_FUNCTION_149(v171, v172, v173, v174);
  OUTLINED_FUNCTION_90_7(v176, v177);
  if (v1 + 26 > (v182 >> 1))
  {
    v178 = OUTLINED_FUNCTION_33_5((v182 > 1), v179, v180, v181);
    v181 = v178;
  }

  OUTLINED_FUNCTION_160_1(v178, v179, v180, v181);
  OUTLINED_FUNCTION_90_7(v183, v184);
  if (v1 + 27 > (v189 >> 1))
  {
    v185 = OUTLINED_FUNCTION_39_2((v189 > 1), v186, v187, v188);
    v188 = v185;
  }

  OUTLINED_FUNCTION_149(v185, v186, v187, v188);
  OUTLINED_FUNCTION_90_7(v190, v191);
  if (v1 + 28 > (v196 >> 1))
  {
    v192 = OUTLINED_FUNCTION_33_5((v196 > 1), v193, v194, v195);
    v195 = v192;
  }

  OUTLINED_FUNCTION_160_1(v192, v193, v194, v195);
  OUTLINED_FUNCTION_90_7(v197, v198);
  if (v1 + 29 > (v203 >> 1))
  {
    v199 = OUTLINED_FUNCTION_39_2((v203 > 1), v200, v201, v202);
    v202 = v199;
  }

  OUTLINED_FUNCTION_149(v199, v200, v201, v202);
  OUTLINED_FUNCTION_90_7(v204, v205);
  if (v1 + 30 > (v210 >> 1))
  {
    v206 = OUTLINED_FUNCTION_33_5((v210 > 1), v207, v208, v209);
    v209 = v206;
  }

  OUTLINED_FUNCTION_160_1(v206, v207, v208, v209);
  OUTLINED_FUNCTION_90_7(v211, v212);
  if (v1 + 31 > (v217 >> 1))
  {
    v213 = OUTLINED_FUNCTION_39_2((v217 > 1), v214, v215, v216);
    v216 = v213;
  }

  OUTLINED_FUNCTION_149(v213, v214, v215, v216);
  OUTLINED_FUNCTION_90_7(v218, v219);
  if (v1 + 32 > (v224 >> 1))
  {
    v220 = OUTLINED_FUNCTION_33_5((v224 > 1), v221, v222, v223);
    v223 = v220;
  }

  OUTLINED_FUNCTION_160_1(v220, v221, v222, v223);
  OUTLINED_FUNCTION_90_7(v225, v226);
  if (v1 + 33 > (v231 >> 1))
  {
    v227 = OUTLINED_FUNCTION_39_2((v231 > 1), v228, v229, v230);
    v230 = v227;
  }

  OUTLINED_FUNCTION_149(v227, v228, v229, v230);
  OUTLINED_FUNCTION_90_7(v232, v233);
  if (v1 + 34 > (v238 >> 1))
  {
    v234 = OUTLINED_FUNCTION_33_5((v238 > 1), v235, v236, v237);
    v237 = v234;
  }

  OUTLINED_FUNCTION_160_1(v234, v235, v236, v237);
  OUTLINED_FUNCTION_90_7(v239, v240);
  if (v1 + 35 > (v245 >> 1))
  {
    v241 = OUTLINED_FUNCTION_39_2((v245 > 1), v242, v243, v244);
    v244 = v241;
  }

  OUTLINED_FUNCTION_149(v241, v242, v243, v244);
  OUTLINED_FUNCTION_90_7(v246, v247);
  if (v1 + 36 > (v252 >> 1))
  {
    v248 = OUTLINED_FUNCTION_33_5((v252 > 1), v249, v250, v251);
    v251 = v248;
  }

  OUTLINED_FUNCTION_160_1(v248, v249, v250, v251);
  OUTLINED_FUNCTION_90_7(v253, v254);
  if (v1 + 37 > (v259 >> 1))
  {
    v255 = OUTLINED_FUNCTION_39_2((v259 > 1), v256, v257, v258);
    v258 = v255;
  }

  OUTLINED_FUNCTION_149(v255, v256, v257, v258);
  OUTLINED_FUNCTION_90_7(v260, v261);
  if (v1 + 38 > (v266 >> 1))
  {
    v262 = OUTLINED_FUNCTION_33_5((v266 > 1), v263, v264, v265);
    v265 = v262;
  }

  OUTLINED_FUNCTION_160_1(v262, v263, v264, v265);
  OUTLINED_FUNCTION_90_7(v267, v268);
  if (v1 + 39 > (v273 >> 1))
  {
    v269 = OUTLINED_FUNCTION_39_2((v273 > 1), v270, v271, v272);
    v272 = v269;
  }

  OUTLINED_FUNCTION_149(v269, v270, v271, v272);
  OUTLINED_FUNCTION_90_7(v274, v275);
  if (v1 + 40 > (v280 >> 1))
  {
    v276 = OUTLINED_FUNCTION_33_5((v280 > 1), v277, v278, v279);
    v279 = v276;
  }

  OUTLINED_FUNCTION_160_1(v276, v277, v278, v279);
  OUTLINED_FUNCTION_90_7(v281, v282);
  if (v1 + 41 > (v287 >> 1))
  {
    v283 = OUTLINED_FUNCTION_39_2((v287 > 1), v284, v285, v286);
    v286 = v283;
  }

  OUTLINED_FUNCTION_149(v283, v284, v285, v286);
  OUTLINED_FUNCTION_90_7(v288, v289);
  if (v1 + 42 > (v294 >> 1))
  {
    v290 = OUTLINED_FUNCTION_33_5((v294 > 1), v291, v292, v293);
    v293 = v290;
  }

  OUTLINED_FUNCTION_160_1(v290, v291, v292, v293);
  OUTLINED_FUNCTION_90_7(v295, v296);
  if (v1 + 43 > (v301 >> 1))
  {
    v297 = OUTLINED_FUNCTION_39_2((v301 > 1), v298, v299, v300);
    v300 = v297;
  }

  OUTLINED_FUNCTION_149(v297, v298, v299, v300);
  OUTLINED_FUNCTION_90_7(v302, v303);
  if (v1 + 44 > (v308 >> 1))
  {
    v304 = OUTLINED_FUNCTION_33_5((v308 > 1), v305, v306, v307);
    v307 = v304;
  }

  OUTLINED_FUNCTION_160_1(v304, v305, v306, v307);
  OUTLINED_FUNCTION_90_7(v309, v310);
  if (v1 + 45 > (v315 >> 1))
  {
    v311 = OUTLINED_FUNCTION_39_2((v315 > 1), v312, v313, v314);
    v314 = v311;
  }

  OUTLINED_FUNCTION_149(v311, v312, v313, v314);
  OUTLINED_FUNCTION_90_7(v316, v317);
  if (v1 + 46 > (v322 >> 1))
  {
    v318 = OUTLINED_FUNCTION_33_5((v322 > 1), v319, v320, v321);
    v321 = v318;
  }

  OUTLINED_FUNCTION_160_1(v318, v319, v320, v321);
  OUTLINED_FUNCTION_90_7(v323, v324);
  if (v1 + 47 > (v329 >> 1))
  {
    v325 = OUTLINED_FUNCTION_39_2((v329 > 1), v326, v327, v328);
    v328 = v325;
  }

  OUTLINED_FUNCTION_149(v325, v326, v327, v328);
  OUTLINED_FUNCTION_90_7(v330, v331);
  if (v1 + 48 > (v336 >> 1))
  {
    v332 = OUTLINED_FUNCTION_33_5((v336 > 1), v333, v334, v335);
    v335 = v332;
  }

  OUTLINED_FUNCTION_160_1(v332, v333, v334, v335);
  OUTLINED_FUNCTION_90_7(v337, v338);
  if (v1 + 49 > (v343 >> 1))
  {
    v339 = OUTLINED_FUNCTION_39_2((v343 > 1), v340, v341, v342);
    v342 = v339;
  }

  OUTLINED_FUNCTION_149(v339, v340, v341, v342);
  OUTLINED_FUNCTION_90_7(v344, v345);
  if (v1 + 50 > (v350 >> 1))
  {
    v346 = OUTLINED_FUNCTION_33_5((v350 > 1), v347, v348, v349);
    v349 = v346;
  }

  OUTLINED_FUNCTION_160_1(v346, v347, v348, v349);
  OUTLINED_FUNCTION_90_7(v351, v352);
  if (v1 + 51 > (v357 >> 1))
  {
    v353 = OUTLINED_FUNCTION_39_2((v357 > 1), v354, v355, v356);
    v356 = v353;
  }

  OUTLINED_FUNCTION_149(v353, v354, v355, v356);
  OUTLINED_FUNCTION_90_7(v358, v359);
  if (v1 + 52 > (v364 >> 1))
  {
    v360 = OUTLINED_FUNCTION_33_5((v364 > 1), v361, v362, v363);
    v363 = v360;
  }

  OUTLINED_FUNCTION_160_1(v360, v361, v362, v363);
  OUTLINED_FUNCTION_90_7(v365, v366);
  if (v1 + 53 > (v371 >> 1))
  {
    v367 = OUTLINED_FUNCTION_39_2((v371 > 1), v368, v369, v370);
    v370 = v367;
  }

  OUTLINED_FUNCTION_149(v367, v368, v369, v370);
  OUTLINED_FUNCTION_90_7(v372, v373);
  if (v1 + 54 > (v378 >> 1))
  {
    v374 = OUTLINED_FUNCTION_33_5((v378 > 1), v375, v376, v377);
    v377 = v374;
  }

  OUTLINED_FUNCTION_160_1(v374, v375, v376, v377);
  OUTLINED_FUNCTION_90_7(v379, v380);
  if (v1 + 55 > (v385 >> 1))
  {
    v381 = OUTLINED_FUNCTION_39_2((v385 > 1), v382, v383, v384);
    v384 = v381;
  }

  OUTLINED_FUNCTION_149(v381, v382, v383, v384);
  OUTLINED_FUNCTION_90_7(v386, v387);
  if (v1 + 56 > (v392 >> 1))
  {
    v388 = OUTLINED_FUNCTION_33_5((v392 > 1), v389, v390, v391);
    v391 = v388;
  }

  OUTLINED_FUNCTION_160_1(v388, v389, v390, v391);
  OUTLINED_FUNCTION_90_7(v393, v394);
  if (v1 + 57 > (v399 >> 1))
  {
    v395 = OUTLINED_FUNCTION_39_2((v399 > 1), v396, v397, v398);
    v398 = v395;
  }

  OUTLINED_FUNCTION_149(v395, v396, v397, v398);
  OUTLINED_FUNCTION_90_7(v400, v401);
  if (v1 + 58 > (v406 >> 1))
  {
    v402 = OUTLINED_FUNCTION_33_5((v406 > 1), v403, v404, v405);
    v405 = v402;
  }

  OUTLINED_FUNCTION_160_1(v402, v403, v404, v405);
  OUTLINED_FUNCTION_90_7(v407, v408);
  if (v1 + 59 > (v413 >> 1))
  {
    v409 = OUTLINED_FUNCTION_39_2((v413 > 1), v410, v411, v412);
    v412 = v409;
  }

  OUTLINED_FUNCTION_149(v409, v410, v411, v412);
  OUTLINED_FUNCTION_90_7(v414, v415);
  if (v1 + 60 > (v420 >> 1))
  {
    v416 = OUTLINED_FUNCTION_33_5((v420 > 1), v417, v418, v419);
    v419 = v416;
  }

  OUTLINED_FUNCTION_160_1(v416, v417, v418, v419);
  OUTLINED_FUNCTION_90_7(v421, v422);
  if (v1 + 61 > (v427 >> 1))
  {
    v423 = OUTLINED_FUNCTION_39_2((v427 > 1), v424, v425, v426);
    v426 = v423;
  }

  OUTLINED_FUNCTION_149(v423, v424, v425, v426);
  OUTLINED_FUNCTION_90_7(v428, v429);
  if (v1 + 62 > (v434 >> 1))
  {
    v430 = OUTLINED_FUNCTION_33_5((v434 > 1), v431, v432, v433);
    v433 = v430;
  }

  OUTLINED_FUNCTION_160_1(v430, v431, v432, v433);
  OUTLINED_FUNCTION_90_7(v435, v436);
  if (v1 + 63 > (v441 >> 1))
  {
    v437 = OUTLINED_FUNCTION_39_2((v441 > 1), v438, v439, v440);
    v440 = v437;
  }

  OUTLINED_FUNCTION_149(v437, v438, v439, v440);
  OUTLINED_FUNCTION_90_7(v442, v443);
  if (v1 + 64 > (v448 >> 1))
  {
    v444 = OUTLINED_FUNCTION_33_5((v448 > 1), v445, v446, v447);
    v447 = v444;
  }

  OUTLINED_FUNCTION_160_1(v444, v445, v446, v447);
  OUTLINED_FUNCTION_90_7(v449, v450);
  if (v1 + 65 > (v455 >> 1))
  {
    v451 = OUTLINED_FUNCTION_39_2((v455 > 1), v452, v453, v454);
    v454 = v451;
  }

  OUTLINED_FUNCTION_149(v451, v452, v453, v454);
  OUTLINED_FUNCTION_90_7(v456, v457);
  if (v1 + 66 > (v462 >> 1))
  {
    v458 = OUTLINED_FUNCTION_33_5((v462 > 1), v459, v460, v461);
    v461 = v458;
  }

  OUTLINED_FUNCTION_160_1(v458, v459, v460, v461);
  OUTLINED_FUNCTION_90_7(v463, v464);
  if (v1 + 67 > (v469 >> 1))
  {
    v465 = OUTLINED_FUNCTION_39_2((v469 > 1), v466, v467, v468);
    v468 = v465;
  }

  OUTLINED_FUNCTION_149(v465, v466, v467, v468);
  OUTLINED_FUNCTION_90_7(v470, v471);
  if (v1 + 68 > (v476 >> 1))
  {
    v472 = OUTLINED_FUNCTION_33_5((v476 > 1), v473, v474, v475);
    v475 = v472;
  }

  OUTLINED_FUNCTION_160_1(v472, v473, v474, v475);
  OUTLINED_FUNCTION_90_7(v477, v478);
  if (v1 + 69 > (v483 >> 1))
  {
    v479 = OUTLINED_FUNCTION_39_2((v483 > 1), v480, v481, v482);
    v482 = v479;
  }

  OUTLINED_FUNCTION_149(v479, v480, v481, v482);
  OUTLINED_FUNCTION_90_7(v484, v485);
  if (v1 + 70 > (v490 >> 1))
  {
    v486 = OUTLINED_FUNCTION_33_5((v490 > 1), v487, v488, v489);
    v489 = v486;
  }

  OUTLINED_FUNCTION_160_1(v486, v487, v488, v489);
  OUTLINED_FUNCTION_90_7(v491, v492);
  if (v1 + 71 > (v497 >> 1))
  {
    v493 = OUTLINED_FUNCTION_39_2((v497 > 1), v494, v495, v496);
    v496 = v493;
  }

  OUTLINED_FUNCTION_149(v493, v494, v495, v496);
  OUTLINED_FUNCTION_90_7(v498, v499);
  if (v1 + 72 > (v504 >> 1))
  {
    v500 = OUTLINED_FUNCTION_33_5((v504 > 1), v501, v502, v503);
    v503 = v500;
  }

  OUTLINED_FUNCTION_160_1(v500, v501, v502, v503);
  OUTLINED_FUNCTION_90_7(v505, v506);
  if (v1 + 73 > (v511 >> 1))
  {
    v507 = OUTLINED_FUNCTION_39_2((v511 > 1), v508, v509, v510);
    v510 = v507;
  }

  OUTLINED_FUNCTION_149(v507, v508, v509, v510);
  OUTLINED_FUNCTION_90_7(v512, v513);
  if (v1 + 74 > (v518 >> 1))
  {
    v514 = OUTLINED_FUNCTION_33_5((v518 > 1), v515, v516, v517);
    v517 = v514;
  }

  OUTLINED_FUNCTION_160_1(v514, v515, v516, v517);
  OUTLINED_FUNCTION_90_7(v519, v520);
  if (v1 + 75 > (v525 >> 1))
  {
    v521 = OUTLINED_FUNCTION_39_2((v525 > 1), v522, v523, v524);
    v524 = v521;
  }

  OUTLINED_FUNCTION_149(v521, v522, v523, v524);
  OUTLINED_FUNCTION_90_7(v526, v527);
  if (v1 + 76 > (v532 >> 1))
  {
    v528 = OUTLINED_FUNCTION_33_5((v532 > 1), v529, v530, v531);
    v531 = v528;
  }

  OUTLINED_FUNCTION_160_1(v528, v529, v530, v531);
  OUTLINED_FUNCTION_90_7(v533, v534);
  if (v1 + 77 > (v539 >> 1))
  {
    v535 = OUTLINED_FUNCTION_39_2((v539 > 1), v536, v537, v538);
    v538 = v535;
  }

  OUTLINED_FUNCTION_149(v535, v536, v537, v538);
  OUTLINED_FUNCTION_90_7(v540, v541);
  if (v1 + 78 > (v546 >> 1))
  {
    v542 = OUTLINED_FUNCTION_33_5((v546 > 1), v543, v544, v545);
    v545 = v542;
  }

  OUTLINED_FUNCTION_160_1(v542, v543, v544, v545);
  return OUTLINED_FUNCTION_38_1(v547, v548);
}

void MomentsEventData.EventBundle.BundleSubType.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    switch(*v0)
    {
      case 1:
        OUTLINED_FUNCTION_174_5();
        break;
      case 2:
        OUTLINED_FUNCTION_122_10(1768843588);
        break;
      case 3:
        OUTLINED_FUNCTION_142_11();
        break;
      case 4:
        OUTLINED_FUNCTION_147_9();
        break;
      case 5:
      case 7:
      case 9:
      case 0xBLL:
      case 0xCLL:
      case 0xELL:
      case 0x14:
      case 0x16:
      case 0x17:
      case 0x18:
      case 0x19:
      case 0x1ELL:
      case 0x1FLL:
      case 0x20:
      case 0x22:
      case 0x23:
      case 0x25:
      case 0x28:
      case 0x29:
      case 0x2ALL:
      case 0x2BLL:
      case 0x2DLL:
      case 0x2ELL:
      case 0x2FLL:
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x34:
      case 0x35:
      case 0x36:
      case 0x39:
      case 0x3ALL:
      case 0x3BLL:
      case 0x3CLL:
      case 0x3DLL:
      case 0x40:
      case 0x42:
      case 0x43:
      case 0x44:
      case 0x45:
      case 0x46:
      case 0x48:
      case 0x4ALL:
      case 0x4BLL:
      case 0x4CLL:
        OUTLINED_FUNCTION_2_77();
        break;
      case 6:
        OUTLINED_FUNCTION_111_14(0x756F6B726F57);
        break;
      case 8:
        OUTLINED_FUNCTION_230_4();
        break;
      case 0xALL:
        OUTLINED_FUNCTION_266_3();
        break;
      case 0xDLL:
        OUTLINED_FUNCTION_111_14(0x6361746E6F43);
        break;
      case 0xFLL:
        OUTLINED_FUNCTION_312_1();
        break;
      case 0x10:
        OUTLINED_FUNCTION_273_2();
        break;
      case 0x12:
        OUTLINED_FUNCTION_231_4();
        break;
      case 0x13:
      case 0x21:
      case 0x26:
      case 0x2CLL:
      case 0x37:
      case 0x3ELL:
      case 0x3FLL:
      case 0x41:
      case 0x47:
      case 0x49:
        OUTLINED_FUNCTION_38();
        break;
      case 0x15:
        OUTLINED_FUNCTION_233_3();
        break;
      case 0x1ALL:
        OUTLINED_FUNCTION_118_14();
        break;
      case 0x1BLL:
        OUTLINED_FUNCTION_276_4();
        break;
      case 0x1CLL:
        OUTLINED_FUNCTION_229_0();
        break;
      case 0x1DLL:
      case 0x30:
        OUTLINED_FUNCTION_62_4();
        break;
      case 0x38:
        OUTLINED_FUNCTION_260_0(0x4D796C696144);
        break;
      default:
        return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
  }
}

void MomentsEventData.EventBundle.BundleSubType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_134_13();
    v5 = v3 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_132_10();
      v6 = v3 && v0 == 0xE600000000000000;
      if (v6 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_113_12(1768843588);
        v7 = v3 && v0 == 0xE600000000000000;
        if (v7 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_156_8(0x6970706F6853);
          v8 = v3 && v0 == 0xE800000000000000;
          if (v8 || (OUTLINED_FUNCTION_29_2() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            OUTLINED_FUNCTION_205_3();
            v9 = v3 && v0 == 0xE400000000000000;
            if (v9 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              OUTLINED_FUNCTION_38();
              v11 = v1 == 0xD000000000000011 && v10 == v0;
              if (v11 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                OUTLINED_FUNCTION_70_14();
                v12 = v3 && v0 == 0xE700000000000000;
                if (v12 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_38();
                  v14 = v1 == 0xD000000000000014 && v13 == v0;
                  if (v14 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    v16 = v1 == OUTLINED_FUNCTION_230_4() && v0 == v15;
                    if (v16 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_38();
                      v18 = v1 == 0xD000000000000015 && v17 == v0;
                      if (v18 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v20 = v1 == (OUTLINED_FUNCTION_266_3() & 0xFFFFFFFFFFFFLL | 0x5474000000000000) && v0 == v19;
                        if (v20 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_60();
                          v22 = v3 && v21 == v0;
                          if (v22 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_60();
                            v24 = v3 && v23 == v0;
                            if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_100_12();
                              v25 = v3 && v0 == 0xE700000000000000;
                              if (v25 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_79_0();
                                v27 = v3 && v26 == v0;
                                if (v27 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else
                                {
                                  v29 = v1 == (OUTLINED_FUNCTION_312_1() & 0xFFFFFFFFFFFFLL | 0x5474000000000000) && v0 == v28;
                                  if (v29 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                  {

                                    OUTLINED_FUNCTION_114_14();
                                  }

                                  else
                                  {
                                    v31 = v1 == OUTLINED_FUNCTION_273_2() && v0 == v30;
                                    if (v31 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                    {

                                      OUTLINED_FUNCTION_117_16();
                                    }

                                    else
                                    {
                                      v32 = v1 == 0x6F53646579616C50 && v0 == 0xEA0000000000676ELL;
                                      if (v32 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                      {

                                        OUTLINED_FUNCTION_121_10();
                                      }

                                      else
                                      {
                                        v34 = v1 == OUTLINED_FUNCTION_231_4() && v0 == v33;
                                        if (v34 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                        {

                                          OUTLINED_FUNCTION_126_11();
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_6_27();
                                          v36 = v3 && v35 == v0;
                                          if (v36 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                          {

                                            OUTLINED_FUNCTION_128_12();
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_38();
                                            v38 = v1 == 0xD000000000000018 && v37 == v0;
                                            if (v38 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                            {

                                              OUTLINED_FUNCTION_124_10();
                                            }

                                            else
                                            {
                                              v40 = v1 == OUTLINED_FUNCTION_233_3() && v0 == v39;
                                              if (v40 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                              {

                                                OUTLINED_FUNCTION_125_8();
                                              }

                                              else
                                              {
                                                OUTLINED_FUNCTION_38();
                                                v42 = v1 == 0xD000000000000017 && v41 == v0;
                                                if (v42 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                {

                                                  OUTLINED_FUNCTION_123_15();
                                                }

                                                else
                                                {
                                                  OUTLINED_FUNCTION_60();
                                                  v44 = v3 && v43 == v0;
                                                  if (v44 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                  {

                                                    OUTLINED_FUNCTION_127_10();
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_38();
                                                    v46 = v1 == 0xD000000000000024 && v45 == v0;
                                                    if (v46 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                    {

                                                      OUTLINED_FUNCTION_145_10();
                                                    }

                                                    else
                                                    {
                                                      OUTLINED_FUNCTION_38();
                                                      v48 = v1 == 0xD000000000000022 && v47 == v0;
                                                      if (v48 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                      {

                                                        OUTLINED_FUNCTION_158_5();
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_104_13();
                                                        v49 = v3 && v0 == 0xEA0000000000656DLL;
                                                        if (v49 || (OUTLINED_FUNCTION_59_20() & 1) != 0)
                                                        {

                                                          OUTLINED_FUNCTION_157_11();
                                                        }

                                                        else
                                                        {
                                                          v51 = v1 == OUTLINED_FUNCTION_276_4() && v0 == v50;
                                                          if (v51 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                          {

                                                            OUTLINED_FUNCTION_159_9();
                                                          }

                                                          else
                                                          {
                                                            v53 = v1 == OUTLINED_FUNCTION_229_0() && v0 == v52;
                                                            if (v53 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                            {

                                                              OUTLINED_FUNCTION_182_7();
                                                            }

                                                            else
                                                            {
                                                              OUTLINED_FUNCTION_207_0();
                                                              v55 = v3 && v0 == v54;
                                                              if (v55 || (OUTLINED_FUNCTION_62_4(), (OUTLINED_FUNCTION_0_9() & 1) != 0))
                                                              {

                                                                OUTLINED_FUNCTION_195_3();
                                                              }

                                                              else
                                                              {
                                                                OUTLINED_FUNCTION_43_6();
                                                                v57 = v3 && v56 == v0;
                                                                if (v57 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                {

                                                                  OUTLINED_FUNCTION_196_5();
                                                                }

                                                                else
                                                                {
                                                                  OUTLINED_FUNCTION_26_4();
                                                                  v59 = v3 && v58 == v0;
                                                                  if (v59 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                  {

                                                                    OUTLINED_FUNCTION_218_3();
                                                                  }

                                                                  else
                                                                  {
                                                                    OUTLINED_FUNCTION_38();
                                                                    v61 = v1 == 0xD000000000000016 && v60 == v0;
                                                                    if (v61 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                    {

                                                                      OUTLINED_FUNCTION_216_3();
                                                                    }

                                                                    else
                                                                    {
                                                                      OUTLINED_FUNCTION_6_27();
                                                                      v63 = v3 && v62 == v0;
                                                                      if (v63 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                      {

                                                                        OUTLINED_FUNCTION_219_3();
                                                                      }

                                                                      else
                                                                      {
                                                                        OUTLINED_FUNCTION_79_0();
                                                                        v65 = v3 && v64 == v0;
                                                                        if (v65 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                        {

                                                                          OUTLINED_FUNCTION_217_3();
                                                                        }

                                                                        else
                                                                        {
                                                                          OUTLINED_FUNCTION_26_4();
                                                                          v67 = v3 && v66 == v0;
                                                                          if (v67 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                          {

                                                                            OUTLINED_FUNCTION_220_4();
                                                                          }

                                                                          else
                                                                          {
                                                                            v68 = v1 == 0x6D654D6F746F6850 && v0 == 0xEE0074655079726FLL;
                                                                            if (v68 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                            {

                                                                              OUTLINED_FUNCTION_303_1();
                                                                            }

                                                                            else
                                                                            {
                                                                              OUTLINED_FUNCTION_38();
                                                                              v70 = v1 == 0xD000000000000013 && v69 == v0;
                                                                              if (v70 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                              {

                                                                                OUTLINED_FUNCTION_302_2();
                                                                              }

                                                                              else
                                                                              {
                                                                                OUTLINED_FUNCTION_6_27();
                                                                                v72 = v3 && v71 == v0;
                                                                                if (v72 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                {

                                                                                  v4 = 38;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v73 = v1 == 0x6D654D6F746F6850 && v0 == 0xEF7069725479726FLL;
                                                                                  if (v73 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                  {

                                                                                    v4 = 39;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    OUTLINED_FUNCTION_43_6();
                                                                                    v75 = v3 && v74 == v0;
                                                                                    if (v75 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                    {

                                                                                      v4 = 40;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      OUTLINED_FUNCTION_26_4();
                                                                                      v77 = v3 && v76 == v0;
                                                                                      if (v77 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                                      {

                                                                                        v4 = 41;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        OUTLINED_FUNCTION_38();
                                                                                        v79 = v1 == 0xD00000000000001BLL && v78 == v0;
                                                                                        if (v79 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                        {

                                                                                          v4 = 42;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          OUTLINED_FUNCTION_26_4();
                                                                                          v81 = v3 && v80 == v0;
                                                                                          if (v81 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                                          {

                                                                                            v4 = 43;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            OUTLINED_FUNCTION_6_27();
                                                                                            v83 = v3 && v82 == v0;
                                                                                            if (v83 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                            {

                                                                                              v4 = 44;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              OUTLINED_FUNCTION_26_4();
                                                                                              v85 = v3 && v84 == v0;
                                                                                              if (v85 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                                              {

                                                                                                v4 = 45;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                OUTLINED_FUNCTION_26_4();
                                                                                                v87 = v3 && v86 == v0;
                                                                                                if (v87 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                                                {

                                                                                                  v4 = 46;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  OUTLINED_FUNCTION_38();
                                                                                                  v89 = v1 == 0xD000000000000012 && v88 == v0;
                                                                                                  if (v89 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                  {

                                                                                                    v4 = 47;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_207_0();
                                                                                                    v91 = v3 && v0 == v90;
                                                                                                    if (v91 || (OUTLINED_FUNCTION_62_4(), (OUTLINED_FUNCTION_0_9() & 1) != 0))
                                                                                                    {

                                                                                                      v4 = 48;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      OUTLINED_FUNCTION_79_0();
                                                                                                      v93 = v3 && v92 == v0;
                                                                                                      if (v93 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                      {

                                                                                                        v4 = 49;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_38();
                                                                                                        v95 = v1 == 0xD000000000000013 && v94 == v0;
                                                                                                        if (v95 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                        {

                                                                                                          v4 = 50;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          OUTLINED_FUNCTION_26_4();
                                                                                                          v97 = v3 && v96 == v0;
                                                                                                          if (v97 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                                                          {

                                                                                                            v4 = 51;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                            v99 = v1 == 0xD000000000000010 && v98 == v0;
                                                                                                            if (v99 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                            {

                                                                                                              v4 = 52;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              OUTLINED_FUNCTION_38();
                                                                                                              v101 = v1 == 0xD00000000000001CLL && v100 == v0;
                                                                                                              if (v101 || (OUTLINED_FUNCTION_68_21() & 1) != 0)
                                                                                                              {

                                                                                                                v4 = 53;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_38();
                                                                                                                v103 = v1 == 0xD00000000000001DLL && v102 == v0;
                                                                                                                if (v103 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                {

                                                                                                                  v4 = 54;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  OUTLINED_FUNCTION_6_27();
                                                                                                                  v105 = v3 && v104 == v0;
                                                                                                                  if (v105 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                                                  {

                                                                                                                    v4 = 55;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    v106 = v1 == 0x6F6F4D796C696144 && v0 == 0xE900000000000064;
                                                                                                                    if (v106 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                                                                                                                    {

                                                                                                                      v4 = 56;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      OUTLINED_FUNCTION_38();
                                                                                                                      v108 = v1 == 0xD000000000000010 && v107 == v0;
                                                                                                                      if (v108 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                      {

                                                                                                                        v4 = 57;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_43_6();
                                                                                                                        v110 = v3 && v109 == v0;
                                                                                                                        if (v110 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                        {

                                                                                                                          v4 = 58;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          OUTLINED_FUNCTION_38();
                                                                                                                          v112 = v1 == 0xD000000000000019 && v111 == v0;
                                                                                                                          if (v112 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                          {

                                                                                                                            v4 = 59;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_96_2();
                                                                                                                            v114 = v3 && v113 == v0;
                                                                                                                            if (v114 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                            {

                                                                                                                              v4 = 60;
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              OUTLINED_FUNCTION_38();
                                                                                                                              v116 = v1 == 0xD00000000000001BLL && v115 == v0;
                                                                                                                              if (v116 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                              {

                                                                                                                                v4 = 61;
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_6_27();
                                                                                                                                v118 = v3 && v117 == v0;
                                                                                                                                if (v118 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                                                                {

                                                                                                                                  v4 = 62;
                                                                                                                                }

                                                                                                                                else
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_6_27();
                                                                                                                                  v120 = v3 && v119 == v0;
                                                                                                                                  if (v120 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                                                                  {

                                                                                                                                    v4 = 63;
                                                                                                                                  }

                                                                                                                                  else
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_43_6();
                                                                                                                                    v122 = v3 && v121 == v0;
                                                                                                                                    if (v122 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                    {

                                                                                                                                      v4 = 64;
                                                                                                                                    }

                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                      OUTLINED_FUNCTION_6_27();
                                                                                                                                      v124 = v3 && v123 == v0;
                                                                                                                                      if (v124 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                                                                      {

                                                                                                                                        v4 = 65;
                                                                                                                                      }

                                                                                                                                      else
                                                                                                                                      {
                                                                                                                                        OUTLINED_FUNCTION_26_4();
                                                                                                                                        v126 = v3 && v125 == v0;
                                                                                                                                        if (v126 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                        {

                                                                                                                                          v4 = 66;
                                                                                                                                        }

                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                          OUTLINED_FUNCTION_79_0();
                                                                                                                                          v128 = v3 && v127 == v0;
                                                                                                                                          if (v128 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                          {

                                                                                                                                            v4 = 67;
                                                                                                                                          }

                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                                            v130 = v1 == 0xD000000000000016 && v129 == v0;
                                                                                                                                            if (v130 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                            {

                                                                                                                                              v4 = 68;
                                                                                                                                            }

                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                              OUTLINED_FUNCTION_60();
                                                                                                                                              v132 = v3 && v131 == v0;
                                                                                                                                              if (v132 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                              {

                                                                                                                                                v4 = 69;
                                                                                                                                              }

                                                                                                                                              else
                                                                                                                                              {
                                                                                                                                                OUTLINED_FUNCTION_79_0();
                                                                                                                                                v134 = v3 && v133 == v0;
                                                                                                                                                if (v134 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                {

                                                                                                                                                  v4 = 70;
                                                                                                                                                }

                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                  OUTLINED_FUNCTION_6_27();
                                                                                                                                                  v136 = v3 && v135 == v0;
                                                                                                                                                  if (v136 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                                                                                  {

                                                                                                                                                    v4 = 71;
                                                                                                                                                  }

                                                                                                                                                  else
                                                                                                                                                  {
                                                                                                                                                    OUTLINED_FUNCTION_38();
                                                                                                                                                    v138 = v1 == 0xD00000000000001BLL && v137 == v0;
                                                                                                                                                    if (v138 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                    {

                                                                                                                                                      v4 = 72;
                                                                                                                                                    }

                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                      OUTLINED_FUNCTION_6_27();
                                                                                                                                                      v140 = v3 && v139 == v0;
                                                                                                                                                      if (v140 || (OUTLINED_FUNCTION_25_7() & 1) != 0)
                                                                                                                                                      {

                                                                                                                                                        v4 = 73;
                                                                                                                                                      }

                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                        OUTLINED_FUNCTION_26_4();
                                                                                                                                                        v142 = v3 && v141 == v0;
                                                                                                                                                        if (v142 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                        {

                                                                                                                                                          v4 = 74;
                                                                                                                                                        }

                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                          OUTLINED_FUNCTION_79_0();
                                                                                                                                                          v144 = v3 && v143 == v0;
                                                                                                                                                          if (v144 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                                                                                                                                          {

                                                                                                                                                            v4 = 75;
                                                                                                                                                          }

                                                                                                                                                          else
                                                                                                                                                          {
                                                                                                                                                            OUTLINED_FUNCTION_38();
                                                                                                                                                            if (v1 == 0xD00000000000001ELL && v145 == v0)
                                                                                                                                                            {

                                                                                                                                                              v4 = 76;
                                                                                                                                                            }

                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                              OUTLINED_FUNCTION_0_9();
                                                                                                                                                              OUTLINED_FUNCTION_89();
                                                                                                                                                              v4 = 76;
                                                                                                                                                              if ((v1 & 1) == 0)
                                                                                                                                                              {
                                                                                                                                                                v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

void MomentsEventData.EventBundle.SummarizationGranularity.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t MomentsEventData.EventBundle.SummarizationGranularity.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t MomentsEventData.EventBundle.SummarizationGranularity.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    result = 0x657372616F43;
  }

  else
  {
    result = 1701734726;
  }

  *v0;
  return result;
}

void MomentsEventData.EventBundle.SummarizationGranularity.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    v5 = v1 == 1701734726 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_19_8() & 1) != 0)
    {

      v4 = 0;
    }

    else if (v1 == 0x657372616F43 && v0 == 0xE600000000000000)
    {

      v4 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_89();
      v4 = v1 & 1;
    }
  }

  OUTLINED_FUNCTION_19_5(v4);
}

uint64_t MomentsEventData.EventBundle.Resource.Type.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    case 6:
      v3 = 6;
      break;
    case 7:
      v3 = 7;
      break;
    case 8:
      v3 = 8;
      break;
    case 9:
      v3 = 9;
      break;
    case 10:
      v3 = 10;
      break;
    case 11:
      v3 = 11;
      break;
    case 12:
      v3 = 12;
      break;
    case 13:
      v3 = 13;
      break;
    case 14:
      v3 = 14;
      break;
    case 15:
      v3 = 15;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static MomentsEventData.EventBundle.Resource.Type.allCases.getter()
{
  v0 = OUTLINED_FUNCTION_95_0();
  v6 = sub_1934B0FCC(v0, v1, v2, v3, v4, v5);
  v7 = OUTLINED_FUNCTION_16_0(v6);
  if (!(!v13 & v12))
  {
    v99 = OUTLINED_FUNCTION_39(v11);
    v103 = OUTLINED_FUNCTION_84_2(v99, v100, v101, v102, &qword_1EAE42D00, &qword_193996FD0);
    v7 = OUTLINED_FUNCTION_17_2(v103);
  }

  OUTLINED_FUNCTION_13_6(v7, v8, v9, v10);
  if (v19 != v20)
  {
    v104 = OUTLINED_FUNCTION_39(v18);
    v108 = OUTLINED_FUNCTION_85(v104, v105, v106, v107, &qword_1EAE42D00, &qword_193996FD0);
    v14 = OUTLINED_FUNCTION_17_2(v108);
  }

  OUTLINED_FUNCTION_8_5(v14, v15, v16, v17);
  if (v19 != v20)
  {
    OUTLINED_FUNCTION_39(v25);
    OUTLINED_FUNCTION_57();
    v21 = sub_1934B0FCC(v109, v110, v111, v112, v113, v114);
    v24 = v21;
  }

  OUTLINED_FUNCTION_9_7(v21, v22, v23, v24);
  if (!(v19 ^ v20 | v13))
  {
    v115 = OUTLINED_FUNCTION_39(v30);
    v26 = OUTLINED_FUNCTION_84_2(v115, v116, v117, v118, &qword_1EAE42D00, &qword_193996FD0);
    v29 = v26;
  }

  OUTLINED_FUNCTION_3_7(v26, v27, v28, v29);
  if (!(v19 ^ v20 | v13))
  {
    v119 = OUTLINED_FUNCTION_39(v35);
    v31 = OUTLINED_FUNCTION_85(v119, v120, v121, v122, &qword_1EAE42D00, &qword_193996FD0);
    v34 = v31;
  }

  OUTLINED_FUNCTION_5_11(v31, v32, v33, v34);
  if (!(v19 ^ v20 | v13))
  {
    v123 = OUTLINED_FUNCTION_39(v40);
    v36 = OUTLINED_FUNCTION_84_2(v123, v124, v125, v126, &qword_1EAE42D00, &qword_193996FD0);
    v39 = v36;
  }

  OUTLINED_FUNCTION_7_3(v36, v37, v38, v39);
  if (!(v19 ^ v20 | v13))
  {
    v127 = OUTLINED_FUNCTION_39(v45);
    v41 = OUTLINED_FUNCTION_85(v127, v128, v129, v130, &qword_1EAE42D00, &qword_193996FD0);
    v44 = v41;
  }

  OUTLINED_FUNCTION_4_8(v41, v42, v43, v44);
  if (!(v19 ^ v20 | v13))
  {
    v131 = OUTLINED_FUNCTION_39(v50);
    v46 = OUTLINED_FUNCTION_84_2(v131, v132, v133, v134, &qword_1EAE42D00, &qword_193996FD0);
    v49 = v46;
  }

  OUTLINED_FUNCTION_6_14(v46, v47, v48, v49);
  if (!(v19 ^ v20 | v13))
  {
    v135 = OUTLINED_FUNCTION_39(v55);
    v51 = OUTLINED_FUNCTION_85(v135, v136, v137, v138, &qword_1EAE42D00, &qword_193996FD0);
    v54 = v51;
  }

  OUTLINED_FUNCTION_11_7(v51, v52, v53, v54);
  if (!(v19 ^ v20 | v13))
  {
    v139 = OUTLINED_FUNCTION_39(v60);
    v56 = OUTLINED_FUNCTION_84_2(v139, v140, v141, v142, &qword_1EAE42D00, &qword_193996FD0);
    v59 = v56;
  }

  OUTLINED_FUNCTION_14_56(v56, v57, v58, v59);
  if (!(v19 ^ v20 | v13))
  {
    v143 = OUTLINED_FUNCTION_39(v65);
    v61 = OUTLINED_FUNCTION_85(v143, v144, v145, v146, &qword_1EAE42D00, &qword_193996FD0);
    v64 = v61;
  }

  OUTLINED_FUNCTION_11_52(v61, v62, v63, v64);
  if (!(v19 ^ v20 | v13))
  {
    v147 = OUTLINED_FUNCTION_39(v70);
    v66 = OUTLINED_FUNCTION_84_2(v147, v148, v149, v150, &qword_1EAE42D00, &qword_193996FD0);
    v69 = v66;
  }

  OUTLINED_FUNCTION_13_56(v66, v67, v68, v69);
  if (!(v19 ^ v20 | v13))
  {
    v151 = OUTLINED_FUNCTION_39(v75);
    v71 = OUTLINED_FUNCTION_85(v151, v152, v153, v154, &qword_1EAE42D00, &qword_193996FD0);
    v74 = v71;
  }

  OUTLINED_FUNCTION_10_64(v71, v72, v73, v74);
  if (!(v19 ^ v20 | v13))
  {
    v155 = OUTLINED_FUNCTION_39(v80);
    v76 = OUTLINED_FUNCTION_84_2(v155, v156, v157, v158, &qword_1EAE42D00, &qword_193996FD0);
    v79 = v76;
  }

  OUTLINED_FUNCTION_15_54(v76, v77, v78, v79);
  if (!(v19 ^ v20 | v13))
  {
    v159 = OUTLINED_FUNCTION_39(v85);
    v81 = OUTLINED_FUNCTION_85(v159, v160, v161, v162, &qword_1EAE42D00, &qword_193996FD0);
    v84 = v81;
  }

  OUTLINED_FUNCTION_12_53(v81, v82, v83, v84);
  if (!(v19 ^ v20 | v13))
  {
    v163 = OUTLINED_FUNCTION_39(v90);
    v86 = OUTLINED_FUNCTION_84_2(v163, v164, v165, v166, &qword_1EAE42D00, &qword_193996FD0);
    v89 = v86;
  }

  OUTLINED_FUNCTION_16_41(v86, v87, v88, v89);
  if (!(v19 ^ v20 | v13))
  {
    v167 = OUTLINED_FUNCTION_39(v95);
    v91 = OUTLINED_FUNCTION_85(v167, v168, v169, v170, &qword_1EAE42D00, &qword_193996FD0);
    v94 = v91;
  }

  OUTLINED_FUNCTION_47_5(v91, v92, v93, v94);
  return OUTLINED_FUNCTION_89_3(v96, v97);
}

uint64_t MomentsEventData.EventBundle.Resource.Type.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x65756C6156;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_262_1(0x416F746F6850);
      break;
    case 2:
      result = OUTLINED_FUNCTION_98_17();
      break;
    case 3:
      result = 0x6B6E694C626557;
      break;
    case 4:
      result = OUTLINED_FUNCTION_268_2();
      break;
    case 5:
      result = 0x6D65744970614DLL;
      break;
    case 6:
      result = 7368769;
      break;
    case 7:
      result = OUTLINED_FUNCTION_188_5();
      break;
    case 8:
      result = OUTLINED_FUNCTION_62_4();
      break;
    case 9:
      result = OUTLINED_FUNCTION_111_14(0x756F6B726F57);
      break;
    case 0xALL:
      result = 0x6E6F73726550;
      break;
    case 0xBLL:
      result = OUTLINED_FUNCTION_115_12(1667329104);
      break;
    case 0xCLL:
      result = OUTLINED_FUNCTION_82_16();
      break;
    case 0xDLL:
      result = OUTLINED_FUNCTION_166_7(0x656874616557);
      break;
    case 0xELL:
      result = OUTLINED_FUNCTION_42_30();
      break;
    case 0xFLL:
      result = OUTLINED_FUNCTION_235_3();
      break;
    default:
      return result;
  }

  return result;
}

void MomentsEventData.EventBundle.Resource.Type.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v3 = v3 && v2 == 0xE700000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_116_15(1970037078);
    v5 = v3 && v0 == 0xE500000000000000;
    if (v5 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
    {

      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_310_1(0x416F746F6850);
      v7 = v3 && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
      {

        v4 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_140_11();
        v8 = v3 && v0 == 0xE500000000000000;
        if (v8 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          v9 = v1 == 0x6B6E694C626557 && v0 == 0xE700000000000000;
          if (v9 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
          {

            OUTLINED_FUNCTION_59();
          }

          else
          {
            v11 = v1 == OUTLINED_FUNCTION_268_2() && v0 == v10;
            if (v11 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
            {

              OUTLINED_FUNCTION_69_2();
            }

            else
            {
              v12 = v1 == 0x6D65744970614DLL && v0 == 0xE700000000000000;
              if (v12 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
              {

                OUTLINED_FUNCTION_83();
              }

              else
              {
                v13 = v1 == 7368769 && v0 == 0xE300000000000000;
                if (v13 || (OUTLINED_FUNCTION_63_16() & 1) != 0)
                {

                  OUTLINED_FUNCTION_90();
                }

                else
                {
                  OUTLINED_FUNCTION_295_3();
                  v14 = v3 && v0 == 0xE500000000000000;
                  if (v14 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                  {

                    OUTLINED_FUNCTION_91_3();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_79_16();
                    v16 = v3 && v0 == v15;
                    if (v16 || (OUTLINED_FUNCTION_30_22() & 1) != 0)
                    {

                      OUTLINED_FUNCTION_94_3();
                    }

                    else
                    {
                      OUTLINED_FUNCTION_70_14();
                      v17 = v3 && v0 == 0xE700000000000000;
                      if (v17 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                      {

                        OUTLINED_FUNCTION_103_1();
                      }

                      else
                      {
                        v18 = v1 == 0x6E6F73726550 && v0 == 0xE600000000000000;
                        if (v18 || (OUTLINED_FUNCTION_21_38() & 1) != 0)
                        {

                          OUTLINED_FUNCTION_155_0();
                        }

                        else
                        {
                          OUTLINED_FUNCTION_116_15(1667329104);
                          v19 = v3 && v0 == 0xE500000000000000;
                          if (v19 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
                          {

                            OUTLINED_FUNCTION_153_0();
                          }

                          else
                          {
                            v21 = v1 == OUTLINED_FUNCTION_82_16() && v0 == v20;
                            if (v21 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                            {

                              OUTLINED_FUNCTION_157();
                            }

                            else
                            {
                              OUTLINED_FUNCTION_181_8(0x656874616557);
                              v22 = v3 && v0 == 0xE700000000000000;
                              if (v22 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
                              {

                                OUTLINED_FUNCTION_156_0();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_47_28();
                                v24 = v3 && v0 == v23;
                                if (v24 || (OUTLINED_FUNCTION_0_9() & 1) != 0)
                                {

                                  OUTLINED_FUNCTION_154_2();
                                }

                                else if (v1 == OUTLINED_FUNCTION_235_3() && v0 == v25)
                                {

                                  OUTLINED_FUNCTION_114_14();
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_0_9();
                                  OUTLINED_FUNCTION_89();
                                  v4 = 15;
                                  if ((v1 & 1) == 0)
                                  {
                                    v4 = 0;
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

  OUTLINED_FUNCTION_12_1(v4);
}

uint64_t MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6F65646956;
  if (*v0 != 1)
  {
    v1 = 0x6F69647541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D49;
  }
}

void MomentsEventData.EventBundle.Resource.PhotoAssetMediaType.init(_:)()
{
  OUTLINED_FUNCTION_0_15();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2 || (OUTLINED_FUNCTION_22_7() & 1) != 0)
  {

    OUTLINED_FUNCTION_56();
  }

  else
  {
    OUTLINED_FUNCTION_116_15(1734438217);
    v4 = v2 && v0 == 0xE500000000000000;
    if (v4 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
    {

      v3 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_224_2(1701079382);
      v5 = v2 && v0 == 0xE500000000000000;
      if (v5 || (OUTLINED_FUNCTION_15_14() & 1) != 0)
      {

        v3 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_224_2(1768191297);
        if (v2 && v0 == 0xE500000000000000)
        {

          OUTLINED_FUNCTION_55_0();
        }

        else
        {
          OUTLINED_FUNCTION_15_14();
          OUTLINED_FUNCTION_89();
          OUTLINED_FUNCTION_152_0();
          if (v2)
          {
            v3 = 0;
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v3);
}

unint64_t sub_1937A39A8()
{
  result = qword_1EAE42B60;
  if (!qword_1EAE42B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE42B60);
  }

  return result;
}