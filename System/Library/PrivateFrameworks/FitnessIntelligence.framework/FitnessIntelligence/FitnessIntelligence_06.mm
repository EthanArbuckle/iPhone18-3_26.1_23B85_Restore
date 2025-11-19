void sub_1B49D6FC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v212 = a4;
  v194 = a2;
  v204 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v218 = &v193 - v8;
  v217 = type metadata accessor for LocationCoordinate();
  v9 = *(*(v217 - 8) + 64);
  MEMORY[0x1EEE9AC00](v217);
  v216 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v215 = &v193 - v12;
  v209 = type metadata accessor for RingsPropertiesQuery();
  v13 = *(*(v209 - 1) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v228 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v229 = &v193 - v16;
  v205 = type metadata accessor for WorkoutPropertiesQuery();
  v17 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v19 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v223 = &v193 - v21;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v22 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v24 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v230 = &v193 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v193 - v28;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7300, &unk_1B4D1D7A0);
  v30 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234);
  v32 = &v193 - v31;
  Result = type metadata accessor for FitnessContextQueryResult();
  v232 = *(Result - 8);
  v233 = Result;
  v34 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](Result);
  v239 = &v193 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for FitnessContextQueryRequest();
  v211 = *(Request - 8);
  v36 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](Request);
  v238 = &v193 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = 0;
  v38 = 0;
  v213 = a3;
  v39 = *(a3 + 56);
  v202 = a3 + 56;
  v40 = 1 << *(a3 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v201 = (v40 + 63) >> 6;
  v214 = (v6 + 8);
  v219 = v5;
  v224 = v19;
  v225 = v29;
  v226 = v24;
  while (1)
  {
LABEL_5:
    if (v42)
    {
      v220 = (v42 - 1) & v42;
      v221 = v38;
      v43 = __clz(__rbit64(v42)) | (v38 << 6);
    }

    else
    {
      v44 = v38;
      do
      {
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_351;
        }

        if (v45 >= v201)
        {
          goto LABEL_349;
        }

        v46 = *(v202 + 8 * v45);
        ++v44;
      }

      while (!v46);
      v220 = (v46 - 1) & v46;
      v221 = v45;
      v43 = __clz(__rbit64(v46)) | (v45 << 6);
    }

    sub_1B49D9F90(*(v213 + 48) + *(v211 + 72) * v43, v238, type metadata accessor for FitnessContextQueryRequest);
    v47 = *(*v212 + 16);

    v236 = v47;
    if (v47)
    {
      break;
    }

LABEL_4:

    sub_1B49DA04C(v238, type metadata accessor for FitnessContextQueryRequest);
    v38 = v221;
    v42 = v220;
  }

  v208 = v43;
  v49 = 0;
  v235 = v48;
  while (1)
  {
    if (v49 >= *(v48 + 16))
    {
      __break(1u);
LABEL_351:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_352:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      return;
    }

    v62 = v239;
    sub_1B49D9F90(v48 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v49, v239, type metadata accessor for FitnessContextQueryResult);
    v63 = *(v233 + 20);
    v64 = *(Request + 20);
    v65 = *(v234 + 48);
    sub_1B49D9F90(v62 + v63, v32, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49D9F90(v238 + v64, &v32[v65], type metadata accessor for FitnessContextQueryDescriptor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      v84 = v226;
      sub_1B49D9F90(v32, v226, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v50 = v84;
        v51 = v215;
        sub_1B49DA2F8(v50, v215, type metadata accessor for LocationCoordinate);
        v52 = v216;
        sub_1B49DA2F8(&v32[v65], v216, type metadata accessor for LocationCoordinate);
        v53 = v217;
        v54 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v51 + *(v217 + 20)) longitude:*(v51 + *(v217 + 24))];
        v55 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v52 + *(v53 + 20)) longitude:*(v52 + *(v53 + 24))];
        [v54 distanceFromLocation_];
        v56 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v57 = v218;
        sub_1B4D1741C();

        v58 = v219;
        sub_1B4D1742C();
        v60 = v59;
        (*v214)(v57, v58);
        v61 = v52;
        v19 = v224;
        sub_1B49DA04C(v61, type metadata accessor for LocationCoordinate);
        sub_1B49DA04C(v51, type metadata accessor for LocationCoordinate);
        sub_1B49DA04C(v32, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49DA04C(v239, type metadata accessor for FitnessContextQueryResult);
        if (v60 < 500.0)
        {
          break;
        }

        goto LABEL_15;
      }

      v68 = type metadata accessor for LocationCoordinate;
      v69 = v84;
      goto LABEL_102;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
LABEL_103:
        v97 = v239;
        DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v239 + v63, v238 + v64);
        sub_1B4975024(v32, &qword_1EB8A7300, &unk_1B4D1D7A0);
        v99 = v97;
LABEL_104:
        sub_1B49DA04C(v99, type metadata accessor for FitnessContextQueryResult);
        if (DescriptorO2eeoiySbAC_ACtFZ_0)
        {
          break;
        }

        goto LABEL_15;
      }

      v67 = v225;
      sub_1B49D9F90(v32, v225, type metadata accessor for FitnessContextQueryDescriptor);
      if (swift_getEnumCaseMultiPayload())
      {
        v68 = type metadata accessor for WorkoutPropertiesQuery;
        v69 = v67;
LABEL_102:
        sub_1B49DA04C(v69, v68);
        goto LABEL_103;
      }

      v100 = v223;
      sub_1B49DA2F8(v67, v223, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49DA2F8(&v32[v65], v19, type metadata accessor for WorkoutPropertiesQuery);
      if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v100, v19) & 1) == 0)
      {
        goto LABEL_258;
      }

      v101 = *(v205 + 20);
      v102 = (v100 + v101);
      v103 = *(v100 + v101);
      v104 = &v19[v101];
      v105 = *v104;
      v227 = v103;
      v106 = *(v103 + 16);
      if (v106 != *(v105 + 16))
      {
        goto LABEL_258;
      }

      v107 = v102[2];
      v222 = v102[1];
      v108 = v102[3];
      v203 = v102[4];
      v109 = v102[5];
      v111 = *(v104 + 1);
      v110 = *(v104 + 2);
      v112 = *(v104 + 3);
      v207 = *(v104 + 4);
      v206 = *(v104 + 5);
      v197 = v111;
      v198 = v110;
      v196 = v112;
      v200 = v107;
      v199 = v108;
      v195 = v109;
      if (v106)
      {

        if (v227 != v105)
        {
          v113 = 32;
          do
          {
            v115 = *(v227 + v113);
            if (v115 > 5)
            {
              if (*(v227 + v113) > 8u)
              {
                v122 = 0x7265626D65766F6ELL;
                if (v115 != 10)
                {
                  v122 = 0x7265626D65636564;
                }

                if (v115 == 9)
                {
                  v120 = 0x7265626F74636FLL;
                }

                else
                {
                  v120 = v122;
                }

                if (v115 == 9)
                {
                  v121 = 0xE700000000000000;
                }

                else
                {
                  v121 = 0xE800000000000000;
                }
              }

              else if (v115 == 6)
              {
                v121 = 0xE400000000000000;
                v120 = 2037151082;
              }

              else if (v115 == 7)
              {
                v121 = 0xE600000000000000;
                v120 = 0x747375677561;
              }

              else
              {
                v120 = 0x65626D6574706573;
                v121 = 0xE900000000000072;
              }
            }

            else
            {
              v116 = 1701737834;
              if (v115 == 4)
              {
                v116 = 7954797;
              }

              v117 = 0xE300000000000000;
              if (v115 != 4)
              {
                v117 = 0xE400000000000000;
              }

              if (v115 == 3)
              {
                v116 = 0x6C69727061;
                v117 = 0xE500000000000000;
              }

              v118 = 0x7972617572626566;
              if (v115 != 1)
              {
                v118 = 0x686372616DLL;
              }

              v119 = 0xE800000000000000;
              if (v115 != 1)
              {
                v119 = 0xE500000000000000;
              }

              if (!*(v227 + v113))
              {
                v118 = 0x797261756E616ALL;
                v119 = 0xE700000000000000;
              }

              if (*(v227 + v113) <= 2u)
              {
                v120 = v118;
              }

              else
              {
                v120 = v116;
              }

              if (*(v227 + v113) <= 2u)
              {
                v121 = v119;
              }

              else
              {
                v121 = v117;
              }
            }

            v123 = *(v105 + v113);
            if (v123 > 5)
            {
              if (*(v105 + v113) > 8u)
              {
                if (v123 == 9)
                {
                  v124 = 0xE700000000000000;
                  if (v120 != 0x7265626F74636FLL)
                  {
                    goto LABEL_111;
                  }
                }

                else
                {
                  v124 = 0xE800000000000000;
                  if (v123 == 10)
                  {
                    v125 = 1702260590;
                  }

                  else
                  {
                    v125 = 1701012836;
                  }

                  if (v120 != (v125 | 0x7265626D00000000))
                  {
LABEL_111:
                    v114 = sub_1B4D18DCC();

                    if ((v114 & 1) == 0)
                    {
                      goto LABEL_301;
                    }

                    goto LABEL_112;
                  }
                }
              }

              else if (v123 == 6)
              {
                v124 = 0xE400000000000000;
                if (v120 != 2037151082)
                {
                  goto LABEL_111;
                }
              }

              else if (v123 == 7)
              {
                v124 = 0xE600000000000000;
                if (v120 != 0x747375677561)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v124 = 0xE900000000000072;
                if (v120 != 0x65626D6574706573)
                {
                  goto LABEL_111;
                }
              }
            }

            else if (*(v105 + v113) > 2u)
            {
              if (v123 == 3)
              {
                v124 = 0xE500000000000000;
                if (v120 != 0x6C69727061)
                {
                  goto LABEL_111;
                }
              }

              else if (v123 == 4)
              {
                v124 = 0xE300000000000000;
                if (v120 != 7954797)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v124 = 0xE400000000000000;
                if (v120 != 1701737834)
                {
                  goto LABEL_111;
                }
              }
            }

            else if (*(v105 + v113))
            {
              if (v123 == 1)
              {
                v124 = 0xE800000000000000;
                if (v120 != 0x7972617572626566)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                v124 = 0xE500000000000000;
                if (v120 != 0x686372616DLL)
                {
                  goto LABEL_111;
                }
              }
            }

            else
            {
              v124 = 0xE700000000000000;
              if (v120 != 0x797261756E616ALL)
              {
                goto LABEL_111;
              }
            }

            if (v121 != v124)
            {
              goto LABEL_111;
            }

LABEL_112:
            ++v113;
            --v106;
          }

          while (v106);
        }
      }

      else
      {
      }

      v146 = sub_1B4A0A568(v222, v197);
      v19 = v224;
      if ((v146 & 1) == 0)
      {
        goto LABEL_257;
      }

      v147 = *(v200 + 16);
      if (v147 != *(v198 + 16))
      {
        goto LABEL_257;
      }

      if (v147 && v200 != v198)
      {
        v148 = 32;
        while (*(v200 + v148) == *(v198 + v148))
        {
          v148 += 8;
          if (!--v147)
          {
            goto LABEL_247;
          }
        }

LABEL_257:

LABEL_258:
        v154 = type metadata accessor for WorkoutPropertiesQuery;
        sub_1B49DA04C(v19, type metadata accessor for WorkoutPropertiesQuery);
        v155 = v223;
LABEL_271:
        sub_1B49DA04C(v155, v154);
        sub_1B49DA04C(v32, type metadata accessor for FitnessContextQueryDescriptor);
        sub_1B49DA04C(v239, type metadata accessor for FitnessContextQueryResult);
        goto LABEL_15;
      }

LABEL_247:
      v149 = *(v199 + 16);
      if (v149 != *(v196 + 16))
      {
        goto LABEL_257;
      }

      if (v149 && v199 != v196)
      {
        v150 = 32;
        while (*(v199 + v150) == *(v196 + v150))
        {
          v150 += 8;
          if (!--v149)
          {
            goto LABEL_253;
          }
        }

        goto LABEL_257;
      }

