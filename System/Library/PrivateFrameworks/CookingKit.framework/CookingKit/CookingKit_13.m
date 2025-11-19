uint64_t sub_21A27201C()
{
  v1 = sub_21A176C98(&qword_27CCFFF78);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v31 = (&v31 - v4);
  v5 = sub_21A176C98(&qword_27CD03BB0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v31 - v11);
  v13 = *(v0 + *(type metadata accessor for Recipe() + 72));
  v32 = (v2 + 48);
  v33 = (v2 + 56);
  v34 = v13;
  result = sub_21A2F5434();
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = *(v34 + 16);
    if (v15 == v17)
    {
      v18 = 1;
      goto LABEL_6;
    }

    if (v15 >= v17)
    {
      break;
    }

    v19 = *(type metadata accessor for StepSection() - 8);
    v20 = v34 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15;
    v21 = *(v1 + 48);
    v22 = v31;
    *v31 = v15;
    sub_21A27C898(v20, v22 + v21, type metadata accessor for StepSection);
    sub_21A149B18(v22, v9, &qword_27CCFFF78);
    v18 = 0;
    ++v15;
LABEL_6:
    (*v33)(v9, v18, 1, v1);
    sub_21A149B18(v9, v12, &qword_27CD03BB0);
    if ((*v32)(v12, 1, v1) == 1)
    {

      return v16;
    }

    v23 = *v12;
    v24 = v12 + *(v1 + 48);
    v25 = *(v24 + *(type metadata accessor for StepSection() + 24));
    sub_21A2F5434();
    sub_21A27D2A8(v24, type metadata accessor for StepSection);
    v26 = *(v25 + 16);

    if (v26)
    {
      for (i = 0; i != v26; ++i)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21A1B7460(0, *(v16 + 16) + 1, 1, v16);
          v16 = result;
        }

        v29 = *(v16 + 16);
        v28 = *(v16 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_21A1B7460((v28 > 1), v29 + 1, 1, v16);
          v16 = result;
        }

        v30 = (v16 + 24 * v29);
        v30[4] = v23;
        v30[5] = i;
        *(v16 + 16) = v29 + 1;
        v30[6] = 0;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A272398@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v20[1] = a2;
  v21 = a1;
  v7 = sub_21A2F4794();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21A176C98(&qword_27CCFEA80);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v20 - v14;
  sub_21A183960(v5, v20 - v14, &qword_27CCFEA80);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v17 = a3;
LABEL_5:
    v18 = type metadata accessor for ImageAsset(0);
    return (*(*(v18 - 8) + 56))(v17, v16, 1, v18);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = a3;
  v21(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

uint64_t static Recipe.ID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A2F8394();
  }
}

size_t sub_21A272600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v219 = a3;
  v5 = sub_21A176C98(&qword_27CD03280);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v237 = &v206 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v226 = &v206 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v236 = &v206 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v225 = &v206 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v235 = &v206 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v224 = &v206 - v22;
  v23 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v241 = &v206 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v240 = &v206 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v239 = &v206 - v31;
  v32 = sub_21A176C98(&qword_27CCFF040);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v238 = (&v206 - v34);
  v35 = sub_21A2F4EF4();
  v233 = *(v35 - 8);
  v234 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v209 = &v206 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21A176C98(&qword_27CD03BC0);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v231 = &v206 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v232 = &v206 - v43;
  v44 = sub_21A2F4E64();
  v229 = *(v44 - 8);
  v230 = v44;
  MEMORY[0x28223BE20](v44, v45);
  v208 = &v206 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21A2F4794();
  v246 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v48);
  v210 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v245 = (&v206 - v52);
  v53 = type metadata accessor for ImageAsset(0);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v206 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21A176C98(&qword_27CD03BC8);
  MEMORY[0x28223BE20](v58 - 8, v59);
  v227 = &v206 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v62);
  v228 = &v206 - v63;
  v64 = sub_21A176C98(&qword_27CCFEA80);
  MEMORY[0x28223BE20](v64 - 8, v65);
  v222 = &v206 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67, v68);
  v223 = &v206 - v69;
  MEMORY[0x28223BE20](v70, v71);
  v243 = &v206 - v72;
  MEMORY[0x28223BE20](v73, v74);
  v76 = &v206 - v75;
  v77 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v77 - 8, v78);
  v80 = &v206 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81, v82);
  v84 = &v206 - v83;
  v85 = *a1;
  v215 = a1[1];
  v216 = v85;
  v86 = sub_21A2F4E34();
  v213 = v87;
  v214 = v86;
  v88 = sub_21A2F4DB4();
  v211 = v89;
  v212 = v88;
  v244 = v54;
  v90 = *(v54 + 56);
  v91 = 1;
  v217 = v84;
  v247 = v53;
  v92 = v53;
  v93 = v90;
  v90(v84, 1, 1, v92);
  v242 = a2;
  v94 = sub_21A2F4E44();
  v95 = v246;
  if (*(v94 + 16))
  {
    (*(v246 + 16))(v76, v94 + ((*(v246 + 80) + 32) & ~*(v246 + 80)), v47);
    v91 = 0;
  }

  v96 = 1;
  (*(v95 + 56))(v76, v91, 1, v47);
  v97 = v243;
  sub_21A149B18(v76, v243, &qword_27CCFEA80);
  v220 = *(v95 + 48);
  v221 = v95 + 48;
  if (v220(v97, 1, v47) != 1)
  {
    (*(v95 + 32))(v80, v97, v47);
    v98 = type metadata accessor for WebImageAsset(0);
    *&v80[*(v98 + 20)] = 0;
    *&v80[*(v98 + 24)] = 0;
    swift_storeEnumTagMultiPayload();
    v96 = 0;
  }

  v93(v80, v96, 1, v247);
  v99 = sub_21A2F4E44();
  v100 = *(v99 + 16);
  v101 = v100 != 0;
  v218 = v80;
  if (v100 > 1)
  {
    v207 = v99;
    v102 = v100 - v101;
    v251 = MEMORY[0x277D84F90];
    v103 = *(v95 + 80);
    result = sub_21A25D594(0, (v100 - v101) & ~((v100 - v101) >> 63), 0);
    if (((v100 - v101) & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v243 = v207 + ((v103 + 32) & ~v103);
    v106 = v251;
    v107 = (v95 + 16);
    v108 = (v95 + 32);
    do
    {
      if (v101 >= v100)
      {
        goto LABEL_67;
      }

      v110 = v245;
      v109 = v246;
      (*(v246 + 16))(v245, v243 + *(v246 + 72) * v101, v47);
      v111 = v110;
      v102 = v47;
      (*(v109 + 32))(v57, v111, v47);
      v112 = type metadata accessor for WebImageAsset(0);
      *&v57[*(v112 + 20)] = 0;
      *&v57[*(v112 + 24)] = 0;
      swift_storeEnumTagMultiPayload();
      v251 = v106;
      v114 = v106[2];
      v113 = v106[3];
      if (v114 >= v113 >> 1)
      {
        sub_21A25D594(v113 > 1, v114 + 1, 1);
        v106 = v251;
      }

      v106[2] = v114 + 1;
      sub_21A27D240(v57, v106 + ((v244[80] + 32) & ~v244[80]) + *(v244 + 9) * v114, type metadata accessor for ImageAsset);
      ++v101;
      v47 = v102;
    }

    while (v100 != v101);
    v245 = v106;
  }

  else
  {

    v245 = MEMORY[0x277D84F90];
  }

  v115 = v230;
  v116 = v227;
  v117 = v228;
  v101 = &v263;
  sub_21A2F4E74();
  sub_21A183960(v117, v116, &qword_27CD03BC8);
  v118 = v229;
  if ((*(v229 + 48))(v116, 1, v115) == 1)
  {
    v264 = 0u;
    v265 = 0u;
  }

  else
  {
    v119 = v208;
    (*(v118 + 32))(v208, v116, v115);
    v120 = sub_21A2F4E34();
    v122 = v121;
    (*(v118 + 8))(v119, v115);
    v264 = 0uLL;
    *&v265 = v120;
    *(&v265 + 1) = v122;
  }

  sub_21A1427A8(v117, &qword_27CD03BC8);
  v106 = *(&v265 + 1);
  v108 = MEMORY[0x277D84F90];
  if (!*(&v265 + 1))
  {
    v244 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v57 = *(&v264 + 1);
  v102 = v264;
  v107 = v265;
  sub_21A2F5434();
  sub_21A2F5434();
  v123 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = v123;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v126 = *(v105 + 2);
    v125 = *(v105 + 3);
    if (v126 >= v125 >> 1)
    {
      v105 = sub_21A1B6B98((v125 > 1), v126 + 1, 1, v105);
    }

    *(v105 + 2) = v126 + 1;
    v244 = v105;
    v127 = &v105[32 * v126];
    *(v127 + 4) = v102;
    *(v127 + 5) = v57;
    *(v127 + 6) = v107;
    *(v127 + 7) = v106;
LABEL_23:
    sub_21A1427A8(v101 + 32, &qword_27CD03BD0);
    v128 = v232;
    sub_21A2F4F04();
    v129 = v231;
    sub_21A183960(v128, v231, &qword_27CD03BC0);
    v131 = v233;
    v130 = v234;
    if ((*(v233 + 48))(v129, 1, v234) == 1)
    {
      sub_21A1427A8(v128, &qword_27CD03BC0);
      v243 = 0;
      v231 = 0;
    }

    else
    {
      v132 = v209;
      (*(v131 + 32))(v209, v129, v130);
      v243 = sub_21A2F4EC4();
      v231 = v133;
      (*(v131 + 8))(v132, v130);
      sub_21A1427A8(v128, &qword_27CD03BC0);
    }

    v134 = v222;
    v135 = v223;
    v136 = v220;
    sub_21A2F4E84();
    sub_21A183960(v135, v134, &qword_27CCFEA80);
    if (v136(v134, 1, v47) == 1)
    {
      sub_21A1427A8(v135, &qword_27CCFEA80);
      v137 = type metadata accessor for RecipeSourceType();
      (*(*(v137 - 8) + 56))(v238, 1, 1, v137);
    }

    else
    {
      v138 = v246;
      v139 = v210;
      (*(v246 + 32))(v210, v134, v47);
      v140 = sub_21A2F4744();
      v142 = v141 ? v140 : 0;
      v143 = v141 ? v141 : 0xE000000000000000;
      v144 = type metadata accessor for WebRecipeSource();
      v145 = v238;
      (*(v138 + 16))(v238 + *(v144 + 20), v139, v47);
      *v145 = v142;
      v145[1] = v143;
      v146 = type metadata accessor for RecipeSourceType();
      swift_storeEnumTagMultiPayload();
      (*(*(v146 - 8) + 56))(v145, 0, 1, v146);
      (*(v138 + 8))(v139, v47);
      sub_21A1427A8(v135, &qword_27CCFEA80);
    }

    v147 = v224;
    sub_21A2F4EB4();
    sub_21A2F5264();
    v148 = v235;
    sub_21A149B18(v147, v235, &qword_27CD03280);
    v149 = sub_21A2F5294();
    v150 = *(v149 - 8);
    v101 = *(v150 + 48);
    if ((v101)(v148, 1, v149) == 1)
    {
      v151 = type metadata accessor for Duration();
      (*(*(v151 - 8) + 56))(v239, 1, 1, v151);
    }

    else
    {
      v152 = v239;
      (*(v150 + 32))(v239, v148, v149);
      v153 = type metadata accessor for Duration();
      swift_storeEnumTagMultiPayload();
      (*(*(v153 - 8) + 56))(v152, 0, 1, v153);
    }

    v154 = v225;
    sub_21A2F4E94();
    sub_21A2F5264();
    v155 = v236;
    sub_21A149B18(v154, v236, &qword_27CD03280);
    if ((v101)(v155, 1, v149) == 1)
    {
      v156 = type metadata accessor for Duration();
      (*(*(v156 - 8) + 56))(v240, 1, 1, v156);
    }

    else
    {
      v157 = v240;
      (*(v150 + 32))(v240, v155, v149);
      v158 = type metadata accessor for Duration();
      swift_storeEnumTagMultiPayload();
      (*(*(v158 - 8) + 56))(v157, 0, 1, v158);
    }

    v159 = v226;
    v107 = &v251;
    sub_21A2F4F14();
    sub_21A2F5264();
    v160 = v237;
    sub_21A149B18(v159, v237, &qword_27CD03280);
    if ((v101)(v160, 1, v149) == 1)
    {
      v161 = type metadata accessor for Duration();
      (*(*(v161 - 8) + 56))(v241, 1, 1, v161);
    }

    else
    {
      v162 = v241;
      (*(v150 + 32))(v241, v160, v149);
      v163 = type metadata accessor for Duration();
      swift_storeEnumTagMultiPayload();
      (*(*(v163 - 8) + 56))(v162, 0, 1, v163);
    }

    v164 = sub_21A2F4DC4();
    v166 = v165 ? v164 : 0;
    v167 = v165 ? -2 : 0;
    v259[0] = v166;
    v259[1] = v165;
    v260 = 0u;
    v261 = 0u;
    memset(v262, 0, 24);
    BYTE8(v262[1]) = v167;
    v256 = 0u;
    v257 = 0u;
    v258[0] = 0u;
    *(v258 + 9) = *(v262 + 9);
    if (v165)
    {
      v168 = v165;
      v251 = v166;
      v252 = v165;
      v253 = v260;
      v254 = v261;
      v255[0] = v262[0];
      *(v255 + 9) = *(v262 + 9);
      sub_21A1A3854(&v251, &v248);
      v169 = MEMORY[0x277D84F90];
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v171 = v169;
      if ((v170 & 1) == 0)
      {
        v171 = sub_21A1B6A7C(0, *(v169 + 16) + 1, 1, v169);
      }

      v173 = *(v171 + 2);
      v172 = *(v171 + 3);
      if (v173 >= v172 >> 1)
      {
        v171 = sub_21A1B6A7C((v172 > 1), v173 + 1, 1, v171);
      }

      *(v250 + 9) = *(v258 + 9);
      v249 = v257;
      v250[0] = v258[0];
      v248 = v256;
      *(v171 + 2) = v173 + 1;
      v237 = v171;
      v174 = &v171[80 * v173];
      *(v174 + 4) = v166;
      *(v174 + 5) = v168;
      v175 = v248;
      v176 = v249;
      v177 = v250[0];
      *(v174 + 89) = *(v250 + 9);
      *(v174 + 4) = v176;
      *(v174 + 5) = v177;
      *(v174 + 3) = v175;
    }

    else
    {
      v237 = MEMORY[0x277D84F90];
    }

    sub_21A1427A8(v259, &qword_27CD03BD8);
    v178 = sub_21A2F4E14();
    v102 = *(v178 + 16);
    if (!v102)
    {
      break;
    }

    *&v248 = v108;
    v106 = &v248;
    v179 = v178;
    sub_21A25D574(0, v102, 0);
    v57 = 0;
    v180 = v248;
    v181 = *(v179 + 16);
    v246 = v102;
    v247 = v181;
    v236 = v179;
    v108 = (v179 + 40);
    while (v247 != v57)
    {
      v182 = *(v108 - 1);
      v101 = *v108;
      v251 = 0x6569646572676E69;
      v252 = 0xEB000000002D746ELL;
      *&v256 = v57;
      v183 = v180;
      sub_21A2F5434();
      v184 = sub_21A2F8354();
      v106 = &v251;
      MEMORY[0x21CED6480](v184);

      v180 = v183;
      v107 = v251;
      v185 = v252;
      *&v248 = v180;
      v47 = *(v180 + 16);
      v186 = *(v180 + 24);
      if (v47 >= v186 >> 1)
      {
        v106 = &v248;
        sub_21A25D574((v186 > 1), v47 + 1, 1);
        v180 = v248;
      }

      ++v57;
      *(v180 + 16) = v47 + 1;
      v187 = (v180 + 48 * v47);
      v187[4] = v107;
      v187[5] = v185;
      v187[6] = v182;
      v187[7] = v101;
      v187[8] = 0;
      v187[9] = 0;
      v108 += 2;
      v102 = v246;
      if (v246 == v57)
      {
        v188 = v180;

        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v105 = sub_21A1B6B98(0, *(v105 + 2) + 1, 1, v105);
  }

  v188 = MEMORY[0x277D84F90];
LABEL_65:
  v189 = v242;
  v190 = sub_21A2F4E24();
  v191 = sub_21A277CA4(1, v190);

  v192 = sub_21A2F4EA4();
  v194 = v193;
  v195 = sub_21A2F4F24();
  (*(*(v195 - 8) + 8))(v189, v195);
  v196 = v219;
  v197 = v215;
  *v219 = v216;
  v196[1] = v197;
  v198 = v213;
  v196[2] = v214;
  v196[3] = v198;
  v199 = v211;
  v196[4] = v212;
  v196[5] = v199;
  v200 = type metadata accessor for Recipe();
  sub_21A149B18(v217, v196 + v200[7], &qword_27CCFEDC0);
  sub_21A149B18(v218, v196 + v200[8], &qword_27CCFEDC0);
  v201 = v244;
  *(v196 + v200[9]) = v245;
  *(v196 + v200[10]) = v201;
  v202 = (v196 + v200[11]);
  *v202 = 0;
  v202[1] = 0;
  v203 = v231;
  v202[2] = v243;
  v202[3] = v203;
  sub_21A149B18(v238, v196 + v200[12], &qword_27CCFF040);
  sub_21A149B18(v239, v196 + v200[13], &qword_27CCFF3D0);
  sub_21A149B18(v240, v196 + v200[14], &qword_27CCFF3D0);
  result = sub_21A149B18(v241, v196 + v200[15], &qword_27CCFF3D0);
  *(v196 + v200[16]) = v237;
  *(v196 + v200[17]) = v188;
  *(v196 + v200[18]) = v191;
  v204 = (v196 + v200[19]);
  *v204 = 0;
  v204[1] = 0;
  v205 = (v196 + v200[20]);
  *v205 = v192;
  v205[1] = v194;
  *(v196 + v200[21]) = 31;
  return result;
}

double sub_21A273B34@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = type metadata accessor for Recipe();
  if (v5 < 0 || (v8 = *(v2 + *(v7 + 72)), v5 >= *(v8 + 16)) || (v9 = type metadata accessor for StepSection(), v11 = *(v9 - 8), v10 = v9 - 8, v12 = *(v11 + 80), v13 = *(v11 + 72), v4 < 0) || (v14 = *(v8 + ((v12 + 32) & ~v12) + v13 * v5 + *(v10 + 32)), v4 >= *(v14 + 16)) || (v15 = type metadata accessor for Step(), v17 = *(v15 - 8), v16 = v15 - 8, v18 = *(v17 + 80), v19 = *(v17 + 72), v6 < 0) || (v20 = *(v14 + ((v18 + 32) & ~v18) + v19 * v4 + *(v16 + 32)), v6 >= *(v20 + 16)))
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v21 = (v20 + 40 * v6);
    v22 = v21[5];
    v23 = v21[6];
    v24 = v21[7];
    v25 = v21[8];
    *a2 = v21[4];
    *(a2 + 8) = v22;
    *(a2 + 16) = v23;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();

    sub_21A2F5434();
  }

  return result;
}

uint64_t Recipe.ID.description.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A273D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21A2F8394();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21A273D90(uint64_t a1)
{
  v2 = sub_21A273F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A273DCC(uint64_t a1)
{
  v2 = sub_21A273F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Recipe.ID.encode(to:)(void *a1)
{
  v2 = sub_21A176C98(&qword_27CD03A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  sub_21A142764(a1, a1[3]);
  sub_21A273F44();
  sub_21A2F84B4();
  sub_21A2F82E4();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_21A273F44()
{
  result = qword_27CD03A88;
  if (!qword_27CD03A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03A88);
  }

  return result;
}

uint64_t Recipe.ID.hashValue.getter()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t Recipe.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD03A90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A273F44();
  sub_21A2F8494();
  if (!v2)
  {
    v10 = sub_21A2F8244();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    a2[1] = v12;
  }

  return sub_21A142808(a1);
}

uint64_t sub_21A274178(void *a1)
{
  v2 = sub_21A176C98(&qword_27CD03A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  sub_21A142764(a1, a1[3]);
  sub_21A273F44();
  sub_21A2F84B4();
  sub_21A2F82E4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21A2742B4()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t Recipe.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_21A2F5434();
}

uint64_t Recipe.title.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

uint64_t Recipe.descriptionText.getter()
{
  v1 = *(v0 + 32);
  sub_21A2F5434();
  return v1;
}

uint64_t Recipe.images.getter()
{
  type metadata accessor for Recipe();

  return sub_21A2F5434();
}

uint64_t Recipe.authors.getter()
{
  type metadata accessor for Recipe();

  return sub_21A2F5434();
}

uint64_t Recipe.publisher.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Recipe() + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_21A274498(v4, v5, v6, v7);
}

uint64_t sub_21A274498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_21A2F5434();

    return sub_21A2F5434();
  }

  return result;
}

uint64_t Recipe.recipeYield.getter()
{
  type metadata accessor for Recipe();

  return sub_21A2F5434();
}

uint64_t Recipe.ingredients.getter()
{
  type metadata accessor for Recipe();

  return sub_21A2F5434();
}

uint64_t Recipe.stepSections.getter()
{
  type metadata accessor for Recipe();

  return sub_21A2F5434();
}

uint64_t Recipe.suitableForDiet.getter()
{
  v1 = *(v0 + *(type metadata accessor for Recipe() + 76));
  sub_21A2F5434();
  return v1;
}

uint64_t Recipe.language.getter()
{
  v1 = *(v0 + *(type metadata accessor for Recipe() + 80));
  sub_21A2F5434();
  return v1;
}

uint64_t Recipe.structuredComponents.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for Recipe();
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t sub_21A274750(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x7470697263736564;
      break;
    case 3:
      result = 0x69616E626D756874;
      break;
    case 4:
      result = 0x67616D496F726568;
      break;
    case 5:
      result = 0x736567616D69;
      break;
    case 6:
      result = 0x73726F68747561;
      break;
    case 7:
      result = 0x656873696C627570;
      break;
    case 8:
      result = 0x656372756F73;
      break;
    case 9:
      v3 = 1885696624;
      goto LABEL_19;
    case 10:
      v3 = 1802465123;
LABEL_19:
      result = v3 | 0x656D695400000000;
      break;
    case 11:
      result = 0x6D69546C61746F74;
      break;
    case 12:
      result = 0x6959657069636572;
      break;
    case 13:
      result = 0x6569646572676E69;
      break;
    case 14:
      result = 0x7463655370657473;
      break;
    case 15:
      result = 0x656C626174697573;
      break;
    case 16:
      result = 0x65676175676E616CLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21A274954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A27CC90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A274988(uint64_t a1)
{
  v2 = sub_21A27C060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A2749C4(uint64_t a1)
{
  v2 = sub_21A27C060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Recipe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_21A176C98(&qword_27CD03A98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A27C060();
  sub_21A2F84B4();
  v10 = v3[1];
  v17 = *v3;
  v18 = v10;
  v21 = 0;
  sub_21A1921B4();
  sub_21A2F5434();
  sub_21A2F8324();

  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_21A2F82E4();
    LOBYTE(v17) = 2;
    sub_21A2F82E4();
    v11 = type metadata accessor for Recipe();
    LOBYTE(v17) = 3;
    type metadata accessor for ImageAsset(0);
    sub_21A27C850(&qword_27CD01588, type metadata accessor for ImageAsset);
    sub_21A2F82D4();
    LOBYTE(v17) = 4;
    sub_21A2F82D4();
    v17 = *(v3 + v11[9]);
    v21 = 5;
    sub_21A176C98(&qword_27CD03AA8);
    sub_21A27C3D4(&qword_27CD03AB0, &qword_27CD01588);
    sub_21A2F82D4();
    v17 = *(v3 + v11[10]);
    v21 = 6;
    sub_21A176C98(&qword_27CD03AB8);
    sub_21A27C0B4();
    sub_21A2F82D4();
    v12 = (v3 + v11[11]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v17 = *v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = 7;
    sub_21A274498(v17, v13, v14, v15);
    sub_21A27C18C();
    sub_21A2F82D4();
    sub_21A27C1E0(v17, v18, v19, v20);
    LOBYTE(v17) = 8;
    type metadata accessor for RecipeSourceType();
    sub_21A27C850(&qword_27CD03AD8, type metadata accessor for RecipeSourceType);
    sub_21A2F82D4();
    LOBYTE(v17) = 9;
    type metadata accessor for Duration();
    sub_21A27C850(&qword_27CD023E0, type metadata accessor for Duration);
    sub_21A2F82D4();
    LOBYTE(v17) = 10;
    sub_21A2F82D4();
    LOBYTE(v17) = 11;
    sub_21A2F82D4();
    v17 = *(v3 + v11[16]);
    v21 = 12;
    sub_21A176C98(&qword_27CD03AE0);
    sub_21A27C224();
    sub_21A2F82D4();
    v17 = *(v3 + v11[17]);
    v21 = 13;
    sub_21A176C98(&qword_27CD02400);
    sub_21A27C2FC();
    sub_21A2F8324();
    v17 = *(v3 + v11[18]);
    v21 = 14;
    sub_21A176C98(&qword_27CD03AF8);
    sub_21A27C760(&qword_27CD03B00, &qword_27CD03B08);
    sub_21A2F8324();
    LOBYTE(v17) = 15;
    sub_21A2F82B4();
    LOBYTE(v17) = 16;
    sub_21A2F82B4();
    v17 = *(v3 + v11[21]);
    v21 = 17;
    sub_21A27C380();
    sub_21A2F8324();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Recipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v71 = a2;
  v2 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v72 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v73 = v69 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v74 = v69 - v10;
  v11 = sub_21A176C98(&qword_27CCFF040);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v80 = v69 - v13;
  v14 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  *&v76 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  *&v75 = v69 - v19;
  v20 = sub_21A176C98(&qword_27CD03B18);
  v77 = *(v20 - 8);
  v78 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v69 - v22;
  v24 = type metadata accessor for Recipe();
  MEMORY[0x28223BE20](v24, v25);
  v27 = v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 + 28);
  v30 = type metadata accessor for ImageAsset(0);
  v31 = *(*(v30 - 8) + 56);
  v88 = v29;
  v31(&v27[v29], 1, 1, v30);
  v87 = v24[8];
  v31(&v27[v87], 1, 1, v30);
  v32 = &v27[v24[11]];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v86 = v32;
  v33 = v24[12];
  v34 = type metadata accessor for RecipeSourceType();
  v35 = *(*(v34 - 8) + 56);
  v85 = v33;
  v35(&v27[v33], 1, 1, v34);
  v36 = v24[13];
  v37 = type metadata accessor for Duration();
  v38 = *(*(v37 - 8) + 56);
  v84 = v36;
  v38(&v27[v36], 1, 1, v37);
  v83 = v24[14];
  v38(&v27[v83], 1, 1, v37);
  v89 = v24;
  v82 = v24[15];
  v38(&v27[v82], 1, 1, v37);
  sub_21A142764(v90, v90[3]);
  sub_21A27C060();
  v79 = v23;
  v39 = v81;
  sub_21A2F8494();
  if (v39)
  {
    v81 = v39;
    sub_21A142808(v90);
    v43 = 0;
    LODWORD(v80) = 0;
  }

  else
  {
    v40 = v75;
    v41 = v76;
    v70 = v27;
    v69[2] = v37;
    v81 = v34;
    v42 = v80;
    v93 = 0;
    sub_21A1922B0();
    sub_21A2F8284();
    v45 = *(&v91 + 1);
    v46 = v70;
    *v70 = v91;
    v46[1] = v45;
    LOBYTE(v91) = 1;
    v47 = sub_21A2F8244();
    v48 = v89;
    v46[2] = v47;
    v46[3] = v49;
    LOBYTE(v91) = 2;
    v69[1] = 0;
    v46[4] = sub_21A2F8244();
    v46[5] = v50;
    LOBYTE(v91) = 3;
    sub_21A27C850(&qword_27CD015A0, type metadata accessor for ImageAsset);
    sub_21A2F8234();
    sub_21A27C59C(v40, v46 + v88, &qword_27CCFEDC0);
    LOBYTE(v91) = 4;
    sub_21A2F8234();
    sub_21A27C59C(v41, v46 + v87, &qword_27CCFEDC0);
    sub_21A176C98(&qword_27CD03AA8);
    v93 = 5;
    sub_21A27C3D4(&qword_27CD03B20, &qword_27CD015A0);
    sub_21A2F8234();
    *(v46 + v48[9]) = v91;
    sub_21A176C98(&qword_27CD03AB8);
    v93 = 6;
    sub_21A27C470();
    sub_21A2F8234();
    v51 = v48[10];
    v52 = v91;
    *(v46 + v51) = v91;
    v93 = 7;
    sub_21A27C548();
    sub_21A2F8234();
    v53 = v86;
    v54 = *v86;
    v55 = v86[1];
    v56 = v86[2];
    v57 = v86[3];
    v76 = v91;
    v75 = v92;
    sub_21A27C1E0(v54, v55, v56, v57);
    v58 = v75;
    *v53 = v76;
    *(v53 + 1) = v58;
    LOBYTE(v91) = 8;
    sub_21A27C850(&qword_27CD03B40, type metadata accessor for RecipeSourceType);
    sub_21A2F8234();
    *&v76 = v52;
    sub_21A27C59C(v42, v70 + v85, &qword_27CCFF040);
    LOBYTE(v91) = 9;
    sub_21A27C850(&qword_27CD02420, type metadata accessor for Duration);
    sub_21A2F8234();
    sub_21A27C59C(v74, v70 + v84, &qword_27CCFF3D0);
    LOBYTE(v91) = 10;
    sub_21A2F8234();
    sub_21A27C59C(v73, v70 + v83, &qword_27CCFF3D0);
    LOBYTE(v91) = 11;
    sub_21A2F8234();
    sub_21A27C59C(v72, v70 + v82, &qword_27CCFF3D0);
    sub_21A176C98(&qword_27CD03AE0);
    v93 = 12;
    sub_21A27C604();
    sub_21A2F8234();
    *(v70 + v89[16]) = v91;
    sub_21A176C98(&qword_27CD02400);
    v93 = 13;
    sub_21A27C6DC();
    sub_21A2F8284();
    *(v70 + v89[17]) = v91;
    sub_21A176C98(&qword_27CD03AF8);
    v93 = 14;
    sub_21A27C760(&qword_27CD03B58, &qword_27CD03B60);
    sub_21A2F8284();
    LODWORD(v80) = 1;
    v81 = 0;
    *(v70 + v89[18]) = v91;
    LOBYTE(v91) = 15;
    v59 = v81;
    v60 = sub_21A2F8214();
    v81 = v59;
    if (!v59)
    {
      v62 = (v70 + v89[19]);
      *v62 = v60;
      v62[1] = v61;
      LOBYTE(v91) = 16;
      v63 = v81;
      v64 = sub_21A2F8214();
      v81 = v63;
      if (!v63)
      {
        v66 = (v70 + v89[20]);
        *v66 = v64;
        v66[1] = v65;
        v93 = 17;
        sub_21A27C7FC();
        v67 = v81;
        sub_21A2F8284();
        v81 = v67;
        if (!v67)
        {
          (*(v77 + 8))(v79, v78);
          v68 = v70;
          *(v70 + v89[21]) = v91;
          sub_21A27C898(v68, v71, type metadata accessor for Recipe);
          sub_21A142808(v90);
          return sub_21A27D2A8(v68, type metadata accessor for Recipe);
        }
      }
    }

    (*(v77 + 8))(v79, v78);
    sub_21A142808(v90);
    v27 = v70;

    v43 = 1;
  }

  sub_21A1427A8(&v27[v88], &qword_27CCFEDC0);
  sub_21A1427A8(&v27[v87], &qword_27CCFEDC0);

  sub_21A27C1E0(*v86, v86[1], v86[2], v86[3]);
  sub_21A1427A8(&v27[v85], &qword_27CCFF040);
  sub_21A1427A8(&v27[v84], &qword_27CCFF3D0);
  sub_21A1427A8(&v27[v83], &qword_27CCFF3D0);
  sub_21A1427A8(&v27[v82], &qword_27CCFF3D0);

  if (v43)
  {
  }

  if (v80)
  {
  }
}

char *Recipe.indexableFields.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = type metadata accessor for Step();
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StepSection();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 40);
  v75 = *(v1 + 32);
  v13 = type metadata accessor for Recipe();
  v14 = v13;
  v15 = *(v1 + *(v13 + 68));
  v16 = *(v15 + 16);
  v74 = v12;
  if (v16)
  {
    v71 = v13;
    v72 = v7;
    v73 = v8;
    v80 = MEMORY[0x277D84F90];
    sub_21A2F5434();
    sub_21A25D554(0, v16, 0);
    v17 = v80;
    v18 = (v15 + 56);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v80 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      sub_21A2F5434();
      if (v22 >= v21 >> 1)
      {
        sub_21A25D554((v21 > 1), v22 + 1, 1);
        v17 = v80;
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v18 += 6;
      --v16;
    }

    while (v16);
    v7 = v72;
    v8 = v73;
    v14 = v71;
  }

  else
  {
    sub_21A2F5434();
    v17 = MEMORY[0x277D84F90];
  }

  v80 = v17;
  v24 = sub_21A176C98(&qword_27CD010C8);
  v72 = sub_21A1549F0();
  v73 = v24;
  v25 = sub_21A2F7834();
  v70 = v26;
  v71 = v25;

  v27 = *(v2 + *(v14 + 72));
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (!v28)
  {
LABEL_25:
    v42 = *(v29 + 2);
    if (!v42)
    {

      v46 = MEMORY[0x277D84F90];
      v55 = *(MEMORY[0x277D84F90] + 16);
      if (v55)
      {
LABEL_43:
        v80 = MEMORY[0x277D84F90];
        sub_21A25D554(0, v55, 0);
        v56 = v80;
        v57 = (v46 + 40);
        do
        {
          v59 = *(v57 - 1);
          v58 = *v57;
          v80 = v56;
          v61 = *(v56 + 16);
          v60 = *(v56 + 24);
          sub_21A2F5434();
          if (v61 >= v60 >> 1)
          {
            sub_21A25D554((v60 > 1), v61 + 1, 1);
            v56 = v80;
          }

          *(v56 + 16) = v61 + 1;
          v62 = v56 + 16 * v61;
          *(v62 + 32) = v59;
          *(v62 + 40) = v58;
          v57 += 5;
          --v55;
        }

        while (v55);
      }

      else
      {
LABEL_49:

        v56 = MEMORY[0x277D84F90];
      }

      v80 = v56;
      v63 = sub_21A2F7834();
      v65 = v64;

      v66 = v76;
      v67 = v74;
      *v76 = v75;
      v66[1] = v67;
      v68 = v70;
      v66[2] = v71;
      v66[3] = v68;
      v66[4] = v63;
      v66[5] = v65;
      return result;
    }

    v43 = *(v77 + 24);
    v44 = &v29[(*(v78 + 80) + 32) & ~*(v78 + 80)];
    v45 = *(v78 + 72);
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      v47 = v79;
      sub_21A27C898(v44, v79, type metadata accessor for Step);
      v48 = *(v47 + v43);
      sub_21A2F5434();
      result = sub_21A27D2A8(v47, type metadata accessor for Step);
      v49 = *(v48 + 16);
      v50 = *(v46 + 2);
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_53;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v51 <= *(v46 + 3) >> 1)
      {
        if (*(v48 + 16))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v50 <= v51)
        {
          v52 = v50 + v49;
        }

        else
        {
          v52 = v50;
        }

        result = sub_21A1B6CA4(result, v52, 1, v46);
        v46 = result;
        if (*(v48 + 16))
        {
LABEL_38:
          if ((*(v46 + 3) >> 1) - *(v46 + 2) < v49)
          {
            goto LABEL_56;
          }

          swift_arrayInitWithCopy();

          if (v49)
          {
            v53 = *(v46 + 2);
            v40 = __OFADD__(v53, v49);
            v54 = v53 + v49;
            if (v40)
            {
              goto LABEL_58;
            }

            *(v46 + 2) = v54;
          }

          goto LABEL_28;
        }
      }

      if (v49)
      {
        goto LABEL_54;
      }

LABEL_28:
      v44 += v45;
      if (!--v42)
      {

        v55 = *(v46 + 2);
        if (!v55)
        {
          goto LABEL_49;
        }

        goto LABEL_43;
      }
    }
  }

  v30 = *(v7 + 24);
  v31 = v27 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v32 = *(v8 + 72);
  while (1)
  {
    sub_21A27C898(v31, v11, type metadata accessor for StepSection);
    v34 = *&v11[v30];
    sub_21A2F5434();
    result = sub_21A27D2A8(v11, type metadata accessor for StepSection);
    v35 = *(v34 + 16);
    v36 = *(v29 + 2);
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v37 <= *(v29 + 3) >> 1)
    {
      if (!*(v34 + 16))
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v38 = v36 + v35;
      }

      else
      {
        v38 = v36;
      }

      result = sub_21A1B6948(result, v38, 1, v29);
      v29 = result;
      if (!*(v34 + 16))
      {
LABEL_10:

        if (v35)
        {
          goto LABEL_52;
        }

        goto LABEL_11;
      }
    }

    if ((*(v29 + 3) >> 1) - *(v29 + 2) < v35)
    {
      goto LABEL_55;
    }

    swift_arrayInitWithCopy();

    if (v35)
    {
      v39 = *(v29 + 2);
      v40 = __OFADD__(v39, v35);
      v41 = v39 + v35;
      if (v40)
      {
        goto LABEL_57;
      }

      *(v29 + 2) = v41;
    }

