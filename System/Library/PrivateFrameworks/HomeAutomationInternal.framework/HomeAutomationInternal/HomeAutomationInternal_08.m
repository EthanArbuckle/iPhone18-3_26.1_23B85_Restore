uint64_t sub_2529B5794(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27F53F230 != -1)
  {
    swift_once();
  }

  v2 = off_27F540EA0;
  if (*(off_27F540EA0 + 2))
  {
    v3 = sub_252A45658(v1);
    if (v4)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E6ED10);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000001DLL, 0x8000000252E6ED50, 478);

  return 0;
}

void sub_2529B5920(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, char a5)
{
  v9 = a1;
  v205 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_143;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v10)
  {
    v11 = 0;
    v194 = v9 & 0xC000000000000001;
    v179 = (v9 + 32);
    v180 = v9 & 0xFFFFFFFFFFFFFF8;
    v192 = "Mapped deviceResults to: ";
    v177 = v10;
    v178 = MEMORY[0x277D84F90];
    v171 = v9;
    while (1)
    {
      if (v194)
      {
        v12 = MEMORY[0x2530ADF00](v11, v9);
        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v11 >= *(v180 + 16))
        {
          __break(1u);
          goto LABEL_140;
        }

        v12 = *&v179[8 * v11];

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }
      }

      v14 = qword_27F544468;
      v15 = *(v12 + qword_27F544468);

      sub_252E36744();

      v8 = v204;
      if ((~v204 & 0xFF02) == 0)
      {
        goto LABEL_16;
      }

      v5 = v201;
      v19 = v202;
      v7 = v203;
      v20 = (v204 >> 7) & 2 | (v204 >> 1) & 1;
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          if (v201)
          {
LABEL_40:
            sub_2529B79F8(v200, v201, v202, v203, v204);
LABEL_16:
            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v16 = sub_252E36AD4();
            v5 = __swift_project_value_buffer(v16, qword_27F544EE0);
            v196 = 0;
            v197 = 0xE000000000000000;
            sub_252E379F4();

            v198 = 0xD000000000000019;
            v199 = 0x8000000252E6EBD0;
            v17 = *(v12 + v14);

            sub_252E36744();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EB0, &qword_252E3F4E8);
            v18 = sub_252E36F94();
            MEMORY[0x2530AD570](v18);

            v6 = v199;
            sub_252CC4050(v198, v199, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 185);

LABEL_19:

            goto LABEL_8;
          }

          v114 = v200;
          v184 = v203;
          v189 = v201;
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v115 = sub_252E36AD4();
          __swift_project_value_buffer(v115, qword_27F544EE0);
          v196 = 0;
          v197 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6EC30);
          v7 = v114;
          v116 = sub_252E37D94();
          MEMORY[0x2530AD570](v116);

          sub_252CC4050(v196, v197, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 177);

          v117 = [a2 taskType];
          v118 = [a2 attribute];
          v119 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v120 = sub_252E36F04();
          v121 = [v119 initWithIdentifier:0 displayString:v120];

          v122 = v121;
          [v122 setTaskType_];
          [v122 setAttribute_];
          [v122 setValue_];

          type metadata accessor for HomeUserTaskResponse.Builder();
          swift_allocObject();
          v123 = *(*HomeUserTaskResponse.Builder.init()() + 160);
          v5 = v122;
          v124 = v123(v122);

          v125 = (*(*v124 + 152))(7);

          v6 = (*(*v125 + 176))(v126);

          MEMORY[0x2530AD700](v127);
          if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v129 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v111 = v7;
          v112 = v189;
          v113 = v19;
          goto LABEL_91;
        }

        if (v200 == 10)
        {
          goto LABEL_40;
        }

        v23 = v200;
        v186 = v201;
        v181 = v202;
        v174 = v204;
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v24 = sub_252E36AD4();
        __swift_project_value_buffer(v24, qword_27F544EE0);
        v196 = 0;
        v197 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E6EC70);
        v25 = v23;
        sub_252E37AE4();
        sub_252CC4050(v196, v197, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 170);

        LOBYTE(v196) = v23;
        v26 = sub_2529B5794(&v196);
        if (v27)
        {
          v5 = 7;
        }

        else
        {
          v5 = v26;
        }

        type metadata accessor for HomeUserTaskResponse.Builder();
        inited = swift_initStackObject();
        *(inited + 16) = 1;
        v29 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v30 = sub_252E36F04();
        v8 = &off_279711000;
        v31 = [v29 initWithIdentifier:0 displayString:v30];

        v32 = v31;
        [v32 setTaskType_];
        [v32 setAttribute_];
        [v32 setValue_];

        *(inited + 24) = a2;
        v33 = a2;

        *(inited + 16) = v5;
        v34 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v35 = v33;
        v36 = sub_252E36F04();
        v37 = [v34 initWithIdentifier:0 displayString:v36];

        v6 = v37;
        [v6 setTaskOutcome_];
        [v6 setUserTask_];

        MEMORY[0x2530AD700]();
        if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        sub_2529B79F8(v25, v186, v181, v7, v174);
      }

      else
      {
        if (!v20)
        {
          v206[0] = v200;
          v206[1] = v201;
          v206[2] = v202;
          v206[3] = v203;
          v207 = v204;
          v21 = *(v12 + qword_27F544460);
          v6 = v200;

          sub_252E36744();

          if (v196 == 60)
          {
            v22 = v6;
          }

          else
          {
            v173 = v6;
            v170 = v196;
            v55 = sub_252BF8FB8(v206, v196, a3);
            if (v55)
            {
              v56 = v55[2];
              if (!v56)
              {

                sub_2529B79F8(v6, v5, v19, v7, v8);

                v9 = v171;
                goto LABEL_8;
              }

              v185 = v7;
              v188 = v5;
              v183 = v19;
              v176 = v8;
              v168 = v55;
              v8 = (v55 + 5);
              v7 = v170;
              while (2)
              {
                v57 = *(v8 - 8);
                v58 = *v8;
                v59 = a4;
                if (a5)
                {
                  v59 = [a2 taskType];
                  if ((v59 & 0xFFFFFFFFFFFFFFFELL) == 4)
                  {
                    if (qword_27F53F3C0 != -1)
                    {
                      swift_once();
                    }

                    if (*(off_27F543EA8 + 2) && (, sub_252A456C4(v7), v61 = v60, , (v61 & 1) != 0))
                    {
                      v59 = 5;
                    }

                    else
                    {
                      if (qword_27F53F3C8 != -1)
                      {
                        swift_once();
                      }

                      if (*(off_27F543EB0 + 2))
                      {

                        sub_252A456C4(v7);
                        v63 = v62;

                        if (v63)
                        {
                          v59 = 4;
                        }
                      }
                    }
                  }
                }

                v64 = type metadata accessor for HomeUserTask();
                v65 = objc_allocWithZone(v64);
                v5 = v58;
                v66 = sub_252E36F04();
                v67 = [v65 initWithIdentifier:0 displayString:v66];

                v68 = v67;
                [v68 setTaskType_];
                [v68 setAttribute_];
                [v68 setValue_];

                if (v57 == 67)
                {
                  v69 = [v5 cleaningJob];
                  if (v69)
                  {
                    v70 = v69;
                    v71 = [a2 value];
                    if (v71)
                    {
                      v72 = v71;
                      v73 = [v71 cleaningJob];

                      if (v73)
                      {
                        v74 = [v73 targetAreas];

                        if (v74)
                        {
                          type metadata accessor for HomeAttributeTargetArea();
                          v75 = sub_252E37264();

                          if (v75 >> 62)
                          {
                            v76 = sub_252E378C4();
                          }

                          else
                          {
                            v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          if (v76)
                          {
                            v7 = v170;
                            goto LABEL_70;
                          }

                          v77 = [v70 targetAreas];
                          v7 = v170;
                          if (v77)
                          {
                            v78 = v77;
                            v79 = sub_252E37264();

                            if (!(v79 >> 62))
                            {
                              goto LABEL_67;
                            }

LABEL_76:
                            v80 = sub_252E378C4();
                          }

                          else
                          {
                            v79 = MEMORY[0x277D84F90];
                            if (MEMORY[0x277D84F90] >> 62)
                            {
                              goto LABEL_76;
                            }

LABEL_67:
                            v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          if (v80)
                          {
                            v81 = v70;
                            [v81 setTargetAreas_];
                            v82 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
                            v83 = sub_252E36F04();
                            v84 = [v82 initWithIdentifier:0 displayString:v83];

                            v70 = v84;
                            [v70 setType_];
                            [v70 setCleaningJob_];

                            [v68 setValue_];
                          }
                        }
                      }
                    }

LABEL_70:
                  }
                }

                v85 = objc_allocWithZone(v64);
                v86 = sub_252E36F04();
                v87 = [v85 initWithIdentifier:0 displayString:v86];

                v88 = v87;
                [v88 setTaskType_];
                [v88 setAttribute_];
                [v88 setValue_];

                v89 = v68;
                v90 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
                v6 = v89;
                v91 = sub_252E36F04();
                v92 = [v90 initWithIdentifier:0 displayString:v91];

                v93 = v92;
                [v93 setTaskOutcome_];
                [v93 setUserTask_];

                MEMORY[0x2530AD700]();
                if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v94 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_252E372A4();
                }

                sub_252E372D4();

                v8 += 16;
                if (!--v56)
                {
                  v178 = v205;

                  sub_2529B79F8(v173, v188, v183, v185, v176);

                  goto LABEL_92;
                }

                continue;
              }
            }

            v22 = v6;
          }

          sub_2529B79F8(v22, v5, v19, v7, v8);
          goto LABEL_19;
        }

        v182 = v202;
        v184 = v203;
        v187 = v201;
        if (v200 != 23)
        {
          v95 = v200;
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v96 = sub_252E36AD4();
          __swift_project_value_buffer(v96, qword_27F544EE0);
          v196 = 0;
          v197 = 0xE000000000000000;
          MEMORY[0x2530AD570](0x6F72726520746F47, 0xEA00000000002072);
          v7 = v95;
          sub_252E37AE4();
          sub_252CC4050(v196, v197, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 161);

          v97 = [a2 taskType];
          v98 = [a2 attribute];
          v99 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v100 = sub_252E36F04();
          v101 = [v99 initWithIdentifier:0 displayString:v100];

          v102 = v101;
          [v102 setTaskType_];
          [v102 setAttribute_];
          [v102 setValue_];

          LOBYTE(v196) = v7;
          v103 = sub_2529B2F04(&v196);
          if (v104)
          {
            v105 = 7;
          }

          else
          {
            v105 = v103;
          }

          type metadata accessor for HomeUserTaskResponse.Builder();
          swift_allocObject();
          v106 = *(*HomeUserTaskResponse.Builder.init()() + 160);
          v5 = v102;
          v107 = v106(v102);

          v108 = (*(*v107 + 152))(v105);

          v6 = (*(*v108 + 176))(v109);

          MEMORY[0x2530AD700](v110);
          if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v128 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v111 = v7;
          v112 = v187;
          v113 = v182;
LABEL_91:
          sub_2529B79F8(v111, v112, v113, v184, v8);

          v178 = v205;
LABEL_92:
          v9 = v171;
          goto LABEL_7;
        }

        v172 = v200;
        v175 = v204;
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v38 = sub_252E36AD4();
        __swift_project_value_buffer(v38, qword_27F544EE0);
        sub_252CC4050(0xD000000000000012, 0x8000000252E6EC90, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 181);
        v39 = [a2 taskType];
        v40 = [a2 attribute];
        v41 = type metadata accessor for HomeUserTask();
        v42 = objc_allocWithZone(v41);
        v43 = sub_252E36F04();
        v8 = &off_279711000;
        v44 = [v42 initWithIdentifier:0 displayString:v43];

        v45 = v44;
        [v45 setTaskType_];
        v7 = &off_279711000;
        [v45 setAttribute_];
        [v45 setValue_];

        type metadata accessor for HomeUserTaskResponse.Builder();
        v5 = swift_initStackObject();
        *(v5 + 16) = 1;
        v46 = objc_allocWithZone(v41);
        v47 = sub_252E36F04();
        v48 = [v46 initWithIdentifier:0 displayString:v47];

        v49 = v48;
        [v49 setTaskType_];
        [v49 setAttribute_];
        [v49 setValue_];

        *(v5 + 24) = v45;
        v50 = v45;

        *(v5 + 16) = 7;
        v51 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v6 = v50;
        v52 = sub_252E36F04();
        v53 = [v51 initWithIdentifier:0 displayString:v52];

        v54 = v53;
        [v54 setTaskOutcome_];
        [v54 setUserTask_];

        MEMORY[0x2530AD700]();
        if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        sub_2529B79F8(v172, v187, v182, v184, v175);
      }

      v178 = v205;
LABEL_7:
      v10 = v177;
LABEL_8:
      if (v11 == v10)
      {
        goto LABEL_97;
      }
    }
  }

  v178 = MEMORY[0x277D84F90];
LABEL_97:
  if ([a2 taskType] != 4)
  {
    return;
  }

  v11 = v178;
  if ([a2 attribute] != 5)
  {
    return;
  }

  v5 = v178 >> 62;
  if (v178 >> 62)
  {
    v130 = sub_252E378C4();
    if (!v130)
    {
      return;
    }
  }

  else
  {
    v130 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v130)
    {
      return;
    }
  }

  v194 = v178 >> 62;
  v6 = 0;
  v8 = v178 & 0xC000000000000001;
  v12 = v178 & 0xFFFFFFFFFFFFFF8;
  v7 = &off_279711000;
  while (1)
  {
    if (v8)
    {
      v131 = MEMORY[0x2530ADF00](v6, v178);
    }

    else
    {
      if (v6 >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_142;
      }

      v131 = *&v178[8 * v6 + 32];
    }

    v5 = v131;
    v132 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v10 = sub_252E378C4();
      goto LABEL_3;
    }

    v133 = [v131 userTask];
    if (v133)
    {
      v10 = v133;
      v9 = [v133 attribute];

      if (v9 == 5)
      {
        break;
      }
    }

    ++v6;
    if (v132 == v130)
    {
      return;
    }
  }

  v134 = [v5 userTask];
  if (!v134 || (v135 = v134, v136 = [v134 value], v135, !v136) || (v137 = objc_msgSend(v136, sel_stringValue), v136, !v137))
  {

    return;
  }

  v192 = sub_252E36F34();
  a2 = v138;

  if (!v194)
  {
    v139 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_120;
  }

LABEL_119:
  v139 = sub_252E378C4();
LABEL_120:
  if (!v139)
  {
LABEL_138:

    return;
  }

  v140 = 0;
  while (2)
  {
    if (v8)
    {
      v141 = MEMORY[0x2530ADF00](v140, v11);
    }

    else
    {
      if (v140 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_169;
      }

      v141 = *&v11[8 * v140 + 32];
    }

    v6 = v141;
    v142 = v140 + 1;
    if (__OFADD__(v140, 1))
    {
      __break(1u);
      goto LABEL_165;
    }

    v143 = [v141 *(v7 + 1712)];
    if (!v143 || (v10 = v7, v144 = v143, v145 = [v143 attribute], v144, v7 = v10, v146 = v145 == 2, v11 = v178, !v146))
    {

      ++v140;
      if (v142 == v139)
      {
        goto LABEL_138;
      }

      continue;
    }

    break;
  }

  v147 = [v6 v10 + 198];
  if (!v147)
  {
    goto LABEL_140;
  }

  v148 = &off_279711000;
  v149 = v147;
  v150 = [v147 value];

  if (!v150 || (v151 = [v150 type], v150, v151 != 4) || (v152 = objc_msgSend(v6, v10 + 198)) == 0 || (v153 = v152, v154 = objc_msgSend(v152, sel_value), v153, !v154))
  {
LABEL_140:

    return;
  }

  [v154 integerValue];

  v200 = MEMORY[0x277D84F90];
  if (v194)
  {
    v155 = sub_252E378C4();
  }

  else
  {
    v155 = *(v12 + 16);
  }

  if (!v155)
  {
LABEL_157:

    sub_252C5C088(v192, a2);
    v164 = v163;
    v165 = [v5 v10 + 198];
    if (!v165)
    {
      goto LABEL_167;
    }

    v166 = v165;
    v10 = [v165 (v148 + 376)];

    if (!v10)
    {
      goto LABEL_167;
    }

    if (v164)
    {
      v167 = 0;
LABEL_166:
      [v10 setStringValue_];

LABEL_167:
      return;
    }

LABEL_165:
    v200 = 0;
    v201 = 0xE000000000000000;
    MEMORY[0x2530AD570](977425224, 0xE400000000000000);
    sub_252E37374();
    MEMORY[0x2530AD570](44, 0xE100000000000000);
    sub_252E37374();
    MEMORY[0x2530AD570](44, 0xE100000000000000);
    sub_252E37374();
    MEMORY[0x2530AD570](59, 0xE100000000000000);
    v167 = sub_252E36F04();

    goto LABEL_166;
  }

  v156 = 0;
  while (1)
  {
    if (v8)
    {
      v158 = MEMORY[0x2530ADF00](v156, v178);
    }

    else
    {
      if (v156 >= *(v12 + 16))
      {
        goto LABEL_170;
      }

      v158 = *&v178[8 * v156 + 32];
    }

    v159 = v156 + 1;
    if (__OFADD__(v156, 1))
    {
      break;
    }

    v195 = v158;
    v160 = [v158 v10 + 198];
    if (v160 && (v161 = v160, v162 = [v160 attribute], v161, v162 == 2))
    {
    }

    else
    {
      sub_252E37A94();
      v157 = *(v200 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    ++v156;
    v148 = 0x1FAF97000;
    if (v159 == v155)
    {
      goto LABEL_157;
    }
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

unint64_t sub_2529B72F0(unint64_t result, void *a2, uint64_t a3, char a4)
{
  v4 = result;
  v29 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    result = sub_252E378C4();
    v5 = result;
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        v18 = *(v4 + 8 * v7 + 32);
      }

      v19 = *(v18 + qword_27F544440);

      sub_252E36744();

      v20 = *(v18 + qword_27F544448);

      sub_252E36744();

      if (v28)
      {
        v21 = v28;
      }

      else
      {
        v21 = v6;
      }

      if (v28)
      {
        v9 = v6;

        v10 = sub_252A966BC();

        v11 = v10;
        sub_2529B5920(v21, a2, v28, a3, a4 & 1);

        v12 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
        v13 = sub_252E36F04();
        v14 = [v12 initWithIdentifier:0 displayString:v13];

        v15 = v14;
        [v15 setEntity_];
        type metadata accessor for HomeUserTaskResponse();
        v16 = sub_252E37254();

        [v15 setTaskResponses_];

        v17 = v15;
        MEMORY[0x2530AD700]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v8 = v29;
        v6 = v9;
      }

      else
      {

        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v22 = sub_252E36AD4();
        __swift_project_value_buffer(v22, qword_27F544EE0);
        v28 = 0;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E6EB40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
        v23 = sub_252E36F94();
        MEMORY[0x2530AD570](v23);

        MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E6EB80);
        v24 = sub_252C43000();
        MEMORY[0x2530AD570](v24);

        sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002CLL, 0x8000000252E6EBA0, 103);
      }

      ++v7;
    }

    while (v5 != v7);
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_2529B76F8(unint64_t a1)
{
  sub_2529B3BE8(a1);
  v3 = v2;
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 16) = 4;
  *(v4 + 24) = v5;
  v6 = sub_252B4EF24(a1);
  v7 = sub_25297D0C0(v6);

  v8 = (*(*v7 + 152))(v3);

  v10 = (*(*v8 + 176))(v9);

  if (v3 == 105)
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544EE0);
    v12 = sub_252E36AC4();
    v13 = sub_252E374C4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_252917000, v12, v13, "Setting requiresAuthentication to true. It will be handled by SiriKit", v14, 2u);
      MEMORY[0x2530AED00](v14, -1, -1);
    }

    [v10 _setRequiresAuthentication_];
  }

  return v10;
}

