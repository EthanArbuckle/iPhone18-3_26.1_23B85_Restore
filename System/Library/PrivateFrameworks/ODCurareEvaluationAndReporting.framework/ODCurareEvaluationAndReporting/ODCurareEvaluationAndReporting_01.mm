void sub_25C7F4A04(void *a1, void *a2)
{
  v3 = v2;
  v193 = a2;
  v204 = a1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v183 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v185 = &v181 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v189 = &v181 - v12;
  MEMORY[0x28223BE20](v11);
  v192 = &v181 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v187 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v186 = &v181 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v184 = &v181 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v188 = &v181 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v190 = &v181 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v195 = (&v181 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v196 = &v181 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v181 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v194 = (&v181 - v34);
  MEMORY[0x28223BE20](v33);
  v36 = &v181 - v35;
  v37 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  swift_beginAccess();
  sub_25C7E92DC(v3 + v37, v36, &qword_27FC16048, qword_25C8309D0);
  v202 = v5;
  v200 = *(v5 + 48);
  v201 = v5 + 48;
  v38 = v200(v36, 1, v4);
  sub_25C7E97F4(v36, &qword_27FC16048, qword_25C8309D0);
  v197 = v3;
  if (v38 == 1)
  {
    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v39 = qword_281559838;
    sub_25C82E00C();

    v40 = v194;
    sub_25C82DF2C();
    (*(v202 + 56))(v40, 0, 1, v4);
    v3 = v197;
    swift_beginAccess();
    sub_25C7E6CC0(v40, v3 + v37, &qword_27FC16048, qword_25C8309D0);
    swift_endAccess();
  }

  sub_25C7E92DC(v3 + v37, v32, &qword_27FC16048, qword_25C8309D0);
  v41 = v200(v32, 1, v4);
  v198 = v4;
  v199 = v37;
  if (v41 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_25C82DF4C();
    (*(v202 + 8))(v32, v4);
  }

  v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v204 setStreamFilter:0 fromInclusive:0 toDate:v42 toInclusive:v43];

  v44 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v45 = qword_281559838;
  v46 = os_log_type_enabled(qword_281559838, v44);
  v47 = v204;
  v48 = v196;
  if (v46)
  {
    v182 = v45;
    v49 = v3;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v203[0] = v51;
    *v50 = 136315138;
    sub_25C7E92DC(v3 + v199, v48, &qword_27FC16048, qword_25C8309D0);
    v52 = v198;
    v53 = v200(v48, 1, v198);

    if (v53 == 1)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v54 = v202;
    v55 = v192;
    (*(v202 + 32))(v192, v48, v52);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
    v56 = sub_25C82E4DC();
    v58 = v57;
    (*(v54 + 8))(v55, v52);
    v59 = sub_25C7E77E4(v56, v58, v203);

    *(v50 + 4) = v59;
    v60 = v182;
    _os_log_impl(&dword_25C7D2000, v182, v44, "Date for personalization filter %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x25F890110](v51, -1, -1);
    MEMORY[0x25F890110](v50, -1, -1);

    v47 = v204;
    v3 = v197;
  }

  v61 = [v47 getDatesOfEventsForStream];
  if (!v61)
  {
    sub_25C82E27C();
    v66 = qword_281559838;
LABEL_30:
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v101 = 20;
    swift_willThrow();
    return;
  }

  v62 = v61;
  v63 = v198;
  v196 = sub_25C82E1DC();

  v64 = v195;
  sub_25C7E92DC(v3 + v199, v195, &qword_27FC16048, qword_25C8309D0);
  if (v200(v64, 1, v63) == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = sub_25C82DF4C();
    (*(v202 + 8))(v64, v63);
  }

  v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v47 setStreamFilter:v65 fromInclusive:v67 toDate:0 toInclusive:0];

  v68 = sub_25C82E25C();
  v69 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v68))
  {
    v70 = v3;
    v195 = v69;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v203[0] = v72;
    *v71 = 136315138;
    v73 = v190;
    sub_25C7E92DC(v3 + v199, v190, &qword_27FC16048, qword_25C8309D0);
    v74 = v200(v73, 1, v63);

    if (v74 == 1)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v75 = v202;
    v76 = v189;
    (*(v202 + 32))(v189, v73, v63);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
    v77 = sub_25C82E4DC();
    v79 = v78;
    (*(v75 + 8))(v76, v63);
    v80 = sub_25C7E77E4(v77, v79, v203);

    *(v71 + 4) = v80;
    v81 = v195;
    _os_log_impl(&dword_25C7D2000, v195, v68, "Date for evaluation filter %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x25F890110](v72, -1, -1);
    MEMORY[0x25F890110](v71, -1, -1);

    v47 = v204;
  }

  v82 = [v47 getDatesOfEventsForStream];
  if (!v82)
  {

    sub_25C82E27C();
    v66 = qword_281559838;
    goto LABEL_30;
  }

  v83 = v82;
  v84 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_25C7E916C(v84);
  }

  v85 = v191;
  v86 = *(v84 + 2);
  v87 = &v84[(*(v202 + 80) + 32) & ~*(v202 + 80)];
  v203[0] = v87;
  v203[1] = v86;
  sub_25C7FD434(v203);
  v88 = v193;
  v89 = [v193 minimumNumberOfSamplesForPersonalizationSelection];
  v90 = [v89 integerValue];

  v91 = [v88 minimumNumberOfSamplesForPersonalization];
  v92 = [v91 integerValue];

  v93 = &v92[v90];
  if (__OFADD__(v90, v92))
  {
    __break(1u);
    goto LABEL_60;
  }

  v195 = v85;
  v94 = *(v196 + 2);

  v196 = v84;
  v95 = *(v84 + 2);
  v96 = &v95[v94];
  if (__OFADD__(v95, v94))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v95 < v90)
  {
    v97 = sub_25C82E25C();
    v98 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v97))
    {
      v99 = v98;
      v100 = swift_slowAlloc();
      *v100 = 134218240;
      *(v100 + 4) = v90;
      *(v100 + 12) = 2048;
      *(v100 + 14) = v95;
      _os_log_impl(&dword_25C7D2000, v99, v97, "Skipping personalization for model because there were not enough samples for hyperparameter selection. Needed %ld, had %ld", v100, 0x16u);
      MEMORY[0x25F890110](v100, -1, -1);

      return;
    }

    goto LABEL_38;
  }

  if (v96 < v93)
  {
    v102 = sub_25C82E25C();
    v103 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v102))
    {
      v104 = v103;
      v105 = swift_slowAlloc();
      *v105 = 134218240;
      *(v105 + 4) = v93;
      *(v105 + 12) = 2048;
      *(v105 + 14) = v96;
      _os_log_impl(&dword_25C7D2000, v104, v102, "Skipping personalization for model because there were not enough samples for personalization and evaluation. Needed %ld, had %ld", v105, 0x16u);
      MEMORY[0x25F890110](v105, -1, -1);

      return;
    }

    goto LABEL_38;
  }

  v106 = [v193 minimumNumberOfSamplesForPersonalization];
  v107 = [v106 integerValue];

  if (v94 >= v107)
  {
    goto LABEL_38;
  }

  sub_25C82E25C();
  v108 = qword_281559838;
  sub_25C82E00C();

  if (v95 == v90)
  {
LABEL_37:
    sub_25C82E27C();
    v109 = qword_281559838;
LABEL_58:
    sub_25C82E00C();

    sub_25C7E7DEC();
    swift_allocError();
    *v180 = 20;
    swift_willThrow();

    return;
  }

  LODWORD(v190) = sub_25C82E25C();
  v110 = qword_281559838;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v111 = swift_allocObject();
  v191 = xmmword_25C830650;
  *(v111 + 16) = xmmword_25C830650;
  v182 = v110;
  v112 = v193;
  v189 = [v193 minimumNumberOfSamplesForPersonalizationSelection];
  v113 = sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
  *(v111 + 56) = v113;
  v114 = sub_25C801F44(&qword_27FC16178, &qword_281559488, 0x277CCABB0);
  *(v111 + 64) = v114;
  *(v111 + 32) = v189;
  v115 = [v112 minimumNumberOfSamplesForPersonalization];
  *(v111 + 96) = v113;
  *(v111 + 104) = v114;
  *(v111 + 72) = v115;
  v116 = v182;
  sub_25C82E00C();

  sub_25C82E25C();
  v117 = qword_281559838;
  v118 = swift_allocObject();
  *(v118 + 16) = v191;
  v119 = MEMORY[0x277D83B88];
  v120 = MEMORY[0x277D83C10];
  *(v118 + 56) = MEMORY[0x277D83B88];
  *(v118 + 64) = v120;
  *(v118 + 32) = v95;
  *(v118 + 96) = v119;
  *(v118 + 104) = v120;
  *(v118 + 72) = v94;
  v121 = v117;
  sub_25C82E00C();

  if (v90 < 0)
  {
    goto LABEL_61;
  }

  v122 = v197;
  v123 = v198;
  v124 = v199;
  if (v90 >= *(v196 + 2))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v125 = v202;
  v126 = v194;
  (*(v202 + 16))(v194, v87 + *(v202 + 72) * v90, v198);
  (*(v125 + 56))(v126, 0, 1, v123);
  swift_beginAccess();
  sub_25C7E6CC0(v126, v122 + v124, &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v127 = v122 + v124;
  v128 = v188;
  sub_25C7E92DC(v127, v188, &qword_27FC16048, qword_25C8309D0);
  v129 = 0;
  if (v200(v128, 1, v123) != 1)
  {
    v129 = sub_25C82DF4C();
    (*(v202 + 8))(v128, v123);
  }

  v130 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v131 = v204;
  [v204 setStreamFilter:0 fromInclusive:0 toDate:v129 toInclusive:v130];

  v132 = sub_25C82E25C();
  v133 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v132))
  {
    goto LABEL_47;
  }

  v134 = v122;
  v194 = v133;
  v135 = v122;
  v136 = swift_slowAlloc();
  v137 = swift_slowAlloc();
  v203[0] = v137;
  *v136 = 136315138;
  v138 = v184;
  sub_25C7E92DC(v135 + v199, v184, &qword_27FC16048, qword_25C8309D0);
  v139 = v198;
  LODWORD(v135) = v200(v138, 1, v198);

  if (v135 == 1)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v140 = v202;
  v141 = v185;
  (*(v202 + 32))(v185, v138, v139);
  sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
  v142 = sub_25C82E4DC();
  v144 = v143;
  (*(v140 + 8))(v141, v139);
  v145 = sub_25C7E77E4(v142, v144, v203);

  *(v136 + 4) = v145;
  v146 = v194;
  _os_log_impl(&dword_25C7D2000, v194, v132, "Post-update date for personalization filter %s", v136, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v137);
  MEMORY[0x25F890110](v137, -1, -1);
  MEMORY[0x25F890110](v136, -1, -1);

  v122 = v197;
LABEL_47:
  v147 = [v131 getDatesOfEventsForStream];
  if (!v147)
  {
    goto LABEL_37;
  }

  v148 = v147;
  v149 = v198;
  v150 = sub_25C82E1DC();

  v151 = v186;
  sub_25C7E92DC(v122 + v199, v186, &qword_27FC16048, qword_25C8309D0);
  if (v200(v151, 1, v149) == 1)
  {
    v152 = 0;
  }

  else
  {
    v152 = sub_25C82DF4C();
    (*(v202 + 8))(v151, v149);
  }

  v153 = v187;
  v154 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v131 setStreamFilter:v152 fromInclusive:v154 toDate:0 toInclusive:0];

  v155 = sub_25C82E25C();
  v156 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v155))
  {
    goto LABEL_55;
  }

  v194 = v150;
  v157 = v197;
  v158 = v197;
  v159 = v156;
  v160 = swift_slowAlloc();
  v161 = swift_slowAlloc();
  v203[0] = v161;
  *v160 = 136315138;
  sub_25C7E92DC(v157 + v199, v153, &qword_27FC16048, qword_25C8309D0);
  v162 = v198;
  v163 = v200(v153, 1, v198);

  if (v163 != 1)
  {
    v164 = v202;
    v165 = v183;
    (*(v202 + 32))(v183, v153, v162);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
    v166 = sub_25C82E4DC();
    v168 = v167;
    (*(v164 + 8))(v165, v162);
    v169 = sub_25C7E77E4(v166, v168, v203);

    *(v160 + 4) = v169;
    _os_log_impl(&dword_25C7D2000, v159, v155, "Post-update date for evaluation filter %s", v160, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v161);
    MEMORY[0x25F890110](v161, -1, -1);
    MEMORY[0x25F890110](v160, -1, -1);

    v131 = v204;
    v150 = v194;
LABEL_55:
    v170 = [v131 getDatesOfEventsForStream];
    if (!v170)
    {

      sub_25C82E27C();
      v109 = qword_281559838;
      goto LABEL_58;
    }

    v171 = v170;
    v172 = sub_25C82E1DC();

    isa = v150[2].isa;

    v174 = *(v172 + 16);

    sub_25C82E25C();
    v175 = qword_281559838;
    v176 = swift_allocObject();
    *(v176 + 16) = v191;
    v177 = MEMORY[0x277D83B88];
    *(v176 + 56) = MEMORY[0x277D83B88];
    v178 = MEMORY[0x277D83C10];
    *(v176 + 64) = MEMORY[0x277D83C10];
    *(v176 + 72) = isa;
    *(v176 + 32) = v174;
    *(v176 + 96) = v177;
    *(v176 + 104) = v178;
    v179 = v175;
    sub_25C82E00C();

LABEL_38:

    return;
  }

LABEL_66:
  __break(1u);
}

