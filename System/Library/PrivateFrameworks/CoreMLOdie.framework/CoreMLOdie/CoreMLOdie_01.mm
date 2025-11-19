uint64_t sub_245B88B70(unint64_t a1)
{
  v2 = sub_245B92990();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16 - v10;
  v12 = *(sub_245B92860() + 16);

  v13 = 0;
  if ((a1 & 0x8000000000000000) != 0 || v12 <= a1)
  {
    return v13 & 1;
  }

  result = sub_245B92860();
  if (*(result + 16) > a1)
  {
    (*(v3 + 16))(v11, result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * a1, v2);

    (*(v3 + 104))(v8, *MEMORY[0x277D36AE0], v2);
    v13 = sub_245B92980();
    v15 = *(v3 + 8);
    v15(v8, v2);
    v15(v11, v2);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

void *sub_245B88D20(char *a1)
{
  v235 = a1;
  v3 = sub_245B92B90();
  v4 = *(v3 - 8);
  v259 = v3;
  v260 = v4;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v258 = &v197[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v9);
  v237 = &v197[-v10];
  v11 = sub_245B92800();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v243 = &v197[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_245B92770();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v242 = &v197[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v238 = sub_245B92780();
  v253 = *(v238 - 8);
  v19 = *(v253 + 64);
  v21 = MEMORY[0x28223BE20](v238, v20);
  v256 = &v197[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v241 = &v197[-v25];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v236 = &v197[-v28];
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v197[-v31];
  MEMORY[0x28223BE20](v30, v33);
  v239 = &v197[-v34];
  v248 = sub_245B92830();
  v232 = *(v248 - 8);
  v35 = v232[8];
  v37 = MEMORY[0x28223BE20](v248, v36);
  v240 = &v197[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37, v39);
  v250 = &v197[-v40];
  v254 = sub_245B92A70();
  v234 = *(v254 - 8);
  v41 = *(v234 + 64);
  v43 = MEMORY[0x28223BE20](v254, v42);
  v244 = &v197[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43, v45);
  v249 = &v197[-v46];
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34860, &qword_245B94770);
  v231 = *(v255 - 8);
  v47 = *(v231 + 64);
  MEMORY[0x28223BE20](v255, v48);
  v247 = &v197[-v49];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34868, &unk_245B95120);
  v51 = *(*(v50 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v50 - 8, v52);
  v257 = &v197[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v53, v55);
  v252 = &v197[-v56];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34848, &qword_245B94760);
  v246 = *(v57 - 8);
  v58 = *(v246 + 64);
  v60 = MEMORY[0x28223BE20](v57 - 8, v59);
  v251 = &v197[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v60, v62);
  v64 = &v197[-v63];
  v66 = v1[2];
  v65 = v1[3];
  v67 = v1[4];
  v233 = v1[5];
  v68 = v1[7];
  v245 = v1[6];
  swift_beginAccess();
  v69 = *(v66 + 16);
  if (!*(v69 + 16) || (v70 = sub_245B8BA78(v65, v67), (v71 & 1) == 0))
  {
    swift_endAccess();
    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    v77 = v76;
    v262 = 0;
    v263 = 0xE000000000000000;
    sub_245B92E50();

    v262 = 0xD000000000000021;
    v263 = 0x8000000245B93F60;
    MEMORY[0x245D7A2F0](v65, v67);
    v78 = v263;
    *v77 = v262;
    v77[1] = v78;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v72 = *(*(v69 + 56) + 8 * v70);
  swift_endAccess();
  swift_retain_n();
  v73 = sub_245B92850();
  v74 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_outputs, 0, j__e5rt_execution_stream_operation_get_output_names, 0, j__e5rt_execution_stream_operation_retain_output_port, 0);
  if (v2)
  {
  }

  v79 = v74;
  v80 = 0;
  v81 = sub_245B7D288(j__e5rt_execution_stream_operation_get_num_inouts, 0, j__e5rt_execution_stream_operation_get_inout_names, 0, j__e5rt_execution_stream_operation_retain_inout_port, 0);

  v224 = sub_245B8DC9C(MEMORY[0x277D84F90]);
  v82 = *(v73 + 16);
  v217 = v72;
  v227 = v73;
  v222 = v82;
  v226 = v81;
  if (v82)
  {
    v83 = 0;
    v84 = 0;
    v221 = (v245 + 32);
    v219 = (v81 + 48);
    v220 = (v79 + 48);
    v225 = 0;
    v223 = v79;
    while (1)
    {
      if (v84 == 0x100000000)
      {
        goto LABEL_90;
      }

      v85 = *(v68 + 16);
      v229 = v83;
      v228 = v84;
      if (v85)
      {
        v86 = sub_245B8BAF0(v84);
        if (v87)
        {
          break;
        }
      }

      if (v83 >= *(v245 + 16))
      {

        type metadata accessor for E5MLDelegate.E5MLError();
        sub_245B7C384();
        swift_allocError();
        *v187 = 0xD00000000000001ELL;
        v187[1] = 0x8000000245B93F90;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      if (v83 < 0)
      {
        goto LABEL_91;
      }

      v100 = &v221[2 * v83];
      v89 = *v100;
      v90 = v100[1];
      v101 = *(v79 + 16) + 1;
      v102 = v220;
      do
      {
        if (!--v101)
        {

          type metadata accessor for E5MLDelegate.E5MLError();
          sub_245B7C384();
          swift_allocError();
          v110 = v109;
          v262 = 0;
          v263 = 0xE000000000000000;
          sub_245B92E50();

          v111 = 0x8000000245B93FB0;
          v112 = 0xD000000000000015;
          goto LABEL_38;
        }

        v103 = *v102;
        if (*(v102 - 2) == v89 && *(v102 - 1) == v90)
        {
          break;
        }

        v102 += 3;
      }

      while ((sub_245B92F50() & 1) == 0);

      v105 = v224;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v262 = v105;
      v97 = v228;
      sub_245B8C888(v103, v228, isUniquelyReferenced_nonNull_native);
      v224 = v262;
      v98 = (v229 + 1);
      v99 = &v261;
LABEL_30:
      *(v99 - 32) = v98;
      v107 = v97 + 1;
      v94 = v107 == v222;
      v72 = v217;
      v84 = v107;
      v80 = v225;
      v108 = v255;
      v73 = v227;
      v79 = v223;
      v83 = v229;
      if (v94)
      {
        goto LABEL_35;
      }
    }

    v88 = (*(v68 + 56) + 16 * v86);
    v89 = *v88;
    v90 = v88[1];
    v91 = *(v226 + 16) + 1;
    v92 = v219;
    while (--v91)
    {
      v93 = *v92;
      v94 = *(v92 - 2) == v89 && *(v92 - 1) == v90;
      if (!v94)
      {
        v92 += 3;
        if ((sub_245B92F50() & 1) == 0)
        {
          continue;
        }
      }

      v95 = v224;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v262 = v95;
      v97 = v228;
      sub_245B8C888(v93, v228, v96);
      v98 = v262;
      v99 = &v256;
      goto LABEL_30;
    }

    type metadata accessor for E5MLDelegate.E5MLError();
    sub_245B7C384();
    swift_allocError();
    v110 = v116;
    v262 = 0;
    v263 = 0xE000000000000000;
    sub_245B92E50();

    v111 = 0x8000000245B93FD0;
    v112 = 0xD000000000000014;
LABEL_38:
    v262 = v112;
    v263 = v111;
    MEMORY[0x245D7A2F0](v89, v90);

    v117 = v263;
    *v110 = v262;
    v110[1] = v117;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v108 = v255;
LABEL_35:

  v113 = v234;
  v114 = v73;
  v115 = v254;
  (*(v234 + 56))(v64, 1, 1, v254);
  v264 = sub_245B873A8(v64, *(v114 + 16));
  sub_245B78418(v235, v233, v72, v114, v224, &v264);
  if (v80)
  {
  }

  v118 = v264[2];
  v222 = (v231 + 56);
  v221 = (v231 + 48);
  v220 = (v113 + 48);
  v213 = (v113 + 32);
  v212 = (v113 + 16);
  v211 = (v113 + 88);
  v210 = *MEMORY[0x277D36B10];
  v209 = (v113 + 8);
  v203 = (v113 + 96);
  v223 = v253 + 16;
  v204 = v253 + 88;
  v215 = *MEMORY[0x277D36AC8];
  v198 = *MEMORY[0x277D36AC0];
  v202 = (v253 + 96);
  v199 = (v253 + 8);
  v208 = v232 + 2;
  v234 = v260 + 16;
  v233 = v260 + 88;
  v231 = v260 + 8;
  LODWORD(v229) = *MEMORY[0x277D36B40];
  v228 = (v260 + 96);
  v201 = (v253 + 104);
  v200 = v232 + 1;
  v218 = (v253 + 32);
  v214 = v264;

  v119 = 0;
  v232 = MEMORY[0x277D84F90];
  v120 = v238;
  v225 = 0;
  v121 = v115;
  v122 = v257;
  v219 = v118;
  v230 = v32;
  while (1)
  {
    v124 = v227;
    if (v119 == v118)
    {
      v125 = 1;
      v226 = v118;
    }

    else
    {
      if ((v119 & 0x8000000000000000) != 0)
      {
        goto LABEL_88;
      }

      if (v119 >= v214[2])
      {
        goto LABEL_89;
      }

      v126 = v119 + 1;
      v127 = v247;
      v128 = v214 + ((*(v246 + 80) + 32) & ~*(v246 + 80)) + *(v246 + 72) * v119;
      v129 = *(v108 + 48);
      *v247 = v119;
      sub_245B77E04(v128, v127 + v129);
      v130 = v127;
      v122 = v257;
      sub_245B7CD64(v130, v257, &qword_27EE34860, &qword_245B94770);
      v125 = 0;
      v226 = v126;
      v124 = v227;
    }

    (*v222)(v122, v125, 1, v108);
    v131 = v122;
    v132 = v252;
    sub_245B7CD64(v131, v252, &qword_27EE34868, &unk_245B95120);
    if ((*v221)(v132, 1, v108) == 1)
    {

      swift_bridgeObjectRelease_n();
      return v232;
    }

    v133 = v132;
    v134 = *v132;
    v135 = v251;
    sub_245B7CD64(v133 + *(v108 + 48), v251, &qword_27EE34848, &qword_245B94760);
    if ((*v220)(v135, 1, v121) != 1)
    {
      break;
    }

    sub_245B77E74(v135);
    if ((v134 & 0x8000000000000000) != 0)
    {
      goto LABEL_86;
    }

LABEL_57:
    if (v134 >= *(v124 + 16))
    {
      goto LABEL_87;
    }

    v148 = (*(v253 + 80) + 32) & ~*(v253 + 80);
    v149 = *(v253 + 72);
    (*(v253 + 16))(v256, v124 + v148 + v149 * v134, v120);
    v150 = v232;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = sub_245B850B8(0, v150[2] + 1, 1, v150);
    }

    v122 = v257;
    v232 = v150;
    v152 = v150[2];
    v151 = v150[3];
    if (v152 >= v151 >> 1)
    {
      v232 = sub_245B850B8(v151 > 1, v152 + 1, 1, v232);
    }

    v123 = v232;
    v232[2] = v152 + 1;
    (*v218)(v123 + v148 + v152 * v149, v256, v120);
    v121 = v254;
    v108 = v255;
LABEL_41:
    v118 = v219;
    v119 = v226;
  }

  v136 = v249;
  (*v213)(v249, v135, v121);
  v137 = v244;
  (*v212)(v244, v136, v121);
  v138 = (*v211)(v137, v121);
  if (v138 != v210)
  {
    v147 = *v209;
    (*v209)(v136, v121);
    v147(v137, v121);
    v124 = v227;
    if ((v134 & 0x8000000000000000) != 0)
    {
      goto LABEL_86;
    }

    goto LABEL_57;
  }

  (*v203)(v137, v121);
  if ((v134 & 0x8000000000000000) != 0)
  {
    goto LABEL_92;
  }

  if (v134 >= *(v124 + 16))
  {
    goto LABEL_93;
  }

  v216 = *v137;
  v139 = v253;
  v207 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v206 = *(v253 + 72);
  v140 = v124 + v207 + v206 * v134;
  v141 = *(v253 + 16);
  v142 = v239;
  v141(v239, v140, v120);
  v143 = *(v139 + 88);
  v144 = v143(v142, v120);
  if (v144 == v215)
  {
    (*v202)(v142, v120);
    v145 = *v142;
    v146 = swift_projectBox();
    v205 = *v208;
    v205(v250, v146, v248);
  }

  else
  {
    if (v144 != v198)
    {

      swift_bridgeObjectRelease_n();
      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      v189 = v188;
      v262 = 0;
      v263 = 0xE000000000000000;
      sub_245B92E50();
      MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93FF0);
      v261 = v134;
      v190 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v190);

      v191 = v263;
      *v189 = v262;
      v189[1] = v191;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*v209)(v249, v254);
      return (*v199)(v239, v120);
    }

    v153 = v239;
    v235 = *v202;
    v235(v239, v120);
    v245 = *v153;
    v154 = swift_projectBox();
    v141(v32, v154, v120);
    v155 = v236;
    v141(v236, v32, v120);
    v156 = v120;
    v157 = v143(v155, v120);
    if (v157 != v215)
    {

      swift_bridgeObjectRelease_n();
      v192 = *v199;
      (*v199)(v155, v156);
      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      v194 = v193;
      v262 = 0;
      v263 = 0xE000000000000000;
      sub_245B92E50();
      MEMORY[0x245D7A2F0](0xD000000000000036, 0x8000000245B93FF0);
      v261 = v134;
      v195 = sub_245B92F40();
      MEMORY[0x245D7A2F0](v195);

      v196 = v263;
      *v194 = v262;
      v194[1] = v196;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v192(v230, v156);
      (*v209)(v249, v254);
    }

    (*v199)(v32, v120);
    v235(v155, v120);
    v158 = *v155;
    v159 = swift_projectBox();
    v205 = *v208;
    v205(v250, v159, v248);
  }

  v160 = sub_245B927C0();
  v161 = *(v160 + 16);
  if (!v161)
  {

LABEL_74:
    sub_245B927F0();
    sub_245B92810();
    sub_245B92A00();
    v175 = *(sub_245B92A00() + 16);

    v176 = sub_245B92D40();
    v176[2] = v175 + 1;
    v176[4] = 1;
    if (v175)
    {
      memset_pattern16(v176 + 5, &unk_245B947A0, 8 * v175);
    }

    sub_245B92820();
    v177 = v240;
    sub_245B927E0();
    v178 = v248;
    v179 = swift_allocBox();
    v205(v180, v177, v178);
    *v241 = v179;
    (*v201)();
    v181 = v232;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v181 = sub_245B850B8(0, v181[2] + 1, 1, v181);
    }

    v232 = v181;
    v183 = v181[2];
    v182 = v181[3];
    if (v183 >= v182 >> 1)
    {
      v232 = sub_245B850B8(v182 > 1, v183 + 1, 1, v232);
    }

    v184 = *v200;
    v185 = v248;
    (*v200)(v240, v248);
    v184(v250, v185);
    v121 = v254;
    (*v209)(v249, v254);
    v186 = v232;
    v232[2] = v183 + 1;
    (*v218)(v186 + v207 + v183 * v206, v241, v120);
    v108 = v255;
    v122 = v257;
    goto LABEL_41;
  }

  v262 = MEMORY[0x277D84F90];
  v162 = v160;
  sub_245B852D0(0, v161, 0);
  v163 = v162;
  v164 = 0;
  v165 = v262;
  v235 = (v163 + ((*(v260 + 80) + 32) & ~*(v260 + 80)));
  v166 = v237;
  v245 = v163;
  while (v164 < *(v163 + 16))
  {
    v167 = v259;
    v168 = v260;
    v169 = *(v260 + 16);
    v169(v166, v235 + *(v260 + 72) * v164, v259);
    v170 = v258;
    v169(v258, v166, v167);
    v171 = (*(v168 + 88))(v170, v167);
    if (v171 != v229)
    {
      goto LABEL_94;
    }

    (*v231)(v166, v167);
    (*v228)(v170, v167);
    v172 = *v170;
    v262 = v165;
    v174 = v165[2];
    v173 = v165[3];
    if (v174 >= v173 >> 1)
    {
      sub_245B852D0((v173 > 1), v174 + 1, 1);
      v166 = v237;
      v165 = v262;
    }

    ++v164;
    v165[2] = v174 + 1;
    v165[v174 + 4] = v172;
    v32 = v230;
    v163 = v245;
    if (v161 == v164)
    {

      v120 = v238;
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  *MEMORY[0x277D36B48];
  result = sub_245B92E90();
  __break(1u);
  return result;
}

uint64_t sub_245B8A91C()
{
  v1 = sub_245B92870();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_245B8A9A4(unint64_t a1)
{
  v2 = *(*(sub_245B92870() - 8) + 80);

  return sub_245B88B70(a1);
}

uint64_t sub_245B8AA14(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_245B92DC0();

    if (v8)
    {

      type metadata accessor for E5IOPort();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_245B92DB0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_245B8AC20(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_245B8AE20(v19 + 1);
    }

    sub_245B8B070(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(a2 + 16));
  v11 = sub_245B93010();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    sub_245B8B114(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(*(v6 + 48) + 8 * v13) + 16) != *(a2 + 16))
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_245B8AC20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
    v2 = sub_245B92E10();
    v16 = v2;
    sub_245B92DA0();
    if (sub_245B92DD0())
    {
      type metadata accessor for E5IOPort();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_245B8AE20(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_245B92FF0();
        MEMORY[0x245D7A680](*(v15 + 16));
        result = sub_245B93010();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_245B92DD0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_245B8AE20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
  result = sub_245B92E00();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v18 + 16));
      result = sub_245B93010();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_245B8B070(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(a1 + 16));
  sub_245B93010();
  v5 = -1 << *(a2 + 32);
  result = sub_245B92D90();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_245B8B114(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245B8AE20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_245B8B278();
      a2 = v7;
      goto LABEL_12;
    }

    sub_245B8B3C8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_245B92FF0();
  MEMORY[0x245D7A680](*(v4 + 16));
  result = sub_245B93010();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for E5IOPort();
    a2 = v12;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_245B92F70();
  __break(1u);
  return result;
}

void *sub_245B8B278()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
  v2 = *v0;
  v3 = sub_245B92DF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_245B8B3C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
  result = sub_245B92E00();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v17 + 16));
      result = sub_245B93010();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_245B8B5F0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_245B92DB0();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A40, &unk_245B95110);
      result = sub_245B92E20();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_245B92DB0();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x245D7A4E0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v9 + 16));
      result = sub_245B93010();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v6 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      v16 = *(v3 + 48);
      if (((1 << v12) & v14) != 0)
      {
        v17 = ~v11;
        while (*(*(v16 + 8 * v12) + 16) != *(v9 + 16))
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = *(v6 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v9;
        v18 = *(v3 + 16);
        v8 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v19;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = v1 + 32;
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20 != v22)
    {
      v25 = *(v21 + 8 * v20);
      v26 = *(v3 + 40);
      sub_245B92FF0();
      MEMORY[0x245D7A680](*(v25 + 16));
      result = sub_245B93010();
      v27 = -1 << *(v3 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      v32 = *(v3 + 48);
      if (((1 << v28) & v30) != 0)
      {
        v33 = ~v27;
        while (*(*(v32 + 8 * v28) + 16) != *(v25 + 16))
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *(v6 + 8 * v29) = v31 | v30;
        *(v32 + 8 * v28) = v25;
        v23 = *(v3 + 16);
        v8 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v24;
      }

      if (++v20 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_245B8B884(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_245B92CE0() != a1 || v9 != a2)
  {
    v10 = sub_245B92F50();

    if (v10)
    {
      return v8;
    }

    v8 = sub_245B92C50();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_245B8B974(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_245B92D00();
  }

  __break(1u);
  return result;
}

void *sub_245B8B9C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A50, &qword_245B95140);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_245B8BA34(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_245B92FE0();

  return sub_245B8BB38(a1, v4);
}

unint64_t sub_245B8BA78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_245B92FF0();
  sub_245B92C30();
  v6 = sub_245B93010();

  return sub_245B8BBA4(a1, a2, v6);
}

unint64_t sub_245B8BAF0(unsigned int a1)
{
  v3 = MEMORY[0x245D7A650](*(v1 + 40), a1, 4);

  return sub_245B8BC5C(a1, v3);
}

unint64_t sub_245B8BB38(uint64_t a1, uint64_t a2)
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

unint64_t sub_245B8BBA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_245B92F50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_245B8BC5C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_245B8BCC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A60, &qword_245B95150);
  v38 = a2;
  result = sub_245B92EC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_245B92FF0();
      sub_245B92C30();
      result = sub_245B93010();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_245B8BF70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A58, &qword_245B95148);
  v40 = a2;
  result = sub_245B92EC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_245B92FF0();
      sub_245B92C30();
      result = sub_245B93010();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_245B8C230(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A48, &qword_245B95138);
  v35 = a2;
  result = sub_245B92EC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x245D7A650](*(v8 + 40), v22, 4);
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_245B8C4B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A68, &qword_245B95158);
  result = sub_245B92EC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_245B92FE0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_245B8C728(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_245B8BAF0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_245B8C230(v16, a4 & 1);
      v20 = *v5;
      result = sub_245B8BAF0(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_245B92F80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_245B8CCBC();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

unint64_t sub_245B8C888(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_245B8BA34(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_245B8C4B8(v14, a3 & 1);
      v18 = *v4;
      result = sub_245B8BA34(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_245B92F80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_245B8CE24();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

void *sub_245B8C9D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A60, &qword_245B95150);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_245B8CB44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A58, &qword_245B95148);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_245B8CCBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A48, &qword_245B95138);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_245B8CE24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A68, &qword_245B95158);
  v2 = *v0;
  v3 = sub_245B92EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unsigned __int8 *sub_245B8CF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_245B92CF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_245B8D4FC();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_245B92E70();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        v15 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
        v15 = 0;
LABEL_129:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if ((v67 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if ((v50 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if ((v59 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v15 = 0;
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_245B8D4FC()
{
  v0 = sub_245B92D00();
  v4 = sub_245B8D57C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_245B8D57C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_245B92C20();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_245B92D80();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_245B8B9C0(v9, 0);
  v12 = sub_245B8D6D4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_245B92C20();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_245B92E70();
LABEL_4:

  return sub_245B92C20();
}

unint64_t sub_245B8D6D4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_245B8D8F4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_245B92CC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_245B92E70();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_245B8D8F4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_245B92CA0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_245B8D8F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_245B92CD0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x245D7A330](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_245B8D970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A60, &qword_245B95150);
    v3 = sub_245B92ED0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_245B8BA78(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_245B8DA74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A58, &qword_245B95148);
    v3 = sub_245B92ED0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_245B8BA78(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_245B8DB88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A48, &qword_245B95138);
  v3 = sub_245B92ED0();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_245B8BAF0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_245B8BAF0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_245B8DC9C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A68, &qword_245B95158);
  v3 = sub_245B92ED0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_245B8BA34(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_245B8BA34(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_245B8DDA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_245B840B8(a1, a2, 58, 0xE100000000000000);
  if (v3)
  {
    return result;
  }

  v89 = result;
  v95 = v6;
  v9 = sub_245B840B8(v7, v8, 124, 0xE100000000000000);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v9;

  v17 = sub_245B840B8(v13, v15, 124, 0xE100000000000000);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v93 = v17;

  sub_245B8B884(124, 0xE100000000000000, v21, v23);
  if (v24)
  {

    v25 = 0;
    v26 = 0xE000000000000000;
  }

  else
  {
    v27 = sub_245B92D00();
    MEMORY[0x245D7A290](v27);

    v28 = sub_245B92C50();
    v29 = sub_245B8B974(v28, v21, v23);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v25 = MEMORY[0x245D7A290](v29, v31, v33, v35);
    v26 = v36;
  }

  v88 = sub_245B84288(v16, v11);

  v87 = sub_245B84288(v93, v19);

  v37 = sub_245B8DB88(MEMORY[0x277D84F90]);
  v38 = sub_245B84288(v25, v26);

  v94 = *(v38 + 16);
  if (!v94)
  {

LABEL_84:
    *a3 = v89;
    a3[1] = v95;
    a3[2] = v88;
    a3[3] = v87;
    a3[4] = v37;
    return result;
  }

  v39 = 0;
  v91 = v37;
  v92 = v38 + 32;
  v90 = v38;
  while (v39 < *(v38 + 16))
  {
    v40 = (v92 + 16 * v39);
    v42 = *v40;
    v41 = v40[1];
    v43 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v43 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v43)
    {
      goto LABEL_11;
    }

    sub_245B8B884(58, 0xE100000000000000, v42, v41);
    if (v44)
    {

      type metadata accessor for E5MLDelegate.E5MLError();
      sub_245B7C384();
      swift_allocError();
      v85 = v84;
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_245B92E50();
      MEMORY[0x245D7A2F0](0x6574696D696C6544, 0xEB00000000272072);
      sub_245B92BA0();
      MEMORY[0x245D7A2F0](0xD000000000000011, 0x8000000245B93ED0);
      MEMORY[0x245D7A2F0](v42, v41);

      MEMORY[0x245D7A2F0](34, 0xE100000000000000);
      v86 = v97;
      *v85 = v96;
      v85[1] = v86;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v45 = sub_245B92D00();
    v46 = MEMORY[0x245D7A290](v45);
    v48 = v47;

    v49 = sub_245B92C50();
    v50 = sub_245B8B974(v49, v42, v41);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v57 = MEMORY[0x245D7A290](v50, v52, v54, v56);
    v59 = v58;

    v60 = HIBYTE(v48) & 0xF;
    v61 = v46 & 0xFFFFFFFFFFFFLL;
    if ((v48 & 0x2000000000000000) != 0)
    {
      v62 = HIBYTE(v48) & 0xF;
    }

    else
    {
      v62 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (!v62)
    {

      goto LABEL_9;
    }

    if ((v48 & 0x1000000000000000) == 0)
    {
      if ((v48 & 0x2000000000000000) != 0)
      {
        v96 = v46;
        v97 = v48 & 0xFFFFFFFFFFFFFFLL;
        if (v46 == 43)
        {
          if (!v60)
          {
            goto LABEL_88;
          }

          if (--v60)
          {
            LODWORD(v64) = 0;
            v74 = &v96 + 1;
            while (1)
            {
              v75 = *v74 - 48;
              if (v75 > 9)
              {
                break;
              }

              v76 = 10 * v64;
              if ((v76 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v64) = v76 + v75;
              if (__CFADD__(v76, v75))
              {
                break;
              }

              ++v74;
              if (!--v60)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v46 == 45)
        {
          if (!v60)
          {
            goto LABEL_90;
          }

          if (--v60)
          {
            LODWORD(v64) = 0;
            v68 = &v96 + 1;
            while (1)
            {
              v69 = *v68 - 48;
              if (v69 > 9)
              {
                break;
              }

              v70 = 10 * v64;
              if ((v70 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v64) = v70 - v69;
              if (v70 < v69)
              {
                break;
              }

              ++v68;
              if (!--v60)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v60)
        {
          LODWORD(v64) = 0;
          v79 = &v96;
          while (1)
          {
            v80 = *v79 - 48;
            if (v80 > 9)
            {
              break;
            }

            v81 = 10 * v64;
            if ((v81 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v64) = v81 + v80;
            if (__CFADD__(v81, v80))
            {
              break;
            }

            v79 = (v79 + 1);
            if (!--v60)
            {
              goto LABEL_78;
            }
          }
        }
      }

      else
      {
        if ((v46 & 0x1000000000000000) != 0)
        {
          result = ((v48 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_245B92E70();
        }

        v63 = *result;
        if (v63 == 43)
        {
          if (v61 < 1)
          {
            goto LABEL_91;
          }

          v60 = v61 - 1;
          if (v61 != 1)
          {
            LODWORD(v64) = 0;
            if (!result)
            {
              goto LABEL_69;
            }

            v71 = result + 1;
            while (1)
            {
              v72 = *v71 - 48;
              if (v72 > 9)
              {
                break;
              }

              v73 = 10 * v64;
              if ((v73 & 0xFFFFFFFF00000000) != 0)
              {
                break;
              }

              LODWORD(v64) = v73 + v72;
              if (__CFADD__(v73, v72))
              {
                break;
              }

              ++v71;
              if (!--v60)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v63 == 45)
        {
          if (v61 < 1)
          {
            goto LABEL_89;
          }

          v60 = v61 - 1;
          if (v61 != 1)
          {
            LODWORD(v64) = 0;
            if (result)
            {
              v65 = result + 1;
              while (1)
              {
                v66 = *v65 - 48;
                if (v66 > 9)
                {
                  goto LABEL_77;
                }

                v67 = 10 * v64;
                if ((v67 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_77;
                }

                LODWORD(v64) = v67 - v66;
                if (v67 < v66)
                {
                  goto LABEL_77;
                }

                ++v65;
                if (!--v60)
                {
                  goto LABEL_78;
                }
              }
            }

LABEL_69:
            LOBYTE(v60) = 0;
LABEL_78:
            v98 = v60;
            v82 = v60;

            if ((v82 & 1) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_9;
          }
        }

        else
        {
          if (!v61)
          {
            goto LABEL_77;
          }

          LODWORD(v64) = 0;
          if (!result)
          {
            goto LABEL_69;
          }

          while (1)
          {
            v77 = *result - 48;
            if (v77 > 9)
            {
              break;
            }

            v78 = 10 * v64;
            if ((v78 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            LODWORD(v64) = v78 + v77;
            if (__CFADD__(v78, v77))
            {
              break;
            }

            ++result;
            if (!--v61)
            {
              goto LABEL_69;
            }
          }
        }
      }

LABEL_77:
      LODWORD(v64) = 0;
      LOBYTE(v60) = 1;
      goto LABEL_78;
    }

    v98 = 0;
    v64 = sub_245B8CF80(v46, v48, 10);

    if ((v64 & 0x100000000) == 0)
    {
LABEL_79:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96 = v91;
      result = sub_245B8C728(v57, v59, v64, isUniquelyReferenced_nonNull_native);
      v91 = v96;
      goto LABEL_10;
    }

LABEL_9:

LABEL_10:
    v38 = v90;
LABEL_11:
    if (++v39 == v94)
    {

      v37 = v91;
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t ProgramDescriptor.function(named:dependencies:profiler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A70, &qword_245B951C0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_245B928E0();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_245B927B0();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B8E660, 0, 0);
}

uint64_t sub_245B8E660()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[2];
  v6 = v0[3];
  sub_245B927A0();
  sub_245B92880();
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    v8 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_245B822B8(v8, &qword_27EE34A70, &qword_245B951C0);
    v9 = v0[13];
    v10 = v0[10];
    v11 = v0[7];

    v12 = v0[1];

    return v12(0);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v14 = swift_task_alloc();
    v0[14] = v14;
    *v14 = v0;
    v14[1] = sub_245B8E804;
    v15 = v0[13];
    v16 = v0[10];
    v17 = v0[6];
    v18 = v0[4];

    return sub_245B8EB60(v15, v17, v16, v18);
  }
}

uint64_t sub_245B8E804()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_245B8EAA0;
  }

  else
  {
    v3 = sub_245B8E918;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245B8E918()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];
  result = sub_245B928B0();
  if (v1)
  {
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13();
  }

  else if (result)
  {
    v14 = result;
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v16 + 8))(v15, v17);
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[7];

    v21 = v0[1];

    return v21(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245B8EAA0()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_245B8EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_245B928E0();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = *(*(sub_245B92BF0() - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = sub_245B92940();
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A78, &qword_245B951D0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v13 = sub_245B92960();
  v4[24] = v13;
  v14 = *(v13 - 8);
  v4[25] = v14;
  v15 = *(v14 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE34A80, &qword_245B951D8) - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v17 = sub_245B92910();
  v4[32] = v17;
  v18 = *(v17 - 8);
  v4[33] = v18;
  v19 = *(v18 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245B8EE70, 0, 0);
}

uint64_t sub_245B8EE70()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[9];
  MEMORY[0x245D79F20](1397640770, 0xE400000000000000);
  v5 = *(v2 + 48);
  v0[40] = v5;
  v0[41] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_245B822B8(v0[31], qword_27EE34A80, &qword_245B951D8);
    v7 = v0[40];
    v6 = v0[41];
    v8 = v0[32];
    v9 = v0[30];
    v10 = v0[9];
    v11 = sub_245B92650();
    v0[45] = v11;
    v12 = sub_245B92640();
    MEMORY[0x245D79F20](v12);

    if (v7(v9, 1, v8) == 1)
    {
      sub_245B822B8(v0[30], qword_27EE34A80, &qword_245B951D8);
      v14 = v0[40];
      v13 = v0[41];
      v15 = v0[32];
      v16 = v0[29];
      v17 = v0[9];
      MEMORY[0x245D79F20](1280128325, 0xE400000000000000);
      if (v14(v16, 1, v15) == 1)
      {
        sub_245B822B8(v0[29], qword_27EE34A80, &qword_245B951D8);
        v19 = v0[38];
        v18 = v0[39];
        v20 = v0[36];
        v21 = v0[37];
        v23 = v0[34];
        v22 = v0[35];
        v25 = v0[30];
        v24 = v0[31];
        v27 = v0[28];
        v26 = v0[29];
        v51 = v0[27];
        v52 = v0[26];
        v53 = v0[23];
        v54 = v0[22];
        v55 = v0[21];
        v56 = v0[20];
        v57 = v0[17];
        v58 = v0[16];
        v59 = v0[15];
        v60 = v0[14];

        v28 = v0[1];

        return v28();
      }

      else
      {
        v45 = v0[34];
        v46 = v0[35];
        v47 = v0[32];
        v48 = v0[33];
        (*(v48 + 32))(v46, v0[29], v47);
        (*(v48 + 16))(v45, v46, v47);
        type metadata accessor for E5MLDelegate();
        swift_allocObject();
        v49 = swift_task_alloc();
        v0[49] = v49;
        *v49 = v0;
        v49[1] = sub_245B906B4;
        v50 = v0[34];

        return sub_245B85AFC(v50);
      }
    }

    else
    {
      v37 = v0[36];
      v36 = v0[37];
      v38 = v0[32];
      v39 = v0[33];
      (*(v39 + 32))(v36, v0[30], v38);
      (*(v39 + 16))(v37, v36, v38);
      v40 = *(v11 + 48);
      v41 = *(v11 + 52);
      swift_allocObject();
      v42 = *(MEMORY[0x277CD77E0] + 4);
      v43 = swift_task_alloc();
      v0[46] = v43;
      *v43 = v0;
      v43[1] = sub_245B8FE00;
      v44 = v0[36];

      return MEMORY[0x282124268](v44);
    }
  }

  else
  {
    v30 = v0[38];
    v31 = v0[39];
    v32 = v0[32];
    v33 = v0[33];
    (*(v33 + 32))(v31, v0[31], v32);
    (*(v33 + 16))(v30, v31, v32);
    type metadata accessor for BNNSDelegate();
    swift_allocObject();
    v34 = swift_task_alloc();
    v0[42] = v34;
    *v34 = v0;
    v34[1] = sub_245B8F378;
    v35 = v0[38];

    return sub_245B76660(v35);
  }
}

uint64_t sub_245B8F378(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v7 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v5 = sub_245B8FC8C;
  }

  else
  {
    v5 = sub_245B8F48C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_245B8F48C()
{
  v107 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[10];
  MEMORY[0x245D79F40](1397640770, 0xE400000000000000);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_245B822B8(v0[23], &qword_27EE34A78, &qword_245B951D0);
    if (qword_27EE346F0 != -1)
    {
LABEL_24:
      swift_once();
    }

    v5 = v0[16];
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[10];
    v9 = sub_245B926E0();
    __swift_project_value_buffer(v9, qword_27EE36010);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_245B926C0();
    v11 = sub_245B92D60();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[43];
    v14 = v0[39];
    v16 = v0[32];
    v15 = v0[33];
    v17 = v0[16];
    v19 = v0[12];
    v18 = v0[13];
    if (v12)
    {
      v99 = v0[43];
      v102 = v0[32];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v105 = v21;
      *v20 = 136315138;
      log = v10;
      v96 = v14;
      v22 = sub_245B928D0();
      v24 = v23;
      (*(v18 + 8))(v17, v19);
      v25 = sub_245B90E28(v22, v24, &v105);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_245B73000, log, v11, "Program had BNNS usage but could not find delegate args on function %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245D7ADF0](v21, -1, -1);
      MEMORY[0x245D7ADF0](v20, -1, -1);

      (*(v15 + 8))(v96, v102);
    }

    else
    {
      v49 = v0[43];

      (*(v18 + 8))(v17, v19);
      (*(v15 + 8))(v14, v16);
    }
  }

  else
  {
    (*(v0[25] + 32))(v0[28], v0[23], v0[24]);
    v26 = sub_245B92950();
    v100 = *(v26 + 16);
    if (v100)
    {
      v27 = 0;
      v97 = v0[19];
      while (1)
      {
        if (v27 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v28 = v0[17];
        v29 = v26;
        (*(v97 + 16))(v0[20], v26 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v27, v0[18]);
        v30 = sub_245B92930();
        v32 = v31;
        sub_245B92BE0();
        v33 = sub_245B92BD0();
        v35 = v34;
        v36 = sub_245B74A68(v30, v32);
        if (!v35)
        {
          break;
        }

        v37 = v0[43];
        v38 = v0[20];
        v39 = v0[8];
        ++v27;
        v103 = v0[18];
        v105 = 0x2E534E4E42;
        v106 = 0xE500000000000000;
        v0[7] = sub_245B92920();
        v40 = sub_245B92F40();
        MEMORY[0x245D7A2F0](v40);

        v41 = v106;
        v0[2] = v105;
        v0[3] = v41;
        v0[4] = v37;
        v0[5] = v33;
        v0[6] = v35;
        sub_245B7721C();

        sub_245B92790();
        (*(v97 + 8))(v38, v103);

        v26 = v29;
        if (v100 == v27)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      return MEMORY[0x282124268](v36);
    }

LABEL_10:
    v42 = v0[43];
    v43 = v0[39];
    v45 = v0[32];
    v44 = v0[33];
    v46 = v0[28];
    v47 = v0[24];
    v48 = v0[25];

    (*(v48 + 8))(v46, v47);
    (*(v44 + 8))(v43, v45);
  }

  v51 = v0[40];
  v50 = v0[41];
  v52 = v0[32];
  v53 = v0[30];
  v54 = v0[9];
  v55 = sub_245B92650();
  v0[45] = v55;
  v56 = sub_245B92640();
  MEMORY[0x245D79F20](v56);

  if (v51(v53, 1, v52) != 1)
  {
    v75 = v0[36];
    v74 = v0[37];
    v76 = v0[32];
    v77 = v0[33];
    (*(v77 + 32))(v74, v0[30], v76);
    (*(v77 + 16))(v75, v74, v76);
    v78 = *(v55 + 48);
    v79 = *(v55 + 52);
    swift_allocObject();
    v80 = *(MEMORY[0x277CD77E0] + 4);
    v81 = swift_task_alloc();
    v0[46] = v81;
    *v81 = v0;
    v81[1] = sub_245B8FE00;
    v36 = v0[36];

    return MEMORY[0x282124268](v36);
  }

  sub_245B822B8(v0[30], qword_27EE34A80, &qword_245B951D8);
  v58 = v0[40];
  v57 = v0[41];
  v59 = v0[32];
  v60 = v0[29];
  v61 = v0[9];
  MEMORY[0x245D79F20](1280128325, 0xE400000000000000);
  if (v58(v60, 1, v59) == 1)
  {
    sub_245B822B8(v0[29], qword_27EE34A80, &qword_245B951D8);
    v63 = v0[38];
    v62 = v0[39];
    v64 = v0[36];
    v65 = v0[37];
    v67 = v0[34];
    v66 = v0[35];
    v69 = v0[30];
    v68 = v0[31];
    v71 = v0[28];
    v70 = v0[29];
    v88 = v0[27];
    v89 = v0[26];
    v90 = v0[23];
    v91 = v0[22];
    v92 = v0[21];
    v93 = v0[20];
    loga = v0[17];
    v98 = v0[16];
    v101 = v0[15];
    v104 = v0[14];

    v72 = v0[1];

    return v72();
  }

  else
  {
    v82 = v0[34];
    v83 = v0[35];
    v84 = v0[32];
    v85 = v0[33];
    (*(v85 + 32))(v83, v0[29], v84);
    (*(v85 + 16))(v82, v83, v84);
    type metadata accessor for E5MLDelegate();
    swift_allocObject();
    v86 = swift_task_alloc();
    v0[49] = v86;
    *v86 = v0;
    v86[1] = sub_245B906B4;
    v87 = v0[34];

    return sub_245B85AFC(v87);
  }
}

uint64_t sub_245B8FC8C()
{
  (*(v0[33] + 8))(v0[39], v0[32]);
  v23 = v0[44];
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_245B8FE00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_245B90540;
  }

  else
  {
    v5 = sub_245B8FF14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_245B8FF14()
{
  v95 = v0;
  v1 = v0[45];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[10];
  v6 = sub_245B92640();
  MEMORY[0x245D79F40](v6);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_245B822B8(v0[22], &qword_27EE34A78, &qword_245B951D0);
    if (qword_27EE346F0 != -1)
    {
      swift_once();
    }

    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[10];
    v11 = sub_245B926E0();
    __swift_project_value_buffer(v11, qword_27EE36010);
    (*(v9 + 16))(v7, v10, v8);
    v12 = sub_245B926C0();
    v13 = sub_245B92D60();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[47];
    v92 = v0[37];
    v16 = v0[32];
    v17 = v0[33];
    v18 = v0[15];
    v20 = v0[12];
    v19 = v0[13];
    if (v14)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v94 = v22;
      *v21 = 136315138;
      log = v12;
      v87 = v16;
      v23 = sub_245B928D0();
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_245B90E28(v23, v25, &v94);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_245B73000, log, v13, "Program had MPSGraph usage but could not find delegate args on function %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245D7ADF0](v22, -1, -1);
      MEMORY[0x245D7ADF0](v21, -1, -1);

      (*(v17 + 8))(v92, v87);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
      (*(v17 + 8))(v92, v16);
    }
  }

  else
  {
    v27 = v0[47];
    v28 = v0[48];
    v29 = v0[11];
    v30 = v0[8];
    (*(v0[25] + 32))(v0[27], v0[22], v0[24]);
    sub_245B92630();
    v31 = v0[47];
    v32 = v0[37];
    v33 = v0[32];
    v34 = v0[33];
    v35 = v0[27];
    v36 = v0[24];
    v37 = v0[25];

    (*(v37 + 8))(v35, v36);
    (*(v34 + 8))(v32, v33);
    if (v28)
    {
      v39 = v0[38];
      v38 = v0[39];
      v40 = v0[36];
      v41 = v0[37];
      v43 = v0[34];
      v42 = v0[35];
      v45 = v0[30];
      v44 = v0[31];
      v46 = v0[28];
      v47 = v0[29];
      v71 = v0[27];
      v72 = v0[26];
      v74 = v0[23];
      v76 = v0[22];
      v78 = v0[21];
      v80 = v0[20];
      v82 = v0[17];
      loga = v0[16];
      v88 = v0[15];
      v90 = v0[14];

      v48 = v0[1];
LABEL_11:

      return v48();
    }
  }

  v50 = v0[40];
  v49 = v0[41];
  v51 = v0[32];
  v52 = v0[29];
  v53 = v0[9];
  MEMORY[0x245D79F20](1280128325, 0xE400000000000000);
  if (v50(v52, 1, v51) == 1)
  {
    sub_245B822B8(v0[29], qword_27EE34A80, &qword_245B951D8);
    v55 = v0[38];
    v54 = v0[39];
    v56 = v0[36];
    v57 = v0[37];
    v59 = v0[34];
    v58 = v0[35];
    v61 = v0[30];
    v60 = v0[31];
    v63 = v0[28];
    v62 = v0[29];
    v73 = v0[27];
    v75 = v0[26];
    v77 = v0[23];
    v79 = v0[22];
    v81 = v0[21];
    v83 = v0[20];
    logb = v0[17];
    v89 = v0[16];
    v91 = v0[15];
    v93 = v0[14];

    v48 = v0[1];
    goto LABEL_11;
  }

  v65 = v0[34];
  v66 = v0[35];
  v67 = v0[32];
  v68 = v0[33];
  (*(v68 + 32))(v66, v0[29], v67);
  (*(v68 + 16))(v65, v66, v67);
  type metadata accessor for E5MLDelegate();
  swift_allocObject();
  v69 = swift_task_alloc();
  v0[49] = v69;
  *v69 = v0;
  v69[1] = sub_245B906B4;
  v70 = v0[34];

  return sub_245B85AFC(v70);
}

uint64_t sub_245B90540()
{
  (*(v0[33] + 8))(v0[37], v0[32]);
  v23 = v0[48];
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_245B906B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v7 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v5 = sub_245B90CB4;
  }

  else
  {
    v5 = sub_245B907C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_245B907C8()
{
  v82 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[10];
  MEMORY[0x245D79F40](1280128325, 0xE400000000000000);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_245B822B8(v0[21], &qword_27EE34A78, &qword_245B951D0);
    if (qword_27EE346F0 != -1)
    {
      swift_once();
    }

    v6 = v0[13];
    v5 = v0[14];
    v7 = v0[12];
    v8 = v0[10];
    v9 = sub_245B926E0();
    __swift_project_value_buffer(v9, qword_27EE36010);
    (*(v6 + 16))(v5, v8, v7);
    v10 = sub_245B926C0();
    v11 = sub_245B92D60();
    v12 = os_log_type_enabled(v10, v11);
    v79 = v0[35];
    v13 = v0[32];
    v14 = v0[33];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    if (v12)
    {
      v76 = v0[50];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v81 = v19;
      *v18 = 136315138;
      log = v10;
      v73 = v13;
      v20 = sub_245B928D0();
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_245B90E28(v20, v22, &v81);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_245B73000, log, v11, "Program had E5ML usage but could not find delegate args on function %s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245D7ADF0](v19, -1, -1);
      MEMORY[0x245D7ADF0](v18, -1, -1);

      (*(v14 + 8))(v79, v73);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v14 + 8))(v79, v13);
    }
  }

  else
  {
    v24 = v0[50];
    v25 = v0[51];
    v26 = v0[26];
    v27 = v0[8];
    (*(v0[25] + 32))(v26, v0[21], v0[24]);
    sub_245B86DA8(v26, v27);
    v28 = v0[50];
    v29 = v0[35];
    v30 = v0[32];
    v31 = v0[33];
    v33 = v0[25];
    v32 = v0[26];
    v34 = v0[24];

    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v29, v30);
    if (v25)
    {
      v36 = v0[38];
      v35 = v0[39];
      v37 = v0[36];
      v38 = v0[37];
      v40 = v0[34];
      v39 = v0[35];
      v42 = v0[30];
      v41 = v0[31];
      v43 = v0[28];
      v44 = v0[29];
      v57 = v0[27];
      v58 = v0[26];
      v60 = v0[23];
      v62 = v0[22];
      v64 = v0[21];
      v66 = v0[20];
      v68 = v0[17];
      loga = v0[16];
      v74 = v0[15];
      v77 = v0[14];

      v45 = v0[1];
      goto LABEL_10;
    }
  }

  v47 = v0[38];
  v46 = v0[39];
  v48 = v0[36];
  v49 = v0[37];
  v51 = v0[34];
  v50 = v0[35];
  v53 = v0[30];
  v52 = v0[31];
  v55 = v0[28];
  v54 = v0[29];
  v59 = v0[27];
  v61 = v0[26];
  v63 = v0[23];
  v65 = v0[22];
  v67 = v0[21];
  v69 = v0[20];
  logb = v0[17];
  v75 = v0[16];
  v78 = v0[15];
  v80 = v0[14];

  v45 = v0[1];
LABEL_10:

  return v45();
}

uint64_t sub_245B90CB4()
{
  (*(v0[33] + 8))(v0[35], v0[32]);
  v23 = v0[51];
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[16];
  v21 = v0[15];
  v22 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_245B90E28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_245B90EF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_245B9135C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_245B90EF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_245B91000(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_245B92E70();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_245B91000(uint64_t a1, unint64_t a2)
{
  v4 = sub_245B9104C(a1, a2);
  sub_245B9117C(&unk_2858B9648);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_245B9104C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_245B8B9C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_245B92E70();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_245B92C90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_245B8B9C0(v10, 0);
        result = sub_245B92E30();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_245B9117C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_245B91268(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_245B91268(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34A50, &qword_245B95140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_245B9135C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_245B913C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_245B91440(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_245B915C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_245B91834(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_245B918B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_245B91A40(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_245B91CB0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v5 = sub_245B92760();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x28223BE20](v8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245B92710();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  sub_245B92740();
  v19 = *v3;
  v18 = *(v3 + 1);

  sub_245B92700();
  v20 = v36;
  sub_245B926F0();
  if (!v20)
  {
    v36 = v5;
    (*(v34 + 16))(v14, &v3[*(a3 + 36)], v10);
    v21 = *(a3 + 24);
    v22 = *(v21 + 32);
    v24 = v31;
    v23 = v32;
    sub_245B74E8C(v31, v32);
    v22(v24, v23, v10, v21);
    v25 = *(v21 + 16);
    v26 = v33;
    sub_245B92730();
    v27 = v34;
    sub_245B74E24();
    sub_245B92750();
    (*(v30 + 8))(v26, v36);
    (*(v27 + 8))(v14, v10);
    v10 = v35;
    sub_245B92720();
  }

  return v10;
}

char *sub_245B92030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a2;
  v46 = a3;
  v44 = a1;
  v7 = sub_245B92760();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE34780, &unk_245B94440);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v41 - v15;
  v43 = a4;
  v17 = *(a4 + 16);
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v14, v19);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_245B92710();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  sub_245B92740();
  v25 = *(v5 + 16);
  v26 = *(v5 + 24);

  sub_245B92700();
  v27 = v50;
  sub_245B926F0();
  if (!v27)
  {
    v41 = v7;
    v28 = v43;
    v29 = *(v48 + 16);
    v30 = v5 + *(v43 + 40);
    v50 = 0;
    v29(v21, v30, v17);
    v31 = *(v28 + 24);
    v32 = *(v31 + 32);
    v34 = v44;
    v33 = v45;
    sub_245B74E8C(v44, v45);
    v32(v34, v33, v17, v31);
    v35 = sub_245B925E0();
    v36 = *(v35 - 8);
    (*(v36 + 16))(v16, v46, v35);
    (*(v36 + 56))(v16, 0, 1, v35);
    (*(v31 + 56))(v16, v17, v31);
    v37 = *(v31 + 16);
    v25 = v47;
    v38 = v50;
    sub_245B92730();
    if (v38)
    {
      (*(v48 + 8))(v21, v17);
    }

    else
    {
      v39 = v48;
      sub_245B74E24();
      sub_245B92750();
      (*(v42 + 8))(v25, v41);
      (*(v39 + 8))(v21, v17);
      v25 = v49;
    }

    sub_245B92720();
  }

  return v25;
}