void *sub_2529B78B0(unint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = sub_2529B72F0(a1, a2, a3, a4 & 1);
  v5 = sub_2529B76F8(v4);

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544EE0);
  sub_252E379F4();

  v7 = [v5 description];
  v8 = sub_252E36F34();
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  sub_252CC3D90(0xD000000000000019, 0x8000000252E6E7D0, 0xD00000000000007BLL, 0x8000000252E6E7F0);

  return v5;
}

uint64_t sub_2529B79F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if ((~a5 & 0xFF02) != 0)
  {
    return sub_2529B7A10(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }

  return result;
}

uint64_t sub_2529B7A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (!(v6 & 0xFFFFFFFE | (a5 >> 1) & 1))
  {
    return sub_2529B7A2C(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_2529B7A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xFC) == 0xA4)
  {
  }

  return result;
}

uint64_t sub_2529B7A78(void *a1)
{
  if (sub_252C4D664(5))
  {
    type metadata accessor for HomeStore();
    v2 = static HomeStore.shared.getter();
    v3 = [a1 filters];
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = v3;
      type metadata accessor for HomeFilter();
      v6 = sub_252E37264();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v7 = HomeStore.scenes(matching:)(v6);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_8;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](0, v7);
          goto LABEL_11;
        }

        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v7 + 32);

LABEL_11:
          sub_252929F10(v7, 0);
          type metadata accessor for HomeEntityResponse.Builder();
          v12 = swift_allocObject();
          type metadata accessor for HomeEntity.Builder();
          swift_allocObject();
          v13.n128_f64[0] = HomeEntity.Builder.init()();
          v15 = (*(*v14 + 448))(v13);

          *(v12 + 16) = v15;
          *(v12 + 24) = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_252E3C290;
          v17 = [a1 userTask];
          v18 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
          v19 = sub_252E36F04();
          v20 = [v18 initWithIdentifier:0 displayString:v19];

          v21 = v20;
          [v21 setTaskOutcome_];
          [v21 setUserTask_];

          *(inited + 32) = v21;
          v22 = sub_25297D0C0(inited);

          swift_setDeallocating();
          sub_25293847C(inited + 32, &qword_27F540EE0, &qword_252E4D870);
          v23 = sub_252B302FC();
          v24 = (*(*v22 + 168))();

          v25 = (*(*v24 + 192))();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_252E3C130;
          *(v26 + 32) = v25;

          return v26;
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    sub_252929F10(v7, v9 & 1);
  }

  type metadata accessor for HomeStore();
  v28 = static HomeStore.shared.getter();
  v29 = v28[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v29 != 2 && (v29 & 1) == 0 || (v30 = [a1 filters]) == 0)
  {

LABEL_35:
    type metadata accessor for HomeEntityResponse.Builder();
    v56 = swift_allocObject();
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v57.n128_f64[0] = HomeEntity.Builder.init()();
    v59 = (*(*v58 + 448))(v57);

    v60 = MEMORY[0x277D84F90];
    *(v56 + 16) = v59;
    *(v56 + 24) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_252E3C290;
    v62 = [a1 userTask];
    v63 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v64 = sub_252E36F04();
    v65 = [v63 initWithIdentifier:0 displayString:v64];

    v66 = v65;
    [v66 setTaskOutcome_];
    [v66 setUserTask_];

    *(v61 + 32) = v66;
    v67 = sub_25297D0C0(v61);

    swift_setDeallocating();
    v68 = sub_25293847C(v61 + 32, &qword_27F540EE0, &qword_252E4D870);
    v69 = (*(*v67 + 192))(v68);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C130;
    *(result + 32) = v69;
    return result;
  }

  v31 = v30;
  type metadata accessor for HomeFilter();
  v32 = sub_252E37264();

  v33 = [a1 userTask];
  v10 = HomeStore.services(matching:supporting:)(v32, v33);
  v35 = v34;

  if (v35)
  {
    v36 = v10;
    v37 = 1;
LABEL_34:
    sub_252929F10(v36, v37);
    goto LABEL_35;
  }

  if (v10 >> 62)
  {
    if (sub_252E378C4())
    {
      v70 = a1;
      v55 = sub_252E378C4();
      if (!v55)
      {
LABEL_39:
        sub_252929F10(v10, 0);
        return MEMORY[0x277D84F90];
      }

      v38 = v55;
      v71 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

LABEL_33:
    v36 = v10;
    v37 = 0;
    goto LABEL_34;
  }

  v38 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_33;
  }

  v70 = a1;
  v71 = MEMORY[0x277D84F90];
  sub_252E37AB4();
LABEL_23:
  v39 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v39, v10);
    }

    else
    {
      v54 = *(v10 + 8 * v39 + 32);
    }

    ++v39;
    type metadata accessor for HomeEntityResponse.Builder();
    v40 = swift_allocObject();
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v41.n128_f64[0] = HomeEntity.Builder.init()();
    v43 = (*(*v42 + 448))(v41);

    *(v40 + 16) = v43;
    *(v40 + 24) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_252E3C290;
    v45 = [v70 userTask];
    v46 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v47 = sub_252E36F04();
    v48 = [v46 initWithIdentifier:0 displayString:v47];

    v49 = v48;
    [v49 setTaskOutcome_];
    [v49 setUserTask_];

    *(v44 + 32) = v49;
    v50 = sub_25297D0C0(v44);

    swift_setDeallocating();
    sub_25293847C(v44 + 32, &qword_27F540EE0, &qword_252E4D870);
    v51 = sub_252CDB028();
    v52 = (*(*v50 + 168))();

    (*(*v52 + 192))();

    sub_252E37A94();
    v53 = *(v71 + 16);
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
  }

  while (v38 != v39);
  sub_252929F10(v10, 0);
  return v71;
}

uint64_t sub_2529B83C8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v118 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EB8, &qword_252E3F4F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v118 - v10;
  v12 = sub_252E36024();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[0] = a1;
  v17 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544C70);
    v128[0] = 0;
    v128[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E6EF70);
    sub_252E37AE4();
    sub_252CC4050(v128[0], v128[1], 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000026, 0x8000000252E6EE40, 341);

    v22 = sub_2529B7A78(a2);
    type metadata accessor for ControlHomeIntentResponse.Builder();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D84F90];
    *(v23 + 16) = 5;
    *(v23 + 24) = v24;
    v25 = sub_252B4EF24(v22);

    v26 = sub_25297D0C0(v25);

    v28 = (*(*v26 + 176))(v27);

    (*(v13 + 8))(v16, v12);
    return v28;
  }

  v126 = v7;
  v20(v11, 1, 1, v12);
  sub_25293847C(v11, &qword_27F540EB8, &qword_252E3F4F0);
  v29 = sub_252E360A4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EC0, &qword_252E3F4F8);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v118 - v35;
  sub_252E32C44();
  sub_252E36084();
  if ((*(v30 + 48))(v36, 1, v29) != 1)
  {
    v121 = v18;
    v124 = &v118;
    (*(v30 + 32))(&v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v29);
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v52 = sub_252E36AD4();
    v53 = __swift_project_value_buffer(v52, qword_27F544EE0);
    v128[0] = 0;
    v128[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E6EE70);
    sub_252E37AE4();
    v118 = " a HomeAppIntentError ";
    v119 = "Mapped deviceResults to: ";
    v120 = v53;
    sub_252CC4050(v128[0], v128[1], 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000026, 0x8000000252E6EE40, 360);

    v122 = &v118;
    MEMORY[0x28223BE20](v54);
    v55 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = *(v30 + 16);
    v125 = v32;
    v56(v55, v32, v29);
    v57 = (*(v30 + 88))(v55, v29);
    v123 = v29;
    if (MEMORY[0x277D15040] && v57 == *MEMORY[0x277D15040] || MEMORY[0x277D15048] && v57 == *MEMORY[0x277D15048] || MEMORY[0x277D15058] && v57 == *MEMORY[0x277D15058])
    {
      (*(v30 + 96))(v55, v29);
      v58 = *&v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED0, &qword_252E3F508) + 48) + 8];

      sub_25293847C(v55, &unk_27F541F20, &qword_252E3C180);
      v59 = v126;
LABEL_18:
      type metadata accessor for ErrorFilingHelper();
      inited = swift_initStackObject();
      v61 = sub_252E36884();
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_allocObject();
      *(inited + 16) = sub_252E36874();
      strcpy(v128, "Error code: ");
      BYTE5(v128[1]) = 0;
      HIWORD(v128[1]) = -5120;
      v64 = v125;
      v127 = sub_252E36094();
      v65 = sub_252E37D94();
      MEMORY[0x2530AD570](v65);

      v66 = v128[0];
      v67 = v128[1];
      v68 = sub_252E36834();
      (*(*(v68 - 8) + 56))(v59, 1, 1, v68);
      sub_25295ADB4(0xD00000000000002CLL, 0x8000000252E6EF20, 0xD000000000000010, 0x8000000252E6EF50, v66, v67, v59);

      sub_25293847C(v59, &qword_27F540570, &unk_252E50EE0);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v69 = swift_allocObject();
      v70 = MEMORY[0x277D84F90];
      *(v69 + 16) = 102;
      *(v69 + 24) = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
LABEL_27:
      v81 = swift_initStackObject();
      *(v81 + 16) = xmmword_252E3C290;
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v82.n128_f64[0] = HomeEntity.Builder.init()();
      v84 = (*(*v83 + 448))(v82);

      v85 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v86 = v84;
      v87 = sub_252E36F04();
      v88 = [v85 initWithIdentifier:0 displayString:v87];

      v89 = v88;
      [v89 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v90 = sub_252E37254();
      [v89 setTaskResponses_];

      *(v81 + 32) = v89;
      v91 = sub_25297D0C0(v81);

      swift_setDeallocating();
      v92 = sub_25293847C(v81 + 32, &qword_27F540CC8, &unk_252E3F8F0);
      v28 = (*(*v91 + 176))(v92);

      (*(v30 + 8))(v64, v123);
      return v28;
    }

    v59 = v126;
    if (MEMORY[0x277D15078] && v57 == *MEMORY[0x277D15078] || MEMORY[0x277D15070] && v57 == *MEMORY[0x277D15070] || MEMORY[0x277D15060] && v57 == *MEMORY[0x277D15060])
    {
      (*(v30 + 96))(v55, v29);
      sub_25293847C(v55, &qword_27F540EC8, &qword_252E3F500);
    }

    else
    {
      if (MEMORY[0x277D15050] && v57 == *MEMORY[0x277D15050])
      {
        goto LABEL_18;
      }

      if (!MEMORY[0x277D15068] || v57 != *MEMORY[0x277D15068])
      {
        v128[0] = 0;
        v128[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E6EE90);
        v127 = a1;
        sub_252E37AE4();
        sub_252CC4050(v128[0], v128[1], 0xD00000000000007BLL, v119 | 0x8000000000000000, 0xD000000000000026, v118 | 0x8000000000000000, 391);

        type metadata accessor for ErrorFilingHelper();
        v94 = swift_initStackObject();
        v95 = sub_252E36884();
        v96 = *(v95 + 48);
        v97 = *(v95 + 52);
        swift_allocObject();
        *(v94 + 16) = sub_252E36874();
        v121 = "Unexpected appIntentError code";
        strcpy(v128, "Error code: ");
        BYTE5(v128[1]) = 0;
        HIWORD(v128[1]) = -5120;
        v127 = sub_252E36094();
        v98 = sub_252E37D94();
        MEMORY[0x2530AD570](v98);

        v99 = v128[0];
        v100 = v128[1];
        v101 = sub_252E36834();
        (*(*(v101 - 8) + 56))(v59, 1, 1, v101);
        sub_25295ADB4(0xD00000000000001ELL, 0x8000000252E6EEB0, 0xD00000000000001ALL, v121 | 0x8000000000000000, v99, v100, v59);

        sub_25293847C(v59, &qword_27F540570, &unk_252E50EE0);
        type metadata accessor for ControlHomeIntentResponse.Builder();
        v102 = swift_allocObject();
        v103 = MEMORY[0x277D84F90];
        *(v102 + 16) = 5;
        *(v102 + 24) = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
        v104 = swift_initStackObject();
        *(v104 + 16) = xmmword_252E3C290;
        type metadata accessor for HomeEntity.Builder();
        swift_allocObject();
        v105.n128_f64[0] = HomeEntity.Builder.init()();
        v107 = (*(*v106 + 448))(v105);

        v108 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
        v109 = v107;
        v110 = sub_252E36F04();
        v111 = [v108 initWithIdentifier:0 displayString:v110];

        v112 = v111;
        [v112 setEntity_];
        type metadata accessor for HomeUserTaskResponse();
        v113 = sub_252E37254();
        [v112 setTaskResponses_];

        *(v104 + 32) = v112;
        v114 = sub_25297D0C0(v104);

        swift_setDeallocating();
        v115 = sub_25293847C(v104 + 32, &qword_27F540CC8, &unk_252E3F8F0);
        v28 = (*(*v114 + 176))(v115);

        v116 = *(v30 + 8);
        v117 = v123;
        v116(v125, v123);
        v116(v55, v117);
        return v28;
      }
    }

    type metadata accessor for ErrorFilingHelper();
    v71 = swift_initStackObject();
    v72 = sub_252E36884();
    v73 = *(v72 + 48);
    v74 = *(v72 + 52);
    swift_allocObject();
    *(v71 + 16) = sub_252E36874();
    strcpy(v128, "Error code: ");
    BYTE5(v128[1]) = 0;
    HIWORD(v128[1]) = -5120;
    v64 = v125;
    v127 = sub_252E36094();
    v75 = sub_252E37D94();
    MEMORY[0x2530AD570](v75);

    v76 = v128[0];
    v77 = v128[1];
    v78 = sub_252E36834();
    (*(*(v78 - 8) + 56))(v59, 1, 1, v78);
    sub_25295ADB4(0xD000000000000027, 0x8000000252E6EEF0, 0x2064696C61766E49, 0xED00007475706E69, v76, v77, v59);

    sub_25293847C(v59, &qword_27F540570, &unk_252E50EE0);
    type metadata accessor for ControlHomeIntentResponse.Builder();
    v79 = swift_allocObject();
    v80 = MEMORY[0x277D84F90];
    *(v79 + 16) = 113;
    *(v79 + 24) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    goto LABEL_27;
  }

  sub_25293847C(v36, &qword_27F540EC0, &qword_252E3F4F8);
  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v37 = sub_252E36AD4();
  __swift_project_value_buffer(v37, qword_27F544EE0);
  v128[0] = 0;
  v128[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E6EE00);
  v127 = a1;
  sub_252E37AE4();
  sub_252CC4050(v128[0], v128[1], 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000026, 0x8000000252E6EE40, 352);

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D84F90];
  *(v38 + 16) = 5;
  *(v38 + 24) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_252E3C290;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v41.n128_f64[0] = HomeEntity.Builder.init()();
  v43 = (*(*v42 + 448))(v41);

  v44 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v45 = v43;
  v46 = sub_252E36F04();
  v47 = [v44 initWithIdentifier:0 displayString:v46];

  v48 = v47;
  [v48 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v49 = sub_252E37254();
  [v48 setTaskResponses_];

  *(v40 + 32) = v48;
  v50 = sub_25297D0C0(v40);

  swift_setDeallocating();
  v51 = sub_25293847C(v40 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v28 = (*(*v50 + 176))(v51);

  return v28;
}

uint64_t sub_2529B9720()
{
  v20 = sub_252E37F54();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = type metadata accessor for TriggerEventType();
  v5 = __swift_allocate_boxed_opaque_existential_0(&v21);
  sub_2529BBF5C(v0, v5);
  sub_252E37F24();
  v6 = sub_252E37F44();
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = sub_252E37A14();
  swift_getObjectType();
  if (v11 != sub_252E37A14())
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = sub_252E37A24();
  swift_unknownObjectRelease();
  if (v12)
  {
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  sub_252E37AF4();
  swift_unknownObjectRelease();

  v14 = v21;
  v13 = v22;
  __swift_destroy_boxed_opaque_existential_1(v23);
  if (!v13)
  {
LABEL_6:
    if (qword_27F53F568 == -1)
    {
LABEL_7:
      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544EE0);
      sub_252CC4050(0xD000000000000030, 0x8000000252E6F0B0, 0xD00000000000007FLL, 0x8000000252E6EFE0, 0x6E65644965707974, 0xEE00726569666974, 27);
      v16 = 0x6E776F6E6B6E55;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  sub_252E37F34();
  v21 = sub_252E37FB4();
  v22 = v15;
  MEMORY[0x2530AD570](46, 0xE100000000000000);
  MEMORY[0x2530AD570](v14, v13);

  v16 = v21;
LABEL_8:
  (*(v1 + 8))(v4, v20);
  return v16;
}

uint64_t sub_2529B99FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74657366666FLL;
  }

  else
  {
    v4 = 12639;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x74657366666FLL;
  }

  else
  {
    v6 = 12639;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_2529B9A94()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529B9B08()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_2529B9B68()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_2529B9BE4(uint64_t *a1@<X8>)
{
  v2 = 12639;
  if (*v1)
  {
    v2 = 0x74657366666FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2529B9C14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = sub_252E32E04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TriggerEventType();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2529BBF5C(v0, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *v20;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0);
      sub_2529BBFC0(&v20[*(v23 + 48)], v7);
      sub_2529B9720();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v24 = *(sub_252E36724() - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      v42 = 0;
      v27 = 0x657369726E7573;
      if (v22)
      {
        v27 = 0x7465736E7573;
      }

      v28 = 0xE700000000000000;
      if (v22)
      {
        v28 = 0xE600000000000000;
      }

      v40 = v27;
      v41 = v28;
      sub_2529BBF08();
      sub_252E366F4();
      LOBYTE(v40) = 1;
      sub_2529BC030(v7, v5);
      sub_252E32BA4();
      sub_252E366F4();
      sub_252E36564();

      return sub_25293847C(v7, &qword_27F540F00, &unk_252E3FEC0);
    }

    else
    {
      v33 = *v20;
      sub_2529B9720();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v34 = *(sub_252E36724() - 8);
      v35 = *(v34 + 72);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      v42 = 0;
      v37 = 0x6D6F48657661656CLL;
      if (v33)
      {
        v37 = 0x6F48657669727261;
      }

      v38 = 0xE900000000000065;
      if (v33)
      {
        v38 = 0xEA0000000000656DLL;
      }

      v40 = v37;
      v41 = v38;
      sub_2529BBF08();
      sub_252E366F4();
      sub_252E36564();
    }
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
    sub_2529B9720();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    v30 = *(sub_252E36724() - 8);
    v31 = *(v30 + 72);
    v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    LOBYTE(v40) = 0;
    (*(v13 + 16))(v11, v16, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_2529BBF08();
    sub_252E366F4();
    sub_252E36564();

    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_2529BA254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v44[1] = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v44 - v6;
  v8 = sub_252E32BA4();
  v44[0] = *(v8 - 8);
  v9 = *(v44[0] + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v44 - v14;
  v16 = sub_252E32E04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[2] = a1;
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v47, v49);
  sub_252E364C4();
  v21 = sub_252E37B74();

  __swift_destroy_boxed_opaque_existential_1(&v47);
  if (v21 == 2)
  {
    v46 = 0;
    sub_2529BBF08();
    sub_252E365A4();
    if (v48)
    {
      v28 = sub_252E37B74();

      if (!v28)
      {
        v29 = 0;
        goto LABEL_33;
      }

      if (v28 == 1)
      {
        v29 = 1;
LABEL_33:
        v33 = v45;
        *v45 = v29;
        v34 = type metadata accessor for TriggerEventType();
LABEL_34:
        swift_storeEnumTagMultiPayload();
        v42 = *(*(v34 - 8) + 56);
        v43 = v33;
        return v42(v43, 0, 1, v34);
      }
    }

    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_27F544EE0);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6F080);
    sub_252E365B4();
    sub_252E37AE4();
    v23 = v47;
    v24 = v48;
    v25 = 98;
    goto LABEL_29;
  }

  if (v21 != 1)
  {
    if (v21)
    {
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544EE0);
      sub_252CC4050(0xD000000000000019, 0x8000000252E6EFC0, 0xD00000000000007FLL, 0x8000000252E6EFE0, 0xD000000000000010, 0x8000000252E6F060, 68);
      goto LABEL_30;
    }

    LOBYTE(v47) = 0;
    sub_2529BBF08();
    sub_252E365A4();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_25293847C(v15, &qword_27F540F38, &unk_252E41490);
      if (qword_27F53F568 != -1)
      {
        swift_once();
      }

      v22 = sub_252E36AD4();
      __swift_project_value_buffer(v22, qword_27F544EE0);
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6F080);
      sub_252E365B4();
      sub_252E37AE4();
      v23 = v47;
      v24 = v48;
      v25 = 78;
LABEL_29:
      sub_252CC4050(v23, v24, 0xD00000000000007FLL, 0x8000000252E6EFE0, 0xD000000000000010, 0x8000000252E6F060, v25);

LABEL_30:
      v37 = type metadata accessor for TriggerEventType();
      return (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
    }

    v32 = *(v17 + 32);
    v32(v20, v15, v16);
    v33 = v45;
    v32(v45, v20, v16);
    v34 = type metadata accessor for TriggerEventType();
    goto LABEL_34;
  }

  v46 = 0;
  sub_2529BBF08();
  sub_252E365A4();
  if (!v48)
  {
    goto LABEL_26;
  }

  v26 = sub_252E37B74();

  if (v26)
  {
    if (v26 == 1)
    {
      v27 = 1;
      goto LABEL_24;
    }

LABEL_26:
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544EE0);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E6F080);
    sub_252E365B4();
    sub_252E37AE4();
    v23 = v47;
    v24 = v48;
    v25 = 89;
    goto LABEL_29;
  }

  v27 = 0;