LABEL_11:
    v31 += v32;
    if (!--v28)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_21A2766C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v183 = sub_21A2F4D24();
  v217 = *(v183 - 8);
  MEMORY[0x28223BE20](v183, v6);
  v215 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v214 = &v180 - v10;
  v11 = type metadata accessor for StepSection();
  v213 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = (&v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_21A2F4C74();
  v216 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v15);
  v212 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v211 = &v180 - v19;
  v20 = sub_21A2F4F54();
  v206 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v202 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v201 = &v180 - v25;
  v26 = sub_21A176C98(&qword_27CD03BB8);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v180 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v225 = &v180 - v32;
  v224 = sub_21A2F5014();
  v210 = *(v224 - 8);
  MEMORY[0x28223BE20](v224, v33);
  v223 = &v180 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v222 = &v180 - v37;
  v38 = sub_21A2F4BF4();
  v226 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v39);
  v220 = &v180 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  *&v219 = &v180 - v43;
  v44 = sub_21A176C98(&qword_27CD02460);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v209 = &v180 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  *&v218 = &v180 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v208 = (&v180 - v52);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v180 - v55;
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v180 - v59;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v180 - v63;
  v65 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v65 - 8, v66);
  v196 = &v180 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v69);
  v195 = &v180 - v70;
  MEMORY[0x28223BE20](v71, v72);
  v194 = &v180 - v73;
  v74 = sub_21A176C98(&qword_27CCFF040);
  MEMORY[0x28223BE20](v74 - 8, v75);
  v193 = &v180 - v76;
  v77 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v77 - 8, v78);
  v192 = &v180 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80, v81);
  v191 = &v180 - v82;
  v83 = a2[1];
  v190 = a3;
  v181 = v14;
  if (v83)
  {
    v189 = v83;
    v188 = *a2;
  }

  else
  {
    v188 = sub_21A2F4B24();
    v189 = v84;
  }

  v187 = sub_21A2F4B44();
  v186 = v85;
  v185 = sub_21A2F4AC4();
  v184 = v86;
  v87 = type metadata accessor for ImageAsset(0);
  v88 = *(*(v87 - 8) + 56);
  v88(v191, 1, 1, v87);
  v88(v192, 1, 1, v87);
  v89 = type metadata accessor for RecipeSourceType();
  (*(*(v89 - 8) + 56))(v193, 1, 1, v89);
  sub_21A2F4B74();
  sub_21A183960(v64, v60, &qword_27CD02460);
  v90 = v226;
  v91 = v38;
  *&v221 = *(v226 + 48);
  if ((v221)(v60, 1, v38) == 1)
  {
    sub_21A1427A8(v64, &qword_27CD02460);
    v92 = type metadata accessor for Duration();
    (*(*(v92 - 8) + 56))(v194, 1, 1, v92);
    v93 = v220;
    v94 = v219;
  }

  else
  {
    v94 = v219;
    (*(v90 + 32))(v219, v60, v91);
    v93 = v220;
    (*(v90 + 16))(v220, v94, v91);
    sub_21A24F574(v93, v194);
    (*(v90 + 8))(v94, v91);
    sub_21A1427A8(v64, &qword_27CD02460);
  }

  v95 = v56;
  sub_21A2F4B54();
  v96 = v56;
  v97 = v208;
  sub_21A183960(v96, v208, &qword_27CD02460);
  v98 = (v221)(v97, 1, v91);
  v99 = v218;
  if (v98 == 1)
  {
    sub_21A1427A8(v95, &qword_27CD02460);
    v100 = type metadata accessor for Duration();
    (*(*(v100 - 8) + 56))(v195, 1, 1, v100);
  }

  else
  {
    v101 = v97;
    v102 = v95;
    v103 = v226;
    (*(v226 + 32))(v94, v101, v91);
    (*(v103 + 16))(v93, v94, v91);
    sub_21A24F574(v93, v195);
    (*(v103 + 8))(v94, v91);
    sub_21A1427A8(v102, &qword_27CD02460);
  }

  sub_21A2F4B84();
  v104 = v209;
  sub_21A183960(v99, v209, &qword_27CD02460);
  if ((v221)(v104, 1, v91) == 1)
  {
    sub_21A1427A8(v99, &qword_27CD02460);
    v105 = type metadata accessor for Duration();
    (*(*(v105 - 8) + 56))(v196, 1, 1, v105);
  }

  else
  {
    v106 = v226;
    (*(v226 + 32))(v94, v104, v91);
    (*(v106 + 16))(v93, v94, v91);
    sub_21A24F574(v93, v196);
    (*(v106 + 8))(v94, v91);
    sub_21A1427A8(v99, &qword_27CD02460);
  }

  v107 = sub_21A2F4AE4();
  v108 = MEMORY[0x277D84F90];
  v197 = a1;
  if (v107)
  {
    v109 = *(v107 + 16);
    if (v109)
    {
      v232 = MEMORY[0x277D84F90];
      v110 = v107;
      result = sub_21A25D92C(0, v109, 0);
      if (!*(v110 + 16))
      {
LABEL_43:
        __break(1u);
        return result;
      }

      v112 = v110;
      v113 = 0;
      v114 = v110 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
      v208 = *(v210 + 16);
      v115 = v232;
      v207 = (v206 + 48);
      v200 = (v206 + 32);
      v199 = (v206 + 16);
      v203 = *(v210 + 72);
      v198 = (v206 + 8);
      v210 += 16;
      v116 = (v210 - 8);
      v206 = v109 - 1;
      v205 = v20;
      v204 = v29;
      v209 = v112;
      while (1)
      {
        v226 = v115;
        v117 = v222;
        v118 = v224;
        v119 = v208;
        (v208)(v222, v114, v224);
        v119(v223, v117, v118);
        v120 = sub_21A2F5004();
        v220 = v121;
        *&v221 = v120;
        v122 = v225;
        sub_21A2F4FF4();
        sub_21A183960(v122, v29, &qword_27CD03BB8);
        if ((*v207)(v29, 1, v20) == 1)
        {
          v123 = 0;
          v124 = 0;
          v125 = 0;
          v126 = -2;
          v219 = 0u;
          v218 = 0u;
        }

        else
        {
          v127 = v201;
          (*v200)(v201, v29, v20);
          v128 = v202;
          (*v199)(v202, v127, v20);
          sub_21A266200(v128, &v227);
          v218 = v228;
          v219 = v227;
          v124 = *(&v229 + 1);
          v123 = v229;
          v125 = v230;
          v126 = v231;
          (*v198)(v127, v20);
        }

        sub_21A1427A8(v225, &qword_27CD03BB8);
        v129 = *v116;
        v130 = v224;
        (*v116)(v223, v224);
        v129(v222, v130);
        v230 = 0;
        v228 = 0u;
        v229 = 0u;
        v227 = 0u;
        v231 = -2;
        result = sub_21A1427A8(&v227, &qword_27CCFF3C0);
        v115 = v226;
        v232 = v226;
        v132 = *(v226 + 16);
        v131 = *(v226 + 24);
        if (v132 >= v131 >> 1)
        {
          result = sub_21A25D92C((v131 > 1), v132 + 1, 1);
          v115 = v232;
        }

        *(v115 + 16) = v132 + 1;
        v133 = v115 + 80 * v132;
        v134 = v220;
        *(v133 + 32) = v221;
        *(v133 + 40) = v134;
        v135 = v218;
        *(v133 + 48) = v219;
        *(v133 + 64) = v135;
        *(v133 + 80) = v123;
        *(v133 + 88) = v124;
        *(v133 + 96) = v125;
        *(v133 + 104) = v126;
        if (v206 == v113)
        {
          break;
        }

        ++v113;
        v114 += v203;
        v20 = v205;
        v29 = v204;
        if (v113 >= *(v209 + 16))
        {
          goto LABEL_43;
        }
      }

      v226 = v115;

      v108 = MEMORY[0x277D84F90];
    }

    else
    {

      v226 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v226 = 0;
  }

  v136 = sub_21A2F4AD4();
  v137 = *(v136 + 16);
  if (v137)
  {
    v232 = v108;
    sub_21A25D574(0, v137, 0);
    v138 = v232;
    v139 = *(v216 + 16);
    v140 = *(v216 + 80);
    v222 = v136;
    v141 = v136 + ((v140 + 32) & ~v140);
    v224 = *(v216 + 72);
    v225 = v139;
    v216 += 16;
    v223 = (v216 - 8);
    v142 = v182;
    do
    {
      v143 = v211;
      v144 = v225;
      (v225)(v211, v141, v142);
      v145 = v212;
      v144(v212, v143, v142);
      sub_21A24346C(v145, &v227);
      (*v223)(v143, v142);
      v146 = v227;
      v147 = v228;
      v148 = v229;
      v232 = v138;
      v150 = *(v138 + 16);
      v149 = *(v138 + 24);
      if (v150 >= v149 >> 1)
      {
        v221 = v229;
        sub_21A25D574((v149 > 1), v150 + 1, 1);
        v148 = v221;
        v142 = v182;
        v138 = v232;
      }

      *(v138 + 16) = v150 + 1;
      v151 = (v138 + 48 * v150);
      v151[2] = v146;
      v151[3] = v147;
      v151[4] = v148;
      v141 += v224;
      --v137;
    }

    while (v137);
    v224 = v138;

    v108 = MEMORY[0x277D84F90];
  }

  else
  {

    v224 = MEMORY[0x277D84F90];
  }

  v152 = sub_21A2F4AF4();
  v153 = *(v152 + 16);
  if (v153)
  {
    *&v227 = v108;
    sub_21A25D5D8(0, v153, 0);
    v154 = v227;
    v155 = *(v217 + 16);
    v156 = *(v217 + 80);
    v223 = v152;
    v157 = v152 + ((v156 + 32) & ~v156);
    v225 = *(v217 + 72);
    v217 += 16;
    v158 = (v217 - 8);
    v159 = v183;
    v160 = v181;
    v161 = v214;
    do
    {
      v155(v161, v157, v159);
      v162 = v215;
      v155(v215, v161, v159);
      sub_21A22A0B4(v162, v160);
      (*v158)(v161, v159);
      *&v227 = v154;
      v164 = *(v154 + 16);
      v163 = *(v154 + 24);
      if (v164 >= v163 >> 1)
      {
        sub_21A25D5D8(v163 > 1, v164 + 1, 1);
        v159 = v183;
        v154 = v227;
      }

      *(v154 + 16) = v164 + 1;
      sub_21A27D240(v160, v154 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v164, type metadata accessor for StepSection);
      v157 += v225;
      --v153;
    }

    while (v153);
  }

  else
  {

    v154 = MEMORY[0x277D84F90];
  }

  v165 = v197;
  v166 = sub_21A2F4B64();
  v168 = v167;
  v169 = sub_21A2F4B04();
  sub_21A25324C(v169, &v227);
  v170 = sub_21A2F4B94();
  (*(*(v170 - 8) + 8))(v165, v170);
  v171 = v227;
  v172 = v190;
  v173 = v189;
  *v190 = v188;
  v172[1] = v173;
  v174 = v186;
  v172[2] = v187;
  v172[3] = v174;
  v175 = v184;
  v172[4] = v185;
  v172[5] = v175;
  v176 = type metadata accessor for Recipe();
  sub_21A149B18(v191, v172 + v176[7], &qword_27CCFEDC0);
  sub_21A149B18(v192, v172 + v176[8], &qword_27CCFEDC0);
  *(v172 + v176[9]) = 0;
  *(v172 + v176[10]) = 0;
  v177 = (v172 + v176[11]);
  *v177 = 0u;
  v177[1] = 0u;
  sub_21A149B18(v193, v172 + v176[12], &qword_27CCFF040);
  sub_21A149B18(v194, v172 + v176[13], &qword_27CCFF3D0);
  sub_21A149B18(v195, v172 + v176[14], &qword_27CCFF3D0);
  result = sub_21A149B18(v196, v172 + v176[15], &qword_27CCFF3D0);
  *(v172 + v176[16]) = v226;
  *(v172 + v176[17]) = v224;
  *(v172 + v176[18]) = v154;
  v178 = (v172 + v176[19]);
  *v178 = 0;
  v178[1] = 0;
  v179 = (v172 + v176[20]);
  *v179 = v166;
  v179[1] = v168;
  *(v172 + v176[21]) = v171;
  return result;
}

