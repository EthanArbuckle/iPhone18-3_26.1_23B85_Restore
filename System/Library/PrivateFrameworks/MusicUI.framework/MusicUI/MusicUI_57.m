void sub_216C687AC(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v193 = type metadata accessor for MenuActionType();
  v8 = MEMORY[0x28223BE20](v193);
  v187 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v186 = &v160 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v170 = &v160 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v169 = &v160 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v175 = &v160 - v17;
  MEMORY[0x28223BE20](v16);
  v174 = &v160 - v18;
  v185 = type metadata accessor for MenuAction();
  v176 = *(v185 - 8);
  v19 = MEMORY[0x28223BE20](v185);
  v168 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v184 = &v160 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v160 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v160 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v181 = &v160 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v179 = &v160 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v160 = &v160 - v34;
  MEMORY[0x28223BE20](v33);
  v162 = &v160 - v35;
  v177 = a3;
  v36 = a3[1];
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_340:
    v193 = *v164;
    if (!v193)
    {
      goto LABEL_381;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_375:
      v38 = sub_216C6B740(v38);
    }

    v152 = v38;
    v154 = *(v38 + 2);
    v38 += 16;
    for (i = v154; i >= 2; *v38 = i)
    {
      if (!*v177)
      {
        goto LABEL_378;
      }

      v155 = &v152[16 * i];
      v156 = *v155;
      v157 = &v38[16 * i];
      v158 = *(v157 + 1);
      sub_216C6A1B4(*v177 + *(v176 + 72) * *v155, *v177 + *(v176 + 72) * *v157, *v177 + *(v176 + 72) * v158, v193);
      if (v5)
      {
        break;
      }

      if (v158 < v156)
      {
        goto LABEL_366;
      }

      if (i - 2 >= *v38)
      {
        goto LABEL_367;
      }

      *v155 = v156;
      *(v155 + 1) = v158;
      v159 = *v38 - i;
      if (*v38 < i)
      {
        goto LABEL_368;
      }

      i = *v38 - 1;
      memmove(v157, v157 + 16, 16 * v159);
    }

LABEL_350:

    return;
  }

  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v163 = a4;
  v188 = v28;
  v189 = v25;
  while (1)
  {
    v39 = v37 + 1;
    v165 = v37;
    if (v37 + 1 < v36)
    {
      v161 = v38;
      v40 = *(v176 + 72);
      v41 = *v177 + v40 * v39;
      v192 = *v177;
      v182 = v36;
      sub_216C67858();
      v180 = v37 + 1;
      v42 = v160;
      sub_216C67858();
      v43 = v162;
      LODWORD(v173) = sub_2169FC538();
      v44 = v42;
      v39 = v180;
      sub_216C677F8(v44, type metadata accessor for MenuAction);
      sub_216C677F8(v43, type metadata accessor for MenuAction);
      v45 = v182;
      v46 = v37 + 2;
      v183 = v40;
      v38 = (v192 + v40 * (v37 + 2));
      while (2)
      {
        v47 = v46;
        if (v39 + 1 < v45)
        {
          v190 = v46;
          v180 = v39;
          v178 = v5;
          sub_216C67858();
          sub_216C67858();
          sub_216C67858();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v49 = 1;
          v50 = 101;
          v191 = v38;
          v192 = v41;
          v51 = 1;
          v52 = 1;
          v53 = 1;
          v54 = 1;
          v55 = 1;
          v56 = 1;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              v50 = 106;
              break;
            case 2:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 301;
              break;
            case 3:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 302;
              break;
            case 4:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 401;
              break;
            case 5:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 407;
              break;
            case 6:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 504;
              break;
            case 7:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 601;
              break;
            case 8:
              v49 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = 0;
              v50 = 904;
              break;
            case 9:
              break;
            case 10:
              v50 = 102;
              break;
            case 11:
              v50 = 103;
              break;
            case 12:
              v50 = 104;
              break;
            case 13:
              v50 = 107;
              break;
            case 14:
              v50 = 201;
              break;
            case 15:
              v50 = 202;
              break;
            case 16:
              v50 = 303;
              break;
            case 17:
              v50 = 402;
              break;
            case 18:
              v50 = 403;
              break;
            case 19:
              v50 = 404;
              break;
            case 20:
              v50 = 405;
              break;
            case 21:
              v50 = 406;
              break;
            case 22:
              v50 = 408;
              break;
            case 23:
              v50 = 409;
              break;
            case 24:
              v50 = 410;
              break;
            case 25:
              v50 = 411;
              break;
            case 26:
              v50 = 412;
              break;
            case 27:
              v50 = 413;
              break;
            case 28:
              v50 = 501;
              break;
            case 29:
              v50 = 502;
              break;
            case 30:
              v50 = 503;
              break;
            case 31:
              v50 = 505;
              break;
            case 32:
              v50 = 602;
              break;
            case 33:
              v50 = 603;
              break;
            case 34:
              v50 = 605;
              break;
            case 35:
              v50 = 604;
              break;
            case 36:
              v50 = 606;
              break;
            case 37:
              v50 = 701;
              break;
            case 38:
              v50 = 702;
              break;
            case 39:
              v55 = 0;
              v50 = 703;
              break;
            case 40:
              v54 = 0;
              v55 = 0;
              v50 = 704;
              break;
            case 41:
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 801;
              break;
            case 42:
              v49 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 903;
              break;
            case 43:
              v49 = 0;
              v51 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 902;
              break;
            case 44:
              v49 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 901;
              break;
            default:
              sub_216C677F8(v174, type metadata accessor for MenuActionType);
              v49 = 1;
              v50 = 105;
              break;
          }

          v57 = v49;
          sub_216C67858();
          v58 = swift_getEnumCaseMultiPayload();
          v59 = 101;
          switch(v58)
          {
            case 1:
              v59 = 106;
              goto LABEL_103;
            case 2:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 301;
              goto LABEL_103;
            case 3:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 302;
              goto LABEL_103;
            case 4:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 401;
              goto LABEL_103;
            case 5:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 407;
              goto LABEL_103;
            case 6:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 504;
              goto LABEL_103;
            case 7:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 601;
              goto LABEL_103;
            case 8:
              if (v56)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 9:
              goto LABEL_103;
            case 10:
              v59 = 102;
              goto LABEL_103;
            case 11:
              v59 = 103;
              goto LABEL_103;
            case 12:
              v59 = 104;
              goto LABEL_103;
            case 13:
              v59 = 107;
              goto LABEL_103;
            case 14:
              v59 = 201;
              goto LABEL_103;
            case 15:
              v59 = 202;
              goto LABEL_103;
            case 16:
              v59 = 303;
              goto LABEL_103;
            case 17:
              v59 = 402;
              goto LABEL_103;
            case 18:
              v59 = 403;
              goto LABEL_103;
            case 19:
              v59 = 404;
              goto LABEL_103;
            case 20:
              v59 = 405;
              goto LABEL_103;
            case 21:
              v59 = 406;
              goto LABEL_103;
            case 22:
              v59 = 408;
              goto LABEL_103;
            case 23:
              v59 = 409;
              goto LABEL_103;
            case 24:
              v59 = 410;
              goto LABEL_103;
            case 25:
              v59 = 411;
              goto LABEL_103;
            case 26:
              v59 = 412;
              goto LABEL_103;
            case 27:
              v59 = 413;
              goto LABEL_103;
            case 28:
              v59 = 501;
              goto LABEL_103;
            case 29:
              v59 = 502;
              goto LABEL_103;
            case 30:
              v59 = 503;
              goto LABEL_103;
            case 31:
              v59 = 505;
              goto LABEL_103;
            case 32:
              v59 = 602;
              goto LABEL_103;
            case 33:
              v59 = 603;
              goto LABEL_103;
            case 34:
              v59 = 605;
              goto LABEL_103;
            case 35:
              v59 = 604;
              goto LABEL_103;
            case 36:
              v59 = 606;
              goto LABEL_103;
            case 37:
              v59 = 701;
              goto LABEL_103;
            case 38:
              v59 = 702;
              goto LABEL_103;
            case 39:
              if (v55)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 40:
              if (v54)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 41:
              if (v53)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 42:
              if (v52)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            case 43:
              if ((v51 & 1) == 0)
              {
                goto LABEL_54;
              }

              goto LABEL_104;
            case 44:
              if (v57)
              {
                goto LABEL_104;
              }

              goto LABEL_54;
            default:
              sub_216C677F8(v175, type metadata accessor for MenuActionType);
              v59 = 105;
LABEL_103:
              if (v50 >= v59)
              {
LABEL_54:
                LOBYTE(v60) = 0;
                v5 = v178;
                v62 = v191;
                v61 = v192;
              }

              else
              {
LABEL_104:
                sub_216C67858();
                v63 = 1;
                v64 = 10;
                v65 = 0;
                v66 = 1;
                switch(swift_getEnumCaseMultiPayload())
                {
                  case 1u:
                  case 9u:
                  case 0xAu:
                  case 0xBu:
                  case 0xCu:
                  case 0xDu:
                    goto LABEL_115;
                  case 2u:
                  case 3u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_109;
                  case 4u:
                  case 5u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_105;
                  case 6u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_117;
                  case 7u:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
                    goto LABEL_113;
                  case 8u:
                  case 0x2Au:
                  case 0x2Bu:
                  case 0x2Cu:
                    v63 = 0;
                    v65 = 1;
                    v64 = 3;
                    goto LABEL_119;
                  case 0xEu:
                  case 0xFu:
                    v64 = 2;
                    goto LABEL_118;
                  case 0x10u:
LABEL_109:
                    v64 = 5;
                    goto LABEL_118;
                  case 0x11u:
                  case 0x12u:
                  case 0x13u:
                  case 0x14u:
                  case 0x15u:
                  case 0x16u:
                  case 0x17u:
                  case 0x18u:
                  case 0x19u:
                  case 0x1Au:
                  case 0x1Bu:
LABEL_105:
                    v66 = 0;
                    v64 = 14;
                    goto LABEL_118;
                  case 0x1Cu:
                  case 0x1Du:
                  case 0x1Eu:
                  case 0x1Fu:
LABEL_117:
                    v64 = 7;
                    goto LABEL_118;
                  case 0x20u:
                  case 0x21u:
                  case 0x22u:
                  case 0x23u:
                  case 0x24u:
LABEL_113:
                    v64 = 4;
                    goto LABEL_118;
                  case 0x25u:
                  case 0x26u:
                  case 0x27u:
                  case 0x28u:
                    v64 = 9;
                    goto LABEL_118;
                  case 0x29u:
                    goto LABEL_119;
                  default:
                    sub_216C677F8(v169, type metadata accessor for MenuActionType);
LABEL_115:
                    v64 = 0;
LABEL_118:
                    v65 = 1;
LABEL_119:
                    sub_216C67858();
                    v67 = swift_getEnumCaseMultiPayload();
                    LOBYTE(v60) = 1;
                    v68 = 8;
                    v5 = v178;
                    v62 = v191;
                    v61 = v192;
                    switch(v67)
                    {
                      case 1:
                      case 9:
                      case 10:
                      case 11:
                      case 12:
                      case 13:
                        goto LABEL_129;
                      case 2:
                      case 3:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        goto LABEL_126;
                      case 4:
                      case 5:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

                        goto LABEL_121;
                      case 6:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        goto LABEL_132;
                      case 7:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
                        goto LABEL_135;
                      case 8:
                      case 42:
                      case 43:
                      case 44:
                        goto LABEL_138;
                      case 14:
                      case 15:
                        v69 = 14663;
                        goto LABEL_137;
                      case 16:
LABEL_126:
                        v69 = 14695;
                        goto LABEL_137;
                      case 17:
                      case 18:
                      case 19:
                      case 20:
                      case 21:
                      case 22:
                      case 23:
                      case 24:
                      case 25:
                      case 26:
                      case 27:
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

LABEL_121:
                        v69 = 359;
                        goto LABEL_137;
                      case 28:
                      case 29:
                      case 30:
                      case 31:
LABEL_132:
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

                        v69 = 487;
                        goto LABEL_137;
                      case 32:
                      case 33:
                      case 34:
                      case 35:
                      case 36:
LABEL_135:
                        if ((v66 & 1) == 0)
                        {
                          goto LABEL_138;
                        }

                        v69 = 503;
LABEL_137:
                        v60 = v69 >> v64;
                        break;
                      case 37:
                      case 38:
                      case 39:
                      case 40:
                        LOBYTE(v60) = v63 & v65;
                        goto LABEL_138;
                      case 41:
                        goto LABEL_130;
                      default:
                        sub_216C677F8(v170, type metadata accessor for MenuActionType);
LABEL_129:
                        v68 = 1;
LABEL_130:
                        LOBYTE(v60) = v68 >= qword_2170588F0[v64];
                        break;
                    }

                    break;
                }
              }

LABEL_138:
              sub_216C677F8(v181, type metadata accessor for MenuAction);
              sub_216C677F8(v179, type metadata accessor for MenuAction);
              v38 = &v62[v183];
              v41 = v61 + v183;
              v39 = v180 + 1;
              v47 = v190;
              v46 = v190 + 1;
              v45 = v182;
              if ((v173 & 1) != (v60 & 1))
              {
                goto LABEL_141;
              }

              continue;
          }
        }

        break;
      }

      v39 = v45;
      if ((v173 & 1) == 0)
      {
        goto LABEL_161;
      }

LABEL_141:
      v70 = v165;
      if (v39 < v165)
      {
        goto LABEL_372;
      }

      if (v165 < v39)
      {
        if (v45 >= v47)
        {
          v71 = v47;
        }

        else
        {
          v71 = v45;
        }

        v72 = v183 * (v71 - 1);
        v73 = v183 * v71;
        v74 = v39;
        v75 = v165 * v183;
        v180 = v74;
        do
        {
          if (v70 != --v74)
          {
            v76 = *v177;
            if (!*v177)
            {
              goto LABEL_379;
            }

            sub_216C67960();
            v77 = v75 < v72 || v76 + v75 >= v76 + v73;
            if (v77)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v75 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_216C67960();
          }

          ++v70;
          v72 -= v183;
          v73 -= v183;
          v75 += v183;
        }

        while (v70 < v74);
        a4 = v163;
        v38 = v161;
        v39 = v180;
      }

      else
      {
LABEL_161:
        a4 = v163;
        v38 = v161;
      }
    }

    v78 = v177[1];
    if (v39 >= v78)
    {
      goto LABEL_284;
    }

    if (__OFSUB__(v39, v165))
    {
      goto LABEL_371;
    }

    if (v39 - v165 >= a4)
    {
LABEL_284:
      v79 = v165;
      goto LABEL_285;
    }

    v79 = v165;
    v80 = v165 + a4;
    if (__OFADD__(v165, a4))
    {
      goto LABEL_373;
    }

    if (v80 >= v78)
    {
      v80 = v177[1];
    }

    if (v80 < v165)
    {
LABEL_374:
      __break(1u);
      goto LABEL_375;
    }

    if (v39 != v80)
    {
      break;
    }

LABEL_285:
    if (v39 < v79)
    {
      goto LABEL_370;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_216938194();
      v38 = v150;
    }

    v106 = v38;
    v107 = *(v38 + 2);
    v108 = v106;
    v109 = *(v106 + 3);
    v110 = v107 + 1;
    v180 = v39;
    if (v107 >= v109 >> 1)
    {
      sub_216938194();
      v108 = v151;
    }

    *(v108 + 2) = v110;
    v111 = v108 + 32;
    v112 = &v108[16 * v107 + 32];
    v113 = v180;
    *v112 = v165;
    *(v112 + 1) = v113;
    v192 = *v164;
    if (!v192)
    {
      goto LABEL_380;
    }

    if (v107)
    {
      v38 = v108;
      while (1)
      {
        v114 = v110 - 1;
        v115 = &v111[16 * v110 - 16];
        v116 = &v38[16 * v110];
        if (v110 >= 4)
        {
          break;
        }

        if (v110 == 3)
        {
          v117 = *(v38 + 4);
          v118 = *(v38 + 5);
          v127 = __OFSUB__(v118, v117);
          v119 = v118 - v117;
          v120 = v127;
LABEL_306:
          if (v120)
          {
            goto LABEL_357;
          }

          v132 = *v116;
          v131 = *(v116 + 1);
          v133 = __OFSUB__(v131, v132);
          v134 = v131 - v132;
          v135 = v133;
          if (v133)
          {
            goto LABEL_360;
          }

          v136 = *(v115 + 1);
          v137 = v136 - *v115;
          if (__OFSUB__(v136, *v115))
          {
            goto LABEL_363;
          }

          if (__OFADD__(v134, v137))
          {
            goto LABEL_365;
          }

          if (v134 + v137 >= v119)
          {
            if (v119 < v137)
            {
              v114 = v110 - 2;
            }

            goto LABEL_328;
          }

          goto LABEL_321;
        }

        if (v110 < 2)
        {
          goto LABEL_359;
        }

        v139 = *v116;
        v138 = *(v116 + 1);
        v127 = __OFSUB__(v138, v139);
        v134 = v138 - v139;
        v135 = v127;
LABEL_321:
        if (v135)
        {
          goto LABEL_362;
        }

        v141 = *v115;
        v140 = *(v115 + 1);
        v127 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v127)
        {
          goto LABEL_364;
        }

        if (v142 < v134)
        {
          goto LABEL_337;
        }

LABEL_328:
        if (v114 - 1 >= v110)
        {
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
          goto LABEL_374;
        }

        if (!*v177)
        {
          goto LABEL_377;
        }

        v146 = &v111[16 * v114 - 16];
        v147 = *v146;
        v38 = &v111[16 * v114];
        v148 = *(v38 + 1);
        sub_216C6A1B4(*v177 + *(v176 + 72) * *v146, *v177 + *(v176 + 72) * *v38, *v177 + *(v176 + 72) * v148, v192);
        if (v5)
        {
          goto LABEL_350;
        }

        if (v148 < v147)
        {
          goto LABEL_352;
        }

        v149 = *(v108 + 2);
        if (v114 > v149)
        {
          goto LABEL_353;
        }

        *v146 = v147;
        v146[1] = v148;
        if (v114 >= v149)
        {
          goto LABEL_354;
        }

        v110 = v149 - 1;
        memmove(&v111[16 * v114], v38 + 16, 16 * (v149 - 1 - v114));
        v38 = v108;
        *(v108 + 2) = v149 - 1;
        if (v149 <= 2)
        {
          goto LABEL_337;
        }
      }

      v121 = &v111[16 * v110];
      v122 = *(v121 - 8);
      v123 = *(v121 - 7);
      v127 = __OFSUB__(v123, v122);
      v124 = v123 - v122;
      if (v127)
      {
        goto LABEL_355;
      }

      v126 = *(v121 - 6);
      v125 = *(v121 - 5);
      v127 = __OFSUB__(v125, v126);
      v119 = v125 - v126;
      v120 = v127;
      if (v127)
      {
        goto LABEL_356;
      }

      v128 = *(v116 + 1);
      v129 = v128 - *v116;
      if (__OFSUB__(v128, *v116))
      {
        goto LABEL_358;
      }

      v127 = __OFADD__(v119, v129);
      v130 = v119 + v129;
      if (v127)
      {
        goto LABEL_361;
      }

      if (v130 >= v124)
      {
        v144 = *v115;
        v143 = *(v115 + 1);
        v127 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v127)
        {
          goto LABEL_369;
        }

        if (v119 < v145)
        {
          v114 = v110 - 2;
        }

        goto LABEL_328;
      }

      goto LABEL_306;
    }

    v38 = v108;