LABEL_24:
  LOBYTE(v47) = 1;
  sub_252E365A4();
  v35 = v44[0];
  if ((*(v44[0] + 48))(v7, 1, v8) == 1)
  {
    sub_25293847C(v7, &qword_27F540F00, &unk_252E3FEC0);
    goto LABEL_26;
  }

  v39 = *(v35 + 32);
  v39(v11, v7, v8);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0) + 48);
  v41 = v45;
  *v45 = v27;
  v39(&v41[v40], v11, v8);
  (*(v35 + 56))(&v41[v40], 0, 1, v8);
  v34 = type metadata accessor for TriggerEventType();
  swift_storeEnumTagMultiPayload();
  v42 = *(*(v34 - 8) + 56);
  v43 = v41;
  return v42(v43, 0, 1, v34);
}

uint64_t sub_2529BAB9C()
{
  sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType);

  return sub_252E36514();
}

uint64_t sub_2529BAC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType);

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_2529BAC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType);

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_2529BAD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529BC0FC(&qword_27F540F70, type metadata accessor for TriggerEventType);

  return MEMORY[0x28213DA60](a1, a2, v4);
}

void sub_2529BADA0(uint64_t *a1@<X8>)
{
  v2 = 0x657369726E7573;
  if (*v1)
  {
    v2 = 0x7465736E7573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2529BADDC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BAE5C()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_2529BAEC8()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BAF44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7465736E7573;
  }

  else
  {
    v4 = 0x657369726E7573;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7465736E7573;
  }

  else
  {
    v6 = 0x657369726E7573;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_2529BAFF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2529BB050(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F48657661656CLL;
  if (*v1)
  {
    v2 = 0x6F48657669727261;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEA0000000000656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2529BB098()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BB124()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_2529BB19C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529BB224(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F48657669727261;
  }

  else
  {
    v4 = 0x6D6F48657661656CLL;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v6 = 0x6F48657669727261;
  }

  else
  {
    v6 = 0x6D6F48657661656CLL;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000656DLL;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_2529BB2D4(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v74 = sub_252E32BA4();
  v72 = *(v74 - 8);
  v3 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F58, &qword_252E3F7D0);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v71 = &v67 - v13;
  v14 = sub_252E32E04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TriggerEventType();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F60, &qword_252E3F7D8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v67 - v32;
  v34 = &v67 + *(v31 + 56) - v32;
  sub_2529BBF5C(a1, &v67 - v32);
  sub_2529BBF5C(v76, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2529BBF5C(v33, v26);
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = *v26;
        v38 = *v34;
        v39 = v71;
        sub_2529BBFC0(&v26[v36], v71);
        v40 = v75;
        sub_2529BBFC0(&v34[v36], v75);
        if (v37)
        {
          v41 = 0x7465736E7573;
        }

        else
        {
          v41 = 0x657369726E7573;
        }

        if (v37)
        {
          v42 = 0xE600000000000000;
        }

        else
        {
          v42 = 0xE700000000000000;
        }

        if (v38)
        {
          v43 = 0x7465736E7573;
        }

        else
        {
          v43 = 0x657369726E7573;
        }

        if (v38)
        {
          v44 = 0xE600000000000000;
        }

        else
        {
          v44 = 0xE700000000000000;
        }

        if (v41 == v43 && v42 == v44)
        {

          v46 = v73;
          v45 = v74;
          v47 = v72;
        }

        else
        {
          v57 = sub_252E37DB4();

          v46 = v73;
          v45 = v74;
          v47 = v72;
          if ((v57 & 1) == 0)
          {
            sub_25293847C(v40, &qword_27F540F00, &unk_252E3FEC0);
            sub_25293847C(v39, &qword_27F540F00, &unk_252E3FEC0);
            goto LABEL_54;
          }
        }

        v58 = *(v70 + 48);
        sub_2529BC030(v39, v46);
        sub_2529BC030(v40, v46 + v58);
        v59 = v40;
        v60 = *(v47 + 48);
        if (v60(v46, 1, v45) == 1)
        {
          sub_25293847C(v59, &qword_27F540F00, &unk_252E3FEC0);
          sub_25293847C(v39, &qword_27F540F00, &unk_252E3FEC0);
          if (v60(v46 + v58, 1, v45) == 1)
          {
            sub_25293847C(v46, &qword_27F540F00, &unk_252E3FEC0);
            goto LABEL_48;
          }
        }

        else
        {
          v61 = v69;
          sub_2529BC030(v46, v69);
          if (v60(v46 + v58, 1, v45) != 1)
          {
            v62 = v68;
            (*(v47 + 32))(v68, v46 + v58, v45);
            sub_2529BC0FC(&qword_27F540F68, MEMORY[0x277CC8990]);
            v63 = v61;
            v64 = sub_252E36EF4();
            v65 = *(v47 + 8);
            v65(v62, v45);
            sub_25293847C(v75, &qword_27F540F00, &unk_252E3FEC0);
            sub_25293847C(v39, &qword_27F540F00, &unk_252E3FEC0);
            v65(v63, v45);
            sub_25293847C(v46, &qword_27F540F00, &unk_252E3FEC0);
            if (v64)
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }

          sub_25293847C(v75, &qword_27F540F00, &unk_252E3FEC0);
          sub_25293847C(v39, &qword_27F540F00, &unk_252E3FEC0);
          (*(v47 + 8))(v61, v45);
        }

        sub_25293847C(v46, &qword_27F540F58, &qword_252E3F7D0);
LABEL_54:
        sub_2529BC0A0(v33);
        goto LABEL_55;
      }

      sub_25293847C(&v26[v36], &qword_27F540F00, &unk_252E3FEC0);
    }

    else
    {
      sub_2529BBF5C(v33, v23);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v48 = *v34;
        if (*v23)
        {
          v49 = 0x6F48657669727261;
        }

        else
        {
          v49 = 0x6D6F48657661656CLL;
        }

        if (*v23)
        {
          v50 = 0xEA0000000000656DLL;
        }

        else
        {
          v50 = 0xE900000000000065;
        }

        if (v48)
        {
          v51 = 0x6F48657669727261;
        }

        else
        {
          v51 = 0x6D6F48657661656CLL;
        }

        if (v48)
        {
          v52 = 0xEA0000000000656DLL;
        }

        else
        {
          v52 = 0xE900000000000065;
        }

        if (v49 == v51 && v50 == v52)
        {

          goto LABEL_48;
        }

        v54 = sub_252E37DB4();

        if (v54)
        {
LABEL_48:
          sub_2529BC0A0(v33);
          v55 = 1;
          return v55 & 1;
        }

        goto LABEL_54;
      }
    }

LABEL_41:
    sub_25293847C(v33, &qword_27F540F60, &qword_252E3F7D8);
LABEL_55:
    v55 = 0;
    return v55 & 1;
  }

  sub_2529BBF5C(v33, v28);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v15 + 8))(v28, v14);
    goto LABEL_41;
  }

  (*(v15 + 32))(v18, v34, v14);
  v55 = sub_252E32DA4();
  v56 = *(v15 + 8);
  v56(v18, v14);
  v56(v28, v14);
  sub_2529BC0A0(v33);
  return v55 & 1;
}

uint64_t sub_2529BBB68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = a3(a2);
  if (*(v4 + 16) && (v5 = sub_252A488EC(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);

    return v7;
  }

  else
  {

    return 2;
  }
}

uint64_t type metadata accessor for TriggerEventType()
{
  result = qword_27F540EE8;
  if (!qword_27F540EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2529BBC8C()
{
  sub_252E32E04();
  if (v0 <= 0x3F)
  {
    sub_2529BBD08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2529BBD08()
{
  if (!qword_27F540EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540F00, &unk_252E3FEC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F540EF8);
    }
  }
}

unint64_t sub_2529BBE5C()
{
  result = qword_27F540F28;
  if (!qword_27F540F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540F28);
  }

  return result;
}

unint64_t sub_2529BBEB4()
{
  result = qword_27F540F30;
  if (!qword_27F540F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540F30);
  }

  return result;
}

unint64_t sub_2529BBF08()
{
  result = qword_27F540F40;
  if (!qword_27F540F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540F40);
  }

  return result;
}

uint64_t sub_2529BBF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerEventType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529BBFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529BC030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529BC0A0(uint64_t a1)
{
  v2 = type metadata accessor for TriggerEventType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529BC0FC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2529BC158()
{
  result = qword_27F540F78;
  if (!qword_27F540F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540F78);
  }

  return result;
}

uint64_t sub_2529BC1C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 400) = a4;
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F88, &unk_252E3F940);
  *(v5 + 184) = v7;
  v8 = *(v7 - 8);
  *(v5 + 192) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F90, &qword_252E59480);
  *(v5 + 224) = v10;
  v11 = *(v10 - 8);
  *(v5 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v13 = sub_252E32E04();
  *(v5 + 248) = v13;
  v14 = *(v13 - 8);
  *(v5 + 256) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F98, &qword_252E3F950);
  *(v5 + 272) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v18 = sub_252E365E4();
  *(v5 + 296) = v18;
  v19 = *(v18 - 8);
  *(v5 + 304) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v21 = sub_252E36AB4();
  *(v5 + 328) = v21;
  v22 = *(v21 - 8);
  *(v5 + 336) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  v24 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v24;
  *(v5 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_2529BC490, 0, 0);
}

uint64_t sub_2529BC490()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[19];
  v7 = qword_27F544F08;
  v0[44] = qword_27F544F08;
  v8 = v7;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_2529C1384();
  sub_252E36644();
  sub_252E36644();
  sub_252E365D4();
  (*(v5 + 8))(v3, v4);
  v9 = sub_252E34074();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[45] = sub_252E34064();
  v0[12] = MEMORY[0x277D84F90];
  v0[13] = 0;
  v12 = COERCE_DOUBLE(sub_2529C0CA8(v6, sub_2529C1384));
  if (v13)
  {
    v14 = 7.5;
  }

  else
  {
    v14 = v12 + 0.5;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v16 = v0[32];
  v15 = v0[33];
  v17 = v0[31];
  v18 = sub_252E36AD4();
  v0[46] = __swift_project_value_buffer(v18, qword_27F544C70);
  sub_252E379F4();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E6F300);
  sub_252E37374();
  sub_252CC3D90(v0[8], v0[9], 0xD000000000000088, 0x8000000252E6F320);

  v19 = sub_252DB7C84()[5];

  sub_252E32DF4();
  sub_252E32D44();
  v21 = v20;
  v22 = (*(v16 + 8))(v15, v17);
  v26.n128_f64[0] = v21 * 1000.0;
  if (COERCE__INT64(fabs(v21 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v26.n128_f64[0] <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v26.n128_f64[0] >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2821C8618](v22, v23, v24, v25, v26);
  }

  v27 = v0[22];
  v28 = v0[19];
  *(v19 + 16) = v26.n128_f64[0];

  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = v28[4];
  v34 = v28[5];
  v35 = swift_allocObject();
  v0[47] = v35;
  *(v35 + 16) = v27;
  v37 = *v28;
  v36 = *(v28 + 1);
  *(v35 + 56) = *(v28 + 2);
  *(v35 + 24) = v37;
  *(v35 + 40) = v36;
  v38 = *(MEMORY[0x277D61CC0] + 4);

  v39 = swift_task_alloc();
  v0[48] = v39;
  *v39 = v0;
  v39[1] = sub_2529BC8D8;
  v22 = v0[30];
  v25 = v0[28];
  v23 = &unk_252E3F960;
  v26.n128_f64[0] = v14;
  v24 = v35;

  return MEMORY[0x2821C8618](v22, v23, v24, v25, v26);
}

uint64_t sub_2529BC8D8()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_2529BCF64;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_2529BC9F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_2529BC9F4()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  sub_252E365F4();
  sub_252E366E4();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = *(v0 + 120);
  if (v7)
  {
    v55 = 0;
    *(v0 + 96) = v7;
  }

  else
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 224);
    v10 = *(v0 + 200);
    v11 = *(v0 + 184);
    sub_252E365F4();
    sub_252E366E4();
    v6(v10, v11);
    if (*(v0 + 128) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FB0, &qword_252E3F978), type metadata accessor for SceneResult(), (swift_dynamicCast() & 1) != 0))
    {
      v55 = *(v0 + 144);
      *(v0 + 104) = v55;
    }

    else
    {
      v55 = 0;
    }

    v7 = MEMORY[0x277D84F90];
  }

  v54 = v7;
  v12 = *(v0 + 280);
  v13 = *(v0 + 288);
  v14 = *(v0 + 240);
  v15 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = *(v0 + 184);
  v52 = *(v0 + 400);
  v45 = *(v0 + 272);
  v48 = *(v0 + 368);
  v50 = *(v0 + 168);
  v46 = *(v0 + 160);
  sub_252E365F4();
  sub_252E366D4();
  v6(v16, v17);
  sub_252E365F4();
  sub_252E366C4();
  v6(v16, v17);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E6F400);
  v18 = type metadata accessor for DeviceResult(0);
  v19 = MEMORY[0x2530AD730](v54, v18);
  MEMORY[0x2530AD570](v19);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E6F440);
  *(v0 + 136) = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FA8, &qword_252E3F970);
  v20 = sub_252E36F94();
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F460);
  sub_2529C1490(v13, v12);
  v21 = sub_252E36F94();
  MEMORY[0x2530AD570](v21);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E6F320);

  v22 = v46;
  v23 = sub_252B26B48((v0 + 96), (v0 + 104), v22, v50, v52 & 1);
  v24 = sub_252DB7C84()[5];

  v25 = sub_252DB5924();

  result = sub_252B21010(v22);
  v27 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v25))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  [result setCommandDuration_];
LABEL_12:
  v51 = *(v0 + 360);
  v53 = v23;
  v47 = *(v0 + 352);
  v49 = *(v0 + 344);
  v28 = *(v0 + 288);
  v29 = *(v0 + 232);
  v30 = *(v0 + 240);
  v31 = *(v0 + 224);
  v32 = *(v0 + 160);
  sub_252DB7C84();
  sub_252DB7138(v27);

  sub_252DB7C84();
  sub_252DB649C(0, 0, 1);

  (*(v29 + 8))(v30, v31);
  sub_25293847C(v28, &qword_27F540F98, &qword_252E3F950);

  sub_252E375C4();
  sub_252E36A74();
  if (v51)
  {
    v33 = *(v0 + 360);
    sub_252E34054();
  }

  (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
  v34 = *(v0 + 344);
  v35 = *(v0 + 312);
  v36 = *(v0 + 320);
  v38 = *(v0 + 280);
  v37 = *(v0 + 288);
  v39 = *(v0 + 264);
  v40 = *(v0 + 240);
  v42 = *(v0 + 208);
  v41 = *(v0 + 216);
  v43 = *(v0 + 200);

  v44 = *(v0 + 8);

  return v44(v53);
}

void *sub_2529BCF64()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];

  sub_252E375C4();
  v27 = MEMORY[0x277D84F90];
  LOBYTE(v26) = 2;
  sub_252E36A74();
  if (v3)
  {
    v5 = v0[45];
    sub_252E34054();
  }

  v6 = v0[49];
  v7 = v0[46];
  v8 = v0[20];
  (*(v0[42] + 8))(v0[43], v0[41]);
  sub_252E379F4();
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E6F3B0);
  v0[14] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[10], v0[11], 0xD000000000000088, 0x8000000252E6F320, 0xD00000000000002ELL, 0x8000000252E6F3D0, 119);

  v9 = sub_2529B83C8(v6, v8);
  v10 = sub_252DB7C84()[5];

  v11 = sub_252DB5924();

  result = sub_252B21010(v8);
  v13 = result;
  if (!result)
  {
    goto LABEL_7;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v11))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  [result setCommandDuration_];
LABEL_7:
  v14 = v0[49];
  sub_252DB7C84();
  sub_252DB7138(v13);

  sub_252DB7C84();
  sub_252DB649C(0, 0, 1);

  v15 = v0[43];
  v17 = v0[39];
  v16 = v0[40];
  v19 = v0[35];
  v18 = v0[36];
  v20 = v0[33];
  v21 = v0[30];
  v23 = v0[26];
  v22 = v0[27];
  v28 = v9;
  v24 = v0[25];

  v25 = v0[1];

  return v25(v28);
}