LABEL_253:
      v151 = *(v203 + 16);
      if (v151 != *(v207 + 16))
      {
        goto LABEL_257;
      }

      if (v151)
      {
        v152 = v195;
        if (v203 != v207)
        {
          v153 = 32;
          do
          {
            v166 = *(v203 + v153);
            if (v166 <= 1)
            {
              if (*(v203 + v153))
              {
                v167 = 0x726F6F646E69;
              }

              else
              {
                v167 = 0x6E776F6E6B6E75;
              }

              if (*(v203 + v153))
              {
                v168 = 0xE600000000000000;
              }

              else
              {
                v168 = 0xE700000000000000;
              }
            }

            else if (v166 == 2)
            {
              v168 = 0xE700000000000000;
              v167 = 0x726F6F6474756FLL;
            }

            else if (v166 == 3)
            {
              v167 = 0x657461576E65706FLL;
              v168 = 0xE900000000000072;
            }

            else
            {
              v167 = 0x676E696D6D697773;
              v168 = 0xEC0000006C6F6F50;
            }

            v169 = *(v207 + v153);
            if (v169 <= 1)
            {
              if (*(v207 + v153))
              {
                v170 = 0x726F6F646E69;
              }

              else
              {
                v170 = 0x6E776F6E6B6E75;
              }

              if (*(v207 + v153))
              {
                v171 = 0xE600000000000000;
              }

              else
              {
                v171 = 0xE700000000000000;
              }
            }

            else if (v169 == 2)
            {
              v171 = 0xE700000000000000;
              v170 = 0x726F6F6474756FLL;
            }

            else if (v169 == 3)
            {
              v170 = 0x657461576E65706FLL;
              v171 = 0xE900000000000072;
            }

            else
            {
              v170 = 0x676E696D6D697773;
              v171 = 0xEC0000006C6F6F50;
            }

            if (v167 == v170 && v168 == v171)
            {
            }

            else
            {
              v165 = sub_1B4D18DCC();

              if ((v165 & 1) == 0)
              {
                goto LABEL_301;
              }
            }

            ++v153;
            --v151;
          }

          while (v151);
        }
      }

      else
      {
        v152 = v195;
      }

      v184 = *(v152 + 16);
      v185 = v206;
      if (v184 != *(v206 + 16))
      {
LABEL_301:

        v19 = v224;
        goto LABEL_258;
      }

      v19 = v224;
      if (v184 && v152 != v206)
      {
        v186 = 0;
        do
        {
          v187 = *(v152 + v186 + 32) == *(v185 + v186 + 32) && *(v152 + v186 + 40) == *(v185 + v186 + 40);
          if (!v187 && (sub_1B4D18DCC() & 1) == 0)
          {
            goto LABEL_257;
          }

          v186 += 16;
        }

        while (--v184);
      }

      v188 = v205;
      v189 = v223;
      if ((sub_1B4A0DD68(*(v223 + *(v205 + 24)), *&v19[*(v205 + 24)]) & 1) == 0)
      {
        goto LABEL_258;
      }

      v190 = *(v188 + 28);
      v241 = *(v189 + v190);
      v240 = *&v19[v190];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
      sub_1B49DA0AC(&qword_1EB8A74D8, &qword_1EB8A74D0, &qword_1B4D1E2D0);
      sub_1B49DA100();
      DescriptorO2eeoiySbAC_ACtFZ_0 = sub_1B4D1865C();
      sub_1B49DA04C(v19, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49DA04C(v189, type metadata accessor for WorkoutPropertiesQuery);
      sub_1B49DA04C(v32, type metadata accessor for FitnessContextQueryDescriptor);
      v99 = v239;
      goto LABEL_104;
    }

    sub_1B49D9F90(v32, v230, type metadata accessor for FitnessContextQueryDescriptor);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v68 = type metadata accessor for RingsPropertiesQuery;
      v69 = v230;
      goto LABEL_102;
    }

    v70 = v229;
    sub_1B49DA2F8(v230, v229, type metadata accessor for RingsPropertiesQuery);
    v71 = &v32[v65];
    v72 = v228;
    sub_1B49DA2F8(v71, v228, type metadata accessor for RingsPropertiesQuery);
    if ((_s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(v70, v72) & 1) == 0)
    {
      goto LABEL_270;
    }

    v73 = v209[5];
    v74 = (v229 + v73);
    v75 = *(v229 + v73);
    v76 = (v228 + v73);
    v77 = *v76;
    v78 = *(*v74 + 16);
    if (v78 != *(*v76 + 16))
    {
      goto LABEL_270;
    }

    v79 = *v74;
    v80 = v74[1];
    v81 = v74[2];
    v82 = v76[2];
    v227 = v76[1];
    v222 = v80;
    v207 = v82;
    v206 = v81;
    if (v78)
    {

      if (v79 != v77)
      {
        v83 = 32;
        do
        {
          v86 = *(v79 + v83);
          if (v86 > 5)
          {
            if (*(v79 + v83) > 8u)
            {
              v93 = 0x7265626D65766F6ELL;
              if (v86 != 10)
              {
                v93 = 0x7265626D65636564;
              }

              if (v86 == 9)
              {
                v91 = 0x7265626F74636FLL;
              }

              else
              {
                v91 = v93;
              }

              if (v86 == 9)
              {
                v92 = 0xE700000000000000;
              }

              else
              {
                v92 = 0xE800000000000000;
              }
            }

            else if (v86 == 6)
            {
              v92 = 0xE400000000000000;
              v91 = 2037151082;
            }

            else if (v86 == 7)
            {
              v92 = 0xE600000000000000;
              v91 = 0x747375677561;
            }

            else
            {
              v91 = 0x65626D6574706573;
              v92 = 0xE900000000000072;
            }
          }

          else
          {
            v87 = 1701737834;
            if (v86 == 4)
            {
              v87 = 7954797;
            }

            v88 = 0xE300000000000000;
            if (v86 != 4)
            {
              v88 = 0xE400000000000000;
            }

            if (v86 == 3)
            {
              v87 = 0x6C69727061;
              v88 = 0xE500000000000000;
            }

            v89 = 0x7972617572626566;
            if (v86 != 1)
            {
              v89 = 0x686372616DLL;
            }

            v90 = 0xE800000000000000;
            if (v86 != 1)
            {
              v90 = 0xE500000000000000;
            }

            if (!*(v79 + v83))
            {
              v89 = 0x797261756E616ALL;
              v90 = 0xE700000000000000;
            }

            if (*(v79 + v83) <= 2u)
            {
              v91 = v89;
            }

            else
            {
              v91 = v87;
            }

            if (*(v79 + v83) <= 2u)
            {
              v92 = v90;
            }

            else
            {
              v92 = v88;
            }
          }

          v94 = *(v77 + v83);
          if (v94 > 5)
          {
            if (*(v77 + v83) > 8u)
            {
              if (v94 == 9)
              {
                v95 = 0xE700000000000000;
                if (v91 != 0x7265626F74636FLL)
                {
                  goto LABEL_30;
                }
              }

              else
              {
                v95 = 0xE800000000000000;
                if (v94 == 10)
                {
                  v96 = 1702260590;
                }

                else
                {
                  v96 = 1701012836;
                }

                if (v91 != (v96 | 0x7265626D00000000))
                {
                  goto LABEL_30;
                }
              }
            }

            else if (v94 == 6)
            {
              v95 = 0xE400000000000000;
              if (v91 != 2037151082)
              {
                goto LABEL_30;
              }
            }

            else if (v94 == 7)
            {
              v95 = 0xE600000000000000;
              if (v91 != 0x747375677561)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v95 = 0xE900000000000072;
              if (v91 != 0x65626D6574706573)
              {
                goto LABEL_30;
              }
            }
          }

          else if (*(v77 + v83) > 2u)
          {
            if (v94 == 3)
            {
              v95 = 0xE500000000000000;
              if (v91 != 0x6C69727061)
              {
                goto LABEL_30;
              }
            }

            else if (v94 == 4)
            {
              v95 = 0xE300000000000000;
              if (v91 != 7954797)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v95 = 0xE400000000000000;
              if (v91 != 1701737834)
              {
                goto LABEL_30;
              }
            }
          }

          else if (*(v77 + v83))
          {
            if (v94 == 1)
            {
              v95 = 0xE800000000000000;
              if (v91 != 0x7972617572626566)
              {
                goto LABEL_30;
              }
            }

            else
            {
              v95 = 0xE500000000000000;
              if (v91 != 0x686372616DLL)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            v95 = 0xE700000000000000;
            if (v91 != 0x797261756E616ALL)
            {
              goto LABEL_30;
            }
          }

          if (v92 == v95)
          {

            goto LABEL_31;
          }

LABEL_30:
          v85 = sub_1B4D18DCC();

          if ((v85 & 1) == 0)
          {
LABEL_260:

LABEL_261:
            v19 = v224;
            goto LABEL_270;
          }

LABEL_31:
          ++v83;
          --v78;
        }

        while (v78);
      }
    }

    else
    {
    }

    v126 = *(v222 + 16);
    v19 = v224;
    if (v126 != *(v227 + 16))
    {
      goto LABEL_259;
    }

    if (v126 && v222 != v227)
    {
      v127 = 32;
      while (1)
      {
        v129 = *(v222 + v127);
        v130 = *(v227 + v127);
        v131 = 0x7961646E7573;
        if (v129 == 5)
        {
          v131 = 0x7961647275746173;
          v132 = 0xE800000000000000;
        }

        else
        {
          v132 = 0xE600000000000000;
        }

        v133 = 0x7961647372756874;
        if (v129 == 3)
        {
          v134 = 0xE800000000000000;
        }

        else
        {
          v133 = 0x796164697266;
          v134 = 0xE600000000000000;
        }

        if (*(v222 + v127) <= 4u)
        {
          v131 = v133;
          v132 = v134;
        }

        v135 = 0xE900000000000079;
        v136 = 0x616473656E646577;
        if (v129 == 1)
        {
          v136 = 0x79616473657574;
          v135 = 0xE700000000000000;
        }

        if (!*(v222 + v127))
        {
          v136 = 0x7961646E6F6DLL;
          v135 = 0xE600000000000000;
        }

        v137 = *(v222 + v127) <= 2u ? v136 : v131;
        v138 = *(v222 + v127) <= 2u ? v135 : v132;
        if (*(v227 + v127) <= 2u)
        {
          break;
        }

        if (*(v227 + v127) <= 4u)
        {
          if (v130 == 3)
          {
            v139 = 0xE800000000000000;
            v140 = 0x647372756874;
            goto LABEL_217;
          }

          v139 = 0xE600000000000000;
          v141 = 1684632166;
LABEL_223:
          if (v137 != (v141 & 0xFFFF0000FFFFFFFFLL | 0x796100000000))
          {
            goto LABEL_187;
          }

          goto LABEL_226;
        }

        if (v130 == 5)
        {
          v139 = 0xE800000000000000;
          v140 = 0x647275746173;
LABEL_217:
          if (v137 != (v140 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
          {
            goto LABEL_187;
          }

          goto LABEL_226;
        }

        v139 = 0xE600000000000000;
        if (v137 != 0x7961646E7573)
        {
          goto LABEL_187;
        }

LABEL_226:
        if (v138 != v139)
        {
LABEL_187:
          v128 = sub_1B4D18DCC();

          if ((v128 & 1) == 0)
          {
            goto LABEL_260;
          }

          goto LABEL_188;
        }

LABEL_188:
        ++v127;
        if (!--v126)
        {
          goto LABEL_229;
        }
      }

      if (*(v227 + v127))
      {
        if (v130 == 1)
        {
          v139 = 0xE700000000000000;
          if (v137 != 0x79616473657574)
          {
            goto LABEL_187;
          }
        }

        else
        {
          v139 = 0xE900000000000079;
          if (v137 != 0x616473656E646577)
          {
            goto LABEL_187;
          }
        }

        goto LABEL_226;
      }

      v139 = 0xE600000000000000;
      v141 = 1684959085;
      goto LABEL_223;
    }

LABEL_229:
    v142 = *(v206 + 16);
    v19 = v224;
    if (v142 != *(v207 + 16))
    {
LABEL_259:

      goto LABEL_270;
    }

    if (v142 && v206 != v207)
    {
      v143 = 32;
      do
      {
        v144 = *(v206 + v143);
        v145 = *(v207 + v143);
        if (v144 == 2)
        {
          if (v145 != 2)
          {
            goto LABEL_259;
          }
        }

        else if (v145 == 2 || ((v144 ^ v145) & 1) != 0)
        {
          goto LABEL_259;
        }

        ++v143;
        --v142;
      }

      while (v142);
    }

    v156 = v209[6];
    v157 = *(v229 + v156);
    v158 = *(v228 + v156);
    v159 = *(v157 + 16);
    if (v159 != *(v158 + 16))
    {
LABEL_270:
      v154 = type metadata accessor for RingsPropertiesQuery;
      sub_1B49DA04C(v228, type metadata accessor for RingsPropertiesQuery);
      v155 = v229;
      goto LABEL_271;
    }

    if (v159)
    {
      v160 = v157 == v158;
    }

    else
    {
      v160 = 1;
    }

    if (!v160)
    {
      v172 = (v157 + 32);
      v173 = (v158 + 32);
      v174 = 0x656557664F796164;
      while (v159)
      {
        v176 = *v173;
        v177 = 0xE90000000000006BLL;
        if (*v172 == 1)
        {
          v178 = 0xE90000000000006BLL;
        }

        else
        {
          v174 = 0x646573756170;
          v178 = 0xE600000000000000;
        }

        if (*v172)
        {
          v179 = v174;
        }

        else
        {
          v179 = 0x59664F68746E6F6DLL;
        }

        if (*v172)
        {
          v180 = v178;
        }

        else
        {
          v180 = 0xEB00000000726165;
        }

        if (v176 == 1)
        {
          v181 = 0x656557664F796164;
        }

        else
        {
          v181 = 0x646573756170;
        }

        if (v176 != 1)
        {
          v177 = 0xE600000000000000;
        }

        if (*v173)
        {
          v182 = v181;
        }

        else
        {
          v182 = 0x59664F68746E6F6DLL;
        }

        if (*v173)
        {
          v183 = v177;
        }

        else
        {
          v183 = 0xEB00000000726165;
        }

        if (v179 == v182 && v180 == v183)
        {
        }

        else
        {
          v175 = sub_1B4D18DCC();

          if ((v175 & 1) == 0)
          {
            goto LABEL_261;
          }
        }

        ++v172;
        ++v173;
        --v159;
        v174 = 0x656557664F796164;
        if (!v159)
        {
          goto LABEL_268;
        }
      }

      goto LABEL_352;
    }

LABEL_268:
    v161 = v209[7];
    v162 = v228;
    v163 = v229;
    v241 = *(v229 + v161);
    v240 = *(v228 + v161);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74B8, &qword_1B4D3FD60);
    sub_1B49DA0AC(&qword_1EB8A74C0, &qword_1EB8A74B8, &qword_1B4D3FD60);
    sub_1B49D9FF8();
    v164 = sub_1B4D1865C();
    sub_1B49DA04C(v162, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v163, type metadata accessor for RingsPropertiesQuery);
    sub_1B49DA04C(v32, type metadata accessor for FitnessContextQueryDescriptor);
    sub_1B49DA04C(v239, type metadata accessor for FitnessContextQueryResult);
    v19 = v224;
    if (v164)
    {
      break;
    }

LABEL_15:
    ++v49;
    v48 = v235;
    if (v49 == v236)
    {
      goto LABEL_4;
    }
  }

  sub_1B49DA04C(v238, type metadata accessor for FitnessContextQueryRequest);
  *(v204 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v208;
  v191 = __OFADD__(v210++, 1);
  v38 = v221;
  v42 = v220;
  if (!v191)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_349:
  v192 = v213;

  sub_1B49D463C(v204, v194, v210, v192);
}

unint64_t sub_1B49D918C()
{
  result = qword_1EB8A7468;
  if (!qword_1EB8A7468)
  {
    type metadata accessor for WorkoutVoiceSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7468);
  }

  return result;
}

uint64_t sub_1B49D91E0(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutState() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B49DA364;

  return sub_1B49CCCB8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1B49D92E8(_OWORD *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B49D9398;

  return sub_1B49CEB64(a1, v4, v5, v6);
}

uint64_t sub_1B49D9398(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1B49D9494(uint64_t a1, char *a2)
{
  Result = type metadata accessor for FitnessContextQueryResult();
  v5 = *(*(Result - 8) + 64);
  MEMORY[0x1EEE9AC00](Result);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a1 + 16);
  if (v9)
  {
    v10 = *a2;
    v11 = &v8[*(Result + 28)];
    v12 = *a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_1B49D9F90(v12, v8, type metadata accessor for FitnessContextQueryResult);
      v14 = v11[16];
      if (v14 != 2)
      {
        v15 = *(v11 + 3);
        v17 = *v11;
        v16 = *(v11 + 1);
        v18 = &v8[*(Result + 20)];
        v20[1] = FitnessContextQueryDescriptor.analyticsKey.getter();
        v20[2] = v19;
        v20[3] = v17;
        v20[4] = v16;
        v21 = v14 & 1;
        v22 = v15;
        v23 = v10;
        WorkoutVoiceQueryAnalyticsEvent.send()();
      }

      sub_1B49DA04C(v8, type metadata accessor for FitnessContextQueryResult);
      v12 += v13;
      --v9;
    }

    while (v9);
  }
}

uint64_t dispatch thunk of WorkoutVoiceSession.prewarmContext(for:workoutState:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B49DA364;

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 256);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B49DA364;

  return v10(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceSession.requestMoment(_:workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 264);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B49DA364;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 272);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B4983F3C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceSession.announce(moment:voiceSelection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 280);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B49DA364;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutVoiceSession.cancelAnnouncement(for:)(uint64_t a1)
{
  v4 = *(*v1 + 288);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B49D9398;

  return v8(a1);
}

uint64_t sub_1B49D9E8C()
{
  sub_1B49D9EE4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B49D9EE4()
{
  if (!qword_1EB8A7490)
  {
    sub_1B4D1777C();
    sub_1B498AFB8(255, &qword_1EDC36DC8, 0x1E699C9F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB8A7490);
    }
  }
}

uint64_t sub_1B49D9F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49D9FF8()
{
  result = qword_1EB8A74C8;
  if (!qword_1EB8A74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74C8);
  }

  return result;
}

uint64_t sub_1B49DA04C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49DA0AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B49DA100()
{
  result = qword_1EB8A74E0;
  if (!qword_1EB8A74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74E0);
  }

  return result;
}

uint64_t sub_1B49DA154(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v18) = *a3;
  v18 = (*(a5 + 40))(a2, &v18, a4, a5);
  v16 = a4;
  v17 = a5;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = sub_1B49DA2CC;
  v14[5] = &v15;
  swift_getAssociatedTypeWitness();
  type metadata accessor for FitnessContextQueryDescriptor();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = sub_1B4D1801C();
  Request = type metadata accessor for FitnessContextQueryRequest();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1B498D2F0(sub_1B49DA2D4, v14, v8, Request, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  return v12;
}

uint64_t sub_1B49DA2CC@<X0>(uint64_t a1@<X1>, Swift::String *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B49D2DB0(a1, a2);
}

uint64_t sub_1B49DA2D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1B49D2E80(a1, *(v1 + 32));
}

uint64_t sub_1B49DA2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49DA368(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B8C7DDC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B8C7DDC0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B49DA3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v9 = sub_1B49DA368(*(a1 + 16));
  if (v9 >= v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_6:
    if (qword_1EDC36EF8 == -1)
    {
LABEL_7:
      v18 = sub_1B4D17F6C();
      __swift_project_value_buffer(v18, qword_1EDC36F00);
      v19 = sub_1B4D17F5C();
      v20 = sub_1B4D1871C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1B4953000, v19, v20, "Outro prompt missing celebration nouns or compliment examples", v21, 2u);
        MEMORY[0x1B8C7DDA0](v21, -1, -1);
      }

      v13 = 0xD000000000000019;

      v12 = 0x80000001B4D49630;
      v16 = 0x80000001B4D59140;
      v17 = 0xD000000000000068;
      goto LABEL_10;
    }

LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v11 = a1 + 16 * v9;
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);

  result = sub_1B49DA368(v10);
  if (result >= v10)
  {
    __break(1u);
    return result;
  }

  v15 = a2 + 16 * result;
  v17 = *(v15 + 32);
  v16 = *(v15 + 40);

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74F0, &unk_1B4D35700);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B4D1BE00;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v24 = sub_1B49DA914();
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  *(v22 + 96) = v23;
  *(v22 + 104) = v24;
  *(v22 + 64) = v24;
  *(v22 + 72) = v13;
  *(v22 + 80) = v12;
  *(v22 + 136) = v23;
  *(v22 + 144) = v24;
  *(v22 + 112) = v17;
  *(v22 + 120) = v16;

  return sub_1B4D1819C();
}

unint64_t sub_1B49DA600(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 36)
  {
    if (a1 <= 49)
    {
      if (a1 == 37)
      {
        if (a2)
        {
          v4 = &unk_1F2CB8EF8;
          v5 = &unk_1F2CB8F48;
        }

        else
        {
          v4 = &unk_1F2CB8F98;
          v5 = &unk_1F2CB8FE8;
        }

        goto LABEL_29;
      }

      if (a1 == 44)
      {
        v4 = &unk_1F2CB93F8;
        v5 = &unk_1F2CB9448;
        goto LABEL_29;
      }
    }

    else
    {
      switch(a1)
      {
        case '2':
          v4 = &unk_1F2CB9538;
          v5 = &unk_1F2CB9588;
          goto LABEL_29;
        case '4':
          if (a2)
          {
            v4 = &unk_1F2CB9178;
            v5 = &unk_1F2CB91C8;
          }

          else
          {
            v4 = &unk_1F2CB9218;
            v5 = &unk_1F2CB9268;
          }

          goto LABEL_29;
        case '?':
          v4 = &unk_1F2CB9498;
          v5 = &unk_1F2CB94E8;
LABEL_29:
          v8 = v4;
          v9 = v5;
          goto LABEL_30;
      }
    }

    goto LABEL_25;
  }

  if (a1 > 19)
  {
    if (a1 == 20)
    {
      v4 = &unk_1F2CB95D8;
      v5 = &unk_1F2CB9628;
      goto LABEL_29;
    }

    if (a1 == 24)
    {
      v4 = &unk_1F2CB92B8;
      v5 = &unk_1F2CB9308;
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (a1 == 13)
  {
    if (a2)
    {
      v4 = &unk_1F2CB9038;
      v5 = &unk_1F2CB9088;
    }

    else
    {
      v4 = &unk_1F2CB90D8;
      v5 = &unk_1F2CB9128;
    }

    goto LABEL_29;
  }

  if (a1 != 16)
  {
LABEL_25:
    v6 = &unk_1F2CB9678;
    v7 = &unk_1F2CB96C8;
    goto LABEL_26;
  }

  v6 = &unk_1F2CB9358;
  v7 = &unk_1F2CB93A8;
LABEL_26:
  v8 = v6;
  v9 = v7;
LABEL_30:
  v10 = sub_1B49DA3F4(v8, v9, a3, a4);
  swift_arrayDestroy();
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_1B49DA914()
{
  result = qword_1EB8A74F8;
  if (!qword_1EB8A74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74F8);
  }

  return result;
}

unint64_t static WorkoutVoiceMilestoneWorkoutDurationFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B49DB028(v3, v1, v2);
}