LABEL_337:
    v36 = v177[1];
    v37 = v180;
    a4 = v163;
    if (v180 >= v36)
    {
      goto LABEL_340;
    }
  }

  v161 = v38;
  v178 = v5;
  v81 = *v177;
  v82 = *(v176 + 72);
  v83 = *v177 + v82 * (v39 - 1);
  v182 = -v82;
  v183 = v81;
  v84 = (v165 - v39);
  v166 = v82;
  v85 = v81 + v39 * v82;
  v167 = v80;
  while (2)
  {
    v180 = v39;
    v171 = v85;
    v172 = v84;
    v173 = v83;
    v86 = v84;
LABEL_172:
    v191 = v86;
    sub_216C67858();
    sub_216C67858();
    sub_216C67858();
    v87 = swift_getEnumCaseMultiPayload();
    v88 = 1;
    v89 = 101;
    v192 = v85;
    v90 = 1;
    v91 = 1;
    v92 = 1;
    v93 = 1;
    v94 = 1;
    v95 = 1;
    switch(v87)
    {
      case 1:
        v89 = 106;
        break;
      case 2:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 301;
        break;
      case 3:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 302;
        break;
      case 4:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 401;
        break;
      case 5:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 407;
        break;
      case 6:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 504;
        break;
      case 7:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 601;
        break;
      case 8:
        v88 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v89 = 904;
        break;
      case 9:
        break;
      case 10:
        v89 = 102;
        break;
      case 11:
        v89 = 103;
        break;
      case 12:
        v89 = 104;
        break;
      case 13:
        v89 = 107;
        break;
      case 14:
        v89 = 201;
        break;
      case 15:
        v89 = 202;
        break;
      case 16:
        v89 = 303;
        break;
      case 17:
        v89 = 402;
        break;
      case 18:
        v89 = 403;
        break;
      case 19:
        v89 = 404;
        break;
      case 20:
        v89 = 405;
        break;
      case 21:
        v89 = 406;
        break;
      case 22:
        v89 = 408;
        break;
      case 23:
        v89 = 409;
        break;
      case 24:
        v89 = 410;
        break;
      case 25:
        v89 = 411;
        break;
      case 26:
        v89 = 412;
        break;
      case 27:
        v89 = 413;
        break;
      case 28:
        v89 = 501;
        break;
      case 29:
        v89 = 502;
        break;
      case 30:
        v89 = 503;
        break;
      case 31:
        v89 = 505;
        break;
      case 32:
        v89 = 602;
        break;
      case 33:
        v89 = 603;
        break;
      case 34:
        v89 = 605;
        break;
      case 35:
        v89 = 604;
        break;
      case 36:
        v89 = 606;
        break;
      case 37:
        v89 = 701;
        break;
      case 38:
        v89 = 702;
        break;
      case 39:
        v94 = 0;
        v89 = 703;
        break;
      case 40:
        v93 = 0;
        v94 = 0;
        v89 = 704;
        break;
      case 41:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 801;
        break;
      case 42:
        v88 = 0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 903;
        break;
      case 43:
        v88 = 0;
        v90 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 902;
        break;
      case 44:
        v88 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v89 = 901;
        break;
      default:
        sub_216C677F8(v186, type metadata accessor for MenuActionType);
        v89 = 105;
        break;
    }

    v190 = v89;
    sub_216C67858();
    v96 = swift_getEnumCaseMultiPayload();
    v97 = 101;
    switch(v96)
    {
      case 1:
        v97 = 106;
        goto LABEL_269;
      case 2:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 301;
        goto LABEL_269;
      case 3:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 302;
        goto LABEL_269;
      case 4:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 401;
        goto LABEL_269;
      case 5:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 407;
        goto LABEL_269;
      case 6:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 504;
        goto LABEL_269;
      case 7:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 601;
        goto LABEL_269;
      case 8:
        v98 = v189;
        if ((v95 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 9:
        goto LABEL_269;
      case 10:
        v97 = 102;
        goto LABEL_269;
      case 11:
        v97 = 103;
        goto LABEL_269;
      case 12:
        v97 = 104;
        goto LABEL_269;
      case 13:
        v97 = 107;
        goto LABEL_269;
      case 14:
        v97 = 201;
        goto LABEL_269;
      case 15:
        v97 = 202;
        goto LABEL_269;
      case 16:
        v97 = 303;
        goto LABEL_269;
      case 17:
        v97 = 402;
        goto LABEL_269;
      case 18:
        v97 = 403;
        goto LABEL_269;
      case 19:
        v97 = 404;
        goto LABEL_269;
      case 20:
        v97 = 405;
        goto LABEL_269;
      case 21:
        v97 = 406;
        goto LABEL_269;
      case 22:
        v97 = 408;
        goto LABEL_269;
      case 23:
        v97 = 409;
        goto LABEL_269;
      case 24:
        v97 = 410;
        goto LABEL_269;
      case 25:
        v97 = 411;
        goto LABEL_269;
      case 26:
        v97 = 412;
        goto LABEL_269;
      case 27:
        v97 = 413;
        goto LABEL_269;
      case 28:
        v97 = 501;
        goto LABEL_269;
      case 29:
        v97 = 502;
        goto LABEL_269;
      case 30:
        v97 = 503;
        goto LABEL_269;
      case 31:
        v97 = 505;
        goto LABEL_269;
      case 32:
        v97 = 602;
        goto LABEL_269;
      case 33:
        v97 = 603;
        goto LABEL_269;
      case 34:
        v97 = 605;
        goto LABEL_269;
      case 35:
        v97 = 604;
        goto LABEL_269;
      case 36:
        v97 = 606;
        goto LABEL_269;
      case 37:
        v97 = 701;
        goto LABEL_269;
      case 38:
        v97 = 702;
        goto LABEL_269;
      case 39:
        v98 = v189;
        if ((v94 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 40:
        v98 = v189;
        if ((v93 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 41:
        v98 = v189;
        if ((v92 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 42:
        v98 = v189;
        if ((v91 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 43:
        v98 = v189;
        if ((v90 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      case 44:
        v98 = v189;
        if ((v88 & 1) == 0)
        {
          goto LABEL_281;
        }

        goto LABEL_270;
      default:
        sub_216C677F8(v187, type metadata accessor for MenuActionType);
        v97 = 105;
LABEL_269:
        v98 = v189;
        if (v190 >= v97)
        {
LABEL_281:
          sub_216C677F8(v98, type metadata accessor for MenuAction);
          sub_216C677F8(v188, type metadata accessor for MenuAction);
LABEL_282:
          v39 = v180 + 1;
          v83 = v173 + v166;
          v84 = v172 - 1;
          v85 = v171 + v166;
          if (v180 + 1 == v167)
          {
            v39 = v167;
            v5 = v178;
            v38 = v161;
            goto LABEL_284;
          }

          continue;
        }

LABEL_270:
        v99 = v188;
        v100 = sub_216BADF14();
        v101 = sub_216BADF14();
        if (v101 > 0xEu)
        {
          v102 = 0;
        }

        else
        {
          v102 = qword_2170588F0[v101];
        }

        v103 = v192;
        if (v100 > 0xEu)
        {
          v104 = 0;
        }

        else
        {
          v104 = qword_2170588F0[v100];
        }

        sub_216C677F8(v98, type metadata accessor for MenuAction);
        sub_216C677F8(v99, type metadata accessor for MenuAction);
        if (v102 < v104)
        {
          goto LABEL_282;
        }

        v105 = v191;
        if (v183)
        {
          sub_216C67960();
          swift_arrayInitWithTakeFrontToBack();
          sub_216C67960();
          v83 += v182;
          v85 = v103 + v182;
          v77 = __CFADD__(v105, 1);
          v86 = v105 + 1;
          if (v77)
          {
            goto LABEL_282;
          }

          goto LABEL_172;
        }

        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_216C6A1B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v102 = type metadata accessor for MenuActionType();
  v8 = MEMORY[0x28223BE20](v102);
  v85 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v84 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v84 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v84 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v84 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v94 = &v84 - v19;
  MEMORY[0x28223BE20](v18);
  v93 = &v84 - v20;
  v95 = type metadata accessor for MenuAction();
  v21 = MEMORY[0x28223BE20](v95);
  v96 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v101 = &v84 - v25;
  result = MEMORY[0x28223BE20](v24);
  v100 = &v84 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
    return result;
  }

  v31 = a2 - a1;
  v32 = a2 - a1 == 0x8000000000000000 && v30 == -1;
  if (v32)
  {
    goto LABEL_313;
  }

  v33 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_314;
  }

  v86 = v27;
  v35 = v31 / v30;
  v105 = a1;
  v104 = a4;
  v36 = v33 / v30;
  if (v31 / v30 >= v33 / v30)
  {
    sub_2169395E4(a2, v33 / v30, a4);
    v58 = a4 + v36 * v30;
    v59 = -v30;
    v60 = v58;
    v97 = a4;
    v98 = a1;
    v101 = -v30;
    while (1)
    {
      v61 = a3;
      v90 = v60;
      v99 = a2;
      v92 = a2 + v59;
LABEL_173:
      if (v58 <= a4)
      {
        v105 = a2;
        goto LABEL_310;
      }

      if (a2 <= a1)
      {
        break;
      }

      v91 = v60;
      v100 = v58;
      v93 = v58 + v59;
      v94 = v61;
      sub_216C67858();
      sub_216C67858();
      sub_216C67858();
      v62 = 1;
      v63 = 101;
      v64 = 1;
      v65 = 1;
      v66 = 1;
      v67 = 1;
      v68 = 1;
      v69 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v63 = 106;
          break;
        case 2u:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v63 = 301;
          break;
        case 3u:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v63 = 302;
          break;
        case 4u:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v63 = 401;
          break;
        case 5u:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v63 = 407;
          break;
        case 6u:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v63 = 504;
          break;
        case 7u:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v63 = 601;
          break;
        case 8u:
          v62 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v63 = 904;
          break;
        case 9u:
          break;
        case 0xAu:
          v63 = 102;
          break;
        case 0xBu:
          v63 = 103;
          break;
        case 0xCu:
          v63 = 104;
          break;
        case 0xDu:
          v63 = 107;
          break;
        case 0xEu:
          v63 = 201;
          break;
        case 0xFu:
          v63 = 202;
          break;
        case 0x10u:
          v63 = 303;
          break;
        case 0x11u:
          v63 = 402;
          break;
        case 0x12u:
          v63 = 403;
          break;
        case 0x13u:
          v63 = 404;
          break;
        case 0x14u:
          v63 = 405;
          break;
        case 0x15u:
          v63 = 406;
          break;
        case 0x16u:
          v63 = 408;
          break;
        case 0x17u:
          v63 = 409;
          break;
        case 0x18u:
          v63 = 410;
          break;
        case 0x19u:
          v63 = 411;
          break;
        case 0x1Au:
          v63 = 412;
          break;
        case 0x1Bu:
          v63 = 413;
          break;
        case 0x1Cu:
          v63 = 501;
          break;
        case 0x1Du:
          v63 = 502;
          break;
        case 0x1Eu:
          v63 = 503;
          break;
        case 0x1Fu:
          v63 = 505;
          break;
        case 0x20u:
          v63 = 602;
          break;
        case 0x21u:
          v63 = 603;
          break;
        case 0x22u:
          v63 = 605;
          break;
        case 0x23u:
          v63 = 604;
          break;
        case 0x24u:
          v63 = 606;
          break;
        case 0x25u:
          v63 = 701;
          break;
        case 0x26u:
          v63 = 702;
          break;
        case 0x27u:
          v68 = 0;
          v63 = 703;
          break;
        case 0x28u:
          v67 = 0;
          v68 = 0;
          v63 = 704;
          break;
        case 0x29u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v63 = 801;
          break;
        case 0x2Au:
          v62 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v63 = 903;
          break;
        case 0x2Bu:
          v62 = 0;
          v64 = 0;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v63 = 902;
          break;
        case 0x2Cu:
          v62 = 0;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v63 = 901;
          break;
        default:
          sub_216C677F8(v87, type metadata accessor for MenuActionType);
          v63 = 105;
          break;
      }

      sub_216C67858();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v71 = 101;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v71 = 106;
          goto LABEL_272;
        case 2:
          sub_216C677F8(v88, type metadata accessor for MenuActionType);
          v71 = 301;
          goto LABEL_272;
        case 3:
          sub_216C677F8(v88, type metadata accessor for MenuActionType);
          v71 = 302;
          goto LABEL_272;
        case 4:
          sub_216C677F8(v88, type metadata accessor for MenuActionType);
          v71 = 401;
          goto LABEL_272;
        case 5:
          sub_216C677F8(v88, type metadata accessor for MenuActionType);
          v71 = 407;
          goto LABEL_272;
        case 6:
          sub_216C677F8(v88, type metadata accessor for MenuActionType);
          v71 = 504;
          goto LABEL_272;
        case 7:
          sub_216C677F8(v88, type metadata accessor for MenuActionType);
          v71 = 601;
          goto LABEL_272;
        case 8:
          if (v69)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 9:
          goto LABEL_272;
        case 10:
          v71 = 102;
          goto LABEL_272;
        case 11:
          v71 = 103;
          goto LABEL_272;
        case 12:
          v71 = 104;
          goto LABEL_272;
        case 13:
          v71 = 107;
          goto LABEL_272;
        case 14:
          v71 = 201;
          goto LABEL_272;
        case 15:
          v71 = 202;
          goto LABEL_272;
        case 16:
          v71 = 303;
          goto LABEL_272;
        case 17:
          v71 = 402;
          goto LABEL_272;
        case 18:
          v71 = 403;
          goto LABEL_272;
        case 19:
          v71 = 404;
          goto LABEL_272;
        case 20:
          v71 = 405;
          goto LABEL_272;
        case 21:
          v71 = 406;
          goto LABEL_272;
        case 22:
          v71 = 408;
          goto LABEL_272;
        case 23:
          v71 = 409;
          goto LABEL_272;
        case 24:
          v71 = 410;
          goto LABEL_272;
        case 25:
          v71 = 411;
          goto LABEL_272;
        case 26:
          v71 = 412;
          goto LABEL_272;
        case 27:
          v71 = 413;
          goto LABEL_272;
        case 28:
          v71 = 501;
          goto LABEL_272;
        case 29:
          v71 = 502;
          goto LABEL_272;
        case 30:
          v71 = 503;
          goto LABEL_272;
        case 31:
          v71 = 505;
          goto LABEL_272;
        case 32:
          v71 = 602;
          goto LABEL_272;
        case 33:
          v71 = 603;
          goto LABEL_272;
        case 34:
          v71 = 605;
          goto LABEL_272;
        case 35:
          v71 = 604;
          goto LABEL_272;
        case 36:
          v71 = 606;
          goto LABEL_272;
        case 37:
          v71 = 701;
          goto LABEL_272;
        case 38:
          v71 = 702;
          goto LABEL_272;
        case 39:
          if (v68)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 40:
          if (v67)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 41:
          if (v66)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 42:
          if (v65)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        case 43:
          if ((v64 & 1) == 0)
          {
            goto LABEL_223;
          }

          goto LABEL_273;
        case 44:
          if (v62)
          {
            goto LABEL_273;
          }

          goto LABEL_223;
        default:
          sub_216C677F8(v88, type metadata accessor for MenuActionType);
          v71 = 105;
LABEL_272:
          if (v63 >= v71)
          {
LABEL_223:
            v73 = v93;
            v72 = v94;
            v74 = 0;
            a4 = v97;
            a1 = v98;
            a2 = v99;
            v75 = v86;
            v76 = v101;
          }

          else
          {
LABEL_273:
            v75 = v86;
            sub_216C67858();
            v77 = 10;
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
              case 9u:
              case 0xAu:
              case 0xBu:
              case 0xCu:
              case 0xDu:
                goto LABEL_284;
              case 2u:
              case 3u:
                sub_216C677F8(v85, type metadata accessor for MenuActionType);
                goto LABEL_278;
              case 4u:
              case 5u:
                sub_216C677F8(v85, type metadata accessor for MenuActionType);
                goto LABEL_274;
              case 6u:
                sub_216C677F8(v85, type metadata accessor for MenuActionType);
                goto LABEL_286;
              case 7u:
                sub_216C677F8(v85, type metadata accessor for MenuActionType);
                goto LABEL_282;
              case 8u:
              case 0x2Au:
              case 0x2Bu:
              case 0x2Cu:
                v77 = 3;
                break;
              case 0xEu:
              case 0xFu:
                v77 = 2;
                break;
              case 0x10u:
LABEL_278:
                v77 = 5;
                break;
              case 0x11u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
LABEL_274:
                v77 = 14;
                break;
              case 0x1Cu:
              case 0x1Du:
              case 0x1Eu:
              case 0x1Fu:
LABEL_286:
                v77 = 7;
                break;
              case 0x20u:
              case 0x21u:
              case 0x22u:
              case 0x23u:
              case 0x24u:
LABEL_282:
                v77 = 4;
                break;
              case 0x25u:
              case 0x26u:
              case 0x27u:
              case 0x28u:
                v77 = 9;
                break;
              case 0x29u:
                break;
              default:
                sub_216C677F8(v85, type metadata accessor for MenuActionType);
LABEL_284:
                v77 = 0;
                break;
            }

            v78 = sub_216BADF14();
            a4 = v97;
            a1 = v98;
            a2 = v99;
            v76 = v101;
            if (v78 > 0xEu)
            {
              v79 = 0;
            }

            else
            {
              v79 = qword_2170588F0[v78];
            }

            v73 = v93;
            v72 = v94;
            v74 = v79 >= qword_2170588F0[v77];
          }

          a3 = v72 + v76;
          sub_216C677F8(v96, type metadata accessor for MenuAction);
          sub_216C677F8(v75, type metadata accessor for MenuAction);
          if (!v74)
          {
            if (v72 < v100 || a3 >= v100)
            {
              swift_arrayInitWithTakeFrontToBack();
              v61 = a3;
              v58 = v73;
              v60 = v73;
              v59 = v101;
            }

            else
            {
              v60 = v73;
              v61 = a3;
              v58 = v73;
              v59 = v101;
              if (v100 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
                v61 = a3;
                v58 = v73;
                v60 = v73;
              }
            }

            goto LABEL_173;
          }

          v81 = v72 < a2 || a3 >= a2;
          v82 = v92;
          if (v81)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v82;
            v60 = v91;
            v58 = v100;
            v59 = v101;
          }

          else
          {
            v60 = v91;
            v32 = v72 == a2;
            a2 = v92;
            v58 = v100;
            v59 = v101;
            if (!v32)
            {
              v83 = v91;
              swift_arrayInitWithTakeBackToFront();
              v58 = v100;
              a2 = v82;
              v60 = v83;
            }
          }

          break;
      }
    }

    v105 = a2;
    v60 = v90;
LABEL_310:
    v103 = v60;
  }

  else
  {
    sub_2169395E4(a1, v31 / v30, a4);
    v96 = a4 + v35 * v30;
    v103 = v96;
    v91 = v30;
    v92 = a3;
    while (a4 < v96 && a2 < a3)
    {
      v98 = a1;
      v99 = a2;
      sub_216C67858();
      v97 = a4;
      sub_216C67858();
      sub_216C67858();
      v38 = 1;
      v39 = 101;
      v40 = 1;
      v41 = 1;
      v42 = 1;
      v43 = 1;
      v44 = 1;
      v45 = 1;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v39 = 106;
          break;
        case 2u:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v39 = 301;
          break;
        case 3u:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v39 = 302;
          break;
        case 4u:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v39 = 401;
          break;
        case 5u:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v39 = 407;
          break;
        case 6u:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v39 = 504;
          break;
        case 7u:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v39 = 601;
          break;
        case 8u:
          v38 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v39 = 904;
          break;
        case 9u:
          break;
        case 0xAu:
          v39 = 102;
          break;
        case 0xBu:
          v39 = 103;
          break;
        case 0xCu:
          v39 = 104;
          break;
        case 0xDu:
          v39 = 107;
          break;
        case 0xEu:
          v39 = 201;
          break;
        case 0xFu:
          v39 = 202;
          break;
        case 0x10u:
          v39 = 303;
          break;
        case 0x11u:
          v39 = 402;
          break;
        case 0x12u:
          v39 = 403;
          break;
        case 0x13u:
          v39 = 404;
          break;
        case 0x14u:
          v39 = 405;
          break;
        case 0x15u:
          v39 = 406;
          break;
        case 0x16u:
          v39 = 408;
          break;
        case 0x17u:
          v39 = 409;
          break;
        case 0x18u:
          v39 = 410;
          break;
        case 0x19u:
          v39 = 411;
          break;
        case 0x1Au:
          v39 = 412;
          break;
        case 0x1Bu:
          v39 = 413;
          break;
        case 0x1Cu:
          v39 = 501;
          break;
        case 0x1Du:
          v39 = 502;
          break;
        case 0x1Eu:
          v39 = 503;
          break;
        case 0x1Fu:
          v39 = 505;
          break;
        case 0x20u:
          v39 = 602;
          break;
        case 0x21u:
          v39 = 603;
          break;
        case 0x22u:
          v39 = 605;
          break;
        case 0x23u:
          v39 = 604;
          break;
        case 0x24u:
          v39 = 606;
          break;
        case 0x25u:
          v39 = 701;
          break;
        case 0x26u:
          v39 = 702;
          break;
        case 0x27u:
          v44 = 0;
          v39 = 703;
          break;
        case 0x28u:
          v43 = 0;
          v44 = 0;
          v39 = 704;
          break;
        case 0x29u:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v39 = 801;
          break;
        case 0x2Au:
          v38 = 0;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v39 = 903;
          break;
        case 0x2Bu:
          v38 = 0;
          v40 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v39 = 902;
          break;
        case 0x2Cu:
          v38 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v39 = 901;
          break;
        default:
          sub_216C677F8(v93, type metadata accessor for MenuActionType);
          v39 = 105;
          break;
      }

      sub_216C67858();
      v46 = swift_getEnumCaseMultiPayload();
      v47 = 101;
      switch(v46)
      {
        case 1:
          v47 = 106;
          goto LABEL_113;
        case 2:
          sub_216C677F8(v94, type metadata accessor for MenuActionType);
          v47 = 301;
          goto LABEL_113;
        case 3:
          sub_216C677F8(v94, type metadata accessor for MenuActionType);
          v47 = 302;
          goto LABEL_113;
        case 4:
          sub_216C677F8(v94, type metadata accessor for MenuActionType);
          v47 = 401;
          goto LABEL_113;
        case 5:
          sub_216C677F8(v94, type metadata accessor for MenuActionType);
          v47 = 407;
          goto LABEL_113;
        case 6:
          sub_216C677F8(v94, type metadata accessor for MenuActionType);
          v47 = 504;
          goto LABEL_113;
        case 7:
          sub_216C677F8(v94, type metadata accessor for MenuActionType);
          v47 = 601;
          goto LABEL_113;
        case 8:
          a3 = v92;
          if ((v45 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 9:
          goto LABEL_113;
        case 10:
          v47 = 102;
          goto LABEL_113;
        case 11:
          v47 = 103;
          goto LABEL_113;
        case 12:
          v47 = 104;
          goto LABEL_113;
        case 13:
          v47 = 107;
          goto LABEL_113;
        case 14:
          v47 = 201;
          goto LABEL_113;
        case 15:
          v47 = 202;
          goto LABEL_113;
        case 16:
          v47 = 303;
          goto LABEL_113;
        case 17:
          v47 = 402;
          goto LABEL_113;
        case 18:
          v47 = 403;
          goto LABEL_113;
        case 19:
          v47 = 404;
          goto LABEL_113;
        case 20:
          v47 = 405;
          goto LABEL_113;
        case 21:
          v47 = 406;
          goto LABEL_113;
        case 22:
          v47 = 408;
          goto LABEL_113;
        case 23:
          v47 = 409;
          goto LABEL_113;
        case 24:
          v47 = 410;
          goto LABEL_113;
        case 25:
          v47 = 411;
          goto LABEL_113;
        case 26:
          v47 = 412;
          goto LABEL_113;
        case 27:
          v47 = 413;
          goto LABEL_113;
        case 28:
          v47 = 501;
          goto LABEL_113;
        case 29:
          v47 = 502;
          goto LABEL_113;
        case 30:
          v47 = 503;
          goto LABEL_113;
        case 31:
          v47 = 505;
          goto LABEL_113;
        case 32:
          v47 = 602;
          goto LABEL_113;
        case 33:
          v47 = 603;
          goto LABEL_113;
        case 34:
          v47 = 605;
          goto LABEL_113;
        case 35:
          v47 = 604;
          goto LABEL_113;
        case 36:
          v47 = 606;
          goto LABEL_113;
        case 37:
          v47 = 701;
          goto LABEL_113;
        case 38:
          v47 = 702;
          goto LABEL_113;
        case 39:
          a3 = v92;
          if ((v44 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 40:
          a3 = v92;
          if ((v43 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 41:
          a3 = v92;
          if ((v42 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 42:
          a3 = v92;
          if ((v41 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 43:
          a3 = v92;
          if ((v40 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        case 44:
          a3 = v92;
          if ((v38 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_114;
        default:
          sub_216C677F8(v94, type metadata accessor for MenuActionType);
          v47 = 105;
LABEL_113:
          a3 = v92;
          if (v39 >= v47)
          {
LABEL_151:
            sub_216C677F8(v101, type metadata accessor for MenuAction);
            sub_216C677F8(v100, type metadata accessor for MenuAction);
LABEL_152:
            v54 = v98;
            v55 = v91;
            a4 = v97 + v91;
            v56 = v98 < v97 || v98 >= a4;
            a2 = v99;
            if (v56)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v98 != v97)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v104 = a4;
          }

          else
          {
LABEL_114:
            sub_216C67858();
            v48 = 10;
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
              case 9u:
              case 0xAu:
              case 0xBu:
              case 0xCu:
              case 0xDu:
                goto LABEL_125;
              case 2u:
              case 3u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_119;
              case 4u:
              case 5u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_115;
              case 6u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_127;
              case 7u:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
                goto LABEL_123;
              case 8u:
              case 0x2Au:
              case 0x2Bu:
              case 0x2Cu:
                v48 = 3;
                break;
              case 0xEu:
              case 0xFu:
                v48 = 2;
                break;
              case 0x10u:
LABEL_119:
                v48 = 5;
                break;
              case 0x11u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
LABEL_115:
                v48 = 14;
                break;
              case 0x1Cu:
              case 0x1Du:
              case 0x1Eu:
              case 0x1Fu:
LABEL_127:
                v48 = 7;
                break;
              case 0x20u:
              case 0x21u:
              case 0x22u:
              case 0x23u:
              case 0x24u:
LABEL_123:
                v48 = 4;
                break;
              case 0x25u:
              case 0x26u:
              case 0x27u:
              case 0x28u:
                v48 = 9;
                break;
              case 0x29u:
                break;
              default:
                sub_216C677F8(v89, type metadata accessor for MenuActionType);
LABEL_125:
                v48 = 0;
                break;
            }

            sub_216C67858();
            v49 = 8;
            switch(swift_getEnumCaseMultiPayload())
            {
              case 1u:
              case 9u:
              case 0xAu:
              case 0xBu:
              case 0xCu:
              case 0xDu:
                goto LABEL_141;
              case 2u:
              case 3u:
                sub_216C677F8(v90, type metadata accessor for MenuActionType);
                goto LABEL_138;
              case 4u:
              case 5u:
                sub_216C677F8(v90, type metadata accessor for MenuActionType);
                goto LABEL_129;
              case 6u:
                sub_216C677F8(v90, type metadata accessor for MenuActionType);
                goto LABEL_145;
              case 7u:
                sub_216C677F8(v90, type metadata accessor for MenuActionType);
                goto LABEL_148;
              case 8u:
              case 0x2Au:
              case 0x2Bu:
              case 0x2Cu:
                goto LABEL_162;
              case 0xEu:
              case 0xFu:
                v50 = 1 << v48;
                v51 = 18104;
                goto LABEL_150;
              case 0x10u:
LABEL_138:
                v50 = 1 << v48;
                v51 = 18072;
                goto LABEL_150;
              case 0x11u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
              case 0x19u:
              case 0x1Au:
              case 0x1Bu:
LABEL_129:
                if (v48 > 0xA)
                {
                  goto LABEL_162;
                }

                v50 = 1 << v48;
                v51 = 1688;
                goto LABEL_150;
              case 0x1Cu:
              case 0x1Du:
              case 0x1Eu:
              case 0x1Fu:
LABEL_145:
                if (v48 > 0xA)
                {
                  goto LABEL_162;
                }

                v50 = 1 << v48;
                v51 = 1560;
                goto LABEL_150;
              case 0x20u:
              case 0x21u:
              case 0x22u:
              case 0x23u:
              case 0x24u:
LABEL_148:
                if (v48 > 0xA)
                {
                  goto LABEL_162;
                }

                v50 = 1 << v48;
                v51 = 1544;
LABEL_150:
                if ((v50 & v51) != 0)
                {
                  goto LABEL_151;
                }

LABEL_162:
                sub_216C677F8(v101, type metadata accessor for MenuAction);
                sub_216C677F8(v100, type metadata accessor for MenuAction);
LABEL_163:
                v54 = v98;
                v55 = v91;
                a2 = v99 + v91;
                v57 = v98 < v99 || v98 >= a2;
                a4 = v97;
                if (v57)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v98 != v99)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                break;
              case 0x25u:
              case 0x26u:
              case 0x27u:
              case 0x28u:
                if (v48 == 3 || v48 == 10)
                {
                  goto LABEL_151;
                }

                goto LABEL_162;
              case 0x29u:
                goto LABEL_142;
              default:
                sub_216C677F8(v90, type metadata accessor for MenuActionType);
LABEL_141:
                v49 = 1;
LABEL_142:
                v53 = qword_2170588F0[v48];
                sub_216C677F8(v101, type metadata accessor for MenuAction);
                sub_216C677F8(v100, type metadata accessor for MenuAction);
                if (v49 >= v53)
                {
                  goto LABEL_163;
                }

                goto LABEL_152;
            }
          }

          a1 = v54 + v55;
          v105 = a1;
          break;
      }
    }
  }

  sub_216C6B76C(&v105, &v104, &v103, type metadata accessor for MenuAction);
  return 1;
}

void sub_216C6B76C(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_34();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_216C6B848(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_216C6B874(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD2A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_216C6BBEC()
{
  v1 = sub_217009684();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4];
  sub_217009634();
  v12 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75C0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC75C8);
  v7 = sub_2166D9530(&qword_27CAC75D0, &qword_27CAC75C8);
  v13 = v6;
  v14 = v7;
  swift_getOpaqueTypeConformance2();
  sub_217008B94();
  OUTLINED_FUNCTION_3_14();
  v9 = sub_2166D9530(v8, &qword_27CAC75B8);
  MEMORY[0x21CE9A570](v5, v2, v9);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_216C6BE00()
{
  v1 = sub_21700D8E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SocialProfileToolbarContent(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_216C6C540(v0, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialProfileToolbarContent);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_216C6C46C(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v15[4] = sub_216C6C4D0;
  v15[5] = v9;
  v10 = (v0 + *(type metadata accessor for SocialProfileDescriptor(0) + 20));
  v12 = *v10;
  v11 = v10[1];
  v15[3] = MEMORY[0x277D837D0];
  v15[0] = v12;
  v15[1] = v11;
  memset(v14, 0, sizeof(v14));
  sub_21700DF14();
  sub_21700D854();
  sub_216697664(v14, &unk_27CABF7A0);
  sub_216697664(v15, &unk_27CABF7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75C8);
  sub_2166D9530(&qword_27CAC75D0, &qword_27CAC75C8);
  sub_21700A204();
  (*(v2 + 8))(v4, v1);
}

double sub_216C6C09C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for SocialProfileContextMenu();
  sub_216C6C540(a1, a2 + v10[9], type metadata accessor for SocialProfileDescriptor);
  v11 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[10];
  sub_216681B04(v9, v12, &qword_27CAB6A00);
  v13 = type metadata accessor for MenuConfiguration(0);
  sub_216C6C540(v6, v12 + v13[5], type metadata accessor for MenuContext);
  v14 = (v12 + v13[6]);
  *v14 = 0;
  v14[1] = 0;
  *(v12 + v13[7]) = 0;
  sub_216681B04(v23, v12 + v13[8], &qword_27CAB6DB0);
  sub_2168CD6E4(v6);
  sub_216697664(v23, &qword_27CAB6DB0);
  sub_216697664(v9, &qword_27CAB6A00);
  v15 = (v12 + v13[9]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  type metadata accessor for MenuBuilder();
  sub_216C6C5A0(qword_280E45220, type metadata accessor for MenuBuilder);
  *a2 = sub_217008CF4();
  a2[1] = v16;
  type metadata accessor for SocialGraphController();
  sub_216C6C5A0(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  a2[2] = sub_217008CF4();
  a2[3] = v17;
  type metadata accessor for UserSocialProfileCoordinator();
  sub_216C6C5A0(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  a2[4] = sub_217008CF4();
  a2[5] = v18;
  v19 = v10[7];
  *(a2 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v20 = v10[8];
  v22[1] = 0;
  sub_21700AEA4();
  result = *v23;
  *(a2 + v20) = v23[0];
  return result;
}

uint64_t sub_216C6C46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfileToolbarContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_216C6C4D0@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SocialProfileToolbarContent(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_216C6C09C(v4, a1);
}

uint64_t sub_216C6C540(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C6C5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C6C5E8@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 4:
      if (*(v1 + 48))
      {
        goto LABEL_79;
      }

      if (*(v1 + 16))
      {
        goto LABEL_74;
      }

      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (!*(v1 + 32))
      {
        goto LABEL_90;
      }

      goto LABEL_78;
    case 5:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 6:
      if (*(v1 + 96))
      {
        goto LABEL_11;
      }

      if (*(v1 + 32))
      {
        goto LABEL_47;
      }

      goto LABEL_90;
    case 7:
      if (*(v1 + 96))
      {
LABEL_11:
        OUTLINED_FUNCTION_0_212();
      }

      else
      {
        if (!*(v1 + 32))
        {
          goto LABEL_90;
        }

LABEL_47:
        OUTLINED_FUNCTION_2_147();
      }

      sub_21700DF14();
      OUTLINED_FUNCTION_1_182();
      OUTLINED_FUNCTION_3_138();
      goto LABEL_80;
    case 8:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 9:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xA:
      goto LABEL_90;
    case 0xB:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xC:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xD:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0xE:
      if (*(v1 + 48))
      {
        goto LABEL_79;
      }

      if (*(v1 + 16))
      {
        goto LABEL_74;
      }

      if (*(v1 + 96))
      {
LABEL_39:
        OUTLINED_FUNCTION_0_212();
      }

      else
      {
        if (!*(v1 + 32))
        {
LABEL_90:
          v4 = sub_217006924();

          return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
        }

LABEL_78:
        OUTLINED_FUNCTION_2_147();
      }

LABEL_79:
      sub_21700DF14();
      v3 = OUTLINED_FUNCTION_1_182();
LABEL_80:

      return MEMORY[0x282189628](v3);
    case 0xF:
      if (*(v1 + 48))
      {
        goto LABEL_79;
      }

      if (!*(v1 + 16))
      {
        goto LABEL_90;
      }

LABEL_74:
      sub_21700DF14();
      goto LABEL_79;
    case 0x10:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x11:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x12:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x13:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x14:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x15:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    case 0x16:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
    default:
      if (*(v1 + 96))
      {
        goto LABEL_39;
      }

      if (*(v1 + 32))
      {
        goto LABEL_78;
      }

      goto LABEL_90;
  }
}

uint64_t sub_216C6CCFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = type metadata accessor for ContentDescriptor();
  sub_2167DE934(v0 + *(v4 + 24), v3);
  v5 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216846CF0(v3);
    v6 = 0;
  }

  else
  {
    v7 = sub_217005DF4();
    (*(*(v5 - 8) + 8))(v3, v5);
    v9[0] = &unk_28290EE78;
    v9[1] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    sub_21695BC68();
    v6 = sub_21700EC64();
  }

  return v6 & 1;
}

uint64_t sub_216C6CE58()
{
  if (v0[6])
  {
    goto LABEL_5;
  }

  if (v0[2])
  {
    goto LABEL_4;
  }

  if (v0[12])
  {
    goto LABEL_5;
  }

  if (v0[4])
  {
LABEL_4:
    sub_21700DF14();
LABEL_5:
    sub_21700DF14();
    return sub_21700BA64();
  }

  return 0;
}

uint64_t sub_216C6CEE4(char a1)
{
  result = 0x736D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x75632D656C707061;
      break;
    case 2:
      result = 0x73747369747261;
      break;
    case 3:
      result = 0x612D746964657263;
      break;
    case 4:
      result = 0x73726F7461727563;
      break;
    case 5:
      result = 0x6169726F74696465;
      break;
    case 6:
      result = 0x6F6D2D636973756DLL;
      break;
    case 7:
      result = 0x69762D636973756DLL;
      break;
    case 8:
      result = 0x7473696C79616C70;
      break;
    case 9:
      result = 0x736E6F6974617473;
      break;
    case 10:
      result = 0x6C2D64726F636572;
      break;
    case 11:
      result = 0x702D6C6169636F73;
      break;
    case 12:
      result = 0x73676E6F73;
      break;
    case 13:
      v3 = 0x6970652D7674;
      goto LABEL_16;
    case 14:
      v3 = 0x6165732D7674;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F73000000000000;
      break;
    case 15:
      result = 0x73776F68732D7674;
      break;
    case 16:
    case 17:
      result = 0x646564616F6C7075;
      break;
    case 18:
      result = 0x2D7972617262696CLL;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216C6D16C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216C6D1E0()
{
  sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_17();
  v3 = type metadata accessor for AlbumTrackLockup();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  sub_2168ABD3C();
  LOBYTE(v4) = *(v7 + *(v4 + 64));
  sub_216C6DF84(v7, type metadata accessor for AlbumTrackLockup);
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    sub_2168C032C();
    sub_216C6DC84(v1, MEMORY[0x277CD83B8], MEMORY[0x277CD8378]);
    v9 = OUTLINED_FUNCTION_4_120();
    v10(v9);
    v8 = v0 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_216C6D33C(uint64_t a1)
{
  v2 = sub_21700BA94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_21700BAB4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  sub_216C6DF14(a1, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    (*(v16 + 32))(v22, v13, v14);
    (*(v16 + 16))(v20, v22, v14);
    v23 = (*(v16 + 88))(v20, v14);
    if (v23 == *MEMORY[0x277D2AE90])
    {
      (*(v16 + 96))(v20, v14);
      (*(v4 + 32))(v10, v20, v2);
      v24 = v8;
      (*(v4 + 16))(v8, v10, v2);
      if ((*(v4 + 88))(v8, v2) != *MEMORY[0x277D2AED0])
      {
        v26 = *(v4 + 8);
        v26(v10, v2);
        (*(v16 + 8))(v22, v14);
LABEL_10:
        v26(v24, v2);
        return 0;
      }

      v25 = sub_2166EFC70();
      v26 = *(v4 + 8);
      v26(v10, v2);
      (*(v16 + 8))(v22, v14);
      if (v25)
      {
        goto LABEL_10;
      }

      v26(v24, v2);
    }

    else
    {
      v27 = v23;
      v28 = *MEMORY[0x277D2AEE0];
      v29 = *(v16 + 8);
      v29(v22, v14);
      if (v27 != v28)
      {
        v29(v20, v14);
        return 0;
      }
    }

    return 1;
  }

  sub_216C6DEAC(v13);
  return 0;
}

uint64_t sub_216C6D724()
{
  sub_21700C894();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_7_17();
  v3 = type metadata accessor for PlaylistTrackLockup();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  sub_2168ABF7C();
  LOBYTE(v4) = *(v7 + *(v4 + 68));
  sub_216C6DF84(v7, type metadata accessor for PlaylistTrackLockup);
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    sub_2168C045C();
    sub_216C6DC84(v1, MEMORY[0x277CD8560], MEMORY[0x277CD8550]);
    v9 = OUTLINED_FUNCTION_4_120();
    v10(v9);
    v8 = v0 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_216C6D880(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_7_17();
  v6 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  (*(v8 + 16))(v11 - v10, a1, v6);
  v13 = (*(v8 + 88))(v12, v6);
  if (v13 == *MEMORY[0x277D2A400] || (v13 != *MEMORY[0x277D2A418] ? (v14 = v13 == *MEMORY[0x277D2A438]) : (v14 = 1), !v14 ? (v15 = v13 == *MEMORY[0x277D2A3C8]) : (v15 = 1), !v15 ? (v16 = v13 == *MEMORY[0x277D2A428]) : (v16 = 1), !v16 ? (v17 = v13 == *MEMORY[0x277D2A388]) : (v17 = 1), !v17 ? (v18 = v13 == *MEMORY[0x277D2A408]) : (v18 = 1), !v18 && (v13 != *MEMORY[0x277D2A3B0] ? (v19 = v13 == *MEMORY[0x277D2A3B8]) : (v19 = 1), !v19 ? (v20 = v13 == *MEMORY[0x277D2A440]) : (v20 = 1), v20 || (v13 != *MEMORY[0x277D2A450] ? (v21 = v13 == *MEMORY[0x277D2A3C0]) : (v21 = 1), !v21 ? (v22 = v13 == *MEMORY[0x277D2A3D0]) : (v22 = 1), !v22 && (v13 != *MEMORY[0x277D2A3F8] ? (v23 = v13 == *MEMORY[0x277D2A430]) : (v23 = 1), !v23 ? (v24 = v13 == *MEMORY[0x277D2A458]) : (v24 = 1), v24 || (v13 != *MEMORY[0x277D2A448] ? (v25 = v13 == *MEMORY[0x277D2A420]) : (v25 = 1), !v25 && (v13 != *MEMORY[0x277D2A3D8] ? (v26 = v13 == *MEMORY[0x277D2A3E0]) : (v26 = 1), v26)))))))
  {
    (*(v8 + 8))(v12, v6);
    swift_beginAccess();
    sub_2167B7D58(v3 + 16, v29);
    sub_216DDF0DC(v29, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v27 = sub_216C6D33C(v2);
    sub_216C6DEAC(v2);
  }

  else
  {
    (*(v8 + 8))(v12, v6);
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_216C6DBC0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216C6DC84(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  swift_beginAccess();
  sub_2167B7D58(v6 + 16, v17);
  v11 = v18;
  v12 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v13 = *(v12 + 144);
  v14 = a2(0);
  v13(a1, v14, a3, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  v15 = sub_21700BAB4();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
  LOBYTE(v6) = sub_216C6D33C(v10);
  sub_216C6DEAC(v10);
  return v6 & 1;
}

uint64_t sub_216C6DDD4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  v1 = OBJC_IVAR____TtC7MusicUI17PlaybackPresenter__internalPlayer;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75E0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216C6DE4C()
{
  sub_216C6DDD4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216C6DEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C6DF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C6DF84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C6DFE0(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  if (!*(a1 + 16))
  {
    return v1;
  }

  v29 = MEMORY[0x277D84F90];
  v28 = *(a1 + 16);
  sub_2166F4258();
  v1 = v29;
  result = sub_2166F42A4(a1);
  v6 = result;
  v7 = v28;
  v8 = 0;
  v9 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v9 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_31;
      }

      ++v8;
      result = v6 & 0x3F;
      v11 = 0xD000000000000013;
      v12 = "ion";
      switch(*(*(a1 + 48) + v6))
      {
        case 1:
          v11 = 0xD00000000000001DLL;
          v12 = "fullCatalogPlayback";
          break;
        case 2:
          v11 = 0xD000000000000012;
          v12 = "voiceActivatedCatalogPlayback";
          break;
        case 3:
          v11 = 0xD000000000000014;
          v12 = "anyCatalogPlayback";
          break;
        case 4:
          v11 = 0xD00000000000001FLL;
          v12 = "cloudLibraryEligible";
          break;
        case 5:
          v11 = 0xD000000000000014;
          v12 = "addCatalogContentToCloudLibrary";
          break;
        default:
          break;
      }

      v13 = *(v29 + 16);
      if (v13 >= *(v29 + 24) >> 1)
      {
        v26 = v4;
        v27 = v8;
        v25 = v5;
        sub_2166F4258();
        result = v6 & 0x3F;
        v5 = v25;
        v4 = v26;
        v8 = v27;
        v9 = a1 + 56;
        v7 = v28;
      }

      *(v29 + 16) = v13 + 1;
      v14 = v29 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v12 | 0x8000000000000000;
      if (v5)
      {
        goto LABEL_35;
      }

      v15 = 1 << *(a1 + 32);
      if (v6 >= v15)
      {
        goto LABEL_32;
      }

      v16 = *(v9 + 8 * v10);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v4)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << result);
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (a1 + 64 + 8 * v10);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            v23 = v8;
            result = sub_2166F42E8(v6, v4, 0);
            v9 = a1 + 56;
            v7 = v28;
            v8 = v23;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_25;
          }
        }

        v24 = v8;
        result = sub_2166F42E8(v6, v4, 0);
        v9 = a1 + 56;
        v7 = v28;
        v8 = v24;
      }

LABEL_25:
      if (v8 == v7)
      {
        return v1;
      }

      v5 = 0;
      v4 = *(a1 + 36);
      v6 = v15;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_216C6E32C()
{
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216C6E374()
{
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_216C6E3C8(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 5:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_216C6E46C()
{
  sub_21700F5E4();
  OUTLINED_FUNCTION_47();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216C6E4CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C6E32C();
  *a1 = result;
  return result;
}

unint64_t sub_216C6E4FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2166C0DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216C6E5FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C6E374();
  *a1 = result;
  return result;
}

unint64_t sub_216C6E62C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216C6E3C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216C6E73C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C6E46C();
  *a1 = result;
  return result;
}

uint64_t sub_216C6E76C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2166F42F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_216C6E854@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = nullsub_1(*a1, a1[1], a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_216C6E934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_216685F4C(0, &qword_280E29BF0);
  v4 = sub_2166A6590();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringValue];

    v7 = sub_21700E514();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 statusType];
  v11 = OUTLINED_FUNCTION_17_59();
  v12 = sub_2166A58E0([a1 capabilities]);
  v13 = OUTLINED_FUNCTION_17_59() == 2 || OUTLINED_FUNCTION_17_59() == 3;
  v14 = sub_2166A5AD0(a1);
  if (v14)
  {
    v28 = v13;
    v15 = *(v14 + 16);
    if (v15)
    {
      v24 = v12;
      v25 = v11;
      v26 = v10;
      v27 = v7;
      OUTLINED_FUNCTION_16_59();
      v16 = 32;
      v17 = v29;
      do
      {
        v18 = sub_21700E514();
        v20 = v19;
        v21 = *(v29 + 16);
        if (v21 >= *(v29 + 24) >> 1)
        {
          OUTLINED_FUNCTION_19_47();
        }

        *(v29 + 16) = v21 + 1;
        v22 = v29 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v20;
        v16 += 8;
        --v15;
      }

      while (v15);

      v7 = v27;
      v11 = v25;
      v10 = v26;
      v12 = v24;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v13 = v28;
  }

  else
  {

    v17 = 0;
  }

  result = sub_2166A7DD8(v10, v11);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = result;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v17;
  *(a2 + 48) = 1281;
  *(a2 + 50) = 33686018;
  *(a2 + 54) = 2;
  *(a2 + 56) = 0;
  return result;
}

id sub_216C6EB3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_21700F7D4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v8 = sub_2166C0DB4(*(a1 + 16));
  v10 = v9;
  if (v8 == sub_2166C0DB4(v7) && v10 == v11)
  {
  }

  else
  {
    v13 = OUTLINED_FUNCTION_18_53();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_2169F9E00(*(a1 + 24), *(a2 + 24)) & 1) == 0 || ((*(a1 + 32) ^ *(a2 + 32)))
  {
    return 0;
  }

  v16 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!v16)
    {
      return 0;
    }

    sub_216E20CEC();
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((*(a1 + 48) ^ *(a2 + 48)))
  {
    return 0;
  }

  v18 = *(a1 + 49);
  v14 = *(a2 + 49);
  if (v18 == 5)
  {
    if (v14 != 5)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 5)
    {
      return 0;
    }

    v19 = sub_2166F42F4(v18);
    v21 = v20;
    v22 = sub_2166F42F4(v14);
    v14 = v23;
    if (v19 == v22 && v21 == v23)
    {
    }

    else
    {
      v25 = OUTLINED_FUNCTION_18_53();

      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (*(a1 + 50) == 2)
  {
    if (*(a2 + 50) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v26 ^ v27) & 1) != 0)
    {
      return v14;
    }
  }

  if (*(a1 + 51) == 2)
  {
    if (*(a2 + 51) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v28 ^ v29) & 1) != 0)
    {
      return v14;
    }
  }

  if (*(a1 + 52) == 2)
  {
    if (*(a2 + 52) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v30 ^ v31) & 1) != 0)
    {
      return v14;
    }
  }

  if (*(a1 + 53) == 2)
  {
    if (*(a2 + 53) != 2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v32 ^ v33) & 1) != 0)
    {
      return v14;
    }
  }

  if (*(a1 + 54) != 2)
  {
    OUTLINED_FUNCTION_12_72();
    if (v6 || ((v34 ^ v35) & 1) != 0)
    {
      return v14;
    }

    goto LABEL_63;
  }

  if (*(a2 + 54) != 2)
  {
    return 0;
  }

LABEL_63:
  if (!*(a1 + 56))
  {
    sub_21700E384();
  }

  sub_216685F4C(0, &qword_280E29D88);
  sub_21700DF14();
  v36 = sub_216C6EEA8();
  if (!*(a2 + 56))
  {
    sub_21700E384();
  }

  sub_21700DF14();
  v37 = sub_21700E344();

  v14 = [v36 isEqualToDictionary_];

  return v14;
}

id sub_216C6EEA8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_21700E344();

  v2 = [v0 initWithDictionary_];

  return v2;
}

uint64_t sub_216C6EF30(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000021708D590 == a2;
  if (v3 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_14_65() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == OUTLINED_FUNCTION_20_54() && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000014 && 0x800000021708D510 == a2;
        if (v10 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0x656C626967696C65 && a2 == 0xEE0073726566664FLL;
          if (v11 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = a1 == OUTLINED_FUNCTION_13_69() && a2 == v12;
            if (v13 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v14 = a1 == 0xD000000000000015 && 0x800000021708D570 == a2;
              if (v14 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = a1 == 0x6C696D6146736168 && a2 == 0xE900000000000079;
                if (v15 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v16 = a1 == 0xD000000000000010 && 0x800000021708D550 == a2;
                  if (v16 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v17 = a1 == 0xD000000000000011 && 0x800000021708D530 == a2;
                    if (v17 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v18 = a1 == 0x726F6E694D7369 && a2 == 0xE700000000000000;
                      if (v18 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v20 = a1 == OUTLINED_FUNCTION_15_61() && a2 == v19;
                        if (v20 || (OUTLINED_FUNCTION_59_2() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == OUTLINED_FUNCTION_21_55() && a2 == v21)
                        {

                          return 12;
                        }

                        else
                        {
                          v23 = OUTLINED_FUNCTION_59_2();

                          if (v23)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

uint64_t sub_216C6F22C()
{
  result = OUTLINED_FUNCTION_14_65();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_20_54();
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = OUTLINED_FUNCTION_9_84();
      break;
    case 5:
      result = OUTLINED_FUNCTION_13_69();
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6C696D6146736168;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x726F6E694D7369;
      break;
    case 11:
      result = OUTLINED_FUNCTION_15_61();
      break;
    case 12:
      result = OUTLINED_FUNCTION_21_55();
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_216C6F3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216C6EF30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216C6F3DC(uint64_t a1)
{
  v2 = sub_216C70074();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216C6F418(uint64_t a1)
{
  v2 = sub_216C70074();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_216C6F454@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v67 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC75E8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216C70074();
  sub_21700F964();
  if (v2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    LOBYTE(v51) = 0;
    v10 = sub_21700F614();
    v12 = v11;
    sub_216C700C8();
    OUTLINED_FUNCTION_4_121();
    sub_21700F6A4();
    v44 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7600);
    sub_216C703E4(&qword_27CAC7608, sub_216C7011C);
    OUTLINED_FUNCTION_8_93();
    sub_21700F6A4();
    v43 = v51;
    OUTLINED_FUNCTION_0_213(3);
    v13 = sub_21700F674();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7618);
    sub_216C70170(&qword_27CAC7620, sub_216C701D8);
    OUTLINED_FUNCTION_8_93();
    sub_21700F644();
    v42 = v51;
    OUTLINED_FUNCTION_0_213(5);
    v40 = sub_21700F674();
    sub_216C7022C();
    OUTLINED_FUNCTION_4_121();
    sub_21700F644();
    OUTLINED_FUNCTION_0_213(7);
    v39 = sub_21700F624();
    OUTLINED_FUNCTION_0_213(8);
    v16 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v16, &v70);
    OUTLINED_FUNCTION_0_213(9);
    v17 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v17, &v69 + 4);
    OUTLINED_FUNCTION_0_213(10);
    v18 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v18, &v69);
    OUTLINED_FUNCTION_0_213(11);
    v19 = sub_21700F624();
    OUTLINED_FUNCTION_22_50(v19, &v68 + 4);
    LOBYTE(v47) = 12;
    sub_216C70280();
    OUTLINED_FUNCTION_4_121();
    sub_21700F644();
    if (v52 >> 60 == 15)
    {
      v22 = OUTLINED_FUNCTION_3_139();
      v23(v22);
      v24 = 0;
LABEL_17:
      v41 = v40 & 1;
      *&v47 = v44;
      *(&v47 + 1) = v12;
      LOBYTE(v48) = 0;
      *(&v48 + 1) = *v46;
      DWORD1(v48) = *&v46[3];
      *(&v48 + 1) = v43;
      LOBYTE(v49) = v13 & 1;
      *(&v49 + 1) = *v45;
      DWORD1(v49) = *&v45[3];
      *(&v49 + 1) = v42;
      LOWORD(v50) = v41;
      BYTE2(v50) = v39;
      BYTE3(v50) = v38;
      BYTE4(v50) = v37;
      BYTE5(v50) = v36;
      BYTE6(v50) = v35;
      v34 = v24;
      *(&v50 + 1) = v24;
      sub_216C702D4(&v47, &v51);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v51 = v44;
      v52 = v12;
      v53 = 0;
      *v54 = *v46;
      *&v54[3] = *&v46[3];
      v55 = v43;
      v56 = v13 & 1;
      *v57 = *v45;
      *&v57[3] = *&v45[3];
      v58 = v42;
      v59 = v41;
      v60 = 0;
      v61 = v39;
      v62 = v38;
      v63 = v37;
      v64 = v36;
      v65 = v35;
      v66 = v34;
      result = sub_216C7030C(&v51);
      v29 = v48;
      *a2 = v47;
      a2[1] = v29;
      v30 = v50;
      a2[2] = v49;
      a2[3] = v30;
      return result;
    }

    v33 = objc_opt_self();
    v32 = sub_217005F94();
    v51 = 0;
    v25 = [v33 JSONObjectWithData:v32 options:0 error:&v51];

    if (!v25)
    {
      v31 = v51;
      OUTLINED_FUNCTION_47();
      sub_217005D34();

      swift_willThrow();
      OUTLINED_FUNCTION_11_78();
      v20 = OUTLINED_FUNCTION_3_139();
      v21(v20);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      LOBYTE(v7) = 1;
      v8 = 1;
LABEL_5:

      if (v7)
      {
        goto LABEL_6;
      }

LABEL_9:
      if (!v8)
      {
        return result;
      }
    }

    v26 = v51;
    sub_21700F1E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6B30);
    if (swift_dynamicCast())
    {
      v27 = OUTLINED_FUNCTION_3_139();
      v28(v27);
      OUTLINED_FUNCTION_11_78();
      v24 = v47;
      goto LABEL_17;
    }

    sub_216C7033C();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_11_78();
    v14 = OUTLINED_FUNCTION_3_139();
    v15(v14);
    v6 = 1;
    v7 = 1;
    v8 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:

  if ((v8 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_216C6FBBC(void *a1)
{
  v3 = v1;
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7648);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216C70074();
  sub_21700F974();
  LOBYTE(v21[0]) = 0;
  sub_21700F6D4();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  LOBYTE(v21[0]) = *(v3 + 16);
  HIBYTE(v20) = 1;
  sub_216C70390();
  OUTLINED_FUNCTION_2_148();
  sub_21700F764();
  v21[0] = *(v3 + 24);
  HIBYTE(v20) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7600);
  sub_216C703E4(&qword_27CAC7658, sub_216C7044C);
  OUTLINED_FUNCTION_10_82();
  sub_21700F764();
  OUTLINED_FUNCTION_1_183(3);
  sub_21700F734();
  v21[0] = *(v3 + 40);
  HIBYTE(v20) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7618);
  sub_216C70170(&qword_27CAC7668, sub_216C704A0);
  OUTLINED_FUNCTION_10_82();
  sub_21700F704();
  OUTLINED_FUNCTION_1_183(5);
  sub_21700F734();
  LOBYTE(v21[0]) = *(v3 + 49);
  HIBYTE(v20) = 6;
  sub_216C704F4();
  OUTLINED_FUNCTION_2_148();
  sub_21700F704();
  OUTLINED_FUNCTION_1_183(7);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(8);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(9);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(10);
  sub_21700F6E4();
  OUTLINED_FUNCTION_1_183(11);
  sub_21700F6E4();
  if (!*(v3 + 56))
  {
    return (*(v7 + 8))(v10, v5);
  }

  v12 = objc_opt_self();
  v13 = sub_21700E344();
  v21[0] = 0;
  v14 = [v12 dataWithJSONObject:v13 options:0 error:v21];

  v15 = v21[0];
  if (!v14)
  {
    v19 = v15;
    sub_217005D34();

    swift_willThrow();
    return (*(v7 + 8))(v10, v5);
  }

  v16 = sub_217005FB4();
  v18 = v17;

  v21[0] = v16;
  v21[1] = v18;
  HIBYTE(v20) = 12;
  sub_216C70548();
  OUTLINED_FUNCTION_2_148();
  sub_21700F764();
  (*(v7 + 8))(v10, v5);
  return sub_21677A524(v16, v18);
}

double sub_216C70018@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_216C6F454(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_216C70074()
{
  result = qword_27CAC75F0;
  if (!qword_27CAC75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC75F0);
  }

  return result;
}

unint64_t sub_216C700C8()
{
  result = qword_27CAC75F8;
  if (!qword_27CAC75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC75F8);
  }

  return result;
}

unint64_t sub_216C7011C()
{
  result = qword_27CAC7610;
  if (!qword_27CAC7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7610);
  }

  return result;
}

uint64_t sub_216C70170(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7618);
    a2();
    result = OUTLINED_FUNCTION_25_44();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C701D8()
{
  result = qword_27CAC7628;
  if (!qword_27CAC7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7628);
  }

  return result;
}

unint64_t sub_216C7022C()
{
  result = qword_27CAC7630;
  if (!qword_27CAC7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7630);
  }

  return result;
}

unint64_t sub_216C70280()
{
  result = qword_27CAC7638;
  if (!qword_27CAC7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7638);
  }

  return result;
}

unint64_t sub_216C7033C()
{
  result = qword_27CAC7640;
  if (!qword_27CAC7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7640);
  }

  return result;
}

unint64_t sub_216C70390()
{
  result = qword_27CAC7650;
  if (!qword_27CAC7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7650);
  }

  return result;
}

uint64_t sub_216C703E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7600);
    a2();
    result = OUTLINED_FUNCTION_25_44();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C7044C()
{
  result = qword_27CAC7660;
  if (!qword_27CAC7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7660);
  }

  return result;
}

unint64_t sub_216C704A0()
{
  result = qword_27CAC7670;
  if (!qword_27CAC7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7670);
  }

  return result;
}

unint64_t sub_216C704F4()
{
  result = qword_27CAC7678;
  if (!qword_27CAC7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7678);
  }

  return result;
}

unint64_t sub_216C70548()
{
  result = qword_27CAC7680;
  if (!qword_27CAC7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusResponse.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionStatusResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SubscriptionStatusResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_216C707AC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216C70880()
{
  result = qword_27CAC7688;
  if (!qword_27CAC7688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7688);
  }

  return result;
}

unint64_t sub_216C708E8()
{
  result = qword_27CAC7698;
  if (!qword_27CAC7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7698);
  }

  return result;
}

unint64_t sub_216C70940()
{
  result = qword_27CAC76A0;
  if (!qword_27CAC76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76A0);
  }

  return result;
}

unint64_t sub_216C70998()
{
  result = qword_27CAC76A8;
  if (!qword_27CAC76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76A8);
  }

  return result;
}

unint64_t sub_216C709F0()
{
  result = qword_27CAC76B0;
  if (!qword_27CAC76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76B0);
  }

  return result;
}

unint64_t sub_216C70A48()
{
  result = qword_27CAC76B8;
  if (!qword_27CAC76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76B8);
  }

  return result;
}

unint64_t sub_216C70AA0()
{
  result = qword_27CAC76C0;
  if (!qword_27CAC76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76C0);
  }

  return result;
}

unint64_t sub_216C70AF4()
{
  result = qword_27CAC76C8;
  if (!qword_27CAC76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76C8);
  }

  return result;
}

unint64_t sub_216C70B48()
{
  result = qword_27CAC76D0;
  if (!qword_27CAC76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76D0);
  }

  return result;
}

unint64_t sub_216C70B9C()
{
  result = qword_27CAC76D8;
  if (!qword_27CAC76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76D8);
  }

  return result;
}

unint64_t sub_216C70BF0()
{
  result = qword_27CAC76E0;
  if (!qword_27CAC76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC76E0);
  }

  return result;
}

void sub_216C70C50(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_14_66();
  v6 = type metadata accessor for BubbleLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  if ((a2 & 0xFF00) == 0xFE00 || HIBYTE(a2) > 0xFEu || (a2 & 0xFF00) != 0x100)
  {
    OUTLINED_FUNCTION_19_48();
    v14 = xmmword_2170592C0;
    *(v2 + 24) = &unk_28291FA68;
    *(v2 + 32) = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v8);
    sub_21698F234(v13, v3 + 16);
    OUTLINED_FUNCTION_2_149(&unk_28291FB08);
    sub_216A906C4(v13);
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
    v9 = 0x403A000000000000;
LABEL_13:
    *(v3 + 120) = v9;
    return;
  }

  if (!sub_2166BF3C8(v3))
  {
    goto LABEL_11;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
LABEL_9:
    sub_216DE9A88();

    v3 = *(v4 + *(v6 + 44));
    sub_216C74634(v4, type metadata accessor for BubbleLockup);
    if (v3 == 1)
    {
      OUTLINED_FUNCTION_19_48();
      v11 = xmmword_217042990;
LABEL_12:
      v14 = v11;
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v12 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v12);
      sub_21698F234(v13, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      OUTLINED_FUNCTION_13_70(xmmword_217025720);
      sub_216A906C4(v13);
      *(v3 + 96) = 0;
      *(v3 + 104) = 0;
      *(v3 + 112) = 0;
      v9 = 0x4032000000000000;
      goto LABEL_13;
    }

LABEL_11:
    OUTLINED_FUNCTION_19_48();
    v11 = xmmword_2170592C0;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_15_62();
  if (v10)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_216C70E54(uint64_t a1@<X8>)
{
  v4 = &_s14LinkViewLayoutVN;
  v5 = &off_282932C90;
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_7_94(v1);
  OUTLINED_FUNCTION_22_51(v2);
  OUTLINED_FUNCTION_12_73(&unk_28291FB08);
  sub_216A906C4(v3);
  OUTLINED_FUNCTION_0_214();
}

void sub_216C70EDC()
{
  OUTLINED_FUNCTION_14_66();
  v3 = type metadata accessor for PosterLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_0();
  if (!sub_2166BF3C8(v1))
  {
    goto LABEL_7;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
LABEL_5:
    sub_216DE9538();

    v1 = *(v2 + *(v3 + 44));
    sub_216C74634(v2, type metadata accessor for PosterLockup);
    if (v1 == 1)
    {
      memset(v7, 0, 40);
LABEL_8:
      *(v0 + 24) = &unk_28291FA68;
      *(v0 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v6);
      sub_21698F234(v7, v1 + 16);
      OUTLINED_FUNCTION_2_149(&unk_28291FB08);
      sub_216A906C4(v7);
      OUTLINED_FUNCTION_0_214();
      return;
    }

LABEL_7:
    memset(v7, 0, 24);
    *(&v7[1] + 8) = xmmword_21703EA60;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_15_62();
  if (v5)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_5;
  }

  __break(1u);
}

void sub_216C71024(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  if ((a1 & 0xFF00) == 0xFE00)
  {
    v4 = 1;
  }

  else
  {
    if (HIBYTE(a1) != 255 && HIBYTE(a1) == 1)
    {
      OUTLINED_FUNCTION_1_184();
      *(a2 + 24) = &unk_28291FA68;
      *(a2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v14 = swift_allocObject();
      OUTLINED_FUNCTION_5_111(v14, v15, v16, v17, v18, v19, v20, v21, v22[0]);
      OUTLINED_FUNCTION_12_73(&unk_28291FB08);
      goto LABEL_11;
    }

    v4 = 1;
    if (!HIBYTE(a1))
    {
      v4 = a1;
    }
  }

  OUTLINED_FUNCTION_1_184();
  *(a2 + 24) = &unk_28291FA68;
  *(a2 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v5, v6, v7, v8, v9, v10, v11, v12, v22[0]);
  *(v2 + 80) = &unk_28291FB08;
  *(v2 + 88) = &off_28291F9F0;
  *(v2 + 56) = v4;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
LABEL_11:
  sub_216A906C4(v22);
  OUTLINED_FUNCTION_0_214();
}

void sub_216C71128(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_14_66();
  v5 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memset(v20, 0, sizeof(v20));
  v21 = xmmword_217042990;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  if (HIBYTE(a2) == 255 || (a2 & 0xFF00) == 65024)
  {
    goto LABEL_8;
  }

  v9 = HIBYTE(a2);
  if (v9)
  {
    if (v9 == 1)
    {
      sub_21698F234(v20, v17);
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v10);
      sub_21698F234(v17, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      *(v3 + 56) = xmmword_217016ED0;
      v11 = 64;
LABEL_17:
      *(v3 + 72) = v11;
      goto LABEL_18;
    }

LABEL_8:
    sub_21698F234(v20, v17);
    *(v2 + 24) = &unk_28291FA68;
    *(v2 + 32) = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v12);
    sub_21698F234(v17, v3 + 16);
    OUTLINED_FUNCTION_2_149(&unk_28291FB08);
LABEL_18:
    sub_216A906C4(v17);
    OUTLINED_FUNCTION_0_214();
    sub_216A906C4(v18);
    sub_216A906C4(v20);
    return;
  }

  if (!sub_2166BF3C8(v3))
  {
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
LABEL_13:
    sub_216DE9428();

    v3 = v7[57];
    sub_216C74634(v7, type metadata accessor for SquareLockup);
    if (v3 == 1)
    {
      v14 = v18;
LABEL_16:
      sub_21698F234(v14, v17);
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v15 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v15);
      sub_21698F234(v17, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      *(v3 + 56) = a2;
      *(v3 + 64) = 0;
      v11 = 1;
      goto LABEL_17;
    }

LABEL_15:
    v14 = v20;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_15_62();
  if (v13)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_13;
  }

  __break(1u);
}

void sub_216C7139C(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_2170592D0);
}

void sub_216C713BC(unsigned __int16 a1@<W1>, uint64_t *a2@<X8>)
{
  if (HIBYTE(a1) == 255 || (a1 & 0xFF00) == 65024)
  {
    goto LABEL_7;
  }

  v5 = HIBYTE(a1);
  if (!v5)
  {
    v7 = a1;
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v8);
    OUTLINED_FUNCTION_1_184();
    sub_21698F234(v10, v2 + 16);
    *(v2 + 80) = &unk_28291FB08;
    *(v2 + 88) = &off_28291F9F0;
    *(v2 + 56) = v7;
    *(v2 + 64) = 0;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
LABEL_7:
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v6 = swift_allocObject();
    OUTLINED_FUNCTION_7_94(v6);
    OUTLINED_FUNCTION_1_184();
    sub_21698F234(v10, v2 + 16);
    *(v2 + 80) = &unk_28291FB08;
    *(v2 + 88) = &off_28291F9F0;
    *(v2 + 56) = xmmword_21703EA60;
LABEL_8:
    *(v2 + 72) = 0;
    sub_216A906C4(v10);
    OUTLINED_FUNCTION_0_214();
    return;
  }

  a2[3] = &unk_28291DC58;
  a2[4] = &off_28291DD80;
  v9 = OUTLINED_FUNCTION_75_7();
  *a2 = v9;
  *(v9 + 40) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = 1;
  *(v9 + 56) = 0x403C000000000000;
  *(v9 + 64) = 0;
}

void sub_216C71520(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_14_66();
  type metadata accessor for VerticalVideoLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_19_48();
  v20 = xmmword_217042990;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  if (HIBYTE(a2) == 255 || (a2 & 0xFF00) == 65024)
  {
    goto LABEL_19;
  }

  v7 = HIBYTE(a2);
  if (!v7)
  {
    if (sub_2166BF3C8(v3))
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_17_60();
        v3 = v15;
      }

      else
      {
        OUTLINED_FUNCTION_15_62();
        if (!v10)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_18_54();
      }

      sub_216DE8FE8();

      OUTLINED_FUNCTION_10_83();
      if (v3 == 2)
      {
        v11 = v17;
LABEL_20:
        sub_21698F234(v11, v16);
        *(v2 + 24) = &unk_28291FA68;
        *(v2 + 32) = &off_28291DBE0;
        OUTLINED_FUNCTION_6_99();
        v12 = swift_allocObject();
        OUTLINED_FUNCTION_7_94(v12);
        sub_21698F234(v16, v3 + 16);
        OUTLINED_FUNCTION_2_149(&unk_28291FB08);
LABEL_21:
        sub_216A906C4(v16);
        OUTLINED_FUNCTION_0_214();
        sub_216A906C4(v17);
        sub_216A906C4(v19);
        return;
      }
    }

LABEL_19:
    v11 = v19;
    goto LABEL_20;
  }

  if (v7 != 1)
  {
    goto LABEL_19;
  }

  if (!sub_2166BF3C8(v3))
  {
    goto LABEL_22;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
    v3 = v14;
LABEL_11:
    sub_216DE8FE8();

    OUTLINED_FUNCTION_10_83();
    if (v3 == 2)
    {
      v9 = v17;
LABEL_23:
      sub_21698F234(v9, v16);
      *(v2 + 24) = &unk_28291FA68;
      *(v2 + 32) = &off_28291DBE0;
      OUTLINED_FUNCTION_6_99();
      v13 = swift_allocObject();
      OUTLINED_FUNCTION_7_94(v13);
      sub_21698F234(v16, v3 + 16);
      *(v3 + 80) = &unk_28291FB08;
      *(v3 + 88) = &off_28291F9F0;
      OUTLINED_FUNCTION_13_70(xmmword_217016ED0);
      goto LABEL_21;
    }

LABEL_22:
    v9 = v19;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_15_62();
  if (v8)
  {
    OUTLINED_FUNCTION_18_54();
    goto LABEL_11;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_216C71754(uint64_t a1)
{
  type metadata accessor for TrackLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_20_55();
  if (v7)
  {
    if (!sub_21700F2B4())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_15_62();
  if (v8)
  {
    OUTLINED_FUNCTION_18_54();
LABEL_6:
    sub_216DE90F8();

    sub_216C745D4(v5, v1, type metadata accessor for TrackLockup);
    v9 = [objc_opt_self() defaultMetrics];
    [v9 scaledValueForValue_];

    sub_216BC29E0();
    sub_216C74634(v1, type metadata accessor for TrackLockup);
    return;
  }

  __break(1u);
}

void sub_216C7191C(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DD68;
  a1[2].n128_u64[0] = &off_28291DDA0;
  OUTLINED_FUNCTION_3_62(a1, xmmword_21702B1C0);
}

double sub_216C7193C@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for StaticGridLayout;
  a1[4] = &off_282933558;
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 16) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 32;
  result = 0.0;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  return result;
}

uint64_t sub_216C719B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 - 4) < 4u)
  {
    return qword_217059DE8[(a1 - 4)];
  }

  memset(v6, 0, sizeof(v6));
  v7 = xmmword_217042990;
  v4 = sub_21698EFF8(a1, a2, a3, a4);
  sub_216A906C4(v6);
  return v4;
}