uint64_t sub_2529BD264(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 400) = a4;
  *(v5 + 168) = a3;
  *(v5 + 176) = v4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F88, &unk_252E3F940);
  *(v5 + 184) = v7;
  v8 = *(v7 - 8);
  *(v5 + 192) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F90, &qword_252E59480);
  *(v5 + 224) = v10;
  v11 = *(v10 - 8);
  *(v5 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 240) = swift_task_alloc();
  v13 = sub_252E32E04();
  *(v5 + 248) = v13;
  v14 = *(v13 - 8);
  *(v5 + 256) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F98, &qword_252E3F950);
  *(v5 + 272) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  v18 = sub_252E365E4();
  *(v5 + 296) = v18;
  v19 = *(v18 - 8);
  *(v5 + 304) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v21 = sub_252E36AB4();
  *(v5 + 328) = v21;
  v22 = *(v21 - 8);
  *(v5 + 336) = v22;
  v23 = *(v22 + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  v24 = a1[1];
  *(v5 + 16) = *a1;
  *(v5 + 32) = v24;
  *(v5 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_2529BD534, 0, 0);
}

uint64_t sub_2529BD534()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v5 = v0[38];
  v6 = v0[19];
  v7 = qword_27F544F08;
  v0[44] = qword_27F544F08;
  v8 = v7;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_2529C15DC();
  sub_252E36644();
  sub_252E36644();
  sub_252E365D4();
  (*(v5 + 8))(v3, v4);
  v9 = sub_252E34074();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v0[45] = sub_252E34064();
  v0[12] = MEMORY[0x277D84F90];
  v0[13] = 0;
  v12 = COERCE_DOUBLE(sub_2529C0CA8(v6, sub_2529C15DC));
  if (v13)
  {
    v14 = 7.5;
  }

  else
  {
    v14 = v12 + 0.5;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v16 = v0[32];
  v15 = v0[33];
  v17 = v0[31];
  v18 = sub_252E36AD4();
  v0[46] = __swift_project_value_buffer(v18, qword_27F544C70);
  sub_252E379F4();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E6F300);
  sub_252E37374();
  sub_252CC3D90(v0[8], v0[9], 0xD000000000000088, 0x8000000252E6F320);

  v19 = sub_252DB7C84()[5];

  sub_252E32DF4();
  sub_252E32D44();
  v21 = v20;
  v22 = (*(v16 + 8))(v15, v17);
  v26.n128_f64[0] = v21 * 1000.0;
  if (COERCE__INT64(fabs(v21 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v26.n128_f64[0] <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v26.n128_f64[0] >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2821C8618](v22, v23, v24, v25, v26);
  }

  v27 = v0[22];
  v28 = v0[19];
  *(v19 + 16) = v26.n128_f64[0];

  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  v33 = v28[4];
  v34 = v28[5];
  v35 = swift_allocObject();
  v0[47] = v35;
  *(v35 + 16) = v27;
  v37 = *v28;
  v36 = *(v28 + 1);
  *(v35 + 56) = *(v28 + 2);
  *(v35 + 24) = v37;
  *(v35 + 40) = v36;
  v38 = *(MEMORY[0x277D61CC0] + 4);

  v39 = swift_task_alloc();
  v0[48] = v39;
  *v39 = v0;
  v39[1] = sub_2529BD97C;
  v22 = v0[30];
  v25 = v0[28];
  v23 = &unk_252E3F9B0;
  v26.n128_f64[0] = v14;
  v24 = v35;

  return MEMORY[0x2821C8618](v22, v23, v24, v25, v26);
}

uint64_t sub_2529BD97C()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = sub_2529C1760;
  }

  else
  {
    v5 = *(v2 + 376);

    v4 = sub_2529C1754;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529BDA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[54] = a6;
  v7[55] = a7;
  v7[52] = a4;
  v7[53] = a5;
  v8 = sub_252E36AD4();
  v7[56] = v8;
  v9 = *(v8 - 8);
  v7[57] = v9;
  v10 = *(v9 + 64) + 15;
  v7[58] = swift_task_alloc();
  v11 = sub_252E32E84();
  v7[59] = v11;
  v12 = *(v11 - 8);
  v7[60] = v12;
  v13 = *(v12 + 64) + 15;
  v7[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529BDBB8, 0, 0);
}

char *sub_2529BDBB8()
{
  v299 = v0;
  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = sub_2529F219C();
  v6 = v5;

  v294 = v0;
  if (v6)
  {
LABEL_2:
    sub_2529C1374(v4, v6 & 1, MEMORY[0x277D85008]);
    goto LABEL_6;
  }

  if (v4)
  {
    v7 = *&v4[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

    v8 = [v7 home];
    if (v8)
    {
      v9 = v8;
      v10 = type metadata accessor for Home();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_2529E65BC(v9);
      v14 = MEMORY[0x277D85008];
      sub_2529C1374(v4, 0, MEMORY[0x277D85008]);
      sub_2529C1374(v4, 0, v14);
      v2 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v1 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      goto LABEL_13;
    }

    sub_2529C1374(v4, 0, MEMORY[0x277D85008]);
    goto LABEL_2;
  }

LABEL_6:
  v15 = static HomeStore.shared.getter();
  v16 = v15[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v16 != 2 && (v16 & 1) == 0 || (v17 = [*(v0 + 416) filters]) == 0)
  {

    goto LABEL_12;
  }

  v18 = v17;
  v19 = *(v0 + 416);
  type metadata accessor for HomeFilter();
  v20 = sub_252E37264();

  v21 = [v19 userTask];
  v22 = HomeStore.accessories(matching:supporting:)(v20, v21);
  v24 = v23;

  if (v24)
  {
    sub_2529C1374(v22, 1, MEMORY[0x277D84FB8]);
    goto LABEL_12;
  }

  v296 = MEMORY[0x277D84F90];
  v27 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
    v26 = sub_252E378C4();
    if (v26)
    {
      goto LABEL_26;
    }

LABEL_140:
    v43 = MEMORY[0x277D84F90];
    goto LABEL_141;
  }

  v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_140;
  }

LABEL_26:
  v0 = 0;
  v278 = (*(v294 + 480) + 32);
  v43 = MEMORY[0x277D84F90];
  v291 = v26;
  do
  {
    v279 = v43;
    v1 = v0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x2530ADF00](v1, v22);
        v0 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v1 >= *(v27 + 16))
        {
          goto LABEL_130;
        }

        v2 = *(v22 + 8 * v1 + 32);

        v0 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }
      }

      v44 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
      v45 = type metadata accessor for MatterAccessory();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      v48 = swift_allocObject();
      v49 = v44;
      v50 = [v49 matterNodeID];
      if (v50)
      {
        v51 = v50;
        v52 = [v50 unsignedLongLongValue];

        *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v52;
        if (v52)
        {
          goto LABEL_38;
        }
      }

      else
      {
        *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
      }

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v294 + 448), qword_27F544CB8);
      sub_252E379F4();

      v297 = 0xD000000000000018;
      v298 = 0x8000000252E6DF00;
      v53 = [v49 name];
      v54 = sub_252E36F34();
      v56 = v55;

      MEMORY[0x2530AD570](v54, v56);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
      sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

      v27 = v22 & 0xFFFFFFFFFFFFFF8;
      v26 = v291;