uint64_t sub_21A277B6C()
{
  v0 = sub_21A2F4B94();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Recipe();
  sub_21A177DCC(v4, qword_27CD03A68);
  v5 = sub_21A177CBC(v4, qword_27CD03A68);
  sub_21A2F4B14();
  v7[0] = 0;
  v7[1] = 0;
  return sub_21A2766C8(v3, v7, v5);
}

uint64_t static Recipe.exampleIARFRecipe.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CCFE868 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Recipe();
  v3 = sub_21A177CBC(v2, qword_27CD03A68);
  return sub_21A27C898(v3, a1, type metadata accessor for Recipe);
}

uint64_t sub_21A277CA4(int a1, uint64_t a2)
{
  LODWORD(v194) = a1;
  v3 = type metadata accessor for Step();
  v182 = *(v3 - 8);
  v183 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v184 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v187 = &v157 - v8;
  v164 = type metadata accessor for StepSection();
  v165 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v9);
  v179 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v178 = (&v157 - v13);
  MEMORY[0x28223BE20](v14, v15);
  v158 = &v157 - v16;
  v17 = sub_21A2F4DF4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v181 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v168 = (&v157 - v23);
  v24 = sub_21A2F4ED4();
  v167 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v193 = &v157 - v30;
  v31 = sub_21A2F4E04();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v180 = (&v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35, v36);
  v38 = (&v157 - v37);
  MEMORY[0x28223BE20](v39, v40);
  v185 = &v157 - v41;
  v42 = swift_allocObject();
  *(v42 + 16) = MEMORY[0x277D84F90];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 1;
  v44 = *(a2 + 16);
  v172 = v42;
  v170 = v17;
  v169 = v31;
  v186 = v44;
  if ((v194 & 1) == 0)
  {
    v86 = MEMORY[0x277D84F90];
    if (v44)
    {
      v163 = v27;
      v194 = v43;
      v87 = a2;
      v90 = *(v32 + 16);
      v89 = v32 + 16;
      v88 = v90;
      v190 = (v89 + 72);
      LODWORD(v189) = *MEMORY[0x277CFCC10];
      LODWORD(v183) = *MEMORY[0x277CFCC08];
      LODWORD(v174) = *MEMORY[0x277CFCC18];
      v188 = (v89 + 80);
      *&v173 = v18 + 32;
      v192 = (v167 + 16);
      v175 = (v167 + 8);
      v171 = (v18 + 8);
      v91 = 0;
      v168 = (v167 + 32);
      v185 = (v87 + ((*(v89 + 64) + 32) & ~*(v89 + 64)));
      v184 = *(v89 + 56);
      v92 = v180;
      v176 = v90;
      v93 = v44;
      v166 = v89;
      v90(v180, v185, v31);
      while (1)
      {
        v94 = (*v190)(v92, v31);
        if (v94 == v189)
        {
          (*v188)(v92, v31);
          sub_21A278F1C(*v92, v92[1], v194, v42);
        }

        else if (v94 == v183)
        {
          (*v188)(v92, v31);
          v95 = v17;
          v96 = v91;
          v97 = v193;
          (*v168)(v193, v92, v24);
          v98 = sub_21A2F4EC4();
          sub_21A278F1C(v98, v99, v194, v42);
          v100 = v175;

          v101 = v97;
          v91 = v96;
          v17 = v95;
          v88 = v176;
          (*v100)(v101, v24);
        }

        else
        {
          v182 = v91;
          if (v94 != v174)
          {
            goto LABEL_67;
          }

          v102 = v24;
          v103 = v180;
          (*v188)(v180, v31);
          (*v173)(v181, v103, v17);
          v104 = sub_21A2F4DD4();
          v177 = v105;
          v106 = type metadata accessor for Duration();
          v107 = *(*(v106 - 8) + 56);
          v108 = v187;
          v107(v187, 1, 1, v106);
          v109 = v164;
          v110 = *(v164 + 20);
          v111 = v178;
          v107(v178 + v110, 1, 1, v106);
          v112 = *(v109 + 28);
          v113 = v177;
          *v111 = v104;
          v111[1] = v113;
          sub_21A27C59C(v108, v111 + v110, &qword_27CCFF3D0);
          *(v111 + *(v109 + 24)) = MEMORY[0x277D84F90];
          *(v111 + v112) = 0;
          v42 = v172;
          v114 = *(v172 + 16);
          v115 = v114[2];
          v116 = v194;
          *(v194 + 16) = v115;
          *(v116 + 24) = 0;
          sub_21A27C898(v111, v179, type metadata accessor for StepSection);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_21A1B6920(0, v115 + 1, 1, v114);
          }

          v118 = v114[2];
          v117 = v114[3];
          v24 = v102;
          if (v118 >= v117 >> 1)
          {
            v114 = sub_21A1B6920(v117 > 1, v118 + 1, 1, v114);
          }

          v119 = v179;
          v92 = v180;
          v114[2] = v118 + 1;
          sub_21A27D240(v119, v114 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v118, type metadata accessor for StepSection);
          *(v42 + 16) = v114;
          v120 = sub_21A2F4DE4();
          v121 = *(v120 + 16);
          if (v121)
          {
            v122 = *(v167 + 80);
            v177 = v120;
            v123 = v120 + ((v122 + 32) & ~v122);
            v124 = v42;
            v125 = *(v167 + 72);
            v126 = *(v167 + 16);
            v127 = v175;
            v128 = v163;
            do
            {
              v126(v128, v123, v24);
              v129 = sub_21A2F4EC4();
              v131 = v130;
              (*v127)(v128, v24);
              sub_21A278F1C(v129, v131, v194, v124);

              v123 += v125;
              --v121;
            }

            while (v121);

            v42 = v124;
            v93 = v186;
            v92 = v180;
            v88 = v176;
          }

          else
          {

            v93 = v186;
          }

          v17 = v170;
          (*v171)(v181, v170);
          sub_21A27D2A8(v178, type metadata accessor for StepSection);
          v31 = v169;
          v91 = v182;
        }

        if (++v91 == v93)
        {
          break;
        }

        v88(v92, &v185[v184 * v91], v31);
      }

      v86 = *(v42 + 16);
    }

    goto LABEL_61;
  }

  v194 = v43;
  if (v44)
  {
    v45 = 0;
    v47 = *(v32 + 16);
    v46 = v32 + 16;
    v181 = v47;
    v180 = (a2 + ((*(v46 + 64) + 32) & ~*(v46 + 64)));
    v48 = *(v46 + 56);
    v178 = (v46 + 72);
    v179 = v48;
    LODWORD(v177) = *MEMORY[0x277CFCC10];
    LODWORD(v171) = *MEMORY[0x277CFCC08];
    v161 = *MEMORY[0x277CFCC18];
    v176 = (v46 + 80);
    v160 = (v18 + 32);
    v190 = (v167 + 16);
    v192 = (v167 + 8);
    v162 = (v18 + 8);
    v175 = (v46 - 8);
    v159 = (v167 + 32);
    v173 = xmmword_21A2FC020;
    v189 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
    v174 = v38;
    v50 = v185;
    *&v191 = v24;
    v166 = v46;
    while (1)
    {
      v188 = v45;
      v53 = v181;
      (v181)(v50, v180 + v179 * v45, v31);
      (v53)(v38, v50, v31);
      v54 = (*v178)(v38, v31);
      if (v54 == v177)
      {
        break;
      }

      if (v54 == v171)
      {
        (*v176)(v38, v31);
        v58 = v193;
        (*v159)(v193, v38, v24);
        sub_21A176C98(&qword_27CCFFBC0);
        v57 = swift_allocObject();
        *(v57 + 16) = v173;
        *(v57 + 32) = sub_21A2F4EC4();
        *(v57 + 40) = v59;
        (*v192)(v58, v24);
        goto LABEL_10;
      }

      v70 = v168;
      if (v54 != v161)
      {
        goto LABEL_67;
      }

      (*v176)(v38, v31);
      (*v160)(v70, v38, v17);
      v71 = v70;
      v72 = sub_21A2F4DE4();
      v73 = *(v72 + 16);
      if (v73)
      {
        v195 = v49;
        sub_21A25D554(0, v73, 0);
        v57 = v195;
        v74 = (*(v167 + 80) + 32) & ~*(v167 + 80);
        v163 = v72;
        v75 = v72 + v74;
        v76 = *(v167 + 72);
        v77 = *(v167 + 16);
        do
        {
          v78 = v193;
          v79 = v191;
          v77(v193, v75, v191);
          v80 = sub_21A2F4EC4();
          v82 = v81;
          (*v192)(v78, v79);
          v195 = v57;
          v84 = *(v57 + 16);
          v83 = *(v57 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_21A25D554((v83 > 1), v84 + 1, 1);
            v57 = v195;
          }

          *(v57 + 16) = v84 + 1;
          v85 = v57 + 16 * v84;
          *(v85 + 32) = v80;
          *(v85 + 40) = v82;
          v75 += v76;
          --v73;
        }

        while (v73);

        v17 = v170;
        (*v162)(v168, v170);
        v31 = v169;
        (*v175)(v185, v169);
        v42 = v172;
        v24 = v191;
        v49 = MEMORY[0x277D84F90];
      }

      else
      {

        (*v162)(v71, v17);
        (*v175)(v50, v31);
        v57 = v49;
        v24 = v191;
      }

LABEL_11:
      v60 = *(v57 + 16);
      v61 = *(v189 + 2);
      v62 = v61 + v60;
      if (__OFADD__(v61, v60))
      {
        goto LABEL_63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v189;
      if (!isUniquelyReferenced_nonNull_native || v62 > *(v189 + 3) >> 1)
      {
        if (v61 <= v62)
        {
          v65 = v61 + v60;
        }

        else
        {
          v65 = v61;
        }

        v64 = sub_21A1B6970(isUniquelyReferenced_nonNull_native, v65, 1, v189);
      }

      v50 = v185;
      v66 = *(v57 + 16);
      v189 = v64;
      if (v66)
      {
        if ((*(v64 + 3) >> 1) - *(v64 + 2) < v60)
        {
          goto LABEL_65;
        }

        swift_arrayInitWithCopy();

        v51 = v186;
        v38 = v174;
        v52 = v188;
        if (v60)
        {
          v67 = *(v189 + 2);
          v68 = __OFADD__(v67, v60);
          v69 = v67 + v60;
          if (v68)
          {
            goto LABEL_66;
          }

          *(v189 + 2) = v69;
        }
      }

      else
      {

        v51 = v186;
        v38 = v174;
        v52 = v188;
        if (v60)
        {
          goto LABEL_64;
        }
      }

      v45 = (v52 + 1);
      if (v45 == v51)
      {
        goto LABEL_52;
      }
    }

    (*v176)(v38, v31);
    v55 = *v38;
    v56 = v38[1];
    sub_21A176C98(&qword_27CCFFBC0);
    v57 = swift_allocObject();
    *(v57 + 16) = v173;
    *(v57 + 32) = v55;
    *(v57 + 40) = v56;
LABEL_10:
    (*v175)(v50, v31);
    goto LABEL_11;
  }

  v189 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
LABEL_52:
  v132 = *(v189 + 2);
  if (!v132)
  {

    v135 = MEMORY[0x277D84F90];
LABEL_60:
    v148 = type metadata accessor for Duration();
    v149 = *(*(v148 - 8) + 56);
    v150 = v187;
    v149(v187, 1, 1, v148);
    v151 = v164;
    v152 = *(v164 + 20);
    v153 = v158;
    v149(&v158[v152], 1, 1, v148);
    v154 = *(v151 + 28);
    *v153 = 0;
    v153[1] = 0;
    sub_21A27C59C(v150, v153 + v152, &qword_27CCFF3D0);
    *(v153 + *(v151 + 24)) = v135;
    *(v153 + v154) = 0;
    sub_21A176C98(&qword_27CCFFBD0);
    v155 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_21A2FC020;
    sub_21A27D240(v153, v86 + v155, type metadata accessor for StepSection);
    *(v42 + 16) = v86;
LABEL_61:
    sub_21A2F5434();

    return v86;
  }

  v195 = v49;
  sub_21A25D510(0, v132, 0);
  v133 = v189;
  v134 = 0;
  v135 = v195;
  v136 = v189 + 40;
  v191 = xmmword_21A2FC020;
  v192 = v132;
  while (v134 < *(v133 + 2))
  {
    v138 = *(v136 - 1);
    v137 = *v136;
    v139 = type metadata accessor for Duration();
    v140 = *(*(v139 - 8) + 56);
    v141 = v187;
    v140(v187, 1, 1, v139);
    sub_21A176C98(&qword_27CCFFC80);
    v142 = swift_allocObject();
    *(v142 + 16) = v191;
    *(v142 + 32) = v138;
    *(v142 + 40) = v137;
    v193 = v135;
    v143 = MEMORY[0x277D84F90];
    *(v142 + 48) = MEMORY[0x277D84F90];
    *(v142 + 56) = v143;
    *(v142 + 64) = v143;
    v144 = v184;
    v140(v184, 1, 1, v139);
    sub_21A2F5434();
    sub_21A27C59C(v141, v144, &qword_27CCFF3D0);
    v145 = v183;
    *(v144 + *(v183 + 20)) = v143;
    v135 = v193;
    *(v144 + *(v145 + 24)) = v142;
    v195 = v135;
    v147 = *(v135 + 2);
    v146 = *(v135 + 3);
    if (v147 >= v146 >> 1)
    {
      sub_21A25D510(v146 > 1, v147 + 1, 1);
      v144 = v184;
      v135 = v195;
    }

    v134 = (v134 + 1);
    *(v135 + 2) = v147 + 1;
    sub_21A27D240(v144, &v135[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v147], type metadata accessor for Step);
    v136 += 16;
    v133 = v189;
    if (v192 == v134)
    {

      v42 = v172;
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_21A2F8384();
  __break(1u);
  return result;
}

uint64_t sub_21A278F1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v63 = a4;
  v61 = a3;
  v62 = type metadata accessor for StepSection();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - v10;
  v12 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for Step();
  v17 = v16 - 8;
  v60 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v55 - v22;
  v24 = type metadata accessor for Duration();
  v25 = *(*(v24 - 8) + 56);
  v25(v15, 1, 1, v24);
  sub_21A176C98(&qword_27CCFFC80);
  v26 = swift_allocObject();
  v55 = xmmword_21A2FC020;
  *(v26 + 16) = xmmword_21A2FC020;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;
  v27 = MEMORY[0x277D84F90];
  *(v26 + 48) = MEMORY[0x277D84F90];
  *(v26 + 56) = v27;
  *(v26 + 64) = v27;
  v25(v23, 1, 1, v24);
  sub_21A2F5434();
  sub_21A27C59C(v15, v23, &qword_27CCFF3D0);
  *&v23[*(v17 + 28)] = v27;
  v28 = *(v17 + 32);
  v29 = v61;
  *&v23[v28] = v26;
  LOBYTE(v28) = *(v29 + 24);
  v58 = v23;
  if ((v28 & 1) == 0)
  {
    v42 = v60;
    v43 = v62;
    v44 = *(v29 + 16);
    v45 = v56;
    sub_21A27C898(v23, v56, type metadata accessor for Step);
    v46 = v63;
    v47 = *(v63 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v46 + 16) = v47;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v47 = sub_21A27AD44(v47);
      *(v46 + 16) = v47;
      if ((v44 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v44 < v47[2])
        {
          v46 = v47 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v44;
          v43 = *(v43 + 24);
          v47 = *(v46 + v43);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v46 + v43) = v47;
          if (v49)
          {
LABEL_11:
            v51 = v47[2];
            v50 = v47[3];
            if (v51 >= v50 >> 1)
            {
              v54 = sub_21A1B6948(v50 > 1, v51 + 1, 1, v47);
              v52 = v42;
              v47 = v54;
              *(v46 + v43) = v54;
            }

            else
            {
              v52 = v42;
            }

            v47[2] = v51 + 1;
            sub_21A27D240(v45, v47 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, type metadata accessor for Step);
            return sub_21A27D2A8(v58, type metadata accessor for Step);
          }

LABEL_18:
          v47 = sub_21A1B6948(0, v47[2] + 1, 1, v47);
          *(v46 + v43) = v47;
          goto LABEL_11;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v25(v15, 1, 1, v24);
  sub_21A176C98(&qword_27CCFFC88);
  v30 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v55;
  sub_21A27C898(v23, v31 + v30, type metadata accessor for Step);
  v32 = v62;
  v33 = *(v62 + 20);
  v25(&v11[v33], 1, 1, v24);
  v34 = *(v32 + 28);
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_21A27C59C(v15, &v11[v33], &qword_27CCFF3D0);
  *&v11[*(v32 + 24)] = v31;
  *&v11[v34] = 0;
  v35 = v63;
  v36 = *(v63 + 16);
  v37 = v36[2];
  *(v29 + 16) = v37;
  *(v29 + 24) = 0;
  v38 = v57;
  sub_21A27C898(v11, v57, type metadata accessor for StepSection);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *(v35 + 16) = v36;
  if ((v39 & 1) == 0)
  {
    v36 = sub_21A1B6920(0, v37 + 1, 1, v36);
    *(v35 + 16) = v36;
  }

  v41 = v36[2];
  v40 = v36[3];
  if (v41 >= v40 >> 1)
  {
    v36 = sub_21A1B6920(v40 > 1, v41 + 1, 1, v36);
  }

  v36[2] = v41 + 1;
  sub_21A27D240(v38, v36 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v41, type metadata accessor for StepSection);
  *(v35 + 16) = v36;
  sub_21A27D2A8(v11, type metadata accessor for StepSection);
  return sub_21A27D2A8(v58, type metadata accessor for Step);
}

uint64_t Recipe.description.getter()
{
  MEMORY[0x21CED6480](*v0, v0[1]);
  MEMORY[0x21CED6480](62, 0xE100000000000000);
  return 0x3C657069636552;
}

uint64_t sub_21A27955C()
{
  MEMORY[0x21CED6480](*v0, v0[1]);
  MEMORY[0x21CED6480](62, 0xE100000000000000);
  return 0x3C657069636552;
}

uint64_t Recipe.init(id:jsonLDData:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v22 = a4;
  v8 = sub_21A2F4F24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v19 - v15;
  v17 = a1[1];
  v20 = *a1;
  sub_21A2F4464();
  swift_allocObject();
  sub_21A2F4454();
  sub_21A27C850(&qword_27CD00868, MEMORY[0x277CFCC20]);
  sub_21A2F4434();
  if (v4)
  {

    sub_21A180748(a2, a3);
  }

  else
  {
    v21[0] = v20;
    v21[1] = v17;
    (*(v9 + 16))(v12, v16, v8);
    sub_21A272600(v21, v12, v22);

    sub_21A180748(a2, a3);
    return (*(v9 + 8))(v16, v8);
  }
}

uint64_t Recipe.init(externalRecipe:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a1;
  v221 = type metadata accessor for ExternalRecipe(0);
  MEMORY[0x28223BE20](v221, v3);
  v198 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v197 = &v184 - v7;
  v8 = type metadata accessor for ExternalRecipe.Source(0);
  v206 = *(v8 - 8);
  v207 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v196 = (&v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_21A176C98(&qword_27CD03B70);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v205 = &v184 - v13;
  v14 = sub_21A176C98(&qword_27CCFF040);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v208 = (&v184 - v16);
  v192 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v192, v17);
  v194 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v195 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v193 = &v184 - v24;
  v25 = sub_21A176C98(&qword_27CCFEA80);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v199 = &v184 - v27;
  v209 = sub_21A2F4794();
  v201 = *(v209 - 8);
  MEMORY[0x28223BE20](v209, v28);
  v200 = &v184 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v188 = &v184 - v32;
  v211 = sub_21A2F4F24();
  v187 = *(v211 - 1);
  MEMORY[0x28223BE20](v211, v33);
  v35 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v210 = &v184 - v38;
  v186 = sub_21A2F4B94();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186, v39);
  v41 = &v184 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v184 - v44;
  v46 = type metadata accessor for Recipe();
  MEMORY[0x28223BE20](v46, v47);
  v212 = (&v184 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = *(v49 + 28);
  v51 = type metadata accessor for ImageAsset(0);
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v54 = v52 + 56;
  v216 = v50;
  v53(a2 + v50, 1, 1, v51);
  v214 = v46[8];
  v191 = v51;
  v190 = v53;
  v189 = v54;
  v53(a2 + v214, 1, 1, v51);
  *(a2 + v46[9]) = 0;
  *(a2 + v46[10]) = 0;
  v55 = (a2 + v46[11]);
  *v55 = 0u;
  *(v55 + 1) = 0u;
  v215 = v55;
  v56 = v46[12];
  v57 = type metadata accessor for RecipeSourceType();
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v220 = v56;
  v204 = v57;
  v203 = v59;
  v202 = v58 + 56;
  (v59)(a2 + v56, 1, 1);
  v60 = v46[13];
  v61 = type metadata accessor for Duration();
  v62 = *(*(v61 - 8) + 56);
  v219 = v60;
  v62(a2 + v60, 1, 1, v61);
  v217 = v46[14];
  v62(a2 + v217, 1, 1, v61);
  v218 = v46[15];
  v63 = v61;
  v64 = v221;
  v62(a2 + v218, 1, 1, v63);
  v65 = v222;
  *(a2 + v46[16]) = 0;
  v66 = (a2 + v46[19]);
  *v66 = 0;
  v66[1] = 0;
  v67 = (a2 + v46[20]);
  *v67 = 0;
  v67[1] = 0;
  if (*(v65 + v64[10]) == 1)
  {
    sub_21A1806F4(*(v65 + v64[9]), *(v65 + v64[9] + 8));
    v68 = v213;
    sub_21A2F4B34();
    if (v68)
    {
      if (qword_27CCFE7D8 != -1)
      {
        swift_once();
      }

      v69 = sub_21A2F53E4();
      sub_21A177CBC(v69, qword_27CD23CC8);
      v70 = v197;
      sub_21A27C898(v65, v197, type metadata accessor for ExternalRecipe);
      v71 = v68;
      v72 = v68;
      v73 = sub_21A2F53C4();
      v74 = sub_21A2F7DD4();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v223 = v77;
        *v75 = 136446466;
        v78 = (v70 + v64[6]);
        v79 = v70;
        v80 = *v78;
        v81 = v78[1];
        sub_21A2F5434();
        sub_21A27D2A8(v79, type metadata accessor for ExternalRecipe);
        v82 = sub_21A25B5DC(v80, v81, &v223);

        *(v75 + 4) = v82;
        *(v75 + 12) = 2114;
        v83 = v71;
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 14) = v84;
        *v76 = v84;
        v85 = "Error decoding flatbuffer blob for recipe: %{public}s, error: %{public}@";
LABEL_12:
        _os_log_impl(&dword_21A137000, v73, v74, v85, v75, 0x16u);
        sub_21A1427A8(v76, &qword_27CD01020);
        MEMORY[0x21CED7BA0](v76, -1, -1);
        sub_21A142808(v77);
        v98 = v77;
        v65 = v222;
        MEMORY[0x21CED7BA0](v98, -1, -1);
        MEMORY[0x21CED7BA0](v75, -1, -1);

LABEL_14:
        swift_willThrow();
        sub_21A27D2A8(v65, type metadata accessor for ExternalRecipe);
        sub_21A1427A8(a2 + v216, &qword_27CCFEDC0);
        sub_21A1427A8(a2 + v214, &qword_27CCFEDC0);
        sub_21A27C1E0(*v215, v215[1], v215[2], v215[3]);
        sub_21A1427A8(a2 + v220, &qword_27CCFF040);
        sub_21A1427A8(a2 + v219, &qword_27CCFF3D0);
        sub_21A1427A8(a2 + v217, &qword_27CCFF3D0);
        return sub_21A1427A8(a2 + v218, &qword_27CCFF3D0);
      }

      goto LABEL_13;
    }

    v100 = v185;
    v101 = v186;
    (*(v185 + 16))(v41, v45, v186);
    v102 = (v65 + v64[6]);
    v103 = v102[1];
    v223 = *v102;
    v224 = v103;
    sub_21A2F5434();
    sub_21A2766C8(v41, &v223, v212);
    (*(v100 + 8))(v45, v101);
    v104 = 0;
  }

  else
  {
    sub_21A2F4464();
    swift_allocObject();
    sub_21A2F4454();
    v86 = v64;
    sub_21A27C850(&qword_27CD00868, MEMORY[0x277CFCC20]);
    v87 = v213;
    sub_21A2F4434();
    v88 = v87;
    if (v87)
    {

      if (qword_27CCFE7D8 != -1)
      {
        swift_once();
      }

      v89 = sub_21A2F53E4();
      sub_21A177CBC(v89, qword_27CD23CC8);
      v70 = v198;
      sub_21A27C898(v65, v198, type metadata accessor for ExternalRecipe);
      v90 = v87;
      v73 = sub_21A2F53C4();
      v74 = sub_21A2F7DD4();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v223 = v77;
        *v75 = 136446466;
        v91 = (v70 + v64[6]);
        v92 = v70;
        v93 = *v91;
        v94 = v91[1];
        sub_21A2F5434();
        sub_21A27D2A8(v92, type metadata accessor for ExternalRecipe);
        v95 = sub_21A25B5DC(v93, v94, &v223);

        *(v75 + 4) = v95;
        *(v75 + 12) = 2114;
        v96 = v88;
        v97 = _swift_stdlib_bridgeErrorToNSError();
        *(v75 + 14) = v97;
        *v76 = v97;
        v85 = "Error decoding JSON-LD blob for recipe: %{public}s, error: %{public}@";
        goto LABEL_12;
      }

LABEL_13:

      sub_21A27D2A8(v70, type metadata accessor for ExternalRecipe);
      goto LABEL_14;
    }

    v105 = (v65 + v64[6]);
    v106 = v105[1];
    v223 = *v105;
    v224 = v106;
    v107 = v187;
    v108 = v187[2];
    v213 = 0;
    v109 = v210;
    v108(v35, v210, v211);
    sub_21A2F5434();
    sub_21A272600(&v223, v35, v212);

    v110 = v109;
    v104 = v213;
    (v107[1])(v110, v211);
    v64 = v86;
  }

  v111 = v199;
  sub_21A183960(v65, v199, &qword_27CCFEA80);
  v112 = v201;
  v113 = v209;
  v114 = (*(v201 + 48))(v111, 1, v209);
  v213 = v104;
  if (v114 == 1)
  {
    sub_21A1427A8(v111, &qword_27CCFEA80);
    v115 = v212;
  }

  else
  {
    v116 = *(v112 + 32);
    v117 = v188;
    v116(v188, v111, v113);
    v210 = sub_21A2F46A4();
    v201 = v118;
    v116(v200, v117, v113);
    v119 = v65 + *(v221 + 20);
    v120 = *(v119 + 8);
    v199 = *v119;
    v198 = v120;
    LODWORD(v197) = *(v119 + 16);
    v121 = v65 + *(v221 + 44);
    v122 = type metadata accessor for ExternalRecipe.ImageMetadata(0);
    v123 = *(v122 + 52);
    v187 = *(v121 + *(v122 + 48));
    v211 = *(v121 + v123);
    v124 = v192;
    v125 = *(v192 + 28);
    v126 = v194;
    v127 = &v194[*(v192 + 24)];
    *&v194[v125] = 0;
    v128 = v124[8];
    *(v126 + v128) = 0;
    v129 = v124[9];
    *(v126 + v129) = 0;
    v188 = v124[10];
    *&v188[v126] = 0;
    v130 = v209;
    v131 = v201;
    *v126 = v210;
    *(v126 + 8) = v131;
    v116((v126 + v124[5]), v200, v130);
    v64 = v221;
    v132 = v198;
    *v127 = v199;
    *(v127 + 1) = v132;
    v127[16] = v197;
    v210 = *(v126 + v125);
    v133 = v187;
    v134 = v187;

    *(v126 + v125) = v133;
    *(v126 + v128) = 0;
    v65 = v222;

    *(v126 + v129) = 0;
    v135 = (v126 + v124[11]);
    v136 = v188;
    v137 = *&v188[v126];
    v138 = v211;
    v139 = v211;

    *&v136[v126] = v138;
    *v135 = 0u;
    *(v135 + 1) = 0u;
    v135[32] = 1;
    v140 = v193;
    sub_21A27D240(v126, v193, type metadata accessor for ExternalImageAsset);
    v141 = v191;
    swift_storeEnumTagMultiPayload();
    v190(v140, 0, 1, v141);
    v115 = v212;
    sub_21A27C59C(v140, v212 + v46[8], &qword_27CCFEDC0);
  }

  v142 = v65 + v64[12];
  v143 = *(v142 + 24);
  v144 = (v115 + v46[11]);
  v145 = *v144;
  v146 = v144[1];
  v147 = v144[2];
  v148 = v144[3];
  *v144 = *v142;
  *(v144 + 1) = *(v142 + 8);
  v144[3] = v143;
  sub_21A2F5434();
  sub_21A2F5434();
  v149 = v148;
  v150 = v222;
  sub_21A27C1E0(v145, v146, v147, v149);
  v151 = (v150 + v64[13]);
  v153 = *v151;
  v152 = v151[1];
  v154 = (v115 + v46[19]);
  *v154 = v153;
  v154[1] = v152;
  sub_21A2F5434();

  v155 = (v150 + v64[14]);
  v156 = v155[3];
  if (v156)
  {
    v157 = v155[1];
    v158 = v155[2];
    v159 = *v155;
    sub_21A176C98(&qword_27CCFFC78);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_21A2FC020;
    *(v160 + 32) = v159;
    *(v160 + 40) = v157;
    *(v160 + 48) = v158;
    *(v160 + 56) = v156;
    v150 = v222;
    sub_21A2F5434();
    sub_21A2F5434();
  }

  else
  {
    v160 = 0;
  }

  v161 = v46[10];

  *(v115 + v161) = v160;
  v162 = v205;
  sub_21A183960(v150 + v64[15], v205, &qword_27CD03B70);
  v163 = 1;
  if ((*(v206 + 48))(v162, 1, v207) == 1)
  {
    v164 = v208;
    v165 = v204;
  }

  else
  {
    v166 = v196;
    v167 = sub_21A27D240(v162, v196, type metadata accessor for ExternalRecipe.Source);
    v210 = &v184;
    v169 = *v166;
    v168 = v166[1];
    v170 = v166[2];
    v209 = v166[3];
    v171 = v166[5];
    v211 = v166[4];
    MEMORY[0x28223BE20](v167, v172);
    *(&v184 - 2) = v166;
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    v173 = v195;
    v174 = v213;
    sub_21A272398(sub_21A27C900, (&v184 - 4), v195);
    v213 = v174;
    v175 = v208;
    *v208 = v169;
    v175[1] = v168;
    v164 = v175;
    v175[2] = v170;
    v176 = v211;
    v115 = v212;
    v164[3] = v209;
    v164[4] = v176;
    v164[5] = v171;
    v64 = v221;
    v150 = v222;
    v177 = type metadata accessor for ExternalRecipeSource();
    sub_21A149B18(v173, v164 + *(v177 + 28), &qword_27CCFEDC0);
    v165 = v204;
    swift_storeEnumTagMultiPayload();
    sub_21A27D2A8(v166, type metadata accessor for ExternalRecipe.Source);
    v163 = 0;
  }

  v203(v164, v163, 1, v165);
  sub_21A27C59C(v164, v115 + v46[12], &qword_27CCFF040);
  v178 = (v150 + v64[7]);
  v180 = *v178;
  v179 = v178[1];
  sub_21A2F5434();

  v115[2] = v180;
  v115[3] = v179;
  v181 = (v150 + v64[8]);
  v183 = *v181;
  v182 = v181[1];
  sub_21A2F5434();
  sub_21A27D2A8(v150, type metadata accessor for ExternalRecipe);
  if (v182)
  {

    v115[4] = v183;
    v115[5] = v182;
  }

  sub_21A1427A8(a2 + v216, &qword_27CCFEDC0);
  sub_21A1427A8(a2 + v214, &qword_27CCFEDC0);
  sub_21A27C1E0(*v215, v215[1], v215[2], v215[3]);
  sub_21A1427A8(a2 + v220, &qword_27CCFF040);
  sub_21A1427A8(a2 + v219, &qword_27CCFF3D0);
  sub_21A1427A8(a2 + v217, &qword_27CCFF3D0);
  sub_21A1427A8(a2 + v218, &qword_27CCFF3D0);
  return sub_21A27D240(v115, a2, type metadata accessor for Recipe);
}