void sub_25C7F60D4(void *a1)
{
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C82DEAC();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
  swift_beginAccess();
  if (*(*&v1[v13] + 16))
  {
    v46 = v5;
    sub_25C7F652C(a1);
    if (!v2)
    {
      v17 = v14;
      if (v14)
      {
        v18 = v15;

        sub_25C7E9180(&v1[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore], v47);
        v44 = __swift_project_boxed_opaque_existential_1(v47, v47[3]);
        v19 = [v18 modelURL];
        sub_25C82DE7C();

        (*(v46 + 16))(v8, &v1[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate], v4);
        v45 = v18;
        v43 = [v18 modelInformation];
        v42 = [v17 modelConfiguration];
        v20 = [v17 CDModelDataStreamIdentifier];
        if (v20)
        {
          v21 = v20;
          v22 = sub_25C82E0AC();
          v40 = v23;
        }

        else
        {
          v22 = 0;
          v40 = 0;
        }

        v30 = [v17 BMModelDataStreamIdentifier];
        v41 = v17;
        v38 = v9;
        if (v30)
        {
          v31 = v30;
          v32 = sub_25C82E0AC();
          v39 = v33;
        }

        else
        {
          v32 = 0;
          v39 = 0;
        }

        v34 = v43;
        v35 = *v44;
        v36 = v42;
        sub_25C81D89C(v12, v8, v43, v42, v22, v40, v32, v39);

        (*(v46 + 8))(v8, v4);
        (*(v48 + 8))(v12, v38);
        __swift_destroy_boxed_opaque_existential_0Tm(v47);
      }

      else
      {
        v24 = sub_25C82E27C();
        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v25 = qword_281559838;
        if (os_log_type_enabled(qword_281559838, v24))
        {
          v26 = v25;
          v27 = v1;
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          *(v28 + 4) = *(*&v1[v13] + 16);

          _os_log_impl(&dword_25C7D2000, v26, v24, "Unable to identify the best model even though there were %ld entries in self.newModelEvaluationResults.", v28, 0xCu);
          MEMORY[0x25F890110](v28, -1, -1);
        }

        sub_25C7E7DEC();
        swift_allocError();
        *v29 = 20;
        swift_willThrow();
      }
    }
  }
}

void sub_25C7F652C(void *a1)
{
  v3 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v22 = *(v4 + 16);
  if (!v22)
  {
    goto LABEL_17;
  }

  v5 = 0;
  v21 = 0uLL;
  v6 = 0;
  v7 = (v4 + 48);
  do
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v7 - 2);
    v11 = v8;
    v12 = v9;
    v13 = [v11 modelInformation];
    v14 = [v13 isDefaultModel];

    if (v14)
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v5)
    {
      v15 = [a1 hyperparameterSelectionPolicy];
      sub_25C7E96B8(0, &qword_27FC16170, off_2799B97A0);
      v16 = sub_25C82E1DC();

      v17 = sub_25C80FAD4(v12, v5, v16);
      if (v2)
      {

        return;
      }

      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (v21 != 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v5 = v12;
    *&v21 = v11;
    *(&v21 + 1) = v10;
LABEL_4:
    ++v6;
    v7 += 3;
  }

  while (v22 != v6);

  if (!*(&v21 + 1))
  {
    goto LABEL_24;
  }

  if (!v21)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    return;
  }

  __break(1u);
LABEL_17:
  sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v19 = qword_281559838;
  sub_25C82E00C();
}