LABEL_38:
      v57 = [*(sub_252D4CE7C(v49) + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
      if (v57)
      {
        break;
      }

      ++v1;
      if (v0 == v26)
      {
        v43 = v279;
        goto LABEL_141;
      }
    }

    v58 = *(v294 + 488);
    v59 = v57;
    v60 = type metadata accessor for Home();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    v1 = swift_allocObject();
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v59;
    v63 = v59;
    v64 = [v63 uniqueIdentifier];
    sub_252E32E64();

    v65 = [v63 name];
    v66 = sub_252E36F34();
    v280 = v67;

    v68 = [v63 assistantIdentifier];
    if (v68)
    {
      v69 = v68;
      v70 = sub_252E36F34();
      v72 = v71;
    }

    else
    {

      v70 = 0;
      v72 = 0;
    }

    v73 = (*v278)(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, *(v294 + 488), *(v294 + 472));
    v74 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v74 = v66;
    v74[1] = v280;
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
    v75 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v75 = v70;
    v75[1] = v72;
    MEMORY[0x2530AD700](v73);
    v27 = v22 & 0xFFFFFFFFFFFFFF8;
    v26 = v291;
    if (*((v296 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v296 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v76 = *((v296 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
      v26 = v291;
    }

    sub_252E372D4();
    v43 = v296;
  }

  while (v0 != v26);
LABEL_141:
  sub_2529C1374(v22, 0, MEMORY[0x277D84FB8]);
  v275 = sub_252DF956C(v43);

  if (v275 >> 62)
  {
    if (v275 < 0)
    {
      v22 = v275;
    }

    else
    {
      v22 = v275 & 0xFFFFFFFFFFFFFF8;
    }

    v0 = v294;
    if (sub_252E378C4() != 1 || !sub_252E378C4())
    {
      goto LABEL_151;
    }

LABEL_143:
    if ((v275 & 0xC000000000000001) != 0)
    {
      v277 = MEMORY[0x2530ADF00](0, v275);

      v2 = *(v277 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v1 = *(v277 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v0 = v294;
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v276 = *(v275 + 32);

      v2 = *(v276 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v1 = *(v276 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v0 = v294;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_154;
  }

  v0 = v294;
  if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_143;
  }

LABEL_151:

LABEL_12:
  v2 = 0;
  v1 = 0;
LABEL_13:
  v25 = sub_252C42B30(*(v0 + 416));
  if (!v25)
  {
    goto LABEL_133;
  }

  v26 = v25;
  v27 = v25 >> 62;
  if (v25 >> 62)
  {
LABEL_131:
    if (!sub_252E378C4())
    {
      goto LABEL_132;
    }

LABEL_16:
    v28 = [*(v0 + 416) userTask];
    *(v0 + 496) = v28;
    if (!v28)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v78 = *(v0 + 456);
      v77 = *(v0 + 464);
      v79 = v0;
      v80 = *(v0 + 448);
      v81 = *(v79 + 416);
      v82 = __swift_project_value_buffer(v80, qword_27F544C70);
      (*(v78 + 16))(v77, v82, v80);
      sub_252E379F4();

      v297 = 0xD000000000000030;
      v298 = 0x8000000252E6F220;
      v83 = [v81 userTask];
      v84 = v83;
      if (v83)
      {
        v85 = [v83 taskType];
      }

      else
      {
        v85 = 0;
      }

      v100 = *(v294 + 456);
      v99 = *(v294 + 464);
      v101 = *(v294 + 448);
      v103 = *(v294 + 424);
      v102 = *(v294 + 432);
      *(v294 + 304) = v85;
      *(v294 + 312) = v84 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
      v104 = sub_252E36F94();
      MEMORY[0x2530AD570](v104);

      sub_252CC3D90(v297, v298, 0xD00000000000008BLL, 0x8000000252E6F160);

      (*(v100 + 8))(v99, v101);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v105 = swift_allocObject();
      v106 = MEMORY[0x277D84F90];
      *(v105 + 16) = 5;
      *(v105 + 24) = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v108.n128_f64[0] = HomeEntity.Builder.init()();
      v110 = (*(*v109 + 448))(v108);

      v111 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v112 = v110;
      v113 = sub_252E36F04();
      v114 = [v111 initWithIdentifier:0 displayString:v113];

      v115 = v114;
      [v115 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v116 = sub_252E37254();
      [v115 setTaskResponses_];

      *(inited + 32) = v115;
      v117 = sub_25297D0C0(inited);

      swift_setDeallocating();
      v118 = sub_25293847C(inited + 32, &qword_27F540CC8, &unk_252E3F8F0);
      v119 = (*(*v117 + 176))(v118);

      v103(v119);

      v0 = v294;
      goto LABEL_136;
    }

    v29 = v28;
    v30 = [v28 taskType];
    if (v30 == 1)
    {
      v86 = *(v0 + 416);
      v87 = sub_252A1EEEC();
      if (v87)
      {
        v88 = v87;
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v89 = *(v0 + 448);
        v90 = *(v0 + 416);
        __swift_project_value_buffer(v89, qword_27F544C70);

        v91 = v90;

        v92 = sub_252E36AC4();
        v93 = sub_252E374C4();

        if (os_log_type_enabled(v92, v93))
        {
          v286 = v93;
          loga = v92;
          v94 = swift_slowAlloc();
          v282 = swift_slowAlloc();
          v296 = v282;
          *v94 = 136316162;
          v290 = v88;
          v95 = MEMORY[0x2530AD730](v88, &type metadata for Attribute);
          v97 = sub_252BE2CE0(v95, v96, &v296);

          *(v94 + 4) = v97;
          v284 = v94;
          *(v94 + 12) = 2080;
          if (v27)
          {
            v98 = sub_252E378C4();
          }

          else
          {
            v98 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v141 = v294;
          v153 = MEMORY[0x277D84F90];
          v293 = v2;
          if (v98)
          {
            v297 = MEMORY[0x277D84F90];
            result = sub_2529AA3A0(0, v98 & ~(v98 >> 63), 0);
            if (v98 < 0)
            {
              goto LABEL_156;
            }

            v154 = 0;
            v155 = v297;
            do
            {
              if ((v26 & 0xC000000000000001) != 0)
              {
                MEMORY[0x2530ADF00](v154, v26);
              }

              else
              {
                v156 = *(v26 + 8 * v154 + 32);
              }

              v157 = sub_252A96AFC();
              v159 = v158;

              v297 = v155;
              v161 = *(v155 + 16);
              v160 = *(v155 + 24);
              if (v161 >= v160 >> 1)
              {
                sub_2529AA3A0((v160 > 1), v161 + 1, 1);
                v155 = v297;
              }

              ++v154;
              *(v155 + 16) = v161 + 1;
              v162 = v155 + 16 * v161;
              *(v162 + 32) = v157;
              *(v162 + 40) = v159;
            }

            while (v98 != v154);
            v141 = v294;
            v153 = MEMORY[0x277D84F90];
          }

          else
          {
            v155 = MEMORY[0x277D84F90];
          }

          v210 = *(v141 + 416);
          v211 = MEMORY[0x2530AD730](v155, MEMORY[0x277D837D0]);
          v213 = v212;

          v214 = sub_252BE2CE0(v211, v213, &v296);

          *(v284 + 14) = v214;
          *(v284 + 22) = 2080;
          v2 = v293;
          if (v1)
          {
            v215 = v293;
          }

          else
          {
            v215 = 0;
          }

          if (v1)
          {
            v216 = v1;
          }

          else
          {
            v216 = 0xE000000000000000;
          }

          v217 = sub_252BE2CE0(v215, v216, &v296);

          *(v284 + 24) = v217;
          *(v284 + 32) = 2080;
          v218 = ControlHomeIntent.roomNames()();
          if (v218)
          {
            v219 = v218;
          }

          else
          {
            v219 = v153;
          }

          v220 = MEMORY[0x2530AD730](v219, MEMORY[0x277D837D0]);
          v222 = v221;

          v223 = sub_252BE2CE0(v220, v222, &v296);

          *(v284 + 34) = v223;
          *(v284 + 42) = 2080;
          v224 = sub_252C4D390();
          if (v224)
          {
            v225 = v224;
          }

          else
          {
            v225 = v153;
          }

          v226 = MEMORY[0x2530AD730](v225, MEMORY[0x277D837D0]);
          v228 = v227;

          v229 = sub_252BE2CE0(v226, v228, &v296);

          *(v284 + 44) = v229;
          _os_log_impl(&dword_252917000, loga, v286, "Performing SetAttributeValueIntent with:\n   - attributeValues: %s\n   - deviceEntities %s\n   - homeEntity: %s\n   - roomEntities: %s\n   - zoneEntities: %s", v284, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v282, -1, -1);
          MEMORY[0x2530AED00](v284, -1, -1);

          v88 = v290;
        }

        else
        {

          v141 = v294;
        }

        *(v141 + 352) = v88;
        v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD8, &unk_252E3F900);
        v231 = *(v230 + 48);
        v232 = *(v230 + 52);
        swift_allocObject();
        v233 = sub_252E36754();
        *(v141 + 568) = v233;
        *(v141 + 360) = v26;
        v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
        v235 = *(v234 + 48);
        v236 = *(v234 + 52);
        swift_allocObject();
        v237 = sub_252E36754();
        *(v141 + 576) = v237;
        *(v141 + 272) = v2;
        *(v141 + 280) = v1;
        v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
        v239 = *(v238 + 48);
        v240 = *(v238 + 52);
        swift_allocObject();
        v241 = sub_252E36754();
        *(v141 + 584) = v241;
        *(v141 + 368) = 0;
        v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
        v243 = *(v242 + 48);
        v244 = *(v242 + 52);
        swift_allocObject();
        v245 = sub_252E36754();
        *(v141 + 592) = v245;
        *(v141 + 376) = 0;
        v246 = *(v242 + 48);
        v247 = *(v242 + 52);
        swift_allocObject();
        v248 = sub_252E36754();
        *(v141 + 600) = v248;
        *(v141 + 320) = 0x401C000000000000;
        *(v141 + 328) = 0;
        v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
        v250 = *(v249 + 48);
        v251 = *(v249 + 52);
        swift_allocObject();
        v252 = sub_252E36754();
        *(v141 + 608) = v252;
        *(v141 + 16) = v233;
        *(v141 + 24) = v237;
        *(v141 + 32) = v241;
        *(v141 + 40) = v245;
        *(v141 + 48) = v248;
        *(v141 + 56) = v252;
        v295 = sub_2529BD264;
        v253 = swift_task_alloc();
        *(v141 + 616) = v253;
        *v253 = v141;
        v253[1] = sub_2529BFBD8;
        v254 = *(v141 + 440);
        v208 = *(v141 + 416);
        v209 = (v141 + 16);
        goto LABEL_126;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v121 = *(v0 + 424);
      v124 = *(v0 + 432);
      __swift_project_value_buffer(*(v0 + 448), qword_27F544C70);
      sub_252CC4050(0xD000000000000038, 0x8000000252E6F260, 0xD00000000000008BLL, 0x8000000252E6F160, 0xD000000000000021, 0x8000000252E68B10, 87);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v125 = swift_allocObject();
      v126 = MEMORY[0x277D84F90];
      *(v125 + 16) = 5;
      *(v125 + 24) = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    }

    else
    {
      if (v30 != 4)
      {

        goto LABEL_136;
      }

      v31 = *(v0 + 416);
      v32 = sub_252A1F47C();
      if (v32)
      {
        v22 = v32;
        if (qword_27F53F498 == -1)
        {
LABEL_21:
          v33 = *(v0 + 448);
          v34 = *(v0 + 416);
          __swift_project_value_buffer(v33, qword_27F544C70);

          v35 = v34;

          v36 = sub_252E36AC4();
          v37 = sub_252E374C4();

          if (!os_log_type_enabled(v36, v37))
          {

            v140 = v294;
LABEL_110:
            *(v140 + 384) = v22;
            v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D00, &unk_252E3E580);
            v184 = *(v183 + 48);
            v185 = *(v183 + 52);
            swift_allocObject();
            v186 = sub_252E36754();
            *(v140 + 504) = v186;
            *(v140 + 392) = v26;
            v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE0, &unk_252E3E550);
            v188 = *(v187 + 48);
            v189 = *(v187 + 52);
            swift_allocObject();
            v190 = sub_252E36754();
            *(v140 + 512) = v190;
            *(v140 + 288) = v2;
            *(v140 + 296) = v1;
            v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CE8, &unk_252E3F910);
            v192 = *(v191 + 48);
            v193 = *(v191 + 52);
            swift_allocObject();
            v194 = sub_252E36754();
            *(v140 + 520) = v194;
            *(v140 + 400) = 0;
            v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF0, &unk_252E3E560);
            v196 = *(v195 + 48);
            v197 = *(v195 + 52);
            swift_allocObject();
            v198 = sub_252E36754();
            *(v140 + 528) = v198;
            *(v140 + 408) = 0;
            v199 = *(v195 + 48);
            v200 = *(v195 + 52);
            swift_allocObject();
            v201 = sub_252E36754();
            *(v140 + 536) = v201;
            *(v140 + 336) = 0x401C000000000000;
            *(v140 + 344) = 0;
            v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CF8, &qword_252E3F920);
            v203 = *(v202 + 48);
            v204 = *(v202 + 52);
            swift_allocObject();
            v205 = sub_252E36754();
            *(v140 + 544) = v205;
            *(v140 + 64) = v186;
            *(v140 + 72) = v190;
            *(v140 + 80) = v194;
            *(v140 + 88) = v198;
            *(v140 + 96) = v201;
            *(v140 + 104) = v205;
            v295 = sub_2529BC1C0;
            v206 = swift_task_alloc();
            *(v140 + 552) = v206;
            *v206 = v140;
            v206[1] = sub_2529BF988;
            v207 = *(v140 + 440);
            v208 = *(v140 + 416);
            v209 = (v140 + 64);
LABEL_126:

            return v295(v209, v208, 0, 1);
          }

          v285 = v37;
          log = v36;
          v38 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          v296 = v281;
          *v38 = 136316162;
          v289 = v22;
          v39 = MEMORY[0x2530AD730](v22, &type metadata for AttributeKind);
          v41 = sub_252BE2CE0(v39, v40, &v296);

          *(v38 + 4) = v41;
          v283 = v38;
          *(v38 + 12) = 2080;
          if (v27)
          {
            v42 = sub_252E378C4();
          }

          else
          {
            v42 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v140 = v294;
          v142 = MEMORY[0x277D84F90];
          v292 = v2;
          if (!v42)
          {
            v145 = MEMORY[0x277D84F90];
LABEL_97:
            v163 = *(v140 + 416);
            v164 = MEMORY[0x2530AD730](v145, MEMORY[0x277D837D0]);
            v166 = v165;

            v167 = sub_252BE2CE0(v164, v166, &v296);

            *(v283 + 14) = v167;
            *(v283 + 22) = 2080;
            v2 = v292;
            if (v1)
            {
              v168 = v292;
            }

            else
            {
              v168 = 0;
            }

            if (v1)
            {
              v169 = v1;
            }

            else
            {
              v169 = 0xE000000000000000;
            }

            v170 = sub_252BE2CE0(v168, v169, &v296);

            *(v283 + 24) = v170;
            *(v283 + 32) = 2080;
            v171 = ControlHomeIntent.roomNames()();
            if (v171)
            {
              v172 = v171;
            }

            else
            {
              v172 = v142;
            }

            v173 = MEMORY[0x2530AD730](v172, MEMORY[0x277D837D0]);
            v175 = v174;

            v176 = sub_252BE2CE0(v173, v175, &v296);

            *(v283 + 34) = v176;
            *(v283 + 42) = 2080;
            v177 = sub_252C4D390();
            if (v177)
            {
              v178 = v177;
            }

            else
            {
              v178 = v142;
            }

            v179 = MEMORY[0x2530AD730](v178, MEMORY[0x277D837D0]);
            v181 = v180;

            v182 = sub_252BE2CE0(v179, v181, &v296);

            *(v283 + 44) = v182;
            _os_log_impl(&dword_252917000, log, v285, "Performing GetAttributeValueIntent with:\n   - attributeTypes: %s\n   - deviceEntities %s\n   - homeEntity: %s\n   - roomEntities: %s\n   - zoneEntities: %s", v283, 0x34u);
            swift_arrayDestroy();
            MEMORY[0x2530AED00](v281, -1, -1);
            MEMORY[0x2530AED00](v283, -1, -1);

            v22 = v289;
            goto LABEL_110;
          }

          v297 = MEMORY[0x277D84F90];
          result = sub_2529AA3A0(0, v42 & ~(v42 >> 63), 0);
          if ((v42 & 0x8000000000000000) == 0)
          {
            v144 = 0;
            v145 = v297;
            do
            {
              if ((v26 & 0xC000000000000001) != 0)
              {
                MEMORY[0x2530ADF00](v144, v26);
              }

              else
              {
                v146 = *(v26 + 8 * v144 + 32);
              }

              v147 = sub_252A96AFC();
              v149 = v148;

              v297 = v145;
              v151 = *(v145 + 16);
              v150 = *(v145 + 24);
              if (v151 >= v150 >> 1)
              {
                sub_2529AA3A0((v150 > 1), v151 + 1, 1);
                v145 = v297;
              }

              ++v144;
              *(v145 + 16) = v151 + 1;
              v152 = v145 + 16 * v151;
              *(v152 + 32) = v147;
              *(v152 + 40) = v149;
            }

            while (v42 != v144);
            v140 = v294;
            v142 = MEMORY[0x277D84F90];
            goto LABEL_97;
          }

          __break(1u);
LABEL_156:
          __break(1u);
          return result;
        }

LABEL_154:
        swift_once();
        goto LABEL_21;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v121 = *(v0 + 424);
      v120 = *(v0 + 432);
      __swift_project_value_buffer(*(v0 + 448), qword_27F544C70);
      sub_252CC4050(0xD00000000000003ELL, 0x8000000252E6F2A0, 0xD00000000000008BLL, 0x8000000252E6F160, 0xD000000000000021, 0x8000000252E68B10, 61);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v122 = swift_allocObject();
      v123 = MEMORY[0x277D84F90];
      *(v122 + 16) = 5;
      *(v122 + 24) = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    }

    v127 = swift_initStackObject();
    *(v127 + 16) = xmmword_252E3C290;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v128.n128_f64[0] = HomeEntity.Builder.init()();
    v130 = (*(*v129 + 448))(v128);

    v131 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v132 = v130;
    v133 = sub_252E36F04();
    v134 = [v131 initWithIdentifier:0 displayString:v133];

    v135 = v134;
    [v135 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v136 = sub_252E37254();
    [v135 setTaskResponses_];

    *(v127 + 32) = v135;
    v137 = sub_25297D0C0(v127);

    swift_setDeallocating();
    v138 = sub_25293847C(v127 + 32, &qword_27F540CC8, &unk_252E3F8F0);
    v139 = (*(*v137 + 176))(v138);

    v121(v139);

    v0 = v294;
    goto LABEL_136;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_132:

LABEL_133:

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v256 = *(v0 + 424);
  v255 = *(v0 + 432);
  __swift_project_value_buffer(*(v0 + 448), qword_27F544C70);
  sub_252CC4050(0xD000000000000024, 0x8000000252E6F1F0, 0xD00000000000008BLL, 0x8000000252E6F160, 0xD000000000000021, 0x8000000252E68B10, 41);
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v257 = swift_allocObject();
  v258 = MEMORY[0x277D84F90];
  *(v257 + 16) = 102;
  *(v257 + 24) = v258;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v259 = swift_initStackObject();
  *(v259 + 16) = xmmword_252E3C290;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v260.n128_f64[0] = HomeEntity.Builder.init()();
  v262 = (*(*v261 + 448))(v260);

  v263 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v264 = v262;
  v265 = sub_252E36F04();
  v266 = [v263 initWithIdentifier:0 displayString:v265];

  v267 = v266;
  [v267 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v268 = sub_252E37254();
  [v267 setTaskResponses_];

  *(v259 + 32) = v267;
  v269 = sub_25297D0C0(v259);

  swift_setDeallocating();
  v270 = sub_25293847C(v259 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v271 = (*(*v269 + 176))(v270);

  v256(v271);

  v0 = v294;
LABEL_136:
  v272 = *(v0 + 488);
  v273 = *(v0 + 464);

  v274 = *(v0 + 8);

  return v274();
}

uint64_t sub_2529BF988(uint64_t a1)
{
  v2 = *(*v1 + 552);
  v3 = *(*v1 + 544);
  v4 = *(*v1 + 536);
  v5 = *(*v1 + 528);
  v6 = *(*v1 + 520);
  v7 = *(*v1 + 512);
  v8 = *(*v1 + 504);
  v10 = *v1;
  *(*v1 + 560) = a1;

  return MEMORY[0x2822009F8](sub_2529BFB44, 0, 0);
}

uint64_t sub_2529BFB44()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);
  (*(v0 + 424))(v1);

  v4 = *(v0 + 488);
  v5 = *(v0 + 464);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2529BFBD8(uint64_t a1)
{
  v2 = *(*v1 + 616);
  v3 = *(*v1 + 608);
  v4 = *(*v1 + 600);
  v5 = *(*v1 + 592);
  v6 = *(*v1 + 584);
  v7 = *(*v1 + 576);
  v8 = *(*v1 + 568);
  v10 = *v1;
  *(*v1 + 624) = a1;

  return MEMORY[0x2822009F8](sub_2529BFD94, 0, 0);
}

uint64_t sub_2529BFD94()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 496);
  v3 = *(v0 + 432);
  (*(v0 + 424))(v1);

  v4 = *(v0 + 488);
  v5 = *(v0 + 464);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2529BFE4C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E6F130, 0xD00000000000008BLL, 0x8000000252E6F160);
  v13 = sub_252E37344();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = v4;
  v15 = a1;

  sub_2529D89C4(0, 0, v11, &unk_252E3F8E0, v14);
}

uint64_t sub_2529C0024()
{
  type metadata accessor for RVCAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_2529C0054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FC8, &qword_252E3F988);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FD0, &qword_252E3F990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_252E36894();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = sub_252E36764();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_252E36624();
  return sub_252E36614();
}

uint64_t sub_2529C01D4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 64) = a1;
  v5 = sub_252E36634();
  *(v3 + 72) = v5;
  v6 = *(v5 - 8);
  *(v3 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v8 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v8;
  *(v3 + 48) = a3[2];

  return MEMORY[0x2822009F8](sub_2529C02A8, 0, 0);
}

uint64_t sub_2529C02A8()
{
  v1 = v0[11];
  sub_252B680FC();
  v2 = sub_252B6796C();
  v4 = v3;

  v0[12] = v2;
  ObjectType = swift_getObjectType();
  sub_2529C1384();
  sub_2529C1500();
  sub_2529C0054();
  v6 = sub_252E36404();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_252E363F4();
  v0[13] = v9;
  v10 = *(MEMORY[0x277CEB000] + 4);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_2529C040C;
  v12 = v0[11];
  v13 = v0[8];
  v14 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DAA0](v13, v0 + 2, v12, v9, v14, ObjectType, &type metadata for HomeIntentProducer.GetAttributeValueIntent, v4);
}

uint64_t sub_2529C040C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 120) = v0;

  (*(v6 + 8))(v5, v7);

  swift_unknownObjectRelease();
  if (v0)
  {
    v8 = sub_2529C0620;
  }

  else
  {
    v8 = sub_2529C05BC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2529C05BC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529C0620()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_2529C0684(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 64) = a1;
  v5 = sub_252E36634();
  *(v3 + 72) = v5;
  v6 = *(v5 - 8);
  *(v3 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v8 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v8;
  *(v3 + 48) = a3[2];

  return MEMORY[0x2822009F8](sub_2529C0758, 0, 0);
}

uint64_t sub_2529C0758()
{
  v1 = v0[11];
  sub_252B680FC();
  v2 = sub_252B6796C();
  v4 = v3;

  v0[12] = v2;
  ObjectType = swift_getObjectType();
  sub_2529C15DC();
  sub_2529C1500();
  sub_2529C0054();
  v6 = sub_252E36404();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_252E363F4();
  v0[13] = v9;
  v10 = *(MEMORY[0x277CEB000] + 4);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_2529C08BC;
  v12 = v0[11];
  v13 = v0[8];
  v14 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DAA0](v13, v0 + 2, v12, v9, v14, ObjectType, &type metadata for HomeIntentProducer.SetAttributeValueIntent, v4);
}

uint64_t sub_2529C08BC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 120) = v0;

  (*(v6 + 8))(v5, v7);

  swift_unknownObjectRelease();
  if (v0)
  {
    v8 = sub_2529C1750;
  }

  else
  {
    v8 = sub_2529C175C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2529C0A6C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = a3[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_252963EC4;

  return sub_2529C01D4(a1, a2, (v3 + 16));
}

uint64_t sub_2529C0B20(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v6;
  *(v3 + 48) = a3[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_2529C1758;

  return sub_2529C0684(a1, a2, (v3 + 16));
}

uint64_t sub_2529C0BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25293B808;

  return sub_2529BDA98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2529C0CA8(__int128 *a1, void (*a2)(void))
{
  v50 = sub_252E36AD4();
  v46 = *(v50 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E365E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FD8, &unk_252E3F998);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v47 = &v46 - v13;
  v14 = sub_252E36724();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v48 = &v46 - v21;
  v22 = a1[1];
  v56 = *a1;
  v57 = v22;
  v23 = a1[2];
  v24 = v20;
  v58 = v23;
  a2();
  sub_252E36644();
  v25 = sub_252E365C4();
  (*(v7 + 8))(v10, v6);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = 0x74756F656D6974;
    v51 = v15 + 16;
    while (v27 < *(v25 + 16))
    {
      (*(v15 + 16))(v19, v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v27, v24);
      if (sub_252E36704() == v28 && v29 == 0xE700000000000000)
      {

LABEL_10:

        v32 = v47;
        (*(v15 + 32))(v47, v19, v24);
        v31 = 0;
        v26 = v50;
        goto LABEL_11;
      }

      v10 = v28;
      v30 = sub_252E37DB4();

      if (v30)
      {
        goto LABEL_10;
      }

      ++v27;
      (*(v15 + 8))(v19, v24);
      v28 = v10;
      if (v26 == v27)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_8:

  v31 = 1;
  v26 = v50;
  v32 = v47;
LABEL_11:
  v10 = 0xD000000000000088;
  (*(v15 + 56))(v32, v31, 1, v24);
  v33 = (*(v15 + 48))(v32, 1, v24);
  v34 = v48;
  if (v33 == 1)
  {
    sub_25293847C(v32, &qword_27F540FD8, &unk_252E3F998);
    if (qword_27F53F498 == -1)
    {
LABEL_13:
      __swift_project_value_buffer(v26, qword_27F544C70);
      sub_252CC3D90((v10 - 113), 0x8000000252E6F490, 0xD000000000000088, 0x8000000252E6F320);
      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_13;
  }

  (*(v15 + 32))(v48, v32, v24);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v26, qword_27F544C70);
  v36 = v46;
  (*(v46 + 16))(v49, v35, v26);
  *&v52 = 0;
  *(&v52 + 1) = 0xE000000000000000;
  sub_252E379F4();

  v54 = 0xD00000000000001CLL;
  v55 = 0x8000000252E6F4B0;
  v37 = sub_252E36714();
  if (v37)
  {
    v38 = v37;
    v39 = [v37 value];

    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
  v40 = sub_252E36F94();
  MEMORY[0x2530AD570](v40);

  v41 = v49;
  sub_252CC3D90(v54, v55, 0xD000000000000088, 0x8000000252E6F320);

  (*(v36 + 8))(v41, v26);
  v42 = sub_252E36714();
  if (!v42)
  {
    (*(v15 + 8))(v34, v24);
    return 0;
  }

  v43 = v42;
  v44 = [v42 value];

  sub_252E377F4();
  swift_unknownObjectRelease();
  (*(v15 + 8))(v34, v24);
  if (swift_dynamicCast())
  {
    return v54;
  }

  else
  {
    return 0;
  }
}

void sub_2529C1374(id a1, char a2, void (*a3)(id))
{
  if (a2)
  {
  }

  else
  {
    a3(a1);
  }
}

unint64_t sub_2529C1384()
{
  result = qword_27F540FA0;
  if (!qword_27F540FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540FA0);
  }

  return result;
}

uint64_t sub_2529C13D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_2529C0A6C(a1, v4, (v1 + 24));
}

uint64_t sub_2529C1490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F98, &qword_252E3F950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2529C1500()
{
  result = qword_27F540FB8;
  if (!qword_27F540FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540FB0, &qword_252E3F978);
    sub_2529C1584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540FB8);
  }

  return result;
}

unint64_t sub_2529C1584()
{
  result = qword_27F540FC0;
  if (!qword_27F540FC0)
  {
    type metadata accessor for DeviceResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540FC0);
  }

  return result;
}