uint64_t sub_216C71A34@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v9 = &_s9IOSLayoutVN;
  v10 = &off_282932CA0;
  v4 = _s7SectionV6HeaderVMa(0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) == 1)
  {
    v5 = 0x4024000000000000;
  }

  else
  {
    v5 = 0;
  }

  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v6 = swift_allocObject();
  *a2 = v6;
  sub_21698F234(v8, v6 + 16);
  *(v6 + 80) = &unk_28291FB08;
  *(v6 + 88) = &off_28291F9F0;
  *(v6 + 56) = xmmword_217016ED0;
  *(v6 + 72) = 64;
  result = sub_216A906C4(v8);
  *(v6 + 96) = v5;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0x4032000000000000;
  return result;
}

void sub_216C71B20(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_2170592E0);
}

void sub_216C71B40(__n128 *a1@<X8>)
{
  a1[1].n128_u64[1] = &unk_28291DCE8;
  a1[2].n128_u64[0] = &off_28291DD90;
  OUTLINED_FUNCTION_3_62(a1, xmmword_2170592F0);
}

uint64_t sub_216C71B64@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (a1 == 512)
  {
    a2[3] = &unk_28291DC58;
    a2[4] = &off_28291DD80;
    v3 = OUTLINED_FUNCTION_75_7();
    *a2 = v3;
    result = OUTLINED_FUNCTION_8_94(v3);
    *(result + 56) = 0;
    *(result + 64) = 0;
    return result;
  }

  v6 = a1 & 0xFF00;
  v7 = [objc_opt_self() defaultMetrics];
  [v7 scaledValueForValue_];
  v9 = v8;

  if (v6 == 65024)
  {
    v10 = 1;
LABEL_5:
    if (v9 <= 8.0)
    {
      v11 = -v9;
    }

    else
    {
      v11 = -8.0;
    }

    OUTLINED_FUNCTION_1_184();
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_5_111(v12, v13, v14, v15, v16, v17, v18, v19, v29[0]);
    *(a1 + 80) = &unk_28291FB08;
    *(a1 + 88) = &off_28291F9F0;
    *(a1 + 56) = v10;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    result = sub_216A906C4(v29);
    *(a1 + 96) = v11;
    *(a1 + 104) = 0;
    goto LABEL_16;
  }

  if (BYTE1(a1) == 255 || BYTE1(a1) != 1)
  {
    v10 = 1;
    if (!BYTE1(a1))
    {
      v10 = a1;
    }

    goto LABEL_5;
  }

  OUTLINED_FUNCTION_1_184();
  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v21, v22, v23, v24, v25, v26, v27, v28, v29[0]);
  OUTLINED_FUNCTION_12_73(&unk_28291FB08);
  result = sub_216A906C4(v29);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