uint64_t sub_21A27ABB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_21A2F7FF4();

  MEMORY[0x21CED6480](*a2, a2[1]);
  v6 = type metadata accessor for ExternalImageAsset(0);
  v7 = v6[5];
  v8 = sub_21A2F4794();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
  v9 = a2 + *(type metadata accessor for ExternalRecipe.Source(0) + 32);
  v10 = v9[16];
  v11 = v6[7];
  v12 = &a3[v6[6]];
  *&a3[v11] = 0;
  v13 = v6[8];
  *&a3[v13] = 0;
  v14 = v6[9];
  *&a3[v14] = 0;
  v15 = v6[10];
  *&a3[v15] = 0;
  v16 = &a3[v6[11]];
  *a3 = 0xD000000000000010;
  *(a3 + 1) = 0x800000021A31A640;
  *v12 = *v9;
  v12[16] = v10;

  *&a3[v11] = 0;
  *&a3[v13] = 0;

  *&a3[v14] = 0;
  *&a3[v15] = 0;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  type metadata accessor for ImageAsset(0);
  return swift_storeEnumTagMultiPayload();
}

BOOL _s10CookingKit6RecipeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Duration();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3D0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v146 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v147 = &v139 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v150 = &v139 - v17;
  v154 = sub_21A176C98(&qword_27CCFF3D8);
  v19 = MEMORY[0x28223BE20](v154, v18);
  v148 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v149 = &v139 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v152 = &v139 - v25;
  v26 = type metadata accessor for RecipeSourceType();
  v156 = *(v26 - 8);
  v157 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v151 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21A176C98(&qword_27CCFF040);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v153 = &v139 - v31;
  v155 = sub_21A176C98(&qword_27CD03BE0);
  MEMORY[0x28223BE20](v155, v32);
  v158 = &v139 - v33;
  v34 = type metadata accessor for ImageAsset(0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v160 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_21A176C98(&qword_27CCFEDC0);
  v40 = MEMORY[0x28223BE20](v38 - 8, v39);
  v159 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v139 - v43;
  v45 = sub_21A176C98(&qword_27CCFEE00);
  v47 = MEMORY[0x28223BE20](v45, v46);
  v161 = &v139 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v49);
  v51 = &v139 - v50;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21A2F8394() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21A2F8394() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_21A2F8394() & 1) == 0)
  {
    return 0;
  }

  v141 = v5;
  v142 = v4;
  v140 = v8;
  v52 = type metadata accessor for Recipe();
  v53 = *(v52 + 28);
  v54 = *(v45 + 48);
  v144 = a1;
  v145 = v52;
  sub_21A183960(a1 + v53, v51, &qword_27CCFEDC0);
  v143 = a2;
  sub_21A183960(a2 + v53, &v51[v54], &qword_27CCFEDC0);
  v55 = *(v35 + 48);
  if (v55(v51, 1, v34) == 1)
  {
    if (v55(&v51[v54], 1, v34) == 1)
    {
      sub_21A1427A8(v51, &qword_27CCFEDC0);
      goto LABEL_17;
    }

LABEL_15:
    v56 = &qword_27CCFEE00;
    v57 = v51;
LABEL_23:
    sub_21A1427A8(v57, v56);
    return 0;
  }

  sub_21A183960(v51, v44, &qword_27CCFEDC0);
  if (v55(&v51[v54], 1, v34) == 1)
  {
    sub_21A27D2A8(v44, type metadata accessor for ImageAsset);
    goto LABEL_15;
  }

  v58 = v160;
  sub_21A27D240(&v51[v54], v160, type metadata accessor for ImageAsset);
  v59 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v44, v58);
  sub_21A27D2A8(v58, type metadata accessor for ImageAsset);
  sub_21A27D2A8(v44, type metadata accessor for ImageAsset);
  sub_21A1427A8(v51, &qword_27CCFEDC0);
  if (!v59)
  {
    return 0;
  }

