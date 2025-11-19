uint64_t sub_25C829D9C(void *a1, uint64_t a2)
{
  v213 = a2;
  v3 = sub_25C82DFBC();
  v232 = *(v3 - 8);
  v233 = v3;
  v4 = *(v232 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v198 = (&v184 - v9);
  v235 = sub_25C82DEAC();
  v231 = *(v235 - 8);
  v10 = *(v231 + 64);
  v11 = MEMORY[0x28223BE20](v235);
  v216 = &v184 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v221 = (&v184 - v14);
  MEMORY[0x28223BE20](v13);
  v212 = &v184 - v15;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16080, &qword_25C830490);
  v214 = *(v219 - 1);
  v16 = *(v214 + 64);
  v17 = MEMORY[0x28223BE20](v219);
  v229 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v184 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v184 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v184 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v184 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v184 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v184 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = &v184 - v37;
  v237 = MEMORY[0x277D84F90];
  v39 = a1[3];
  v218 = a1;
  v40 = *__swift_project_boxed_opaque_existential_1(a1, v39);
  v41 = v234;
  result = sub_25C81EF2C();
  if (v41)
  {
    return result;
  }

  v211 = v38;
  v215 = v36;
  v196 = v33;
  v190 = v30;
  v197 = v27;
  v187 = v24;
  v209 = v21;
  v210 = *(result + 16);
  if (!v210)
  {

    return MEMORY[0x277D84F90];
  }

  v220 = 0;
  v43 = 0;
  v44 = v219;
  v45 = v211;
  v207 = &v211[v219[12]];
  v206 = &v211[v219[24]];
  v205 = &v211[v219[28]];
  v46 = v214;
  v204 = result + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v194 = v196 + 8;
  v189 = v190 + 8;
  v195 = v197 + 8;
  v203 = v219[16];
  v185 = v187 + 8;
  v228 = (v232 + 32);
  v202 = v219[20];
  v201 = (v231 + 32);
  v47 = (v231 + 8);
  v193 = (v232 + 56);
  v199 = (v232 + 8);
  *(&v48 + 1) = 2;
  v200 = xmmword_25C830640;
  *&v48 = 136315394;
  v191 = v48;
  *&v48 = 136315138;
  v186 = v48;
  v188 = MEMORY[0x277D84F90];
  v49 = v215;
  v50 = v233;
  v192 = v6;
  v208 = result;
  v217 = (v231 + 8);
  while (v43 < *(result + 16))
  {
    sub_25C7E92DC(v204 + *(v46 + 72) * v43, v45, &qword_27FC16080, &qword_25C830490);
    v230 = *(v45 + v203);
    v56 = v230;
    v234 = *(v45 + v202);
    v232 = v43;
    v57 = *v206;
    v225 = *(v206 + 1);
    v226 = v57;
    v58 = *v205;
    v223 = *(v205 + 1);
    v224 = v58;
    v59 = v44[12];
    v222 = v44[16];
    v60 = v50;
    v61 = v44[20];
    v62 = v49;
    v63 = v47;
    v64 = (v62 + v44[24]);
    v65 = v44;
    v66 = (v62 + v44[28]);
    v227 = *v228;
    v227(v62, v45, v60);
    v67 = *v201;
    v231 = v59;
    v67(v62 + v59, v207, v235);
    *(v62 + v222) = v56;
    *(v62 + v61) = v234;
    v68 = v225;
    *v64 = v226;
    v64[1] = v68;
    v69 = v223;
    *v66 = v224;
    v66[1] = v69;
    v70 = v212;
    sub_25C82DE5C();
    sub_25C82DE8C();
    v234 = *v63;
    v234(v70, v235);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
    v71 = swift_allocObject();
    *(v71 + 16) = v200;
    *(v71 + 56) = MEMORY[0x277D83B88];
    *(v71 + 64) = MEMORY[0x277D83C10];
    *(v71 + 32) = v232;
    sub_25C82E0CC();
    v73 = v72;

    v74 = v221;
    sub_25C82DDFC();
    if (!v230)
    {
      v50 = v233;

      sub_25C82E27C();
      v84 = v229;
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v86 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      v87 = swift_allocError();
      *v88 = 20;
      v226 = v87;
      swift_willThrow();
      v225 = 0;
      v85 = v209;
      v49 = v215;
      goto LABEL_35;
    }

    v230 = v73;
    v75 = __swift_project_boxed_opaque_existential_1(v218, v218[3]);
    v76 = v196;
    sub_25C7E92DC(v62, v196, &qword_27FC16080, &qword_25C830490);
    v77 = v65[12];

    v78 = v194;
    v79 = *&v194[v65[24]];

    v80 = *&v78[v65[28]];

    v81 = v198;
    v50 = v233;
    v227(v198, v76, v233);
    (*v193)(v81, 0, 1, v50);
    v82 = *v75;
    v83 = v220;
    sub_25C822E90((v62 + v231), v81, v74, v216);
    v84 = v229;
    if (!v83)
    {
      v220 = 0;
      sub_25C7E97F4(v81, &qword_27FC16048, qword_25C8309D0);
      v89 = v76 + v77;
      v90 = v234;
      v91 = v235;
      v92 = v217;
      v234(v89, v235);
      v93 = v190;
      sub_25C7E92DC(v62, v190, &qword_27FC16080, &qword_25C830490);
      v94 = v65[12];

      v95 = *&v189[v65[24]];

      v96 = (v93 + v65[28]);
      v97 = v96[1];
      v98 = v62;
      if (v97)
      {
        v99 = *v96;
        v90(v93 + v94, v91);
        v226 = *v199;
        v226(v93, v233);
        v100 = sub_25C82E25C();
        v47 = v92;
        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v101 = qword_281559838;
        v102 = v99;
        if (os_log_type_enabled(qword_281559838, v100))
        {
          v103 = v101;
          v104 = v98;
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v236 = v106;
          *v105 = v186;
          *(v105 + 4) = sub_25C7E77E4(v102, v97, &v236);
          _os_log_impl(&dword_25C7D2000, v103, v100, "Setting candidate model with coreduet stream %s", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v106);
          MEMORY[0x25F890110](v106, -1, -1);
          v98 = v104;
          MEMORY[0x25F890110](v105, -1, -1);
        }

        v107 = v197;
        sub_25C7E92DC(v98, v197, &qword_27FC16080, &qword_25C830490);
        v108 = v219;
        v225 = v219[12];

        v109 = *(v107 + v108[20]);
        v110 = v195;
        v111 = *&v195[v108[24]];

        v112 = *&v110[v108[28]];

        v113 = objc_allocWithZone(ODCurareCandidateModel);
        v114 = sub_25C82DE2C();
        v115 = sub_25C82E07C();

        v116 = [v113 initWithModelURL:v114 withCoreDuetStreamIdentifier:v115 andMetadata:v109];

        v51 = v235;
        v234(v225 + v107, v235);
        v50 = v233;
        v226(v107, v233);
        goto LABEL_25;
      }

      v90(v93 + v94, v91);
      v226 = *v199;
      v226(v93, v233);
      v117 = v187;
      sub_25C7E92DC(v62, v187, &qword_27FC16080, &qword_25C830490);
      v118 = v65[12];

      v119 = (v117 + v65[24]);
      v120 = v119[1];
      v225 = *v119;
      v121 = *&v185[v65[28]];

      v122 = v117 + v118;
      if (v120)
      {
        v90(v122, v91);
        v226(v117, v233);
        v123 = v197;
        sub_25C7E92DC(v62, v197, &qword_27FC16080, &qword_25C830490);
        v224 = v65[12];

        v223 = *(v123 + v65[20]);
        v124 = v195;
        v125 = *&v195[v65[24]];

        v126 = *&v124[v65[28]];

        v127 = objc_allocWithZone(ODCurareCandidateModel);
        v128 = sub_25C82DE2C();
        v129 = sub_25C82E07C();

        v130 = v223;
        v116 = [v127 initWithModelURL:v128 withBiomeStreamIdentifier:v129 andMetadata:v223];

        v234(v224 + v123, v91);
        v131 = v123;
        v132 = v233;
        v226(v131, v233);
        v51 = v91;
        v47 = v92;
        v50 = v132;
LABEL_25:
        v85 = v209;
        v49 = v215;
        if (v116)
        {
          v133 = [v116 CDModelDataStreamIdentifier];
          if (v133)
          {
            v134 = v133;
            v135 = sub_25C82E0AC();
            v137 = v136;

            v138 = sub_25C82E25C();
            if (qword_2815594B8 != -1)
            {
              swift_once();
            }

            v139 = qword_281559838;
            if (os_log_type_enabled(qword_281559838, v138))
            {
              v140 = v139;
              v141 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              v236 = v142;
              *v141 = v186;
              v143 = sub_25C7E77E4(v135, v137, &v236);

              *(v141 + 4) = v143;
              _os_log_impl(&dword_25C7D2000, v140, v138, "Candiate model has stream %s", v141, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v142);
              MEMORY[0x25F890110](v142, -1, -1);
              MEMORY[0x25F890110](v141, -1, -1);
            }

            else
            {
            }

            v51 = v235;
            v49 = v215;
            v47 = v217;
            v50 = v233;
          }

          [v116 setIsPersonalizableModel_];
          v52 = v116;

          MEMORY[0x25F88F4D0](v53);
          if (*((v237 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v237 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v183 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_25C82E1EC();
            v51 = v235;
          }

          sub_25C82E20C();

          v54 = v234;
          v234(v216, v51);
          v54(v221, v51);
          v188 = v237;
          v44 = v219;
          v55 = v232;
          goto LABEL_9;
        }
      }

      else
      {
        v90(v122, v91);
        v144 = v117;
        v145 = v233;
        v226(v144, v233);
        v85 = v209;
        v51 = v91;
        v49 = v62;
        v50 = v145;
      }

      sub_25C82E27C();
      if (qword_2815594B8 != -1)
      {
        swift_once();
      }

      v146 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      v147 = swift_allocError();
      *v148 = 20;
      v226 = v147;
      swift_willThrow();
      v234(v216, v51);
      v225 = 0;
      v74 = v221;
      v84 = v229;
      goto LABEL_35;
    }

    sub_25C7E97F4(v81, &qword_27FC16048, qword_25C8309D0);

    v234(v76 + v77, v235);
    v225 = 0;
    v226 = v83;
    v85 = v209;
    v49 = v62;
LABEL_35:
    LODWORD(v230) = sub_25C82E27C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v149 = qword_281559838;
    sub_25C7E92DC(v49, v85, &qword_27FC16080, &qword_25C830490);
    sub_25C7E92DC(v49, v84, &qword_27FC16080, &qword_25C830490);
    if (os_log_type_enabled(v149, v230))
    {
      v224 = v149;
      v150 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v236 = v223;
      *v150 = v191;
      v151 = v197;
      sub_25C7E92DC(v85, v197, &qword_27FC16080, &qword_25C830490);
      v152 = v219;
      v153 = v85;
      v154 = v219[12];

      v155 = v195;
      v156 = *&v195[v152[24]];

      v157 = *&v155[v152[28]];

      v158 = sub_25C82DE8C();
      v160 = v159;
      sub_25C7E97F4(v153, &qword_27FC16080, &qword_25C830490);
      v161 = v151 + v154;
      v162 = v235;
      v163 = v217;
      v234(v161, v235);
      v220 = *v199;
      v220(v151, v233);
      v164 = sub_25C7E77E4(v158, v160, &v236);

      v222 = v150;
      *(v150 + 4) = v164;
      *(v150 + 12) = 2080;
      sub_25C7E92DC(v229, v151, &qword_27FC16080, &qword_25C830490);
      v165 = v152[12];

      v166 = *&v155[v152[24]];

      v167 = *&v155[v152[28]];

      v168 = v192;
      v227(v192, v151, v233);
      v169 = v151 + v165;
      v170 = v162;
      v49 = v215;
      v50 = v233;
      v234(v169, v170);
      sub_25C82C240();
      v171 = sub_25C82E4DC();
      v173 = v172;
      v220(v168, v50);
      v174 = v163;
      sub_25C7E97F4(v229, &qword_27FC16080, &qword_25C830490);
      v175 = sub_25C7E77E4(v171, v173, &v236);

      v176 = v222;
      *(v222 + 14) = v175;
      v177 = v224;
      _os_log_impl(&dword_25C7D2000, v224, v230, "Pruning invalid model at: %s date: %s.", v176, 0x16u);
      v178 = v223;
      swift_arrayDestroy();
      v74 = v221;
      MEMORY[0x25F890110](v178, -1, -1);
      v179 = v176;
      v47 = v174;
      MEMORY[0x25F890110](v179, -1, -1);
    }

    else
    {
      sub_25C7E97F4(v84, &qword_27FC16080, &qword_25C830490);
      sub_25C7E97F4(v85, &qword_27FC16080, &qword_25C830490);
      v47 = v217;
    }

    v180 = v231;
    v181 = *__swift_project_boxed_opaque_existential_1(v218, v218[3]);
    v182 = v225;
    sub_25C826030(v49 + v180, v49);
    v55 = v232;
    v220 = v182;
    if (v182)
    {
      goto LABEL_46;
    }

    v234(v74, v235);

    v44 = v219;
LABEL_9:
    v43 = v55 + 1;
    sub_25C7E97F4(v49, &qword_27FC16080, &qword_25C830490);
    v46 = v214;
    v45 = v211;
    result = v208;
    if (v210 == v43)
    {

      return v188;
    }
  }

  __break(1u);
LABEL_46:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_25C82B334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  sub_25C7E92DC(a1, &v25 - v15, &qword_27FC16048, qword_25C8309D0);
  sub_25C7E92DC(v16, v14, &qword_27FC16048, qword_25C8309D0);
  v17 = sub_25C82DFBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v14, 1, v17);
  sub_25C7E97F4(v14, &qword_27FC16048, qword_25C8309D0);
  if (v20 == 1)
  {
    sub_25C82DF2C();
    sub_25C7E97F4(v16, &qword_27FC16048, qword_25C8309D0);
    (*(v18 + 56))(v11, 0, 1, v17);
    sub_25C80E758(v11, v16);
  }

  sub_25C7E92DC(v16, v8, &qword_27FC16048, qword_25C8309D0);
  result = v19(v8, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_25C82DF3C();
    (*(v18 + 8))(v8, v17);
    v27 = v25;
    v28 = v26;

    MEMORY[0x25F88F460](45, 0xE100000000000000);

    MEMORY[0x25F88F460](0xD000000000000021, 0x800000025C834310);

    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_25C82E21C();
    v24 = sub_25C82E07C();

    [v22 setValue:v23 forKey:v24];

    return sub_25C7E97F4(v16, &qword_27FC16048, qword_25C8309D0);
  }

  return result;
}

uint64_t sub_25C82B668@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  if (a1)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v9 = sub_25C82E07C();
    [v8 setDateFormat_];

    v10 = sub_25C82E07C();
    v11 = [v8 dateFromString_];

    if (v11)
    {
      sub_25C82DF8C();

      v12 = sub_25C82DFBC();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {

      v16 = sub_25C82DFBC();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_25C80E758(v7, a2);
  }

  else
  {
    v13 = sub_25C82DFBC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_25C82B87C(uint64_t a1, uint64_t a2)
{
  *&v33[0] = a1;
  *(&v33[0] + 1) = a2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD000000000000022, 0x800000025C8343E0);

  v2 = v33[0];
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_25C82E07C();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_25C82E31C();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  v6 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v7 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v6))
  {
    v8 = v7;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v31 = v10;
    *v9 = 136315138;
    v11 = NSHomeDirectory();
    v12 = sub_25C82E0AC();
    v14 = v13;

    v15 = sub_25C7E77E4(v12, v14, &v31);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_25C7D2000, v8, v6, "TIGER: NSHomeDefault: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F890110](v10, -1, -1);
    MEMORY[0x25F890110](v9, -1, -1);
  }

  sub_25C7E92DC(v33, &v31, &qword_27FC16290, &qword_25C830908);
  v16 = *(&v32 + 1);
  sub_25C7E97F4(&v31, &qword_27FC16290, &qword_25C830908);
  if (v16 || (*(&v32 + 1) = MEMORY[0x277D839F8], *&v31 = 0, sub_25C82D5C4(&v31, v33), v17 = sub_25C82E25C(), v18 = qword_281559838, !os_log_type_enabled(qword_281559838, v17)))
  {
LABEL_12:
    v22 = sub_25C82E25C();
    v23 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v22))
    {
      v24 = v23;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_25C7E77E4(v2, *(&v2 + 1), &v30);
      *(v25 + 12) = 2048;
      swift_beginAccess();
      result = sub_25C7E92DC(v33, &v28, &qword_27FC16290, &qword_25C830908);
      if (!v29)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      sub_25C801F34(&v28, &v31);
      swift_dynamicCast();
      *(v25 + 14) = v27;
      _os_log_impl(&dword_25C7D2000, v24, v22, "Get last personalization time: %s, value: %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F890110](v26, -1, -1);
      MEMORY[0x25F890110](v25, -1, -1);
    }

    swift_beginAccess();
    result = sub_25C7E92DC(v33, &v28, &qword_27FC16290, &qword_25C830908);
    if (v29)
    {

      sub_25C801F34(&v28, &v31);
      swift_dynamicCast();
      return sub_25C7E97F4(v33, &qword_27FC16290, &qword_25C830908);
    }

    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  v20 = swift_slowAlloc();
  *v20 = 134217984;
  swift_beginAccess();
  result = sub_25C7E92DC(v33, &v28, &qword_27FC16290, &qword_25C830908);
  if (v29)
  {
    sub_25C801F34(&v28, &v31);
    swift_dynamicCast();
    *(v20 + 4) = v30;
    _os_log_impl(&dword_25C7D2000, v19, v17, "Get last personalization setting to default value: %f", v20, 0xCu);
    MEMORY[0x25F890110](v20, -1, -1);

    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25C82BDBC(uint64_t a1, uint64_t a2)
{
  *&v23[0] = a1;
  *(&v23[0] + 1) = a2;

  MEMORY[0x25F88F460](45, 0xE100000000000000);

  MEMORY[0x25F88F460](0xD000000000000021, 0x800000025C834310);

  v2 = v23[0];
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_25C82E07C();
  v5 = [v3 valueForKey_];

  if (v5)
  {
    sub_25C82E31C();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  sub_25C7E92DC(v23, &v21, &qword_27FC16290, &qword_25C830908);
  v6 = *(&v22 + 1);
  sub_25C7E97F4(&v21, &qword_27FC16290, &qword_25C830908);
  if (v6)
  {
    goto LABEL_10;
  }

  *(&v22 + 1) = MEMORY[0x277D839F8];
  *&v21 = 0;
  sub_25C82D5C4(&v21, v23);
  v7 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v8 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v7))
  {
LABEL_10:
    v12 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v13 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v12))
    {
      v14 = v13;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_25C7E77E4(v2, *(&v2 + 1), &v20);
      *(v15 + 12) = 2048;
      swift_beginAccess();
      result = sub_25C7E92DC(v23, &v18, &qword_27FC16290, &qword_25C830908);
      if (!v19)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      sub_25C801F34(&v18, &v21);
      swift_dynamicCast();
      *(v15 + 14) = v17;
      _os_log_impl(&dword_25C7D2000, v14, v12, "Get last eval time: %s, value %f", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x25F890110](v16, -1, -1);
      MEMORY[0x25F890110](v15, -1, -1);
    }

    swift_beginAccess();
    result = sub_25C7E92DC(v23, &v18, &qword_27FC16290, &qword_25C830908);
    if (v19)
    {

      sub_25C801F34(&v18, &v21);
      swift_dynamicCast();
      return sub_25C7E97F4(v23, &qword_27FC16290, &qword_25C830908);
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  v10 = swift_slowAlloc();
  *v10 = 134217984;
  swift_beginAccess();
  result = sub_25C7E92DC(v23, &v18, &qword_27FC16290, &qword_25C830908);
  if (v19)
  {
    sub_25C801F34(&v18, &v21);
    swift_dynamicCast();
    *(v10 + 4) = v20;
    _os_log_impl(&dword_25C7D2000, v9, v7, "Get last eval setting to default value: %f", v10, 0xCu);
    MEMORY[0x25F890110](v10, -1, -1);

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_25C82C240()
{
  result = qword_27FC16078;
  if (!qword_27FC16078)
  {
    sub_25C82DFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16078);
  }

  return result;
}

uint64_t sub_25C82C298(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C82C648(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C82C3C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C82C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v31 - v13;
  result = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v36 = v20;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v22, v8);
      v25 = v45;
      v24(v45, v20, v8);
      v26 = sub_25C82DF5C();
      v27 = *v19;
      (*v19)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v20 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v20, v29, v8);
      v20 += v38;
      v22 += v38;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C82C648(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v125 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v133 = &v118 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v118 - v17;
  result = MEMORY[0x28223BE20](v16);
  v138 = &v118 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_25C807028(a4);
    }

    v113 = v6;
    v141 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *(result + 16 * a4);
        v116 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_25C82D034(*v10 + a3[9] * v115, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v113)
        {
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_25C807028(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_25C806F9C(a4 - 1);
        result = v141;
        a4 = *(v141 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v23 = v21;
    v126 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v131 = v20;
      v120 = v6;
      v128 = *a3;
      v24 = v128;
      v25 = v10[9];
      v5 = v128 + v25 * (v21 + 1);
      v26 = v10[2];
      v27 = v138;
      v26(v138, v5, v9);
      v28 = v24 + v25 * v23;
      v29 = v139;
      v130 = v26;
      v26(v139, v28, v9);
      LODWORD(v132) = sub_25C82DF5C();
      v30 = v9;
      v31 = v10[1];
      v31(v29, v30);
      v129 = v31;
      result = (v31)(v27, v30);
      v119 = v23;
      v32 = v23 + 2;
      v134 = v25;
      v33 = v128 + v25 * (v23 + 2);
      while (1)
      {
        v34 = v131;
        if (v131 == v32)
        {
          break;
        }

        v35 = v10;
        v36 = v138;
        v37 = v140;
        v38 = v130;
        (v130)(v138, v33, v140);
        v39 = v139;
        v38(v139, v5, v37);
        v40 = sub_25C82DF5C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v36;
        v10 = v35;
        result = v41(v42, v37);
        ++v32;
        v33 += v134;
        v5 += v134;
        if ((v132 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      a3 = v123;
      v22 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v23 = v119;
      if (v132)
      {
        if (v34 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v34)
        {
          v118 = v10;
          v43 = v134 * (v34 - 1);
          v44 = v34 * v134;
          v45 = v34;
          v46 = v119;
          v47 = v119 * v134;
          do
          {
            if (v46 != --v45)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v50 = v34;
              v5 = v49 + v47;
              v132 = *v135;
              (v132)(v125, v49 + v47, v140, v22);
              if (v47 < v43 || v5 >= v49 + v44)
              {
                v48 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v140;
                if (v47 != v43)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v132)(v49 + v43, v125, v48);
              a3 = v123;
              v22 = v126;
              v34 = v50;
            }

            ++v46;
            v43 -= v134;
            v44 -= v134;
            v47 += v134;
          }

          while (v46 < v45);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v23 = v119;
        }
      }
    }

    v51 = a3[1];
    if (v34 < v51)
    {
      if (__OFSUB__(v34, v23))
      {
        goto LABEL_126;
      }

      if (v34 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v23 + a4;
        }

        if (v52 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v52)
        {
          break;
        }
      }
    }

    v53 = v34;
    if (v34 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v126;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v126 + 2) + 1, 1, v126);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v54 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v54 >> 1)
    {
      result = sub_25C7E6F4C((v54 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v55 = &v22[16 * a4];
    *(v55 + 4) = v23;
    *(v55 + 5) = v53;
    v56 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v53;
    if (a4)
    {
      while (1)
      {
        v57 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v58 = *(v22 + 4);
          v59 = *(v22 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_114;
          }

          v74 = &v22[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_117;
          }

          v80 = &v22[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_121;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v22[16 * v5];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_116;
        }

        v87 = &v22[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_119;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v57 - 1;
        if (v57 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v95 = v22;
        v96 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v57 + 40];
        sub_25C82D034(*a3 + v10[9] * v96, *a3 + v10[9] * *&v22[16 * v57 + 32], *a3 + v10[9] * v5, v56);
        if (v6)
        {
        }

        if (v5 < v96)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_25C807028(v95);
        }

        if (a4 >= *(v95 + 2))
        {
          goto LABEL_111;
        }

        v97 = &v95[16 * a4];
        *(v97 + 4) = v96;
        *(v97 + 5) = v5;
        v141 = v95;
        result = sub_25C806F9C(v57);
        v22 = v141;
        v5 = *(v141 + 16);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v22[16 * v5 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_112;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_113;
      }

      v69 = &v22[16 * v5];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_115;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_118;
      }

      if (v73 >= v65)
      {
        v91 = &v22[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_122;
        }

        if (v60 < v94)
        {
          v57 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v127;
    a4 = v121;
    if (v127 >= v20)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v98 = *a3;
  v99 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v100 = v98 + v99 * (v34 - 1);
  v101 = -v99;
  v119 = v23;
  v102 = (v23 - v34);
  v132 = v98;
  v124 = v99;
  v5 = v98 + v34 * v99;
  v127 = v52;
LABEL_85:
  v130 = v100;
  v131 = v34;
  v128 = v5;
  v129 = v102;
  v103 = v100;
  while (1)
  {
    v104 = v138;
    v105 = v134;
    (v134)(v138, v5, v9, v22);
    v106 = v139;
    v105(v139, v103, v140);
    v107 = sub_25C82DF5C();
    a4 = v136;
    v108 = *v136;
    v109 = v106;
    v9 = v140;
    (*v136)(v109, v140);
    result = v108(v104, v9);
    if ((v107 & 1) == 0)
    {
LABEL_84:
      v34 = v131 + 1;
      v100 = &v130[v124];
      v102 = v129 - 1;
      v5 = v128 + v124;
      v53 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v23 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v110 = *v135;
    v111 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v110(v103, v111, v9);
    v103 += v101;
    v5 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_25C82D034(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = sub_25C82DFBC();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v55 = &v46 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v57 = a3;
  v17 = (a2 - a1) / v15;
  v61 = a1;
  v60 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v19;
    if (v19 < 1)
    {
      v34 = a4 + v19;
    }

    else
    {
      v31 = -v15;
      v50 = (v8 + 8);
      v51 = (v8 + 16);
      v32 = a4 + v19;
      v33 = v57;
      v34 = v30;
      v48 = a1;
      v49 = a4;
      v52 = -v15;
      do
      {
        v46 = v34;
        v35 = a2;
        v36 = a2 + v31;
        v53 = v35;
        v54 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v61 = v35;
            v59 = v46;
            goto LABEL_59;
          }

          v38 = v33;
          v47 = v34;
          v57 = v33 + v31;
          v39 = v32 + v31;
          v40 = *v51;
          v41 = v55;
          v42 = v58;
          v43 = v32;
          (*v51)(v55, v39, v58);
          v44 = v56;
          (v40)(v56, v36, v42);
          LOBYTE(v40) = sub_25C82DF5C();
          v45 = *v50;
          (*v50)(v44, v42);
          v45(v41, v42);
          if (v40)
          {
            break;
          }

          v34 = v39;
          v33 = v57;
          if (v38 < v43 || v57 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v54;
            a1 = v48;
          }

          else
          {
            v36 = v54;
            a1 = v48;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v32 = v39;
          v37 = v39 > v49;
          v31 = v52;
          v35 = v53;
          if (!v37)
          {
            a2 = v53;
            goto LABEL_58;
          }
        }

        v46 = v43;
        v33 = v57;
        if (v38 < v53 || v57 >= v53)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v34 = v47;
          a1 = v48;
          v31 = v52;
        }

        else
        {
          a2 = v54;
          v34 = v47;
          a1 = v48;
          v31 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v46;
      }

      while (v46 > v49);
    }

LABEL_58:
    v61 = a2;
    v59 = v34;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v18;
    v59 = a4 + v18;
    if (v18 >= 1 && a2 < v57)
    {
      v52 = *(v8 + 16);
      v53 = v8 + 16;
      v50 = v15;
      v51 = (v8 + 8);
      do
      {
        v21 = v55;
        v22 = v58;
        v23 = v52;
        (v52)(v55, a2, v58);
        v24 = a2;
        v25 = v56;
        v23(v56, a4, v22);
        v26 = sub_25C82DF5C();
        v27 = *v51;
        (*v51)(v25, v22);
        v27(v21, v22);
        if (v26)
        {
          v28 = v50;
          a2 = v50 + v24;
          if (a1 < v24 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v28 = v50;
          v29 = v50 + a4;
          if (a1 < a4 || a1 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v60 = v29;
          a4 += v28;
        }

        a1 += v28;
        v61 = a1;
      }

      while (a4 < v54 && a2 < v57);
    }
  }

LABEL_59:
  sub_25C80703C(&v61, &v60, &v59);
  return 1;
}

uint64_t sub_25C82D5C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16290, &qword_25C830908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ODCurareEvaluationAndReportingError.hashValue.getter()
{
  v1 = *v0;
  sub_25C82E57C();
  MEMORY[0x25F88F8B0](v1);
  return sub_25C82E59C();
}

uint64_t sub_25C82D6D0()
{
  v1 = *v0;
  sub_25C82E57C();
  MEMORY[0x25F88F8B0](v1);
  return sub_25C82E59C();
}

uint64_t sub_25C82D744()
{
  v1 = *v0;
  sub_25C82E57C();
  MEMORY[0x25F88F8B0](v1);
  return sub_25C82E59C();
}

unint64_t sub_25C82D78C()
{
  result = qword_27FC16390;
  if (!qword_27FC16390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC16390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODCurareEvaluationAndReportingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 32;
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

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODCurareEvaluationAndReportingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}