unint64_t sub_2529C15DC()
{
  result = qword_27F540FE0;
  if (!qword_27F540FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540FE0);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2529C1698(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_2529C0B20(a1, v4, (v1 + 24));
}

void sub_2529C1764(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeEntityResponse();
    sub_2529C5FD4();
    sub_252E373E4();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_252E37904() || (type metadata accessor for HomeEntityResponse(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_21:
        sub_25291AE30();
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_17:
    v14 = sub_252DA124C(0);

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      MEMORY[0x2530AD700]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2529C19A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = sub_252E34014();
  v4[31] = v5;
  v6 = *(v5 - 8);
  v4[32] = v6;
  v7 = *(v6 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2529C1AB4, 0, 0);
}

uint64_t sub_2529C1AB4()
{
  v179 = v0;
  v1 = v0;
  v178 = *MEMORY[0x277D85DE8];
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [*(v0 + 224) filters]) == 0)
  {

    goto LABEL_7;
  }

  v5 = v4;
  v6 = *(v1 + 224);
  *(v1 + 296) = type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [v6 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  LOBYTE(v6) = v10;

  if (v6)
  {
    sub_252929F10(v9, 1);
LABEL_7:
    v11 = *(v1 + 232);
    v12 = *(v1 + 240);
    v13 = swift_allocObject();
    *(v1 + 424) = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;

    v14 = v11;
    if (!v11)
    {
      if (qword_27F53F4D0 != -1)
      {
        goto LABEL_203;
      }

      goto LABEL_12;
    }

    v15 = v12[6];
    v16 = v14;
    v17 = *__swift_project_boxed_opaque_existential_1(v12 + 3, v15);
    v18 = v16;
    v19 = swift_task_alloc();
    *(v1 + 432) = v19;
    *v19 = v1;
    v19[1] = sub_2529C3DEC;
    v20 = *(v1 + 232);
    v21 = *MEMORY[0x277D85DE8];

    return sub_252C10ACC(0, v17, v20);
  }

  v34 = (v9 & 0xFFFFFFFFFFFFFF8);
  v168 = v9;
  if (v9 >> 62)
  {
    v175 = sub_252E378C4();
  }

  else
  {
    v175 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v171 = v1;
  if (!v175)
  {
    v64 = MEMORY[0x277D84F90];
    *(v1 + 184) = MEMORY[0x277D84F90];
    sub_25297A744(v64);
    sub_25297A744(v64);
    goto LABEL_112;
  }

  v35 = 0;
  v173 = (v168 + 32);
  v174 = v168 & 0xC000000000000001;
  v36 = MEMORY[0x277D84F90];
  do
  {
    v13 = v35;
    while (v174)
    {
      v39 = MEMORY[0x2530ADF00](v13, v168);
      v35 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      v40 = *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v38 = *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

      swift_unknownObjectRelease();
      if (v38)
      {
        goto LABEL_31;
      }

LABEL_25:
      v13 = v35;
      if (v35 == v175)
      {
        goto LABEL_36;
      }
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    if (v13 >= v34[2])
    {
      goto LABEL_192;
    }

    v35 = v13 + 1;
    v37 = (*&v173[8 * v13] + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    v38 = v37[1];
    if (!v38)
    {
      goto LABEL_25;
    }

    v40 = *v37;
    v41 = v37[1];

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_2529F7A80(0, *(v36 + 2) + 1, 1, v36);
    }

    v43 = *(v36 + 2);
    v42 = *(v36 + 3);
    v13 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v36 = sub_2529F7A80((v42 > 1), v43 + 1, 1, v36);
    }

    *(v36 + 2) = v13;
    v44 = &v36[16 * v43];
    *(v44 + 4) = v40;
    *(v44 + 5) = v38;
  }

  while (v35 != v175);
LABEL_36:
  v45 = 0;
  *(v1 + 184) = v36;
  *&v177 = MEMORY[0x277D84F90];
  v172 = v34;
  while (2)
  {
    if (v174)
    {
      v47 = MEMORY[0x2530ADF00](v45, v168);
      v48 = __OFADD__(v45++, 1);
      if (v48)
      {
        goto LABEL_193;
      }
    }

    else
    {
      if (v45 >= v34[2])
      {
        goto LABEL_194;
      }

      v47 = *&v173[8 * v45];

      v48 = __OFADD__(v45++, 1);
      if (v48)
      {
        goto LABEL_193;
      }
    }

    v13 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v13 >> 62)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v63 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      }

      v49 = sub_252E378C4();
    }

    else
    {
      v49 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v176 = v47;
    if (!v49)
    {
      v46 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    v50 = 0;
    v51 = v13 & 0xC000000000000001;
    v52 = v13 & 0xFFFFFFFFFFFFFF8;
    v169 = v13;
    v53 = v13 + 32;
    v46 = MEMORY[0x277D84F90];
    while (2)
    {
      v13 = v50;
      while (!v51)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        if (v13 >= *(v52 + 16))
        {
          goto LABEL_186;
        }

        v50 = v13 + 1;
        v54 = (*(v53 + 8 * v13) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v55 = v54[1];
        if (v55)
        {
          v170 = *v54;

          goto LABEL_57;
        }

LABEL_51:
        v13 = v50;
        if (v50 == v49)
        {
          goto LABEL_38;
        }
      }

      v56 = MEMORY[0x2530ADF00](v13, v169);
      v50 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_208;
      }

      v57 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v55 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      v170 = v56;

      swift_unknownObjectRelease();
      if (!v55)
      {
        goto LABEL_51;
      }

      v170 = v57;
LABEL_57:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_2529F7A80(0, *(v46 + 2) + 1, 1, v46);
      }

      v59 = *(v46 + 2);
      v58 = *(v46 + 3);
      v13 = v59 + 1;
      v60 = v170;
      if (v59 >= v58 >> 1)
      {
        v62 = sub_2529F7A80((v58 > 1), v59 + 1, 1, v46);
        v60 = v170;
        v46 = v62;
      }

      *(v46 + 2) = v13;
      v61 = &v46[16 * v59];
      *(v61 + 4) = v60;
      *(v61 + 5) = v55;
      v1 = v171;
      if (v50 != v49)
      {
        continue;
      }

      break;
    }

LABEL_38:

    sub_25297A744(v46);
    v34 = v172;
    if (v45 != v175)
    {
      continue;
    }

    break;
  }

  sub_25297A744(v177);
  v65 = 0;
  v66 = MEMORY[0x277D84F90];
  do
  {
    if (v174)
    {
      v13 = MEMORY[0x2530ADF00](v65, v168);
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_195;
      }
    }

    else
    {
      if (v65 >= v34[2])
      {
        goto LABEL_196;
      }

      v13 = *(v168 + 8 * v65 + 32);

      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_195;
      }
    }

    v68 = sub_252E32E24();
    v70 = v69;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_2529F7A80(0, *(v66 + 2) + 1, 1, v66);
    }

    v72 = *(v66 + 2);
    v71 = *(v66 + 3);
    v13 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v66 = sub_2529F7A80((v71 > 1), v72 + 1, 1, v66);
    }

    *(v66 + 2) = v13;
    v73 = &v66[16 * v72];
    *(v73 + 4) = v68;
    *(v73 + 5) = v70;
    ++v65;
    v34 = v172;
  }

  while (v67 != v175);
  sub_25297A744(v66);
  v74 = 0;
  *&v177 = MEMORY[0x277D84F90];
  do
  {
    if (v174)
    {
      v75 = MEMORY[0x2530ADF00](v74, v168);
      v48 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v48)
      {
        goto LABEL_200;
      }
    }

    else
    {
      if (v74 >= v34[2])
      {
        goto LABEL_201;
      }

      v75 = *&v173[8 * v74];

      v48 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v48)
      {
        goto LABEL_200;
      }
    }

    v77 = *(v75 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v77 >> 62)
    {
      if (v77 < 0)
      {
        v87 = *(v75 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      }

      v78 = sub_252E378C4();
      v169 = v75;
      v170 = v76;
      if (v78)
      {
LABEL_91:
        v79 = 0;
        v176 = v77 & 0xC000000000000001;
        v1 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v176)
          {
            MEMORY[0x2530ADF00](v79, v77);
            v81 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              goto LABEL_187;
            }
          }

          else
          {
            if (v79 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_188;
            }

            v80 = *(v77 + 8 * v79 + 32);

            v81 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              goto LABEL_187;
            }
          }

          v82 = sub_252E32E24();
          v13 = v83;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_2529F7A80(0, *(v1 + 16) + 1, 1, v1);
          }

          v85 = *(v1 + 16);
          v84 = *(v1 + 24);
          if (v85 >= v84 >> 1)
          {
            v1 = sub_2529F7A80((v84 > 1), v85 + 1, 1, v1);
          }

          *(v1 + 16) = v85 + 1;
          v86 = v1 + 16 * v85;
          *(v86 + 32) = v82;
          *(v86 + 40) = v13;
          ++v79;
          if (v81 == v78)
          {
            goto LABEL_85;
          }
        }
      }
    }

    else
    {
      v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v169 = v75;
      v170 = v76;
      if (v78)
      {
        goto LABEL_91;
      }
    }

    v1 = MEMORY[0x277D84F90];
LABEL_85:

    sub_25297A744(v1);
    v74 = v170;
    v1 = v171;
    v34 = v172;
  }

  while (v170 != v175);
  v64 = v177;
LABEL_112:
  sub_252929F10(v168, 0);
  sub_25297A744(v64);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v88 = *(v1 + 232);
  v89 = sub_252E36AD4();
  v90 = __swift_project_value_buffer(v89, qword_27F544D18);
  sub_252E379F4();

  *&v177 = 0xD000000000000010;
  *(&v177 + 1) = 0x8000000252E6F520;
  *(v1 + 304) = *(v1 + 184);
  v91 = MEMORY[0x2530AD730]();
  MEMORY[0x2530AD570](v91);

  sub_252CC3D90(v177, *(&v177 + 1), 0xD00000000000009ALL, 0x8000000252E6F540);

  if (v88 && (v92 = [*(v1 + 232) entityResponses]) != 0)
  {
    v93 = v92;
    type metadata accessor for HomeEntityResponse();
    v94 = sub_252E37264();
  }

  else
  {
    v94 = MEMORY[0x277D84F90];
  }

  v95 = sub_252C75D10(v94);

  strcpy(&v177, "responseSet ");
  BYTE13(v177) = 0;
  HIWORD(v177) = -5120;
  type metadata accessor for HomeEntityResponse();
  sub_2529C5FD4();
  v96 = sub_252E373B4();
  MEMORY[0x2530AD570](v96);

  sub_252CC3D90(v177, *(&v177 + 1), 0xD00000000000009ALL, 0x8000000252E6F540);

  v98 = sub_2529C5650(v97, (v1 + 184));
  sub_2529C1764(v98);
  v176 = 0;
  v174 = v99;
  *(v1 + 312) = v99;
  v100 = sub_252E17400(v98, v95);

  v168 = v90;
  v175 = v88;
  if ((v100 & 0xC000000000000001) != 0)
  {
    v102 = MEMORY[0x277D84FA0];
    *&v177 = MEMORY[0x277D84FA0];
    sub_252E37874();
    v103 = sub_252E37904();
    if (!v103)
    {
LABEL_120:

      goto LABEL_180;
    }

    while (1)
    {
      while (1)
      {
        *(v1 + 208) = v103;
        swift_dynamicCast();
        v104 = [*(v1 + 200) taskResponses];
        if (v104)
        {
          break;
        }

LABEL_122:

        v103 = sub_252E37904();
        if (!v103)
        {
          goto LABEL_120;
        }
      }

      v105 = v104;
      type metadata accessor for HomeUserTaskResponse();
      v106 = sub_252E37264();

      v1 = v106 & 0xFFFFFFFFFFFFFF8;
      v107 = v106 >> 62 ? sub_252E378C4() : *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = 0;
      do
      {
        if (v107 == v13)
        {

          v1 = v171;
          goto LABEL_122;
        }

        if ((v106 & 0xC000000000000001) != 0)
        {
          v108 = MEMORY[0x2530ADF00](v13, v106);
        }

        else
        {
          if (v13 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_190;
          }

          v108 = *(v106 + 8 * v13 + 32);
        }

        v109 = v108;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_189;
        }

        v110 = sub_2529C61E4();

        ++v13;
      }

      while ((v110 & 1) == 0);

      v1 = v171;
      v111 = *(v171 + 200);
      v112 = *(v102 + 16);
      if (*(v102 + 24) <= v112)
      {
        sub_252DAB4D0(v112 + 1);
        v102 = v177;
      }

      v113 = *(v102 + 40);
      v114 = sub_252E37684();
      v115 = v102 + 56;
      v116 = -1 << *(v102 + 32);
      v117 = v114 & ~v116;
      v118 = v117 >> 6;
      if (((-1 << v117) & ~*(v102 + 56 + 8 * (v117 >> 6))) == 0)
      {
        break;
      }

      v119 = __clz(__rbit64((-1 << v117) & ~*(v102 + 56 + 8 * (v117 >> 6)))) | v117 & 0x7FFFFFFFFFFFFFC0;
LABEL_147:
      *(v115 + ((v119 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v119;
      *(*(v102 + 48) + 8 * v119) = v111;
      ++*(v102 + 16);
      v103 = sub_252E37904();
      if (!v103)
      {
        goto LABEL_120;
      }
    }

    v120 = 0;
    v121 = (63 - v116) >> 6;
    while (++v118 != v121 || (v120 & 1) == 0)
    {
      v122 = v118 == v121;
      if (v118 == v121)
      {
        v118 = 0;
      }

      v120 |= v122;
      v123 = *(v115 + 8 * v118);
      if (v123 != -1)
      {
        v119 = __clz(__rbit64(~v123)) + (v118 << 6);
        goto LABEL_147;
      }
    }

LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    swift_once();
    v12 = *(v1 + 240);
LABEL_12:
    v23 = *(v1 + 272);
    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v25 = v12[12];
    v26 = v12[13];
    __swift_project_boxed_opaque_existential_1(v12 + 9, v25);
    sub_252AD7CC4();
    v27 = swift_task_alloc();
    *(v1 + 480) = v27;
    *v27 = v1;
    v27[1] = sub_2529C41E4;
    v28 = *(v1 + 272);
    v29 = *MEMORY[0x277D85DE8];
    v181 = v26;
    v30 = &unk_252E3FA30;
    v31 = v1 + 16;
    v32 = v13;
    v33 = v25;
LABEL_13:

    return sub_252BDB88C(v31, v30, v32, v28, 0, 0, 0, v33);
  }

  v124 = *(v100 + 32);
  v165 = ((1 << v124) + 63) >> 6;
  v167 = v100;
  if ((v124 & 0x3Fu) <= 0xD)
  {
LABEL_151:
    v164 = &v164;
    MEMORY[0x28223BE20](v101);
    v166 = &v164 - ((v125 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v166, v125);
    v170 = 0;
    v126 = 0;
    v127 = v100 + 56;
    v128 = 1 << *(v100 + 32);
    v129 = -1;
    if (v128 < 64)
    {
      v129 = ~(-1 << v128);
    }

    v130 = v129 & *(v100 + 56);
    v131 = (v128 + 63) >> 6;
    v13 = 0x279711000;
    while (v130)
    {
      v133 = __clz(__rbit64(v130));
      v130 &= v130 - 1;
LABEL_163:
      v136 = v133 | (v126 << 6);
      v132 = *(*(v100 + 48) + 8 * v136);
      v137 = [v132 *(v13 + 1760)];
      if (v137)
      {
        v138 = v137;
        v172 = v132;
        type metadata accessor for HomeUserTaskResponse();
        v139 = sub_252E37264();

        v173 = v130;
        v169 = v136;
        v1 = v139 & 0xFFFFFFFFFFFFFF8;
        if (v139 >> 62)
        {
          v140 = sub_252E378C4();
        }

        else
        {
          v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = 0;
        do
        {
          if (v140 == v13)
          {

            v1 = v171;
            v132 = v172;
            v100 = v167;
            v13 = &off_279711000;
            v130 = v173;
            goto LABEL_155;
          }

          if ((v139 & 0xC000000000000001) != 0)
          {
            v141 = MEMORY[0x2530ADF00](v13, v139);
          }

          else
          {
            if (v13 >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_199;
            }

            v141 = *(v139 + 8 * v13 + 32);
          }

          v142 = v141;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_198;
          }

          v143 = sub_2529C61E4();

          ++v13;
        }

        while ((v143 & 1) == 0);

        v100 = v167;
        *&v166[(v169 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v169;
        v1 = v171;
        v48 = __OFADD__(v170++, 1);
        v13 = 0x279711000;
        v130 = v173;
        if (v48)
        {
          __break(1u);
          goto LABEL_205;
        }
      }

      else
      {
LABEL_155:
      }
    }

    v134 = v126;
    while (1)
    {
      v126 = v134 + 1;
      if (__OFADD__(v134, 1))
      {
        goto LABEL_202;
      }

      if (v126 >= v131)
      {
        v102 = sub_252C53CA8(v166, v165, v170, v100);
        goto LABEL_180;
      }

      v135 = *(v127 + 8 * v126);
      ++v134;
      if (v135)
      {
        v133 = __clz(__rbit64(v135));
        v130 = (v135 - 1) & v135;
        goto LABEL_163;
      }
    }
  }

LABEL_205:

  if (swift_stdlib_isStackAllocationSafe())
  {
    v100 = v167;

    v1 = v171;
    goto LABEL_151;
  }

LABEL_208:
  v161 = swift_slowAlloc();
  v162 = v176;
  v102 = sub_2529C55C0(v161, v165, v167, sub_2529C4FEC);

  result = MEMORY[0x2530AED00](v161, -1, -1);
  if (v162)
  {
    v163 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v176 = 0;
    v1 = v171;
LABEL_180:
    v144 = *(v1 + 240);
    sub_2529C1764(v102);
    v146 = v145;
    *(v1 + 320) = v145;

    v147 = swift_allocObject();
    *(v1 + 328) = v147;
    v148 = v174;
    v147[2] = v144;
    v147[3] = v148;
    v147[4] = v146;

    if (!v175)
    {
      v155 = *(v1 + 288);
      v156 = *(v1 + 240);

      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v157 = v156[12];
      v158 = v156[13];
      __swift_project_boxed_opaque_existential_1(v156 + 9, v157);
      sub_252AD7CC4();
      v159 = swift_task_alloc();
      *(v1 + 384) = v159;
      *v159 = v1;
      v159[1] = sub_2529C33AC;
      v28 = *(v1 + 288);
      v160 = *MEMORY[0x277D85DE8];
      v181 = v158;
      v30 = &unk_252E3FA48;
      v31 = v1 + 96;
      v32 = v147;
      v33 = v157;
      goto LABEL_13;
    }

    v149 = *(v1 + 240);
    v150 = *(v149 + 48);
    v151 = *(v1 + 232);
    v152 = *__swift_project_boxed_opaque_existential_1((v149 + 24), v150);

    v153 = swift_task_alloc();
    *(v1 + 336) = v153;
    *v153 = v1;
    v153[1] = sub_2529C2F70;
    v154 = *MEMORY[0x277D85DE8];

    return sub_252C1085C(0, v152, v148, v146);
  }

  return result;
}

uint64_t sub_2529C2F70(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = a1;
  v4[44] = v1;

  v7 = v3[40];
  v8 = v3[39];
  if (v1)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2529C32D8, 0, 0);
  }

  else
  {
    v10 = v4[29];
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v11 = swift_task_alloc();
    v4[45] = v11;
    *v11 = v6;
    v11[1] = sub_2529C3198;
    v12 = v4[30];
    v13 = *MEMORY[0x277D85DE8];

    return sub_252E174F4(v10);
  }
}

uint64_t sub_2529C3198(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 360);
  v9 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_2529C36D0;
  }

  else
  {
    v5 = sub_2529C3540;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529C32D8()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[41];
  v2 = v0[29];

  v3 = v0[44];
  v4 = v0[38];

  v6 = v0[35];
  v5 = v0[36];
  v8 = v0[33];
  v7 = v0[34];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_2529C33AC()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;
  *(*v1 + 392) = v0;

  (*(v2[32] + 8))(v2[36], v2[31]);
  if (v0)
  {
    v5 = sub_2529C3D20;
  }

  else
  {
    v5 = sub_2529C3BC0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529C3540()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[43];
  v0[24] = v1;
  v2 = v0 + 24;
  v3 = v0[46];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[35];
  v9 = v0[30];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[50] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[51] = v12;
  *v12 = v0;
  v12[1] = sub_2529C37B0;
  v13 = v0[35];
  v14 = *MEMORY[0x277D85DE8];

  return sub_252BDB88C((v0 + 17), &unk_252E3FA50, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_2529C36D0()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  v2 = *(v0 + 232);

  v3 = *(v0 + 376);
  v4 = *(v0 + 304);

  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v8 = *(v0 + 264);
  v7 = *(v0 + 272);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_2529C37B0()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 408);
  v9 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    (*(v2[32] + 8))(v2[35], v2[31]);
    v4 = sub_2529C3AC4;
  }

  else
  {
    v5 = v2[50];
    (*(v2[32] + 8))(v2[35], v2[31]);

    v4 = sub_2529C3934;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529C3934()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = *(v0 + 296);
    v7 = v5;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 368);
  v10 = *(v0 + 344);
  v11 = *(v0 + 328);
  v12 = *(v0 + 232);
  v13 = *(v0 + 216);
  (*(v4 + 112))(v8, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v14 = *(v0 + 304);

  v16 = *(v0 + 280);
  v15 = *(v0 + 288);
  v18 = *(v0 + 264);
  v17 = *(v0 + 272);

  v19 = *(v0 + 8);
  v20 = *MEMORY[0x277D85DE8];

  return v19();
}

uint64_t sub_2529C3AC4()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 400);
  v2 = *(v0 + 368);
  v3 = *(v0 + 328);
  v4 = *(v0 + 232);

  v5 = *(v0 + 416);
  v6 = *(v0 + 304);

  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_2529C3BC0()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = v0[30];
  v2 = v0[28];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v0[37];
    v7 = v5;
    v8 = sub_252E37264();
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = v0[41];
  v10 = v0[27];
  (*(v4 + 112))(v8, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v11 = v0[38];

  v13 = v0[35];
  v12 = v0[36];
  v15 = v0[33];
  v14 = v0[34];

  v16 = v0[1];
  v17 = *MEMORY[0x277D85DE8];

  return v16();
}

uint64_t sub_2529C3D20()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[41];

  v2 = v0[49];
  v3 = v0[38];

  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_2529C3DEC(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  v7 = v3[29];

  if (v1)
  {
    v8 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_2529C4118, 0, 0);
  }

  else
  {
    v9 = swift_task_alloc();
    v4[57] = v9;
    *v9 = v6;
    v9[1] = sub_2529C3FD8;
    v10 = v4[30];
    v11 = *MEMORY[0x277D85DE8];

    return sub_252E174F4(v7);
  }
}