LABEL_17:
  v60 = v144;
  v61 = v145[8];
  v62 = *(v45 + 48);
  v63 = v161;
  sub_21A183960(v144 + v61, v161, &qword_27CCFEDC0);
  v64 = v143;
  sub_21A183960(v143 + v61, v63 + v62, &qword_27CCFEDC0);
  if (v55(v63, 1, v34) == 1)
  {
    if (v55((v63 + v62), 1, v34) == 1)
    {
      sub_21A1427A8(v63, &qword_27CCFEDC0);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v65 = v159;
  sub_21A183960(v63, v159, &qword_27CCFEDC0);
  if (v55((v63 + v62), 1, v34) == 1)
  {
    sub_21A27D2A8(v65, type metadata accessor for ImageAsset);
LABEL_22:
    v56 = &qword_27CCFEE00;
    v57 = v63;
    goto LABEL_23;
  }

  v67 = v160;
  sub_21A27D240(v63 + v62, v160, type metadata accessor for ImageAsset);
  v68 = _s10CookingKit10ImageAssetO2eeoiySbAC_ACtFZ_0(v65, v67);
  sub_21A27D2A8(v67, type metadata accessor for ImageAsset);
  sub_21A27D2A8(v65, type metadata accessor for ImageAsset);
  sub_21A1427A8(v63, &qword_27CCFEDC0);
  if (!v68)
  {
    return 0;
  }

LABEL_26:
  v69 = v145[9];
  v70 = *(v60 + v69);
  v71 = *(v64 + v69);
  if (v70)
  {
    if (!v71)
    {
      return 0;
    }

    sub_21A2F5434();
    v72 = sub_21A19C2DC(v70, v71);

    if ((v72 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v71)
  {
    return 0;
  }

  v73 = v145[10];
  v74 = *(v60 + v73);
  v75 = *(v64 + v73);
  if (v74)
  {
    if (!v75 || (sub_21A19C938(v74, v75) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  v76 = v145[11];
  v77 = *(v60 + v76);
  v78 = *(v60 + v76 + 8);
  v79 = *(v60 + v76 + 16);
  v80 = *(v60 + v76 + 24);
  v81 = (v64 + v76);
  v83 = *v81;
  v82 = v81[1];
  v84 = v81[2];
  v85 = v81[3];
  if (!v80)
  {
    sub_21A274498(v77, v78, v79, 0);
    if (!v85)
    {
      sub_21A274498(v83, v82, v84, 0);
      v80 = 0;
      goto LABEL_56;
    }

    sub_21A274498(v83, v82, v84, v85);
LABEL_47:
    sub_21A27C1E0(v77, v78, v79, v80);
    v87 = v83;
    v88 = v82;
    v89 = v84;
    v90 = v85;
LABEL_51:
    sub_21A27C1E0(v87, v88, v89, v90);
    return 0;
  }

  if (!v85)
  {
    sub_21A274498(v77, v78, v79, v80);
    sub_21A274498(v83, v82, v84, 0);
    sub_21A274498(v77, v78, v79, v80);

    goto LABEL_47;
  }

  if (v78)
  {
    if (!v82 || (v77 != v83 || v78 != v82) && (sub_21A2F8394() & 1) == 0)
    {
      v86 = v78;
LABEL_50:
      sub_21A274498(v77, v86, v79, v80);
      sub_21A274498(v83, v82, v84, v85);
      sub_21A274498(v77, v86, v79, v80);
      sub_21A27C1E0(v83, v82, v84, v85);

      v87 = v77;
      v88 = v78;
      v89 = v79;
      v90 = v80;
      goto LABEL_51;
    }
  }

  else if (v82)
  {
    v86 = 0;
    goto LABEL_50;
  }

  if (v79 == v84 && v80 == v85)
  {
    sub_21A274498(v77, v78, v79, v80);
    sub_21A274498(v83, v82, v79, v80);
    sub_21A274498(v77, v78, v79, v80);
    sub_21A27C1E0(v83, v82, v79, v80);

LABEL_56:
    sub_21A27C1E0(v77, v78, v79, v80);
    v91 = v144;
    v93 = v141;
    v92 = v142;
    goto LABEL_57;
  }

  v100 = sub_21A2F8394();
  sub_21A274498(v77, v78, v79, v80);
  sub_21A274498(v83, v82, v84, v85);
  sub_21A274498(v77, v78, v79, v80);
  sub_21A27C1E0(v83, v82, v84, v85);

  sub_21A27C1E0(v77, v78, v79, v80);
  v91 = v144;
  v93 = v141;
  v92 = v142;
  if ((v100 & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  v94 = v145[12];
  v95 = *(v155 + 48);
  v96 = v158;
  sub_21A183960(v91 + v94, v158, &qword_27CCFF040);
  sub_21A183960(v64 + v94, v96 + v95, &qword_27CCFF040);
  v97 = v157;
  v98 = *(v156 + 48);
  if (v98(v96, 1, v157) == 1)
  {
    if (v98(v96 + v95, 1, v97) == 1)
    {
      sub_21A1427A8(v96, &qword_27CCFF040);
      goto LABEL_66;
    }

    goto LABEL_62;
  }

  v99 = v153;
  sub_21A183960(v96, v153, &qword_27CCFF040);
  if (v98(v96 + v95, 1, v97) == 1)
  {
    sub_21A27D2A8(v99, type metadata accessor for RecipeSourceType);
LABEL_62:
    v56 = &qword_27CD03BE0;
    v57 = v96;
    goto LABEL_23;
  }

  v101 = v96 + v95;
  v102 = v151;
  sub_21A27D240(v101, v151, type metadata accessor for RecipeSourceType);
  v103 = _s10CookingKit16RecipeSourceTypeO2eeoiySbAC_ACtFZ_0(v99, v102);
  sub_21A27D2A8(v102, type metadata accessor for RecipeSourceType);
  sub_21A27D2A8(v99, type metadata accessor for RecipeSourceType);
  sub_21A1427A8(v96, &qword_27CCFF040);
  if (!v103)
  {
    return 0;
  }

LABEL_66:
  v104 = v145[13];
  v105 = *(v154 + 48);
  v106 = v152;
  sub_21A183960(v91 + v104, v152, &qword_27CCFF3D0);
  sub_21A183960(v64 + v104, v106 + v105, &qword_27CCFF3D0);
  v107 = *(v93 + 48);
  if (v107(v106, 1, v92) == 1)
  {
    if (v107(v106 + v105, 1, v92) != 1)
    {
LABEL_76:
      v56 = &qword_27CCFF3D8;
      v57 = v106;
      goto LABEL_23;
    }

    sub_21A1427A8(v106, &qword_27CCFF3D0);
  }

  else
  {
    v108 = v150;
    sub_21A183960(v106, v150, &qword_27CCFF3D0);
    if (v107(v106 + v105, 1, v92) == 1)
    {
LABEL_75:
      sub_21A27D2A8(v108, type metadata accessor for Duration);
      goto LABEL_76;
    }

    v109 = v106 + v105;
    v110 = v140;
    sub_21A27D240(v109, v140, type metadata accessor for Duration);
    v111 = static Duration.== infix(_:_:)(v108, v110);
    sub_21A27D2A8(v110, type metadata accessor for Duration);
    sub_21A27D2A8(v108, type metadata accessor for Duration);
    sub_21A1427A8(v106, &qword_27CCFF3D0);
    if ((v111 & 1) == 0)
    {
      return 0;
    }
  }

  v112 = v145[14];
  v113 = *(v154 + 48);
  v106 = v149;
  sub_21A183960(v91 + v112, v149, &qword_27CCFF3D0);
  sub_21A183960(v64 + v112, v106 + v113, &qword_27CCFF3D0);
  if (v107(v106, 1, v92) == 1)
  {
    if (v107(v106 + v113, 1, v92) == 1)
    {
      sub_21A1427A8(v106, &qword_27CCFF3D0);
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v108 = v147;
  sub_21A183960(v106, v147, &qword_27CCFF3D0);
  if (v107(v106 + v113, 1, v92) == 1)
  {
    goto LABEL_75;
  }

  v114 = v106 + v113;
  v115 = v140;
  sub_21A27D240(v114, v140, type metadata accessor for Duration);
  v116 = static Duration.== infix(_:_:)(v108, v115);
  sub_21A27D2A8(v115, type metadata accessor for Duration);
  sub_21A27D2A8(v108, type metadata accessor for Duration);
  sub_21A1427A8(v106, &qword_27CCFF3D0);
  if ((v116 & 1) == 0)
  {
    return 0;
  }

LABEL_78:
  v117 = v145[15];
  v118 = *(v154 + 48);
  v119 = v91 + v117;
  v120 = v148;
  sub_21A183960(v119, v148, &qword_27CCFF3D0);
  sub_21A183960(v64 + v117, v120 + v118, &qword_27CCFF3D0);
  if (v107(v120, 1, v92) == 1)
  {
    if (v107(v120 + v118, 1, v92) == 1)
    {
      sub_21A1427A8(v148, &qword_27CCFF3D0);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  sub_21A183960(v120, v146, &qword_27CCFF3D0);
  if (v107(v120 + v118, 1, v92) == 1)
  {
    sub_21A27D2A8(v146, type metadata accessor for Duration);
LABEL_83:
    v56 = &qword_27CCFF3D8;
    v57 = v148;
    goto LABEL_23;
  }

  v121 = v148;
  v122 = v140;
  sub_21A27D240(v148 + v118, v140, type metadata accessor for Duration);
  v123 = v146;
  v124 = static Duration.== infix(_:_:)(v146, v122);
  sub_21A27D2A8(v122, type metadata accessor for Duration);
  sub_21A27D2A8(v123, type metadata accessor for Duration);
  sub_21A1427A8(v121, &qword_27CCFF3D0);
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_85:
  v125 = v145[16];
  v126 = *(v144 + v125);
  v127 = *(v143 + v125);
  if (v126)
  {
    if (!v127)
    {
      return 0;
    }

    sub_21A2F5434();
    v128 = sub_21A19CA20(v126, v127);

    if ((v128 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v127)
  {
    return 0;
  }

  if ((sub_21A19D640(*(v144 + v145[17]), *(v143 + v145[17])) & 1) == 0 || (sub_21A19DADC(*(v144 + v145[18]), *(v143 + v145[18])) & 1) == 0)
  {
    return 0;
  }

  v129 = v145[19];
  v130 = (v144 + v129);
  v131 = *(v144 + v129 + 8);
  v132 = (v143 + v129);
  v133 = v132[1];
  if (v131)
  {
    if (!v133 || (*v130 != *v132 || v131 != v133) && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v133)
  {
    return 0;
  }

  v134 = v145[20];
  v135 = (v144 + v134);
  v136 = *(v144 + v134 + 8);
  v137 = (v143 + v134);
  v138 = v137[1];
  if (v136)
  {
    if (!v138 || (*v135 != *v137 || v136 != v138) && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v138)
  {
    return 0;
  }

  return *(v144 + v145[21]) == *(v143 + v145[21]);
}

unint64_t sub_21A27C060()
{
  result = qword_27CD03AA0;
  if (!qword_27CD03AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03AA0);
  }

  return result;
}

unint64_t sub_21A27C0B4()
{
  result = qword_27CD03AC0;
  if (!qword_27CD03AC0)
  {
    sub_21A176D98(&qword_27CD03AB8);
    sub_21A27C138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03AC0);
  }

  return result;
}

unint64_t sub_21A27C138()
{
  result = qword_27CD03AC8;
  if (!qword_27CD03AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03AC8);
  }

  return result;
}

unint64_t sub_21A27C18C()
{
  result = qword_27CD03AD0;
  if (!qword_27CD03AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03AD0);
  }

  return result;
}

uint64_t sub_21A27C1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_21A27C224()
{
  result = qword_27CD03AE8;
  if (!qword_27CD03AE8)
  {
    sub_21A176D98(&qword_27CD03AE0);
    sub_21A27C2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03AE8);
  }

  return result;
}

unint64_t sub_21A27C2A8()
{
  result = qword_27CD03AF0;
  if (!qword_27CD03AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03AF0);
  }

  return result;
}

unint64_t sub_21A27C2FC()
{
  result = qword_27CD02408;
  if (!qword_27CD02408)
  {
    sub_21A176D98(&qword_27CD02400);
    sub_21A22CCA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02408);
  }

  return result;
}

unint64_t sub_21A27C380()
{
  result = qword_27CD03B10;
  if (!qword_27CD03B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B10);
  }

  return result;
}

uint64_t sub_21A27C3D4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD03AA8);
    sub_21A27C850(a2, type metadata accessor for ImageAsset);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A27C470()
{
  result = qword_27CD03B28;
  if (!qword_27CD03B28)
  {
    sub_21A176D98(&qword_27CD03AB8);
    sub_21A27C4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B28);
  }

  return result;
}

unint64_t sub_21A27C4F4()
{
  result = qword_27CD03B30;
  if (!qword_27CD03B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B30);
  }

  return result;
}

unint64_t sub_21A27C548()
{
  result = qword_27CD03B38;
  if (!qword_27CD03B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B38);
  }

  return result;
}

uint64_t sub_21A27C59C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_21A176C98(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A27C604()
{
  result = qword_27CD03B48;
  if (!qword_27CD03B48)
  {
    sub_21A176D98(&qword_27CD03AE0);
    sub_21A27C688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B48);
  }

  return result;
}

unint64_t sub_21A27C688()
{
  result = qword_27CD03B50;
  if (!qword_27CD03B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B50);
  }

  return result;
}

unint64_t sub_21A27C6DC()
{
  result = qword_27CD02438;
  if (!qword_27CD02438)
  {
    sub_21A176D98(&qword_27CD02400);
    sub_21A22CDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD02438);
  }

  return result;
}

uint64_t sub_21A27C760(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(&qword_27CD03AF8);
    sub_21A27C850(a2, type metadata accessor for StepSection);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A27C7FC()
{
  result = qword_27CD03B68;
  if (!qword_27CD03B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B68);
  }

  return result;
}

uint64_t sub_21A27C850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A27C898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for Recipe.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Recipe.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A27CA84()
{
  result = qword_27CD03B78;
  if (!qword_27CD03B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B78);
  }

  return result;
}

unint64_t sub_21A27CADC()
{
  result = qword_27CD03B80;
  if (!qword_27CD03B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B80);
  }

  return result;
}

unint64_t sub_21A27CB34()
{
  result = qword_27CD03B88;
  if (!qword_27CD03B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B88);
  }

  return result;
}

unint64_t sub_21A27CB8C()
{
  result = qword_27CD03B90;
  if (!qword_27CD03B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B90);
  }

  return result;
}

unint64_t sub_21A27CBE4()
{
  result = qword_27CD03B98;
  if (!qword_27CD03B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03B98);
  }

  return result;
}

unint64_t sub_21A27CC3C()
{
  result = qword_27CD03BA0;
  if (!qword_27CD03BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03BA0);
  }

  return result;
}

uint64_t sub_21A27CC90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEF747865546E6F69 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEE006567616D496CLL || (sub_21A2F8394() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67616D496F726568 && a2 == 0xE900000000000065 || (sub_21A2F8394() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73726F68747561 && a2 == 0xE700000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xE900000000000072 || (sub_21A2F8394() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D695470657270 && a2 == 0xE800000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D69546B6F6F63 && a2 == 0xE800000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065 || (sub_21A2F8394() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6959657069636572 && a2 == 0xEB00000000646C65 || (sub_21A2F8394() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL || (sub_21A2F8394() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7463655370657473 && a2 == 0xEC000000736E6F69 || (sub_21A2F8394() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x656C626174697573 && a2 == 0xEF74656944726F46 || (sub_21A2F8394() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_21A2F8394() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021A31A620 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_21A2F8394();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_21A27D240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A27D2A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Catalog.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_21A2F7BC4();
  WitnessTable = swift_getWitnessTable();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_21A2AF770(KeyPath, v3, WitnessTable, AssociatedConformanceWitness);

  *a1 = v6;
  return result;
}

uint64_t Catalog.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v30 = sub_21A2F7EA4();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v6);
  v29 = v28 - v7;
  v28[1] = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21A2F7EA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v28 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = v28 - v22;
  (*(v10 + 16))(v13, a2, v9, v21);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    v24 = *(v10 + 8);
    v24(a2, v9);
    (*(v5 + 8))(v31, v30);
    return (v24)(v13, v9);
  }

  else
  {
    (*(v14 + 32))(v23, v13, AssociatedTypeWitness);
    (*(v14 + 16))(v18, v23, AssociatedTypeWitness);
    v26 = *(v5 + 16);
    v28[0] = a2;
    v27 = v30;
    v26(v29, v31, v30);
    swift_getAssociatedConformanceWitness();
    sub_21A2F77A4();
    sub_21A2F77E4();
    (*(v10 + 8))(v28[0], v9);
    (*(v5 + 8))(v31, v27);
    return (*(v14 + 8))(v23, AssociatedTypeWitness);
  }
}

uint64_t Catalog.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v4 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21A2F7EA4();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v17 - v14;
  (*(v7 + 16))(v11, a1, v6);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v11, v6);
    return (*(*(v4 - 8) + 56))(v18, 1, 1, v4);
  }

  else
  {
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    sub_21A2F77D4();
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }
}

uint64_t static Catalog.empty.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_21A2F7B64();

  return Catalog.init(_:)(a1);
}

uint64_t sub_21A27DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21A2F7EA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  swift_getAssociatedTypeWitness();
  v10 = sub_21A2F7EA4();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v18 - v13;
  (*(v15 + 16))(&v18 - v13, a3, v12);
  (*(v6 + 16))(v9, a1, v5);
  v16 = type metadata accessor for Catalog();
  return Catalog.subscript.setter(v9, v14, v16);
}

void (*Catalog.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = sub_21A2F7EA4();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v9[5] = v13;
  swift_getAssociatedTypeWitness();
  v15 = sub_21A2F7EA4();
  v9[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v9[7] = v16;
  v18 = *(v16 + 64);
  if (v7)
  {
    v9[8] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[8] = malloc(*(v16 + 64));
    v19 = malloc(v18);
  }

  v9[9] = v19;
  (*(v17 + 16))();
  Catalog.subscript.getter(a2, a3, v14);
  return sub_21A27DE60;
}

void sub_21A27DE60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    Catalog.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    Catalog.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_21A27DFA0()
{
  sub_21A2377D8();
  sub_21A2F5EE4();
  return v1;
}

uint64_t sub_21A27DFDC()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v17 - v8);
  swift_getKeyPath();
  v18 = v0;
  sub_21A27F290();
  sub_21A2F5094();

  v11 = *(v0 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID + 8);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
    sub_21A2F5434();
    if (static ExportToGroceryListUtility.hasRecipeBeenExportedToGroceryList(_:)(v12, v11))
    {
      sub_21A258084(v12, v11, v9);
    }

    else
    {
      v13 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
      (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    }

    sub_21A27F2E8(v9, v5);
    sub_21A27E7A0(v5);
    v14 = sub_21A260A1C(v9, v12, v11) & 1;

    if (v14 == *(v1 + 16))
    {
      result = sub_21A1427A8(v9, &qword_27CD004F8);
      *(v1 + 16) = v14;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v16);
      *(&v17 - 2) = v1;
      *(&v17 - 8) = v14;
      v18 = v1;
      sub_21A2F5084();

      return sub_21A1427A8(v9, &qword_27CD004F8);
    }
  }

  return result;
}

uint64_t sub_21A27E24C()
{
  swift_getKeyPath();
  sub_21A27F290();
  sub_21A2F5094();

  return *(v0 + 16);
}

uint64_t sub_21A27E2BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A27F290();
  sub_21A2F5094();

  return sub_21A27F2E8(v1 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails, a1);
}

void sub_21A27E340(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    sub_21A27F290();
    sub_21A2F5084();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_21A1D13A8();
  v3 = v2;
  v4 = sub_21A2F7E74();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21A27E4B0()
{
  swift_getKeyPath();
  sub_21A27F290();
  sub_21A2F5094();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21A27E52C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A27F290();
  sub_21A2F5094();

  *a2 = *(v3 + 16);
  return result;
}

unsigned __int8 *sub_21A27E5A4(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == *(*a2 + 16))
  {
    *(*a2 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A27F290();
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A27E688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A27F290();
  sub_21A2F5094();

  return sub_21A27F2E8(v3 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails, a2);
}

uint64_t sub_21A27E70C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  sub_21A27F2E8(a1, &v7 - v4);
  return sub_21A27E7A0(v5);
}

uint64_t sub_21A27E7A0(uint64_t a1)
{
  v3 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_21A176C98(&qword_27CD03C20);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - v11;
  v13 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v32 - v19;
  v21 = OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails;
  sub_21A27F2E8(v1 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails, &v32 - v19);
  v22 = *(v9 + 56);
  sub_21A27F2E8(v20, v12);
  v33 = a1;
  sub_21A27F2E8(a1, &v12[v22]);
  v23 = *(v4 + 48);
  if (v23(v12, 1, v3) == 1)
  {
    sub_21A1427A8(v20, &qword_27CD004F8);
    if (v23(&v12[v22], 1, v3) == 1)
    {
      sub_21A1427A8(v12, &qword_27CD004F8);
      v24 = v33;
LABEL_15:
      sub_21A27F390(v24, v1 + v21);
      return sub_21A1427A8(v24, &qword_27CD004F8);
    }

    goto LABEL_6;
  }

  sub_21A27F2E8(v12, v16);
  if (v23(&v12[v22], 1, v3) == 1)
  {
    sub_21A1427A8(v20, &qword_27CD004F8);
    sub_21A261730(v16);
LABEL_6:
    v25 = &qword_27CD03C20;
    v26 = v12;
LABEL_7:
    sub_21A1427A8(v26, v25);
    v24 = v33;
    goto LABEL_8;
  }

  sub_21A27F400(&v12[v22], v7);
  v29 = *v16 == *v7 && v16[1] == v7[1];
  if (!v29 && (sub_21A2F8394() & 1) == 0)
  {
    sub_21A1427A8(v20, &qword_27CD004F8);
    sub_21A261730(v7);
    sub_21A261730(v16);
    v26 = v12;
    v25 = &qword_27CD004F8;
    goto LABEL_7;
  }

  v30 = sub_21A2F4954();
  sub_21A1427A8(v20, &qword_27CD004F8);
  sub_21A261730(v7);
  sub_21A261730(v16);
  sub_21A1427A8(v12, &qword_27CD004F8);
  v24 = v33;
  if (v30)
  {
    goto LABEL_15;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v28);
  *(&v32 - 2) = v1;
  *(&v32 - 1) = v24;
  v34 = v1;
  sub_21A27F290();
  sub_21A2F5084();

  return sub_21A1427A8(v24, &qword_27CD004F8);
}

uint64_t sub_21A27EBDC()
{
  swift_getKeyPath();
  sub_21A27F290();
  sub_21A2F5094();

  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A27EC68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A27F290();
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A27ECF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A27ED30(v1, v2);
}

uint64_t sub_21A27ED30(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
  v6 = *(v2 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_21A2F8394() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v10);
    sub_21A27F290();
    sub_21A2F5084();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_21A27EE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
  *v3 = a2;
  v3[1] = a3;
  sub_21A2F5434();
}

uint64_t sub_21A27EEC4(uint64_t a1)
{
  v3 = sub_21A176C98(&qword_27CD004F8);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v10 - v5;
  if (*(v1 + 16) == 1)
  {
    *(v1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    v10[-2] = v1;
    LOBYTE(v10[-1]) = 1;
    v10[1] = v1;
    sub_21A27F290();
    sub_21A2F5084();
  }

  sub_21A27F2E8(a1, v6);
  return sub_21A27E7A0(v6);
}

uint64_t sub_21A27F018()
{
  sub_21A1427A8(v0 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__remindersListDetails, &qword_27CD004F8);
  MEMORY[0x21CED7C70](v0 + OBJC_IVAR____TtC10CookingKit18GroceryExportState__presentingViewController);

  v1 = OBJC_IVAR____TtC10CookingKit18GroceryExportState___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GroceryExportState()
{
  result = qword_27CD03C08;
  if (!qword_27CD03C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A27F14C()
{
  sub_21A27F238();
  if (v0 <= 0x3F)
  {
    sub_21A2F50D4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21A27F238()
{
  if (!qword_27CD03C18)
  {
    type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
    v0 = sub_21A2F7EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD03C18);
    }
  }
}

unint64_t sub_21A27F290()
{
  result = qword_27CD004E8;
  if (!qword_27CD004E8)
  {
    type metadata accessor for GroceryExportState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD004E8);
  }

  return result;
}

uint64_t sub_21A27F2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD004F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A27F390(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CD004F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A27F400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportToGroceryListUtility.RemindersListDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A27F49C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC10CookingKit18GroceryExportState__recipeID);
  *v2 = v0[3];
  v2[1] = v1;
  sub_21A2F5434();
}

uint64_t dispatch thunk of RecipeLoaderType.load(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A145E2C;

  return v9(a1, a2, a3);
}

uint64_t sub_21A27F610(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x2822009F8](sub_21A27F630, 0, 0);
}

uint64_t sub_21A27F630()
{
  v1 = v0[10];
  v2 = type metadata accessor for Recipe();
  if (*(v1 + *(v2 + 80) + 8))
  {
    v3 = v0[9];
    v4 = v1;
LABEL_3:
    sub_21A1944B0(v4, v3);
    goto LABEL_6;
  }

  v5 = v2;
  sub_21A176C98(&qword_27CD03C28);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21A2FC020;
  v7 = *MEMORY[0x277CD8950];
  *(v6 + 32) = *MEMORY[0x277CD8950];
  v8 = objc_allocWithZone(MEMORY[0x277CD89D8]);
  type metadata accessor for NLTagScheme(0);
  v9 = v7;
  v10 = sub_21A2F7B04();

  v11 = [v8 initWithTagSchemes_];

  v0[2] = *(v1 + *(v5 + 72));
  v0[3] = sub_21A27F968;
  v0[4] = 0;
  v0[5] = sub_21A27F980;
  v0[6] = 0;
  v0[7] = sub_21A27F9E4;
  v0[8] = 0;
  sub_21A2F5434();
  sub_21A176C98(&qword_27CD03C30);
  sub_21A27FB60(&qword_27CD03C38, &qword_27CD03C30, &unk_21A30F260, sub_21A27FA90);
  sub_21A2F7834();

  v12 = sub_21A2F78A4();

  [v11 setString_];

  v13 = [v11 dominantLanguage];
  if (!v13)
  {
    if (qword_27CCFE7D8 != -1)
    {
      swift_once();
    }

    v22 = sub_21A2F53E4();
    sub_21A177CBC(v22, qword_27CD23CC8);
    v23 = sub_21A2F53C4();
    v24 = sub_21A2F7DD4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21A137000, v23, v24, "Failed to determine recipe language", v25, 2u);
      MEMORY[0x21CED7BA0](v25, -1, -1);
    }

    v27 = v0[9];
    v26 = v0[10];

    v4 = v26;
    v3 = v27;
    goto LABEL_3;
  }

  v14 = v13;
  v15 = v0[9];
  sub_21A1944B0(v0[10], v15);
  v16 = sub_21A2F78E4();
  v18 = v17;

  v19 = (v15 + *(v5 + 80));

  *v19 = v16;
  v19[1] = v18;
LABEL_6:
  v20 = v0[1];

  return v20();
}