uint64_t static WorkoutVoiceMilestoneWorkoutDurationFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49AA274;

  return sub_1B49DB7C8(a1, a2, a3, a4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B49DAB20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v3)
  {
    v5 = " work done today!'";
  }

  else
  {
    v5 = "lastSixWeeksWorkoutProperties";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v8 = "lastSixWeeksWorkoutProperties";
  }

  else
  {
    v8 = " work done today!'";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B49DABCC()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49DAC4C()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B49DACB8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49DAD34@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

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

void sub_1B49DAD94(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v1)
  {
    v3 = "lastSixWeeksWorkoutProperties";
  }

  else
  {
    v3 = " work done today!'";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

int *sub_1B49DADD4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v12 - 8) + 16))(&a5[v11], a1, v12);
  result = type metadata accessor for WorkoutState();
  if (__OFADD__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = *(a3 + result[6]);
    *a5 = 1;
    a5[v10[6]] = v9;
    *&a5[v10[7]] = v14;
    *&a5[v10[8]] = a4 + 1;
    (*(*(v10 - 1) + 56))(a5, 0, 1, v10);

    return v14;
  }

  return result;
}

unint64_t sub_1B49DAF18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B49DB028(v3, v1, v2);
}

uint64_t sub_1B49DAF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49DD034;

  return sub_1B49DB7C8(a1, a2, a3, a4);
}

unint64_t sub_1B49DB028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor();
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v69 - v14;
  v15 = type metadata accessor for WorkoutPropertiesQuery();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B4D1777C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v83 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v28, a1, a2, v26);
  v29 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v28, v29, a2, a3);
  v31 = *(v30 + 16);
  v32 = 32;
  do
  {
    if (!v31)
    {

      v58 = sub_1B4C952F4(MEMORY[0x1E69E7CC0]);
      goto LABEL_10;
    }

    v33 = *(v30 + v32);
    v32 += 8;
    --v31;
  }

  while (v33 != 3);
  v72 = v9;
  v74 = v23;

  v34 = v83;
  (*(a3 + 80))(a2, a3);
  v73 = v20;
  v69[0] = *(v20 + 16);
  (v69[0])(v18, v34, v19);
  v35 = v81;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B4D1A800;
  v37 = *(a3 + 56);
  v76 = a2;
  v38 = v37(a2, a3);
  v39 = [v38 effectiveTypeIdentifier];
  v78 = v19;
  v40 = v39;

  *(v36 + 32) = v40;
  v41 = MEMORY[0x1E69E7CC0];
  v42 = v18;
  v43 = &v18[v15[5]];
  *v43 = MEMORY[0x1E69E7CC0];
  *(v43 + 1) = v41;
  *(v43 + 2) = v41;
  *(v43 + 3) = v36;
  *(v43 + 4) = v41;
  *(v43 + 5) = v41;
  *(v42 + v15[6]) = &unk_1F2CB8948;
  v71 = v15;
  *(v42 + v15[7]) = &unk_1F2CB8970;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7260, &qword_1B4D1D588);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7268, &qword_1B4D1D590);
  v45 = *(*(v44 - 8) + 72);
  v46 = (*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B4D1AA70;
  v70 = v47;
  v48 = (v47 + v46);
  v77 = v44;
  v49 = *(v44 + 48);
  *v48 = 0;
  sub_1B49DCF64(v42, &v48[v49], type metadata accessor for WorkoutPropertiesQuery);
  v69[1] = type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v50 = &v48[v45];
  *v50 = 1;
  v51 = v82;
  (v69[0])(v82, v83, v78);
  swift_storeEnumTagMultiPayload();
  v52 = v80;
  (*(v80 + 56))(v51, 0, 1, v35);
  v53 = v51;
  v54 = v79;
  sub_1B4974FBC(v53, v79, &qword_1EB8A67A8, &qword_1B4D1E060);
  v55 = *(v52 + 48);
  v56 = v55(v54, 1, v35);
  v75 = v42;
  if (v56 == 1)
  {
    v57 = v72;
    sub_1B49DCF64(v42, v72, type metadata accessor for DateRangeDescriptor);
    if (v55(v54, 1, v35) != 1)
    {
      sub_1B4975024(v54, &qword_1EB8A67A8, &qword_1B4D1E060);
    }
  }

  else
  {
    v57 = v72;
    sub_1B49DCFCC(v54, v72, type metadata accessor for DateRangeDescriptor);
  }

  v59 = &v50[*(v77 + 48)];
  v61 = *v43;
  v60 = *(v43 + 1);
  v63 = *(v43 + 2);
  v62 = *(v43 + 3);
  v65 = *(v43 + 4);
  v64 = *(v43 + 5);
  sub_1B49DCF64(v57, v59, type metadata accessor for DateRangeDescriptor);

  sub_1B49BFEC0(v57, type metadata accessor for DateRangeDescriptor);
  v66 = v71;
  v67 = (v59 + v71[5]);
  *v67 = v61;
  v67[1] = v60;
  v67[2] = v63;
  v67[3] = v62;
  v67[4] = v65;
  v67[5] = v64;
  *(v59 + v66[6]) = &unk_1F2CB8948;
  *(v59 + v66[7]) = &unk_1F2CB8970;
  sub_1B4975024(v82, &qword_1EB8A67A8, &qword_1B4D1E060);
  swift_storeEnumTagMultiPayload();
  v58 = sub_1B4C952F4(v70);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B49BFEC0(v75, type metadata accessor for WorkoutPropertiesQuery);
  (*(v73 + 8))(v83, v78);
  a2 = v76;
  v23 = v74;
LABEL_10:
  (*(v23 + 8))(v28, a2);
  return v58;
}

uint64_t sub_1B49DB7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7528, &qword_1B4D1E430) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v4[33] = v8;
  v9 = *(v8 - 8);
  v4[34] = v9;
  v10 = *(v9 + 64) + 15;
  v4[35] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4[36] = v11;
  v12 = *(v11 - 8);
  v4[37] = v12;
  v13 = *(v12 + 64) + 15;
  v4[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v4[41] = v15;
  v16 = *(v15 - 8);
  v4[42] = v16;
  v17 = *(v16 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v19 = type metadata accessor for WorkoutState();
  v4[47] = v19;
  v20 = *(v19 - 8);
  v4[48] = v20;
  v21 = *(v20 + 64) + 15;
  v4[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B49DBB0C, 0, 0);
}

uint64_t sub_1B49DBB0C()
{
  v117 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  sub_1B4974FBC(*(v0 + 208), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_1B4975024(*(v0 + 368), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_12:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v27 = sub_1B4D17F6C();
    __swift_project_value_buffer(v27, qword_1EDC36F00);
    v28 = sub_1B4D17F5C();
    v29 = sub_1B4D1873C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v115 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1B49558AC(0xD000000000000028, 0x80000001B4D591F0, &v115);
      _os_log_impl(&dword_1B4953000, v28, v29, "Context or snapshots don't exist for %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1B8C7DDA0](v31, -1, -1);
      MEMORY[0x1B8C7DDA0](v30, -1, -1);
    }

    goto LABEL_17;
  }

  v109 = v4;
  v5 = *(v0 + 192);
  sub_1B49DCFCC(*(v0 + 368), *(v0 + 392), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 176) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7538, &qword_1B4D1E438);
  v115 = sub_1B4D181CC();
  v116 = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001DLL, 0x80000001B4D4AAF0);

  (*(v7 + 8))(v115, v116, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 144);
  if (!v9)
  {
    v19 = *(v0 + 392);
LABEL_11:
    sub_1B49BFEC0(v19, type metadata accessor for WorkoutState);
    goto LABEL_12;
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 192), v13);
  *(v0 + 184) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFact.QueryIdentifier;
  v115 = sub_1B4D181CC();
  v116 = v14;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v12 + 8))(v115, v116, &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v13, v12);

  v15 = *(v0 + 168);
  if (!v15)
  {
    v20 = *(v0 + 392);

LABEL_10:
    v19 = v20;
    goto LABEL_11;
  }

  v16 = *(v0 + 152);
  v17 = *(v0 + 160);
  v18 = *(v0 + 320);
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  sub_1B4CE5168((v0 + 80), v9, v18);
  v22 = *(v0 + 328);
  v21 = *(v0 + 336);
  v23 = *(v0 + 320);

  v24 = *(v21 + 48);
  v25 = v24(v23, 1, v22);
  if (v25 == 1)
  {
    v20 = *(v0 + 392);
    v26 = *(v0 + 320);

    sub_1B4975024(v26, &qword_1EB8A7530, &unk_1B4D40250);
    goto LABEL_10;
  }

  v44 = *(v0 + 312);
  sub_1B49DCEE8(*(v0 + 320), *(v0 + 352));
  sub_1B4CE5168((v0 + 80), v15, v44);
  v45 = *(v0 + 328);
  v46 = *(v0 + 312);
  if (v24(v46, 1, v45) == 1)
  {
    v47 = *(v0 + 392);
    sub_1B4975024(*(v0 + 352), &qword_1EB8A6858, &qword_1B4D1AB70);

    sub_1B4975024(v46, &qword_1EB8A7530, &unk_1B4D40250);
    v19 = v47;
    goto LABEL_11;
  }

  v48 = *(v0 + 352);
  sub_1B49DCEE8(v46, *(v0 + 344));
  if (*(v48 + *(v45 + 28)) >= 1)
  {
    v49 = *(v0 + 352);
    v50 = *(v0 + 288);
    sub_1B4D1742C();
  }

  v51 = *(v0 + 344);
  v52 = *(v0 + 304);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v53 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  v54 = *(v0 + 392);
  if (*(v51 + *(v45 + 28)) < 1)
  {
    v69 = *(v0 + 344);
    v68 = *(v0 + 352);
    v70 = *(v0 + 296);
    v71 = *(v0 + 304);
    v72 = *(v0 + 288);

    (*(v70 + 8))(v71, v72);
    sub_1B4975024(v69, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B4975024(v68, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B49BFEC0(v54, type metadata accessor for WorkoutState);
LABEL_17:
    v113 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v105 = *(v51 + *(v45 + 28));
  v55 = *(v0 + 376);
  v56 = *(v0 + 296);
  v97 = *(v0 + 288);
  v98 = *(v0 + 304);
  v57 = *(v0 + 240);
  v96 = *(v0 + 248);
  v100 = *(v0 + 232);
  v102 = *(v0 + 216);
  v103 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7540, &qword_1B4D1E440);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  v59 = v54;
  *(inited + 32) = 3;
  v60 = inited + 32;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v15;
  v104 = sub_1B4C95564(inited);
  swift_setDeallocating();
  sub_1B4975024(v60, &qword_1EB8A7548, &qword_1B4D1E448);
  v107 = [*(v59 + *(v55 + 24)) effectiveTypeIdentifier];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v61 - 8) + 56))(v96, 1, 1, v61);
  (*(v56 + 16))(v57, v98, v97);
  v62 = *(v56 + 56);
  v62(v57, 0, 1, v97);
  v63 = *(v59 + *(v55 + 48));
  v99 = objc_opt_self();
  v64 = [v99 seconds];
  v65 = v100;
  sub_1B4D1741C();
  v101 = v62;
  v62(v65, 0, 1, v97);
  sub_1B4974FBC(v102, v103, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v66 = v109(v103, 1, v55);
  v67 = *(v0 + 360);
  if (v66 == 1)
  {
    sub_1B4975024(v67, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  }

  else
  {
    v73 = *(v67 + *(v55 + 48));
    sub_1B49BFEC0(v67, type metadata accessor for WorkoutState);
  }

  v74 = *(v0 + 392);
  v75 = *(v0 + 288);
  v76 = *(v0 + 272);
  v114 = *(v0 + 264);
  v77 = *(v0 + 256);
  v111 = *(v0 + 248);
  v78 = *(v0 + 240);
  v79 = *(v0 + 232);
  v80 = *(v0 + 224);
  v81 = *(v0 + 200);
  v82 = [v99 seconds];
  sub_1B4D1741C();
  v101(v80, 0, 1, v75);
  v83 = swift_task_alloc();
  *(v83 + 16) = v74;
  *(v83 + 24) = v105;
  sub_1B4B8907C(2, v104, v107, v111, v78, v79, v80, 1, v77, v81, sub_1B49DCF58, v83);

  sub_1B4975024(v80, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v79, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v78, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v111, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v84 = (*(v76 + 48))(v77, 1, v114);
  v85 = *(v0 + 392);
  v87 = *(v0 + 344);
  v86 = *(v0 + 352);
  v88 = *(v0 + 296);
  v89 = *(v0 + 304);
  v90 = *(v0 + 288);
  if (v84 == 1)
  {
    sub_1B4975024(*(v0 + 256), &qword_1EB8A7528, &qword_1B4D1E430);
    (*(v88 + 8))(v89, v90);
    sub_1B4975024(v87, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B4975024(v86, &qword_1EB8A6858, &qword_1B4D1AB70);
    sub_1B49BFEC0(v85, type metadata accessor for WorkoutState);
    goto LABEL_17;
  }

  v92 = *(v0 + 272);
  v91 = *(v0 + 280);
  sub_1B49DCFCC(*(v0 + 256), v91, type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8A7550, &unk_1B4D1E450);
  v93 = *(v92 + 72);
  v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1B4D1A800;
  v113 = v95;
  sub_1B49DCFCC(v91, v95 + v94, type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact);
  (*(v88 + 8))(v89, v90);
  sub_1B4975024(v87, &qword_1EB8A6858, &qword_1B4D1AB70);
  sub_1B4975024(v86, &qword_1EB8A6858, &qword_1B4D1AB70);
  sub_1B49BFEC0(v85, type metadata accessor for WorkoutState);
LABEL_18:
  v32 = *(v0 + 392);
  v34 = *(v0 + 360);
  v33 = *(v0 + 368);
  v36 = *(v0 + 344);
  v35 = *(v0 + 352);
  v38 = *(v0 + 312);
  v37 = *(v0 + 320);
  v39 = *(v0 + 304);
  v40 = *(v0 + 280);
  v41 = *(v0 + 256);
  v106 = *(v0 + 248);
  v108 = *(v0 + 240);
  v110 = *(v0 + 232);
  v112 = *(v0 + 224);

  v42 = *(v0 + 8);

  return v42(v113);
}

id _s19FitnessIntelligence021WorkoutVoiceMilestoneC12DurationFactV10makePrompt15promptFormatterSSAA0iK0C_tF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - v5;
  v7 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v8 = v7[5];
  v9 = [objc_opt_self() minutes];
  sub_1B4D1745C();

  [*(v1 + v7[7]) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (!result)
  {
    goto LABEL_32;
  }

  v11 = result;
  v12 = sub_1B4D1818C();
  v14 = v13;

  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_1B4D1896C();

  strcpy(v37, "I passed the ");
  HIWORD(v37[1]) = -4864;
  result = sub_1B4D1742C();
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v31 = v6;
  v32 = v3;
  v35 = v15;
  v16 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v16);

  MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D591B0);
  MEMORY[0x1B8C7C620](v12, v14);
  MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xEA00000000002073);
  v17 = v7[6];
  v18 = *(v1 + v17);
  v33 = v2;
  if (v18 <= 1)
  {
    if (v18)
    {
      v19 = 0x6565772073696874;
      v20 = 0xE90000000000006BLL;
    }

    else
    {
      v20 = 0xE800000000000000;
      v19 = 0x7961642073696874;
    }
  }

  else if (v18 == 2)
  {
    v19 = 0x6E6F6D2073696874;
    v20 = 0xEA00000000006874;
  }

  else if (v18 == 3)
  {
    v19 = 0x6165792073696874;
    v20 = 0xE900000000000072;
  }

  else
  {
    v20 = 0xE400000000000000;
    v19 = 1919252069;
  }

  MEMORY[0x1B8C7C620](v19, v20);

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1B4D1896C();

  v35 = 0xD000000000000019;
  v36 = 0x80000001B4D591D0;
  v34 = *(v1 + v7[8]);
  v21 = v34;
  v22 = sub_1B4D18D5C();
  MEMORY[0x1B8C7C620](v22);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  MEMORY[0x1B8C7C620](v12, v14);

  v23 = 0xE800000000000000;
  MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE800000000000000);
  if (v21 <= 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = 115;
  }

  if (v21 <= 1)
  {
    v25 = 0xE000000000000000;
  }

  else
  {
    v25 = 0xE100000000000000;
  }

  MEMORY[0x1B8C7C620](v24, v25);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  v26 = *(v1 + v17);
  if (v26 <= 1)
  {
    v28 = v32;
    v27 = v33;
    v30 = 0x7961642073696874;
    v29 = v31;
    if (*(v1 + v17))
    {
      v30 = 0x6565772073696874;
      v23 = 0xE90000000000006BLL;
    }
  }

  else
  {
    v28 = v32;
    v27 = v33;
    v29 = v31;
    if (v26 == 2)
    {
      v30 = 0x6E6F6D2073696874;
      v23 = 0xEA00000000006874;
    }

    else if (v26 == 3)
    {
      v30 = 0x6165792073696874;
      v23 = 0xE900000000000072;
    }

    else
    {
      v23 = 0xE400000000000000;
      v30 = 1919252069;
    }
  }

  MEMORY[0x1B8C7C620](v30, v23);

  MEMORY[0x1B8C7C620](v35, v36);

  (*(v28 + 8))(v29, v27);
  return v37[0];
}