LABEL_16:
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x4032000000000000;
  return result;
}

void sub_216C71D20(uint64_t a1)
{
  v3 = type metadata accessor for HorizontalLockup();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_55();
  if (v8)
  {
    if (!sub_21700F2B4())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_17_60();
  }

  else
  {
    OUTLINED_FUNCTION_15_62();
    if (!v9)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_18_54();
  }

  sub_216DE9758();

  sub_216C745D4(v6, v1, type metadata accessor for HorizontalLockup);
  if (*(v1 + *(v3 + 60)) != 1)
  {
    sub_21700F7D4();
  }

  OUTLINED_FUNCTION_11_79();
}

uint64_t sub_216C71F18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = _s7SectionV6HeaderVMa(0);
  result = __swift_getEnumTagSinglePayload(a1, 1, v4);
  v6 = 0.0;
  if (result == 1)
  {
    v6 = 6.0;
  }

  *(a2 + 24) = &unk_28291DCE8;
  *(a2 + 32) = &off_28291DD90;
  *a2 = v6;
  *(a2 + 8) = 0x402C000000000000;
  return result;
}

void sub_216C71FB0(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_184();
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v2, v3, v4, v5, v6, v7, v8, v9, v10[0]);
  OUTLINED_FUNCTION_2_149(&unk_28291FB08);
  sub_216A906C4(v10);
  OUTLINED_FUNCTION_0_214();
}