uint64_t sub_21A27F998@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = *(a1 + *(a2(0) + 24));

  return sub_21A2F5434();
}

uint64_t sub_21A27F9E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A27F9F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A145E2C;

  return sub_21A27F610(a1, a2);
}

unint64_t sub_21A27FA90()
{
  result = qword_27CD03C40;
  if (!qword_27CD03C40)
  {
    sub_21A176D98(&qword_27CD03C48);
    sub_21A27FB60(&qword_27CD03C50, &qword_27CD03C58, &unk_21A30F270, sub_21A27FBDC);
    sub_21A27FD1C(&qword_27CD03C90, &qword_27CD03C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03C40);
  }

  return result;
}

uint64_t sub_21A27FB60(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A27FBDC()
{
  result = qword_27CD03C60;
  if (!qword_27CD03C60)
  {
    sub_21A176D98(&qword_27CD03C68);
    sub_21A27FC80();
    sub_21A27FD1C(&qword_27CD03C88, &qword_27CD023E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03C60);
  }

  return result;
}

unint64_t sub_21A27FC80()
{
  result = qword_27CD03C70;
  if (!qword_27CD03C70)
  {
    sub_21A176D98(&qword_27CD03C78);
    sub_21A27FD1C(&qword_27CD03C80, &qword_27CD03AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03C70);
  }

  return result;
}

uint64_t sub_21A27FD1C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A27FD90()
{
  v1 = 0x726564616568;
  v2 = 0x7463757274736E69;
  if (*v0 != 2)
  {
    v2 = 0x736C6961746564;
  }

  if (*v0)
  {
    v1 = 0x6569646572676E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21A27FE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A281258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A27FE40(uint64_t a1)
{
  v2 = sub_21A2804D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A27FE7C(uint64_t a1)
{
  v2 = sub_21A2804D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A27FEB8(uint64_t a1)
{
  v2 = sub_21A280524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A27FEF4(uint64_t a1)
{
  v2 = sub_21A280524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A27FF30(uint64_t a1)
{
  v2 = sub_21A280620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A27FF6C(uint64_t a1)
{
  v2 = sub_21A280620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A27FFA8(uint64_t a1)
{
  v2 = sub_21A2805CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A27FFE4(uint64_t a1)
{
  v2 = sub_21A2805CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A280020(uint64_t a1)
{
  v2 = sub_21A280578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A28005C(uint64_t a1)
{
  v2 = sub_21A280578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeCardRegion.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD03CA0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v35 = &v27 - v5;
  v6 = sub_21A176C98(&qword_27CD03CA8);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v32 = &v27 - v8;
  v9 = sub_21A176C98(&qword_27CD03CB0);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v29 = &v27 - v11;
  v12 = sub_21A176C98(&qword_27CD03CB8);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v27 - v14;
  v16 = sub_21A176C98(&qword_27CD03CC0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v27 - v19;
  v21 = *v1;
  sub_21A142764(a1, a1[3]);
  sub_21A2804D0();
  sub_21A2F84B4();
  v22 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v40 = 2;
      sub_21A280578();
      v23 = v32;
      sub_21A2F82A4();
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v41 = 3;
      sub_21A280524();
      v23 = v35;
      sub_21A2F82A4();
      v25 = v36;
      v24 = v37;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v39 = 1;
    sub_21A2805CC();
    v23 = v29;
    sub_21A2F82A4();
    v25 = v30;
    v24 = v31;
LABEL_8:
    (*(v25 + 8))(v23, v24);
    return (*v22)(v20, v16);
  }

  v38 = 0;
  sub_21A280620();
  sub_21A2F82A4();
  (*(v27 + 8))(v15, v28);
  return (*v22)(v20, v16);
}

unint64_t sub_21A2804D0()
{
  result = qword_27CD03CC8;
  if (!qword_27CD03CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03CC8);
  }

  return result;
}

unint64_t sub_21A280524()
{
  result = qword_27CD03CD0;
  if (!qword_27CD03CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03CD0);
  }

  return result;
}

unint64_t sub_21A280578()
{
  result = qword_27CD03CD8;
  if (!qword_27CD03CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03CD8);
  }

  return result;
}

unint64_t sub_21A2805CC()
{
  result = qword_27CD03CE0;
  if (!qword_27CD03CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03CE0);
  }

  return result;
}

unint64_t sub_21A280620()
{
  result = qword_27CD03CE8;
  if (!qword_27CD03CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03CE8);
  }

  return result;
}

uint64_t RecipeCardRegion.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t RecipeCardRegion.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v46 = sub_21A176C98(&qword_27CD03CF0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v3);
  v49 = &v39 - v4;
  v47 = sub_21A176C98(&qword_27CD03CF8);
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v5);
  v48 = &v39 - v6;
  v45 = sub_21A176C98(&qword_27CD03D00);
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v7);
  v9 = &v39 - v8;
  v10 = sub_21A176C98(&qword_27CD03D08);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v39 - v12;
  v14 = sub_21A176C98(&qword_27CD03D10);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v39 - v17;
  v19 = a1[3];
  v52 = a1;
  sub_21A142764(a1, v19);
  sub_21A2804D0();
  v20 = v51;
  sub_21A2F8494();
  if (!v20)
  {
    v21 = v13;
    v39 = v10;
    v40 = 0;
    v22 = v9;
    v23 = v48;
    v24 = v49;
    v51 = v15;
    v25 = v50;
    v26 = v18;
    v27 = sub_21A2F8294();
    v28 = (2 * *(v27 + 16)) | 1;
    v53 = v27;
    v54 = v27 + 32;
    v55 = 0;
    v56 = v28;
    v29 = sub_21A207C9C();
    if (v29 == 4 || v55 != v56 >> 1)
    {
      v31 = sub_21A2F8064();
      swift_allocError();
      v33 = v32;
      sub_21A176C98(&qword_27CD012F0);
      *v33 = &type metadata for RecipeCardRegion;
      sub_21A2F8204();
      sub_21A2F8054();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
LABEL_9:
      (*(v51 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return sub_21A142808(v52);
    }

    v57 = v29;
    if (v29 <= 1u)
    {
      if (v29)
      {
        v58 = 1;
        sub_21A2805CC();
        v37 = v40;
        sub_21A2F81F4();
        if (!v37)
        {
          (*(v41 + 8))(v22, v45);
          goto LABEL_17;
        }
      }

      else
      {
        v58 = 0;
        sub_21A280620();
        v30 = v40;
        sub_21A2F81F4();
        if (!v30)
        {
          (*(v42 + 8))(v21, v39);
LABEL_17:
          (*(v51 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v25 = v57;
          return sub_21A142808(v52);
        }
      }

      goto LABEL_9;
    }

    v35 = v51;
    if (v29 == 2)
    {
      v58 = 2;
      sub_21A280578();
      v36 = v40;
      sub_21A2F81F4();
      if (!v36)
      {
        (*(v43 + 8))(v23, v47);
LABEL_21:
        (*(v35 + 8))(v26, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v58 = 3;
      sub_21A280524();
      v38 = v40;
      sub_21A2F81F4();
      if (!v38)
      {
        (*(v44 + 8))(v24, v46);
        goto LABEL_21;
      }
    }

    (*(v35 + 8))(v26, v14);
    goto LABEL_10;
  }

  return sub_21A142808(v52);
}

unint64_t sub_21A280D54()
{
  result = qword_27CD03D18;
  if (!qword_27CD03D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D18);
  }

  return result;
}

unint64_t sub_21A280DAC()
{
  result = qword_27CD03D20;
  if (!qword_27CD03D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D20);
  }

  return result;
}

unint64_t sub_21A280E94()
{
  result = qword_27CD03D28;
  if (!qword_27CD03D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D28);
  }

  return result;
}

unint64_t sub_21A280EEC()
{
  result = qword_27CD03D30;
  if (!qword_27CD03D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D30);
  }

  return result;
}

unint64_t sub_21A280F44()
{
  result = qword_27CD03D38;
  if (!qword_27CD03D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D38);
  }

  return result;
}

unint64_t sub_21A280F9C()
{
  result = qword_27CD03D40;
  if (!qword_27CD03D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D40);
  }

  return result;
}

unint64_t sub_21A280FF4()
{
  result = qword_27CD03D48;
  if (!qword_27CD03D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D48);
  }

  return result;
}

unint64_t sub_21A28104C()
{
  result = qword_27CD03D50;
  if (!qword_27CD03D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D50);
  }

  return result;
}

unint64_t sub_21A2810A4()
{
  result = qword_27CD03D58;
  if (!qword_27CD03D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D58);
  }

  return result;
}

unint64_t sub_21A2810FC()
{
  result = qword_27CD03D60;
  if (!qword_27CD03D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D60);
  }

  return result;
}

unint64_t sub_21A281154()
{
  result = qword_27CD03D68;
  if (!qword_27CD03D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D68);
  }

  return result;
}

unint64_t sub_21A2811AC()
{
  result = qword_27CD03D70;
  if (!qword_27CD03D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D70);
  }

  return result;
}

unint64_t sub_21A281204()
{
  result = qword_27CD03D78;
  if (!qword_27CD03D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03D78);
  }

  return result;
}

uint64_t sub_21A281258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463757274736E69 && a2 == 0xEC000000736E6F69 || (sub_21A2F8394() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A2F8394();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21A2813C8()
{
  v74 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v74, v1);
  v71 = (&v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v68 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v67 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v66 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for ImageAsset(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v70 = &v66 - v22;
  v23 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v66 - v25;
  v73 = type metadata accessor for RecipeThemeSource();
  MEMORY[0x28223BE20](v73, v27);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v66 - v32;
  v34 = type metadata accessor for Recipe();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v66 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v0;
  sub_21A281F30(v0, v33, type metadata accessor for RecipeThemeSource);
  sub_21A176C98(&qword_27CCFFA38);
  sub_21A2F7594();
  sub_21A282064(v33, type metadata accessor for RecipeThemeSource);
  if ((*(v35 + 48))(v26, 1, v34) == 1)
  {
    v39 = &qword_27CCFF058;
    v40 = v26;
LABEL_5:
    sub_21A1427A8(v40, v39);
    v42 = (v72 + *(v73 + 24));
    sub_21A282064(v42, type metadata accessor for RecipeTheme);
    v43 = *(sub_21A176C98(&qword_27CCFEB90) + 48);
    *v42 = 0;
    (*(v17 + 56))(&v42[v43], 1, 1, v16);
    return swift_storeEnumTagMultiPayload();
  }

  sub_21A281FFC(v26, v38, type metadata accessor for Recipe);
  sub_21A17FE58(&v38[*(v34 + 32)], v15);
  v41 = v38;
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21A282064(v38, type metadata accessor for Recipe);
    v39 = &qword_27CCFEDC0;
    v40 = v15;
    goto LABEL_5;
  }

  v45 = v70;
  sub_21A281FFC(v15, v70, type metadata accessor for ImageAsset);
  v46 = v72;
  sub_21A281F30(v72, v29, type metadata accessor for RecipeThemeSource);
  v47 = v73;
  sub_21A176C98(&qword_27CCFEDD0);
  sub_21A2F7594();
  sub_21A282064(v29, type metadata accessor for RecipeThemeSource);
  v48 = v75;
  v49 = v69;
  sub_21A281F30(v45, v69, type metadata accessor for ImageAsset);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v51 = v67;
      sub_21A281FFC(v49, v67, type metadata accessor for WebImageAsset);
      v52 = sub_21A2F46A4();
      v54 = v53;
      v55 = type metadata accessor for WebImageAsset;
    }

    else
    {
      v51 = v68;
      sub_21A281FFC(v49, v68, type metadata accessor for LocalImageAsset);
      v52 = sub_21A2F46A4();
      v54 = v56;
      v55 = type metadata accessor for LocalImageAsset;
    }
  }

  else
  {
    v51 = v66;
    sub_21A281FFC(v49, v66, type metadata accessor for ExternalImageAsset);
    v52 = *v51;
    v54 = v51[1];
    sub_21A2F5434();
    v55 = type metadata accessor for ExternalImageAsset;
  }

  sub_21A282064(v51, v55);
  if (!*(v48 + 16))
  {

    goto LABEL_16;
  }

  v57 = sub_21A261F58(v52, v54);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v60 = *(v48 + 56) + 16 * v57;
  v61 = *v60;
  v62 = *(v60 + 8);
  sub_21A17FE08(*v60, *(v60 + 8));

  if (v62 != 1)
  {
    sub_21A17FE30(v61, v62);
LABEL_17:
    v61 = 0;
  }

  v63 = *(sub_21A176C98(&qword_27CCFEEA8) + 64);
  v64 = sub_21A244B20();
  sub_21A282064(v41, type metadata accessor for Recipe);
  v65 = v71;
  *v71 = v64;
  *(v65 + 8) = v61;
  sub_21A281FFC(v45, v65 + v63, type metadata accessor for ImageAsset);
  swift_storeEnumTagMultiPayload();
  return sub_21A281F98(v65, v46 + *(v47 + 24));
}

uint64_t sub_21A281BE0()
{
  sub_21A179EC4();
  sub_21A281EE8(&qword_27CCFEB20, type metadata accessor for RecipeTheme);

  return sub_21A2F7624();
}

uint64_t sub_21A281CEC@<X0>(char *a1@<X8>)
{
  v2 = *(sub_21A176C98(&qword_27CCFEB90) + 48);
  *a1 = 0;
  v3 = type metadata accessor for ImageAsset(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  type metadata accessor for RecipeTheme();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21A281D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD03D88);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for RecipeThemeSource();
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CD03D88);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A281EE8(&qword_27CD03D90, type metadata accessor for RecipeThemeSource);
    v8 = sub_21A156050(a1);
    return sub_21A281FFC(v5, v8, type metadata accessor for RecipeThemeSource);
  }

  return result;
}

uint64_t sub_21A281EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A281F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A281F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTheme();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A281FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A282064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StandaloneAssembly.load(in:)()
{
  v0 = sub_21A2F5304();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEB88);
  sub_21A2F52D4();

  v5 = *MEMORY[0x277D6CF10];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_21A2F5114();

  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEB80);
  sub_21A2F52D4();

  v6(v4, v5, v0);
  sub_21A2F5114();

  v7(v4, v0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEAF0);
  sub_21A2F52D4();

  v6(v4, v5, v0);
  sub_21A2F5114();

  v7(v4, v0);
  sub_21A2F5214();
  sub_21A176C98(&qword_27CCFEAE8);
  sub_21A2F52D4();

  v6(v4, v5, v0);
  sub_21A2F5114();

  v7(v4, v0);
  sub_21A2F5224();
  sub_21A2F52B4();
}

uint64_t sub_21A28242C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CD03D98);
  result = sub_21A2F51B4();
  if (v8)
  {
    v4 = type metadata accessor for ImageLoader();
    v5 = swift_allocObject();
    sub_21A176C98(&qword_27CD03DB8);
    v6 = swift_allocObject();
    *(v6 + 24) = 0;
    *(v6 + 16) = MEMORY[0x277D84F98];
    *(v5 + 56) = v6;
    result = sub_21A14274C(&v7, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282B30808;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A28256C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_21A2825BC()
{
  sub_21A176C98(&qword_27CD03D98);
  sub_21A2F52D4();
}

unint64_t sub_21A282628@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD03DA0);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_21A176C98(&qword_27CD03DA8);
  swift_allocObject();
  *(v3 + 112) = sub_21A2F5334();
  a1[3] = v2;
  result = sub_21A2826E4();
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_21A2826E4()
{
  result = qword_27CD03DB0;
  if (!qword_27CD03DB0)
  {
    sub_21A176D98(&qword_27CD03DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03DB0);
  }

  return result;
}

void sub_21A28275C(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = a1;
  v4 = [v3 timerID];
  v5 = type metadata accessor for RecipeTimer();
  sub_21A2F49F4();

  v6 = [v3 state];
  v7 = v6 == 2;
  if (v6 == 3)
  {
    v7 = 2;
  }

  *(a2 + v5[6]) = v7;
  v8 = [v3 title];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21A2F78E4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = (a2 + v5[7]);
  *v13 = v10;
  v13[1] = v12;
  [v3 duration];
  v15 = v14;

  *(a2 + v5[8]) = v15;
}

uint64_t RecipeTimer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeTimer() + 20);
  v4 = sub_21A2F4A24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeTimer.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeTimer() + 20);
  v4 = sub_21A2F4A24();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeTimer.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeTimer();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RecipeTimer.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecipeTimer();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t RecipeTimer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecipeTimer() + 28));
  sub_21A2F5434();
  return v1;
}

uint64_t RecipeTimer.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecipeTimer() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecipeTimer.duration.setter(double a1)
{
  result = type metadata accessor for RecipeTimer();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t RecipeTimer.State.hashValue.getter()
{
  v1 = *v0;
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](v1);
  return sub_21A2F8474();
}

uint64_t sub_21A282C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21A2F4A24();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL _s10CookingKit11RecipeTimerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_21A141A6C(0, &qword_27CCFF1E0);
  if (sub_21A2F7E74())
  {
    v4 = type metadata accessor for RecipeTimer();
    if ((_s10CookingKit12ContinuationV2eeoiySbACyxG_AEtFZ_0() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]))
    {
      v5 = v4[7];
      v6 = (a1 + v5);
      v7 = *(a1 + v5 + 8);
      v8 = (a2 + v5);
      v9 = v8[1];
      if (v7)
      {
        if (v9)
        {
          v10 = *v6 == *v8 && v7 == v9;
          if (v10 || (sub_21A2F8394() & 1) != 0)
          {
            return *(a1 + v4[8]) == *(a2 + v4[8]);
          }
        }
      }

      else if (!v9)
      {
        return *(a1 + v4[8]) == *(a2 + v4[8]);
      }
    }
  }

  return 0;
}

unint64_t sub_21A282DB0()
{
  result = qword_27CD03DC0;
  if (!qword_27CD03DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03DC0);
  }

  return result;
}

unint64_t sub_21A282E08()
{
  result = qword_2811B3DB8;
  if (!qword_2811B3DB8)
  {
    sub_21A2F4A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811B3DB8);
  }

  return result;
}