uint64_t sub_2529C3FD8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 456);
  v9 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v5 = sub_2529C4508;
  }

  else
  {
    v5 = sub_2529C4378;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529C4118()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[53];
  v2 = v0[29];

  v3 = v0[56];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_2529C41E4()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  (*(v2[32] + 8))(v2[34], v2[31]);
  if (v0)
  {
    v5 = sub_2529C4B50;
  }

  else
  {
    v5 = sub_2529C49EC;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529C4378()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[55];
  v0[22] = v1;
  v2 = v0 + 22;
  v3 = v0[58];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[33];
  v9 = v0[30];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[62] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[63] = v12;
  *v12 = v0;
  v12[1] = sub_2529C45E0;
  v13 = v0[33];
  v14 = *MEMORY[0x277D85DE8];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_2529C4508()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);
  v2 = *(v0 + 232);

  v3 = *(v0 + 472);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);

  v8 = *(v0 + 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_2529C45E0()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 504);
  v9 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    (*(v2[32] + 8))(v2[33], v2[31]);
    v4 = sub_2529C48F8;
  }

  else
  {
    v5 = v2[62];
    (*(v2[32] + 8))(v2[33], v2[31]);

    v4 = sub_2529C4764;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529C4764()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 464);
  v9 = *(v0 + 440);
  v10 = *(v0 + 424);
  v11 = *(v0 + 232);
  v12 = *(v0 + 216);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v14 = *(v0 + 280);
  v13 = *(v0 + 288);
  v16 = *(v0 + 264);
  v15 = *(v0 + 272);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t sub_2529C48F8()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 496);
  v2 = *(v0 + 464);
  v3 = *(v0 + 424);
  v4 = *(v0 + 232);

  v5 = *(v0 + 512);
  v7 = *(v0 + 280);
  v6 = *(v0 + 288);
  v9 = *(v0 + 264);
  v8 = *(v0 + 272);

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_2529C49EC()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[30];
  v2 = v0[28];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[53];
  v9 = v0[27];
  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[35];
  v10 = v0[36];
  v13 = v0[33];
  v12 = v0[34];

  v14 = v0[1];
  v15 = *MEMORY[0x277D85DE8];

  return v14();
}

uint64_t sub_2529C4B50()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[53];

  v2 = v0[61];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_2529C4C14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2529C4C34, 0, 0);
}

uint64_t sub_2529C4C34()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2529C4D04;
  v5 = v0[3];

  return sub_252C10ACC(0, v2, v5);
}

uint64_t sub_2529C4D04(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_2529C4E24(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = [a2 entityResponses];
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = v3;
      type metadata accessor for HomeEntityResponse();
      v6 = sub_252E37264();

      v18 = v4;
      if (v6 >> 62)
      {
LABEL_21:
        v7 = sub_252E378C4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = 0;
      while (v7 != v8)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v12 = sub_252DA124C(0);

        ++v8;
        if (v12)
        {
          MEMORY[0x2530AD700]();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v13 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v4 = v18;
          v8 = v11;
        }
      }
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationBooleanResponses();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v4;
  v15 = *(a1 + 16);

  *(a1 + 16) = v14;
  v16 = *(a1 + 8);

  *(a1 + 8) = 0;
  return result;
}

BOOL sub_2529C4FEC(id *a1)
{
  v1 = [*a1 taskResponses];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for HomeUserTaskResponse();
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = sub_2529C61E4();

    ++v5;
  }

  while ((v9 & 1) == 0);

  return v6;
}

uint64_t sub_2529C5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2529C5134, 0, 0);
}

uint64_t sub_2529C5134()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2529C5218;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C1085C(0, v3, v5, v6);
}

uint64_t sub_2529C5218(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_2529C5358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HomeAutomationBooleanResponses();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;
  v7 = *(a1 + 16);

  *(a1 + 16) = v6;
  type metadata accessor for HomeAutomationEntityResponses();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = a3;
  v9 = *(a1 + 8);

  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_2529C5420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_2529C19A0(a1, a2, a3);
}

void *sub_2529C54D4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetSmokeSensorStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_2529C5538(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_2529C5C48(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_2529C55C0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_252A19458(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2529C5650(uint64_t a1, uint64_t *a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2529C5910(a1, a2);
  }

  v34 = v2;
  v4 = MEMORY[0x277D84FA0];
  v37 = MEMORY[0x277D84FA0];
  sub_252E37874();
  v5 = sub_252E37904();
  if (v5)
  {
    v33 = a2;
    v6 = v5;
    type metadata accessor for HomeEntityResponse();
    v7 = v6;
    v8 = MEMORY[0x277D84F68];
    do
    {
      v35[0] = v7;
      swift_dynamicCast();
      v9 = [v36 entity];
      if (!v9)
      {
        goto LABEL_4;
      }

      v10 = v9;
      v11 = [v9 entityIdentifier];

      if (!v11)
      {
        goto LABEL_4;
      }

      v12 = sub_252E36F34();
      v13 = v8;
      v15 = v14;

      v16 = *v33;
      v35[0] = v12;
      v35[1] = v15;
      MEMORY[0x28223BE20](v17);
      v32[2] = v35;

      v18 = v34;
      LOBYTE(v12) = sub_2529ED970(sub_25296A69C, v32, v16);
      v34 = v18;
      v8 = v13;

      if (v12)
      {
        v19 = v36;
        v20 = *(v4 + 16);
        if (*(v4 + 24) <= v20)
        {
          sub_252DAB4D0(v20 + 1);
        }

        v4 = v37;
        v21 = *(v37 + 40);
        result = sub_252E37684();
        v23 = v4 + 56;
        v24 = -1 << *(v4 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v4 + 56 + 8 * (v25 >> 6))) != 0)
        {
          v27 = __clz(__rbit64((-1 << v25) & ~*(v4 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = 0;
          v29 = (63 - v24) >> 6;
          do
          {
            if (++v26 == v29 && (v28 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v30 = v26 == v29;
            if (v26 == v29)
            {
              v26 = 0;
            }

            v28 |= v30;
            v31 = *(v23 + 8 * v26);
          }

          while (v31 == -1);
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
        }

        *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        *(*(v4 + 48) + 8 * v27) = v19;
        ++*(v4 + 16);
      }

      else
      {
LABEL_4:
      }

      v7 = sub_252E37904();
    }

    while (v7);
  }

  return v4;
}

uint64_t sub_2529C5910(uint64_t a1, uint64_t *a2)
{
  v36 = a2;
  v3 = a1;
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v38 = v2;
    v31[1] = v31;
    v32 = v5;
    MEMORY[0x28223BE20](a1);
    v33 = v31 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v6);
    v34 = 0;
    v35 = v3;
    v5 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = v12 | (v5 << 6);
      v16 = *(*(v3 + 48) + 8 * v15);
      v17 = [v16 entity];
      if (v17 && (v18 = v17, v19 = [v17 entityIdentifier], v18, v19))
      {
        v20 = sub_252E36F34();
        v22 = v21;

        v37 = v31;
        v23 = *v36;
        v39[0] = v20;
        v39[1] = v22;
        MEMORY[0x28223BE20](v24);
        v31[-2] = v39;

        v2 = v38;
        LOBYTE(v20) = sub_2529ED970(sub_25296A724, &v31[-4], v23);
        v38 = v2;

        v3 = v35;

        if (v20)
        {
          *&v33[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          if (__OFADD__(v34++, 1))
          {
            __break(1u);
LABEL_19:
            result = sub_252C53CA8(v33, v32, v34, v3);
            goto LABEL_20;
          }
        }
      }

      else
      {
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = v3;
  v29 = swift_slowAlloc();
  v30 = sub_2529C5538(v29, v5, v28, v36);

  MEMORY[0x2530AED00](v29, -1, -1);
  result = v30;
LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2529C5C48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v28 = 0;
  v29 = a4;
  v4 = a3;
  v26 = a2;
  v27 = a1;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a3;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *(*(v4 + 48) + 8 * v14);
    v16 = [v15 entity];
    if (v16 && (v17 = v16, v18 = [v16 entityIdentifier], v17, v18))
    {
      v19 = sub_252E36F34();
      v21 = v20;

      v31 = &v26;
      v32[0] = v19;
      v22 = *v29;
      v32[1] = v21;
      MEMORY[0x28223BE20](v23);
      *(&v26 - 2) = v32;

      v24 = v33;
      LOBYTE(v19) = sub_2529ED970(sub_25296A724, (&v26 - 4), v22);
      v33 = v24;

      v4 = v30;

      if (v19)
      {
        *(v27 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_18:

          sub_252C53CA8(v27, v26, v28, v4);
          return;
        }
      }
    }

    else
    {
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_18;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2529C5E70(void *a1)
{
  result = [a1 userTask];
  if (result)
  {
    v3 = result;
    v4 = [a1 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {

LABEL_7:
        v7 = [v3 attribute];

        return (v7 == 31);
      }

      v6 = [v5 taskType];

      if (v6 == 5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_252C515AC();
    }

    return 0;
  }

  return result;
}

uint64_t sub_2529C5F3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_2529C4C14(v2, v3);
}

unint64_t sub_2529C5FD4()
{
  result = qword_27F540340;
  if (!qword_27F540340)
  {
    type metadata accessor for HomeEntityResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540340);
  }

  return result;
}

uint64_t sub_2529C602C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529C5110(v2, v3, v4);
}

uint64_t sub_2529C60D4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540FE8, qword_252E3FAB0);
  v2 = sub_252E329D4();
  v3 = [v1 stringFromMeasurement_];

  v4 = sub_252E36F34();
  return v4;
}

uint64_t sub_2529C6160(uint64_t a1)
{
  v2 = [*v1 stringFromUnit_];
  v3 = sub_252E36F34();

  return v3;
}

uint64_t dispatch thunk of MeasurementFormatterProtocol.string(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t sub_2529C61E4()
{
  v1 = [v0 userTask];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 attribute];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 userTask];
  if (v4 && (v5 = v4, v6 = [v4 value], v5, v6))
  {
    v7 = [v6 integerValue];

    v8 = 0;
    v9 = v7;
  }

  else
  {
    v9 = 0.0;
    v8 = 1;
  }

  v10 = [v0 userTask];
  if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
  {
    [v12 doubleValue];
    v14 = v13;

    v15 = 0;
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
    v15 = 1;
  }

  if (v8)
  {
    v9 = v16;
  }

  result = [v0 userTask];
  if (result)
  {
    v18 = result;
    v19 = [result value];

    if (!v19)
    {
LABEL_21:
      result = 0;
      if (!v2)
      {
        return result;
      }

      goto LABEL_25;
    }

    v20 = [v19 type];

    if (v20 == 1)
    {
      result = [v0 userTask];
      if (result)
      {
        v21 = result;
        v22 = [result value];

        if (v22)
        {
          v23 = [v22 BOOLValue];

          result = v23;
          if (!v2)
          {
            return result;
          }

          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    else
    {
      result = 0;
    }
  }

  if (!v2)
  {
    return result;
  }

LABEL_25:
  if (v3 > 15)
  {
    if (v3 > 38)
    {
      switch(v3)
      {
        case '\'':
          result = [v0 userTask];
          if (!result)
          {
            return result;
          }

          v39 = result;
          v40 = [result value];

          if (!v40)
          {
            return 0;
          }

          v41 = [v40 stringValue];

          if (!v41)
          {
            return 0;
          }

          v42 = sub_252E36F34();
          v44 = v43;

          if (v42 == 0xD000000000000012 && 0x8000000252E6F620 == v44)
          {
            goto LABEL_71;
          }

          break;
        case '(':
          result = [v0 userTask];
          if (!result)
          {
            return result;
          }

          v45 = result;
          v46 = [result value];

          if (!v46)
          {
            return 0;
          }

          v47 = [v46 stringValue];

          if (!v47)
          {
            return 0;
          }

          v48 = sub_252E36F34();
          v50 = v49;

          if (v48 == 0x5445445F4B41454CLL && v50 == 0xED00004445544345)
          {
LABEL_71:

            return 1;
          }

          break;
        case '.':
          goto LABEL_53;
        default:
          return result;
      }

LABEL_72:
      v51 = sub_252E37DB4();

      return v51 & 1;
    }

    if (v3 != 16)
    {
      if (v3 != 38)
      {
        return result;
      }

      goto LABEL_45;
    }

LABEL_53:
    if (v8 & v15)
    {
      return 0;
    }

    return v9 == 1.0;
  }

  if (v3 <= 9)
  {
    if (v3 == 8)
    {
      v31 = [v0 userTask];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 value];

        if (v33)
        {
          v34 = [v33 type];

          if (v34 == 1)
          {
            v35 = [v0 userTask];
            if (v35)
            {
              v36 = v35;
              v37 = [v35 value];

              if (v37)
              {
                v38 = [v37 BOOLValue];

                return v38;
              }
            }
          }
        }
      }

      goto LABEL_53;
    }

    if (v3 != 9)
    {
      return result;
    }

LABEL_45:
    if (v8 & v15)
    {
      return 0;
    }

    return (*&v9 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  }

  if (v3 == 10)
  {
    goto LABEL_45;
  }

  if (v3 == 12)
  {
    result = [v0 userTask];
    if (result)
    {
      v24 = result;
      v25 = [result value];

      if (!v25)
      {
        return 0;
      }

      v26 = [v25 stringValue];

      if (!v26)
      {
        return 0;
      }

      v27 = sub_252E36F34();
      v29 = v28;

      if (v27 == 0x5349574B434F4C43 && v29 == 0xE900000000000045)
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }
  }

  return result;
}

uint64_t sub_2529C6784()
{
  v1 = [v0 userTask];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 attribute];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v0 userTask];
  if (v4 && (v5 = v4, v6 = [v4 value], v5, v6))
  {
    v7 = [v6 integerValue];

    v8 = 0;
    v9 = v7;
  }

  else
  {
    v9 = 0.0;
    v8 = 1;
  }

  v10 = [v0 userTask];
  if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
  {
    [v12 doubleValue];
    v14 = v13;

    v15 = 0;
    v16 = v14;
  }

  else
  {
    v16 = 0.0;
    v15 = 1;
  }

  if (v8)
  {
    v9 = v16;
  }

  v17 = [v0 userTask];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 value];

  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = [v19 type];

  if (v20 == 1 && (v21 = [v0 userTask]) != 0 && (v22 = v21, v23 = objc_msgSend(v21, sel_value), v22, v23))
  {
    v24 = [v23 BOOLValue];

    if (!v2)
    {
      goto LABEL_49;
    }
  }

  else
  {
LABEL_21:
    v24 = 2;
    if (!v2)
    {
      goto LABEL_49;
    }
  }

  if (v3 <= 15)
  {
    if (v3 > 9)
    {
      if (v3 != 10)
      {
        if (v3 != 12)
        {
          goto LABEL_49;
        }

        v29 = [v0 userTask];
        if (!v29)
        {
          goto LABEL_79;
        }

        v30 = v29;
        v31 = [v29 value];

        if (!v31)
        {
          goto LABEL_79;
        }

        v32 = [v31 stringValue];

        if (!v32)
        {
          goto LABEL_79;
        }

        v33 = sub_252E36F34();
        v35 = v34;

        if (v33 == 0xD000000000000010 && 0x8000000252E66F40 == v35)
        {
          goto LABEL_72;
        }

        goto LABEL_76;
      }

      if ((v8 & v15 & 1) == 0)
      {
        v36 = [v0 userTask];
        if (v36)
        {
          if (v9 != 0.0)
          {
            v53 = v36;
            v54 = [v36 taskType];

            v28 = 1;
            if (v54 == 4 || v9 == 1.0)
            {
              return v28 & 1;
            }

            goto LABEL_79;
          }
        }

        if (v9 == 1.0)
        {
          goto LABEL_75;
        }
      }
    }

    else
    {
      if (v3 == 8)
      {
        if ((v8 & v15 & 1) == 0)
        {
          v28 = v9 != 1.0;
          return v28 & 1;
        }

        goto LABEL_75;
      }

      if (v3 != 9)
      {
        goto LABEL_49;
      }

      if ((v8 & v15 & 1) == 0)
      {
        v25 = [v0 userTask];
        if (v25)
        {
          if (v9 > 0.0)
          {
            v26 = v25;
            v27 = [v25 taskType];

            v28 = 1;
            if (v27 == 4 || v9 == 100.0)
            {
              return v28 & 1;
            }

            goto LABEL_79;
          }
        }

        if (v9 == 100.0)
        {
LABEL_75:
          v28 = 1;
          return v28 & 1;
        }
      }
    }

LABEL_79:
    v28 = 0;
    return v28 & 1;
  }

  if (v3 > 38)
  {
    switch(v3)
    {
      case '\'':
        v37 = [v0 userTask];
        if (!v37)
        {
          goto LABEL_79;
        }

        v38 = v37;
        v39 = [v37 value];

        if (!v39)
        {
          goto LABEL_79;
        }

        v40 = [v39 stringValue];

        if (!v40)
        {
          goto LABEL_79;
        }

        v41 = sub_252E36F34();
        v43 = v42;

        if (v41 == 0xD000000000000016 && 0x8000000252E6F600 == v43)
        {
          goto LABEL_72;
        }

        break;
      case '(':
        v44 = [v0 userTask];
        if (!v44)
        {
          goto LABEL_79;
        }

        v45 = v44;
        v46 = [v44 value];

        if (!v46)
        {
          goto LABEL_79;
        }

        v47 = [v46 stringValue];

        if (!v47)
        {
          goto LABEL_79;
        }

        v48 = sub_252E36F34();
        v50 = v49;

        if (v48 == 0xD000000000000011 && 0x8000000252E6F5E0 == v50)
        {
LABEL_72:

          v28 = 1;
          return v28 & 1;
        }

        break;
      case '.':
LABEL_51:
        if ((v8 & v15 & 1) == 0)
        {
          v28 = (*&v9 & 0x7FFFFFFFFFFFFFFFLL) == 0;
          return v28 & 1;
        }

        goto LABEL_79;
      default:
LABEL_49:
        if (v24 != 2)
        {
          v28 = v24 ^ 1;
          return v28 & 1;
        }

        goto LABEL_79;
    }

LABEL_76:
    v51 = sub_252E37DB4();

    return v51 & 1;
  }

  if (v3 == 16)
  {
    goto LABEL_51;
  }

  if (v3 != 38)
  {
    goto LABEL_49;
  }

  if (v8 & v15)
  {
    goto LABEL_79;
  }

  v28 = v9 == 1.0;
  return v28 & 1;
}

id sub_2529C6D64()
{
  v1 = [v0 userTask];
  if (!v1 || (v2 = v1, v3 = [v1 attribute], v2, v3 != 6))
  {
    v4 = [v27 userTask];
    if (!v4 || (v5 = v4, v6 = [v4 attribute], v5, v6 != 19))
    {
      v7 = [v27 userTask];
      if (!v7)
      {
        goto LABEL_10;
      }

      v8 = v7;
      v9 = [v7 attribute];

      if (v9 != 17)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = [v27 userTask];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 taskType];
    v13 = [v11 attribute];
    v14 = [v11 value];
    if (v14)
    {
      v15 = v14;
      v16 = HomeAttributeValue.localized.getter();
    }

    else
    {
      v16 = 0;
    }

    v18 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v19 = sub_252E36F04();
    v20 = [v18 initWithIdentifier:0 displayString:v19];

    v21 = v20;
    [v21 setTaskType_];
    [v21 setAttribute_];
    [v21 setValue_];

    v22 = [v27 taskOutcome];
    v23 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v24 = sub_252E36F04();
    v25 = [v23 initWithIdentifier:0 displayString:v24];

    v26 = v25;
    [v26 setTaskOutcome_];
    [v26 setUserTask_];

    return v26;
  }

  else
  {
LABEL_10:

    return v27;
  }
}

id sub_2529C6FFC()
{
  v1 = v0;
  result = [v0 value];
  if (result)
  {
    v3 = result;
    v4 = [result unit];

    if (v4)
    {
      return 0;
    }

    if (qword_27F53F748 != -1)
    {
      swift_once();
    }

    v5 = qword_27F575C58;
    v6 = [v1 attribute];
    if (*(v5 + 16) && (v7 = sub_252A488EC(v6), (v8 & 1) != 0))
    {
      return *(*(v5 + 56) + 8 * v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2529C70CC()
{
  result = [v0 value];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result stringValue];

  if (!v3)
  {
    return 0;
  }

  sub_252E36F34();

  if ([v0 attribute] != 5)
  {
LABEL_11:

    return 0;
  }

  v4 = sub_252E37084();
  result = sub_252E37084();
  if (result >> 14 < v4 >> 14)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_252E37194();

  sub_2529C7C0C();
  sub_252947DBC();
  v5 = sub_252E37794();

  if (v5[2] < 2uLL)
  {
    goto LABEL_11;
  }

  v6 = v5[4];
  v7 = v5[5];

  LOBYTE(v6) = sub_252C5BE1C(v6, v7);

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v5[2] < 2uLL)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v8 = v5[6];
  v9 = v5[7];

  LOBYTE(v8) = sub_252C5BE1C(v8, v9);

  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v5[2] > 2uLL)
  {
    v10 = v5[8];
    v11 = v5[9];

    sub_252C5BE1C(v10, v11);
  }

  return 0;
}

id sub_2529C7370()
{
  v1 = [v0 value];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (v3 == 4)
    {
      v4 = [v0 value];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 integerValue];

        v7 = v6;
        v8 = [v0 value];
        if (!v8)
        {
          return *&v7;
        }

LABEL_5:
        v9 = v8;
        [v8 unit];

        return *&v7;
      }
    }
  }

  result = [v0 value];
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [result type];

  if (v12 == 2)
  {
    result = [v0 value];
    if (!result)
    {
      return result;
    }

    v13 = result;
    [result doubleValue];
    v15 = v14;

    v7 = v15;
    v8 = [v0 value];
    if (!v8)
    {
      return *&v7;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_2529C74F8()
{
  v1 = [v0 value];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (v3 == 1)
    {
      v4 = [v0 value];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 BOOLValue];

        v7 = v6 ^ 1;
        return v7 & 1;
      }

LABEL_21:
      v7 = 0;
      return v7 & 1;
    }
  }

  v8 = [v0 value];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 type];

    if (v10 == 4)
    {
      v11 = [v0 attribute];
      v12 = [v0 value];
      if (v11 == 8)
      {
        if (v12)
        {
          v13 = v12;
          v14 = [v12 integerValue];

          v7 = v14 == 1;
          return v7 & 1;
        }
      }

      else if (v12)
      {
        v31 = v12;
        v32 = [v12 integerValue];

        v7 = v32 == 0;
        return v7 & 1;
      }

      goto LABEL_21;
    }
  }

  v15 = [v0 value];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 type];

    if (v17 == 2)
    {
      v18 = [v0 value];
      if (v18)
      {
        v19 = v18;
        [v18 doubleValue];
        v21 = v20;

        v7 = v21 == 0.0;
        return v7 & 1;
      }

      goto LABEL_21;
    }
  }

  v22 = [v0 value];
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v22 type];

  if (v24 != 3)
  {
    goto LABEL_21;
  }

  v25 = [v0 value];
  if (v25 && (v26 = v25, v27 = [v25 stringValue], v26, v27))
  {
    v28 = sub_252E36F34();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  v35[0] = v28;
  v35[1] = v30;
  MEMORY[0x28223BE20](v25);
  v34[2] = v35;
  v7 = sub_2529ED970(sub_25296A69C, v34, &unk_2864A9018);
  swift_arrayDestroy();

  return v7 & 1;
}