uint64_t sub_216C72030(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 1 << a1;
  v6 = 6;
  if (a5 == 9)
  {
    v6 = 9;
  }

  if (a5 == 7)
  {
    v6 = 7;
  }

  v7 = 3;
  if (a5 >= 10)
  {
    v7 = 4;
  }

  v8 = 6;
  if (a5 == 7)
  {
    v8 = 7;
  }

  if ((v5 & 3) == 0)
  {
    v7 = v8;
  }

  if ((v5 & 0xF0) != 0)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_216C720A0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    v3 = sub_21700F2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  result = swift_allocObject();
  *a2 = result;
  *(result + 40) = &_s25LiveRadioGridLockupLayoutVN;
  *(result + 48) = &off_282932C80;
  *(result + 16) = v3;
  *(result + 80) = &_s25LiveRadioGridLockupLayoutVN;
  *(result + 88) = &off_282932C70;
  *(result + 56) = v3;
  *(result + 96) = sub_216C7215C;
  *(result + 104) = 0;
  *(result + 112) = 1;
  *(result + 120) = 0x4032000000000000;
  return result;
}

double sub_216C7215C(char a1)
{
  result = 20.0;
  if ((a1 & 0xFE) == 0)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_216C72178(uint64_t a1, __int16 a2)
{
  if ((a2 & 0xFF00) == 0xFE00)
  {
    return 3;
  }

  if ((HIBYTE(a2) == 255 || (a2 & 0xFE) == 0 || HIBYTE(a2)) && (HIBYTE(a2) != 255 ? (v3 = HIBYTE(a2) == 1) : (v3 = 0), !v3))
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_216C72200@<X0>(uint64_t a1@<X8>)
{
  memset(v5, 0, sizeof(v5));
  v6 = xmmword_217042990;
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_7_94(v2);
  OUTLINED_FUNCTION_22_51(v3);
  OUTLINED_FUNCTION_2_149(&unk_28291FB08);
  result = sub_216A906C4(v5);
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0x403C000000000000;
  return result;
}

double sub_216C722A4@<D0>(uint64_t *a1@<X8>)
{
  a1[3] = MEMORY[0x277CDF310];
  a1[4] = &off_28291DBD0;
  v2 = swift_allocObject();
  *a1 = v2;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return result;
}

void sub_216C72334(unsigned __int16 a1@<W1>, uint64_t a2@<X8>)
{
  memset(v9, 0, sizeof(v9));
  v10 = xmmword_21703EA60;
  if (HIBYTE(a1) == 255 || (a1 & 0xFF00) == 65024)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0x80;
  }

  else if (a1 > 0xFFu)
  {
    v4 = 0;
    v6 = 64;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    if (a1 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a1;
    }

    if (a1 == 1)
    {
      v6 = 0x80;
    }

    else
    {
      v6 = 1;
    }
  }

  *(a2 + 24) = &unk_28291FA68;
  *(a2 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_7_94(v7);
  OUTLINED_FUNCTION_22_51(v8);
  *(v2 + 80) = &unk_28291FB08;
  *(v2 + 88) = &off_28291F9F0;
  *(v2 + 56) = v4;
  *(v2 + 64) = v5;
  *(v2 + 72) = v6;
  sub_216A906C4(v9);
  OUTLINED_FUNCTION_0_214();
}

uint64_t sub_216C72438@<X0>(char a1@<W3>, uint64_t *a2@<X8>)
{
  a2[3] = &unk_28291DC58;
  a2[4] = &off_28291DD80;
  v4 = OUTLINED_FUNCTION_75_7();
  *a2 = v4;
  result = OUTLINED_FUNCTION_8_94(v4);
  *(result + 56) = 0;
  *(result + 64) = a1;
  return result;
}

void sub_216C724AC(uint64_t a1@<X8>)
{
  v5 = &_s14TextListLayoutVN;
  v6 = &off_282932C60;
  *(a1 + 24) = &unk_28291FA68;
  *(a1 + 32) = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_7_94(v2);
  OUTLINED_FUNCTION_22_51(v3);
  *(v1 + 80) = &unk_28291FB08;
  *(v1 + 88) = &off_28291F9F0;
  OUTLINED_FUNCTION_13_70(xmmword_21701AB80);
  sub_216A906C4(v4);
  OUTLINED_FUNCTION_0_214();
}

void sub_216C72544(void *a1@<X8>)
{
  a1[3] = &unk_28291DCE8;
  a1[4] = &off_28291DD90;
  *a1 = 0;
  a1[1] = 0;
}

void sub_216C72560(__int16 a1@<W1>, uint64_t *a2@<X8>)
{
  v3 = HIBYTE(a1);
  if (HIBYTE(a1) == 255 || (a1 & 0xFF00) == 0xFE00)
  {
    goto LABEL_14;
  }

  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) != 1)
    {

      goto LABEL_11;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_21700F7D4();

  if (v5)
  {
LABEL_11:
    a2[3] = &unk_28291DC58;
    a2[4] = &off_28291DD80;
    v6 = OUTLINED_FUNCTION_75_7();
    *a2 = v6;
    v7 = OUTLINED_FUNCTION_8_94(v6);
    *(v7 + 56) = 0x403C000000000000;
    *(v7 + 64) = v8;
    return;
  }

  if (!v3)
  {
    v4 = sub_21700F7D4();

    if (v4)
    {
      goto LABEL_13;
    }

LABEL_14:
    OUTLINED_FUNCTION_1_184();
    a2[3] = &unk_28291FA68;
    a2[4] = &off_28291DBE0;
    OUTLINED_FUNCTION_6_99();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_5_111(v17, v18, v19, v20, v21, v22, v23, v24, v25[0]);
    OUTLINED_FUNCTION_2_149(&unk_28291FB08);
    goto LABEL_15;
  }

LABEL_13:
  v25[3] = &_s16VisionGridLayoutVN;
  v25[4] = &off_282932C50;
  a2[3] = &unk_28291FA68;
  a2[4] = &off_28291DBE0;
  OUTLINED_FUNCTION_6_99();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_5_111(v9, v10, v11, v12, v13, v14, v15, v16, v25[0]);
  *(v4 + 80) = &unk_28291FB08;
  *(v4 + 88) = &off_28291F9F0;
  OUTLINED_FUNCTION_13_70(xmmword_217016ED0);
LABEL_15:
  sub_216A906C4(v25);
  OUTLINED_FUNCTION_0_214();
}

uint64_t sub_216C72770(uint64_t a1)
{
  result = sub_216976E30(qword_280E37270, type metadata accessor for VerticalVideoLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C727C8(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC76E8, type metadata accessor for VerticalVideoLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72820(uint64_t a1)
{
  result = sub_216976E30(qword_280E32AB8, type metadata accessor for VerticalArtworkListItemView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72878(uint64_t a1)
{
  result = sub_216976E30(&qword_280E32AB0, type metadata accessor for VerticalArtworkListItemView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C728D0(uint64_t a1)
{
  result = sub_216976E30(qword_280E3DED8, type metadata accessor for GradientListRowView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72928(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3DED0, type metadata accessor for GradientListRowView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72980(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C729BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C729F8(uint64_t a1)
{
  result = sub_216A134F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C72A20(uint64_t a1)
{
  result = sub_216C72A48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C72A48()
{
  result = qword_280E38AE0;
  if (!qword_280E38AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E38AE0);
  }

  return result;
}

uint64_t sub_216C72A9C(uint64_t a1)
{
  result = sub_216976E30(qword_280E3AE78, type metadata accessor for TrackShelfLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72AF4(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC76F0, type metadata accessor for TrackShelfLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72B4C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72BA4(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC76F8, type metadata accessor for TopSearchLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72BFC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72C38(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72C74(uint64_t a1)
{
  result = sub_216976E30(qword_280E444E0, type metadata accessor for TextListView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72CCC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7700, type metadata accessor for TextListView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72D24(uint64_t a1)
{
  result = sub_216976E30(qword_280E3CFA0, type metadata accessor for SuperHeroLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72D7C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3CF98, type metadata accessor for SuperHeroLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72DD4(uint64_t a1)
{
  result = sub_216976E30(qword_280E3E620, type metadata accessor for SuggestionItemView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72E2C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7708, type metadata accessor for SuggestionItemView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72E84(uint64_t a1)
{
  result = sub_216976E30(qword_280E40720, type metadata accessor for SquareLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72EDC(uint64_t a1)
{
  result = sub_216976E30(&qword_280E40710, type metadata accessor for SquareLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72F34(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC1E98, type metadata accessor for SplitPosterLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72F8C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7710, type metadata accessor for SplitPosterLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C72FE4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73020(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C7305C(uint64_t a1)
{
  result = sub_216A5FB10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C73084(uint64_t a1)
{
  result = sub_216C730AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C730AC()
{
  result = qword_27CAC7718;
  if (!qword_27CAC7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7718);
  }

  return result;
}

uint64_t sub_216C73100(uint64_t a1)
{
  result = sub_216976E30(qword_280E2CD20, type metadata accessor for SocialProfileFollowRequestResponseHeaderView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73158(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2CD18, type metadata accessor for SocialProfileFollowRequestResponseHeaderView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C731B0(uint64_t a1)
{
  result = sub_216976E30(&qword_280E47E48, type metadata accessor for SocialProfileViewFollowRequestsView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73208(uint64_t a1)
{
  result = sub_216976E30(&qword_280E47E40, type metadata accessor for SocialProfileViewFollowRequestsView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73260(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2EA80, type metadata accessor for SocialProfileFindFriendsButtonView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C732B8(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2EA78, type metadata accessor for SocialProfileFindFriendsButtonView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73310(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7334C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73388(uint64_t a1)
{
  result = sub_216976E30(qword_280E31DC0, type metadata accessor for SearchQueryContextLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C733E0(uint64_t a1)
{
  result = sub_216976E30(&qword_280E31DB8, type metadata accessor for SearchQueryContextLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73438(uint64_t a1)
{
  result = sub_216976E30(qword_280E3B858, type metadata accessor for SocialCardLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73490(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7720, type metadata accessor for SocialCardLockupView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C734E8(uint64_t a1)
{
  result = sub_216C73510();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C73510()
{
  result = qword_27CAC7728;
  if (!qword_27CAC7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7728);
  }

  return result;
}

uint64_t sub_216C73564(uint64_t a1)
{
  result = sub_216976E30(&qword_27CABF510, type metadata accessor for RecentSearchLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C735BC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7730, type metadata accessor for RecentSearchLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73614(uint64_t a1)
{
  result = sub_216976E30(qword_280E40B68, type metadata accessor for PosterLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7366C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7738, type metadata accessor for PosterLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C736C4(uint64_t a1)
{
  result = sub_216976E30(qword_280E3D4E0, type metadata accessor for PopoverSelectorView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7371C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3D4D8, type metadata accessor for PopoverSelectorView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73774(uint64_t a1)
{
  result = sub_216976E30(&qword_27CABDC40, type metadata accessor for PlaylistTrackLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C737CC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7740, type metadata accessor for PlaylistTrackLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73824(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAB72B8, type metadata accessor for LiveRadioGridLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7387C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7748, type metadata accessor for LiveRadioGridLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C738D4(uint64_t a1)
{
  result = sub_216976E30(qword_280E35708, type metadata accessor for LiveRadioPosterLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7392C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7750, type metadata accessor for LiveRadioPosterLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73984(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2BAE0, type metadata accessor for LinkView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C739DC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7758, type metadata accessor for LinkView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73A34(uint64_t a1)
{
  result = sub_216976E30(qword_280E36E58, type metadata accessor for AnimatedTextListItemView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73A8C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E36E50, type metadata accessor for AnimatedTextListItemView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73AE4(uint64_t a1)
{
  result = sub_216976E30(qword_280E40FF8, type metadata accessor for InlineUpsellView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73B3C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E40FF0, type metadata accessor for InlineUpsellView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73B94(uint64_t a1)
{
  result = sub_216976E30(&qword_280E400E0, type metadata accessor for LandingUpsellView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73BEC(uint64_t a1)
{
  result = sub_216976E30(&qword_280E400D8, type metadata accessor for LandingUpsellView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73C44(uint64_t a1)
{
  result = sub_216976E30(&qword_280E3C2D0, type metadata accessor for HorizontalLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73C9C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7760, type metadata accessor for HorizontalLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73CF4(uint64_t a1)
{
  result = sub_216976E30(qword_280E35938, type metadata accessor for GroupedTextListLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73D4C(uint64_t a1)
{
  result = sub_216976E30(&qword_280E35930, type metadata accessor for GroupedTextListLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73DA4(uint64_t a1)
{
  result = sub_216976E30(qword_280E3EF78, type metadata accessor for FlowcaseLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73DFC(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7768, type metadata accessor for FlowcaseLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73E54(uint64_t a1)
{
  result = sub_216976E30(qword_280E38600, type metadata accessor for ExpandableParagraphView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73EAC(uint64_t a1)
{
  result = sub_216976E30(&qword_280E385F8, type metadata accessor for ExpandableParagraphView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73F04(uint64_t a1)
{
  result = sub_216976E30(qword_280E3C4F0, type metadata accessor for EmptyStateLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73F5C(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7770, type metadata accessor for EmptyStateLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73FB4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C73FF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C7402C(uint64_t a1)
{
  result = sub_216976E30(qword_280E2EC98, type metadata accessor for ContainerDetailTrackListFooterView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74084(uint64_t a1)
{
  result = sub_216976E30(&qword_280E2EC90, type metadata accessor for ContainerDetailTrackListFooterView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C740DC(uint64_t a1)
{
  result = sub_216C74104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C74104()
{
  result = qword_280E36598[0];
  if (!qword_280E36598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E36598);
  }

  return result;
}

unint64_t sub_216C74158(uint64_t a1)
{
  result = sub_216C74180();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C74180()
{
  result = qword_280E36590;
  if (!qword_280E36590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36590);
  }

  return result;
}

unint64_t sub_216C741D4(uint64_t a1)
{
  result = sub_216B81B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C741FC(uint64_t a1)
{
  result = sub_216C74224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C74224()
{
  result = qword_280E3AC70;
  if (!qword_280E3AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3AC70);
  }

  return result;
}

uint64_t sub_216C74278(uint64_t a1)
{
  result = sub_216976E30(&qword_280E41428, type metadata accessor for BubbleLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C742D0(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7778, type metadata accessor for BubbleLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74328(uint64_t a1)
{
  result = sub_216976E30(qword_280E31E78, type metadata accessor for SearchLandingBrickLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74380(uint64_t a1)
{
  result = sub_216976E30(&qword_280E31E68, type metadata accessor for SearchLandingBrickLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C743D8(uint64_t a1)
{
  result = sub_216976E30(qword_280E31A60, type metadata accessor for ArtistLatestReleaseLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74430(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7780, type metadata accessor for ArtistLatestReleaseLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74488(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C744C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74500(uint64_t a1)
{
  result = sub_216976E30(&qword_27CABB290, type metadata accessor for AlbumTrackLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C74558(uint64_t a1)
{
  result = sub_216976E30(&qword_27CAC7788, type metadata accessor for AlbumTrackLockupView);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C745B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_216C745D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216C74634(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C74700()
{
  sub_217006F54();
  OUTLINED_FUNCTION_1();
  v164 = v1;
  v165 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_6_0();
  v163 = v2;
  OUTLINED_FUNCTION_4_1();
  v3 = sub_2170070F4();
  v4 = OUTLINED_FUNCTION_0(v3, &v153);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v5);
  v6 = sub_217007064();
  v7 = OUTLINED_FUNCTION_0(v6, &v155);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v8);
  v9 = sub_217007264();
  v10 = OUTLINED_FUNCTION_0(v9, &v158);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v11);
  v12 = sub_217007324();
  v13 = OUTLINED_FUNCTION_0(v12, &v161);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v14);
  v15 = sub_2170073D4();
  v16 = OUTLINED_FUNCTION_0(v15, &v164);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v17);
  v18 = sub_21700C084();
  v19 = OUTLINED_FUNCTION_0(v18, &v170);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v20);
  v21 = sub_21700C644();
  v22 = OUTLINED_FUNCTION_0(v21, &v167);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v23);
  v24 = sub_217006FE4();
  v25 = OUTLINED_FUNCTION_0(v24, v173);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v26);
  v27 = sub_21700BEA4();
  v28 = OUTLINED_FUNCTION_0(v27, &v174);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_21700C994();
  v31 = OUTLINED_FUNCTION_0(v30, &v175);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v32);
  v33 = sub_21700C734();
  v34 = OUTLINED_FUNCTION_0(v33, &v176);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v35);
  v36 = sub_21700C924();
  v37 = OUTLINED_FUNCTION_0(v36, &v177);
  v153 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v39);
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v155 = v41;
  v156 = v40;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v154 = v42;
  OUTLINED_FUNCTION_4_1();
  sub_217006B84();
  OUTLINED_FUNCTION_1();
  v158 = v44;
  v159 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  v157 = v45;
  OUTLINED_FUNCTION_4_1();
  sub_21700C254();
  OUTLINED_FUNCTION_1();
  v161 = v47;
  v162 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  v160 = v48;
  OUTLINED_FUNCTION_4_1();
  sub_21700C554();
  OUTLINED_FUNCTION_1();
  v167 = v50;
  v168 = v49;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_0();
  v166 = v51;
  OUTLINED_FUNCTION_4_1();
  sub_217006E94();
  OUTLINED_FUNCTION_1();
  v170 = v53;
  v171 = v52;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  v169 = v54;
  OUTLINED_FUNCTION_4_1();
  sub_2170072A4();
  OUTLINED_FUNCTION_1();
  v172 = v56;
  v173[0] = v55;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_7();
  v59 = v58 - v57;
  v60 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v62 = v61;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7();
  v66 = v65 - v64;
  v67 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v69 = v68;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7();
  v73 = v72 - v71;
  v74 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v76 = v75;
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_7();
  v80 = v79 - v78;
  (*(v76 + 16))(v79 - v78, v173[1], v74);
  v81 = (*(v76 + 88))(v80, v74);
  if (v81 == *MEMORY[0x277D2A400])
  {
    v82 = OUTLINED_FUNCTION_13_71();
    v83(v82);
    v84 = OUTLINED_FUNCTION_39_3();
    v85(v84);
    sub_21700C184();
    OUTLINED_FUNCTION_43_28();
    (*(v69 + 8))(v73, v67);
  }

  else if (v81 == *MEMORY[0x277D2A418])
  {
    v86 = OUTLINED_FUNCTION_13_71();
    v87(v86);
    (*(v62 + 32))(v66, v80, v60);
    sub_21700C364();
    OUTLINED_FUNCTION_43_28();
    (*(v62 + 8))(v66, v60);
  }

  else if (v81 == *MEMORY[0x277D2A438])
  {
    v88 = v80;
    (*(v76 + 96))(v80, v74);
    v90 = v172;
    v89 = v173[0];
    (*(v172 + 32))(v59, v88, v173[0]);
    sub_217007294();
    OUTLINED_FUNCTION_43_28();
    (*(v90 + 8))(v59, v89);
  }

  else
  {
    v91 = v80;
    if (v81 == *MEMORY[0x277D2A3C8])
    {
      v92 = OUTLINED_FUNCTION_9_85();
      v93(v92);
      v73 = v169;
      v59 = v170;
      v94 = OUTLINED_FUNCTION_10_84();
      v91 = v171;
      v95(v94);
      sub_217006E74();
    }

    else if (v81 == *MEMORY[0x277D2A428])
    {
      v96 = OUTLINED_FUNCTION_9_85();
      v97(v96);
      v73 = v166;
      v59 = v167;
      v98 = OUTLINED_FUNCTION_10_84();
      v91 = v168;
      v99(v98);
      sub_21700C534();
    }

    else if (v81 == *MEMORY[0x277D2A388])
    {
      v100 = OUTLINED_FUNCTION_9_85();
      v101(v100);
      v73 = v163;
      v59 = v164;
      v102 = OUTLINED_FUNCTION_10_84();
      v91 = v165;
      v103(v102);
      sub_217006F34();
    }

    else if (v81 == *MEMORY[0x277D2A408])
    {
      v104 = OUTLINED_FUNCTION_9_85();
      v105(v104);
      v73 = v160;
      v59 = v161;
      v106 = OUTLINED_FUNCTION_10_84();
      v91 = v162;
      v107(v106);
      sub_21700C244();
    }

    else if (v81 == *MEMORY[0x277D2A3B0])
    {
      v108 = OUTLINED_FUNCTION_9_85();
      v109(v108);
      v73 = v157;
      v59 = v158;
      v110 = OUTLINED_FUNCTION_10_84();
      v91 = v159;
      v111(v110);
      sub_217006B54();
    }

    else if (v81 == *MEMORY[0x277D2A3B8])
    {
      v112 = OUTLINED_FUNCTION_9_85();
      v113(v112);
      v73 = v154;
      v59 = v155;
      v114 = OUTLINED_FUNCTION_10_84();
      v91 = v156;
      v115(v114);
      sub_21700BA14();
    }

    else if (v81 == *MEMORY[0x277D2A440])
    {
      v116 = OUTLINED_FUNCTION_9_85();
      v117(v116);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v118();
      sub_21700C804();
    }

    else if (v81 == *MEMORY[0x277D2A3E8])
    {
      v119 = OUTLINED_FUNCTION_9_85();
      v120(v119);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v121();
      sub_21700C724();
    }

    else if (v81 == *MEMORY[0x277D2A450])
    {
      v122 = OUTLINED_FUNCTION_9_85();
      v123(v122);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v124();
      sub_21700C964();
    }

    else if (v81 == *MEMORY[0x277D2A3C0])
    {
      v125 = OUTLINED_FUNCTION_9_85();
      v126(v125);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v127();
      sub_21700BE84();
    }

    else if (v81 == *MEMORY[0x277D2A3D0])
    {
      v128 = OUTLINED_FUNCTION_9_85();
      v129(v128);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_30_41();
      OUTLINED_FUNCTION_32_31();
      v130();
      sub_217006FA4();
    }

    else if (v81 == *MEMORY[0x277D2A3F8])
    {
      v131 = OUTLINED_FUNCTION_13_71();
      v132(v131);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v133();
      sub_21700C014();
    }

    else if (v81 == *MEMORY[0x277D2A430])
    {
      v134 = OUTLINED_FUNCTION_13_71();
      v135(v134);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v136();
      sub_21700C624();
    }

    else if (v81 == *MEMORY[0x277D2A458])
    {
      v137 = OUTLINED_FUNCTION_13_71();
      v138(v137);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v139();
      sub_217007394();
    }

    else if (v81 == *MEMORY[0x277D2A448])
    {
      v140 = OUTLINED_FUNCTION_13_71();
      v141(v140);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v142();
      sub_2170072F4();
    }

    else if (v81 == *MEMORY[0x277D2A420])
    {
      v143 = OUTLINED_FUNCTION_13_71();
      v144(v143);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v145();
      sub_217007234();
    }

    else if (v81 == *MEMORY[0x277D2A3D8])
    {
      v146 = OUTLINED_FUNCTION_13_71();
      v147(v146);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v148();
      sub_217007034();
    }

    else
    {
      if (v81 != *MEMORY[0x277D2A3E0])
      {
        (*(v76 + 8))(v80, v74);
        return 0;
      }

      v149 = OUTLINED_FUNCTION_13_71();
      v150(v149);
      OUTLINED_FUNCTION_7_95();
      OUTLINED_FUNCTION_14_67();
      OUTLINED_FUNCTION_32_31();
      v151();
      sub_2170070C4();
    }

    OUTLINED_FUNCTION_43_28();
    (*(v59 + 8))(v73, v91);
  }

  return v74;
}

uint64_t sub_216C756EC()
{
  v0 = sub_2170070F4();
  v1 = OUTLINED_FUNCTION_0(v0, &v113);
  v90 = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v3);
  sub_217007064();
  OUTLINED_FUNCTION_1();
  v93 = v5;
  v94 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v92 = v6;
  OUTLINED_FUNCTION_4_1();
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v96 = v8;
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v95 = v9;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v99 = v11;
  v100 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v98 = v12;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v105 = v14;
  v106 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v104 = v15;
  OUTLINED_FUNCTION_4_1();
  sub_21700C644();
  OUTLINED_FUNCTION_1();
  v102 = v17;
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v101 = v18;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v108 = v20;
  v109 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v107 = v21;
  OUTLINED_FUNCTION_4_1();
  v22 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v110 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v111 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v33 = v32 - v31;
  v34 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v40 = v39 - v38;
  v41 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  v47 = v46 - v45;
  (*(v43 + 16))(v46 - v45, v112, v41);
  v48 = (*(v43 + 88))(v47, v41);
  if (v48 != *MEMORY[0x277D2A400])
  {
    if (v48 == *MEMORY[0x277D2A418] || v48 == *MEMORY[0x277D2A438] || v48 == *MEMORY[0x277D2A3C8] || v48 == *MEMORY[0x277D2A428] || v48 == *MEMORY[0x277D2A388] || v48 == *MEMORY[0x277D2A408])
    {
      goto LABEL_10;
    }

    if (v48 == *MEMORY[0x277D2A3B0])
    {
      v55 = OUTLINED_FUNCTION_12_74();
      v56(v55);
      (*(v111 + 32))(v33, v47, v28);
      sub_217006AE4();
      OUTLINED_FUNCTION_39_29();
      v52 = v33;
      v53 = v28;
      goto LABEL_3;
    }

    if (v48 == *MEMORY[0x277D2A3B8])
    {
      v57 = OUTLINED_FUNCTION_12_74();
      v58(v57);
      (*(v110 + 32))(v27, v47, v22);
      sub_21700B9B4();
      OUTLINED_FUNCTION_39_29();
      v52 = v27;
      v53 = v22;
      goto LABEL_3;
    }

    if (v48 == *MEMORY[0x277D2A440])
    {
      v59 = OUTLINED_FUNCTION_12_74();
      v60(v59);
      v61 = v107;
      v62 = v108;
      v63 = OUTLINED_FUNCTION_11_80();
      v64 = v109;
      v65(v63);
      v66 = sub_21700C774();
LABEL_18:
      v43 = v66;
      (*(v62 + 8))(v61, v64);
      return v43;
    }

    if (v48 != *MEMORY[0x277D2A3E8] && v48 != *MEMORY[0x277D2A450] && v48 != *MEMORY[0x277D2A3C0] && v48 != *MEMORY[0x277D2A3D0])
    {
      if (v48 == *MEMORY[0x277D2A3F8])
      {
        v67 = OUTLINED_FUNCTION_12_74();
        v68(v67);
        v61 = v104;
        v62 = v105;
        v69 = OUTLINED_FUNCTION_11_80();
        v64 = v106;
        v70(v69);
        v66 = sub_21700BF64();
        goto LABEL_18;
      }

      if (v48 == *MEMORY[0x277D2A430])
      {
        v71 = OUTLINED_FUNCTION_12_74();
        v72(v71);
        v61 = v101;
        v62 = v102;
        v73 = OUTLINED_FUNCTION_11_80();
        v64 = v103;
        v74(v73);
        v66 = sub_21700C5E4();
        goto LABEL_18;
      }

      if (v48 == *MEMORY[0x277D2A458])
      {
        v75 = OUTLINED_FUNCTION_12_74();
        v76(v75);
        v61 = v98;
        v62 = v99;
        v77 = OUTLINED_FUNCTION_11_80();
        v64 = v100;
        v78(v77);
        v66 = sub_2170073B4();
        goto LABEL_18;
      }

      if (v48 == *MEMORY[0x277D2A448])
      {
        v79 = OUTLINED_FUNCTION_12_74();
        v80(v79);
        v61 = v95;
        v62 = v96;
        v81 = OUTLINED_FUNCTION_11_80();
        v64 = v97;
        v82(v81);
        v66 = sub_217007314();
        goto LABEL_18;
      }

      if (v48 != *MEMORY[0x277D2A420])
      {
        if (v48 == *MEMORY[0x277D2A3D8])
        {
          v83 = OUTLINED_FUNCTION_12_74();
          v84(v83);
          v61 = v92;
          v62 = v93;
          v85 = OUTLINED_FUNCTION_11_80();
          v64 = v94;
          v86(v85);
          v66 = sub_217006FF4();
          goto LABEL_18;
        }

        if (v48 == *MEMORY[0x277D2A3E0])
        {
          v87 = OUTLINED_FUNCTION_12_74();
          v88(v87);
          v62 = v90;
          v61 = v89;
          v64 = v91;
          (*(v90 + 32))(v89, v47);
          v66 = sub_217007074();
          goto LABEL_18;
        }
      }
    }

LABEL_10:
    (*(v43 + 8))(v47, v41);
    return 0;
  }

  v49 = OUTLINED_FUNCTION_12_74();
  v50(v49);
  (*(v36 + 32))(v40, v47, v34);
  sub_21700C0C4();
  OUTLINED_FUNCTION_39_29();
  v52 = v40;
  v53 = v34;
LABEL_3:
  v51(v52, v53);
  return v43;
}

uint64_t sub_216C75FE8()
{
  v0 = sub_2170070F4();
  v1 = OUTLINED_FUNCTION_0(v0, &v307);
  v286[5] = v2;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v3);
  v4 = sub_217007064();
  v5 = OUTLINED_FUNCTION_0(v4, &v313);
  v288 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v7);
  v295 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v294 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v10);
  v11 = sub_21700C644();
  v12 = OUTLINED_FUNCTION_0(v11, &v318);
  v292 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v14);
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v300 = v16;
  v301 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v299 = v17;
  OUTLINED_FUNCTION_4_1();
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v307 = v19;
  v308 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v306 = v20;
  OUTLINED_FUNCTION_4_1();
  v21 = sub_21700BEC4();
  OUTLINED_FUNCTION_1();
  v314 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v311 = v24;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7790);
  MEMORY[0x28223BE20](v313);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v296 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  v298 = v30;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  v305 = v32;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v33);
  v35 = v286 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5098);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v297 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  v302 = v51;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  v303 = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  v304 = v55;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  v309 = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  v310 = v59;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_4();
  v312 = v61;
  OUTLINED_FUNCTION_3_1();
  v63 = MEMORY[0x28223BE20](v62);
  v65 = v286 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = v286 - v66;
  v68 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v70 = v69;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7();
  v74 = v73 - v72;
  v75 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v77 = v76;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7();
  v81 = v80 - v79;
  (*(v77 + 16))(v80 - v79, v315, v75);
  v82 = OUTLINED_FUNCTION_39_3();
  v84 = v83(v82);
  if (v84 != *MEMORY[0x277D2A400])
  {
    v92 = v313;
    v93 = v314;
    if (v84 == *MEMORY[0x277D2A418] || v84 == *MEMORY[0x277D2A438] || v84 == *MEMORY[0x277D2A3C8] || v84 == *MEMORY[0x277D2A428] || v84 == *MEMORY[0x277D2A388] || v84 == *MEMORY[0x277D2A408] || v84 == *MEMORY[0x277D2A3B0])
    {
      goto LABEL_13;
    }

    if (v84 == *MEMORY[0x277D2A3B8])
    {
      v110 = OUTLINED_FUNCTION_15_63();
      v111(v110);
      v112 = OUTLINED_FUNCTION_41_28();
      v113(v112);
      v114 = v310;
      sub_21700B9D4();
      v115 = v93;
      OUTLINED_FUNCTION_37_39();
      v116 = v309;
      v117(v309);
      v118 = OUTLINED_FUNCTION_8_95(v116);
      v119 = v305;
      sub_216C7775C(v118, v305);
      sub_216C7775C(v116, v119 + v92);
      OUTLINED_FUNCTION_10_65(v119);
      if (!v186)
      {
        v87 = v304;
        sub_216C7775C(v119, v304);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v119 + v92, 1, v21);
        v132 = (v115 + 8);
        if (EnumTagSinglePayload == 1)
        {
          v133 = v87;
          OUTLINED_FUNCTION_36_35(v309);
          v134 = v310;
LABEL_47:
          OUTLINED_FUNCTION_36_35(v134);
          v149 = OUTLINED_FUNCTION_35_33();
          v150(v149);
          (*v132)(v133, v21);
LABEL_48:
          v100 = v119;
          goto LABEL_17;
        }

        v151 = (v115 + 32);
        v152 = OUTLINED_FUNCTION_21_56();
        v153(v152);
        sub_216C777CC();
        OUTLINED_FUNCTION_40_27();
        v154 = OUTLINED_FUNCTION_46_27();
        v151(v154);
        OUTLINED_FUNCTION_71_0();
        sub_21669987C(v155, v156);
        OUTLINED_FUNCTION_71_0();
        sub_21669987C(v157, v158);
        v159 = OUTLINED_FUNCTION_35_33();
        v160(v159);
        (v151)(v304, v21);
        goto LABEL_52;
      }

      v120 = v116;
      goto LABEL_30;
    }

    if (v84 == *MEMORY[0x277D2A440])
    {
      v121 = OUTLINED_FUNCTION_15_63();
      v122(v121);
      v123 = OUTLINED_FUNCTION_41_28();
      v124(v123);
      v114 = v303;
      sub_21700C6A4();
      v125 = v93;
      OUTLINED_FUNCTION_37_39();
      v126 = v302;
      v127(v302);
      v128 = OUTLINED_FUNCTION_8_95(v126);
      v119 = v298;
      sub_216C7775C(v128, v298);
      sub_216C7775C(v126, v119 + v92);
      OUTLINED_FUNCTION_10_65(v119);
      if (!v186)
      {
        v87 = v297;
        sub_216C7775C(v119, v297);
        v148 = __swift_getEnumTagSinglePayload(v119 + v92, 1, v21);
        v132 = (v125 + 8);
        if (v148 == 1)
        {
          v133 = v87;
          OUTLINED_FUNCTION_36_35(v302);
          v134 = v303;
          goto LABEL_47;
        }

        v161 = (v125 + 32);
        v162 = OUTLINED_FUNCTION_21_56();
        v163(v162);
        sub_216C777CC();
        OUTLINED_FUNCTION_40_27();
        v164 = OUTLINED_FUNCTION_46_27();
        v161(v164);
        OUTLINED_FUNCTION_71_0();
        sub_21669987C(v165, v166);
        OUTLINED_FUNCTION_71_0();
        sub_21669987C(v167, v168);
        v169 = OUTLINED_FUNCTION_35_33();
        v170(v169);
        (v161)(v297, v21);
LABEL_52:
        OUTLINED_FUNCTION_71_0();
        goto LABEL_21;
      }

      v120 = v126;
LABEL_30:
      OUTLINED_FUNCTION_36_35(v120);
      OUTLINED_FUNCTION_36_35(v114);
      v129 = OUTLINED_FUNCTION_35_33();
      v130(v129);
      OUTLINED_FUNCTION_10_65(v119 + v92);
      if (v186)
      {
        v91 = v119;
        goto LABEL_5;
      }

      goto LABEL_48;
    }

    if (v84 != *MEMORY[0x277D2A3E8] && v84 != *MEMORY[0x277D2A450] && v84 != *MEMORY[0x277D2A3C0] && v84 != *MEMORY[0x277D2A3D0])
    {
      if (v84 == *MEMORY[0x277D2A3F8])
      {
        v135 = OUTLINED_FUNCTION_15_63();
        v136(v135);
        OUTLINED_FUNCTION_42_30();
        v137 = OUTLINED_FUNCTION_34_32();
        v138(v137);
        OUTLINED_FUNCTION_94_0();
        sub_21700BFC4();
        OUTLINED_FUNCTION_37_39();
        v139 = OUTLINED_FUNCTION_33_35();
        v140(v139);
        v141 = OUTLINED_FUNCTION_8_95(v75);
        v87 = v296;
        sub_216C7775C(v141, v296);
        OUTLINED_FUNCTION_47_28();
        OUTLINED_FUNCTION_10_65(v87);
        if (v186)
        {
          v142 = OUTLINED_FUNCTION_23_45(&v320);
          sub_21669987C(v142, v143);
          v144 = OUTLINED_FUNCTION_23_45(&v321);
          sub_21669987C(v144, v145);
          v146 = OUTLINED_FUNCTION_19_49();
          v147(v146);
          OUTLINED_FUNCTION_10_65(v296 + v92);
          if (v186)
          {
            v91 = v296;
            goto LABEL_5;
          }
        }

        else
        {
          sub_216C7775C(v296, v291);
          OUTLINED_FUNCTION_28_37();
          if (!v186)
          {
            v220 = OUTLINED_FUNCTION_21_56();
            v221(v220);
            sub_216C777CC();
            OUTLINED_FUNCTION_27_45();
            v222 = OUTLINED_FUNCTION_24_36();
            v75(v222);
            v223 = OUTLINED_FUNCTION_23_45(&v320);
            sub_21669987C(v223, v224);
            v225 = OUTLINED_FUNCTION_23_45(&v321);
            sub_21669987C(v225, v226);
            v227 = OUTLINED_FUNCTION_19_49();
LABEL_79:
            v229(v227, v228);
            (v75)(v21, v21);
            goto LABEL_52;
          }

          v187 = OUTLINED_FUNCTION_23_45(&v320);
          sub_21669987C(v187, v188);
          v189 = OUTLINED_FUNCTION_23_45(&v321);
          sub_21669987C(v189, v190);
          v191 = OUTLINED_FUNCTION_19_49();
          v192(v191);
          v193 = OUTLINED_FUNCTION_45_26();
          v194(v193);
        }

        v100 = v296;
        goto LABEL_17;
      }

      if (v84 == *MEMORY[0x277D2A430])
      {
        v171 = OUTLINED_FUNCTION_15_63();
        v172(v171);
        OUTLINED_FUNCTION_42_30();
        v173 = OUTLINED_FUNCTION_34_32();
        v174(v173);
        OUTLINED_FUNCTION_94_0();
        sub_21700C5C4();
        OUTLINED_FUNCTION_37_39();
        v175 = OUTLINED_FUNCTION_33_35();
        v176(v175);
        v177 = OUTLINED_FUNCTION_8_95(v75);
        v87 = v293;
        sub_216C7775C(v177, v293);
        OUTLINED_FUNCTION_47_28();
        OUTLINED_FUNCTION_10_65(v87);
        if (!v186)
        {
          sub_216C7775C(v293, v290);
          OUTLINED_FUNCTION_28_37();
          if (!v209)
          {
            v230 = OUTLINED_FUNCTION_21_56();
            v231(v230);
            sub_216C777CC();
            OUTLINED_FUNCTION_27_45();
            v232 = OUTLINED_FUNCTION_24_36();
            v75(v232);
            v233 = OUTLINED_FUNCTION_23_45(v316);
            sub_21669987C(v233, v234);
            v235 = OUTLINED_FUNCTION_23_45(&v317);
            sub_21669987C(v235, v236);
            v227 = OUTLINED_FUNCTION_20_56();
LABEL_78:
            v228 = *(v237 - 256);
            goto LABEL_79;
          }

          v210 = OUTLINED_FUNCTION_23_45(v316);
          sub_21669987C(v210, v211);
          v212 = OUTLINED_FUNCTION_23_45(&v317);
          sub_21669987C(v212, v213);
          v214 = OUTLINED_FUNCTION_20_56();
          v216(v214, *(v215 - 256));
          v217 = OUTLINED_FUNCTION_45_26();
          v218(v217);
          goto LABEL_76;
        }

        v178 = OUTLINED_FUNCTION_23_45(v316);
        sub_21669987C(v178, v179);
        v180 = OUTLINED_FUNCTION_23_45(&v317);
        sub_21669987C(v180, v181);
        v182 = OUTLINED_FUNCTION_20_56();
        v184(v182, *(v183 - 256));
        OUTLINED_FUNCTION_10_65(v293 + v92);
        if (!v186)
        {
LABEL_76:
          v219 = &v319;
LABEL_77:
          v100 = *(v219 - 32);
          goto LABEL_17;
        }

        v185 = &v319;
LABEL_59:
        v91 = *(v185 - 32);
        goto LABEL_5;
      }

      if (v84 != *MEMORY[0x277D2A458] && v84 != *MEMORY[0x277D2A448] && v84 != *MEMORY[0x277D2A420])
      {
        if (v84 == *MEMORY[0x277D2A3D8])
        {
          v195 = OUTLINED_FUNCTION_15_63();
          v196(v195);
          OUTLINED_FUNCTION_42_30();
          v197 = OUTLINED_FUNCTION_34_32();
          v198(v197);
          OUTLINED_FUNCTION_94_0();
          sub_217007004();
          OUTLINED_FUNCTION_37_39();
          v199 = OUTLINED_FUNCTION_33_35();
          v200(v199);
          v201 = OUTLINED_FUNCTION_8_95(v75);
          v87 = v289;
          sub_216C7775C(v201, v289);
          OUTLINED_FUNCTION_47_28();
          OUTLINED_FUNCTION_10_65(v87);
          if (v186)
          {
            v202 = OUTLINED_FUNCTION_23_45(&v309);
            sub_21669987C(v202, v203);
            v204 = OUTLINED_FUNCTION_23_45(&v310);
            sub_21669987C(v204, v205);
            v206 = OUTLINED_FUNCTION_18_55();
            v208(v206, *(v207 - 256));
            OUTLINED_FUNCTION_10_65(v289 + v92);
            if (v186)
            {
              v185 = &v314;
              goto LABEL_59;
            }
          }

          else
          {
            sub_216C7775C(v289, v286[3]);
            OUTLINED_FUNCTION_28_37();
            if (!v252)
            {
              v272 = OUTLINED_FUNCTION_21_56();
              v273(v272);
              sub_216C777CC();
              OUTLINED_FUNCTION_27_45();
              v274 = OUTLINED_FUNCTION_24_36();
              v75(v274);
              v275 = OUTLINED_FUNCTION_23_45(&v309);
              sub_21669987C(v275, v276);
              v277 = OUTLINED_FUNCTION_23_45(&v310);
              sub_21669987C(v277, v278);
              v227 = OUTLINED_FUNCTION_18_55();
              goto LABEL_78;
            }

            v253 = OUTLINED_FUNCTION_23_45(&v309);
            sub_21669987C(v253, v254);
            v255 = OUTLINED_FUNCTION_23_45(&v310);
            sub_21669987C(v255, v256);
            v257 = OUTLINED_FUNCTION_18_55();
            v259(v257, *(v258 - 256));
            v260 = OUTLINED_FUNCTION_45_26();
            v261(v260);
          }

          v219 = &v314;
          goto LABEL_77;
        }

        if (v84 == *MEMORY[0x277D2A3E0])
        {
          v238 = OUTLINED_FUNCTION_15_63();
          v239(v238);
          OUTLINED_FUNCTION_42_30();
          v240 = OUTLINED_FUNCTION_34_32();
          v241(v240);
          OUTLINED_FUNCTION_94_0();
          sub_217007094();
          OUTLINED_FUNCTION_37_39();
          v242 = OUTLINED_FUNCTION_33_35();
          v243(v242);
          v244 = OUTLINED_FUNCTION_8_95(v75);
          v87 = v287;
          sub_216C7775C(v244, v287);
          OUTLINED_FUNCTION_47_28();
          OUTLINED_FUNCTION_10_65(v87);
          if (v186)
          {
            v245 = OUTLINED_FUNCTION_23_45(&v302);
            sub_21669987C(v245, v246);
            v247 = OUTLINED_FUNCTION_23_45(&v303);
            sub_21669987C(v247, v248);
            v249 = OUTLINED_FUNCTION_17_61();
            v251(v249, *(v250 - 256));
            OUTLINED_FUNCTION_10_65(v287 + v92);
            if (v186)
            {
              v185 = &v308;
              goto LABEL_59;
            }
          }

          else
          {
            sub_216C7775C(v287, v286[0]);
            OUTLINED_FUNCTION_28_37();
            if (!v262)
            {
              v279 = OUTLINED_FUNCTION_21_56();
              v280(v279);
              sub_216C777CC();
              OUTLINED_FUNCTION_27_45();
              v281 = OUTLINED_FUNCTION_24_36();
              v75(v281);
              v282 = OUTLINED_FUNCTION_23_45(&v302);
              sub_21669987C(v282, v283);
              v284 = OUTLINED_FUNCTION_23_45(&v303);
              sub_21669987C(v284, v285);
              v227 = OUTLINED_FUNCTION_17_61();
              goto LABEL_78;
            }

            v263 = OUTLINED_FUNCTION_23_45(&v302);
            sub_21669987C(v263, v264);
            v265 = OUTLINED_FUNCTION_23_45(&v303);
            sub_21669987C(v265, v266);
            v267 = OUTLINED_FUNCTION_17_61();
            v269(v267, *(v268 - 256));
            v270 = OUTLINED_FUNCTION_45_26();
            v271(v270);
          }

          v219 = &v308;
          goto LABEL_77;
        }
      }
    }

LABEL_13:
    v94 = OUTLINED_FUNCTION_39_3();
    v95(v94);
LABEL_18:
    LOBYTE(v87) = 0;
    return v87 & 1;
  }

  v85 = OUTLINED_FUNCTION_15_63();
  v86(v85);
  (*(v70 + 32))(v74, v81, v68);
  sub_21700C114();
  v87 = v314;
  (*(v314 + 104))(v65, *MEMORY[0x277CD8000], v21);
  __swift_storeEnumTagSinglePayload(v65, 0, 1, v21);
  v88 = *(v313 + 48);
  sub_216C7775C(v67, v35);
  sub_216C7775C(v65, &v35[v88]);
  if (__swift_getEnumTagSinglePayload(v35, 1, v21) != 1)
  {
    v96 = v312;
    sub_216C7775C(v35, v312);
    v97 = __swift_getEnumTagSinglePayload(&v35[v88], 1, v21);
    v315 = (v87 + 8);
    if (v97 == 1)
    {
      sub_21669987C(v65, &qword_27CAC5098);
      sub_21669987C(v67, &qword_27CAC5098);
      v98 = OUTLINED_FUNCTION_38_35();
      v99(v98);
      (*v315)(v96, v21);
      goto LABEL_16;
    }

    v102 = &v35[v88];
    v103 = v87 + 32;
    v104 = v311;
    (*(v87 + 32))(v311, v102, v21);
    sub_216C777CC();
    OUTLINED_FUNCTION_39_3();
    LOBYTE(v87) = sub_21700E494();
    v105 = *(v103 - 24);
    v105(v104, v21);
    sub_21669987C(v65, &qword_27CAC5098);
    sub_21669987C(v67, &qword_27CAC5098);
    v106 = OUTLINED_FUNCTION_38_35();
    v107(v106);
    v105(v312, v21);
    v108 = v35;
    v109 = &qword_27CAC5098;
LABEL_21:
    sub_21669987C(v108, v109);
    return v87 & 1;
  }

  sub_21669987C(v65, &qword_27CAC5098);
  sub_21669987C(v67, &qword_27CAC5098);
  v89 = OUTLINED_FUNCTION_38_35();
  v90(v89);
  if (__swift_getEnumTagSinglePayload(&v35[v88], 1, v21) != 1)
  {
LABEL_16:
    v100 = v35;
LABEL_17:
    sub_21669987C(v100, &qword_27CAC7790);
    goto LABEL_18;
  }

  v91 = v35;
LABEL_5:
  sub_21669987C(v91, &qword_27CAC5098);
  LOBYTE(v87) = 1;
  return v87 & 1;
}

uint64_t sub_216C7775C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216C777CC()
{
  result = qword_280E2A3D8;
  if (!qword_280E2A3D8)
  {
    sub_21700BEC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A3D8);
  }

  return result;
}

uint64_t MusicSource.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

unint64_t sub_216C778C0()
{
  result = qword_27CAC7798;
  if (!qword_27CAC7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7798);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C77A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v32 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v15 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  sub_21700CE04();
  v21 = v33;
  v22 = *(v6 + 16);
  v36 = v4;
  v22(v9, v33, v4);
  v23 = v34;
  sub_21700D224();
  if (v23)
  {
    (*(v6 + 8))(v21, v36);
    return (*(v11 + 8))(v37, v35);
  }

  else
  {
    v25 = v32;
    (*(v17 + 32))(v32, v20, v15);
    v26 = v31;
    v27 = v37;
    sub_21700CE04();
    v28 = sub_21700CD44();
    (*(v6 + 8))(v21, v36);
    v29 = *(v11 + 8);
    v30 = v35;
    v29(v27, v35);
    v29(v26, v30);
    result = type metadata accessor for PopToRootAction();
    *(v25 + *(result + 20)) = v28 & 1;
  }

  return result;
}

uint64_t ReferrerInfo.init(externalReferrerURL:referringApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2166CF4DC(a1, a4);
  result = type metadata accessor for ReferrerInfo();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t ReferrerInfo.referringApp.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReferrerInfo() + 20));
  sub_21700DF14();
  return v1;
}

uint64_t static ReferrerInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACA4C0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v17 = *(v16 + 56);
  sub_2167DE934(a1, &v28 - v14);
  sub_2167DE934(a2, &v15[v17]);
  OUTLINED_FUNCTION_5_3(v15);
  if (!v18)
  {
    sub_2167DE934(v15, v12);
    OUTLINED_FUNCTION_5_3(&v15[v17]);
    if (!v18)
    {
      (*(v6 + 32))(v9, &v15[v17], v4);
      sub_216C78730(&qword_27CAC77A0);
      v20 = sub_21700E494();
      v21 = *(v6 + 8);
      v21(v9, v4);
      v21(v12, v4);
      sub_21669987C(v15, &qword_27CABA820);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v12, v4);
LABEL_9:
    sub_21669987C(v15, &unk_27CACA4C0);
    return 0;
  }

  OUTLINED_FUNCTION_5_3(&v15[v17]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_21669987C(v15, &qword_27CABA820);
LABEL_13:
  v22 = *(type metadata accessor for ReferrerInfo() + 20);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (v26)
    {
      v27 = *v23 == *v25 && v24 == v26;
      if (v27 || (sub_21700F7D4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v26)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_216C780CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000002170855E0 == a2;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69727265666572 && a2 == 0xEC00000070704167)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_216C781A0(char a1)
{
  if (a1)
  {
    return 0x6E69727265666572;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_216C781EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216C780CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216C78214(uint64_t a1)
{
  v2 = sub_216C78424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216C78250(uint64_t a1)
{
  v2 = sub_216C78424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferrerInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC77A8);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216C78424();
  sub_21700F974();
  v10[15] = 0;
  sub_217005EF4();
  sub_216C78730(&qword_27CABAAC0);
  sub_21700F704();
  if (!v1)
  {
    type metadata accessor for ReferrerInfo();
    v10[14] = 1;
    sub_21700F6D4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_216C78424()
{
  result = qword_27CAC77B0;
  if (!qword_27CAC77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC77B0);
  }

  return result;
}

uint64_t ReferrerInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC77B8);
  OUTLINED_FUNCTION_1();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for ReferrerInfo();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216C78424();
  sub_21700F964();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  sub_217005EF4();
  v25 = 0;
  sub_216C78730(&qword_27CABAAE0);
  sub_21700F644();
  sub_2166CF4DC(v6, v12);
  v24 = 1;
  v13 = sub_21700F614();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_1_185();
  v17(v16);
  v18 = &v12[*(v10 + 20)];
  *v18 = v13;
  v18[1] = v15;
  sub_216C78774(v12, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_2168CC340(v12);
}

uint64_t sub_216C78730(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217005EF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216C78774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferrerInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ReferrerInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_216C78900()
{
  result = qword_27CAC77C0;
  if (!qword_27CAC77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC77C0);
  }

  return result;
}

unint64_t sub_216C78958()
{
  result = qword_27CAC77C8;
  if (!qword_27CAC77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC77C8);
  }

  return result;
}

unint64_t sub_216C789B0()
{
  result = qword_27CAC77D0;
  if (!qword_27CAC77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC77D0);
  }

  return result;
}

BOOL sub_216C78A04(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *&a1 == *&a3;
  if ((a4 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *&a1 == *&a3;
  if (a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_216C78A40(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    if ((a5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (*&a1 == *&a4)
  {
    return sub_21700AC74();
  }

  return 0;
}

uint64_t sub_216C78ABC(uint64_t a1, uint64_t a2)
{
  v30 = sub_2170090F4();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a2 + 24);
  v39 = *(a2 + 16);
  v43[0] = v39;
  v43[1] = MEMORY[0x277CE0F78];
  v43[2] = MEMORY[0x277CE1428];
  v43[3] = v5;
  v38 = v5;
  v43[4] = MEMORY[0x277CE0F60];
  v43[5] = MEMORY[0x277CE1410];
  v6 = sub_217009744();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v37 = &v27 - v7;
  swift_getWitnessTable();
  v8 = sub_2170097A4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_217008BC4();
  v33 = v8;
  v34 = v9;
  v10 = sub_2170089F4();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v27 - v14;
  v43[0] = *(v2 + 16);
  v31 = *(v2 + 8);
  v15 = v2 + *(a2 + 40);
  v16 = *v15;
  v17 = *(v15 + 8);

  if (v17 != 1)
  {
    sub_2167B88A8(v16, 0);
    sub_21700ED94();
    v18 = sub_217009C34();
    v27 = v2;
    v19 = v18;
    sub_217007BC4();

    v20 = v28;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v16, 0);
    (*(v29 + 8))(v20, v30);
  }

  v21 = v37;
  sub_216C78FB0(v43, 1, v39, MEMORY[0x277CE0F78], v38, MEMORY[0x277CE0F60], v37);

  v22 = swift_getWitnessTable();
  sub_21700B3B4();
  sub_21700AAA4();
  (*(v40 + 8))(v21, v6);
  v23 = swift_getWitnessTable();
  v41 = v22;
  v42 = v23;
  swift_getWitnessTable();
  v24 = v35;
  sub_2166C24DC(v12, v10);
  v25 = *(v36 + 8);
  v25(v12, v10);
  sub_2166C24DC(v24, v10);
  return (v25)(v24, v10);
}

uint64_t sub_216C78FB0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2170081E4();
  sub_216C79514(a1, a2, a3, a4, a5, a6, a7);
  return sub_216C796D4(v15);
}

uint64_t sub_216C79058(void *a1)
{
  [a1 userInterfaceStyle];
  sub_216B936F0();

  return sub_21700F0D4();
}

void sub_216C790B4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_2167B8000();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_216C7914C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 24) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 16);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 24) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216C792AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 24] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 2) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216C79514@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a2;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v25[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19, v22, v21, v17);
  (*(v13 + 16))(v15, a1, a4);
  sub_21700DF14();
  return sub_216C79728(v19, v15, v26, v23, a3, a4, MEMORY[0x277CE1428], a7, a5, a6, MEMORY[0x277CE1410]);
}

uint64_t sub_216C79728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = a4;
  LODWORD(v51) = a3;
  v49 = a2;
  v43 = a8;
  v56 = a10;
  v57 = a1;
  v47 = a7;
  v50 = *(a7 - 8);
  v54 = a11;
  MEMORY[0x28223BE20](a1);
  v48 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_217009534();
  MEMORY[0x28223BE20](v55);
  v52 = &v37 - v15;
  v37 = a6;
  v46 = *(a6 - 8);
  MEMORY[0x28223BE20](v16);
  v44 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v42 = a9;
  v40 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = sub_217008544();
  MEMORY[0x28223BE20](v19);
  WitnessTable = swift_getWitnessTable();
  v58 = v19;
  v59 = a6;
  v60 = WitnessTable;
  v61 = v56;
  v45 = sub_2170080A4();
  v20.n128_f64[0] = MEMORY[0x28223BE20](v45);
  v39 = &v37 - v21;
  v22 = a5;
  v23 = *(a5 - 8);
  v24 = *(v23 + 16);
  v38 = v22;
  v24(a8, v57, v22, v20);
  sub_217008914();
  sub_217008534();
  v25 = v46;
  v26 = v49;
  v27 = v37;
  (*(v46 + 16))(v44, v49, v37);
  v28 = v27;
  v29 = v56;
  sub_217008094();
  v30 = v50;
  v31 = v47;
  v32 = v53;
  (*(v50 + 16))(v48, v53, v47);
  sub_21700B3B4();
  v51 = v33;
  (*(v30 + 8))(v32, v31);
  (*(v25 + 8))(v26, v27);
  v34 = v38;
  (*(v23 + 8))(v57, v38);
  v35 = v54;
  sub_217009524();
  v58 = v34;
  v59 = v28;
  v60 = v31;
  v61 = v42;
  v62 = v29;
  v63 = v35;
  sub_217009744();
  return sub_217008944();
}

uint64_t getEnumTagSinglePayload for RelatedContentProvider.Item.ItemType(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RelatedContentProvider.Item.ItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_216C79CD0()
{
  type metadata accessor for PaginationPageResult();
  swift_getWitnessTable();
  type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  type metadata accessor for PaginatedPagePresenterState();
  if (v0 <= 0x3F)
  {
    sub_2166BF8FC();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_216C79DF0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_216C79E30(a1);
  return v2;
}

char *sub_216C79E30(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = *v1;
  v4 = v3[10];
  v5 = v3[11];
  v54 = type metadata accessor for CatalogPagePresenter.State();
  sub_21700F164();
  v61 = sub_217007E04();
  OUTLINED_FUNCTION_1();
  v59 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v57 = &v46 - v8;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v50 = v10;
  v51 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v49 = *(v5 + 16);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_32();
  v52 = v14;
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  v47 = v16;
  v48 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  v60 = v4;
  v58 = v5;
  type metadata accessor for PaginationPageResult();
  OUTLINED_FUNCTION_0_215();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_19_0();
  v20 = type metadata accessor for OpaqueProtoRequestConvertibleIntent();
  v55 = type metadata accessor for PaginatedPagePresenterState();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v25 = &v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_1();
  v28 = v27;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = &v46 - v30;
  v32 = v3[13];
  sub_216C7A470();
  (*(v28 + 32))(&v2[v32], v31, v26);
  v33 = v53;
  v56 = *(*v2 + 120);
  *&v2[v56] = 0;
  *&v2[*(*v2 + 112)] = v33;

  sub_216A40254();
  v34 = swift_checkMetadataState();
  if (__swift_getEnumTagSinglePayload(v13, 1, v34) == 1)
  {
    (*(v50 + 8))(v13, v51);
  }

  else
  {
    sub_216A404D8(v34);
    (*(*(v34 - 8) + 8))(v13, v34);
    v35 = v52;
    if (__swift_getEnumTagSinglePayload(v19, 1, v52) != 1)
    {
      v36 = v60;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 64))(v35, AssociatedConformanceWitness);
      (*(*(v35 - 8) + 8))(v19, v35);
      goto LABEL_7;
    }

    (*(v47 + 8))(v19, v48);
  }

  v36 = v60;
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v20);
LABEL_7:
  sub_21700F164();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0);
  *&v25[*(swift_getTupleTypeMetadata2() + 48)] = 0;
  v38 = v55;
  swift_storeEnumTagMultiPayload();
  (*(v22 + 32))(&v2[*(*v2 + 96)], v25, v38);
  v39 = v57;
  sub_216A401A0();
  v40 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_181();
  v41 = swift_allocObject();
  v42 = v58;
  v41[2] = v36;
  v41[3] = v42;
  v41[4] = v40;
  v43 = v61;
  swift_getWitnessTable();
  v44 = sub_217007E84();

  (*(v59 + 8))(v39, v43);
  *&v2[v56] = v44;

  sub_216C7AA1C();

  return v2;
}