uint64_t sub_21A282ED4()
{
  sub_21A142808(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21A282F0C(uint64_t a1)
{
  v4 = type metadata accessor for ExternalRecipe(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Recipe();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  sub_21A2830C8(a1, v7);
  result = Recipe.init(externalRecipe:)(v7, v11);
  if (!v2)
  {
    v14 = v12[5];
    v15 = v12[6];
    sub_21A142764(v12 + 2, v14);
    (*(v15 + 40))(v11, v14, v15);
    return sub_21A1DCF2C(v11);
  }

  return result;
}

uint64_t sub_21A283034(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  sub_21A142764((*v2 + 16), v5);
  v9[0] = a1;
  v9[1] = a2;
  v7 = *(v6 + 48);
  sub_21A2F5434();
  v7(v9, v5, v6);
}

uint64_t sub_21A2830C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRecipe(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A28313C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21A142764(a1, a1[3]);
  v3 = type metadata accessor for ProcessingPipeline();
  result = sub_21A2F51A4();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_282B2F4B8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21A2831B0(void *a1)
{
  sub_21A176C98(&qword_27CCFFB98);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21A30C940;
  sub_21A142764(a1, a1[3]);
  v3 = type metadata accessor for LanguageProcessingStep();
  result = sub_21A2F51A4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v2 + 56) = v3;
  *(v2 + 64) = &off_282B34020;
  *(v2 + 32) = result;
  sub_21A142764(a1, a1[3]);
  v5 = type metadata accessor for StepSubdivisionProcessingStep();
  result = sub_21A2F51A4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v2 + 96) = v5;
  *(v2 + 104) = &off_282B2FB68;
  *(v2 + 72) = result;
  sub_21A142764(a1, a1[3]);
  v6 = type metadata accessor for TimerProcessingStep();
  result = sub_21A2F51A4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 136) = v6;
  *(v2 + 144) = &off_282B35190;
  *(v2 + 112) = result;
  sub_21A142764(a1, a1[3]);
  v7 = type metadata accessor for IngredientAmountParsingStep();
  result = sub_21A2F51A4();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 176) = v7;
  *(v2 + 184) = &off_282B32000;
  *(v2 + 152) = result;
  sub_21A142764(a1, a1[3]);
  v8 = type metadata accessor for HeroImageColorAnalysisStep();
  result = sub_21A2F51A4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v16[3] = v8;
  v16[4] = &off_282B37660;
  v16[0] = result;
  v17 = v2;
  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_21A1B7DBC((v9 > 1), v10 + 1, 1, v2);
    v17 = v2;
  }

  v11 = sub_21A143D8C(v16, v8);
  MEMORY[0x28223BE20](v11, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_21A2837FC(v10, v13, &v17, v8, &off_282B37660);
  sub_21A142808(v16);
  type metadata accessor for ProcessingPipeline();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = v2;
  return v15;
}

uint64_t sub_21A283498()
{
  type metadata accessor for LanguageProcessingStep();

  return swift_allocObject();
}

uint64_t sub_21A2834CC()
{
  type metadata accessor for RecipeSourceProcessingStep();

  return swift_allocObject();
}

uint64_t sub_21A283500()
{
  type metadata accessor for TimerProcessingStep();

  return swift_allocObject();
}

uint64_t sub_21A283534()
{
  type metadata accessor for StepSubdivisionProcessingStep();

  return swift_allocObject();
}

uint64_t sub_21A283568(void *a1)
{
  sub_21A142764(a1, a1[3]);
  sub_21A176C98(&qword_27CCFEB88);
  result = sub_21A2F51B4();
  if (v20)
  {
    sub_21A142764(a1, a1[3]);
    sub_21A176C98(&qword_27CCFEC00);
    result = sub_21A2F51B4();
    if (v18)
    {
      v3 = sub_21A143D8C(v17, v18);
      MEMORY[0x28223BE20](v3, v3);
      v5 = (&v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = *v5;
      v8 = type metadata accessor for ImageJoeColorAnalyzer();
      v16[3] = v8;
      v16[4] = &off_282B307F8;
      v16[0] = v7;
      type metadata accessor for HeroImageColorAnalysisStep();
      v9 = swift_allocObject();
      v10 = sub_21A143D8C(v16, v8);
      MEMORY[0x28223BE20](v10, v10);
      v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v9[10] = v8;
      v9[11] = &off_282B307F8;
      v9[7] = v14;
      sub_21A14274C(&v19, (v9 + 2));
      sub_21A142808(v16);
      sub_21A142808(v17);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A2837C8()
{
  type metadata accessor for IngredientAmountParsingStep();

  return swift_allocObject();
}

uint64_t sub_21A2837FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_21A156050(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_21A14274C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_21A283898()
{
  v1 = 0x65646E4970657473;
  if (*v0 != 1)
  {
    v1 = 0x646E4972656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449657069636572;
  }
}

uint64_t sub_21A2838FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A284318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A283924(uint64_t a1)
{
  v2 = sub_21A284144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A283960(uint64_t a1)
{
  v2 = sub_21A284144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StepTimerIndex.encode(to:)(void *a1)
{
  v3 = sub_21A176C98(&qword_27CD03DC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v16 = v1[3];
  v17 = v10;
  v11 = v1[4];
  v14 = v1[5];
  v15 = v11;
  sub_21A142764(a1, a1[3]);
  sub_21A284144();
  sub_21A2F5434();
  sub_21A2F84B4();
  v19 = v8;
  v20 = v9;
  v22 = 0;
  sub_21A1921B4();
  v12 = v18;
  sub_21A2F8324();

  if (!v12)
  {
    v19 = v17;
    v20 = v16;
    v21 = v15;
    v22 = 1;
    sub_21A192208();
    sub_21A2F8324();
    LOBYTE(v19) = 2;
    sub_21A2F8314();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StepTimerIndex.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  return MEMORY[0x21CED6EE0](v4);
}

uint64_t StepTimerIndex.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_21A2F8434();
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  return sub_21A2F8474();
}

uint64_t StepTimerIndex.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_21A176C98(&qword_27CD03DD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  sub_21A142764(a1, a1[3]);
  sub_21A284144();
  sub_21A2F8494();
  if (v2)
  {
    return sub_21A142808(a1);
  }

  v21 = 0;
  sub_21A1922B0();
  sub_21A2F8284();
  v11 = v18;
  v10 = v19;
  v21 = 1;
  sub_21A192304();
  sub_21A2F8284();
  v16 = v19;
  v17 = v18;
  v15 = v20;
  LOBYTE(v18) = 2;
  v12 = sub_21A2F8274();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v10;
  v13 = v16;
  a2[2] = v17;
  a2[3] = v13;
  a2[4] = v15;
  a2[5] = v12;
  sub_21A2F5434();
  sub_21A142808(a1);
}

uint64_t sub_21A283ED4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_21A2F8434();
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  return sub_21A2F8474();
}

uint64_t sub_21A283F70()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  return MEMORY[0x21CED6EE0](v4);
}

uint64_t sub_21A283FD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_21A2F8434();
  sub_21A2F79A4();
  MEMORY[0x21CED6EE0](v1);
  MEMORY[0x21CED6EE0](v2);
  MEMORY[0x21CED6EE0](v3);
  MEMORY[0x21CED6EE0](v4);
  return sub_21A2F8474();
}

BOOL _s10CookingKit14StepTimerIndexV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    result = 0;
  }

  else
  {
    v11 = sub_21A2F8394();
    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v7 && v4 == v6 && v3 == v9)
  {
    return v5 == v8;
  }

  return result;
}

unint64_t sub_21A284144()
{
  result = qword_27CD03DD0;
  if (!qword_27CD03DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03DD0);
  }

  return result;
}

unint64_t sub_21A28419C()
{
  result = qword_27CD03DE0;
  if (!qword_27CD03DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03DE0);
  }

  return result;
}

unint64_t sub_21A284214()
{
  result = qword_27CD03DE8;
  if (!qword_27CD03DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03DE8);
  }

  return result;
}

unint64_t sub_21A28426C()
{
  result = qword_27CD03DF0;
  if (!qword_27CD03DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03DF0);
  }

  return result;
}

unint64_t sub_21A2842C4()
{
  result = qword_27CD03DF8;
  if (!qword_27CD03DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03DF8);
  }

  return result;
}

uint64_t sub_21A284318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657069636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_21A2F8394() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646E4970657473 && a2 == 0xE900000000000078 || (sub_21A2F8394() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E4972656D6974 && a2 == 0xEA00000000007865)
  {

    return 2;
  }

  else
  {
    v6 = sub_21A2F8394();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21A284440()
{
  swift_getKeyPath();
  sub_21A284DEC(&qword_27CD039A8, type metadata accessor for ExportToGroceryListTipState);
  sub_21A2F5094();

  return *(v0 + 16);
}

uint64_t sub_21A2844E0()
{
  sub_21A26C67C();
  sub_21A2F7644();
  return v1;
}

uint64_t sub_21A28451C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A284DEC(&qword_27CD039A8, type metadata accessor for ExportToGroceryListTipState);
  sub_21A2F5094();

  *a2 = *(v3 + 16);
  return result;
}

unsigned __int8 *sub_21A2845C4(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == *(*a2 + 16))
  {
    *(*a2 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A284DEC(&qword_27CD039A8, type metadata accessor for ExportToGroceryListTipState);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A2846D8()
{
  v1 = OBJC_IVAR____TtC10CookingKit27ExportToGroceryListTipState___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A28479C()
{
  result = sub_21A2F50D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A284880()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_21A2F50C4();
  return v0;
}

void sub_21A284910()
{
  type metadata accessor for ExportToGroceryListTipState(319);
  if (v0 <= 0x3F)
  {
    sub_21A13D4CC(319, &qword_2811B3D58);
    if (v1 <= 0x3F)
    {
      sub_21A13D4CC(319, &qword_2811B3CF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A2849CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExportToGroceryListTipState(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_21A2F50C4();
  *a1 = v2;
  return result;
}

uint64_t sub_21A284A1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CD03E08);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for ExportToGroceryListTipStateSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A284F04(v5);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A284DEC(&qword_27CD03E10, type metadata accessor for ExportToGroceryListTipStateSource);
    v8 = sub_21A156050(a1);
    return sub_21A284F6C(v5, v8);
  }

  return result;
}

uint64_t sub_21A284B54()
{
  v1 = type metadata accessor for ExportToGroceryListTipStateSource(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A284E34(v0, v4);
  sub_21A176C98(&qword_27CD028C0);
  sub_21A2F7594();
  sub_21A284E98(v4);
  if (v11 == 1 && (sub_21A284E34(v0, v4), sub_21A176C98(&qword_27CCFF118), sub_21A2F7594(), sub_21A284E98(v4), (v11 & 1) == 0))
  {
    sub_21A284E34(v0, v4);
    sub_21A2F7594();
    sub_21A284E98(v4);
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  v6 = *v0;
  swift_getKeyPath();
  v11 = v6;
  sub_21A284DEC(&qword_27CD039A8, type metadata accessor for ExportToGroceryListTipState);
  sub_21A2F5094();

  if (v5 != *(v6 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    *(&v10 - 2) = v6;
    *(&v10 - 8) = v5;
    v11 = v6;
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A284DEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A284E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportToGroceryListTipStateSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A284E98(uint64_t a1)
{
  v2 = type metadata accessor for ExportToGroceryListTipStateSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A284F04(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD03E08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A284F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportToGroceryListTipStateSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LanguagePack()
{
  result = qword_27CD03E18;
  if (!qword_27CD03E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A285044()
{
  sub_21A2F4A64();
  if (v0 <= 0x3F)
  {
    sub_21A285204(319, &qword_27CD03E28, sub_21A2851B0);
    if (v1 <= 0x3F)
    {
      sub_21A285204(319, &qword_27CD03E38, sub_21A28528C);
      if (v2 <= 0x3F)
      {
        sub_21A285340(319, &qword_27CD03E48, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21A2852E0();
          if (v4 <= 0x3F)
          {
            sub_21A285340(319, &qword_2811B3C60, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21A2851B0()
{
  result = qword_27CD03E30;
  if (!qword_27CD03E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03E30);
  }

  return result;
}

void sub_21A285204(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    sub_21A176D98(&qword_27CD010C8);
    a3();
    v5 = sub_21A2F77A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21A28528C()
{
  result = qword_27CD03E40;
  if (!qword_27CD03E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03E40);
  }

  return result;
}

void sub_21A2852E0()
{
  if (!qword_27CD03E50)
  {
    v0 = sub_21A2F77A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD03E50);
    }
  }
}

void sub_21A285340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21A2853B8()
{
  result = qword_27CD03E58;
  if (!qword_27CD03E58)
  {
    sub_21A176D98(&qword_27CD03E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03E58);
  }

  return result;
}

unint64_t sub_21A285430()
{
  result = qword_27CD03E68;
  if (!qword_27CD03E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03E68);
  }

  return result;
}

unint64_t sub_21A285488()
{
  result = qword_27CD03E70;
  if (!qword_27CD03E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03E70);
  }

  return result;
}

uint64_t sub_21A2854DC()
{
  v0 = sub_21A2F4A64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LanguagePack();
  sub_21A177DCC(v5, qword_27CD23D90);
  v6 = sub_21A177CBC(v5, qword_27CD23D90);
  sub_21A2F4A54();
  v7 = sub_21A25F990(&unk_282B2BAE8);
  sub_21A176C98(&qword_27CD03E78);
  swift_arrayDestroy();
  v8 = sub_21A25F9A4(&unk_282B2BB38);
  sub_21A176C98(&qword_27CD03E80);
  swift_arrayDestroy();
  v9 = sub_21A25FAC0(&unk_282B2BA40);
  sub_21A285BC8(&unk_282B2BA60);
  result = (*(v1 + 32))(v6, v4, v0);
  *(v6 + v5[5]) = v7;
  *(v6 + v5[6]) = v8;
  *(v6 + v5[7]) = &unk_282B2B960;
  *(v6 + v5[8]) = &unk_282B2B9D0;
  *(v6 + v5[9]) = &unk_282B2BA00;
  *(v6 + v5[10]) = MEMORY[0x277D84F90];
  *(v6 + v5[11]) = v9;
  v11 = (v6 + v5[12]);
  *v11 = 0x1000000000000096;
  v11[1] = 0x800000021A31A770;
  *(v6 + v5[13]) = &unk_282B2BA78;
  return result;
}

uint64_t sub_21A2856FC()
{
  v0 = sub_21A2F4A64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LanguagePack();
  sub_21A177DCC(v5, qword_27CD23DA8);
  v6 = sub_21A177CBC(v5, qword_27CD23DA8);
  sub_21A2F4A34();
  v7 = sub_21A25F990(&unk_282B2BFC0);
  sub_21A176C98(&qword_27CD03E78);
  swift_arrayDestroy();
  v8 = sub_21A25F9A4(&unk_282B2C020);
  sub_21A176C98(&qword_27CD03E80);
  swift_arrayDestroy();
  v9 = sub_21A25FAC0(&unk_282B2BF18);
  sub_21A285BC8(&unk_282B2BF38);
  result = (*(v1 + 32))(v6, v4, v0);
  *(v6 + v5[5]) = v7;
  *(v6 + v5[6]) = v8;
  *(v6 + v5[7]) = &unk_282B2BE28;
  *(v6 + v5[8]) = &unk_282B2BE88;
  *(v6 + v5[9]) = &unk_282B2BEB8;
  *(v6 + v5[10]) = MEMORY[0x277D84F90];
  *(v6 + v5[11]) = v9;
  v11 = (v6 + v5[12]);
  *v11 = 0x10000000000000F1;
  v11[1] = 0x800000021A31A810;
  *(v6 + v5[13]) = &unk_282B2BF50;
  return result;
}

uint64_t sub_21A28592C()
{
  v0 = sub_21A2F4A64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for LanguagePack();
  sub_21A177DCC(v5, qword_27CD23DC0);
  v6 = sub_21A177CBC(v5, qword_27CD23DC0);
  sub_21A2F4A34();
  sub_21A176C98(&qword_27CD03E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A30C940;
  *(inited + 32) = 0;
  *(inited + 40) = &unk_282B2C090;
  *(inited + 48) = 1;
  *(inited + 56) = &unk_282B2C0E0;
  *(inited + 64) = 2;
  v8 = MEMORY[0x277D84F90];
  *(inited + 72) = MEMORY[0x277D84F90];
  *(inited + 80) = 3;
  *(inited + 88) = &unk_282B2C140;
  v9 = sub_21A25F990(inited);
  swift_setDeallocating();
  sub_21A176C98(&qword_27CD03E78);
  swift_arrayDestroy();
  v10 = sub_21A25F9A4(&unk_282B2C440);
  sub_21A176C98(&qword_27CD03E80);
  swift_arrayDestroy();
  v11 = sub_21A25FAC0(v8);
  result = (*(v1 + 32))(v6, v4, v0);
  *(v6 + v5[5]) = v9;
  *(v6 + v5[6]) = v10;
  *(v6 + v5[7]) = &unk_282B2C2D0;
  *(v6 + v5[8]) = &unk_282B2C330;
  *(v6 + v5[9]) = &unk_282B2C360;
  *(v6 + v5[10]) = &unk_282B2C3A0;
  *(v6 + v5[11]) = v11;
  v13 = (v6 + v5[12]);
  *v13 = 0x1000000000000097;
  v13[1] = 0x800000021A31A910;
  *(v6 + v5[13]) = &unk_282B2C3D0;
  return result;
}

uint64_t sub_21A285BC8(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CD02CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 RecipeToken.__allocating_init(id:configuration:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v7;
  *(v6 + 33) = v8;
  *(v6 + 40) = *(a3 + 8);
  result = *(a3 + 24);
  *(v6 + 56) = result;
  return result;
}

uint64_t RecipeToken.init(id:configuration:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = a3[1];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  *(v3 + 33) = v5;
  *(v3 + 40) = *(a3 + 8);
  *(v3 + 56) = *(a3 + 24);
  return v3;
}

void *RecipeToken.deinit()
{
  if (qword_27CCFE7C0 != -1)
  {
    swift_once();
  }

  v1 = sub_21A2F53E4();
  sub_21A177CBC(v1, qword_27CD23C80);

  v2 = sub_21A2F53C4();
  v3 = sub_21A2F7DF4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446210;
    strcpy(v8, "RecipeToken<");
    BYTE5(v8[1]) = 0;
    HIWORD(v8[1]) = -5120;
    v9 = v5;
    MEMORY[0x21CED6480](v0[2], v0[3]);
    MEMORY[0x21CED6480](62, 0xE100000000000000);
    v6 = sub_21A25B5DC(v8[0], v8[1], &v9);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_21A137000, v2, v3, "Will invalidate: %{public}s", v4, 0xCu);
    sub_21A142808(v5);
    MEMORY[0x21CED7BA0](v5, -1, -1);
    MEMORY[0x21CED7BA0](v4, -1, -1);
  }

  if (qword_27CCFE898 != -1)
  {
    swift_once();
  }

  sub_21A2C4788(v0);

  sub_21A18F700(v0[5], v0[6]);
  return v0;
}

uint64_t RecipeToken.__deallocating_deinit()
{
  RecipeToken.deinit();

  return swift_deallocClassInstance();
}

uint64_t static RecipeToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_21A2F8394();
  }
}

uint64_t RecipeToken.description.getter()
{
  strcpy(v2, "RecipeToken<");
  BYTE5(v2[1]) = 0;
  HIWORD(v2[1]) = -5120;
  MEMORY[0x21CED6480](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CED6480](62, 0xE100000000000000);
  return v2[0];
}

uint64_t RecipeToken.hashValue.getter()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A285FC0()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A286014()
{
  sub_21A2F8434();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A286058(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_21A2F8394();
  }
}

uint64_t sub_21A286084()
{
  v1 = *v0;
  strcpy(v3, "RecipeToken<");
  BYTE5(v3[1]) = 0;
  HIWORD(v3[1]) = -5120;
  MEMORY[0x21CED6480](*(v1 + 16), *(v1 + 24));
  MEMORY[0x21CED6480](62, 0xE100000000000000);
  return v3[0];
}

unint64_t sub_21A2860F0()
{
  result = qword_27CD03E90;
  if (!qword_27CD03E90)
  {
    type metadata accessor for RecipeToken();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03E90);
  }

  return result;
}

__n128 RecipeFeaturesConfiguration.init(saving:sharing:groceryList:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *a1;
  *(a4 + 1) = v4;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 8) = *a3;
  *(a4 + 24) = v6;
  return result;
}

uint64_t RecipeFeaturesConfiguration.GroceryListConfiguration.GroceryListTip.title.getter()
{
  v1 = *v0;
  sub_21A2F5434();
  return v1;
}

uint64_t RecipeFeaturesConfiguration.GroceryListConfiguration.GroceryListTip.message.getter()
{
  v1 = *(v0 + 16);
  sub_21A2F5434();
  return v1;
}

CookingKit::RecipeFeaturesConfiguration::GroceryListConfiguration::GroceryListTip __swiftcall RecipeFeaturesConfiguration.GroceryListConfiguration.GroceryListTip.init(title:message:)(Swift::String_optional title, Swift::String_optional message)
{
  *v2 = title;
  v2[1] = message;
  result.message = message;
  result.title = title;
  return result;
}

uint64_t RecipeFeaturesConfiguration.GroceryListConfiguration.tip.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  if (v3 == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v1[2];
  }

  if (v3 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v1[3];
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  return sub_21A1D41F8(v2, v3);
}

uint64_t RecipeFeaturesConfiguration.groceryList.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21A1D41F8(v2, v3);
}

__n128 RecipeFeaturesConfiguration.groceryList.setter(uint64_t a1)
{
  sub_21A18F700(*(v1 + 8), *(v1 + 16));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  return result;
}

unint64_t sub_21A286384()
{
  result = qword_27CD03EA0;
  if (!qword_27CD03EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03EA0);
  }

  return result;
}

unint64_t sub_21A2863DC()
{
  result = qword_27CD03EA8[0];
  if (!qword_27CD03EA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD03EA8);
  }

  return result;
}

uint64_t sub_21A286430(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21A286454(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_21A2864BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21A286544(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A2865A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21A286600(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_21A286708()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_21A286AA8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A286790(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_21A2868CC(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_21A286AA8()
{
  result = qword_27CD03FB0;
  if (!qword_27CD03FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CD03FB0);
  }

  return result;
}

uint64_t sub_21A286B0C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D85048];
  swift_getTupleTypeMetadata2();
  v5 = sub_21A2F7B64();
  v6 = sub_21A288780(v5, a1, v4, a2);

  return v6;
}

uint64_t sub_21A286B88(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  sub_21A1A638C();
  if (sub_21A2F77C4() & 1) != 0 || (sub_21A286B0C(a4, a5), v7 = sub_21A2F77C4(), , (v7))
  {
  }

  else
  {
    sub_21A2F77A4();
    return sub_21A2F7784();
  }
}

double sub_21A286CB8@<D0>(double *a1@<X1>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21A286CC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21A286B0C(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_21A286CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v7 = *(a4 + 16);
  v8 = v4;
  v9 = a2;
  v10 = a3;
  return sub_21A286B88(a1, sub_21A287698, &v6, v7, v4);
}

uint64_t sub_21A286D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[2] = a1;
  v22[3] = a3;
  swift_getWitnessTable();
  sub_21A2F6254();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  type metadata accessor for VerticalOffsetPreferenceKey();
  swift_getWitnessTable();
  sub_21A2F6474();
  sub_21A2F5AF4();
  WitnessTable = swift_getWitnessTable();
  v26 = MEMORY[0x277CE0F70];
  v27 = WitnessTable;
  v22[1] = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_21A2F5924();
  swift_getWitnessTable();
  v22[0] = sub_21A2F60F4();
  v8 = sub_21A2F5AF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v22 - v15;
  v22[6] = v5;
  v22[7] = v6;
  v23 = v3;
  sub_21A2F7344();
  v17 = swift_getWitnessTable();
  sub_21A2F6A64();
  v18 = swift_getWitnessTable();
  v24 = v17;
  v25 = v18;
  v19 = swift_getWitnessTable();
  sub_21A1BE5BC(v12, v8, v19);
  v20 = *(v9 + 8);
  v20(v12, v8);
  sub_21A1BE5BC(v16, v8, v19);
  return (v20)(v16, v8);
}

uint64_t sub_21A28708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VerticalOffsetReaderModifier();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v19 - v10;
  (*(v7 + 16))(&v19 - v10, a1, v6, v9);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);
  type metadata accessor for VerticalOffsetPreferenceKey();
  swift_getWitnessTable();
  sub_21A2F6474();
  sub_21A2F5AF4();
  WitnessTable = swift_getWitnessTable();
  v21 = MEMORY[0x277CE0F70];
  v22 = WitnessTable;
  swift_getWitnessTable();
  v19 = sub_21A2F5914();
  v20 = v15;
  v16 = sub_21A2F5924();
  v17 = swift_getWitnessTable();
  sub_21A1BE5BC(&v19, v16, v17);

  v19 = v23;
  v20 = v24;
  sub_21A1BE5BC(&v19, v16, v17);
}

uint64_t sub_21A287304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for VerticalOffsetReaderModifier();
  sub_21A142764((a2 + *(v7 + 36)), *(a2 + *(v7 + 36) + 24));
  sub_21A2F5824();
  MinY = CGRectGetMinY(v23);
  v21 = sub_21A2F6F14();
  type metadata accessor for VerticalOffsetPreferenceKey();
  v9 = MEMORY[0x277D85048];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_21A2F8364();
  swift_allocObject();
  v11 = sub_21A2F7B44();
  v13 = v12;
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(a3 - 8) + 16))(v12, a2, a3);
  *(v13 + v14) = MinY;
  sub_21A2F7BC4();
  sub_21A288780(v11, a3, v9, a4);

  swift_getWitnessTable();
  sub_21A2F6AA4();

  v18[0] = v19;
  v18[1] = v20;
  sub_21A2F6474();
  v15 = sub_21A2F5AF4();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_21A1BE5BC(v18, v15, WitnessTable);

  v19 = v21;
  v20 = v22;
  sub_21A1BE5BC(&v19, v15, WitnessTable);
}

uint64_t sub_21A2875FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for VerticalOffsetReaderModifier() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_21A287304(a1, v6, v3, v4);
}

uint64_t sub_21A287710(uint64_t a1)
{
  v2 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  sub_21A2685F8(a1, &v11 - v8);
  sub_21A2685F8(v9, v5);
  sub_21A287C20();
  sub_21A2F5EF4();
  return sub_21A287C74(v9, type metadata accessor for RecipeTheme);
}

uint64_t RecipeSaveButton.init(isSaved:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t RecipeSaveButton.body.getter()
{
  v1 = type metadata accessor for CircularButtonStyle();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_21A176C98(&qword_27CD00B88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-v8];
  v10 = *v0;
  v12 = *(v0 + 1);
  v11 = *(v0 + 2);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[16] = v10;
  v17 = v12;
  v18 = v11;

  sub_21A2F7094();
  *v4 = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFECD8);
  swift_storeEnumTagMultiPayload();
  v14 = *(v1 + 20);
  *(v4 + v14) = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  sub_21A287B34();
  sub_21A287B98();
  sub_21A2F6AD4();
  sub_21A287C74(v4, type metadata accessor for CircularButtonStyle);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21A287A60()
{
  sub_21A2F73A4();
  sub_21A2F58E4();
}

uint64_t sub_21A287ADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21A2F6F94();
  *a1 = result;
  return result;
}

unint64_t sub_21A287B34()
{
  result = qword_27CD00B90;
  if (!qword_27CD00B90)
  {
    sub_21A176D98(&qword_27CD00B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00B90);
  }

  return result;
}

unint64_t sub_21A287B98()
{
  result = qword_27CD00B98;
  if (!qword_27CD00B98)
  {
    type metadata accessor for CircularButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00B98);
  }

  return result;
}

unint64_t sub_21A287C20()
{
  result = qword_27CD03FB8;
  if (!qword_27CD03FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD03FB8);
  }

  return result;
}

uint64_t sub_21A287C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RecipeSourceSafari.webURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A2F4794();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RecipeSourceSafari.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecipeSourceSafari(0) + 20));
  sub_21A2F5434();
  return v1;
}