unint64_t sub_1B49DCD00()
{
  result = qword_1EB8A7500;
  if (!qword_1EB8A7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7500);
  }

  return result;
}

unint64_t sub_1B49DCD54(uint64_t a1)
{
  *(a1 + 8) = sub_1B49DCD84();
  result = sub_1B49DCDD8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B49DCD84()
{
  result = qword_1EB8A7508;
  if (!qword_1EB8A7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7508);
  }

  return result;
}

unint64_t sub_1B49DCDD8()
{
  result = qword_1EB8A7510;
  if (!qword_1EB8A7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7510);
  }

  return result;
}

uint64_t sub_1B49DCE2C(uint64_t a1)
{
  *(a1 + 8) = sub_1B49DCE94(&qword_1EB8A7518);
  result = sub_1B49DCE94(&qword_1EB8A7520);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B49DCE94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B49DCEE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49DCF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49DCFCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49DD038(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 <= 36)
  {
    if (a1 > 19)
    {
      if (a1 == 20)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "r accomplishments etc.";
        v7 = 0xD000000000000797;
        goto LABEL_31;
      }

      if (a1 != 24)
      {
        goto LABEL_26;
      }

      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v8 = "}\n\n[Moment Instruction]: Give the user a pep talk of about 20 to 30 words to boost their motivation at the start of their workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then celebrate their recent achievements, focussing on the last few days and how they relate to the current activity. Keep the achievement celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. If they had a great workout yesterday, acknowledge it. If they did a different type of workout yesterday, emphasize how it complements or prepares them for today's hike. Foster a sense of progress throughout the week. Celebrate consistency or any notable improvements. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk by sending them off with a soft final push into their activity. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your hike with some electronic beats from Jeffrey Hernandez.";
      goto LABEL_30;
    }

    if (a1 != 13)
    {
      if (a1 == 16)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "from Jeffrey Hernandez.";
        v7 = 0xD000000000000792;
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = " from Jeffrey Hernandez.";
      v7 = 0xD000000000000783;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = " from Jeffrey Hernandez.";
      v7 = 0xD0000000000007F9;
    }
  }

  else
  {
    if (a1 > 49)
    {
      if (a1 != 50)
      {
        if (a1 != 52)
        {
          if (a1 == 63)
          {
            sub_1B4D1896C();
            MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
            MEMORY[0x1B8C7C620](a3, a4);
            v6 = "from Jeffrey Hernandez.";
            v7 = 0xD000000000000772;
            goto LABEL_31;
          }

LABEL_26:
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "xt at the *peptalk* moment:\n\n{";
          v7 = 0xD000000000000706;
          goto LABEL_31;
        }

        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "from Jeffrey Hernandez.";
          v7 = 0xD0000000000008B9;
          goto LABEL_31;
        }

        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
        MEMORY[0x1B8C7C620](a3, a4);
        v8 = "}\n\n[Moment Instruction]: Give the user a pep talk of about 20 to 30 words to boost their motivation at the start of their workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then celebrate their recent achievements, focussing on the last few days and how they relate to the current activity. Keep the achievement celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. If they had a great workout yesterday, acknowledge it. If they did a different type of workout yesterday, emphasize how it complements or prepares them for today's walk. Foster a sense of progress throughout the week. Celebrate consistency or any notable improvements. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk by sending them off with a soft final push into their activity. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your walk with some electronic beats from Jeffrey Hernandez.";
LABEL_30:
        v6 = (v8 - 32);
        v7 = 0xD0000000000007F8;
        goto LABEL_31;
      }

      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v9 = "}\n\n[Moment Instruction]: Give the user a 20-30 word pep talk when they start their Traditional Strength Training workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then highlight any recent achievements or streaks. Keep the achievement/streak celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. Focus on positive reinforcement, and connect their current workout to their progress throughout the week. Encourage them to push themselves and let them know what they can expect to accomplish during the workout if relevant context is provided. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk with a motivational phrase to get them started. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your strength training with some electronic beats from Jeffrey Hernandez.";
LABEL_21:
      v6 = (v9 - 32);
      v7 = 0xD000000000000798;
      goto LABEL_31;
    }

    if (a1 != 37)
    {
      if (a1 != 44)
      {
        goto LABEL_26;
      }

      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v9 = "}\n            \n[Moment Instruction]: Give the user a 20-30 word pep talk when they start their stair stepper workout. Begin the message by acknowledging the effort it took for them to show up. AVOID judgmental or unearned praise like great start or Starting strong. Then highlight any recent achievements or streaks. Keep the achievement/streak celebration specific and self-contained, meaning it conveys all necessary information (e.g., workout type, metric, time scale) for a user to fully understand the statement without relying on the fitness context or additional information. Focus on positive reinforcement, and connect their current workout to their progress throughout the week. Encourage them to push themselves and let them know what they can expect to accomplish during the workout if relevant context is provided. If the user provides information about training load or alert, restate it by changing the pronoun from My to Your or from I to You, For example, My 7-day training load is.. should be restated as Your 7-day training load is.. and I have an alert set for.. should be restated as You have an alert set for... Do not interpret it, draw conclusions, associate it with other facts, use it to motivate the user, or make suggestions based on it. Simply repeat what the user said using the correct pronouns, and make it a standalone sentence. If the user does not mention training load or alerts, do not bring them up at all. End the pep talk with a motivational phrase to get them started. If the user is listening to media (e.g., music, podcast or book), you can reference the artist and/or the genre if provided to motivate the user as they get their workout started. Adapt this media mention based on the fitness context such as the workout type, intensity, user accomplishments etc. Media Mention Example: Let's kick off your stair stepper workout with some electronic beats from Jeffrey Hernandez.";
      goto LABEL_21;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "om Jeffrey Hernandez.";
      v7 = 0xD000000000000866;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000003ELL, 0x80000001B4D59220);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "Jeffrey Hernandez.";
      v7 = 0xD0000000000007F6;
    }
  }

LABEL_31:
  MEMORY[0x1B8C7C620](v7, v6 | 0x8000000000000000);
  return 0;
}

BOOL static CodableBridging.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
  {
    v7 = v6;
    v8 = v2;
    v9 = v3;
    [v5 coordinate];
    v11 = v10;
    [v7 coordinate];
    if (v11 == v12)
    {
      [v5 coordinate];
      v14 = v13;
      [v7 coordinate];
      v16 = v15;

      return v14 == v16;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    return sub_1B4D187AC() & 1;
  }
}

BOOL sub_1B49DD720()
{
  v0 = sub_1B4D18B1C();

  return v0 != 0;
}

uint64_t sub_1B49DD768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B49DD7DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B49DD848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B49DD8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_1B49DD928@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B49DD720();
  *a2 = result;
  return result;
}

BOOL sub_1B49DD988@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1B49DD720();
  *a1 = result;
  return result;
}

uint64_t sub_1B49DD9B4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1B497CEA0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B49DD9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B49DDA38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableBridging.encode(to:)(void *a1, uint64_t a2)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  type metadata accessor for CodableBridging.CodingKeys();
  swift_getWitnessTable();
  v22 = sub_1B4D18D2C();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - v7;
  v9 = *v2;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4D18EFC();
  v11 = objc_opt_self();
  v23[0] = 0;
  v12 = [v11 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v23];
  v13 = v23[0];
  if (v12)
  {
    v14 = sub_1B4D176BC();
    v16 = v15;

    v23[0] = v14;
    v23[1] = v16;
    sub_1B49DDCD8();
    v17 = v22;
    sub_1B4D18D0C();
    (*(v5 + 8))(v8, v17);
    result = sub_1B49DDD2C(v14, v16);
  }

  else
  {
    v19 = v13;
    sub_1B4D1760C();

    swift_willThrow();
    result = (*(v5 + 8))(v8, v22);
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B49DDCD8()
{
  result = qword_1EDC37848;
  if (!qword_1EDC37848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37848);
  }

  return result;
}

uint64_t sub_1B49DDD2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CodableBridging.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for CodableBridging.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1B4D18C3C();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4D18EEC();
  if (!v2)
  {
    v9 = v19;
    sub_1B49DDFEC();
    sub_1B4D18C0C();
    v11 = v17;
    v10 = v18;
    sub_1B498AFB8(0, &qword_1EB8A7568, 0x1E696ACD0);
    v12 = sub_1B4D1875C();
    if (v12)
    {
      v13 = v12;
      (*(v9 + 8))(v7, v4);
      sub_1B49DDD2C(v11, v10);
      *v16 = v13;
    }

    else
    {
      sub_1B49DE040();
      swift_allocError();
      swift_willThrow();
      sub_1B49DDD2C(v11, v10);
      (*(v9 + 8))(v7, v4);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B49DDFEC()
{
  result = qword_1EDC37840;
  if (!qword_1EDC37840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37840);
  }

  return result;
}

unint64_t sub_1B49DE040()
{
  result = qword_1EB8A7570;
  if (!qword_1EB8A7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7570);
  }

  return result;
}

void CodableBridging.hash(into:)()
{
  v1 = *v0;
  sub_1B4D187BC();
}

uint64_t CodableBridging.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  v2 = v1;
  sub_1B4D187BC();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49DE17C()
{
  sub_1B4D18E8C();
  CodableBridging.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49DE1D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B49DE260()
{
  result = qword_1EB8A7658;
  if (!qword_1EB8A7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7658);
  }

  return result;
}