id sub_25C7F67E4(unint64_t a1, void *a2)
{
  v3 = v2;
  v221 = a2;
  v32 = sub_25C82DFBC();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v32);
  v192 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v198 = &v186 - v9;
  v206 = sub_25C82DEAC();
  v10 = *(v206 - 8);
  v11 = *(v10 + 8);
  v12 = MEMORY[0x28223BE20](v206);
  v216 = (&v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v223 = (&v186 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v197 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v193 = &v186 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v200 = &v186 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v203 = &v186 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v205 = (&v186 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v186 - v28);
  MEMORY[0x28223BE20](v27);
  v211 = v5;
  v30 = *(v5 + 56);
  v224 = &v186 - v31;
  v228 = v32;
  v195 = v5 + 56;
  v194 = v30;
  v30();
  LOBYTE(v32) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
LABEL_91:
    swift_once();
  }

  p_info = ODCurareEvaluationAndReportingModule.info;
  v34 = qword_281559838;
  v35 = &off_25C830000;
  v36 = a1 >> 62;
  if (os_log_type_enabled(qword_281559838, v32))
  {
    v37 = v34;

    v38 = swift_slowAlloc();
    *v38 = 134217984;
    if (v36)
    {
LABEL_94:
      v39 = sub_25C82E43C();
    }

    else
    {
      v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v38 + 4) = v39;

    _os_log_impl(&dword_25C7D2000, v37, v32, "Start personalization, has %ld number of candidates", v38, 0xCu);
    MEMORY[0x25F890110](v38, -1, -1);

    p_info = ODCurareEvaluationAndReportingModule.info;
  }

  if (v36)
  {
    v32 = sub_25C82E43C();
  }

  else
  {
    v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v208 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationInstance;
  v215 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
  v40 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResults;
  v204 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance;
  v214 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
  v202 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport;
  v219 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  swift_beginAccess();
  swift_beginAccess();
  if (!v32)
  {
LABEL_75:
    v169 = v224;
    swift_beginAccess();
    v170 = v197;
    sub_25C7E92DC(v169, v197, &qword_27FC16048, qword_25C8309D0);
    v171 = (*(v211 + 48))(v170, 1, v228);
    sub_25C7E97F4(v170, &qword_27FC16048, qword_25C8309D0);
    if (v171 == 1)
    {
      v172 = v219;
      v173 = v235;
      swift_beginAccess();
      v174 = v173 + v172;
      v175 = v200;
      sub_25C7E92DC(v174, v200, &qword_27FC16048, qword_25C8309D0);
      sub_25C7E6CC0(v175, v169, &qword_27FC16048, qword_25C8309D0);
    }

    sub_25C8296F4(v169, *(v235 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier), *(v235 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8));
    sub_25C7F60D4(v221);
    if (!v3)
    {
      sub_25C82E25C();
      v176 = p_info[263];
      sub_25C82E00C();
    }

    return sub_25C7E97F4(v169, &qword_27FC16048, qword_25C8309D0);
  }

  v201 = v29;
  v213 = v40;
  v36 = 0;
  v231 = a1 & 0xFFFFFFFFFFFFFF8;
  v232 = a1 & 0xC000000000000001;
  v222 = (v211 + 48);
  v209 = (v211 + 8);
  v212 = "evaluateWithModel:]";
  v199 = (v10 + 8);
  v191 = (v211 + 16);
  v189 = (v211 + 32);
  *&v41 = *(v35 + 139);
  v229 = v41;
  v29 = &dword_25C7D2000;
  *(&v42 + 1) = 2;
  v220 = xmmword_25C830640;
  *&v42 = 136315138;
  v190 = v42;
  v196 = a1;
  v230 = v32;
  while (1)
  {
    if (v232)
    {
      v43 = MEMORY[0x25F88F6D0](v36, a1);
    }

    else
    {
      if (v36 >= *(v231 + 16))
      {
        goto LABEL_90;
      }

      v43 = *(a1 + 8 * v36 + 32);
    }

    v10 = v43;
    v44 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v45 = sub_25C82E25C();
    v46 = p_info[263];
    if (os_log_type_enabled(v46, v45))
    {
      v47 = v46;
      v48 = swift_slowAlloc();
      *v48 = v229;
      *(v48 + 4) = v36;
      _os_log_impl(&dword_25C7D2000, v47, v45, "Begin processing model at index %ld.", v48, 0xCu);
      v49 = v48;
      p_info = ODCurareEvaluationAndReportingModule.info;
      MEMORY[0x25F890110](v49, -1, -1);
    }

    if ([v10 isDefaultModel])
    {
      v50 = sub_25C82E25C();
      v51 = p_info[263];
      if (os_log_type_enabled(v51, v50))
      {
        v52 = v51;
        v53 = swift_slowAlloc();
        *v53 = v229;
        *(v53 + 4) = v36;
        v54 = v50;
        v55 = v52;
        v56 = "Model at index %ld is the default model. This should not happen! Skipping.";
LABEL_26:
        _os_log_impl(&dword_25C7D2000, v55, v54, v56, v53, 0xCu);
        v63 = v53;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        MEMORY[0x25F890110](v63, -1, -1);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (([v10 isPersonalizableModel] & 1) == 0)
    {
      v61 = sub_25C82E25C();
      v62 = p_info[263];
      if (os_log_type_enabled(v62, v61))
      {
        v52 = v62;
        v53 = swift_slowAlloc();
        *v53 = v229;
        *(v53 + 4) = v36;
        v54 = v61;
        v55 = v52;
        v56 = "Model at index %ld is not personalizable. Skipping.";
        goto LABEL_26;
      }

LABEL_27:

LABEL_28:
      v32 = v230;
      goto LABEL_29;
    }

    sub_25C7F4A04(v10, v221);
    if (v3)
    {
      goto LABEL_80;
    }

    if ((v57 & 1) == 0)
    {
      v64 = sub_25C82E25C();
      v65 = p_info[263];
      if (os_log_type_enabled(v65, v64))
      {
        v66 = v65;
        v67 = swift_slowAlloc();
        *v67 = v229;
        *(v67 + 4) = v36;
        _os_log_impl(&dword_25C7D2000, v66, v64, "Not enough data to personalize model at index %ld.", v67, 0xCu);
        v68 = v67;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        MEMORY[0x25F890110](v68, -1, -1);

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v58 = v201;
    sub_25C7E92DC(v235 + v219, v201, &qword_27FC16048, qword_25C8309D0);
    v59 = v228;
    v218 = *v222;
    if ((v218)(v58, 1, v228) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_25C82DF4C();
      (*v209)(v58, v59);
    }

    v69 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    [v10 setStreamFilter:0 fromInclusive:0 toDate:v60 toInclusive:v69];

    v70 = *(v235 + v208);
    if (([v70 respondsToSelector_] & 1) == 0 || (v71 = objc_msgSend(v70, sel_personalizeModel_, v10)) == 0)
    {
      sub_25C82E27C();
      v177 = p_info[263];
      sub_25C82E00C();

      sub_25C7E7DEC();
      swift_allocError();
      *v178 = 20;
      swift_willThrow();
LABEL_80:

      goto LABEL_87;
    }

    v226 = v71;
    v207 = v36 + 1;
    v227 = 0;
    sub_25C82E25C();
    v72 = p_info[263];
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
    v74 = p_info;
    v75 = swift_allocObject();
    *(v75 + 16) = v220;
    v76 = v72;
    result = [v10 getDatesOfEventsForStream];
    if (!result)
    {
      break;
    }

    v78 = result;
    v79 = sub_25C82E1DC();

    v80 = *(v79 + 16);

    *(v75 + 56) = MEMORY[0x277D83B88];
    *(v75 + 64) = MEMORY[0x277D83C10];
    *(v75 + 32) = v80;
    sub_25C82E00C();

    v81 = v226;
    v82 = [v226 modelURL];
    sub_25C82DE7C();

    v225 = [v81 modelInformation];
    sub_25C82E25C();
    v83 = v74[263];
    v217 = v73;
    v84 = swift_allocObject();
    *(v84 + 16) = v220;
    v85 = v83;
    v86 = sub_25C82DE2C();
    *(v84 + 56) = sub_25C7E96B8(0, &qword_27FC16220, 0x277CBEBC0);
    *(v84 + 64) = sub_25C801F44(&qword_27FC16228, &qword_27FC16220, 0x277CBEBC0);
    *(v84 + 32) = v86;
    sub_25C82E00C();

    v87 = [v10 modelTag];
    if (v87)
    {
      v88 = v87;
      v89 = sub_25C82E0AC();
      v91 = v90;
    }

    else
    {
      v234[0] = v36;
      v89 = sub_25C82E4DC();
      v91 = v92;
    }

    v93 = v227;
    a1 = v235;
    v35 = 0x277CCA000;
    v29 = v216;
    sub_25C7F9228(v223, v89, v91, v216);
    v3 = v93;
    if (v93)
    {
      (*v199)(v223, v206);

      goto LABEL_87;
    }

    v94 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v95 = sub_25C82E07C();
    [v94 setDateFormat_];

    v96 = sub_25C82DF4C();
    v97 = [v94 stringFromDate_];

    if (!v97)
    {
      sub_25C82E0AC();
      v97 = sub_25C82E07C();
    }

    v98 = v225;
    [v225 setModelCreationDate_];

    sub_25C82DE1C();
    v99 = sub_25C82E07C();

    [v98 setModelName_];

    v100 = sub_25C82DE2C();
    v38 = v226;
    [v226 setModelURL_];

    v101 = v213;
    swift_beginAccess();
    v102 = *(a1 + v101);
    if ((v102 & 0xC000000000000001) != 0)
    {
      if (v102 < 0)
      {
        v32 = *(a1 + v101);
      }

      else
      {
        v32 = v102 & 0xFFFFFFFFFFFFFF8;
      }

      v103 = v10;
      v104 = v38;
      v105 = sub_25C82E43C();
      v37 = v205;
      if (__OFADD__(v105, 1))
      {
        __break(1u);
        goto LABEL_94;
      }

      v106 = sub_25C7FAE98(v32, v105 + 1);
      v107 = v38;
      v108 = v213;
      *(a1 + v213) = v106;
    }

    else
    {
      v109 = *(a1 + v101);
      v110 = v10;
      v111 = v38;
      v37 = v205;
      v107 = v38;
      v108 = v213;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v233 = *(a1 + v108);
    sub_25C7FCCF0(v107, v10, isUniquelyReferenced_nonNull_native);
    *(a1 + v108) = v233;

    swift_endAccess();
    v113 = sub_25C82DE2C();
    [v10 setModelURL_];

    sub_25C7E92DC(a1 + v219, v37, &qword_27FC16048, qword_25C8309D0);
    v114 = v228;
    if ((v218)(v37, 1, v228) == 1)
    {
      v115 = 0;
    }

    else
    {
      v115 = sub_25C82DF4C();
      (*v209)(v37, v114);
    }

    v116 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    [v10 setStreamFilter:v115 fromInclusive:v116 toDate:0 toInclusive:0];

    v117 = *(a1 + v204);
    if (([v117 respondsToSelector_] & 1) == 0 || (v118 = objc_msgSend(v117, sel_evaluateWithModel_, v10)) == 0)
    {
      sub_25C82E27C();
      v179 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      swift_allocError();
      *v180 = 20;
      swift_willThrow();

      v181 = *v199;
      v182 = v29;
      goto LABEL_86;
    }

    v119 = v118;
    v227 = 0;
    sub_25C82E25C();
    v120 = qword_281559838;
    v121 = swift_allocObject();
    *(v121 + 16) = v220;
    v122 = v120;
    result = [v10 getDatesOfEventsForStream];
    if (!result)
    {
      goto LABEL_96;
    }

    v123 = result;
    v124 = sub_25C82E1DC();

    v125 = *(v124 + 16);

    *(v121 + 56) = MEMORY[0x277D83B88];
    *(v121 + 64) = MEMORY[0x277D83C10];
    *(v121 + 32) = v125;
    sub_25C82E00C();

    v126 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v127 = sub_25C82E07C();
    [v126 setDateFormat_];

    v128 = v235;
    v129 = sub_25C82DF4C();
    v130 = [v126 stringFromDate_];

    if (!v130)
    {
      sub_25C82E0AC();
      v130 = sub_25C82E07C();
    }

    [v119 setEvaluationDate_];
    v131 = [v225 modelName];
    [v119 setModelName_];

    v132 = v214;
    swift_beginAccess();
    v133 = *(v128 + v132);
    v217 = v10;
    v210 = v226;
    v226 = v119;
    v134 = swift_isUniquelyReferenced_nonNull_native();
    *(v128 + v132) = v133;
    v44 = v207;
    if ((v134 & 1) == 0)
    {
      v133 = sub_25C7E715C(0, v133[2] + 1, 1, v133);
      *(v235 + v214) = v133;
    }

    p_info = ODCurareEvaluationAndReportingModule.info;
    v136 = v133[2];
    v135 = v133[3];
    v137 = v217;
    if (v136 >= v135 >> 1)
    {
      v133 = sub_25C7E715C((v135 > 1), v136 + 1, 1, v133);
    }

    v133[2] = v136 + 1;
    v138 = &v133[3 * v136];
    v139 = v210;
    v138[4] = v137;
    v138[5] = v139;
    v140 = v226;
    v138[6] = v226;
    *(v235 + v214) = v133;
    swift_endAccess();
    v141 = v203;
    sub_25C7E92DC(v224, v203, &qword_27FC16048, qword_25C8309D0);
    if ((v218)(v141, 1, v228) == 1)
    {
      sub_25C7E97F4(v141, &qword_27FC16048, qword_25C8309D0);
      v142 = v217;
      v143 = [v217 getDatesOfEventsForStream];
      if (!v143)
      {
        sub_25C82E27C();
        v183 = qword_281559838;
        goto LABEL_85;
      }

      v144 = v143;
      v145 = sub_25C82E1DC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = sub_25C7E916C(v145);
      }

      v146 = v198;
      v147 = v145[2];
      v148 = v145 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
      v234[0] = v148;
      v234[1] = v147;
      v149 = v227;
      sub_25C7FD434(v234);
      if (!v145[2])
      {

        sub_25C82E27C();
        v183 = qword_281559838;
LABEL_85:
        sub_25C82E00C();

        sub_25C7E7DEC();
        swift_allocError();
        *v184 = 20;
        swift_willThrow();

        v181 = *v199;
        v182 = v216;
LABEL_86:
        v185 = v206;
        v181(v182, v206);
        v181(v223, v185);
LABEL_87:
        v169 = v224;
        return sub_25C7E97F4(v169, &qword_27FC16048, qword_25C8309D0);
      }

      v3 = v149;
      v150 = *v191;
      v151 = v228;
      (*v191)(v146, v148, v228);

      v152 = v200;
      v150(v200, v146, v151);
      (v194)(v152, 0, 1, v151);
      v153 = v224;
      sub_25C7E6CC0(v152, v224, &qword_27FC16048, qword_25C8309D0);
      v154 = sub_25C82E27C();
      v155 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v154))
      {
        v187 = v154;
        v227 = v149;
        v188 = v155;
        v156 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        v234[0] = v186;
        *v156 = v190;
        v157 = v153;
        v158 = v193;
        sub_25C7E92DC(v157, v193, &qword_27FC16048, qword_25C8309D0);
        result = (v218)(v158, 1, v151);
        if (result == 1)
        {
          goto LABEL_97;
        }

        v159 = v192;
        (*v189)(v192, v158, v151);
        sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578]);
        v160 = sub_25C82E4DC();
        v162 = v161;
        v218 = *v209;
        v218(v159, v151);
        v163 = sub_25C7E77E4(v160, v162, v234);

        *(v156 + 4) = v163;
        v164 = v188;
        _os_log_impl(&dword_25C7D2000, v188, v187, "Setting newPersonalizationDate to %s", v156, 0xCu);
        v165 = v186;
        __swift_destroy_boxed_opaque_existential_0Tm(v186);
        MEMORY[0x25F890110](v165, -1, -1);
        MEMORY[0x25F890110](v156, -1, -1);

        v218(v198, v151);
        v10 = *v199;
        v166 = v206;
        (*v199)(v216, v206);
        v10(v223, v166);
        v3 = v227;
      }

      else
      {

        (*v209)(v146, v151);
        v10 = *v199;
        v168 = v206;
        (*v199)(v216, v206);
        v10(v223, v168);
      }

      a1 = v196;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
    }

    else
    {

      v10 = *v199;
      v167 = v206;
      (*v199)(v216, v206);
      v10(v223, v167);
      sub_25C7E97F4(v141, &qword_27FC16048, qword_25C8309D0);
      v3 = v227;
      a1 = v196;
    }

    *(v235 + v202) = 1;
    v32 = v230;
    v29 = &dword_25C7D2000;
LABEL_29:
    ++v36;
    if (v44 == v32)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

void sub_25C7F82F4(void *a1)
{
  v2 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary;
  if (*(v1 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {
    sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v10 = qword_281559838;
    sub_25C82E00C();
  }

  else
  {
    v3 = v1;
    v4 = *(v1 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_boundaryList);
    v5 = [a1 dateArray];
    if (v5)
    {
      v6 = v5;
      sub_25C82DFBC();
      v7 = sub_25C82E1DC();

      v8 = sub_25C803B24(v7);

      v9 = *(v3 + v2);
      *(v3 + v2) = v8;

      *(v3 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_skipAdaptation) = *(v3 + v2) == 0;
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_25C7F845C(uint64_t a1, void *a2, void (**a3)(char *, uint64_t), int a4)
{
  v75 = a3;
  LODWORD(v73) = a4;
  v77 = sub_25C82DFBC();
  v6 = *(v77 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v77);
  v72 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - v10;
  v12 = sub_25C82DEAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  sub_25C7E96B8(0, &qword_27FC161D0, 0x277CBFF20);
  v20 = *(v13 + 16);
  if (a2)
  {
    v20(v19, a1, v12);
    v21 = a2;
    v22 = v74;
    v70 = sub_25C8018BC(v19, v21);
    v23 = v22;
    if (v22)
    {
LABEL_66:

      swift_unexpectedError();
      __break(1u);
      goto LABEL_67;
    }
  }

  else
  {
    v20(v17, a1, v12);
    v24 = v74;
    v70 = sub_25C7F90D0(v17);
    v23 = v24;
    if (v24)
    {
LABEL_67:
      v61 = swift_unexpectedError();
      __break(1u);
      goto LABEL_68;
    }
  }

  v25 = v72;
  v21 = v75;
  v26 = [v75 dateArray];
  if (!v26)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v27 = v26;
  v28 = sub_25C82E1DC();

  v74 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary;
  if (!*(v76 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {

    v11 = sub_25C82E27C();
    if (qword_2815594B8 == -1)
    {
LABEL_25:
      v42 = qword_281559838;
      sub_25C82E00C();

      sub_25C7E7DEC();
      swift_allocError();
      *v43 = 19;
      swift_willThrow();

      return v11;
    }

LABEL_59:
    swift_once();
    goto LABEL_25;
  }

  v75 = v28;
  v29 = [v21 dataArray];
  v69 = v6;
  if (v29)
  {
    v30 = v29;
    v66 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161F0, &qword_25C8307D0);
    v31 = sub_25C82E1DC();

    v72 = *(v31 + 16);
    if (v72)
    {
      v32 = 0;
      v71 = v6 + 16;
      v67 = ~v73;
      v73 = MEMORY[0x277D84F90];
      v28 = (v6 + 8);
      v68 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance;
      v33 = v75;
      while (1)
      {
        if (v32 >= *(v31 + 16))
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v32 >= v33[2])
        {
          goto LABEL_56;
        }

        v21 = *(v31 + 8 * v32 + 32);
        (*(v6 + 16))(v11, v33 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32, v77);
        v23 = *(v76 + v74);
        if (!v23)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (sub_25C82DF9C() == 1)
        {

          (*v28)(v11, v77);
        }

        else
        {
          v34 = sub_25C82DF9C();

          if (v34 == -1)
          {
            (*v28)(v11, v77);
          }

          else
          {
            v35 = *(v76 + v68);
            if (([v35 respondsToSelector_] & 1) == 0)
            {

              sub_25C82E27C();
              if (qword_2815594B8 != -1)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161F8, &qword_25C8307D8);
            v36 = sub_25C82E1BC();

            v37 = [v35 0x2799B96D2];

            sub_25C7E96B8(0, &qword_27FC161E8, off_2799B9790);
            v38 = sub_25C82E1DC();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_25C7E72C8(0, v73[2] + 1, 1, v73);
            }

            v40 = v73[2];
            v39 = v73[3];
            v6 = v69;
            if (v40 >= v39 >> 1)
            {
              v73 = sub_25C7E72C8((v39 > 1), v40 + 1, 1, v73);
            }

            (*v28)(v11, v77);
            v41 = v73;
            v73[2] = v40 + 1;
            v41[v40 + 4] = v38;
          }
        }

        ++v32;
        v33 = v75;
        if (v72 == v32)
        {
          goto LABEL_70;
        }
      }
    }

    v73 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v44 = [v21 batchProviders];
  if (!v44)
  {

    v73 = MEMORY[0x277D84F90];
LABEL_71:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000025C8332D0;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161D8, &unk_25C8307B8);
    *(inited + 48) = v73;
    v11 = sub_25C801A1C(inited);
    swift_setDeallocating();
    sub_25C7E97F4(inited + 32, &qword_27FC16160, &unk_25C8306A0);

    return v11;
  }

  v11 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161E0, &qword_25C8307C8);
  v45 = sub_25C82E1DC();

  v71 = v45;
  if (!(v45 >> 62))
  {
    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v66 = v23;
    if (v46)
    {
LABEL_29:
      v21 = 0;
      v65 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance;
      v68 = v45 & 0xFFFFFFFFFFFFFF8;
      v69 = v45 & 0xC000000000000001;
      v67 = v6 + 16;
      v47 = (v6 + 8);
      v73 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v69)
        {
          v11 = MEMORY[0x25F88F6D0](v21, v45);
        }

        else
        {
          if (v21 >= *(v68 + 16))
          {
            goto LABEL_58;
          }

          v11 = *(v45 + 8 * v21 + 32);
          swift_unknownObjectRetain();
        }

        if (v21 >= v75[2])
        {
          break;
        }

        (*(v6 + 16))(v25, v75 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v77);
        v23 = *(v76 + v74);
        if (!v23)
        {
          goto LABEL_64;
        }

        v48 = *(v76 + v74);

        if (sub_25C82DF9C() == 1)
        {

          swift_unknownObjectRelease();
          (*v47)(v25, v77);
        }

        else
        {
          v49 = sub_25C82DF9C();

          if (v49 == -1)
          {
            (*v47)(v25, v77);
            swift_unknownObjectRelease();
          }

          else
          {
            v50 = *(v76 + v65);
            if (([v50 respondsToSelector_] & 1) == 0)
            {

              sub_25C82E27C();
              if (qword_2815594B8 != -1)
              {
                swift_once();
              }

              v59 = qword_281559838;
              sub_25C82E00C();

              sub_25C7E7DEC();
              swift_allocError();
              *v60 = 20;
              swift_willThrow();
              swift_unknownObjectRelease();

              (*v47)(v25, v77);
              return v11;
            }

            v51 = [v50 evaluateWithModel:v70 batchProvider:v11];
            sub_25C7E96B8(0, &qword_27FC161E8, off_2799B9790);
            v52 = sub_25C82E1DC();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_25C7E72C8(0, v73[2] + 1, 1, v73);
            }

            v54 = v73[2];
            v53 = v73[3];
            if (v54 >= v53 >> 1)
            {
              v73 = sub_25C7E72C8((v53 > 1), v54 + 1, 1, v73);
            }

            swift_unknownObjectRelease();
            v11 = v72;
            (*v47)(v72, v77);
            v55 = v73;
            v73[2] = v54 + 1;
            v56 = &v55[v54];
            v25 = v11;
            v56[4] = v52;
          }
        }

        ++v21;
        v45 = v71;
        if (v46 == v21)
        {
          goto LABEL_70;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_69:
    v73 = MEMORY[0x277D84F90];
LABEL_70:

    goto LABEL_71;
  }

  v61 = sub_25C82E43C();
  if ((v61 & 0x8000000000000000) == 0)
  {
LABEL_68:
    v46 = v61;
    v45 = v71;
    v25 = v72;
    v6 = v69;
    v66 = v23;
    if (v61)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_51:
  v57 = qword_281559838;
  sub_25C82E00C();

  sub_25C7E7DEC();
  swift_allocError();
  *v58 = 20;
  swift_willThrow();

  (*v28)(v11, v77);
  return v11;
}

id sub_25C7F90D0(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25C82DE2C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_25C82DEAC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_25C82DDAC();

    swift_willThrow();
    v9 = sub_25C82DEAC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_25C7F9228@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v266 = a1;
  v268 = a4;
  v276 = *MEMORY[0x277D85DE8];
  v269 = sub_25C82DEAC();
  v267 = *(v269 - 8);
  v8 = *(v267 + 64);
  v9 = MEMORY[0x28223BE20](v269);
  v242 = &v239[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v245 = &v239[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v257 = &v239[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v256 = &v239[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v244 = &v239[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v243 = &v239[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v253 = &v239[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v251 = &v239[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v255 = &v239[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v254 = &v239[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v239[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v239[-v32];
  v272 = 0x5F64657470616461;
  v273 = 0xE800000000000000;
  if (a3)
  {
    MEMORY[0x25F88F460](a2, a3);
    MEMORY[0x25F88F460](95, 0xE100000000000000);
  }

  MEMORY[0x25F88F460](16421, 0xE200000000000000);
  v34 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v35 = sub_25C82E07C();
  [v34 setDateFormat_];

  v36 = sub_25C82DF4C();
  v37 = [v34 stringFromDate_];

  v38 = sub_25C82E0AC();
  v265 = v5;
  v40 = v39;

  v274 = 0x6C65646F6D6C6D2ELL;
  v275 = 0xE900000000000063;
  v249 = v272;
  v270 = v272;
  v271 = v273;
  v259 = v273;

  v41 = MEMORY[0x277D837D0];
  v270 = sub_25C82E18C();
  v271 = v42;
  sub_25C82E12C();
  v43 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v44 = swift_allocObject();
  v247 = xmmword_25C830640;
  *(v44 + 16) = xmmword_25C830640;
  *(v44 + 56) = v41;
  v246 = sub_25C801F94();
  *(v44 + 64) = v246;
  v250 = v38;
  *(v44 + 32) = v38;
  *(v44 + 40) = v40;
  v258 = v40;

  sub_25C82E0CC();

  v260 = v43;
  v45 = v268;
  sub_25C82DE4C();

  v264 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v46 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v47 = qword_281559838;
  v48 = v267;
  v49 = v267 + 16;
  v50 = *(v267 + 16);
  v51 = v33;
  v52 = v33;
  v53 = v269;
  (v50)(v51, v266, v269);
  v262 = v49;
  v261 = v50;
  (v50)(v31, v45, v53);
  if (os_log_type_enabled(v47, v46))
  {
    v54 = v47;
    v55 = v269;
    v241 = v54;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v274 = v57;
    *v56 = 136315394;
    v58 = v48;
    v59 = sub_25C82DE8C();
    v240 = v46;
    v61 = v60;
    v62 = *(v58 + 8);
    v62(v52, v55);
    v63 = sub_25C7E77E4(v59, v61, &v274);

    *(v56 + 4) = v63;
    *(v56 + 12) = 2080;
    v64 = sub_25C82DE8C();
    v66 = v65;
    v263 = v62;
    v62(v31, v55);
    v67 = v268;
    v68 = sub_25C7E77E4(v64, v66, &v274);

    *(v56 + 14) = v68;
    v69 = v241;
    _os_log_impl(&dword_25C7D2000, v241, v240, "Attempting to copy from %s to %s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v57, -1, -1);
    MEMORY[0x25F890110](v56, -1, -1);
  }

  else
  {
    v70 = *(v48 + 8);
    v71 = v269;
    v70(v31, v269);
    v263 = v70;
    v70(v52, v71);
    v67 = v268;
  }

  sub_25C82DE8C();
  v72 = sub_25C82E07C();

  v73 = 0x2799B9000uLL;
  v74 = v264;
  v75 = [v264 fileExistsAtPath_];

  if ((v75 & 1) == 0)
  {
    sub_25C82DE8C();
    v76 = sub_25C82E07C();

    v274 = 0;
    v77 = [v74 createDirectoryAtPath:v76 withIntermediateDirectories:1 attributes:0 error:&v274];

    v78 = v274;
    v79 = v257;
    v80 = v256;
    if (!v77)
    {
      v133 = v67;
      goto LABEL_17;
    }

    v81 = v274;
  }

  sub_25C82DE8C();
  v82 = sub_25C82E07C();

  sub_25C82DE8C();
  v83 = sub_25C82E07C();

  v274 = 0;
  v84 = [v74 copyItemAtPath:v82 toPath:v83 error:&v274];

  v78 = v274;
  if (!v84)
  {
    v133 = v67;
    v79 = v257;
    v80 = v256;
LABEL_17:
    v134 = v78;

    v135 = sub_25C82DDAC();

    v265 = v135;
    swift_willThrow();
    v136 = sub_25C82E27C();
    v137 = qword_281559838;
    v138 = v269;
    v139 = v261;
    (v261)(v80, v266, v269);
    (v139)(v79, v133, v138);
    v140 = v80;
    v141 = v137;
    LODWORD(v266) = v136;
    if (os_log_type_enabled(v141, v136))
    {
      v142 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      v274 = v262;
      *v142 = 136315650;
      v143 = sub_25C82DE8C();
      v145 = v144;
      v267 = (v267 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v146 = v140;
      v147 = v263;
      v263(v146, v269);
      v148 = sub_25C7E77E4(v143, v145, &v274);

      *(v142 + 4) = v148;
      *(v142 + 12) = 2080;
      v149 = sub_25C82DE8C();
      v151 = v150;
      v147(v79, v269);
      v74 = v264;
      v152 = sub_25C7E77E4(v149, v151, &v274);

      *(v142 + 14) = v152;
      *(v142 + 22) = 2080;
      v133 = v268;
      v153 = v265;
      swift_getErrorValue();
      v154 = sub_25C82E52C();
      v156 = sub_25C7E77E4(v154, v155, &v274);

      *(v142 + 24) = v156;
      _os_log_impl(&dword_25C7D2000, v141, v266, "Failed to copy folder from %s to %s with error: %s", v142, 0x20u);
      v157 = v262;
      swift_arrayDestroy();
      v158 = v147;
      MEMORY[0x25F890110](v157, -1, -1);
      MEMORY[0x25F890110](v142, -1, -1);
    }

    else
    {

      v159 = v79;
      v160 = v269;
      v158 = v263;
      v263(v159, v269);
      v158(v140, v160);
      v153 = v265;
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v161 = 10;
    swift_willThrow();

    goto LABEL_21;
  }

  v85 = v274;
  v86 = sub_25C82DE1C();
  v274 = 46;
  v275 = 0xE100000000000000;
  MEMORY[0x28223BE20](v86);
  *&v239[-16] = &v274;
  v87 = v252;
  v90 = sub_25C7FAA3C(0x7FFFFFFFFFFFFFFFLL, 1, sub_25C801FE8, &v239[-32], v88, v89, &v276);
  if (!v90[2])
  {
    __break(1u);
  }

  v265 = v87;
  v91 = v90[4];
  v92 = v90[5];
  v93 = v90[6];
  v94 = v90[7];

  v95 = MEMORY[0x25F88F420](v91, v92, v93, v94);
  v97 = v96;

  v274 = 0x74736F6F6267782ELL;
  v275 = 0xE800000000000000;
  v270 = v95;
  v271 = v97;
  v98 = MEMORY[0x277D837D0];
  v270 = sub_25C82E18C();
  v271 = v99;
  sub_25C82E12C();
  v100 = v254;
  v260 = v270;
  v266 = v271;
  sub_25C82DE4C();
  v101 = swift_allocObject();
  *(v101 + 16) = v247;
  v102 = v246;
  *(v101 + 56) = v98;
  *(v101 + 64) = v102;
  v103 = v258;
  *(v101 + 32) = v250;
  *(v101 + 40) = v103;
  v104 = sub_25C82E0CC();
  v106 = v105;

  v274 = 0x74736F6F6267782ELL;
  v275 = 0xE800000000000000;
  v107 = v100;
  v270 = v104;
  v271 = v106;
  v270 = sub_25C82E18C();
  v271 = v108;
  sub_25C82E12C();
  v109 = v255;
  sub_25C82DE4C();

  v110 = sub_25C82E25C();
  v111 = qword_281559838;
  v112 = v251;
  v113 = v100;
  v114 = v269;
  v115 = v261;
  (v261)(v251, v113, v269);
  (v115)(v253, v109, v114);
  if (os_log_type_enabled(v111, v110))
  {
    v259 = v111;
    v116 = v112;
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v274 = v118;
    *v117 = 136315394;
    v119 = sub_25C82DE8C();
    v121 = v120;
    v122 = v269;
    v123 = v253;
    v124 = v116;
    v125 = v263;
    v263(v124, v269);
    v126 = sub_25C7E77E4(v119, v121, &v274);

    *(v117 + 4) = v126;
    *(v117 + 12) = 2080;
    v127 = sub_25C82DE8C();
    v129 = v128;
    v130 = v122;
    v73 = 0x2799B9000;
    v125(v123, v130);
    v131 = sub_25C7E77E4(v127, v129, &v274);
    v107 = v254;

    *(v117 + 14) = v131;
    v132 = v259;
    _os_log_impl(&dword_25C7D2000, v259, v110, "Attempting to copy file from %s to %s", v117, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v118, -1, -1);
    MEMORY[0x25F890110](v117, -1, -1);

    v109 = v255;
  }

  else
  {
    v163 = v269;
    v125 = v263;
    v263(v253, v269);
    v125(v112, v163);
  }

  v164 = v264;
  sub_25C82DE8C();
  v165 = sub_25C82E07C();

  v166 = [v164 *(v73 + 3640)];

  if (!v166)
  {

LABEL_33:

    v204 = v269;
    v125(v109, v269);
    result = (v125)(v107, v204);
    goto LABEL_34;
  }

  v167 = sub_25C82E25C();
  v168 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v167))
  {
    v169 = v168;
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v274 = v171;
    *v170 = 136315138;
    v172 = sub_25C7E77E4(v260, v266, &v274);

    *(v170 + 4) = v172;
    _os_log_impl(&dword_25C7D2000, v169, v167, "Copying file from %s", v170, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v171);
    MEMORY[0x25F890110](v171, -1, -1);
    v173 = v170;
    v109 = v255;
    MEMORY[0x25F890110](v173, -1, -1);
  }

  else
  {
  }

  v174 = v243;
  v175 = sub_25C82E25C();
  v176 = qword_281559838;
  v177 = v269;
  v178 = v261;
  (v261)(v174, v107, v269);
  v179 = v244;
  (v178)(v244, v109, v177);
  if (os_log_type_enabled(v176, v175))
  {
    v266 = v176;
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v182 = v269;
    v260 = v181;
    v274 = v181;
    *v180 = 136315394;
    sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260]);
    v183 = v179;
    v184 = sub_25C82E4DC();
    v186 = v185;
    v187 = v174;
    v188 = v263;
    v263(v187, v182);
    v189 = sub_25C7E77E4(v184, v186, &v274);

    *(v180 + 4) = v189;
    *(v180 + 12) = 2080;
    v190 = sub_25C82E4DC();
    v192 = v191;
    v188(v183, v182);
    v107 = v254;
    v193 = sub_25C7E77E4(v190, v192, &v274);

    *(v180 + 14) = v193;
    v194 = v266;
    _os_log_impl(&dword_25C7D2000, v266, v175, "Copying URL from %s, to %s", v180, 0x16u);
    v195 = v260;
    swift_arrayDestroy();
    v109 = v255;
    MEMORY[0x25F890110](v195, -1, -1);
    MEMORY[0x25F890110](v180, -1, -1);
  }

  else
  {
    v196 = v179;
    v197 = v269;
    v198 = v263;
    v263(v196, v269);
    v198(v174, v197);
  }

  v164 = v264;
  v199 = sub_25C82DE2C();
  v200 = sub_25C82DE2C();
  v274 = 0;
  v201 = v109;
  v202 = [v164 moveItemAtURL:v199 toURL:v200 error:&v274];

  if (v202)
  {
    v203 = v274;
    v109 = v201;
    v125 = v263;
    goto LABEL_33;
  }

  v206 = v274;
  v207 = sub_25C82DDAC();

  v266 = v207;
  swift_willThrow();
  v208 = sub_25C82E27C();
  v209 = qword_281559838;
  v210 = v269;
  v211 = v261;
  (v261)(v245, v107, v269);
  v212 = v242;
  (v211)(v242, v201, v210);
  v213 = v209;
  LODWORD(v265) = v208;
  if (os_log_type_enabled(v213, v208))
  {
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v216 = v269;
    v262 = v215;
    v274 = v215;
    *v214 = 136315650;
    sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260]);
    v261 = v213;
    v217 = v212;
    v218 = v245;
    v219 = sub_25C82E4DC();
    v221 = v220;
    v222 = v218;
    v223 = v263;
    v263(v222, v216);
    v224 = sub_25C7E77E4(v219, v221, &v274);

    *(v214 + 4) = v224;
    *(v214 + 12) = 2080;
    v225 = sub_25C82E4DC();
    v227 = v226;
    v223(v217, v216);
    v228 = sub_25C7E77E4(v225, v227, &v274);

    *(v214 + 14) = v228;
    *(v214 + 22) = 2080;
    v164 = v264;
    v229 = v266;
    swift_getErrorValue();
    v230 = sub_25C82E52C();
    v232 = sub_25C7E77E4(v230, v231, &v274);

    *(v214 + 24) = v232;
    v233 = v261;
    _os_log_impl(&dword_25C7D2000, v261, v265, "Failed to copy xgboost from %s to %s with error: %s", v214, 0x20u);
    v234 = v262;
    swift_arrayDestroy();
    MEMORY[0x25F890110](v234, -1, -1);
    MEMORY[0x25F890110](v214, -1, -1);

    v158 = v223;
    v133 = v268;
  }

  else
  {

    v235 = v212;
    v236 = v269;
    v158 = v263;
    v263(v235, v269);
    v158(v245, v236);
    v133 = v268;
    v229 = v266;
  }

  sub_25C7E7DEC();
  swift_allocError();
  *v237 = 10;
  swift_willThrow();

  v238 = v269;
  v158(v255, v269);
  v158(v254, v238);
LABEL_21:
  result = v158(v133, v269);
LABEL_34:
  v205 = *MEMORY[0x277D85DE8];
  return result;
}

id ODCurareEvaluationAndReportingModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t type metadata accessor for ODCurareEvaluationAndReportingModule()
{
  result = qword_2815594A8;
  if (!qword_2815594A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25C7FAA3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25C82E19C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25C7E7050(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25C7E7050((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25C82E17C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25C82E11C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25C82E11C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25C82E19C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25C7E7050(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25C82E19C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25C7E7050(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25C7E7050((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25C82E11C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_25C7FAE24(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_25C7FAE98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16230, &unk_25C8307F0);
    v2 = sub_25C82E48C();
    v20 = v2;
    sub_25C82E42C();
    v3 = sub_25C82E44C();
    if (v3)
    {
      v4 = v3;
      sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_25C7E96B8(0, &qword_27FC16200, off_2799B9798);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_25C7FB628(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_25C82E2AC();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_25C82E44C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_25C7FB0E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16240, qword_25C830800);
  v40 = a2;
  result = sub_25C82E47C();
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
      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
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

uint64_t sub_25C7FB3B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16210, &qword_25C8307E8);
  result = sub_25C82E47C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_25C82E2AC();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25C7FB628(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16230, &unk_25C8307F0);
  result = sub_25C82E47C();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_25C82E2AC();
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
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25C7FB890(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25C82DEAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161C0, &qword_25C8307B0);
  v43 = a2;
  result = sub_25C82E47C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25C801324(&qword_27FC161C8, MEMORY[0x277CC9260]);
      result = sub_25C82E04C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25C7FBC6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
  v36 = a2;
  result = sub_25C82E47C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25C801F34(v25, v37);
      }

      else
      {
        sub_25C7E9854(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25C801F34(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25C7FBF38(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_25C82E47C();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25C7FC1EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_25C82E47C();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25C7FC488(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25C82DFBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16190, &qword_25C830790);
  v43 = a2;
  result = sub_25C82E47C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25C801324(&qword_27FC16198, MEMORY[0x277CC9578]);
      result = sub_25C82E04C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25C7FC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25C8139BC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25C7FB0E4(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25C8139BC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25C82E51C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25C804580();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_25C7FC9EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25C813A34(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_25C7FB3B8(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_25C813A34(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_25C7E96B8(0, &qword_27FC16200, off_2799B9798);
        sub_25C82E51C();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_25C80470C();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

uint64_t sub_25C7FCB68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C8139BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25C7FC1EC(v16, a4 & 1, &qword_27FC16238, &unk_25C830960);
      v20 = *v5;
      v11 = sub_25C8139BC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_25C82E51C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_25C804870();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_25C7FCCF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25C813A84(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_25C7FB628(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_25C813A84(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
        sub_25C82E51C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_25C804884();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_25C7FCE68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C82DEAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25C813AD4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25C8049E4();
      goto LABEL_7;
    }

    sub_25C7FB890(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25C813AD4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25C7FD310(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25C82E51C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_25C7FD034(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C8139BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25C7FBF38(v16, a4 & 1, &qword_27FC161B8, &unk_25C830940);
      v20 = *v5;
      v11 = sub_25C8139BC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25C82E51C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25C804A0C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_25C7FD1C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C8139BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25C804A20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25C7FBC6C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_25C8139BC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_25C82E51C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_25C801F34(a1, v23);
  }

  else
  {
    sub_25C7FD3C8(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_25C7FD310(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C82DEAC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_25C7FD3C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25C801F34(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_25C7FD434(uint64_t *a1)
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
      sub_25C7FDE60(v8, v9, a1, v4);
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
    return sub_25C7FD674(0, v2, 1, a1);
  }

  return result;
}

void sub_25C7FD560(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_25C82E4CC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C7E96B8(0, &qword_27FC16218, off_2799B97D0);
        v6 = sub_25C82E1FC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_25C7FE84C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_25C7FD8F8(0, v2, 1, a1);
  }
}

uint64_t sub_25C7FD674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

void sub_25C7FD8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v64 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v73 = &v58 - v18;
  v59 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v72 = "evaluateWithModel:]";
    v65 = v19;
    v20 = (v19 + 8 * a3 - 8);
    v21 = a1 - a3;
    v63 = v15;
LABEL_5:
    v61 = v20;
    v62 = a3;
    v22 = *(v65 + 8 * a3);
    v60 = v21;
    v23 = v21;
    while (1)
    {
      v24 = *v20;
      v25 = v22;
      v74 = v24;
      v26 = [v25 evaluationDate];
      if (!v26)
      {
        break;
      }

      v27 = v26;
      v69 = v25;
      v70 = v23;
      sub_25C82E0AC();

      v28 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v29 = sub_25C82E07C();
      [v28 setDateFormat_];

      v30 = sub_25C82E07C();
      v31 = [v28 dateFromString_];

      if (v31)
      {
        v32 = v64;
        sub_25C82DF8C();

        v33 = 0;
        v28 = v31;
      }

      else
      {
        v33 = 1;
        v32 = v64;
      }

      v34 = sub_25C82DFBC();
      v35 = *(v34 - 8);
      v36 = v35;
      v37 = *(v35 + 56);
      v71 = v35 + 56;
      v37(v32, v33, 1, v34);
      v38 = v73;
      sub_25C7E9274(v32, v73, &qword_27FC16048, qword_25C8309D0);

      v39 = *(v36 + 48);
      if (v39(v38, 1, v34) == 1)
      {
        goto LABEL_24;
      }

      v40 = [v74 evaluationDate];
      if (!v40)
      {
        v37(v63, 1, 1, v34);
LABEL_22:
        __break(1u);
        break;
      }

      v41 = v40;
      v66 = v20;
      v68 = v37;
      sub_25C82E0AC();
      v43 = v42;

      v44 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v45 = sub_25C82E07C();
      [v44 setDateFormat_];

      v67 = v43;
      v46 = sub_25C82E07C();
      v47 = [v44 dateFromString_];

      if (v47)
      {
        sub_25C82DF8C();

        v48 = 0;
        v44 = v47;
      }

      else
      {
        v48 = 1;
      }

      v49 = v66;

      v68(v12, v48, 1, v34);
      v50 = v63;
      sub_25C7E9274(v12, v63, &qword_27FC16048, qword_25C8309D0);

      if (v39(v50, 1, v34) == 1)
      {
        goto LABEL_22;
      }

      v51 = v73;
      v52 = sub_25C82DF6C();
      v53 = *(v36 + 8);
      v53(v50, v34);
      v53(v51, v34);

      v54 = v70;
      if (v52)
      {
        if (!v65)
        {
          goto LABEL_25;
        }

        v55 = *v49;
        v22 = v49[1];
        *v49 = v22;
        v49[1] = v55;
        v20 = v49 - 1;
        v56 = __CFADD__(v54, 1);
        v23 = v54 + 1;
        if (!v56)
        {
          continue;
        }
      }

      a3 = v62 + 1;
      v20 = v61 + 1;
      v21 = v60 - 1;
      if (v62 + 1 == v59)
      {
        return;
      }

      goto LABEL_5;
    }

    v57 = sub_25C82DFBC();
    (*(*(v57 - 8) + 56))(v73, 1, 1, v57);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_25C7FDE60(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
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
        sub_25C7FF7BC(*v10 + a3[9] * v115, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
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
        sub_25C7FF7BC(*a3 + v10[9] * v96, *a3 + v10[9] * *&v22[16 * v57 + 32], *a3 + v10[9] * v5, v56);
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

void sub_25C7FE84C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v176 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v160 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v184 = &v160 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v168 = &v160 - v21;
  MEMORY[0x28223BE20](v20);
  v172 = a3;
  v173 = &v160 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_113:
    a3 = *v162;
    if (*v162)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_115;
    }

    goto LABEL_160;
  }

  v167 = v24;
  v166 = v23;
  v175 = v22;
  v161 = a4;
  v27 = 0;
  v185 = "evaluateWithModel:]";
  v28 = MEMORY[0x277D84F90];
  v178 = v15;
  while (1)
  {
    v171 = v28;
    v163 = v27;
    if (v27 + 1 >= v26)
    {
      v26 = v27 + 1;
      goto LABEL_30;
    }

    v29 = v27;
    v30 = *v172;
    v31 = *(*v172 + 8 * (v27 + 1));
    v187 = *(*v172 + 8 * v27);
    v32 = v187;
    v188 = v31;
    v33 = v31;
    a3 = v32;
    LODWORD(v170) = sub_25C7EFEE4(&v188, &v187);
    if (v5)
    {

      return;
    }

    v34 = v27 + 2;
    v177 = 8 * v29;
    v35 = (v30 + 8 * v29 + 16);
    v169 = 0;
    v174 = v26;
    do
    {
      if (v26 == v34)
      {
        goto LABEL_20;
      }

      v37 = *(v35 - 1);
      v36 = *v35;
      v181 = v35;
      v38 = v36;
      v186 = v37;
      v39 = [v38 evaluationDate];
      if (!v39)
      {
        goto LABEL_154;
      }

      v40 = v39;
      sub_25C82E0AC();

      v41 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v42 = sub_25C82E07C();
      [v41 setDateFormat_];

      v43 = sub_25C82E07C();
      v44 = [v41 dateFromString_];

      v45 = v168;
      v180 = v34;
      if (v44)
      {
        sub_25C82DF8C();

        v46 = 0;
        v41 = v44;
      }

      else
      {
        v46 = 1;
      }

      v26 = sub_25C82DFBC();
      v47 = *(v26 - 8);
      v48 = v47[7];
      v182 = v47 + 7;
      v183 = v48;
      v48(v45, v46, 1, v26);
      v49 = v45;
      v50 = v173;
      sub_25C7E9274(v49, v173, &qword_27FC16048, qword_25C8309D0);

      v51 = v47[6];
      if (v51(v50, 1, v26) == 1)
      {
        goto LABEL_155;
      }

      v52 = [v186 evaluationDate];
      if (!v52)
      {
        goto LABEL_152;
      }

      v53 = v52;
      sub_25C82E0AC();
      v55 = v54;

      v56 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v57 = sub_25C82E07C();
      [v56 setDateFormat_];

      v179 = v55;
      v58 = sub_25C82E07C();
      v59 = [v56 dateFromString_];

      if (v59)
      {
        v60 = v166;
        sub_25C82DF8C();

        v61 = 0;
        v56 = v59;
      }

      else
      {
        v61 = 1;
        v60 = v166;
      }

      v183(v60, v61, 1, v26);
      v62 = v167;
      sub_25C7E9274(v60, v167, &qword_27FC16048, qword_25C8309D0);

      if (v51(v62, 1, v26) == 1)
      {
LABEL_153:
        __break(1u);
LABEL_154:
        v159 = sub_25C82DFBC();
        (*(*(v159 - 8) + 56))(v173, 1, 1, v159);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
        return;
      }

      v63 = v173;
      a3 = (sub_25C82DF6C() & 1);
      v64 = v47[1];
      v64(v62, v26);
      v64(v63, v26);

      v34 = v180 + 1;
      v35 = v181 + 1;
      v5 = v169;
      v28 = v171;
      v15 = v178;
      v26 = v174;
    }

    while ((v170 & 1) == a3);
    v26 = v180;
LABEL_20:
    if (v170)
    {
      break;
    }

LABEL_30:
    v70 = v172[1];
    if (v26 >= v70)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v26, v163))
    {
      goto LABEL_142;
    }

    if (v26 - v163 >= v161)
    {
LABEL_40:
      v27 = v26;
    }

    else
    {
      if (__OFADD__(v163, v161))
      {
        goto LABEL_143;
      }

      if (v163 + v161 >= v70)
      {
        v71 = v172[1];
      }

      else
      {
        v71 = v163 + v161;
      }

      if (v71 < v163)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v72 = v163;
      if (v26 == v71)
      {
        v27 = v26;
        goto LABEL_42;
      }

      v169 = v5;
      v177 = *v172;
      v119 = v177 + 8 * v26 - 8;
      v120 = v163 - v26;
      v121 = v175;
      v164 = v71;
      do
      {
        v174 = v26;
        v122 = *(v177 + 8 * v26);
        v165 = v120;
        v123 = v120;
        v170 = v119;
        v124 = v119;
        while (1)
        {
          v125 = *v124;
          v126 = v122;
          v186 = v125;
          v127 = [v126 evaluationDate];
          if (!v127)
          {
            goto LABEL_149;
          }

          v128 = v127;
          sub_25C82E0AC();

          v129 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v130 = sub_25C82E07C();
          [v129 setDateFormat_];

          v131 = sub_25C82E07C();
          v132 = [v129 dateFromString_];

          v179 = v123;
          v181 = v126;
          if (v132)
          {
            sub_25C82DF8C();

            v133 = 0;
            v129 = v132;
          }

          else
          {
            v133 = 1;
          }

          v26 = sub_25C82DFBC();
          v134 = *(v26 - 8);
          v135 = v134[7];
          v182 = v134 + 7;
          v183 = v135;
          v135(v15, v133, 1, v26);
          v136 = v184;
          sub_25C7E9274(v15, v184, &qword_27FC16048, qword_25C8309D0);

          v137 = v134[6];
          if (v137(v136, 1, v26) == 1)
          {
            goto LABEL_150;
          }

          v138 = [v186 evaluationDate];
          if (!v138)
          {
            v183(v121, 1, 1, v26);
LABEL_148:
            __break(1u);
LABEL_149:
            v158 = sub_25C82DFBC();
            (*(*(v158 - 8) + 56))(v184, 1, 1, v158);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            v183(v167, 1, 1, v26);
            goto LABEL_153;
          }

          v139 = v138;
          sub_25C82E0AC();
          v141 = v140;

          v142 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v143 = sub_25C82E07C();
          [v142 setDateFormat_];

          v180 = v141;
          v144 = sub_25C82E07C();
          v145 = [v142 dateFromString_];

          if (v145)
          {
            v146 = v176;
            sub_25C82DF8C();

            v147 = 0;
            v142 = v145;
          }

          else
          {
            v147 = 1;
            v146 = v176;
          }

          v183(v146, v147, 1, v26);
          v148 = v146;
          v121 = v175;
          sub_25C7E9274(v148, v175, &qword_27FC16048, qword_25C8309D0);

          if (v137(v121, 1, v26) == 1)
          {
            goto LABEL_148;
          }

          v149 = v184;
          v150 = sub_25C82DF6C();
          a3 = v134[1];
          (a3)(v121, v26);
          (a3)(v149, v26);

          if ((v150 & 1) == 0)
          {
            break;
          }

          v15 = v178;
          v151 = v179;
          if (!v177)
          {
            goto LABEL_151;
          }

          v152 = *v124;
          v122 = *(v124 + 8);
          *v124 = v122;
          *(v124 + 8) = v152;
          v124 -= 8;
          v153 = __CFADD__(v151, 1);
          v123 = v151 + 1;
          if (v153)
          {
            goto LABEL_94;
          }
        }

        v15 = v178;
LABEL_94:
        v26 = v174 + 1;
        v119 = v170 + 8;
        v120 = v165 - 1;
        v27 = v164;
      }

      while (v174 + 1 != v164);
      v5 = v169;
      v28 = v171;
    }

    v72 = v163;
LABEL_42:
    if (v27 < v72)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_25C7E6F4C(0, *(v28 + 2) + 1, 1, v28);
    }

    v74 = *(v28 + 2);
    v73 = *(v28 + 3);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      v28 = sub_25C7E6F4C((v73 > 1), v74 + 1, 1, v28);
    }

    *(v28 + 2) = v75;
    v76 = &v28[16 * v74];
    *(v76 + 4) = v163;
    *(v76 + 5) = v27;
    a3 = *v162;
    if (!*v162)
    {
      goto LABEL_159;
    }

    if (v74)
    {
      while (1)
      {
        v77 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v28 + 4);
          v79 = *(v28 + 5);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_62:
          if (v81)
          {
            goto LABEL_130;
          }

          v94 = &v28[16 * v75];
          v96 = *v94;
          v95 = *(v94 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_133;
          }

          v100 = &v28[16 * v77 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_137;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v75 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v104 = &v28[16 * v75];
        v106 = *v104;
        v105 = *(v104 + 1);
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_76:
        if (v99)
        {
          goto LABEL_132;
        }

        v107 = &v28[16 * v77];
        v109 = *(v107 + 4);
        v108 = *(v107 + 5);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_135;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_83:
        v115 = v77 - 1;
        if (v77 - 1 >= v75)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v172)
        {
          goto LABEL_156;
        }

        v116 = *&v28[16 * v115 + 32];
        v117 = *&v28[16 * v77 + 40];
        sub_25C7FFD4C((*v172 + 8 * v116), (*v172 + 8 * *&v28[16 * v77 + 32]), (*v172 + 8 * v117), a3);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v117 < v116)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_25C807028(v28);
        }

        if (v115 >= *(v28 + 2))
        {
          goto LABEL_127;
        }

        v118 = &v28[16 * v115];
        *(v118 + 4) = v116;
        *(v118 + 5) = v117;
        v189 = v28;
        sub_25C806F9C(v77);
        v28 = v189;
        v75 = *(v189 + 2);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = &v28[16 * v75 + 32];
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_128;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_129;
      }

      v89 = &v28[16 * v75];
      v91 = *v89;
      v90 = *(v89 + 1);
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_131;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_134;
      }

      if (v93 >= v85)
      {
        v111 = &v28[16 * v77 + 32];
        v113 = *v111;
        v112 = *(v111 + 1);
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_138;
        }

        if (v80 < v114)
        {
          v77 = v75 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v26 = v172[1];
    if (v27 >= v26)
    {
      goto LABEL_113;
    }
  }

  v65 = v163;
  if (v26 >= v163)
  {
    if (v163 < v26)
    {
      v66 = 8 * v26 - 8;
      v67 = v26;
      while (1)
      {
        if (v65 != --v67)
        {
          v69 = *v172;
          if (!*v172)
          {
            goto LABEL_157;
          }

          v68 = *(v69 + v177);
          *(v69 + v177) = *(v69 + v66);
          *(v69 + v66) = v68;
        }

        ++v65;
        v66 -= 8;
        v177 += 8;
        if (v65 >= v67)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_145:
  __break(1u);
LABEL_146:
  v28 = sub_25C807028(v28);
LABEL_115:
  v189 = v28;
  v154 = *(v28 + 2);
  if (v154 >= 2)
  {
    while (*v172)
    {
      v155 = *&v28[16 * v154];
      v156 = *&v28[16 * v154 + 24];
      sub_25C7FFD4C((*v172 + 8 * v155), (*v172 + 8 * *&v28[16 * v154 + 16]), (*v172 + 8 * v156), a3);
      if (v5)
      {
        goto LABEL_123;
      }

      if (v156 < v155)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_25C807028(v28);
      }

      if (v154 - 2 >= *(v28 + 2))
      {
        goto LABEL_140;
      }

      v157 = &v28[16 * v154];
      *v157 = v155;
      *(v157 + 1) = v156;
      v189 = v28;
      sub_25C806F9C(v154 - 1);
      v28 = v189;
      v154 = *(v189 + 2);
      if (v154 <= 1)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_158;
  }

LABEL_123:
}

uint64_t sub_25C7FF7BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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

uint64_t sub_25C7FFD4C(void **a1, void **a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v103 = v100 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v104 = v100 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v111 = (v100 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v102 = (v100 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v105 = (v100 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v106 = v100 - v24;
  MEMORY[0x28223BE20](v23);
  v110 = (v100 - v25);
  v26 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v26 = a2 - a1;
  }

  v27 = v26 >> 3;
  v28 = a3 - a2;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v27 < v29 >> 3)
  {
    if (a4 != a1 || &a1[v27] <= a4)
    {
      memmove(a4, a1, 8 * v27);
    }

    v116 = &a4[v27];
    if (a2 - a1 < 8)
    {
      v31 = a1;
    }

    else
    {
      v31 = a1;
      if (a2 < a3)
      {
        v32 = a2;
        v114 = a3;
        v104 = "evaluateWithModel:]";
        while (1)
        {
          v112 = v31;
          v109 = v32;
          v33 = *a4;
          v34 = *v32;
          v113 = v33;
          v35 = [v34 evaluationDate];
          if (!v35)
          {
LABEL_64:
            v98 = sub_25C82DFBC();
            (*(*(v98 - 8) + 56))(v110, 1, 1, v98);
LABEL_65:
            __break(1u);
LABEL_66:
            v110(v103, 1, 1, v28);
            goto LABEL_67;
          }

          v36 = v35;
          sub_25C82E0AC();

          v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v38 = sub_25C82E07C();
          [v37 setDateFormat_];

          v39 = sub_25C82E07C();
          v40 = [v37 dateFromString_];

          v115 = a4;
          v108 = v34;
          if (v40)
          {
            v41 = v106;
            sub_25C82DF8C();

            v42 = 0;
            v37 = v40;
          }

          else
          {
            v42 = 1;
            v41 = v106;
          }

          v28 = sub_25C82DFBC();
          v43 = *(v28 - 8);
          v44 = v43[7];
          v44(v41, v42, 1, v28);
          v45 = v41;
          v46 = v110;
          sub_25C7E9274(v45, v110, &qword_27FC16048, qword_25C8309D0);

          v47 = v43[6];
          if (v47(v46, 1, v28) == 1)
          {
            goto LABEL_65;
          }

          v111 = v44;
          v48 = [v113 evaluationDate];
          if (!v48)
          {
            v111(v105, 1, 1, v28);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v49 = v48;
          sub_25C82E0AC();
          v51 = v50;

          v52 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v53 = sub_25C82E07C();
          [v52 setDateFormat_];

          v107 = v51;
          v54 = sub_25C82E07C();
          v55 = [v52 dateFromString_];

          if (v55)
          {
            v56 = v102;
            sub_25C82DF8C();

            v57 = 0;
            v52 = v55;
          }

          else
          {
            v57 = 1;
            v56 = v102;
          }

          v111(v56, v57, 1, v28);
          v58 = v105;
          sub_25C7E9274(v56, v105, &qword_27FC16048, qword_25C8309D0);

          if (v47(v58, 1, v28) == 1)
          {
            goto LABEL_63;
          }

          v59 = v110;
          v60 = sub_25C82DF6C();
          v61 = v43[1];
          v61(v58, v28);
          v61(v59, v28);

          a4 = v115;
          if ((v60 & 1) == 0)
          {
            break;
          }

          v62 = v109;
          v32 = v109 + 1;
          v63 = v112;
          v64 = v114;
          if (v112 != v109)
          {
            goto LABEL_26;
          }

LABEL_27:
          v31 = v63 + 1;
          if (a4 >= v116 || v32 >= v64)
          {
            goto LABEL_58;
          }
        }

        v62 = v115;
        v63 = v112;
        a4 = v115 + 1;
        v32 = v109;
        v64 = v114;
        if (v112 == v115)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v63 = *v62;
        goto LABEL_27;
      }
    }

    goto LABEL_58;
  }

  v112 = a1;
  v31 = a2;
  if (a4 != a2 || &a2[v30] <= a4)
  {
    memmove(a4, a2, 8 * v30);
  }

  v116 = &a4[v30];
  v65 = v104;
  if (v28 < 8 || v31 <= v112)
  {
LABEL_58:
    if (v31 != a4 || v31 >= (a4 + ((v116 - a4 + (v116 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v31, a4, 8 * (v116 - a4));
    }

    return 1;
  }

  v100[2] = "evaluateWithModel:]";
  v101 = v12;
  v115 = a4;
LABEL_36:
  v109 = v31;
  v66 = v31 - 1;
  v67 = (a3 - 8);
  v68 = v116;
  v102 = v31 - 1;
  while (1)
  {
    v69 = *(v68 - 1);
    v105 = v68 - 1;
    v70 = *v66;
    v71 = v69;
    v113 = v70;
    v72 = [v71 evaluationDate];
    if (!v72)
    {
      break;
    }

    v73 = v72;
    sub_25C82E0AC();

    v74 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v75 = sub_25C82E07C();
    [v74 setDateFormat_];

    v76 = sub_25C82E07C();
    v77 = [v74 dateFromString_];

    v114 = v67;
    v107 = v71;
    if (v77)
    {
      sub_25C82DF8C();

      v78 = 0;
      v74 = v77;
    }

    else
    {
      v78 = 1;
    }

    v28 = sub_25C82DFBC();
    v79 = *(v28 - 8);
    v80 = v79[7];
    v80(v65, v78, 1, v28);
    v81 = v111;
    sub_25C7E9274(v65, v111, &qword_27FC16048, qword_25C8309D0);

    v108 = v79[6];
    result = (v108)(v81, 1, v28);
    if (result == 1)
    {
      goto LABEL_69;
    }

    v110 = v80;
    v83 = [v113 evaluationDate];
    if (!v83)
    {
      goto LABEL_66;
    }

    v84 = v83;
    sub_25C82E0AC();
    v86 = v85;

    v87 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v88 = sub_25C82E07C();
    [v87 setDateFormat_];

    v106 = v86;
    v89 = sub_25C82E07C();
    v90 = [v87 dateFromString_];

    if (v90)
    {
      v91 = v101;
      sub_25C82DF8C();

      v92 = 0;
      v87 = v90;
    }

    else
    {
      v92 = 1;
      v91 = v101;
    }

    v110(v91, v92, 1, v28);
    v93 = v103;
    sub_25C7E9274(v91, v103, &qword_27FC16048, qword_25C8309D0);

    if ((v108)(v93, 1, v28) == 1)
    {
LABEL_67:
      __break(1u);
      break;
    }

    v94 = v111;
    v95 = sub_25C82DF6C();
    v96 = v79[1];
    v96(v93, v28);
    v96(v94, v28);

    a4 = v115;
    v65 = v104;
    v66 = v102;
    if (v95)
    {
      a3 = v114;
      if (v114 + 1 != v109)
      {
        *v114 = *v102;
      }

      if (v116 <= a4 || (v31 = v66, v66 <= v112))
      {
        v31 = v66;
        goto LABEL_58;
      }

      goto LABEL_36;
    }

    v97 = v114;
    v68 = v105;
    if (v114 + 1 != v116)
    {
      *v114 = *v105;
    }

    v67 = v97 - 1;
    v116 = v68;
    if (v68 <= a4)
    {
      v116 = v68;
      v31 = v109;
      goto LABEL_58;
    }
  }

  v99 = sub_25C82DFBC();
  result = (*(*(v99 - 8) + 56))(v111, 1, 1, v99);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_25C8008CC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_25C82E43C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_25C82E3BC();
    *v1 = result;
  }

  return result;
}

uint64_t sub_25C800988(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25C82E4EC() & 1;
  }
}

unint64_t sub_25C8009E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A0, &qword_25C830798);
    v3 = sub_25C82E49C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C7E92DC(v4, v13, &qword_27FC161A8, &unk_25C8307A0);
      result = sub_25C813978(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25C801F34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_25C800B1C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25F88F6D0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isDefaultModel])
      {
        v7 = sub_25C7EFE54(v3);

        return v7;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  sub_25C82E27C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v9 = qword_281559838;
  sub_25C82E00C();

  sub_25C7E7DEC();
  swift_allocError();
  *v10 = 20;
  return swift_willThrow();
}

uint64_t sub_25C800CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_25C82E43C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_25C82E43C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25C800DDC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_25C82E43C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_25C82E43C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_25C8008CC(result);

  return sub_25C800CCC(v4, v2, 0);
}

void sub_25C800EB4(uint64_t *a1)
{
  v2 = a1;
  sub_25C800B1C(a1);
  if (!v1)
  {
    v38 = MEMORY[0x277D84F90];
    v3 = *v2;
    v37 = (*v2 >> 62);
    v4 = *v2 & 0xFFFFFFFFFFFFFF8;
    if (v37)
    {
      goto LABEL_87;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = v3 & 0xC000000000000001;
    if (v5)
    {
      v7 = 0;
      do
      {
        v8 = v7;
        while (1)
        {
          if (v6)
          {
            v9 = MEMORY[0x25F88F6D0](v8, v3);
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_79;
            }

            v9 = *(v3 + 8 * v8 + 32);
          }

          v10 = v9;
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_78;
          }

          if (([v9 isPersonalizableModel] & 1) == 0)
          {
            break;
          }

          ++v8;
          if (v7 == v5)
          {
            goto LABEL_18;
          }
        }

        v36 = v2;
        v11 = v10;
        MEMORY[0x25F88F4D0]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v2 = v36;
      }

      while (v7 != v5);
    }

LABEL_18:
    if (v37)
    {
      v13 = sub_25C82E43C();
    }

    else
    {
      v13 = *(v4 + 16);
    }

    v14 = 0;
    while (1)
    {
      if (v13 == v14)
      {
        if (v37)
        {
          v14 = sub_25C82E43C();
        }

        else
        {
          v14 = *(v4 + 16);
        }

        goto LABEL_41;
      }

      if (v6)
      {
        v15 = MEMORY[0x25F88F6D0](v14, v3);
      }

      else
      {
        if (v14 >= *(v4 + 16))
        {
          goto LABEL_80;
        }

        v15 = *(v3 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 isPersonalizableModel];

      v18 = v14 + 1;
      v19 = __OFADD__(v14, 1);
      if (!v17)
      {
        break;
      }

      ++v14;
      if (v19)
      {
        goto LABEL_81;
      }
    }

    if (!v19)
    {
      if (v37)
      {
        if (v18 != sub_25C82E43C())
        {
LABEL_45:
          v4 = v14 + 5;
          do
          {
            v21 = v4 - 4;
            if ((v3 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x25F88F6D0](v4 - 4, v3);
            }

            else
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                goto LABEL_82;
              }

              if (v21 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_83;
              }

              v22 = *(v3 + 8 * v4);
            }

            v23 = v22;
            v24 = [v22 isPersonalizableModel];

            if (v24)
            {
              if (v21 != v14)
              {
                if ((v3 & 0xC000000000000001) != 0)
                {
                  v37 = MEMORY[0x25F88F6D0](v14, v3);
                  v25 = MEMORY[0x25F88F6D0](v4 - 4, v3);
                }

                else
                {
                  if (v14 < 0)
                  {
                    goto LABEL_90;
                  }

                  v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v14 >= v26)
                  {
                    goto LABEL_91;
                  }

                  if (v21 >= v26)
                  {
                    goto LABEL_92;
                  }

                  v27 = *(v3 + 8 * v4);
                  v37 = *(v3 + 8 * v14 + 32);
                  v25 = v27;
                }

                v28 = v25;
                v29 = v2;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
                {
                  v3 = sub_25C7E98B0(v3);
                  v2 = ((v3 >> 62) & 1);
                }

                else
                {
                  v2 = 0;
                }

                v30 = v3 & 0xFFFFFFFFFFFFFF8;
                v31 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20);
                *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v14 + 0x20) = v28;

                if ((v3 & 0x8000000000000000) != 0 || v2)
                {
                  v3 = sub_25C7E98B0(v3);
                  v30 = v3 & 0xFFFFFFFFFFFFFF8;
                  if ((v21 & 0x8000000000000000) != 0)
                  {
LABEL_77:
                    __break(1u);
LABEL_78:
                    __break(1u);
LABEL_79:
                    __break(1u);
LABEL_80:
                    __break(1u);
LABEL_81:
                    __break(1u);
LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
LABEL_84:
                    __break(1u);
LABEL_85:
                    __break(1u);
LABEL_86:
                    __break(1u);
LABEL_87:
                    v5 = sub_25C82E43C();
                    goto LABEL_4;
                  }
                }

                else if ((v21 & 0x8000000000000000) != 0)
                {
                  goto LABEL_77;
                }

                if (v21 >= *(v30 + 16))
                {
                  goto LABEL_86;
                }

                v2 = v29;
                v32 = *(v30 + 8 * v4);
                *(v30 + 8 * v4) = v37;

                *v29 = v3;
              }

              if (__OFADD__(v14++, 1))
              {
                goto LABEL_85;
              }
            }

            v34 = v4 - 3;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_84;
            }

            if (v3 >> 62)
            {
              v35 = sub_25C82E43C();
            }

            else
            {
              v35 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v4;
          }

          while (v34 != v35);
        }
      }

      else if (v18 != *(v4 + 16))
      {
        goto LABEL_45;
      }

LABEL_41:
      if (v3 >> 62)
      {
        v20 = sub_25C82E43C();
        if (v20 >= v14)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20 >= v14)
        {
LABEL_43:
          sub_25C800DDC(v14, v20);
          return;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_25C801324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C80136C(unint64_t a1, uint64_t a2, id a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v49 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_47:
    v13 = sub_25C82E43C();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v12;
  if (!v13)
  {
    a1 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  v14 = 0;
  v47 = a1 & 0xFFFFFFFFFFFFFF8;
  v48 = a1 & 0xC000000000000001;
  v46 = v10;
  do
  {
    if (v48)
    {
      v15 = MEMORY[0x25F88F6D0](v14, a1);
    }

    else
    {
      if (v14 >= *(v47 + 16))
      {
        goto LABEL_44;
      }

      v15 = *(a1 + 8 * v14 + 32);
    }

    v16 = v15;
    v10 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v17 = [v15 modelName];
    if (!v17)
    {

      goto LABEL_6;
    }

    v18 = a1;
    v19 = a3;
    v20 = v17;
    v21 = sub_25C82E0AC();
    v23 = v22;

    a3 = v19;
    v24 = v21 == a2 && v23 == v19;
    if (v24)
    {
    }

    else
    {
      v12 = sub_25C82E4EC();

      if ((v12 & 1) == 0)
      {

        a1 = v18;
        goto LABEL_6;
      }
    }

    sub_25C82E3DC();
    v12 = *(v49 + 16);
    sub_25C82E3FC();
    sub_25C82E40C();
    sub_25C82E3EC();
    a1 = v18;
LABEL_6:
    ++v14;
    v24 = v10 == v13;
    v10 = v46;
  }

  while (!v24);
  a1 = v49;
  v49 = MEMORY[0x277D84F90];
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_48:
    v12 = sub_25C82E43C();
    a2 = v45;
    if (!v12)
    {
      goto LABEL_49;
    }

LABEL_26:
    v25 = 0;
    v47 = v12;
    v48 = a1 & 0xC000000000000001;
    v46 = "evaluateWithModel:]";
    v26 = &qword_27FC16048;
    v44 = a1;
    while (2)
    {
      if (v48)
      {
        v28 = MEMORY[0x25F88F6D0](v25, a1);
      }

      else
      {
        if (v25 >= *(a1 + 16))
        {
          goto LABEL_46;
        }

        v28 = *(a1 + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_45;
      }

      v31 = [v28 evaluationDate];
      if (v31)
      {
        v32 = v26;
        v33 = v31;
        sub_25C82E0AC();

        v34 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v35 = sub_25C82E07C();
        [v34 setDateFormat_];

        v36 = sub_25C82E07C();
        a3 = [v34 dateFromString_];

        if (a3)
        {
          sub_25C82DF8C();

          v37 = 0;
          v34 = a3;
        }

        else
        {
          v37 = 1;
        }

        v38 = sub_25C82DFBC();
        v39 = *(v38 - 8);
        (*(v39 + 56))(v10, v37, 1, v38);
        a2 = v45;
        v26 = v32;
        sub_25C7E9274(v10, v45, v32, qword_25C8309D0);
        if ((*(v39 + 48))(a2, 1, v38) == 1)
        {

          v12 = v47;
          a1 = v44;
LABEL_28:
          sub_25C7E97F4(a2, v26, qword_25C8309D0);
        }

        else
        {
          sub_25C7E97F4(a2, v32, qword_25C8309D0);
          sub_25C82E3DC();
          v40 = *(v49 + 16);
          sub_25C82E3FC();
          sub_25C82E40C();
          sub_25C82E3EC();
          v12 = v47;
          a1 = v44;
        }

        ++v25;
        if (v30 == v12)
        {
          v41 = v49;
          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    v27 = sub_25C82DFBC();
    (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    goto LABEL_28;
  }

LABEL_24:
  if ((a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v12 = *(a1 + 16);
  a2 = v45;
  if (v12)
  {
    goto LABEL_26;
  }

LABEL_49:
  v41 = MEMORY[0x277D84F90];
LABEL_50:

  v49 = v41;
  sub_25C7E9918(&v49);
  return v49;
}

id sub_25C8018BC(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25C82DE2C();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_25C82DEAC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_25C82DDAC();

    swift_willThrow();
    v11 = sub_25C82DEAC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_25C801A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
    v3 = sub_25C82E49C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C7E92DC(v4, &v13, &qword_27FC16160, &unk_25C8306A0);
      v5 = v13;
      v6 = v14;
      result = sub_25C8139BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25C801F34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_25C801B54()
{
  v0 = sub_25C82DEAC();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_25C82DFBC();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_25C7E9660(319, &qword_281559820, MEMORY[0x277CC9578]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_25C7E9660(319, &qword_281559828, MEMORY[0x277CC9260]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

_OWORD *sub_25C801F34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C801F44(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25C7E96B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C801F94()
{
  result = qword_27FC161B0;
  if (!qword_27FC161B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC161B0);
  }

  return result;
}

uint64_t sub_25C801FE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25C82E4EC() & 1;
  }
}

uint64_t sub_25C802040(void **a1)
{
  v2 = *(sub_25C82DFBC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25C7E916C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25C80514C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25C8020EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_25C7D37DC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_25C805278(v6);
  return sub_25C82E3EC();
}

void sub_25C802168()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_25C82E07C();
  [v0 setDateFormat_];

  qword_27FC16890 = v0;
}

void sub_25C8021E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v48 - v10;
  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = 0;
  v12 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
  *v12 = 0;
  v12[1] = 0;
  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = 2;
  v13 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
  *v13 = 0;
  v13[1] = 0;
  if (qword_27FC15E28 == -1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  swift_once();
  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

LABEL_3:
  v14 = qword_27FC16890;
  v15 = sub_25C8139BC(0x7461447472617473, 0xE900000000000065);
  if ((v16 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_25C7E9854(*(a1 + 56) + 32 * v15, v48);
  sub_25C801F34(v48, v49);
  swift_dynamicCast();
  v17 = sub_25C82E07C();

  v18 = [v14 dateFromString_];

  if (!v18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_25C82DF8C();

  v19 = *(v5 + 32);
  v19(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_startDate, v11, v4);
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  v20 = qword_27FC16890;
  v21 = sub_25C8139BC(0x65746144646E65, 0xE700000000000000);
  if ((v22 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_25C7E9854(*(a1 + 56) + 32 * v21, v48);
  sub_25C801F34(v48, v49);
  swift_dynamicCast();
  v23 = sub_25C82E07C();

  v24 = [v20 dateFromString_];

  if (!v24)
  {
LABEL_39:
    __break(1u);
    return;
  }

  sub_25C82DF8C();

  v19(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate, v9, v4);
  v25 = *(a1 + 16);
  if (!v25)
  {
LABEL_13:
    v29 = 0;
    goto LABEL_14;
  }

  v26 = sub_25C8139BC(0xD000000000000010, 0x800000025C833710);
  if ((v27 & 1) == 0)
  {
    v25 = 0;
    goto LABEL_13;
  }

  sub_25C7E9854(*(a1 + 56) + 32 * v26, v49);
  v28 = swift_dynamicCast();
  v29 = *(&v48[0] + 1);
  v25 = *&v48[0];
  if (!v28)
  {
    v25 = 0;
    v29 = 0;
  }

LABEL_14:
  v30 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
  v31 = *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName + 8);
  *v30 = v25;
  v30[1] = v29;

  if (*(a1 + 16))
  {
    v32 = sub_25C8139BC(0xD000000000000014, 0x800000025C833730);
    v33 = 2;
    if (v34)
    {
      sub_25C7E9854(*(a1 + 56) + 32 * v32, v49);
      if (swift_dynamicCast())
      {
        v33 = v48[0];
      }

      else
      {
        v33 = 2;
      }
    }
  }

  else
  {
    v33 = 2;
  }

  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = v33;
  v35 = *(a1 + 16);
  if (v35)
  {
    v36 = sub_25C8139BC(0x65646F4D64657375, 0xED0000656D614E6CLL);
    if (v37)
    {
      sub_25C7E9854(*(a1 + 56) + 32 * v36, v49);
      v38 = swift_dynamicCast();
      v39 = *(&v48[0] + 1);
      v35 = *&v48[0];
      if (!v38)
      {
        v35 = 0;
        v39 = 0;
      }

      goto LABEL_26;
    }

    v35 = 0;
  }

  v39 = 0;
LABEL_26:
  v40 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
  v41 = *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName + 8);
  *v40 = v35;
  v40[1] = v39;

  if (*(a1 + 16) && (v42 = sub_25C8139BC(0xD00000000000001DLL, 0x800000025C8336F0), (v43 & 1) != 0))
  {
    sub_25C7E9854(*(a1 + 56) + 32 * v42, v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16278, &qword_25C8308F0);
    v44 = swift_dynamicCast();
    v45 = *&v48[0];
    if (!v44)
    {
      v45 = 0;
    }
  }

  else
  {

    v45 = 0;
  }

  v46 = *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata);
  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = v45;
}

uint64_t sub_25C802778()
{
  v1 = v0;
  if (qword_27FC15E28 != -1)
  {
    swift_once();
  }

  v2 = qword_27FC16890;
  v3 = sub_25C82DF4C();
  v4 = [v2 stringFromDate_];

  v5 = sub_25C82E0AC();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D837D0];
  *&v35 = v5;
  *(&v35 + 1) = v7;
  sub_25C801F34(&v35, v34);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v9;
  sub_25C7FD1C0(v34, 0x7461447472617473, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v11 = v37;
  v12 = qword_27FC16890;
  v13 = sub_25C82DF4C();
  v14 = [v12 stringFromDate_];

  v15 = sub_25C82E0AC();
  v17 = v16;

  v36 = v8;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  sub_25C801F34(&v35, v34);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_25C7FD1C0(v34, 0x65746144646E65, 0xE700000000000000, v18);
  v19 = v11;
  v37 = v11;
  v20 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName + 8);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
    v36 = v8;
    *&v35 = v21;
    *(&v35 + 1) = v20;
    sub_25C801F34(&v35, v34);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0xD000000000000010, 0x800000025C833710, v22);
    v37 = v19;
  }

  else
  {
    sub_25C80417C(0xD000000000000010, 0x800000025C833710, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
  }

  v23 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected);
  if (v23 == 2)
  {
    sub_25C80417C(0xD000000000000014, 0x800000025C833730, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
  }

  else
  {
    v36 = MEMORY[0x277D839B0];
    LOBYTE(v35) = v23 & 1;
    sub_25C801F34(&v35, v34);
    v24 = v37;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0xD000000000000014, 0x800000025C833730, v25);
    v37 = v24;
  }

  v26 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName + 8);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
    v36 = v8;
    *&v35 = v27;
    *(&v35 + 1) = v26;
    sub_25C801F34(&v35, v34);

    v28 = v37;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0x65646F4D64657375, 0xED0000656D614E6CLL, v29);
    v37 = v28;
  }

  else
  {
    sub_25C80417C(0x65646F4D64657375, 0xED0000656D614E6CLL, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
  }

  v30 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata);
  if (v30)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16278, &qword_25C8308F0);
    *&v35 = v30;
    sub_25C801F34(&v35, v34);

    v31 = v37;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0xD00000000000001DLL, 0x800000025C8336F0, v32);
    return v31;
  }

  else
  {
    sub_25C80417C(0xD00000000000001DLL, 0x800000025C8336F0, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
    return v37;
  }
}

uint64_t sub_25C802BF4()
{
  v1 = OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_startDate;
  v2 = sub_25C82DFBC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate, v2);
  v4 = *(v0 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata);

  v5 = *(v0 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName + 8);

  v6 = *(v0 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODCurareDataBoundary()
{
  result = qword_27FC16248;
  if (!qword_27FC16248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C802D4C()
{
  result = sub_25C82DFBC();
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

id sub_25C802DFC(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(a1 + 16) queryDataWithPredicate_];
  if (result)
  {
    v6 = result;
    sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
    v7 = sub_25C82E1DC();

    v29 = v3;
    if (v7 >> 62)
    {
      goto LABEL_32;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        v10 = v7 & 0xC000000000000001;
        v33 = v7 + 32;
        v34 = v7 & 0xFFFFFFFFFFFFFF8;
        v11 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
        v31 = v8;
        v32 = v7;
        v30 = v7 & 0xC000000000000001;
        while (1)
        {
          if (v10)
          {
            v12 = MEMORY[0x25F88F6D0](v9, v7);
            v13 = __OFADD__(v9++, 1);
            if (v13)
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v9 >= *(v34 + 16))
            {
              goto LABEL_31;
            }

            v12 = *(v33 + 8 * v9);
            v13 = __OFADD__(v9++, 1);
            if (v13)
            {
              goto LABEL_30;
            }
          }

          v35 = v12;
          v14 = [v12 v11[77]];
          if (v14)
          {
            break;
          }

LABEL_6:

          if (v9 == v8)
          {
          }
        }

        v15 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
        v16 = sub_25C82E1DC();

        if (*(v16 + 16) != 1)
        {
          break;
        }

        v17 = *(v16 + 32);

        v18 = sub_25C8030EC(v17);

        v19 = 0;
        v20 = 1 << *(v18 + 32);
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v18 + 64);
        v7 = (v20 + 63) >> 6;
        if (v22)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v23 >= v7)
          {

            v8 = v31;
            v7 = v32;
            v10 = v30;
            v11 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
            goto LABEL_6;
          }

          v22 = *(v18 + 64 + 8 * v23);
          ++v19;
          if (v22)
          {
            v19 = v23;
            do
            {
LABEL_23:
              v24 = *(*(v18 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v22)))));
              v25 = type metadata accessor for ODCurareDataBoundary();
              v26 = *(v25 + 48);
              v27 = *(v25 + 52);
              swift_allocObject();

              sub_25C8021E8(v28);
              MEMORY[0x25F88F4D0]();
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25C82E1EC();
              }

              v22 &= v22 - 1;
              sub_25C82E20C();
            }

            while (v22);
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v8 = sub_25C82E43C();
        if (!v8)
        {
        }
      }

      goto LABEL_6;
    }
  }

  return result;
}

unint64_t sub_25C8030EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16280, &unk_25C8308F8);
    v2 = sub_25C82E49C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v16 = v15 | (v14 << 6);
        sub_25C8077A8(*(a1 + 48) + 40 * v16, &v34);
        sub_25C7E9854(*(a1 + 56) + 32 * v16, v36 + 8);
        v32[0] = v36[0];
        v32[1] = v36[1];
        v33 = v37;
        v30 = v34;
        v31 = v35;
        v25[2] = v34;
        v25[3] = v35;
        v26 = *&v36[0];
        swift_dynamicCast();
        sub_25C801F34((v32 + 8), v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
        swift_dynamicCast();
        v17 = v28;
        v18 = v29;
        v19 = v27;
        result = sub_25C8139BC(v28, v29);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v18;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v19;

          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v18;
          *(v2[7] + 8 * result) = v19;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_25C803374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
    v2 = sub_25C82E49C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        sub_25C8077A8(*(a1 + 48) + 40 * v15, v29);
        sub_25C7E9854(*(a1 + 56) + 32 * v15, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[2] = v29[0];
        v26[3] = v29[1];
        swift_dynamicCast();
        sub_25C801F34((v27 + 8), v23);
        sub_25C801F34(v23, v25);
        sub_25C801F34(v25, v26);
        sub_25C801F34(v26, &v24);
        result = sub_25C8139BC(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_25C801F34(&v24, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          result = sub_25C801F34(&v24, (v2[7] + 32 * result));
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_25C803604(uint64_t a1)
{
  v21 = a1;
  v20 = sub_25C82DFBC();
  v1 = *(v20 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v20);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25C803FE0();
  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    return;
  }

LABEL_21:
  v7 = sub_25C82E43C();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v16 = v6 & 0xFFFFFFFFFFFFFF8;
  v17 = v7;
  v18 = v1 + 1;
  v19 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v19)
    {
      MEMORY[0x25F88F6D0](v8, v6);
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 >= *(v16 + 16))
      {
        goto LABEL_20;
      }

      v10 = *(v6 + 8 * v8 + 32);

      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    if (qword_27FC15E28 != -1)
    {
      swift_once();
    }

    v11 = qword_27FC16890;
    v12 = sub_25C82DF4C();
    v13 = [v11 stringFromDate_];

    if (!v13)
    {
      sub_25C82E0AC();
      v13 = sub_25C82E07C();
    }

    v1 = qword_27FC16890;
    v14 = [v1 dateFromString_];

    if (!v14)
    {
      break;
    }

    sub_25C82DF8C();

    v15 = sub_25C82DF7C();
    (*v18)(v4, v20);
    if ((v15 & 1) == 0)
    {

      ++v8;
      if (v9 != v17)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  __break(1u);
}

BOOL sub_25C8038B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-4] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C803604(a1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate);
  v10 = v9;
  if (v9)
  {
  }

  else
  {
    v11 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v12 = swift_allocObject();
    v19 = xmmword_25C830640;
    *(v12 + 16) = xmmword_25C830640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    inited = swift_initStackObject();
    *(inited + 16) = v19;
    strcpy(v20, "boundaryInfo");
    HIBYTE(v20[6]) = 0;
    v20[7] = -5120;
    sub_25C82E35C();
    v14 = sub_25C802778();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
    *(inited + 72) = v14;
    v15 = sub_25C8009E0(inited);
    swift_setDeallocating();
    sub_25C7E97F4(inited + 32, &qword_27FC161A8, &unk_25C8307A0);
    *(v12 + 32) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v16 = sub_25C82E1BC();

    sub_25C82DFAC();
    v17 = sub_25C82DF4C();
    (*(v5 + 8))(v8, v4);
    [v11 saveDictionaries:v16 date:v17 eventIdentifier:0];

    sub_25C827FD8(v11, *(v2 + 24));
  }

  return v10 == 0;
}

unint64_t sub_25C803B24(void *a1)
{
  v2 = sub_25C82DFBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  result = sub_25C803FE0();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_22:

    v29 = a1;

    if (!a1[2])
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v31 = result;
  v32 = sub_25C82E43C();
  result = v31;
  if (v32 < 1)
  {
    goto LABEL_22;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x25F88F6D0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v53 = *(result + 32);
  }

  v17 = a1[2];
  if (v17)
  {
    v43 = v10;
    v44 = v7;
    v52 = OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate;
    v45 = v3;
    v20 = *(v3 + 16);
    v19 = v3 + 16;
    v18 = v20;
    v47 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v21 = a1 + v47;
    v22 = *(v19 + 56);
    v23 = (v19 - 8);
    v46 = (v19 + 16);
    v49 = v2;
    v50 = MEMORY[0x277D84F90];
    v48 = v13;
    v51 = v20;
    v20(v15, v21, v2);
    while (1)
    {
      if (sub_25C82DF9C() == -1)
      {
        v18(v13, v15, v2);
        v24 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_25C7E6D74(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_25C7E6D74(v25 > 1, v26 + 1, 1, v24);
        }

        v27 = v49;
        (*v23)(v15, v49);
        v50 = v24;
        v24[2] = v26 + 1;
        v28 = v24 + v47 + v26 * v22;
        v2 = v27;
        v13 = v48;
        (*v46)(v28, v48, v2);
      }

      else
      {
        (*v23)(v15, v2);
      }

      v21 += v22;
      --v17;
      v18 = v51;
      if (!v17)
      {
        break;
      }

      v51(v15, v21, v2);
    }

    v7 = v44;
    v3 = v45;
    v10 = v43;
    v29 = v50;
    if (!v50[2])
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v29 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_20:

    return 0;
  }

LABEL_23:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_25C7E916C(v29);
  }

  v33 = v29[2];
  v34 = v29 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v54[0] = v34;
  v54[1] = v33;
  result = sub_25C80514C(v54);
  v35 = v29[2];
  if (v35)
  {
    v36 = *(v3 + 16);
    v36(v10, v34, v2);
    v36(v7, v34 + *(v3 + 72) * (v35 - 1), v2);
    v37 = type metadata accessor for ODCurareDataBoundary();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v30 = swift_allocObject();
    *(v30 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = 0;
    v40 = (v30 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
    *v40 = 0;
    v40[1] = 0;
    *(v30 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = 2;
    v41 = (v30 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
    *v41 = 0;
    v41[1] = 0;
    v42 = *(v3 + 32);
    v42(v30 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_startDate, v10, v2);
    v42(v30 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate, v7, v2);

    return v30;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_25C803FE0()
{
  v4 = MEMORY[0x277D84F90];
  v1 = objc_autoreleasePoolPush();
  sub_25C802DFC(v0, 0, &v4);
  objc_autoreleasePoolPop(v1);

  v4 = sub_25C807248(v2, sub_25C807484);
  sub_25C8020EC(&v4);

  return v4;
}

uint64_t sub_25C804090()
{

  return swift_deallocClassInstance();
}

void *sub_25C8040F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16268, &qword_25C8308D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double sub_25C80417C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25C8139BC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C804A20();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_25C801F34((*(v12 + 56) + 32 * v9), a3);
    sub_25C804220(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25C804220(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C82E32C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25C82E57C();

      sub_25C82E10C();
      v14 = sub_25C82E59C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25C8043D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C82E32C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25C82E57C();

      sub_25C82E10C();
      v13 = sub_25C82E59C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25C804580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16240, qword_25C830800);
  v2 = *v0;
  v3 = sub_25C82E46C();
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

void *sub_25C80470C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16210, &qword_25C8307E8);
  v2 = *v0;
  v3 = sub_25C82E46C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_25C804884()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16230, &unk_25C8307F0);
  v2 = *v0;
  v3 = sub_25C82E46C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_25C804A20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
  v2 = *v0;
  v3 = sub_25C82E46C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25C7E9854(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25C801F34(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25C804BD8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25C82E46C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}