uint64_t RecipeSourceSafari.thumbnailImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeSourceSafari(0) + 24);

  return sub_21A20FEA4(v3, a1);
}

uint64_t RecipeSourceSafari.init(webURL:name:thumbnailImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21A2F4794();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for RecipeSourceSafari(0);
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = a5 + *(v11 + 24);

  return sub_21A287EBC(a4, v13);
}

uint64_t sub_21A287EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of RecipeDataSource.recipeHeroImage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A146070;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RecipeDataSource.recipeSource(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A145E2C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21A2881D0()
{
  v0 = type metadata accessor for RecipeSourceSafari(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_21A288250()
{
  sub_21A2F4794();
  if (v0 <= 0x3F)
  {
    sub_21A13C2A4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImageResource();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21A288304(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CGRect(255);
  v5 = v4;
  swift_getTupleTypeMetadata2();
  v6 = sub_21A2F7B64();
  v7 = sub_21A288780(v6, a1, v5, a2);

  return v7;
}

uint64_t sub_21A288384(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2();
  type metadata accessor for CGRect(0);
  sub_21A288544();
  if (sub_21A2F77C4() & 1) != 0 || (sub_21A288304(a4, a5), v7 = sub_21A2F77C4(), , (v7))
  {
  }

  else
  {
    sub_21A2F77A4();
    return sub_21A2F7784();
  }
}

__n128 sub_21A2884C0@<Q0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_21A2884CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21A288304(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_21A2884FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v7 = *(a4 + 16);
  v8 = v4;
  v9 = a2;
  v10 = a3;
  return sub_21A288384(a1, sub_21A287698, &v6, v7, v4);
}

unint64_t sub_21A288544()
{
  result = qword_27CD00CC8;
  if (!qword_27CD00CC8)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD00CC8);
  }

  return result;
}

unint64_t sub_21A28859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A2F77F4();

  return sub_21A2885F8(a1, v6, a2, a3);
}

unint64_t sub_21A2885F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_21A2F7874();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_21A288780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_21A2F7BA4())
  {
    sub_21A2F81A4();
    v14 = sub_21A2F8194();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = sub_21A2F7BA4();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_21A2F7B84())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_21A2F8034();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_21A28859C(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
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

    return v14;
  }

  return result;
}

__n128 SelectedIngredientCommand.init(recipeID:action:)@<Q0>(unint64_t *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1];
  v4 = a2[1].n128_u8[0];
  a3->n128_u64[0] = *a1;
  a3->n128_u64[1] = v3;
  result = *a2;
  a3[1] = *a2;
  a3[2].n128_u8[0] = v4;
  return result;
}

uint64_t _s10CookingKit25SelectedIngredientCommandV6ActionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v9 = sub_21A2F8394();
    sub_21A18BD3C();
    sub_21A18BD3C();
    sub_21A1997F4();
    sub_21A1997F4();
    return v9 & 1;
  }

LABEL_15:
  sub_21A18BD3C();
  sub_21A18BD3C();
  sub_21A1997F4();
  sub_21A1997F4();
  return 1;
}

uint64_t sub_21A288C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_21A288CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for HorizontalParallaxViewModifier()
{
  result = qword_27CD04068;
  if (!qword_27CD04068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A288D98()
{
  sub_21A288E0C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21A288E0C()
{
  if (!qword_27CD04078)
  {
    type metadata accessor for HorizontalParallaxOffset(255);
    sub_21A289584(&qword_27CD02B90, type metadata accessor for HorizontalParallaxOffset);
    v0 = sub_21A2F7744();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD04078);
    }
  }
}

uint64_t sub_21A288EBC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + *(type metadata accessor for HorizontalParallaxViewModifier() + 20));
  v6 = sub_21A2F5C84();
  v7 = sub_21A289584(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  v8.n128_u64[0] = 0;
  if (v5)
  {
    v8.n128_f64[0] = a1;
  }

  return MEMORY[0x21CED4240](v6, v7, v8, 0.0);
}

uint64_t sub_21A288F68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1, a2 - 8);
  sub_21A176C98(&qword_27CD04060);
  v5 = sub_21A2F7714();
  swift_getKeyPath();
  v16[0] = v5;
  sub_21A289584(&qword_27CD04080, type metadata accessor for HorizontalParallaxOffset);
  sub_21A2F5094();

  v6 = *(v5 + 16);

  sub_21A2893A4(v2, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21A289408(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v9 = sub_21A176C98(&qword_27CD04088);
  v10 = sub_21A176C98(&qword_27CCFF218);
  v11 = sub_21A289520();
  v12 = sub_21A2F5C84();
  v13 = sub_21A289584(&qword_27CCFF220, MEMORY[0x277CDFCB0]);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CED5600](sub_21A28946C, v8, v9, v10, v11, OpaqueTypeConformance2);
}

double sub_21A2891E0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A289584(&qword_27CD04080, type metadata accessor for HorizontalParallaxOffset);
  sub_21A2F5094();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void *sub_21A289288(void *result, uint64_t a2)
{
  if (*(*a2 + 16) == *result)
  {
    *(*a2 + 16) = *result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_21A289584(&qword_27CD04080, type metadata accessor for HorizontalParallaxOffset);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A2893A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalParallaxViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A289408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalParallaxViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A28946C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for HorizontalParallaxViewModifier() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21A288EBC(v7, a1, a2, v2 + v6);
}

unint64_t sub_21A289520()
{
  result = qword_27CD04090;
  if (!qword_27CD04090)
  {
    sub_21A176D98(&qword_27CD04088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD04090);
  }

  return result;
}

uint64_t sub_21A289584(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ExternalRecipeThemeType.isHighRes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A1C7A78;

  return v11(a1, a2, a3, a4);
}

BOOL sub_21A289730(uint64_t a1, uint64_t a2)
{
  v5 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v25 = &v24 - v7;
  v8 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Recipe();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2[5];
  v18 = v2[6];
  sub_21A142764(v2 + 2, v17);
  v26[0] = a1;
  v26[1] = a2;
  v19 = *(v18 + 24);
  sub_21A2F5434();
  v19(v26, v17, v18);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21A1427A8(v11, &qword_27CCFF058);
    return 0;
  }

  else
  {
    sub_21A28A1A8(v11, v16, type metadata accessor for Recipe);
    v21 = v25;
    sub_21A17FE58(&v16[*(v12 + 32)], v25);
    sub_21A28A210(v16, type metadata accessor for Recipe);
    v22 = type metadata accessor for ImageAsset(0);
    v20 = (*(*(v22 - 8) + 48))(v21, 1, v22) != 1;
    sub_21A1427A8(v21, &qword_27CCFEDC0);
  }

  return v20;
}

uint64_t sub_21A2899C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for ExternalImageAsset(0);
  v3[6] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFEDC0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for ImageAsset(0);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_21A176C98(&qword_27CCFF058);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Recipe();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A289B90, 0, 0);
}

uint64_t sub_21A289B90()
{
  v29 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = v4[5];
  v8 = v4[6];
  sub_21A142764(v4 + 2, v7);
  v28[0] = v6;
  v28[1] = v5;
  v9 = *(v8 + 24);
  sub_21A2F5434();
  v9(v28, v7, v8);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21A1427A8(v0[12], &qword_27CCFF058);
LABEL_9:

    v24 = v0[1];

    return v24(0);
  }

  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];
  sub_21A28A1A8(v0[12], v10, type metadata accessor for Recipe);
  sub_21A17FE58(v10 + *(v11 + 32), v14);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v15 = v0[7];
    sub_21A28A210(v0[15], type metadata accessor for Recipe);
    sub_21A1427A8(v15, &qword_27CCFEDC0);
    goto LABEL_9;
  }

  v16 = v0[10];
  v17 = v0[11];
  sub_21A28A1A8(v0[7], v17, type metadata accessor for ImageAsset);
  sub_21A1BC674(v17, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = v0[10];
  if (EnumCaseMultiPayload)
  {
    sub_21A28A210(v19, type metadata accessor for ImageAsset);
LABEL_8:
    v23 = v0[15];
    sub_21A28A210(v0[11], type metadata accessor for ImageAsset);
    sub_21A28A210(v23, type metadata accessor for Recipe);
    goto LABEL_9;
  }

  v21 = v0[5];
  v20 = v0[6];
  sub_21A28A1A8(v19, v20, type metadata accessor for ExternalImageAsset);
  v22 = v20 + *(v21 + 24);
  v0[16] = *v22;
  v0[17] = *(v22 + 8);
  LOBYTE(v21) = *(v22 + 16);
  sub_21A28A210(v20, type metadata accessor for ExternalImageAsset);
  if (v21)
  {
    goto LABEL_8;
  }

  sub_21A2F7C34();
  v0[18] = sub_21A2F7C24();
  v27 = sub_21A2F7BD4();

  return MEMORY[0x2822009F8](sub_21A289EF0, v27, v26);
}

uint64_t sub_21A289EF0()
{

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    v3 = 1024.0;
  }

  else
  {
    v3 = 600.0;
  }

  v4 = *(v0 + 128) >= v3 && v3 <= *(v0 + 136);
  *(v0 + 152) = v4;

  return MEMORY[0x2822009F8](sub_21A289FCC, 0, 0);
}

uint64_t sub_21A289FCC()
{
  v1 = *(v0 + 120);
  sub_21A28A210(*(v0 + 88), type metadata accessor for ImageAsset);
  sub_21A28A210(v1, type metadata accessor for Recipe);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21A28A100(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A1C7A78;

  return sub_21A2899C4(a1, a2);
}

uint64_t sub_21A28A1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A28A210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A28A270(uint64_t a1)
{
  if (a1)
  {
    ++*(a1 + 16);
  }

  v2 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
  if (*(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24))
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    sub_21A28C244();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  sub_21A2F7384();
  sub_21A2F58E4();
}

uint64_t sub_21A28A3FC()
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v1 = *(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo);
  sub_21A2F5434();
  return v1;
}

uint64_t sub_21A28A4B8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return sub_21A2932DC(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, a1, type metadata accessor for RecipeTheme);
}

uint64_t sub_21A28A580@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo;
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo);
  v6 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 24);
  v5 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 32);
  v7 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__titleInfo + 40);
  *a1 = v4;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  sub_21A2F5434();
  sub_21A2F5434();
  return sub_21A2F5434();
}

uint64_t sub_21A28A664()
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return sub_21A2F5434();
}

uint64_t sub_21A28A724@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_21A28A7F0@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return sub_21A183960(v3 + *a1, a3, a2);
}

uint64_t sub_21A28A8D0()
{
  v1 = v0;
  v2 = sub_21A2F4A64();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A2F7894();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v29 - v8;
  v10 = sub_21A2F5294();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v15, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2932DC(v1, v18, type metadata accessor for Duration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A149B18(v18, v9, &qword_27CCFF388);
    sub_21A2F8554();
    sub_21A292F80(&qword_27CD040E8, MEMORY[0x277CC9FF0]);
    sub_21A2F5284();
    v19 = MEMORY[0x277D837D0];
    v29[0] = sub_21A2F7A84();
    v21 = v20;
    sub_21A2F5284();
    v22 = sub_21A2F7A84();
    v24 = v23;
    sub_21A2F7884();
    sub_21A2F4A54();
    sub_21A2F7934();
    sub_21A176C98(&qword_27CCFFF88);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21A2FEED0;
    *(v25 + 56) = v19;
    v26 = sub_21A20237C();
    *(v25 + 32) = v29[0];
    *(v25 + 40) = v21;
    *(v25 + 96) = v19;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v22;
    *(v25 + 80) = v24;
    v27 = sub_21A2F78B4();

    sub_21A1427A8(v9, &qword_27CCFF388);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_21A2F8554();
    sub_21A292F80(&qword_27CD040E8, MEMORY[0x277CC9FF0]);
    sub_21A2F5284();
    v27 = sub_21A2F7A84();
    (*(v11 + 8))(v14, v10);
  }

  return v27;
}

uint64_t sub_21A28AD64()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  sub_21A2F79A4();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A28ADE0()
{
  MEMORY[0x21CED6EE0](0);
  sub_21A2F79A4();

  return sub_21A2F79A4();
}

uint64_t sub_21A28AE50()
{
  sub_21A2F8434();
  MEMORY[0x21CED6EE0](0);
  sub_21A2F79A4();
  sub_21A2F79A4();
  return sub_21A2F8474();
}

uint64_t sub_21A28AEC8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  sub_21A2F5434();

  return sub_21A2F5434();
}

uint64_t sub_21A28AF0C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21A2F8394(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21A2F8394();
    }
  }

  return result;
}

unsigned __int8 *sub_21A28AFB0(unsigned __int8 *result)
{
  if (*(v1 + 32) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  return result;
}

uint64_t sub_21A28B0C0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a1 = *(v1 + 34);
  return result;
}

unsigned __int8 *sub_21A28B168(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 34);
  if (v3 == 4)
  {
    if (v2 != 4)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v5);
      sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
      sub_21A2F5084();
    }
  }

  else if (v3 != v2)
  {
    goto LABEL_3;
  }

  *(v1 + 34) = v2;
  return result;
}

__n128 sub_21A28B288@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_21A28B340(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  if ((*(v1 + 64) & 1) == 0)
  {
    if ((*(result + 24) & 1) == 0)
    {
      v6 = *(v1 + 40) == v2 && *(v1 + 48) == v3;
      if (v6 && *(v1 + 56) == v4)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }

  if ((*(result + 24) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  return result;
}

uint64_t sub_21A28B48C()
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return sub_21A2F5434();
}

uint64_t sub_21A28B530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 72);
  return sub_21A2F5434();
}

uint64_t sub_21A28B608(uint64_t a1)
{
  if (sub_21A191A04(*(v1 + 72), a1))
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5084();
  }
}

void sub_21A28B748()
{
  v1 = sub_21A2F59E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 33) & 1) == 0)
  {
    swift_getKeyPath();
    v19 = v0;
    sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
    sub_21A2F5094();

    (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition, v1);
    sub_21A1BEE14();
    sub_21A2F59B4();
    (*(v2 + 8))(v5, v1);
    if (v22 <= 1u)
    {
      v6 = v19;
      if (v22)
      {
        v9 = v20;
        v10 = v21;
        swift_getKeyPath();
        v19 = v0;
        sub_21A2F5094();

        v11 = v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
        if (*(v0 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24))
        {
          goto LABEL_8;
        }

        v16 = *(v11 + 8);
        v17 = *(v11 + 16);
        if (*v11 == v6 && v16 == v9 && v17 == v10)
        {
          return;
        }

        if (*v11 == v6 && v16 == v9 && v17 == v10)
        {
          *v11 = v6;
          *(v11 + 8) = v9;
          *(v11 + 16) = v10;
          *(v11 + 24) = 0;
          sub_21A28C244();
        }

        else
        {
LABEL_8:
          KeyPath = swift_getKeyPath();
          v18[0] = v18;
          MEMORY[0x28223BE20](KeyPath, v13);
          v18[-6] = v0;
          v18[-5] = v6;
          v18[-4] = v9;
          v18[-3] = v10;
          LOBYTE(v18[-2]) = 0;
          v19 = v0;
          sub_21A2F5084();
        }

        if (*(v0 + 32) != 2)
        {
          v14 = swift_getKeyPath();
          MEMORY[0x28223BE20](v14, v15);
          v18[-2] = v0;
          LOBYTE(v18[-1]) = 2;
          v19 = v0;
          goto LABEL_11;
        }
      }

      else
      {
        swift_getKeyPath();
        v19 = v0;
        sub_21A2F5094();

        if (*(v0 + 32) != v6)
        {
          v7 = swift_getKeyPath();
          MEMORY[0x28223BE20](v7, v8);
          v18[-2] = v0;
          LOBYTE(v18[-1]) = v6;
          v19 = v0;
LABEL_11:
          sub_21A2F5084();
        }
      }
    }
  }
}

uint64_t sub_21A28BB70@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__scrollPosition;
  v4 = sub_21A2F59E4();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

__n128 sub_21A28BC54@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v3 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 16);
  v4 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24);
  result = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep);
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  return result;
}

uint64_t sub_21A28BD18(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep;
  v7 = *(v1 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__currentStep + 24);
  if (v7 & 1) != 0 || (v5)
  {
    if ((v7 & v5 & 1) == 0)
    {
LABEL_15:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v12);
      sub_21A292F80(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
      sub_21A2F5084();
    }
  }

  else if (*v6 != v2 || *(v6 + 8) != v3 || *(v6 + 16) != v4)
  {
    goto LABEL_15;
  }

  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  return sub_21A28C244();
}