uint64_t StreamingAudioAvailable.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = &v59 - v5;
  v61 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v66 = *(v61 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v62 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v65 = *(v12 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v59 - v18;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[1];
  v60 = *a1;
  v67 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v68 = a1;
  sub_1B4974FBC(a1 + v67[7], v19, &qword_1EB8A76C8, &unk_1B4D22410);
  v26 = *(v21 + 48);
  if (v26(v19, 1, v20) == 1)
  {
    *(v24 + 4) = 0;
    *v24 = 0u;
    *(v24 + 1) = 0u;
    v27 = *(v20 + 52);

    sub_1B4D17BBC();
    v28 = v26(v19, 1, v20);
    v29 = v25;
    if (v28 != 1)
    {
      sub_1B4975024(v19, &qword_1EB8A76C8, &unk_1B4D22410);
    }
  }

  else
  {
    sub_1B49DF204(v19, v24, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);

    v29 = v25;
  }

  v30 = *v24;
  v31 = *(v24 + 1);
  v32 = *(v24 + 2);
  v33 = *(v24 + 3);
  v34 = *(v24 + 4);
  sub_1B49DF1A4(v24, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v35 = v68;
  v36 = v68[2];
  v37 = v68[3];
  sub_1B4974FBC(v68 + v67[8], v11, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v38 = *(v65 + 48);
  if (v38(v11, 1, v12) == 1)
  {

    sub_1B4D17BBC();
    v39 = &v15[*(v12 + 20)];
    *v39 = 0;
    *(v39 + 1) = 0;
    v40 = &v15[*(v12 + 24)];
    *v40 = 0;
    *(v40 + 1) = 0;
    v41 = v38(v11, 1, v12);
    v42 = v66;
    if (v41 != 1)
    {
      sub_1B4975024(v11, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B49DF204(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

    v42 = v66;
  }

  v43 = &v15[*(v12 + 20)];
  v44 = *(v43 + 1);
  if (!v44)
  {
    v53 = 0;
LABEL_16:
    sub_1B498C3D8();
    swift_allocError();
    *v54 = v53;
    swift_willThrow();
    sub_1B49DF1A4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    sub_1B49DF1A4(v35, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  }

  v45 = &v15[*(v12 + 24)];
  v46 = *(v45 + 1);
  if (!v46)
  {
    v53 = 1;
    goto LABEL_16;
  }

  v65 = *v43;
  v66 = v29;
  v59 = *v45;

  sub_1B49DF1A4(v15, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v47 = v63;
  sub_1B4974FBC(v35 + v67[9], v63, &qword_1EB8A76C0, &qword_1B4D1E798);
  v48 = *(v42 + 48);
  v49 = v61;
  if (v48(v47, 1, v61) == 1)
  {
    v50 = v62;
    *v62 = 0;
    *(v50 + 8) = 1;
    v51 = v50;
    v52 = v50 + *(v49 + 20);
    sub_1B4D17BBC();
    if (v48(v47, 1, v49) != 1)
    {
      sub_1B4975024(v47, &qword_1EB8A76C0, &qword_1B4D1E798);
    }
  }

  else
  {
    v51 = v62;
    sub_1B49DF204(v47, v62, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  AudioSynthesisIntensity.init(_:)(v51, &v69);
  result = sub_1B49DF1A4(v68, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  v56 = v69;
  v57 = v64;
  v58 = v66;
  *v64 = v60;
  v57[1] = v58;
  v57[2] = v30;
  v57[3] = v31;
  v57[4] = v32;
  v57[5] = v33;
  v57[6] = v34;
  v57[7] = v36;
  v57[8] = v37;
  v57[9] = v65;
  v57[10] = v44;
  v57[11] = v59;
  v57[12] = v46;
  *(v57 + 104) = v56;
  return result;
}

uint64_t StreamingAudioAvailable.protobuf()()
{
  v6 = v0[4];
  *v7 = v0[5];
  *&v7[9] = *(v0 + 89);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B49DF3A4(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49DEA70(char *a1, uint64_t *a2)
{
  v35 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v43 = *(v35 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a1 + 1);

  *a1 = v15;
  *(a1 + 1) = v16;
  v18 = *(a2 + 2);
  v41[0] = *(a2 + 1);
  v41[1] = v18;
  v42 = a2[6];
  v40 = v41;
  sub_1B49DF3A4(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v19 = v32;
  sub_1B4D17DAC();
  v32 = v19;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v21 = v20[7];
  sub_1B4975024(&a1[v21], &qword_1EB8A76C8, &unk_1B4D22410);
  sub_1B49DF204(v14, &a1[v21], type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  (*(v11 + 56))(&a1[v21], 0, 1, v10);
  v23 = a2[7];
  v22 = a2[8];
  v24 = *(a1 + 3);

  *(a1 + 2) = v23;
  *(a1 + 3) = v22;
  v25 = a2[11];
  v26 = a2[12];
  v37 = *(a2 + 9);
  v38 = v25;
  v39 = v26;
  sub_1B49DF3A4(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17DAC();
  v27 = v20[8];
  sub_1B4975024(&a1[v27], &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B49DF204(v9, &a1[v27], type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  (*(v33 + 56))(&a1[v27], 0, 1, v6);
  v36 = *(a2 + 104);
  sub_1B49DF3A4(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  v29 = v34;
  v28 = v35;
  sub_1B4D17DAC();
  v30 = v20[9];
  sub_1B4975024(&a1[v30], &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B49DF204(v29, &a1[v30], type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return (*(v43 + 56))(&a1[v30], 0, 1, v28);
}

_OWORD *sub_1B49DEF10(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[5];
  v14[4] = v1[4];
  v15[0] = v8;
  *(v15 + 9) = *(v1 + 89);
  v9 = v1[1];
  v14[0] = *v1;
  v14[1] = v9;
  v10 = v1[3];
  v14[2] = v1[2];
  v14[3] = v10;
  v11 = sub_1B49DF318();
  v12 = v14;
  (*(v11 + 32))(a1, v11);
  if (!v2)
  {
    sub_1B49DF3A4(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
    v12 = sub_1B4D17D6C();
    sub_1B49DF1A4(v7, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  }

  return v12;
}

__n128 sub_1B49DF070@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B21FE4(a1, a2, v8);
  if (!v3)
  {
    v6 = v9[0];
    *(a3 + 64) = v8[4];
    *(a3 + 80) = v6;
    *(a3 + 89) = *(v9 + 9);
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    result = v8[3];
    *(a3 + 32) = v8[2];
    *(a3 + 48) = result;
  }

  return result;
}

uint64_t sub_1B49DF0C4()
{
  v6 = v0[4];
  *v7 = v0[5];
  *&v7[9] = *(v0 + 89);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B49DF3A4(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49DF1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49DF204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B49DF318()
{
  result = qword_1EB8A76E0;
  if (!qword_1EB8A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A76E0);
  }

  return result;
}

uint64_t sub_1B49DF3A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ConsistentWorkoutTrendFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v12 = v2;
    v13 = v5;
    [v9 coordinate];
    v15 = v14;
    [v11 coordinate];
    if (v15 != v16)
    {

      return 0;
    }

    [v9 coordinate];
    v18 = v17;
    [v11 coordinate];
    v20 = v19;

    v21 = v18 == v20;
  }

  else
  {
    sub_1B49DF540();
    v21 = sub_1B4D187AC();
  }

  if (v4 == v7)
  {
    return v21 & (v3 == v6);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B49DF540()
{
  result = qword_1EB8A7560;
  if (!qword_1EB8A7560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8A7560);
  }

  return result;
}

unint64_t sub_1B49DF58C()
{
  v1 = 0xD000000000000022;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002ELL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1B49DF5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49DFD70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49DF60C(uint64_t a1)
{
  v2 = sub_1B49DF878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49DF648(uint64_t a1)
{
  v2 = sub_1B49DF878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConsistentWorkoutTrendFact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76F8, &unk_1B4D1E7F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v14[1] = *(v1 + 16);
  v14[2] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49DF878();
  v12 = v10;
  sub_1B4D18EFC();
  v18 = v12;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0);
  sub_1B4D18D0C();

  if (!v2)
  {
    v16 = 1;
    sub_1B4D18CEC();
    v15 = 2;
    sub_1B4D18CEC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B49DF878()
{
  result = qword_1EB8A7700;
  if (!qword_1EB8A7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7700);
  }

  return result;
}

void ConsistentWorkoutTrendFact.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7708, &qword_1B4D1E800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49DF878();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v15[15] = 0;
    sub_1B49B1148(&qword_1EB8A6FB0);
    sub_1B4D18C0C();
    v11 = v16;
    v15[14] = 1;
    v12 = sub_1B4D18BEC();
    v15[13] = 2;
    v13 = sub_1B4D18BEC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
    v14 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

BOOL sub_1B49DFB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_1B49B0864(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return v6 && v7;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B49DFBC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B49DFC08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B49DFC6C()
{
  result = qword_1EB8A7710;
  if (!qword_1EB8A7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7710);
  }

  return result;
}

unint64_t sub_1B49DFCC4()
{
  result = qword_1EB8A7718;
  if (!qword_1EB8A7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7718);
  }

  return result;
}

unint64_t sub_1B49DFD1C()
{
  result = qword_1EB8A7720;
  if (!qword_1EB8A7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7720);
  }

  return result;
}

uint64_t sub_1B49DFD70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B4D5F830 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002ELL && 0x80000001B4D5F860 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B49DFEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49DFF14()
{
  if (*v0)
  {
    result = 0x6C61767265746E69;
  }

  else
  {
    result = 0x72657470616461;
  }

  *v0;
  return result;
}

uint64_t sub_1B49DFF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72657470616461 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B49E002C(uint64_t a1)
{
  v2 = sub_1B49E025C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49E0068(uint64_t a1)
{
  v2 = sub_1B49E025C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceRecordRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7730, &qword_1B4D1E9D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E025C();
  sub_1B4D18EFC();
  v10[15] = 0;
  sub_1B49E02B0();
  sub_1B4D18D0C();
  if (!v1)
  {
    v10[14] = 1;
    sub_1B4D174EC();
    sub_1B49E0628(&qword_1EB8A7740, MEMORY[0x1E6968130]);
    sub_1B4D18CAC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B49E025C()
{
  result = qword_1EB8A7738;
  if (!qword_1EB8A7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7738);
  }

  return result;
}

unint64_t sub_1B49E02B0()
{
  result = qword_1EDC36EB0;
  if (!qword_1EDC36EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC36EB0);
  }

  return result;
}

uint64_t InferenceRecordRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7748, &qword_1B4D1E9E0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for InferenceRecordRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E025C();
  sub_1B4D18EEC();
  if (!v2)
  {
    v21 = v15;
    v17 = v23;
    v25 = 0;
    sub_1B49E05D4();
    sub_1B4D18C0C();
    sub_1B4D174EC();
    v24 = 1;
    sub_1B49E0628(&qword_1EB8A7758, MEMORY[0x1E6968130]);
    sub_1B4D18BAC();
    (*(v17 + 8))(v11, v8);
    v18 = v21;
    sub_1B49E0670(v7, v21);
    sub_1B49E06E0(v18, v22);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B49E05D4()
{
  result = qword_1EB8A7750;
  if (!qword_1EB8A7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7750);
  }

  return result;
}

uint64_t sub_1B49E0628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B49E0670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E06E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceRecordRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t InferenceFeedbackUpdateRequest.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InferenceFeedbackUpdateRequest.feedbackId.getter()
{
  v1 = (v0 + *(type metadata accessor for InferenceFeedbackUpdateRequest(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1B49E08CC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B49E0904()
{
  if (*v0)
  {
    result = 0x6B63616264656566;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_1B49E093C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616264656566 && a2 == 0xEA00000000006449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B49E0A20(uint64_t a1)
{
  v2 = sub_1B49E0C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49E0A5C(uint64_t a1)
{
  v2 = sub_1B49E0C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceFeedbackUpdateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7760, &qword_1B4D1E9E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E0C54();
  sub_1B4D18EFC();
  v15[15] = 0;
  sub_1B4D177CC();
  sub_1B49E0628(&qword_1EB8A7770, MEMORY[0x1E69695A8]);
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for InferenceFeedbackUpdateRequest(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B49E0C54()
{
  result = qword_1EB8A7768;
  if (!qword_1EB8A7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7768);
  }

  return result;
}

uint64_t InferenceFeedbackUpdateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1B4D177CC();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7778, &qword_1B4D1E9F0);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26 - v9;
  updated = type metadata accessor for InferenceFeedbackUpdateRequest(0);
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E0C54();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v14;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_1B49E0628(&qword_1EB8A7780, MEMORY[0x1E69695A8]);
  v18 = v30;
  sub_1B4D18C0C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_1B4D18BBC();
  v21 = v20;
  (*(v16 + 8))(v10, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(updated + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_1B49E0FD8(v23, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B49E103C(v23);
}

uint64_t sub_1B49E0FD8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for InferenceFeedbackUpdateRequest(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1B49E103C(uint64_t a1)
{
  updated = type metadata accessor for InferenceFeedbackUpdateRequest(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1B49E1098(void *a1)
{
  a1[1] = sub_1B49E0628(&qword_1EB8A7788, type metadata accessor for InferenceRecordRequest);
  a1[2] = sub_1B49E0628(&qword_1EB8A7790, type metadata accessor for InferenceRecordRequest);
  result = sub_1B49E0628(&qword_1EB8A7798, type metadata accessor for InferenceRecordRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_1B49E1144(void *a1)
{
  a1[1] = sub_1B49E0628(&qword_1EB8A77A0, type metadata accessor for InferenceFeedbackUpdateRequest);
  a1[2] = sub_1B49E0628(&qword_1EB8A77A8, type metadata accessor for InferenceFeedbackUpdateRequest);
  result = sub_1B49E0628(&qword_1EB8A77B0, type metadata accessor for InferenceFeedbackUpdateRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_1B49E1268(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = sub_1B4D173DC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1B4D173CC();
  sub_1B49E0628(a3, a4);
  v9 = sub_1B4D173BC();

  return v9;
}

uint64_t sub_1B49E1360(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = sub_1B4D173AC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1B4D1739C();
  sub_1B49E0628(a5, a6);
  sub_1B4D1738C();
  sub_1B49DDD2C(a1, a2);
}

void sub_1B49E1454()
{
  sub_1B49E14D0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B49E14D0()
{
  if (!qword_1EDC37858)
  {
    sub_1B4D174EC();
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC37858);
    }
  }
}

uint64_t sub_1B49E1550()
{
  result = sub_1B4D177CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B49E15E8()
{
  result = qword_1EB8A77B8;
  if (!qword_1EB8A77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77B8);
  }

  return result;
}

unint64_t sub_1B49E1640()
{
  result = qword_1EB8A77C0;
  if (!qword_1EB8A77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77C0);
  }

  return result;
}

unint64_t sub_1B49E1698()
{
  result = qword_1EB8A77C8;
  if (!qword_1EB8A77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77C8);
  }

  return result;
}

unint64_t sub_1B49E16F0()
{
  result = qword_1EB8A77D0;
  if (!qword_1EB8A77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77D0);
  }

  return result;
}

unint64_t sub_1B49E1748()
{
  result = qword_1EB8A77D8;
  if (!qword_1EB8A77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77D8);
  }

  return result;
}

unint64_t sub_1B49E17A0()
{
  result = qword_1EB8A77E0;
  if (!qword_1EB8A77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77E0);
  }

  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B49E1888()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49E18FC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B49E1950@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutGoalAchievementStatusFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  sub_1B49E1B20(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B49E1B84(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  strcpy((v4 + 32), "formatted_goal");
  *(v4 + 47) = -18;
  *(v4 + 48) = sub_1B49E1BE8;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  return v4;
}

uint64_t sub_1B49E1B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoalAchievementStatusFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E1B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoalAchievementStatusFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t WorkoutGoalAchievementStatusFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  result = sub_1B4D1491C(v1);
  v5 = v4;
  if (v4)
  {
  }

  *a1 = v5 == 0;
  return result;
}

uint64_t sub_1B49E1C38(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  sub_1B49E1B20(v1, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1B49E1B84(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  strcpy((v4 + 32), "formatted_goal");
  *(v4 + 47) = -18;
  *(v4 + 48) = sub_1B49E2108;
  *(v4 + 56) = v6;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  return v4;
}

unint64_t sub_1B49E1D7C@<X0>(BOOL *a1@<X8>)
{
  result = sub_1B4D1491C(v1);
  v5 = v4;
  if (v4)
  {
  }

  *a1 = v5 == 0;
  return result;
}

unint64_t sub_1B49E1DDC()
{
  result = qword_1EB8A77E8;
  if (!qword_1EB8A77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77E8);
  }

  return result;
}

unint64_t sub_1B49E1E34()
{
  result = qword_1EB8A77F0;
  if (!qword_1EB8A77F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A77F8, &qword_1B4D1EE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A77F0);
  }

  return result;
}

unint64_t sub_1B49E1E9C()
{
  result = qword_1EB8A7800;
  if (!qword_1EB8A7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7800);
  }

  return result;
}

unint64_t sub_1B49E1EF4()
{
  result = qword_1EB8A7808;
  if (!qword_1EB8A7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7808);
  }

  return result;
}

unint64_t sub_1B49E1F48(uint64_t a1)
{
  result = sub_1B49E1F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49E1F70()
{
  result = qword_1EB8A7810;
  if (!qword_1EB8A7810)
  {
    type metadata accessor for WorkoutGoalAchievementStatusFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7810);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for WorkoutGoalAchievementStatusFact() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1B4D179EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B49E210C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v36 = v7;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF45C(0, v8, 0);
    v40 = v42;
    v10 = a1 + 64;
    v11 = -1 << *(a1 + 32);
    result = sub_1B4D188DC();
    v12 = result;
    v13 = 0;
    v41 = *(a1 + 36);
    v33 = a1 + 72;
    v34 = v8;
    v35 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      if (v41 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v16 = *(*(a1 + 48) + 8 * v12);
      v17 = *(*(a1 + 56) + 8 * v12);
      MEMORY[0x1EEE9AC00](result);
      *(&v32 - 2) = v18;
      *(&v32 - 1) = v19;
      sub_1B49E34A8(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v20 = v36;
      sub_1B4D17DAC();
      v39 = v2;
      v21 = v40;
      v42 = v40;
      v23 = *(v40 + 16);
      v22 = *(v40 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B4BCF45C(v22 > 1, v23 + 1, 1);
        v21 = v42;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = v21;
      result = sub_1B49E34F0(v20, v21 + v24 + *(v37 + 72) * v23, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_25;
      }

      v10 = v35;
      v25 = *(v35 + 8 * v15);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      if (v41 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v14 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v2 = v39;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v29 = (v33 + 8 * v15);
        v2 = v39;
        while (v28 < (v14 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_1B497CD6C(v12, v41, 0);
            v14 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_1B497CD6C(v12, v41, 0);
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v34)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t RingsMilestonePropertyValue.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v45 - v5;
  v54 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v56 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v9 = *(v53 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v53);
  v52 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v45 - v13);
  v15 = a1[1];
  v48 = *a1;
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v47 = v6;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEE7C(0, v16, 0);
    v18 = v57;
    v19 = v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v46 = v9;
    v51 = v9[9];
    do
    {
      sub_1B49E2F00(v19, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v20 = *v14;
      sub_1B49E337C(v14, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v57 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B4BCEE7C((v21 > 1), v22 + 1, 1);
        v18 = v57;
      }

      *(v18 + 16) = v22 + 1;
      *(v18 + 8 * v22 + 32) = v20;
      v19 += v51;
      --v16;
    }

    while (v16);
    v9 = v46;
    v6 = v47;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v23 = a1[2];
  v24 = *(v23 + 16);
  if (v24)
  {
    v46 = a1;
    v47 = v18;
    v57 = v17;
    sub_1B4BCEE5C(0, v24, 0);
    v25 = v57;
    v26 = v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v51 = *(v6 + 72);
    v27 = (v9 + 6);
    do
    {
      v28 = v56;
      sub_1B49E2F00(v26, v56, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v29 = v55;
      sub_1B49E2F68(v28 + *(v54 + 24), v55);
      v30 = *v27;
      v31 = v53;
      if ((*v27)(v29, 1, v53) == 1)
      {
        v32 = v52;
        *v52 = 0;
        v33 = v32 + *(v31 + 20);
        sub_1B4D17BBC();
        if (v30(v29, 1, v31) != 1)
        {
          sub_1B49E2FD8(v29);
        }
      }

      else
      {
        v32 = v52;
        sub_1B49E34F0(v29, v52, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      }

      v34 = *v32;
      sub_1B49E337C(v32, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v35 = *v56;
      sub_1B49E337C(v56, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
      v57 = v25;
      v37 = *(v25 + 16);
      v36 = *(v25 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B4BCEE5C((v36 > 1), v37 + 1, 1);
        v25 = v57;
      }

      *(v25 + 16) = v37 + 1;
      v38 = v25 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
      v26 += v51;
      --v24;
    }

    while (v24);
    a1 = v46;
    goto LABEL_20;
  }

  if (*(v17 + 16))
  {
    v47 = v18;
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
    v39 = sub_1B4D18AEC();
    v18 = v47;
    goto LABEL_21;
  }

  v39 = MEMORY[0x1E69E7CC8];
LABEL_21:
  v57 = v39;

  v41 = v49;
  sub_1B49E3040(v40, 1, &v57);
  if (v41)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B49E337C(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

    v43 = v57;
    v44 = v50;
    *v50 = v48;
    v44[1] = v18;
    v44[2] = v43;
  }

  return result;
}

uint64_t RingsMilestonePropertyValue.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v3 = *(v0 + 1);
  sub_1B49E34A8(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49E2A5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v26 = a4;
    v27 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF47C(0, v13, 0);
    v14 = v30;
    v15 = (a3 + 32);
    v16 = sub_1B49E34A8(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    v28 = v16;
    do
    {
      v17 = *v15++;
      MEMORY[0x1EEE9AC00](v16);
      *(&v26 - 2) = v18;
      v19 = v29;
      sub_1B4D17DAC();
      v29 = v19;
      v30 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B4BCF47C(v20 > 1, v21 + 1, 1);
        v14 = v30;
      }

      *(v14 + 16) = v21 + 1;
      v16 = sub_1B49E34F0(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      --v13;
    }

    while (v13);
    a4 = v26;
    a1 = v27;
  }

  v22 = a1[1];

  a1[1] = v14;
  v23 = sub_1B49E210C(a4);
  v24 = a1[2];

  a1[2] = v23;
  return result;
}

uint64_t sub_1B49E2CA4(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = a2;
  v14 = a3;
  sub_1B49E34A8(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  sub_1B4D17DAC();
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B49E2FD8(&a1[v11]);
  sub_1B49E34F0(v10, &a1[v11], type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  return (*(v7 + 56))(&a1[v11], 0, 1, v6);
}

uint64_t sub_1B49E2E2C()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v3 = *(v0 + 1);
  sub_1B49E34A8(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B49E2F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49E2F68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E2FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49E3040(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_1B49EF0B0(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1B4984310(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_1B49EF0B0(v8);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1B4D18E1C();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_1B4988808();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v22[6] + 8 * v10) = v8;
  *(v22[7] + 8 * v10) = v7;
  v23 = v22[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000001BLL, 0x80000001B4D4F0C0);
    sub_1B4D18A8C();
    MEMORY[0x1B8C7C620](39, 0xE100000000000000);
    sub_1B4D18A9C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = a1 + 7;
    v7 = 1;
    while (v7 < a1[2])
    {
      v8 = *(v6 - 1);
      v25 = *v6;
      v26 = *a3;
      v27 = sub_1B49EF0B0(v8);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_1B4984310(v31, 1);
        v32 = *a3;
        v27 = sub_1B49EF0B0(v8);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + 8 * v27) = v8;
      *(v34[7] + 8 * v27) = v25;
      v35 = v34[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1B49E337C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B49E34A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B49E34F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49E3598(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7865646E69;
    v6 = 6581861;
    if (a1 != 2)
    {
      v6 = 0x6E6F697461727564;
    }

    if (a1)
    {
      v5 = 0x7472617473;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5065676172657661;
    v2 = 0x6169747261507369;
    if (a1 != 7)
    {
      v2 = 0x6D6F747375437369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65636E6174736964;
    if (a1 != 4)
    {
      v3 = 1701011824;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B49E36B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B49E50B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B49E36D8(uint64_t a1)
{
  v2 = sub_1B49E4A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B49E3714(uint64_t a1)
{
  v2 = sub_1B49E4A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutSplit.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7828, &unk_1B4D1EEF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B49E4A88();
  sub_1B4D18EFC();
  v11 = *v3;
  v22[31] = 0;
  sub_1B4D18CEC();
  if (!v2)
  {
    v12 = type metadata accessor for WorkoutSplit();
    v13 = v12[5];
    v22[30] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820);
    sub_1B4D18D0C();
    v14 = v12[6];
    v22[29] = 2;
    sub_1B4D18D0C();
    v15 = v12[7];
    v22[28] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18D0C();
    v16 = v12[8];
    v22[27] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18D0C();
    v17 = v12[9];
    v22[26] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B4D18D0C();
    v18 = v12[10];
    v22[25] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B49B0578(&qword_1EB8A7838, &qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B4D18CAC();
    v19 = *(v3 + v12[11]);
    v22[24] = 7;
    sub_1B4D18CCC();
    v20 = *(v3 + v12[12]);
    v22[15] = 8;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutSplit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v54 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v66 = *(v63 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v54 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v62 = *(v65 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v54 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v64 = *(v67 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v54 - v11;
  v12 = sub_1B4D1777C();
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7840, &qword_1B4D1EF10);
  v69 = *(v19 - 8);
  v70 = v19;
  v20 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - v21;
  v23 = type metadata accessor for WorkoutSplit();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a1[3];
  v27 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1B49E4A88();
  v71 = v22;
  v29 = v72;
  sub_1B4D18EEC();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  v30 = v18;
  v54 = v15;
  v55 = v23;
  v72 = v12;
  v56 = v26;
  v82 = 0;
  v31 = v69;
  v32 = sub_1B4D18BEC();
  v33 = v56;
  *v56 = v32;
  v81 = 1;
  sub_1B49B1198(&qword_1EB8A6FB8);
  v34 = v30;
  v35 = v72;
  sub_1B4D18C0C();
  v36 = *(v68 + 32);
  v36(v33 + v55[5], v34, v35);
  v80 = 2;
  v37 = v54;
  sub_1B4D18C0C();
  v36(v56 + v55[6], v37, v35);
  v79 = 3;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
  v38 = v61;
  v39 = v67;
  sub_1B4D18C0C();
  v40 = v31;
  v42 = v55;
  v41 = v56;
  (*(v64 + 32))(v56 + v55[7], v38, v39);
  v78 = 4;
  sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
  v43 = v60;
  v44 = v65;
  sub_1B4D18C0C();
  v45 = v66;
  (*(v62 + 32))(v41 + v42[8], v43, v44);
  v77 = 5;
  sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v46 = v59;
  v47 = v63;
  sub_1B4D18C0C();
  (*(v45 + 32))(v41 + v42[9], v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v76 = 6;
  sub_1B49B0578(&qword_1EB8A7848, &qword_1EB8A6CE0, &unk_1B4D1EF00);
  v48 = v58;
  v49 = v70;
  sub_1B4D18BAC();
  sub_1B49E4B28(v48, v41 + v42[10]);
  v75 = 7;
  *(v41 + v42[11]) = sub_1B4D18BCC() & 1;
  v74 = 8;
  v50 = sub_1B4D18BCC();
  (*(v40 + 8))(v71, v49);
  v52 = v56;
  v51 = v57;
  *(v56 + v42[12]) = v50 & 1;
  sub_1B49E4B98(v52, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  return sub_1B49E4BFC(v52);
}

uint64_t _s19FitnessIntelligence12WorkoutSplitV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7878, &unk_1B4D2D8B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v33 = v15;
  v18 = type metadata accessor for WorkoutSplit();
  v19 = v18[5];
  if ((sub_1B4D1774C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v20 = v18[6];
  if ((sub_1B4D1774C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v21 = v18[7];
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v22 = v18[8];
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v23 = v18[9];
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = v18[10];
  v25 = *(v33 + 48);
  sub_1B49E5394(a1 + v24, v17);
  sub_1B49E5394(a2 + v24, &v17[v25]);
  v26 = *(v32 + 48);
  if (v26(v17, 1, v4) != 1)
  {
    sub_1B49E5394(v17, v12);
    if (v26(&v17[v25], 1, v4) != 1)
    {
      v27 = v32;
      (*(v32 + 32))(v8, &v17[v25], v4);
      sub_1B49B0578(&qword_1EB8A7880, &qword_1EB8A6CE0, &unk_1B4D1EF00);
      v28 = sub_1B4D1816C();
      v29 = *(v27 + 8);
      v29(v8, v4);
      v29(v12, v4);
      sub_1B4975024(v17, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    (*(v32 + 8))(v12, v4);
LABEL_12:
    sub_1B4975024(v17, &qword_1EB8A7878, &unk_1B4D2D8B0);
    goto LABEL_15;
  }

  if (v26(&v17[v25], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1B4975024(v17, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
LABEL_14:
  if (*(a1 + v18[11]) == *(a2 + v18[11]))
  {
    v30 = *(a1 + v18[12]) ^ *(a2 + v18[12]) ^ 1;
    return v30 & 1;
  }

LABEL_15:
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_1B49E4A88()
{
  result = qword_1EB8A7830;
  if (!qword_1EB8A7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7830);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutSplit()
{
  result = qword_1EB8A7850;
  if (!qword_1EB8A7850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B49E4B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E4B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSplit();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49E4BFC(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSplit();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B49E4C80()
{
  sub_1B4D1777C();
  if (v0 <= 0x3F)
  {
    sub_1B49E4D9C(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008);
    if (v1 <= 0x3F)
    {
      sub_1B49E4D9C(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058);
      if (v2 <= 0x3F)
      {
        sub_1B49BEE84();
        if (v3 <= 0x3F)
        {
          sub_1B49E4DF4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B49E4D9C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1B498AFB8(255, a3, a4);
    v5 = sub_1B4D1746C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B49E4DF4()
{
  if (!qword_1EDC37880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC37880);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutSplit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutSplit.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B49E4FAC()
{
  result = qword_1EB8A7860;
  if (!qword_1EB8A7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7860);
  }

  return result;
}

unint64_t sub_1B49E5004()
{
  result = qword_1EB8A7868;
  if (!qword_1EB8A7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7868);
  }

  return result;
}

unint64_t sub_1B49E505C()
{
  result = qword_1EB8A7870;
  if (!qword_1EB8A7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7870);
  }

  return result;
}

uint64_t sub_1B49E50B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEC0000007265776FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6169747261507369 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B49E5394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static WorkoutCountByWeatherConditionPropertyGenerator.from(_:for:)(void *a1@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16[-v8];
  if (*a2 == 16)
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 112))(v10, v11);
    v12 = type metadata accessor for WeatherCondition();
    if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
    {
      sub_1B49E5598(v9);
      *a3 = sub_1B4C98484(MEMORY[0x1E69E7CC0]);
      a3[1] = 1;
    }

    else
    {
      v13 = *&v9[*(v12 + 20)];
      sub_1B49E5600(v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7888, &unk_1B4D20440);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B4D1A800;
      *(inited + 32) = v13;
      *(inited + 40) = 1;
      v15 = sub_1B4C98484(inited);
      swift_setDeallocating();
      *a3 = v15;
      a3[1] = 0;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

uint64_t sub_1B49E5598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49E5600(uint64_t a1)
{
  v2 = type metadata accessor for WeatherCondition();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B49E565C(uint64_t a1)
{
  result = sub_1B49E5684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B49E5684()
{
  result = qword_1EDC379A0;
  if (!qword_1EDC379A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC379A0);
  }

  return result;
}

unint64_t sub_1B49E56DC()
{
  result = qword_1EB8A7890;
  if (!qword_1EB8A7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A7890);
  }

  return result;
}

unint64_t sub_1B49E5734()
{
  result = qword_1EDC38288;
  if (!qword_1EDC38288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB8A7898, &qword_1B4D1F0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38288);
  }

  return result;
}

uint64_t static WorkoutWeeklyStatisticsPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v35 = a4;
  v7 = sub_1B4D1746C();
  v8 = sub_1B4D1880C();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v31 - v18;
  v19 = *a2;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = (*(v20 + 56))(v21, v20);
  [v22 effectiveTypeIdentifier];

  if (v19 == 9)
  {
    LOBYTE(v36) = 9;
    sub_1B49E5CDC(&v36, v12);
    v23 = a3;
    if ((*(v13 + 48))(v12, 1, v7) == 1)
    {
      (*(v32 + 8))(v12, v33);
      v24 = 1;
      v25 = v35;
    }

    else
    {
      v26 = v34;
      (*(v13 + 32))(v34, v12, v7);
      v27 = a1[3];
      v28 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v27);
      (*(*(v28 + 16) + 8))(&v36, v27);
      (*(v13 + 16))(v17, v26, v7);
      v25 = v35;
      WeeklyStatisticsPropertyValue.init(cacheIndex:measurement:)(&v36, v17, v23, v35);
      (*(v13 + 8))(v26, v7);
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
    v25 = v35;
  }

  v29 = type metadata accessor for WeeklyStatisticsPropertyValue();
  return (*(*(v29 - 8) + 56))(v25, v24, 1, v29);
}

uint64_t sub_1B49E5CDC@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  if (*a1 == 9)
  {
    if (qword_1EDC36E70 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDC36E78;
    type metadata accessor for UnitCount();
    v7 = v6;
    sub_1B4D1741C();
    v8 = sub_1B4D1746C();
    if (swift_dynamicCast())
    {
      v9 = a2;
      v10 = 0;
    }

    else
    {
      v9 = a2;
      v10 = 1;
    }

    return (*(*(v8 - 8) + 56))(v9, v10, 1, v8);
  }

  else
  {
    v11 = sub_1B4D1746C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t sub_1B49E5EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7478, &qword_1B4D1F190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B49E5F28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 SanityTaskMismatch.cacheIndexRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t SanityTaskMismatch.difference.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    v4 = __OFSUB__(0, result);
    result = v2 - v1;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  return result;
}

__n128 SanityTaskMismatch.init(cacheIndexRange:snapshotPropertiesType:snapshotChecksum:databaseChecksum:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v5 = *a2;
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u8[0] = v5;
  a5[1].n128_u64[1] = a3;
  a5[2].n128_u64[0] = a4;
  return result;
}

uint64_t sub_1B49E5FE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B49E602C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *WorkoutRepresentable.splits(userDistanceUnit:)(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7920, &unk_1B4D1F260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v38 = type metadata accessor for WorkoutSplit();
  v36 = *(v38 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v35 = &v33 - v14;
  v15 = *(a3 + 216);
  v15(a2, a3, v13);
  sub_1B498AFB8(0, &qword_1EB8A7928, 0x1E696C5B8);
  v16 = sub_1B4D183EC();

  v17 = FICustomSplits();

  v18 = sub_1B4D183FC();
  if (v18 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v19 = [objc_opt_self() miles];
    sub_1B4D187AC();

    (v15)(a2, a3);
    v20 = sub_1B4D183EC();

    v21 = FISplitsForMeasuringSystemIdentifier();

    sub_1B4D183FC();
    goto LABEL_4;
  }

  while (1)
  {
LABEL_4:

    v39 = sub_1B49EE8A8(v22, sub_1B49B79E8, sub_1B49EE94C);
    sub_1B49ECF74(&v39);

    v23 = v39;
    if ((v39 & 0x8000000000000000) == 0 && (v39 & 0x4000000000000000) == 0)
    {
      a3 = *(v39 + 16);
      if (!a3)
      {
        break;
      }

      goto LABEL_7;
    }

    a3 = sub_1B4D18ABC();
    if (!a3)
    {
      break;
    }

LABEL_7:
    v24 = 0;
    v15 = (v23 & 0xC000000000000001);
    v25 = (v36 + 48);
    a2 = MEMORY[0x1E69E7CC0];
    v34 = a1;
    while (1)
    {
      if (v15)
      {
        v26 = MEMORY[0x1B8C7CD90](v24, v23);
      }

      else
      {
        if (v24 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v26 = *(v23 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      sub_1B49E8FF0(v24, v26, a1, v9);

      if ((*v25)(v9, 1, v38) == 1)
      {
        sub_1B4975024(v9, &qword_1EB8A7920, &unk_1B4D1F260);
      }

      else
      {
        v29 = v35;
        sub_1B49EE5A8(v9, v35, type metadata accessor for WorkoutSplit);
        sub_1B49EE5A8(v29, v37, type metadata accessor for WorkoutSplit);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_1B4A1D79C(0, a2[2] + 1, 1, a2);
        }

        v31 = a2[2];
        v30 = a2[3];
        if (v31 >= v30 >> 1)
        {
          a2 = sub_1B4A1D79C(v30 > 1, v31 + 1, 1, a2);
        }

        a2[2] = v31 + 1;
        sub_1B49EE5A8(v37, a2 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, type metadata accessor for WorkoutSplit);
        a1 = v34;
      }

      ++v24;
      if (v28 == a3)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (!sub_1B4D18ABC())
    {
      goto LABEL_3;
    }
  }

  a2 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return a2;
}

uint64_t sub_1B49E656C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7978, &unk_1B4D1F2F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v23 - v12;
  v13 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF0DC(0, v13, 0);
  v14 = v28;
  if (v13)
  {
    v15 = a1 + 32;
    v24 = v7;
    v25 = (v7 + 56);
    v16 = &qword_1EB8A6840;
    while (1)
    {
      sub_1B497558C(v15, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v6;
      (*v25)(v5, 0, 1, v6);
      v18 = v26;
      sub_1B498B270(v5, v26, v16, &unk_1B4D20FA0);
      sub_1B498B270(v18, v10, v16, &unk_1B4D20FA0);
      v28 = v14;
      v19 = v16;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B4BCF0DC(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      sub_1B498B270(v10, v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v19, &unk_1B4D20FA0);
      v15 += 40;
      --v13;
      v6 = v17;
      v16 = v19;
      if (!v13)
      {
        return v14;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_1B4975024(v5, &qword_1EB8A7978, &unk_1B4D1F2F0);
    return 0;
  }

  return v14;
}

uint64_t sub_1B49E684C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF0FC(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B4BCF0FC((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B49E6974(unint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1B4D18A1C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B4D18ABC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8C7CD90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1B4D189EC();
      v8 = *(v10 + 16);
      sub_1B4D18A2C();
      sub_1B4D18A3C();
      sub_1B4D189FC();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B4D18ABC();
    sub_1B4D18A1C();
  }

  return v10;
}

uint64_t sub_1B49E6ADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7970, &unk_1B4D1F2E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v23 - v12;
  v13 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF21C(0, v13, 0);
  v14 = v28;
  if (v13)
  {
    v15 = a1 + 32;
    v24 = v7;
    v25 = (v7 + 56);
    v16 = &qword_1EB8A6D68;
    while (1)
    {
      sub_1B497558C(v15, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v6;
      (*v25)(v5, 0, 1, v6);
      v18 = v26;
      sub_1B498B270(v5, v26, v16, &qword_1B4D208D0);
      sub_1B498B270(v18, v10, v16, &qword_1B4D208D0);
      v28 = v14;
      v19 = v16;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B4BCF21C(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      sub_1B498B270(v10, v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v19, &qword_1B4D208D0);
      v15 += 40;
      --v13;
      v6 = v17;
      v16 = v19;
      if (!v13)
      {
        return v14;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_1B4975024(v5, &qword_1EB8A7970, &unk_1B4D1F2E0);
    return 0;
  }

  return v14;
}

uint64_t sub_1B49E6DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7530, &unk_1B4D40250);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v23 - v12;
  v13 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF23C(0, v13, 0);
  v14 = v28;
  if (v13)
  {
    v15 = a1 + 32;
    v24 = v7;
    v25 = (v7 + 56);
    v16 = &qword_1EB8A6858;
    while (1)
    {
      sub_1B497558C(v15, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v6;
      (*v25)(v5, 0, 1, v6);
      v18 = v26;
      sub_1B498B270(v5, v26, v16, &qword_1B4D1AB70);
      sub_1B498B270(v18, v10, v16, &qword_1B4D1AB70);
      v28 = v14;
      v19 = v16;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B4BCF23C(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      sub_1B498B270(v10, v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v19, &qword_1B4D1AB70);
      v15 += 40;
      --v13;
      v6 = v17;
      v16 = v19;
      if (!v13)
      {
        return v14;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_1B4975024(v5, &qword_1EB8A7530, &unk_1B4D40250);
    return 0;
  }

  return v14;
}

uint64_t sub_1B49E709C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v43 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF2BC(0, v2, 0);
  v3 = v43;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      nullsub_1(&v33);
      v26 = v35;
      v27 = v36;
      v32 = v41;
      v30 = v39;
      v31 = v40;
      v28 = v37;
      v29 = v38;
      v24 = v33;
      v25 = v34;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      v43 = v3;
      if (v6 >= v5 >> 1)
      {
        sub_1B4BCF2BC((v5 > 1), v6 + 1, 1);
        v3 = v43;
      }

      v17 = v26;
      v18 = v27;
      v23 = v32;
      v21 = v30;
      v22 = v31;
      v19 = v28;
      v20 = v29;
      v15 = v24;
      v16 = v25;
      *(v3 + 16) = v6 + 1;
      v7 = v3 + 136 * v6;
      *(v7 + 32) = v15;
      v8 = v16;
      v9 = v17;
      v10 = v19;
      *(v7 + 80) = v18;
      *(v7 + 96) = v10;
      *(v7 + 48) = v8;
      *(v7 + 64) = v9;
      v11 = v20;
      v12 = v21;
      v13 = v22;
      *(v7 + 160) = v23;
      *(v7 + 128) = v12;
      *(v7 + 144) = v13;
      *(v7 + 112) = v11;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_1B496F544(&v15);
    v39 = v21;
    v40 = v22;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    v38 = v20;
    v33 = v15;
    v34 = v16;
    v30 = v21;
    v31 = v22;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v41 = v23;
    v32 = v23;
    v24 = v15;
    v25 = v16;
    sub_1B4975024(&v24, &qword_1EB8A79B8, &qword_1B4D1F320);
    return 0;
  }

  return v3;
}

uint64_t sub_1B49E72B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79A8, &unk_1B4D1F310);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A79B0, &qword_1B4D20FC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v23 - v12;
  v13 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF2DC(0, v13, 0);
  v14 = v28;
  if (v13)
  {
    v15 = a1 + 32;
    v24 = v7;
    v25 = (v7 + 56);
    v16 = &qword_1EB8A79B0;
    while (1)
    {
      sub_1B497558C(v15, v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v6;
      (*v25)(v5, 0, 1, v6);
      v18 = v26;
      sub_1B498B270(v5, v26, v16, &qword_1B4D20FC0);
      sub_1B498B270(v18, v10, v16, &qword_1B4D20FC0);
      v28 = v14;
      v19 = v16;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B4BCF2DC(v20 > 1, v21 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v21 + 1;
      sub_1B498B270(v10, v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, v19, &qword_1B4D20FC0);
      v15 += 40;
      --v13;
      v6 = v17;
      v16 = v19;
      if (!v13)
      {
        return v14;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_1B4975024(v5, &qword_1EB8A79A8, &unk_1B4D1F310);
    return 0;
  }

  return v14;
}

uint64_t sub_1B49E7598(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF39C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7960, &qword_1B4D409B0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B4BCF39C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B49E7758(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  a2(0, v8, 0);
  v9 = v17;
  if (v8)
  {
    v14 = a2;
    for (i = a1 + 32; ; i += 40)
    {
      sub_1B497558C(i, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7940, &qword_1B4D33720);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v17 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        v14(v11 > 1, v12 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v15;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

HKQuantityType_optional __swiftcall WorkoutRepresentable.distanceQuantityType()()
{
  v1 = (*(v0 + 56))();
  v2 = [v1 effectiveTypeIdentifier];

  v4 = 0;
  if (v2 <= 34)
  {
    if (v2 == 13)
    {
      v5 = MEMORY[0x1E696BCC8];
      goto LABEL_10;
    }

    if (v2 != 24)
    {
      goto LABEL_11;
    }

LABEL_8:
    v5 = MEMORY[0x1E696BCF8];
    goto LABEL_10;
  }

  if (v2 == 52 || v2 == 37)
  {
    goto LABEL_8;
  }

  if (v2 == 35)
  {
    v5 = MEMORY[0x1E696BCE0];
LABEL_10:
    sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
    v4 = MEMORY[0x1B8C7CB40](*v5);
  }

LABEL_11:
  result.value.super.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t WorkoutRepresentable.cacheIndex.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 80))(a1, a2, v9);
  v12 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4D1796C();
  __swift_project_value_buffer(v13, qword_1EDC3CE48);
  v14 = sub_1B4D178CC();
  v15 = _HKCacheIndexFromDate();

  result = (*(v7 + 8))(v11, v6);
  *a3 = v15;
  return result;
}

uint64_t WorkoutRepresentable.averageHeartRate()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v11 = *(v10 - 1);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  (*(a2 + 168))(a1, a2);
  if ((v11[6])(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6CC8, &unk_1B4D464B0);
    sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
    v15 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BD30]);
    v16 = (*(a2 + 264))(v15, a1, a2);

    v17 = sub_1B49E6974(v16);

    if (v17)
    {
      if (v17 >> 62)
      {
        goto LABEL_20;
      }

      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18;
      if (v18)
      {
        while (1)
        {
          v35 = a3;
          v36 = v19;
          v33 = v11;
          v34 = v10;
          v20 = 0;
          v21 = 0.0;
          v11 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
          while (1)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x1B8C7CD90](v20, v17);
            }

            else
            {
              if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v22 = *(v17 + 8 * v20 + 32);
            }

            v23 = v22;
            a3 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            v24 = [v22 quantity];
            v10 = [objc_opt_self() _countPerMinuteUnit];
            [v24 doubleValueForUnit_];
            v26 = v25;

            v21 = v21 + v26;
            ++v20;
            if (a3 == v18)
            {
              v10 = v34;
              a3 = v35;
              v11 = v33;
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v31 = sub_1B4D18ABC();
          if (v31 < 1)
          {
            break;
          }

          v19 = v31;
          v32 = sub_1B4D18ABC();
          if (!v32)
          {
            v36 = v19;
LABEL_14:

            if (qword_1EDC36DD8 != -1)
            {
              swift_once();
            }

            v28 = qword_1EDC36DE0;
            sub_1B498AFB8(0, &qword_1EDC378B8, 0x1E696B038);
            v29 = v28;
            sub_1B4D1741C();
            return (v11[7])(a3, 0, 1, v10);
          }

          v18 = v32;
        }
      }
    }

    return (v11[7])(a3, 1, 1, v10);
  }

  else
  {
    v27 = v11[4];
    v27(v14, v9, v10);
    v27(a3, v14, v10);
    return (v11[7])(a3, 0, 1, v10);
  }
}

uint64_t WorkoutRepresentable.distance()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  (*(a2 + 120))(a1, a2);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_7:
    v23 = 1;
    return (*(v11 + 56))(a3, v23, 1, v10);
  }

  v18 = [objc_opt_self() meters];
  sub_1B4D1745C();

  v19 = *(v11 + 8);
  v19(v9, v10);
  v20 = *(v11 + 32);
  v20(v17, v15, v10);
  sub_1B4D1742C();
  if ((v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (sub_1B4D1742C(), v22 <= 0.0))
  {
    v19(v17, v10);
    goto LABEL_7;
  }

  v20(a3, v17, v10);
  v23 = 0;
  return (*(v11 + 56))(a3, v23, 1, v10);
}

uint64_t WorkoutRepresentable.pace()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(a2 + 128))(a1, a2);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
LABEL_6:
    v17 = 1;
    return (*(v11 + 56))(a3, v17, 1, v10);
  }

  v15 = *(v11 + 32);
  v15(v14, v9, v10);
  sub_1B4D1742C();
  if (v16 <= 0.0)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  v15(a3, v14, v10);
  v17 = 0;
  return (*(v11 + 56))(a3, v17, 1, v10);
}

uint64_t WorkoutRepresentable.elevationGain()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(a2 + 144))(a1, a2);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6CC0, &unk_1B4D1BC00);
LABEL_6:
    v17 = 1;
    return (*(v11 + 56))(a3, v17, 1, v10);
  }

  v15 = *(v11 + 32);
  v15(v14, v9, v10);
  sub_1B4D1742C();
  if (v16 <= 0.0)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  v15(a3, v14, v10);
  v17 = 0;
  return (*(v11 + 56))(a3, v17, 1, v10);
}

uint64_t WorkoutRepresentable.depth()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B498AFB8(0, &qword_1EDC36DE8, 0x1E696C370);
  v6 = MEMORY[0x1B8C7CB40](*MEMORY[0x1E696BDE8]);
  v7 = (*(a2 + 264))(v6, a1, a2);

  v8 = sub_1B49E6974(v7);

  if (v8)
  {
    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v24 = a3;
        v10 = 0;
        v11 = 0.0;
        a3 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1B8C7CD90](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_15;
            }

            v12 = *(v8 + 8 * v10 + 32);
          }

          v13 = v12;
          v14 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v15 = [v12 quantity];
          v16 = [objc_opt_self() meterUnit];
          [v15 doubleValueForUnit_];
          v18 = v17;

          if (v11 <= v18)
          {
            v11 = v18;
          }

          ++v10;
          if (v14 == v9)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        if (sub_1B4D18ABC() < 1)
        {
          break;
        }

        v9 = sub_1B4D18ABC();
        if (!v9)
        {
          v24 = a3;
LABEL_19:

          v19 = [objc_opt_self() meters];
          sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
          a3 = v24;
          sub_1B4D1741C();
          v20 = 0;
          goto LABEL_22;
        }
      }
    }
  }

  v20 = 1;
LABEL_22:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v22 = *(*(v21 - 8) + 56);

  return v22(a3, v20, 1, v21);
}

uint64_t WorkoutRepresentable.calories()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(a2 + 152))(a1, a2);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
LABEL_6:
    v17 = 1;
    return (*(v11 + 56))(a3, v17, 1, v10);
  }

  v15 = *(v11 + 32);
  v15(v14, v9, v10);
  sub_1B4D1742C();
  if (v16 <= 0.0)
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  v15(a3, v14, v10);
  v17 = 0;
  return (*(v11 + 56))(a3, v17, 1, v10);
}

uint64_t WorkoutRepresentable.duration()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  (*(a2 + 96))(a1, a2);
  v11 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  sub_1B4D1742C();
  if (v12 <= 0.0)
  {
    (*(v7 + 8))(v10, v6);
    v13 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, v10, v6);
    v13 = 0;
  }

  return (*(v7 + 56))(a3, v13, 1, v6);
}

uint64_t WorkoutRepresentable.weatherTemperature()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7930, &unk_1B4D1F280);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB8, &unk_1B4D1F0C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for WeatherCondition();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 112))(a1, a2);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = &qword_1EB8A6CB8;
    v20 = &unk_1B4D1F0C0;
    v21 = v13;
LABEL_5:
    sub_1B4975024(v21, v19, v20);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  sub_1B49EE5A8(v13, v18, type metadata accessor for WeatherCondition);
  sub_1B498B270(v18, v9, &qword_1EB8A7930, &unk_1B4D1F280);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7470, &qword_1B4D1F290);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {
    v19 = &qword_1EB8A7930;
    v20 = &unk_1B4D1F280;
    v21 = v9;
    goto LABEL_5;
  }

  (*(v23 + 32))(a3, v9, v22);
  return (*(v23 + 56))(a3, 0, 1, v22);
}

HKQuantity_optional __swiftcall WorkoutRepresentable.estimatedEffort()()
{
  v1 = (*(v0 + 224))();
  v2 = *MEMORY[0x1E696C760];
  v3 = sub_1B4D1818C();
  if (!*(v1 + 16))
  {

    goto LABEL_7;
  }

  v5 = sub_1B49E9EC4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:

    v9 = 0;
    goto LABEL_8;
  }

  sub_1B4955D64(*(v1 + 56) + 32 * v5, v11);

  sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
  if (swift_dynamicCast())
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

LABEL_8:
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

void sub_1B49E8FF0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v90 = a1;
  v7 = sub_1B4D174EC();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v83 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v83 - v20;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v22 = *(v94 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v83 - v24;
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v25 = [objc_opt_self() miles];
  v87 = a3;
  v26 = sub_1B4D187AC();

  v27 = objc_opt_self();
  if (v26)
  {
    v28 = [v27 mileUnit];
  }

  else
  {
    v28 = [v27 meterUnitWithMetricPrefix_];
  }

  v98 = v28;
  v29 = [a2 fi_splitDistance];
  if (v29)
  {
    v30 = v22;
    v85 = v18;
    v31 = v29;
    [v29 doubleValueForUnit_];

    [a2 fi_splitPaceInMetersPerSecond];
    v32 = [a2 metadata];
    v96 = v21;
    v86 = v17;
    if (v32)
    {
      v33 = v32;
      v34 = sub_1B4D17FBC();

      v35 = *MEMORY[0x1E699C990];
      v36 = sub_1B4D1818C();
      if (*(v34 + 16))
      {
        v83 = v22;
        v38 = sub_1B49E9EC4(v36, v37);
        v40 = v39;

        if (v40)
        {
          sub_1B4955D64(*(v34 + 56) + 32 * v38, v100);

          sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
          if (swift_dynamicCast())
          {
            v41 = v99;
          }

          else
          {
            v41 = 0;
          }

          v30 = v83;
        }

        else
        {

          v41 = 0;
          v30 = v83;
        }
      }

      else
      {

        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    v44 = [a2 metadata];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1B4D17FBC();

      v47 = *MEMORY[0x1E699C980];
      v48 = sub_1B4D1818C();
      if (*(v46 + 16))
      {
        v83 = v30;
        v50 = sub_1B49E9EC4(v48, v49);
        v52 = v51;

        if (v52)
        {
          sub_1B4955D64(*(v46 + 56) + 32 * v50, v100);

          sub_1B498AFB8(0, &qword_1EDC36DB0, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v53 = v99;
            v84 = [v99 BOOLValue];

            v30 = v83;
LABEL_27:
            v54 = v87;
            sub_1B4D1741C();
            if (qword_1EDC36E80 != -1)
            {
              swift_once();
            }

            v55 = qword_1EDC36E88;
            type metadata accessor for UnitPace();
            v56 = v55;
            sub_1B4D1741C();
            if (v41)
            {
              v57 = objc_opt_self();
              v58 = v41;
              v59 = [v57 wattUnit];
              [v58 doubleValueForUnit_];

              v60 = [objc_opt_self() watts];
              sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
              v61 = v88;
              sub_1B4D1741C();
              v87 = v58;

              v62 = 0;
            }

            else
            {
              v87 = 0;
              v62 = 1;
              v61 = v88;
            }

            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
            (*(*(v63 - 8) + 56))(v61, v62, 1, v63);
            v64 = v95;
            sub_1B498B270(v61, v95, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
            v65 = [a2 dateInterval];
            v66 = v89;
            sub_1B4D174AC();

            v67 = type metadata accessor for WorkoutSplit();
            v68 = &a4[v67[5]];
            sub_1B4D174DC();
            v69 = *(v92 + 8);
            v70 = v66;
            v71 = v93;
            v69(v70, v93);
            v72 = [a2 dateInterval];
            v73 = v91;
            sub_1B4D174AC();

            v74 = &a4[v67[6]];
            sub_1B4D174BC();
            v69(v73, v71);
            [a2 fi_splitActiveDuration];
            v75 = [objc_opt_self() seconds];
            v76 = v67[7];
            sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
            sub_1B4D1741C();
            v77 = a2;
            v78 = v97;
            v79 = v94;
            (*(v30 + 16))(&a4[v67[8]], v97, v94);
            v81 = v85;
            v80 = v86;
            v82 = v96;
            (*(v85 + 16))(&a4[v67[9]], v96, v86);
            sub_1B49E5394(v64, &a4[v67[10]]);
            LOBYTE(v77) = [v77 fi_isCustomSplitEvent];

            sub_1B4975024(v64, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
            (*(v81 + 8))(v82, v80);
            (*(v30 + 8))(v78, v79);
            *a4 = v90;
            a4[v67[11]] = v84;
            a4[v67[12]] = v77;
            (*(*(v67 - 1) + 56))(a4, 0, 1, v67);
            return;
          }
        }

        else
        {
        }

        v30 = v83;
      }

      else
      {
      }
    }

    v84 = 0;
    goto LABEL_27;
  }

  v42 = type metadata accessor for WorkoutSplit();
  (*(*(v42 - 8) + 56))(a4, 1, 1, v42);
  v43 = v98;
}

uint64_t sub_1B49E9A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B4D1777C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v2 + *(a1 + 36), v5, v8);
  v11 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v12 = sub_1B4D1796C();
  __swift_project_value_buffer(v12, qword_1EDC3CE48);
  v13 = sub_1B4D178CC();
  v14 = _HKCacheIndexFromDate();

  result = (*(v6 + 8))(v10, v5);
  *a2 = v14;
  return result;
}

unint64_t sub_1B49E9B90(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = sub_1B4D1807C();

  return sub_1B49EABC8(a1, v5);
}

unint64_t sub_1B49E9C38(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](a1);
  v4 = sub_1B4D18EDC();

  return sub_1B49EAD8C(a1, v4);
}

unint64_t sub_1B49E9CA4(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = *(v1 + 40);
  sub_1B4D18E8C();
  v11[7] = a1;
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D1808C();
  (*(v4 + 8))(v7, v3);
  v9 = sub_1B4D18EDC();
  return sub_1B49EADF8(a1, v9);
}

unint64_t sub_1B49E9DFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B4D1879C();
  return sub_1B49EB8C0(a1, v5, &qword_1EDC36DC8, 0x1E699C9F0);
}

unint64_t sub_1B49E9E4C(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B4D18E8C();
  v5 = a1;
  sub_1B4D187BC();

  v6 = sub_1B4D18EDC();

  return sub_1B49EAFF0(v5, v6);
}

unint64_t sub_1B49E9EC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();
  v6 = sub_1B4D18EDC();

  return sub_1B49EB1C4(a1, a2, v6);
}

unint64_t sub_1B49E9F3C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  v4 = *(a1 + 16);
  MEMORY[0x1B8C7D290](v4);
  if (v4)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1B4D1820C();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v8 = sub_1B4D18EDC();

  return sub_1B49EB27C(a1, v8);
}

unint64_t sub_1B49E9FEC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  FitnessContextQueryDescriptor.hash(into:)(v6);
  v4 = sub_1B4D18EDC();

  return sub_1B49EB38C(a1, v4);
}

unint64_t sub_1B49EA058(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](a1);
  v4 = sub_1B4D18EDC();
  return sub_1B49EAD8C(a1, v4);
}

unint64_t sub_1B49EA0C0(char a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v4 = sub_1B4D18EDC();

  return sub_1B49EB4C4(a1, v4);
}

unint64_t sub_1B49EA180(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v4 = sub_1B4D18EDC();

  return sub_1B49EB640(a1, v4);
}

unint64_t sub_1B49EA2CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B4D1879C();
  return sub_1B49EB8C0(a1, v5, &qword_1EB8A7938, 0x1E696C3D0);
}

unint64_t sub_1B49EA31C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v5 = sub_1B4D18EDC();

  return sub_1B49EB98C(a1 & 1, v5);
}

unint64_t sub_1B49EA3C0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v4 = sub_1B4D18EDC();

  return sub_1B49EBAD0(a1, v4);
}

unint64_t sub_1B49EA4A8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](a1);
  v4 = sub_1B4D18EDC();

  return sub_1B49EBC88(a1, v4);
}

unint64_t sub_1B49EA514(uint64_t a1)
{
  v3 = *(v1 + 40);
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  sub_1B4D18E8C();
  WorkoutPropertyDimensions.hash(into:)();
  v4 = sub_1B4D18EDC();

  return sub_1B49EBCF8(a1, v4);
}

unint64_t sub_1B49EA598(int a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  RingsPropertyDimensions.hash(into:)();
  v4 = sub_1B4D18EDC();

  return sub_1B49EBE24(a1 & 0xFFFFFF, v4);
}

unint64_t sub_1B49EA618(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  type metadata accessor for CFString(0);
  sub_1B49EEF98();
  sub_1B4D17A1C();
  v4 = sub_1B4D18EDC();

  return sub_1B49EC4A8(a1, v4);
}

unint64_t sub_1B49EA69C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v4 = sub_1B4D18EDC();

  return sub_1B49EC584(a1, v4);
}

unint64_t sub_1B49EA7A0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v4 = sub_1B4D18EDC();

  return sub_1B49EC73C(a1, v4);
}

unint64_t sub_1B49EA874(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v5 = sub_1B4D18EDC();

  return sub_1B49EC8F0(a1 & 1, v5);
}

unint64_t sub_1B49EA90C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v5 = sub_1B4D18EDC();

  return sub_1B49ECA14(a1 & 1, v5);
}

unint64_t sub_1B49EA9AC(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v5 = sub_1B4D18EDC();

  return sub_1B49ECB48(a1 & 1, v5);
}

unint64_t sub_1B49EAA50(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v5 = sub_1B4D18EDC();
  return sub_1B49ECE2C(a1 & 1, v5);
}

unint64_t sub_1B49EAAF0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B4D18E8C();
  sub_1B4D1820C();

  v4 = sub_1B4D18EDC();

  return sub_1B49ECC90(a1, v4);
}

unint64_t sub_1B49EABC8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - v8;
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
      v17 = sub_1B4D1816C();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1B49EAD8C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B49EADF8(int a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = -1 << *(v3 + 32);
  v14 = a2 & ~v13;
  if ((*(v3 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = (v10 + 8);
    do
    {
      v23 = *(*(v3 + 48) + v14);
      v22 = v21;
      DistanceReference.rawValue.getter();
      DistanceReference.rawValue.getter();
      sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
      v17 = sub_1B4D1816C();
      v18 = *v16;
      (*v16)(v8, v5);
      v18(v12, v5);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v3 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1B49EAFF0(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = 0x1E6985000uLL;
    do
    {
      v12 = *(*(v6 + 48) + 8 * v5);
      v13 = *(v9 + 3136);
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14 && (v15 = v14, v16 = *(v9 + 3136), objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
      {
        v18 = v17;
        v19 = v3;
        v20 = v8;
        v21 = v9;
        v22 = v12;
        v23 = a1;
        [v15 coordinate];
        v25 = v24;
        [v18 coordinate];
        if (v25 == v26)
        {
          [v15 coordinate];
          v28 = v27;
          [v18 coordinate];
          v30 = v29;

          v9 = v21;
          v8 = v20;
          v3 = v19;
          v6 = v32;
          if (v28 == v30)
          {
            return v5;
          }
        }

        else
        {

          v9 = v21;
          v8 = v20;
          v3 = v19;
          v6 = v32;
        }
      }

      else
      {
        sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
        v10 = v12;
        v11 = sub_1B4D187AC();

        if (v11)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B4D18DCC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EB27C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1B4D18DCC() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EB38C(uint64_t a1, uint64_t a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v6 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1B49EEFF0(*(v2 + 48) + v13 * v11, v9);
      DescriptorO2eeoiySbAC_ACtFZ_0 = _s19FitnessIntelligence0A22ContextQueryDescriptorO2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_1B49EF054(v9);
      if (DescriptorO2eeoiySbAC_ACtFZ_0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1B49EB4C4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    while (1)
    {
      v5 = 0xD00000000000001ALL;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "thisWeekProperties";
      }

      else
      {
        v5 = 0xD000000000000012;
        v6 = "thisTimeLastWeekProperties";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000012;
      v8 = *(*(v2 + 48) + v4) ? v6 : "last_week_total_distance>.";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD00000000000001ALL : 0xD000000000000012;
        v10 = a1 == 1 ? "thisWeekProperties" : "thisTimeLastWeekProperties";
      }

      else
      {
        v9 = 0xD000000000000012;
        v10 = "last_week_total_distance>.";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49EB640(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x44676E6974696177;
          v9 = 0xEF6E6F6974617275;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x7275446C61746F74;
          }

          else
          {
            v8 = 0x746E656D6F6DLL;
          }

          if (v7 == 4)
          {
            v9 = 0xED00006E6F697461;
          }

          else
          {
            v9 = 0xE600000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x687370616E537369;
        }

        else
        {
          v8 = 0xD000000000000012;
        }

        if (v7 == 1)
        {
          v9 = 0xEF7972657551746FLL;
        }

        else
        {
          v9 = 0x80000001B4D4E5A0;
        }
      }

      else
      {
        v9 = 0xE500000000000000;
        v8 = 0x7972657571;
      }

      v10 = 0x7275446C61746F74;
      if (v6 != 4)
      {
        v10 = 0x746E656D6F6DLL;
      }

      v11 = 0xED00006E6F697461;
      if (v6 != 4)
      {
        v11 = 0xE600000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x44676E6974696177;
        v11 = 0xEF6E6F6974617275;
      }

      v12 = 0xD000000000000012;
      if (v6 == 1)
      {
        v12 = 0x687370616E537369;
      }

      v13 = 0xEF7972657551746FLL;
      if (v6 != 1)
      {
        v13 = 0x80000001B4D4E5A0;
      }

      if (!v6)
      {
        v12 = 0x7972657571;
        v13 = 0xE500000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_1B4D18DCC();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49EB8C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1B498AFB8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1B4D187AC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1B49EB98C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v13 = ~v3;
    if (a1)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (a1)
    {
      v6 = "lastSixWeeksWorkoutProperties";
    }

    else
    {
      v6 = " work done today!'";
    }

    v7 = v6 | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0xD000000000000019 : 0xD00000000000001DLL;
      v9 = *(*(v2 + 48) + v4) ? "lastSixWeeksWorkoutProperties" : " work done today!'";
      if (v8 == v5 && (v9 | 0x8000000000000000) == v7)
      {
        break;
      }

      v11 = sub_1B4D18DCC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v13;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49EBAD0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        v8 = *(*(v2 + 48) + v4) ? 1801807223 : 7954788;
        v9 = *(*(v2 + 48) + v4) ? 0xE400000000000000 : 0xE300000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE500000000000000;
        v8 = 0x68746E6F6DLL;
      }

      else
      {
        v8 = v7 == 3 ? 1918985593 : 1919252069;
        v9 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1918985593;
      }

      else
      {
        v10 = 1919252069;
      }

      v11 = 0xE400000000000000;
      if (v6 == 2)
      {
        v10 = 0x68746E6F6DLL;
        v11 = 0xE500000000000000;
      }

      v12 = v6 ? 1801807223 : 7954788;
      v13 = v6 ? 0xE400000000000000 : 0xE300000000000000;
      v14 = v6 <= 1 ? v12 : v10;
      v15 = v6 <= 1 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_1B4D18DCC();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49EBC88(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B49EBCF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v3;
  v23[2] = *(a1 + 32);
  v24 = *(a1 + 48);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 56 * v5;
      v9 = *(v7 + 16);
      v8 = *(v7 + 32);
      v10 = *(v7 + 48);
      v19[0] = *v7;
      v20 = v10;
      v19[1] = v9;
      v19[2] = v8;
      v11 = *(v7 + 16);
      v15 = *v7;
      v16 = v11;
      v17 = *(v7 + 32);
      v18 = *(v7 + 48);
      sub_1B498B0D4(v19, v14);
      v12 = _s19FitnessIntelligence25WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v15, v23);
      v21[0] = v15;
      v21[1] = v16;
      v21[2] = v17;
      v22 = v18;
      sub_1B498AD54(v21);
      if (v12)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B49EBE24(int a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = BYTE1(a1);
    v7 = ~v3;
    v41 = a1 & 0xFF0000;
    v42 = BYTE1(a1);
    do
    {
      v8 = (*(v2 + 48) + 3 * v4);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      if (v9 == 12)
      {
        if (v5 != 12)
        {
          goto LABEL_4;
        }

LABEL_7:
        if (v10 == 7)
        {
          goto LABEL_8;
        }

        goto LABEL_83;
      }

      if (v5 == 12)
      {
        goto LABEL_4;
      }

      if (*v8 > 5u)
      {
        if (*v8 > 8u)
        {
          if (v9 == 9)
          {
            v12 = 0xE700000000000000;
            v13 = 0x7265626F74636FLL;
            if (v5 > 5)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v12 = 0xE800000000000000;
            if (v9 == 10)
            {
              v14 = 1702260590;
            }

            else
            {
              v14 = 1701012836;
            }

            v13 = v14 | 0x7265626D00000000;
            if (v5 > 5)
            {
LABEL_37:
              v15 = 0x7265626D65766F6ELL;
              if (v5 != 10)
              {
                v15 = 0x7265626D65636564;
              }

              v16 = 0xE800000000000000;
              if (v5 == 9)
              {
                v15 = 0x7265626F74636FLL;
                v16 = 0xE700000000000000;
              }

              v17 = 0x65626D6574706573;
              if (v5 == 7)
              {
                v17 = 0x747375677561;
              }

              v18 = 0xE900000000000072;
              if (v5 == 7)
              {
                v18 = 0xE600000000000000;
              }

              if (v5 == 6)
              {
                v17 = 2037151082;
                v18 = 0xE400000000000000;
              }

              if (v5 <= 8)
              {
                v19 = v17;
              }

              else
              {
                v19 = v15;
              }

              if (v5 <= 8)
              {
                v20 = v18;
              }

              else
              {
                v20 = v16;
              }

              if (v13 != v19)
              {
LABEL_110:
                v31 = sub_1B4D18DCC();

                v6 = v42;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_4;
                }

                goto LABEL_7;
              }

              goto LABEL_81;
            }
          }
        }

        else if (v9 == 6)
        {
          v12 = 0xE400000000000000;
          v13 = 2037151082;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else if (v9 == 7)
        {
          v12 = 0xE600000000000000;
          v13 = 0x747375677561;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v13 = 0x65626D6574706573;
          v12 = 0xE900000000000072;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }
      }

      else if (*v8 > 2u)
      {
        if (v9 == 3)
        {
          v12 = 0xE500000000000000;
          v13 = 0x6C69727061;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else if (v9 == 4)
        {
          v12 = 0xE300000000000000;
          v13 = 7954797;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v12 = 0xE400000000000000;
          v13 = 1701737834;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }
      }

      else if (*v8)
      {
        if (v9 == 1)
        {
          v12 = 0xE800000000000000;
          v13 = 0x7972617572626566;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v12 = 0xE500000000000000;
          v13 = 0x686372616DLL;
          if (v5 > 5)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        v13 = 0x797261756E616ALL;
        if (v5 > 5)
        {
          goto LABEL_37;
        }
      }

      if (v5 > 2)
      {
        v25 = 1701737834;
        if (v5 == 4)
        {
          v25 = 7954797;
        }

        v24 = 0xE300000000000000;
        if (v5 != 4)
        {
          v24 = 0xE400000000000000;
        }

        v21 = v5 == 3;
        if (v5 == 3)
        {
          v22 = 0x6C69727061;
        }

        else
        {
          v22 = v25;
        }

        v23 = 0xE500000000000000;
      }

      else
      {
        if (!v5)
        {
          v20 = 0xE700000000000000;
          if (v13 != 0x797261756E616ALL)
          {
            goto LABEL_110;
          }

          goto LABEL_81;
        }

        v21 = v5 == 1;
        if (v5 == 1)
        {
          v22 = 0x7972617572626566;
        }

        else
        {
          v22 = 0x686372616DLL;
        }

        v23 = 0xE800000000000000;
        v24 = 0xE500000000000000;
      }

      if (v21)
      {
        v20 = v23;
      }

      else
      {
        v20 = v24;
      }

      if (v13 != v22)
      {
        goto LABEL_110;
      }

LABEL_81:
      if (v12 != v20)
      {
        goto LABEL_110;
      }

      v6 = v42;
      if (v10 == 7)
      {
LABEL_8:
        if (v6 != 7)
        {
          goto LABEL_4;
        }

        goto LABEL_9;
      }

LABEL_83:
      if (v6 == 7)
      {
        goto LABEL_4;
      }

      if (v10 <= 2)
      {
        if (!v10)
        {
          v26 = 0xE600000000000000;
          v32 = 1684959085;
LABEL_116:
          v28 = v32 & 0xFFFF0000FFFFFFFFLL | 0x796100000000;
          if (v6 <= 2)
          {
            goto LABEL_96;
          }

          goto LABEL_117;
        }

        if (v10 == 1)
        {
          v28 = 0x79616473657574;
        }

        else
        {
          v28 = 0x616473656E646577;
        }

        if (v10 == 1)
        {
          v26 = 0xE700000000000000;
        }

        else
        {
          v26 = 0xE900000000000079;
        }

        if (v6 <= 2)
        {
LABEL_96:
          if (v6)
          {
            if (v6 == 1)
            {
              v29 = 0x79616473657574;
            }

            else
            {
              v29 = 0x616473656E646577;
            }

            if (v6 == 1)
            {
              v30 = 0xE700000000000000;
            }

            else
            {
              v30 = 0xE900000000000079;
            }

            if (v28 == v29)
            {
              goto LABEL_131;
            }
          }

          else
          {
            v30 = 0xE600000000000000;
            if (v28 == 0x7961646E6F6DLL)
            {
              goto LABEL_131;
            }
          }

          goto LABEL_136;
        }
      }

      else
      {
        if (v10 <= 4)
        {
          if (v10 == 3)
          {
            v26 = 0xE800000000000000;
            v27 = 0x647372756874;
            goto LABEL_107;
          }

          v26 = 0xE600000000000000;
          v32 = 1684632166;
          goto LABEL_116;
        }

        if (v10 == 5)
        {
          v26 = 0xE800000000000000;
          v27 = 0x647275746173;
LABEL_107:
          v28 = v27 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
          if (v6 <= 2)
          {
            goto LABEL_96;
          }

          goto LABEL_117;
        }

        v28 = 0x7961646E7573;
        v26 = 0xE600000000000000;
        if (v6 <= 2)
        {
          goto LABEL_96;
        }
      }

LABEL_117:
      v33 = 0x7961646E7573;
      if (v6 == 5)
      {
        v33 = 0x7961647275746173;
      }

      v34 = 0xE800000000000000;
      if (v6 == 5)
      {
        v35 = 0xE800000000000000;
      }

      else
      {
        v35 = 0xE600000000000000;
      }

      v36 = 0x7961647372756874;
      if (v6 != 3)
      {
        v36 = 0x796164697266;
        v34 = 0xE600000000000000;
      }

      if (v6 <= 4)
      {
        v37 = v36;
      }

      else
      {
        v37 = v33;
      }

      if (v6 <= 4)
      {
        v30 = v34;
      }

      else
      {
        v30 = v35;
      }

      if (v28 == v37)
      {
LABEL_131:
        if (v26 == v30)
        {

          v6 = v42;
          if (v11 == 2)
          {
LABEL_3:
            if (v41 == 0x20000)
            {
              return v4;
            }

            goto LABEL_4;
          }

          goto LABEL_133;
        }
      }

LABEL_136:
      v38 = sub_1B4D18DCC();

      v6 = v42;
      if ((v38 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      if (v11 == 2)
      {
        goto LABEL_3;
      }

LABEL_133:
      if (v41 != 0x20000 && ((v11 ^ ((a1 & 0x10000u) >> 16)) & 1) == 0)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v7;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B49EC4A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B49EEF98();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B4D17A0C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B49EC584(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = 0xD00000000000001DLL;
      v8 = v6 == 2 ? 0xD00000000000001DLL : 0xD000000000000019;
      v9 = v6 == 2 ? 0x80000001B4D4AAF0 : 0x80000001B4D4AB10;
      v10 = *(*(v23 + 48) + v4) ? 0xD000000000000016 : 0x6665725072657375;
      v11 = *(*(v23 + 48) + v4) ? 0x80000001B4D4BF20 : 0xEF7365636E657265;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v14 = 0x80000001B4D4AAF0;
      }

      else
      {
        v7 = 0xD000000000000019;
        v14 = 0x80000001B4D4AB10;
      }

      v15 = v5 ? 0xD000000000000016 : 0x6665725072657375;
      v16 = v5 ? 0x80000001B4D4BF20 : 0xEF7365636E657265;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_1B4D18DCC();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49EC73C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000001B4D4AE90;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xD00000000000001ALL;
          v8 = 0x80000001B4D4AEB0;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xED0000747865746ELL;
            if (v7 != 0x6F43736472617761)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0x6F43736472617761;
        v8 = 0xED0000747865746ELL;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000019;
      }

      else
      {
        v10 = 0xD00000000000001ALL;
      }

      if (v9 == 1)
      {
        v11 = 0x80000001B4D4AE90;
      }

      else
      {
        v11 = 0x80000001B4D4AEB0;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1B4D18DCC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49EC8F0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = "activitySummaryContext";
    }

    else
    {
      v6 = "ringsPropertiesAllTime";
    }

    v7 = (v6 - 32) | 0x8000000000000000;
    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? "activitySummaryContext" : "ringsPropertiesAllTime";
      if (((v8 - 32) | 0x8000000000000000) == v7)
      {
        break;
      }

      v9 = sub_1B4D18DCC();

      if ((v9 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B49ECA14(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000017;
    }

    if (a1)
    {
      v7 = "s <ring_percentage>.";
    }

    else
    {
      v7 = "on";
    }

    v8 = v7 | 0x8000000000000000;
    while (1)
    {
      v9 = *(*(v2 + 48) + v4) ? 0xD000000000000016 : 0xD000000000000017;
      v10 = *(*(v2 + 48) + v4) ? "s <ring_percentage>." : "on";
      if (v9 == v6 && (v10 | 0x8000000000000000) == v8)
      {
        break;
      }

      v12 = sub_1B4D18DCC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}