uint64_t sub_2529C77E4()
{
  v1 = [v0 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 cleaningJob];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 cleanModes];
  v5 = sub_252E37264();

  v6 = *(v5 + 16);
  v7 = 32;
  do
  {
    v8 = v6;
    v9 = v6-- != 0;
    v10 = v9;
    if (!v9)
    {
      break;
    }

    v11 = *(v5 + v7);
    v7 += 8;
  }

  while (v11 != 14);

  v12 = [v3 targetAreas];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HomeAttributeTargetArea();
    v14 = sub_252E37264();

    if (v14 >> 62)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = &off_279711000;
    while (1)
    {
      v18 = v15 != v16;
      if (v15 == v16)
      {
LABEL_23:

        goto LABEL_25;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2530ADF00](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v19 = *(v14 + 8 * v16 + 32);
      }

      v20 = v19;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      [v19 areaID];
      v22 = v21;

      ++v16;
      if (v22 == -2.0)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v18 = 0;
LABEL_25:
  v23 = [v3 targetMap];
  if (v23)
  {
    v24 = v23;
    [v23 mapID];
    v26 = v25;

    v15 = v26 == -2.0;
    v27 = !v18;
    if (v8)
    {
      v27 = 0;
    }

    if (v27)
    {
      LODWORD(v17) = 0;
      v28 = v26 == -2.0;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v15 = 0;
  v28 = 0;
  LODWORD(v17) = 0;
  if (v8)
  {
    v29 = 1;
  }

  else
  {
    v29 = v18;
  }

  if (v29)
  {
LABEL_34:
    v28 = v15;
    v15 = 1;
    LODWORD(v17) = v10;
  }

LABEL_35:
  v40 = v28;
  if (qword_27F53F4E8 != -1)
  {
LABEL_64:
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E6F640);
  if (v15)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v15)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v31, v32);

  MEMORY[0x2530AD570](0xD00000000000005ALL, 0x8000000252E6F660);
  if (v17)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v17)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v33, v34);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E6F6C0);
  if (v18)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v18)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v35, v36);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E6F6E0);
  if (v40)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (v40)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v37, v38);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6F700);

  return v15;
}

unint64_t sub_2529C7C0C()
{
  result = qword_27F541340;
  if (!qword_27F541340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541340);
  }

  return result;
}

uint64_t sub_2529C7C78()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  v5 = sub_2529C7D68(v4);
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    return sub_252E339F4();
  }

  else
  {
    return sub_252E33A04();
  }
}

BOOL sub_2529C7D68(uint64_t a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x277D5C128])
  {
    if (v7 == *MEMORY[0x277D5C158])
    {
      (*(v3 + 96))(v6, v2);
      v8 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

      v9 = sub_252E358D4();
      (*(*(v9 - 8) + 8))(v6, v9);
      goto LABEL_5;
    }

    if (v7 != *MEMORY[0x277D5C150] && v7 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544D60);
      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6FA00);
      MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
      v14 = sub_252D2CDB4();
      MEMORY[0x2530AD570](v14);

      sub_252CC3D90(v18[0], v18[1], 0xD000000000000075, 0x8000000252E6F840);

      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  (*(v3 + 8))(v6, v2);
LABEL_5:
  sub_252AB3FEC(a1, 0, v17);
  memcpy(v18, v17, sizeof(v18));
  if (sub_252956B94(v18) != 1)
  {
    memcpy(v16, v18, sizeof(v16));
    v11 = sub_252D8A048(v16);
    sub_25299F5D4(v17);
    return v11;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544D60);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6FA00);
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
  sub_252CC4050(v16[0], v16[1], 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000014, 0x8000000252E6F900, 45);

  return 0;
}

uint64_t sub_2529C81D4(uint64_t a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x277D5C128])
  {
    if (v7 == *MEMORY[0x277D5C158])
    {
      (*(v3 + 96))(v6, v2);
      v8 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

      v9 = sub_252E358D4();
      (*(*(v9 - 8) + 8))(v6, v9);
      goto LABEL_5;
    }

    if (v7 != *MEMORY[0x277D5C150] && v7 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544D60);
      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
      MEMORY[0x2530AD570](0x656D6F48776F6853, 0xEC000000776F6C46);
      MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
      v14 = sub_252D2CDB4();
      MEMORY[0x2530AD570](v14);

      sub_252CC3D90(v18[0], v18[1], 0xD000000000000075, 0x8000000252E6F840);

      (*(v3 + 8))(v6, v2);
      goto LABEL_9;
    }
  }

  (*(v3 + 8))(v6, v2);
LABEL_5:
  sub_252AB3FEC(a1, 0, v17);
  memcpy(v18, v17, sizeof(v18));
  if (sub_252956B94(v18) != 1)
  {
    memcpy(v16, v18, sizeof(v16));
    v11 = sub_252CC0C40(v16);
    sub_25299F5D4(v17);
    return v11 & 1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544D60);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x656D6F48776F6853, 0xEC000000776F6C46);
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
  sub_252CC4050(v16[0], v16[1], 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000014, 0x8000000252E6F900, 45);

LABEL_9:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2529C8644(uint64_t a1)
{
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x277D5C128])
  {
    if (v7 == *MEMORY[0x277D5C158])
    {
      (*(v3 + 96))(v6, v2);
      v8 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

      v9 = sub_252E358D4();
      (*(*(v9 - 8) + 8))(v6, v9);
      goto LABEL_5;
    }

    if (v7 != *MEMORY[0x277D5C150] && v7 != *MEMORY[0x277D5C160])
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v13 = sub_252E36AD4();
      __swift_project_value_buffer(v13, qword_27F544D60);
      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6F7D0);
      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6F7F0);
      MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E6F810);
      v14 = sub_252D2CDB4();
      MEMORY[0x2530AD570](v14);

      sub_252CC3D90(v18[0], v18[1], 0xD000000000000075, 0x8000000252E6F840);

      (*(v3 + 8))(v6, v2);
      goto LABEL_9;
    }
  }

  (*(v3 + 8))(v6, v2);
LABEL_5:
  sub_252AB3FEC(a1, 0, v17);
  memcpy(v18, v17, sizeof(v18));
  if (sub_252956B94(v18) != 1)
  {
    memcpy(v16, v18, sizeof(v16));
    v11 = sub_252BDA558(v16);
    sub_25299F5D4(v17);
    return v11 & 1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544D60);
  *v16 = 0;
  *&v16[8] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E6F7F0);
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6F8C0);
  sub_252CC4050(*v16, *&v16[8], 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000014, 0x8000000252E6F900, 45);

LABEL_9:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2529C8AB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_2529C93AC(a1);
}

uint64_t sub_2529C8B58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return (sub_2529C96D0)(a1, a2);
}

uint64_t sub_2529C8C24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_2529C93AC(a1);
}

uint64_t sub_2529C8CCC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2529C8DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DiscoverHomeRCHStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2529C8E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2529C8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_2529C8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_2529C9074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v11 = v5;
  v11[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_2529C9140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v13 = v6;
  v13[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2529C921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for DiscoverHomeRCHStrategy();
  *v13 = v6;
  v13[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_2529C92F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return (sub_2529C96D0)(a1, a2);
}

uint64_t sub_2529C93AC(uint64_t a1)
{
  v1[128] = a1;
  v2 = sub_252E34164();
  v1[129] = v2;
  v3 = *(v2 - 8);
  v1[130] = v3;
  v4 = *(v3 + 64) + 15;
  v1[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529C946C, 0, 0);
}

uint64_t sub_2529C946C()
{
  v20 = v0;
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = *(v2 + 16);
  v4(v1, v0[128], v3);
  v5 = (*(v2 + 88))(v1, v3);
  v6 = v0[131];
  v7 = v0[130];
  v8 = v0[129];
  if (v5 == *MEMORY[0x277D5C128])
  {
    v9 = v0[128];
    (*(v7 + 8))(v6, v8);
    sub_252AB3FEC(v9, 0, v0 + 65);
    memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
    if (sub_252956B94(v0 + 2) != 1)
    {
      v10 = v0[131];
      memcpy(__dst, v0 + 2, sizeof(__dst));
      v11 = sub_252C9B4DC();
      sub_25299F5D4((v0 + 65));

      v12 = v0[1];

      return v12(v11);
    }
  }

  else
  {
    (*(v7 + 8))(v6, v8);
  }

  v14 = v0[131];
  v15 = v0[129];
  v16 = v0[128];
  sub_2529515FC(2, 4, 0xD000000000000010, 0x8000000252E6F9E0);
  type metadata accessor for DiscoverHomeError();
  sub_2529C9D04(&qword_27F541008, 255, type metadata accessor for DiscoverHomeError);
  swift_allocError();
  v4(v17, v16, v15);
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2529C96D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529C9790, 0, 0);
}

uint64_t sub_2529C9790()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E6F920, 0xD00000000000008ALL, 0x8000000252E6F950);
  v7 = objc_allocWithZone(type metadata accessor for DiscoverHomeIntentHandler());

  [v7 init];
  type metadata accessor for DiscoverHomeIntent();
  v8 = v4;
  sub_252E336E4();
  sub_252E33784();
  v9 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t dispatch thunk of DiscoverHomeRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 96);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25294B7BC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of DiscoverHomeRCHStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25296BC70;

  return v10(a1, a2);
}

uint64_t type metadata accessor for DiscoverHomeError()
{
  result = qword_27F541010;
  if (!qword_27F541010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2529C9D04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529C9D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E34164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2529C9DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E34164();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_2529C9E34(uint64_t a1)
{
  result = sub_252E34164();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2529C9EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_252E34014();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529C9FC8, 0, 0);
}

uint64_t sub_2529C9FC8()
{
  v1 = *(v0 + 208);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v40 = *(v0 + 208);
    v3 = sub_252C285F0();
    v4 = v3;
    v43 = v2;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_39:
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_38;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v11 = sub_252DA124C(0);

      ++v7;
      if (v11)
      {
        MEMORY[0x2530AD700]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v2 = v43;
        v7 = v10;
      }
    }

    v1 = v40;
  }

  *(v0 + 272) = v2;
  v13 = [*(v0 + 200) userTask];
  if (v13)
  {
    v14 = v13;
    if ([v13 taskType] == 4)
    {

LABEL_21:
      v17 = *(v0 + 216);
      v18 = swift_allocObject();
      *(v0 + 280) = v18;
      *(v18 + 16) = v17;
      *(v18 + 24) = v2;

      if (v1)
      {
        v19 = *(v17 + 48);
        v20 = *(v0 + 208);
        v21 = *__swift_project_boxed_opaque_existential_1((v17 + 24), v19);
        v41 = sub_252C10198;

        v22 = swift_task_alloc();
        *(v0 + 288) = v22;
        *v22 = v0;
        v23 = sub_2529CA5D0;
LABEL_25:
        v22[1] = v23;

        return v41(0, v21, v2);
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v36 = *(v0 + 264);
      v37 = *(v0 + 216);
      v38 = sub_252E36AD4();
      __swift_project_value_buffer(v38, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v31 = *(v37 + 96);
      __swift_project_boxed_opaque_existential_1((v37 + 72), v31);
      sub_252AD7CC4();
      v39 = swift_task_alloc();
      *(v0 + 336) = v39;
      *v39 = v0;
      v39[1] = sub_2529CA920;
      v33 = *(v0 + 264);
      v34 = &unk_252E3FD50;
      v35 = v0 + 96;
      goto LABEL_34;
    }

    v16 = [v14 taskType];

    if (v16 == 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = *(v0 + 200);
    sub_252C515AC();
  }

  v24 = *(v0 + 216);
  v18 = swift_allocObject();
  *(v0 + 376) = v18;
  *(v18 + 16) = v24;
  *(v18 + 24) = v2;

  if (v1)
  {
    v25 = *(v24 + 48);
    v26 = *(v0 + 208);
    v21 = *__swift_project_boxed_opaque_existential_1((v24 + 24), v25);
    v41 = sub_252C10354;

    v22 = swift_task_alloc();
    *(v0 + 384) = v22;
    *v22 = v0;
    v23 = sub_2529CB1F8;
    goto LABEL_25;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 248);
  v29 = *(v0 + 216);
  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544D18);
  sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
  v31 = *(v29 + 96);
  __swift_project_boxed_opaque_existential_1((v29 + 72), v31);
  sub_252AD7CC4();
  v32 = swift_task_alloc();
  *(v0 + 432) = v32;
  *v32 = v0;
  v32[1] = sub_2529CB548;
  v33 = *(v0 + 248);
  v34 = &unk_252E3FD38;
  v35 = v0 + 16;
LABEL_34:

  return sub_252BDB88C(v35, v34, v18, v33, 0, 0, 0, v31);
}

uint64_t sub_2529CA5D0(uint64_t a1)
{
  v3 = *(*v2 + 288);
  v4 = *(*v2 + 272);
  v5 = *v2;
  v5[37] = a1;
  v5[38] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2529CA888, 0, 0);
  }

  else
  {
    v6 = v5[26];
    v7 = swift_task_alloc();
    v5[39] = v7;
    *v7 = v5;
    v7[1] = sub_2529CA774;
    v8 = v5[27];

    return sub_252E174F4(v6);
  }
}

uint64_t sub_2529CA774(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_2529CABEC;
  }

  else
  {
    v5 = sub_2529CAA90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529CA888()
{
  v1 = v0[35];
  v2 = v0[26];

  v3 = v0[38];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2529CA920()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 224);
  v8 = *v1;
  *(*v1 + 344) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2529CB168;
  }

  else
  {
    v6 = sub_2529CB030;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2529CAA90()
{
  v1 = v0[37];
  v0[23] = v1;
  v2 = v0 + 23;
  v3 = v0[40];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[32];
  v9 = v0[27];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[44] = v11;
  *(v11 + 16) = v2;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[45] = v12;
  *v12 = v0;
  v12[1] = sub_2529CAC90;
  v13 = v0[32];

  return sub_252BDB88C((v0 + 17), &unk_252E3FA50, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_2529CABEC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);

  v3 = *(v0 + 328);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2529CAC90()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 224);
  v10 = *v1;
  *(*v1 + 368) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_2529CAF70;
  }

  else
  {
    v8 = *(v2 + 352);

    v7 = sub_2529CAE10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2529CAE10()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 320);
  v9 = *(v0 + 296);
  v10 = *(v0 + 280);
  v11 = *(v0 + 208);
  v12 = *(v0 + 192);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);

  v17 = *(v0 + 8);

  return v17();
}