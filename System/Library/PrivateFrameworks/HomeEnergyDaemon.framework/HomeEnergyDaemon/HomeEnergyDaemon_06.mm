uint64_t sub_22B1BB5C0()
{
  v394 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  *(v0 + 968) = v1;
  v3 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 640), *(v0 + 784), *(v0 + 576));
  v4 = sub_22B36048C();
  v5 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v6 = *(v0 + 704);
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v4, v5, v8, "End: Get Unique Meter IDs", "", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 808);
  v10 = *(v0 + 640);
  v11 = *(v0 + 584);
  v12 = *(v0 + 576);

  v9(v10, v12);
  if (!v1)
  {
    goto LABEL_8;
  }

  v13 = v1[2];
  *(v0 + 976) = v13;
  if (v13 < 2)
  {

LABEL_8:
    v38 = *(v0 + 896);
    v39 = *(v0 + 720);
    v40 = *(v0 + 568);
    v41 = *(v0 + 528);
    v42 = *(v0 + 384);
    (*(v0 + 888))(*(v0 + 464), *(v0 + 880), *(v0 + 424));
    sub_22B1CA1F0(v40, v41, type metadata accessor for CDUsagePointRecords);

    v43 = v42;
    v44 = sub_22B36050C();
    v45 = sub_22B360D2C();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 904);
    if (v46)
    {
      v48 = *(v0 + 720);
      v387 = v2;
      v49 = *(v0 + 712);
      v50 = *(v0 + 528);
      v380 = *(v0 + 464);
      v51 = *(v0 + 384);
      v366 = *(v0 + 432) + 8;
      v373 = *(v0 + 424);
      v362 = *(v0 + 904);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v393[0] = v53;
      *v52 = 136446722;
      *(v52 + 4) = sub_22B1A7B20(v49, v48, v393);
      *(v52 + 12) = 2082;
      v54 = *(v50 + 16);
      v55 = *(v50 + 24);

      sub_22B1CA258(v50, type metadata accessor for CDUsagePointRecords);
      v56 = sub_22B1A7B20(v54, v55, v393);
      v2 = v387;

      *(v52 + 14) = v56;
      *(v52 + 22) = 2082;
      v57 = sub_22B35F3AC();
      v59 = sub_22B1A7B20(v57, v58, v393);

      *(v52 + 24) = v59;
      _os_log_impl(&dword_22B116000, v44, v45, "[AMIProcessor] Meter count not greater than 1 for %{public}s with usagePoint %{public}s at %{public}s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v53, -1, -1);
      MEMORY[0x23188F650](v52, -1, -1);

      v362(v380, v373);
    }

    else
    {
      v60 = *(v0 + 528);
      v61 = *(v0 + 464);
      v62 = *(v0 + 424);
      v63 = *(v0 + 432);

      sub_22B1CA258(v60, type metadata accessor for CDUsagePointRecords);
      v47(v61, v62);
    }

    goto LABEL_11;
  }

  v14 = *(v0 + 896);
  v15 = *(v0 + 720);
  v16 = *(v0 + 568);
  v17 = *(v0 + 560);
  v18 = *(v0 + 384);
  (*(v0 + 888))(*(v0 + 504), *(v0 + 880), *(v0 + 424));
  sub_22B1CA1F0(v16, v17, type metadata accessor for CDUsagePointRecords);

  v19 = v18;
  v20 = sub_22B36050C();
  v21 = sub_22B360D2C();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 904);
  if (v22)
  {
    v386 = v2;
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v26 = *(v0 + 560);
    v379 = *(v0 + 504);
    v27 = *(v0 + 384);
    v365 = *(v0 + 432) + 8;
    v372 = *(v0 + 424);
    v361 = *(v0 + 904);
    v28 = swift_slowAlloc();
    v359 = swift_slowAlloc();
    v393[0] = v359;
    *v28 = 134219010;
    *(v28 + 4) = v1[2];

    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_22B1A7B20(v25, v24, v393);
    *(v28 + 22) = 2082;
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);

    sub_22B1CA258(v26, type metadata accessor for CDUsagePointRecords);
    v31 = sub_22B1A7B20(v29, v30, v393);
    v2 = v386;

    *(v28 + 24) = v31;
    *(v28 + 32) = 2082;
    v32 = sub_22B35F3AC();
    v34 = sub_22B1A7B20(v32, v33, v393);

    *(v28 + 34) = v34;
    *(v28 + 42) = 2080;
    v35 = MEMORY[0x23188E390](v1, MEMORY[0x277D837D0]);
    v37 = sub_22B1A7B20(v35, v36, v393);

    *(v28 + 44) = v37;
    _os_log_impl(&dword_22B116000, v20, v21, "[AMIProcessor] Meter count %ld for %{public}s with usagePoint %{public}s at %{public}s Meters: %s", v28, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v359, -1, -1);
    MEMORY[0x23188F650](v28, -1, -1);

    v361(v379, v372);
  }

  else
  {
    v166 = *(v0 + 560);
    v167 = *(v0 + 504);
    v168 = *(v0 + 424);
    v169 = *(v0 + 432);

    sub_22B1CA258(v166, type metadata accessor for CDUsagePointRecords);
    v23(v167, v168);
  }

  v170 = MEMORY[0x277D84FA0];
  *(v0 + 368) = MEMORY[0x277D84FA0];
  v171 = v1[2];
  *(v0 + 984) = v171;
  if (v171)
  {
    *(v0 + 1000) = 0;
    *(v0 + 992) = v2;
    v172 = *(v0 + 968);
    if (v172[2])
    {
      v173 = *(v0 + 800);
      v174 = *(v0 + 792);
      v175 = *(v0 + 784);
      v176 = *(v0 + 632);
      v177 = *(v0 + 576);
      *(v0 + 1008) = v172[4];
      *(v0 + 1016) = v172[5];
      v174(v176, v175, v177);

      v178 = sub_22B36048C();
      v179 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v180 = *(v0 + 704);
        v181 = swift_slowAlloc();
        *v181 = 0;
        v182 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v178, v179, v182, "Start: Has Meter Imported", "", v181, 2u);
        MEMORY[0x23188F650](v181, -1, -1);
      }

      v183 = *(v0 + 840);
      v184 = *(v0 + 808);
      v185 = *(v0 + 632);
      v186 = *(v0 + 584);
      v187 = *(v0 + 576);
      v188 = *(v0 + 384);

      v184(v185, v187);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v189;
      v164 = sub_22B1BD400;
      v165 = v183;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_91;
  }

  if (*(v170 + 16) == *(v0 + 976))
  {
    v389 = v2;
    v190 = *(v0 + 896);
    v191 = *(v0 + 888);
    v192 = *(v0 + 880);
    v193 = *(v0 + 720);
    v194 = *(v0 + 568);
    v195 = *(v0 + 536);
    v196 = *(v0 + 472);
    v197 = *(v0 + 424);
    v198 = *(v0 + 384);

    v191(v196, v192, v197);
    sub_22B1CA1F0(v194, v195, type metadata accessor for CDUsagePointRecords);

    v199 = v198;
    v200 = sub_22B36050C();
    v201 = sub_22B360D2C();

    v202 = os_log_type_enabled(v200, v201);
    v203 = *(v0 + 904);
    if (v202)
    {
      v204 = *(v0 + 720);
      v205 = *(v0 + 712);
      v206 = *(v0 + 536);
      v382 = *(v0 + 472);
      v207 = *(v0 + 384);
      v368 = *(v0 + 432) + 8;
      v375 = *(v0 + 424);
      v363 = *(v0 + 904);
      v208 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      v393[0] = v209;
      *v208 = 136446722;
      *(v208 + 4) = sub_22B1A7B20(v205, v204, v393);
      *(v208 + 12) = 2082;
      v210 = *(v206 + 16);
      v211 = *(v206 + 24);

      sub_22B1CA258(v206, type metadata accessor for CDUsagePointRecords);
      v212 = sub_22B1A7B20(v210, v211, v393);

      *(v208 + 14) = v212;
      *(v208 + 22) = 2082;
      v213 = sub_22B35F3AC();
      v215 = sub_22B1A7B20(v213, v214, v393);

      *(v208 + 24) = v215;
      _os_log_impl(&dword_22B116000, v200, v201, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v208, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v209, -1, -1);
      MEMORY[0x23188F650](v208, -1, -1);

      v363(v382, v375);
    }

    else
    {
      v332 = *(v0 + 536);
      v333 = *(v0 + 472);
      v334 = *(v0 + 424);
      v335 = *(v0 + 432);

      sub_22B1CA258(v332, type metadata accessor for CDUsagePointRecords);
      v203(v333, v334);
    }

    v2 = v389;
  }

  else
  {
    sub_22B24883C(MEMORY[0x277D84FA0]);
  }

LABEL_11:
  v64 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
  v65 = sub_22B36048C();
  v66 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v67 = *(v0 + 704);
    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v65, v66, v69, "End: Processing UsagePoint", "", v68, 2u);
    MEMORY[0x23188F650](v68, -1, -1);
  }

  v70 = *(v0 + 832);
  v71 = *(v0 + 816);
  v72 = *(v0 + 808);
  v73 = *(v0 + 616);
  v74 = *(v0 + 584);
  v75 = *(v0 + 576);
  v76 = *(v0 + 568);

  v72(v73, v75);
  sub_22B1CA258(v76, type metadata accessor for CDUsagePointRecords);
  if (v70 + 1 != v71)
  {
    v131 = *(v0 + 832) + 1;
    *(v0 + 832) = v131;
    *(v0 + 824) = v2;
    v132 = *(v0 + 768);
    if (v131 >= *(v132 + 16))
    {
      __break(1u);
    }

    else
    {
      v133 = *(v0 + 800);
      v134 = *(v0 + 792);
      v135 = *(v0 + 784);
      v136 = *(v0 + 656);
      v137 = *(v0 + 576);
      sub_22B1CA1F0(v132 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v131, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v134(v136, v135, v137);
      v138 = sub_22B36048C();
      v139 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v140 = *(v0 + 704);
        v141 = swift_slowAlloc();
        *v141 = 0;
        v142 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v138, v139, v142, "Start: Processing UsagePoint", "", v141, 2u);
        MEMORY[0x23188F650](v141, -1, -1);
      }

      v143 = *(v0 + 808);
      v144 = *(v0 + 800);
      v145 = *(v0 + 792);
      v146 = *(v0 + 784);
      v147 = *(v0 + 656);
      v148 = *(v0 + 648);
      v149 = *(v0 + 584);
      v150 = *(v0 + 576);

      v143(v147, v150);
      v145(v148, v146, v150);
      v151 = sub_22B36048C();
      v152 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v153 = *(v0 + 704);
        v154 = swift_slowAlloc();
        *v154 = 0;
        v155 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v151, v152, v155, "Start: Get Unique Meter IDs", "", v154, 2u);
        MEMORY[0x23188F650](v154, -1, -1);
      }

      v156 = *(v0 + 808);
      v157 = *(v0 + 648);
      v158 = *(v0 + 584);
      v159 = *(v0 + 576);

      v156(v157, v159);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_31;
      }
    }

    swift_once();
LABEL_31:
    v160 = *(v0 + 568);
    v161 = *(v0 + 384);
    v162 = qword_28140BCF8;
    *(v0 + 840) = qword_28140BCF8;
    *(v0 + 848) = *(v160 + 16);
    *(v0 + 856) = *(v160 + 24);
    *(v0 + 864) = sub_22B35F04C();
    *(v0 + 872) = v163;
    v164 = sub_22B1B98F8;
    v165 = v162;
LABEL_38:

    return MEMORY[0x2822009F8](v164, v165, 0);
  }

  v77 = *(v0 + 768);
  v78 = *(v0 + 736);

  v79 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
  v80 = sub_22B36048C();
  v81 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v82 = *(v0 + 704);
    v83 = swift_slowAlloc();
    *v83 = 0;
    v84 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v80, v81, v84, "End: Loop UsagePoints", "", v83, 2u);
    MEMORY[0x23188F650](v83, -1, -1);
  }

  v85 = *(v0 + 808);
  v86 = *(v0 + 800);
  v87 = *(v0 + 792);
  v88 = *(v0 + 784);
  v89 = *(v0 + 608);
  v90 = *(v0 + 600);
  v91 = *(v0 + 584);
  v92 = *(v0 + 576);

  v85(v89, v92);
  v87(v90, v88, v92);
  v93 = sub_22B36048C();
  v94 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v95 = *(v0 + 704);
    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v93, v94, v97, "Start: Compare Meters", "", v96, 2u);
    MEMORY[0x23188F650](v96, -1, -1);
  }

  v98 = *(v0 + 808);
  v99 = *(v0 + 600);
  v100 = *(v0 + 584);
  v101 = *(v0 + 576);
  v102 = *(v0 + 384);

  v98(v99, v101);
  v103 = sub_22B35F18C();
  if (!v103)
  {
LABEL_46:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v216 = *(v0 + 720);
    v218 = *(v0 + 432);
    v217 = *(v0 + 440);
    v219 = *(v0 + 424);
    v220 = *(v0 + 384);
    v221 = __swift_project_value_buffer(v219, qword_28140BD10);
    swift_beginAccess();
    (*(v218 + 16))(v217, v221, v219);

    v222 = v220;
    v223 = sub_22B36050C();
    v224 = sub_22B360D2C();

    v225 = os_log_type_enabled(v223, v224);
    v226 = *(v0 + 720);
    if (v225)
    {
      v227 = *(v0 + 712);
      v390 = *(v0 + 440);
      v376 = *(v0 + 432);
      v383 = *(v0 + 424);
      v369 = *(v0 + 384);
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v393[0] = v229;
      *v228 = 136315650;
      swift_beginAccess();
      v230 = *(v0 + 360);

      v231 = sub_22B360C5C();
      v233 = v232;

      v234 = sub_22B1A7B20(v231, v233, v393);

      *(v228 + 4) = v234;
      *(v228 + 12) = 2082;
      v235 = sub_22B1A7B20(v227, v226, v393);

      *(v228 + 14) = v235;
      *(v228 + 22) = 2082;
      v236 = sub_22B35F3AC();
      v238 = sub_22B1A7B20(v236, v237, v393);

      *(v228 + 24) = v238;
      _os_log_impl(&dword_22B116000, v223, v224, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v228, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v229, -1, -1);
      MEMORY[0x23188F650](v228, -1, -1);

      (*(v376 + 8))(v390, v383);
    }

    else
    {
      v240 = *(v0 + 432);
      v239 = *(v0 + 440);
      v241 = *(v0 + 424);

      (*(v240 + 8))(v239, v241);
    }

    if (*(v0 + 1141) != 1)
    {
      goto LABEL_69;
    }

    swift_beginAccess();
    v242 = *(v0 + 360);
    v243 = *(v242 + 16);
    if (v243)
    {
      v1 = sub_22B32DCA4(*(v242 + 16), 0);
      v244 = sub_22B24FA90(v393, v1 + 4, v243, v242);

      sub_22B1A20B8();
      if (v244 != v243)
      {
        __break(1u);
        goto LABEL_55;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    *(v0 + 1104) = v1;
    if (qword_28140B470 == -1)
    {
LABEL_62:
      v267 = *(v0 + 384);
      v268 = sub_22B35F3AC();
      v270 = v269;
      *(v0 + 1112) = v269;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B3634B0;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x800000022B36C000;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(inited + 48) = v1;

      v272 = sub_22B321AAC(inited);
      *(v0 + 1120) = v272;
      swift_setDeallocating();
      sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v273 = swift_task_alloc();
      *(v0 + 1128) = v273;
      *v273 = v0;
      v273[1] = sub_22B1C3080;
      v274 = v268;
      v275 = v270;
      v276 = v272;
LABEL_85:

      return sub_22B2244D0(v274, v275, v276);
    }

LABEL_91:
    swift_once();
    goto LABEL_62;
  }

  v104 = v103;
  if (!*(v103 + 16))
  {

    goto LABEL_46;
  }

  v106 = sub_22B31A80C(v105);

  v1 = *(v0 + 360);

  v108 = sub_22B1C3A84(v107, v106);

  if (v108)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v109 = *(v0 + 720);
    v110 = *(v0 + 456);
    v111 = *(v0 + 424);
    v112 = *(v0 + 432);
    v113 = *(v0 + 384);
    v114 = __swift_project_value_buffer(v111, qword_28140BD10);
    swift_beginAccess();
    (*(v112 + 16))(v110, v114, v111);

    v115 = v113;

    v116 = sub_22B36050C();
    v117 = sub_22B360D2C();

    v118 = os_log_type_enabled(v116, v117);
    v119 = *(v0 + 720);
    if (v118)
    {
      v120 = *(v0 + 712);
      v388 = *(v0 + 456);
      v374 = *(v0 + 432);
      v381 = *(v0 + 424);
      v367 = *(v0 + 384);
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v393[0] = v122;
      *v121 = 136315650;
      v123 = MEMORY[0x23188E390](v104, MEMORY[0x277D837D0]);
      v125 = v124;

      v126 = sub_22B1A7B20(v123, v125, v393);

      *(v121 + 4) = v126;
      *(v121 + 12) = 2082;
      v127 = sub_22B1A7B20(v120, v119, v393);

      *(v121 + 14) = v127;
      *(v121 + 22) = 2082;
      v128 = sub_22B35F3AC();
      v130 = sub_22B1A7B20(v128, v129, v393);

      *(v121 + 24) = v130;
      _os_log_impl(&dword_22B116000, v116, v117, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v121, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v122, -1, -1);
      MEMORY[0x23188F650](v121, -1, -1);

      (*(v374 + 8))(v388, v381);
    }

    else
    {
      v277 = *(v0 + 456);
      v278 = *(v0 + 424);
      v279 = *(v0 + 432);

      (*(v279 + 8))(v277, v278);
    }

    goto LABEL_69;
  }

LABEL_55:

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v245 = *(v0 + 720);
  v246 = *(v0 + 448);
  v247 = *(v0 + 424);
  v248 = *(v0 + 432);
  v249 = *(v0 + 384);
  v250 = __swift_project_value_buffer(v247, qword_28140BD10);
  swift_beginAccess();
  (*(v248 + 16))(v246, v250, v247);

  v251 = v249;
  v252 = sub_22B36050C();
  v253 = sub_22B360D2C();

  v254 = os_log_type_enabled(v252, v253);
  v255 = *(v0 + 720);
  if (v254)
  {
    v256 = *(v0 + 712);
    v391 = *(v0 + 448);
    v377 = *(v0 + 432);
    v384 = *(v0 + 424);
    v370 = *(v0 + 384);
    v257 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v393[0] = v258;
    *v257 = 136315650;

    v259 = sub_22B360C5C();
    v261 = v260;

    v262 = sub_22B1A7B20(v259, v261, v393);

    *(v257 + 4) = v262;
    *(v257 + 12) = 2082;
    v263 = sub_22B1A7B20(v256, v255, v393);

    *(v257 + 14) = v263;
    *(v257 + 22) = 2082;
    v264 = sub_22B35F3AC();
    v266 = sub_22B1A7B20(v264, v265, v393);

    *(v257 + 24) = v266;
    _os_log_impl(&dword_22B116000, v252, v253, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v257, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v258, -1, -1);
    MEMORY[0x23188F650](v257, -1, -1);

    (*(v377 + 8))(v391, v384);
  }

  else
  {
    v280 = *(v0 + 448);
    v281 = *(v0 + 424);
    v282 = *(v0 + 432);

    (*(v282 + 8))(v280, v281);
  }

  if (*(v0 + 1141) != 1)
  {
    goto LABEL_69;
  }

  v283 = v1[2];
  if (!v283)
  {
    v284 = MEMORY[0x277D84F90];
    goto LABEL_82;
  }

  v284 = sub_22B32DCA4(v1[2], 0);
  v285 = sub_22B24FA90(v393, v284 + 4, v283, v1);

  sub_22B1A20B8();
  if (v285 == v283)
  {
LABEL_82:
    *(v0 + 1072) = v284;
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v336 = *(v0 + 384);
    v337 = sub_22B35F3AC();
    v339 = v338;
    *(v0 + 1080) = v338;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v340 = swift_initStackObject();
    *(v340 + 16) = xmmword_22B3634B0;
    *(v340 + 32) = 0xD000000000000010;
    *(v340 + 40) = 0x800000022B36C000;
    *(v340 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    *(v340 + 48) = v284;

    v341 = sub_22B321AAC(v340);
    *(v0 + 1088) = v341;
    swift_setDeallocating();
    sub_22B123284(v340 + 32, &unk_27D8BAD00, &qword_22B3656C0);
    v342 = swift_task_alloc();
    *(v0 + 1096) = v342;
    *v342 = v0;
    v342[1] = sub_22B1C29E4;
    v274 = v337;
    v275 = v339;
    v276 = v341;
    goto LABEL_85;
  }

  __break(1u);
LABEL_69:
  v286 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
  v287 = sub_22B36048C();
  v288 = sub_22B360E3C();
  v289 = sub_22B360FDC();
  v290 = *(v0 + 808);
  if (v289)
  {
    v291 = *(v0 + 704);
    v292 = *(v0 + 592);
    v293 = *(v0 + 584);
    v294 = *(v0 + 576);
    v295 = swift_slowAlloc();
    *v295 = 0;
    v296 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v287, v288, v296, "End: Compare Meters", "", v295, 2u);
    MEMORY[0x23188F650](v295, -1, -1);

    v297 = v292;
    v298 = v294;
  }

  else
  {
    v299 = *(v0 + 592);
    v300 = *(v0 + 584);
    v301 = *(v0 + 576);

    v297 = v299;
    v298 = v301;
  }

  v290(v297, v298);
  v302 = *(v0 + 752);
  v303 = *(v0 + 688);
  v304 = *(v0 + 392) + *(v0 + 744);
  v305 = sub_22B36048C();
  sub_22B3604CC();
  v306 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v307 = *(v0 + 752);
    v309 = *(v0 + 408);
    v308 = *(v0 + 416);
    v310 = *(v0 + 400);

    sub_22B3604FC();

    if ((*(v309 + 88))(v308, v310) == *MEMORY[0x277D85B00])
    {
      v311 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
      v311 = "";
    }

    v312 = *(v0 + 688);
    v313 = swift_slowAlloc();
    *v313 = 0;
    v314 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v305, v306, v314, "FindGenerationMeters", v311, v313, 2u);
    MEMORY[0x23188F650](v313, -1, -1);
  }

  v315 = *(v0 + 752);
  v316 = *(v0 + 704);
  v317 = *(v0 + 688);
  v318 = *(v0 + 680);
  v319 = *(v0 + 672);

  v320 = *(v318 + 8);
  v320(v317, v319);
  v320(v316, v319);
  swift_beginAccess();
  v392 = *(v0 + 360);
  v321 = *(v0 + 704);
  v322 = *(v0 + 696);
  v323 = *(v0 + 688);
  v324 = *(v0 + 664);
  v325 = *(v0 + 656);
  v326 = *(v0 + 648);
  v327 = *(v0 + 640);
  v328 = *(v0 + 632);
  v329 = *(v0 + 624);
  v330 = *(v0 + 616);
  v344 = *(v0 + 608);
  v345 = *(v0 + 600);
  v346 = *(v0 + 592);
  v347 = *(v0 + 568);
  v348 = *(v0 + 560);
  v349 = *(v0 + 552);
  v350 = *(v0 + 544);
  v351 = *(v0 + 536);
  v352 = *(v0 + 528);
  v353 = *(v0 + 512);
  v354 = *(v0 + 504);
  v355 = *(v0 + 496);
  v356 = *(v0 + 488);
  v357 = *(v0 + 480);
  v358 = *(v0 + 472);
  v360 = *(v0 + 464);
  v364 = *(v0 + 456);
  v371 = *(v0 + 448);
  v378 = *(v0 + 440);
  v385 = *(v0 + 416);

  v331 = *(v0 + 8);

  return v331(v392);
}

uint64_t sub_22B1BD400()
{
  v33 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v0 + 896);
  v3 = *(v0 + 720);
  (*(v0 + 888))(*(v0 + 496), *(v0 + 880), *(v0 + 424));

  v4 = sub_22B36050C();
  v5 = sub_22B360D2C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1016);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 720);
    v9 = *(v0 + 712);
    v30 = *(v0 + 496);
    v31 = *(v0 + 904);
    v10 = *(v0 + 424);
    v29 = *(v0 + 432) + 8;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315395;
    *(v11 + 4) = sub_22B1A7B20(v7, v6, &v32);
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_22B1A7B20(v9, v8, &v32);
    _os_log_impl(&dword_22B116000, v4, v5, "Check if meter %s has ever imported for %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v12, -1, -1);
    MEMORY[0x23188F650](v11, -1, -1);

    v31(v30, v10);
  }

  else
  {
    v13 = *(v0 + 904);
    v14 = *(v0 + 496);
    v15 = *(v0 + 424);
    v16 = *(v0 + 432);

    v13(v14, v15);
  }

  v17 = *(v0 + 840);
  v18 = v17[14];
  *(v0 + 1040) = v18;
  v19 = v17[15];
  *(v0 + 1048) = v19;
  if (v18)
  {
    v20 = v17[16];
    *(v0 + 1056) = v20;
    if (v20)
    {
      sub_22B1231A0(v18, v19);
      v21 = v20;
      v22 = sub_22B1BD68C;
      goto LABEL_10;
    }

    v26 = *(v0 + 1032);
    v27 = *(v0 + 1016);

    v25 = sub_22B1CA340;
  }

  else
  {
    v23 = *(v0 + 1032);
    v24 = *(v0 + 1016);

    v25 = sub_22B1BD828;
  }

  v22 = v25;
LABEL_10:

  return MEMORY[0x2822009F8](v22, 0, 0);
}

uint64_t sub_22B1BD68C()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 992);
  v18 = *(v0 + 848);
  v19 = *(v0 + 1024);
  v16 = *(v0 + 712);
  v17 = *(v0 + 728);
  v15 = *(v0 + 1040);
  v5 = MEMORY[0x23188EEB0]();
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  *(v6 + 24) = v15;
  *(v6 + 40) = v16;
  *(v6 + 56) = v17;
  *(v6 + 72) = v19;
  *(v6 + 88) = v18;
  *(v6 + 104) = v3;
  *(v6 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA628, &qword_22B3656C8);
  sub_22B360E7C();
  *(v0 + 1064) = v4;
  v7 = *(v0 + 1032);
  if (v4)
  {
    v8 = *(v0 + 1016);
    v9 = *(v0 + 840);

    objc_autoreleasePoolPop(v5);
    v10 = sub_22B1BF170;
    v11 = v9;
  }

  else
  {
    v12 = *(v0 + 840);
    v13 = *(v0 + 1032);

    objc_autoreleasePoolPop(v5);
    *(v0 + 1142) = *(v0 + 1140);
    v10 = sub_22B1C0B24;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_22B1BD828()
{
  v332 = v0;
  v1 = *(v0 + 992);
  v2 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 624), *(v0 + 784), *(v0 + 576));
  v3 = sub_22B36048C();
  v4 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v5 = *(v0 + 704);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v3, v4, v7, "End: Has Meter Imported", "", v6, 2u);
    MEMORY[0x23188F650](v6, -1, -1);
  }

  v8 = *(v0 + 1000);
  v9 = *(v0 + 984);
  v10 = *(v0 + 808);
  v11 = *(v0 + 624);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);

  v10(v11, v13);
  if (v8 + 1 == v9)
  {
    v14 = *(v0 + 968);

    v15 = *(v0 + 368);
    if (*(v15 + 16) == *(v0 + 976))
    {
      v326 = v1;
      v16 = *(v0 + 896);
      v17 = *(v0 + 888);
      v18 = *(v0 + 880);
      v19 = *(v0 + 720);
      v20 = *(v0 + 568);
      v21 = *(v0 + 536);
      v22 = *(v0 + 472);
      v23 = *(v0 + 424);
      v24 = *(v0 + 384);

      v17(v22, v18, v23);
      sub_22B1CA1F0(v20, v21, type metadata accessor for CDUsagePointRecords);

      v25 = v24;
      v26 = sub_22B36050C();
      v27 = sub_22B360D2C();

      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 904);
      if (v28)
      {
        v30 = *(v0 + 720);
        v31 = *(v0 + 712);
        v32 = *(v0 + 536);
        v321 = *(v0 + 472);
        v33 = *(v0 + 384);
        v311 = *(v0 + 432) + 8;
        v316 = *(v0 + 424);
        v309 = *(v0 + 904);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v331[0] = v35;
        *v34 = 136446722;
        *(v34 + 4) = sub_22B1A7B20(v31, v30, v331);
        *(v34 + 12) = 2082;
        v36 = *(v32 + 16);
        v37 = *(v32 + 24);

        sub_22B1CA258(v32, type metadata accessor for CDUsagePointRecords);
        v38 = sub_22B1A7B20(v36, v37, v331);

        *(v34 + 14) = v38;
        *(v34 + 22) = 2082;
        v39 = sub_22B35F3AC();
        v41 = sub_22B1A7B20(v39, v40, v331);

        *(v34 + 24) = v41;
        _os_log_impl(&dword_22B116000, v26, v27, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v34, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v35, -1, -1);
        MEMORY[0x23188F650](v34, -1, -1);

        v309(v321, v316);
      }

      else
      {
        v64 = *(v0 + 536);
        v65 = *(v0 + 472);
        v66 = *(v0 + 424);
        v67 = *(v0 + 432);

        sub_22B1CA258(v64, type metadata accessor for CDUsagePointRecords);
        v29(v65, v66);
      }

      v1 = v326;
    }

    else
    {
      sub_22B24883C(v15);
    }

    v68 = *(v0 + 800);
    (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
    v69 = sub_22B36048C();
    v70 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v71 = *(v0 + 704);
      v72 = swift_slowAlloc();
      *v72 = 0;
      v73 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v69, v70, v73, "End: Processing UsagePoint", "", v72, 2u);
      MEMORY[0x23188F650](v72, -1, -1);
    }

    v74 = *(v0 + 832);
    v75 = *(v0 + 816);
    v76 = *(v0 + 808);
    v77 = *(v0 + 616);
    v78 = *(v0 + 584);
    v79 = *(v0 + 576);
    v80 = *(v0 + 568);

    v76(v77, v79);
    sub_22B1CA258(v80, type metadata accessor for CDUsagePointRecords);
    if (v74 + 1 == v75)
    {
      v81 = *(v0 + 768);
      v82 = *(v0 + 736);

      v83 = *(v0 + 800);
      (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
      v84 = sub_22B36048C();
      v85 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v86 = *(v0 + 704);
        v87 = swift_slowAlloc();
        *v87 = 0;
        v88 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v84, v85, v88, "End: Loop UsagePoints", "", v87, 2u);
        MEMORY[0x23188F650](v87, -1, -1);
      }

      v89 = *(v0 + 808);
      v90 = *(v0 + 800);
      v91 = *(v0 + 792);
      v92 = *(v0 + 784);
      v93 = *(v0 + 608);
      v94 = *(v0 + 600);
      v95 = *(v0 + 584);
      v96 = *(v0 + 576);

      v89(v93, v96);
      v91(v94, v92, v96);
      v97 = sub_22B36048C();
      v98 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v99 = *(v0 + 704);
        v100 = swift_slowAlloc();
        *v100 = 0;
        v101 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v97, v98, v101, "Start: Compare Meters", "", v100, 2u);
        MEMORY[0x23188F650](v100, -1, -1);
      }

      v102 = *(v0 + 808);
      v103 = *(v0 + 600);
      v104 = *(v0 + 584);
      v105 = *(v0 + 576);
      v106 = *(v0 + 384);

      v102(v103, v105);
      v107 = sub_22B35F18C();
      if (v107)
      {
        v108 = v107;
        if (*(v107 + 16))
        {

          v110 = sub_22B31A80C(v109);

          v111 = *(v0 + 360);

          v113 = sub_22B1C3A84(v112, v110);

          if (v113)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v114 = *(v0 + 720);
            v115 = *(v0 + 456);
            v116 = *(v0 + 424);
            v117 = *(v0 + 432);
            v118 = *(v0 + 384);
            v119 = __swift_project_value_buffer(v116, qword_28140BD10);
            swift_beginAccess();
            (*(v117 + 16))(v115, v119, v116);

            v120 = v118;

            v121 = sub_22B36050C();
            v122 = sub_22B360D2C();

            v123 = os_log_type_enabled(v121, v122);
            v124 = *(v0 + 720);
            if (v123)
            {
              v125 = *(v0 + 712);
              v327 = *(v0 + 456);
              v317 = *(v0 + 432);
              v322 = *(v0 + 424);
              v312 = *(v0 + 384);
              v126 = swift_slowAlloc();
              v127 = swift_slowAlloc();
              v331[0] = v127;
              *v126 = 136315650;
              v128 = MEMORY[0x23188E390](v108, MEMORY[0x277D837D0]);
              v130 = v129;

              v131 = sub_22B1A7B20(v128, v130, v331);

              *(v126 + 4) = v131;
              *(v126 + 12) = 2082;
              v132 = sub_22B1A7B20(v125, v124, v331);

              *(v126 + 14) = v132;
              *(v126 + 22) = 2082;
              v133 = sub_22B35F3AC();
              v135 = sub_22B1A7B20(v133, v134, v331);

              *(v126 + 24) = v135;
              _os_log_impl(&dword_22B116000, v121, v122, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v126, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v127, -1, -1);
              MEMORY[0x23188F650](v126, -1, -1);

              (*(v317 + 8))(v327, v322);
            }

            else
            {
              v230 = *(v0 + 456);
              v231 = *(v0 + 424);
              v232 = *(v0 + 432);

              (*(v232 + 8))(v230, v231);
            }

            goto LABEL_62;
          }

          goto LABEL_48;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v169 = *(v0 + 720);
      v171 = *(v0 + 432);
      v170 = *(v0 + 440);
      v172 = *(v0 + 424);
      v173 = *(v0 + 384);
      v174 = __swift_project_value_buffer(v172, qword_28140BD10);
      swift_beginAccess();
      (*(v171 + 16))(v170, v174, v172);

      v175 = v173;
      v176 = sub_22B36050C();
      v177 = sub_22B360D2C();

      v178 = os_log_type_enabled(v176, v177);
      v179 = *(v0 + 720);
      if (v178)
      {
        v180 = *(v0 + 712);
        v328 = *(v0 + 440);
        v318 = *(v0 + 432);
        v323 = *(v0 + 424);
        v313 = *(v0 + 384);
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v331[0] = v182;
        *v181 = 136315650;
        swift_beginAccess();
        v183 = *(v0 + 360);

        v184 = sub_22B360C5C();
        v186 = v185;

        v187 = sub_22B1A7B20(v184, v186, v331);

        *(v181 + 4) = v187;
        *(v181 + 12) = 2082;
        v188 = sub_22B1A7B20(v180, v179, v331);

        *(v181 + 14) = v188;
        *(v181 + 22) = 2082;
        v189 = sub_22B35F3AC();
        v191 = sub_22B1A7B20(v189, v190, v331);

        *(v181 + 24) = v191;
        _os_log_impl(&dword_22B116000, v176, v177, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v181, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v182, -1, -1);
        MEMORY[0x23188F650](v181, -1, -1);

        (*(v318 + 8))(v328, v323);
      }

      else
      {
        v193 = *(v0 + 432);
        v192 = *(v0 + 440);
        v194 = *(v0 + 424);

        (*(v193 + 8))(v192, v194);
      }

      if (*(v0 + 1141) != 1)
      {
        goto LABEL_62;
      }

      swift_beginAccess();
      v195 = *(v0 + 360);
      v196 = *(v195 + 16);
      if (v196)
      {
        v111 = sub_22B32DCA4(*(v195 + 16), 0);
        v197 = sub_22B24FA90(v331, v111 + 4, v196, v195);

        sub_22B1A20B8();
        if (v197 != v196)
        {
          __break(1u);
LABEL_48:

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v198 = *(v0 + 720);
          v199 = *(v0 + 448);
          v200 = *(v0 + 424);
          v201 = *(v0 + 432);
          v202 = *(v0 + 384);
          v203 = __swift_project_value_buffer(v200, qword_28140BD10);
          swift_beginAccess();
          (*(v201 + 16))(v199, v203, v200);

          v204 = v202;
          v205 = sub_22B36050C();
          v206 = sub_22B360D2C();

          v207 = os_log_type_enabled(v205, v206);
          v208 = *(v0 + 720);
          if (v207)
          {
            v209 = *(v0 + 712);
            v329 = *(v0 + 448);
            v319 = *(v0 + 432);
            v324 = *(v0 + 424);
            v314 = *(v0 + 384);
            v210 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v331[0] = v211;
            *v210 = 136315650;

            v212 = sub_22B360C5C();
            v214 = v213;

            v215 = sub_22B1A7B20(v212, v214, v331);

            *(v210 + 4) = v215;
            *(v210 + 12) = 2082;
            v216 = sub_22B1A7B20(v209, v208, v331);

            *(v210 + 14) = v216;
            *(v210 + 22) = 2082;
            v217 = sub_22B35F3AC();
            v219 = sub_22B1A7B20(v217, v218, v331);

            *(v210 + 24) = v219;
            _os_log_impl(&dword_22B116000, v205, v206, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v210, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v211, -1, -1);
            MEMORY[0x23188F650](v210, -1, -1);

            (*(v319 + 8))(v329, v324);
          }

          else
          {
            v233 = *(v0 + 448);
            v234 = *(v0 + 424);
            v235 = *(v0 + 432);

            (*(v235 + 8))(v233, v234);
          }

          if (*(v0 + 1141) != 1)
          {
            goto LABEL_62;
          }

          v236 = v111[2];
          if (v236)
          {
            v237 = sub_22B32DCA4(v111[2], 0);
            v238 = sub_22B24FA90(v331, v237 + 4, v236, v111);

            sub_22B1A20B8();
            if (v238 != v236)
            {
              __break(1u);
LABEL_62:
              v239 = *(v0 + 800);
              (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
              v240 = sub_22B36048C();
              v241 = sub_22B360E3C();
              v242 = sub_22B360FDC();
              v243 = *(v0 + 808);
              if (v242)
              {
                v244 = *(v0 + 704);
                v245 = *(v0 + 592);
                v246 = *(v0 + 584);
                v247 = *(v0 + 576);
                v248 = swift_slowAlloc();
                *v248 = 0;
                v249 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v240, v241, v249, "End: Compare Meters", "", v248, 2u);
                MEMORY[0x23188F650](v248, -1, -1);

                v250 = v245;
                v251 = v247;
              }

              else
              {
                v252 = *(v0 + 592);
                v253 = *(v0 + 584);
                v254 = *(v0 + 576);

                v250 = v252;
                v251 = v254;
              }

              v243(v250, v251);
              v255 = *(v0 + 752);
              v256 = *(v0 + 688);
              v257 = *(v0 + 392) + *(v0 + 744);
              v258 = sub_22B36048C();
              sub_22B3604CC();
              v259 = sub_22B360E1C();
              if (sub_22B360FDC())
              {
                v260 = *(v0 + 752);
                v262 = *(v0 + 408);
                v261 = *(v0 + 416);
                v263 = *(v0 + 400);

                sub_22B3604FC();

                if ((*(v262 + 88))(v261, v263) == *MEMORY[0x277D85B00])
                {
                  v264 = "[Error] Interval already ended";
                }

                else
                {
                  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                  v264 = "";
                }

                v265 = *(v0 + 688);
                v266 = swift_slowAlloc();
                *v266 = 0;
                v267 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v258, v259, v267, "FindGenerationMeters", v264, v266, 2u);
                MEMORY[0x23188F650](v266, -1, -1);
              }

              v268 = *(v0 + 752);
              v269 = *(v0 + 704);
              v270 = *(v0 + 688);
              v271 = *(v0 + 680);
              v272 = *(v0 + 672);

              v273 = *(v271 + 8);
              v273(v270, v272);
              v273(v269, v272);
              swift_beginAccess();
              v330 = *(v0 + 360);
              v274 = *(v0 + 704);
              v275 = *(v0 + 696);
              v276 = *(v0 + 688);
              v277 = *(v0 + 664);
              v278 = *(v0 + 656);
              v279 = *(v0 + 648);
              v280 = *(v0 + 640);
              v281 = *(v0 + 632);
              v282 = *(v0 + 624);
              v283 = *(v0 + 616);
              v293 = *(v0 + 608);
              v294 = *(v0 + 600);
              v295 = *(v0 + 592);
              v296 = *(v0 + 568);
              v297 = *(v0 + 560);
              v298 = *(v0 + 552);
              v299 = *(v0 + 544);
              v300 = *(v0 + 536);
              v301 = *(v0 + 528);
              v302 = *(v0 + 512);
              v303 = *(v0 + 504);
              v304 = *(v0 + 496);
              v305 = *(v0 + 488);
              v306 = *(v0 + 480);
              v307 = *(v0 + 472);
              v308 = *(v0 + 464);
              v310 = *(v0 + 456);
              v315 = *(v0 + 448);
              v320 = *(v0 + 440);
              v325 = *(v0 + 416);

              v284 = *(v0 + 8);

              return v284(v330);
            }
          }

          else
          {
            v237 = MEMORY[0x277D84F90];
          }

          *(v0 + 1072) = v237;
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v285 = *(v0 + 384);
          v286 = sub_22B35F3AC();
          v288 = v287;
          *(v0 + 1080) = v287;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x800000022B36C000;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
          *(inited + 48) = v237;

          v290 = sub_22B321AAC(inited);
          *(v0 + 1088) = v290;
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
          v291 = swift_task_alloc();
          *(v0 + 1096) = v291;
          *v291 = v0;
          v291[1] = sub_22B1C29E4;
          v227 = v286;
          v228 = v288;
          v229 = v290;
          goto LABEL_77;
        }
      }

      else
      {
        v111 = MEMORY[0x277D84F90];
      }

      *(v0 + 1104) = v111;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v220 = *(v0 + 384);
      v221 = sub_22B35F3AC();
      v223 = v222;
      *(v0 + 1112) = v222;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v224 = swift_initStackObject();
      *(v224 + 16) = xmmword_22B3634B0;
      *(v224 + 32) = 0xD000000000000010;
      *(v224 + 40) = 0x800000022B36C000;
      *(v224 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(v224 + 48) = v111;

      v225 = sub_22B321AAC(v224);
      *(v0 + 1120) = v225;
      swift_setDeallocating();
      sub_22B123284(v224 + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v226 = swift_task_alloc();
      *(v0 + 1128) = v226;
      *v226 = v0;
      v226[1] = sub_22B1C3080;
      v227 = v221;
      v228 = v223;
      v229 = v225;
LABEL_77:

      return sub_22B2244D0(v227, v228, v229);
    }

    v136 = *(v0 + 832) + 1;
    *(v0 + 832) = v136;
    *(v0 + 824) = v1;
    v137 = *(v0 + 768);
    if (v136 < *(v137 + 16))
    {
      v138 = *(v0 + 800);
      v139 = *(v0 + 792);
      v140 = *(v0 + 784);
      v141 = *(v0 + 656);
      v142 = *(v0 + 576);
      sub_22B1CA1F0(v137 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v136, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v139(v141, v140, v142);
      v143 = sub_22B36048C();
      v144 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v145 = *(v0 + 704);
        v146 = swift_slowAlloc();
        *v146 = 0;
        v147 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v143, v144, v147, "Start: Processing UsagePoint", "", v146, 2u);
        MEMORY[0x23188F650](v146, -1, -1);
      }

      v148 = *(v0 + 808);
      v149 = *(v0 + 800);
      v150 = *(v0 + 792);
      v151 = *(v0 + 784);
      v152 = *(v0 + 656);
      v153 = *(v0 + 648);
      v154 = *(v0 + 584);
      v155 = *(v0 + 576);

      v148(v152, v155);
      v150(v153, v151, v155);
      v156 = sub_22B36048C();
      v157 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v158 = *(v0 + 704);
        v159 = swift_slowAlloc();
        *v159 = 0;
        v160 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v156, v157, v160, "Start: Get Unique Meter IDs", "", v159, 2u);
        MEMORY[0x23188F650](v159, -1, -1);
      }

      v161 = *(v0 + 808);
      v162 = *(v0 + 648);
      v163 = *(v0 + 584);
      v164 = *(v0 + 576);

      v161(v162, v164);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_82;
    }
  }

  else
  {
    v42 = *(v0 + 1000) + 1;
    *(v0 + 1000) = v42;
    *(v0 + 992) = v1;
    v43 = *(v0 + 968);
    if (v42 < *(v43 + 16))
    {
      v44 = *(v0 + 800);
      v45 = *(v0 + 792);
      v46 = *(v0 + 784);
      v47 = *(v0 + 632);
      v48 = *(v0 + 576);
      v49 = v43 + 16 * v42;
      *(v0 + 1008) = *(v49 + 32);
      *(v0 + 1016) = *(v49 + 40);
      v45(v47, v46, v48);

      v50 = sub_22B36048C();
      v51 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v52 = *(v0 + 704);
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v50, v51, v54, "Start: Has Meter Imported", "", v53, 2u);
        MEMORY[0x23188F650](v53, -1, -1);
      }

      v55 = *(v0 + 840);
      v56 = *(v0 + 808);
      v57 = *(v0 + 632);
      v58 = *(v0 + 584);
      v59 = *(v0 + 576);
      v60 = *(v0 + 384);

      v56(v57, v59);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v61;
      v62 = sub_22B1BD400;
      v63 = v55;
      goto LABEL_35;
    }

    __break(1u);
  }

  __break(1u);
LABEL_82:
  swift_once();
LABEL_34:
  v165 = *(v0 + 568);
  v166 = *(v0 + 384);
  v167 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v165 + 16);
  *(v0 + 856) = *(v165 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v168;
  v62 = sub_22B1B98F8;
  v63 = v167;
LABEL_35:

  return MEMORY[0x2822009F8](v62, v63, 0);
}

uint64_t sub_22B1BF170()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);

  return MEMORY[0x2822009F8](sub_22B1BF1EC, 0, 0);
}

uint64_t sub_22B1BF1EC()
{
  v330 = v0;
  v1 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 624), *(v0 + 784), *(v0 + 576));
  v2 = sub_22B36048C();
  v3 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v4 = *(v0 + 704);
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v2, v3, v6, "End: Has Meter Imported", "", v5, 2u);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v7 = *(v0 + 1000);
  v8 = *(v0 + 984);
  v9 = *(v0 + 808);
  v10 = *(v0 + 624);
  v11 = *(v0 + 584);
  v12 = *(v0 + 576);

  v9(v10, v12);
  if (v7 + 1 == v8)
  {
    v13 = *(v0 + 968);

    v14 = *(v0 + 368);
    if (*(v14 + 16) == *(v0 + 976))
    {
      v15 = *(v0 + 896);
      v16 = *(v0 + 888);
      v17 = *(v0 + 880);
      v18 = *(v0 + 720);
      v19 = *(v0 + 568);
      v20 = *(v0 + 536);
      v21 = *(v0 + 472);
      v22 = *(v0 + 424);
      v23 = *(v0 + 384);

      v16(v21, v17, v22);
      sub_22B1CA1F0(v19, v20, type metadata accessor for CDUsagePointRecords);

      v24 = v23;
      v25 = sub_22B36050C();
      v26 = sub_22B360D2C();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 904);
      if (v27)
      {
        v29 = *(v0 + 720);
        v30 = *(v0 + 712);
        v31 = *(v0 + 536);
        v319 = *(v0 + 424);
        v324 = *(v0 + 472);
        v32 = *(v0 + 384);
        v314 = *(v0 + 432) + 8;
        v309 = *(v0 + 904);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v329[0] = v34;
        *v33 = 136446722;
        *(v33 + 4) = sub_22B1A7B20(v30, v29, v329);
        *(v33 + 12) = 2082;
        v35 = *(v31 + 16);
        v36 = *(v31 + 24);

        sub_22B1CA258(v31, type metadata accessor for CDUsagePointRecords);
        v37 = sub_22B1A7B20(v35, v36, v329);

        *(v33 + 14) = v37;
        *(v33 + 22) = 2082;
        v38 = sub_22B35F3AC();
        v40 = sub_22B1A7B20(v38, v39, v329);

        *(v33 + 24) = v40;
        _os_log_impl(&dword_22B116000, v25, v26, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v34, -1, -1);
        MEMORY[0x23188F650](v33, -1, -1);

        v309(v324, v319);
      }

      else
      {
        v63 = *(v0 + 536);
        v64 = *(v0 + 472);
        v65 = *(v0 + 424);
        v66 = *(v0 + 432);

        sub_22B1CA258(v63, type metadata accessor for CDUsagePointRecords);
        v28(v64, v65);
      }
    }

    else
    {
      sub_22B24883C(v14);
    }

    v67 = *(v0 + 800);
    (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
    v68 = sub_22B36048C();
    v69 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v70 = *(v0 + 704);
      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v68, v69, v72, "End: Processing UsagePoint", "", v71, 2u);
      MEMORY[0x23188F650](v71, -1, -1);
    }

    v73 = *(v0 + 832);
    v74 = *(v0 + 816);
    v75 = *(v0 + 808);
    v76 = *(v0 + 616);
    v77 = *(v0 + 584);
    v78 = *(v0 + 576);
    v79 = *(v0 + 568);

    v75(v76, v78);
    sub_22B1CA258(v79, type metadata accessor for CDUsagePointRecords);
    if (v73 + 1 == v74)
    {
      v80 = *(v0 + 768);
      v81 = *(v0 + 736);

      v82 = *(v0 + 800);
      (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
      v83 = sub_22B36048C();
      v84 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v85 = *(v0 + 704);
        v86 = swift_slowAlloc();
        *v86 = 0;
        v87 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v83, v84, v87, "End: Loop UsagePoints", "", v86, 2u);
        MEMORY[0x23188F650](v86, -1, -1);
      }

      v88 = *(v0 + 808);
      v89 = *(v0 + 800);
      v90 = *(v0 + 792);
      v91 = *(v0 + 784);
      v92 = *(v0 + 608);
      v93 = *(v0 + 600);
      v94 = *(v0 + 584);
      v95 = *(v0 + 576);

      v88(v92, v95);
      v90(v93, v91, v95);
      v96 = sub_22B36048C();
      v97 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v98 = *(v0 + 704);
        v99 = swift_slowAlloc();
        *v99 = 0;
        v100 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v96, v97, v100, "Start: Compare Meters", "", v99, 2u);
        MEMORY[0x23188F650](v99, -1, -1);
      }

      v101 = *(v0 + 808);
      v102 = *(v0 + 600);
      v103 = *(v0 + 584);
      v104 = *(v0 + 576);
      v105 = *(v0 + 384);

      v101(v102, v104);
      v106 = sub_22B35F18C();
      if (v106)
      {
        v107 = v106;
        if (*(v106 + 16))
        {

          v109 = sub_22B31A80C(v108);

          v110 = *(v0 + 360);

          v112 = sub_22B1C3A84(v111, v109);

          if (v112)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v113 = *(v0 + 720);
            v114 = *(v0 + 456);
            v115 = *(v0 + 424);
            v116 = *(v0 + 432);
            v117 = *(v0 + 384);
            v118 = __swift_project_value_buffer(v115, qword_28140BD10);
            swift_beginAccess();
            (*(v116 + 16))(v114, v118, v115);

            v119 = v117;

            v120 = sub_22B36050C();
            v121 = sub_22B360D2C();

            v122 = os_log_type_enabled(v120, v121);
            v123 = *(v0 + 720);
            if (v122)
            {
              v124 = *(v0 + 712);
              v325 = *(v0 + 456);
              v315 = *(v0 + 432);
              v320 = *(v0 + 424);
              v310 = *(v0 + 384);
              v125 = swift_slowAlloc();
              v126 = swift_slowAlloc();
              v329[0] = v126;
              *v125 = 136315650;
              v127 = MEMORY[0x23188E390](v107, MEMORY[0x277D837D0]);
              v129 = v128;

              v130 = sub_22B1A7B20(v127, v129, v329);

              *(v125 + 4) = v130;
              *(v125 + 12) = 2082;
              v131 = sub_22B1A7B20(v124, v123, v329);

              *(v125 + 14) = v131;
              *(v125 + 22) = 2082;
              v132 = sub_22B35F3AC();
              v134 = sub_22B1A7B20(v132, v133, v329);

              *(v125 + 24) = v134;
              _os_log_impl(&dword_22B116000, v120, v121, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v125, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v126, -1, -1);
              MEMORY[0x23188F650](v125, -1, -1);

              (*(v315 + 8))(v325, v320);
            }

            else
            {
              v229 = *(v0 + 456);
              v230 = *(v0 + 424);
              v231 = *(v0 + 432);

              (*(v231 + 8))(v229, v230);
            }

            goto LABEL_61;
          }

          goto LABEL_47;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v168 = *(v0 + 720);
      v170 = *(v0 + 432);
      v169 = *(v0 + 440);
      v171 = *(v0 + 424);
      v172 = *(v0 + 384);
      v173 = __swift_project_value_buffer(v171, qword_28140BD10);
      swift_beginAccess();
      (*(v170 + 16))(v169, v173, v171);

      v174 = v172;
      v175 = sub_22B36050C();
      v176 = sub_22B360D2C();

      v177 = os_log_type_enabled(v175, v176);
      v178 = *(v0 + 720);
      if (v177)
      {
        v179 = *(v0 + 712);
        v326 = *(v0 + 440);
        v316 = *(v0 + 432);
        v321 = *(v0 + 424);
        v311 = *(v0 + 384);
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v329[0] = v181;
        *v180 = 136315650;
        swift_beginAccess();
        v182 = *(v0 + 360);

        v183 = sub_22B360C5C();
        v185 = v184;

        v186 = sub_22B1A7B20(v183, v185, v329);

        *(v180 + 4) = v186;
        *(v180 + 12) = 2082;
        v187 = sub_22B1A7B20(v179, v178, v329);

        *(v180 + 14) = v187;
        *(v180 + 22) = 2082;
        v188 = sub_22B35F3AC();
        v190 = sub_22B1A7B20(v188, v189, v329);

        *(v180 + 24) = v190;
        _os_log_impl(&dword_22B116000, v175, v176, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v180, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v181, -1, -1);
        MEMORY[0x23188F650](v180, -1, -1);

        (*(v316 + 8))(v326, v321);
      }

      else
      {
        v192 = *(v0 + 432);
        v191 = *(v0 + 440);
        v193 = *(v0 + 424);

        (*(v192 + 8))(v191, v193);
      }

      if (*(v0 + 1141) != 1)
      {
        goto LABEL_61;
      }

      swift_beginAccess();
      v194 = *(v0 + 360);
      v195 = *(v194 + 16);
      if (v195)
      {
        v110 = sub_22B32DCA4(*(v194 + 16), 0);
        v196 = sub_22B24FA90(v329, v110 + 4, v195, v194);

        sub_22B1A20B8();
        if (v196 != v195)
        {
          __break(1u);
LABEL_47:

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v197 = *(v0 + 720);
          v198 = *(v0 + 448);
          v199 = *(v0 + 424);
          v200 = *(v0 + 432);
          v201 = *(v0 + 384);
          v202 = __swift_project_value_buffer(v199, qword_28140BD10);
          swift_beginAccess();
          (*(v200 + 16))(v198, v202, v199);

          v203 = v201;
          v204 = sub_22B36050C();
          v205 = sub_22B360D2C();

          v206 = os_log_type_enabled(v204, v205);
          v207 = *(v0 + 720);
          if (v206)
          {
            v208 = *(v0 + 712);
            v327 = *(v0 + 448);
            v317 = *(v0 + 432);
            v322 = *(v0 + 424);
            v312 = *(v0 + 384);
            v209 = swift_slowAlloc();
            v210 = swift_slowAlloc();
            v329[0] = v210;
            *v209 = 136315650;

            v211 = sub_22B360C5C();
            v213 = v212;

            v214 = sub_22B1A7B20(v211, v213, v329);

            *(v209 + 4) = v214;
            *(v209 + 12) = 2082;
            v215 = sub_22B1A7B20(v208, v207, v329);

            *(v209 + 14) = v215;
            *(v209 + 22) = 2082;
            v216 = sub_22B35F3AC();
            v218 = sub_22B1A7B20(v216, v217, v329);

            *(v209 + 24) = v218;
            _os_log_impl(&dword_22B116000, v204, v205, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v209, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v210, -1, -1);
            MEMORY[0x23188F650](v209, -1, -1);

            (*(v317 + 8))(v327, v322);
          }

          else
          {
            v232 = *(v0 + 448);
            v233 = *(v0 + 424);
            v234 = *(v0 + 432);

            (*(v234 + 8))(v232, v233);
          }

          if (*(v0 + 1141) != 1)
          {
            goto LABEL_61;
          }

          v235 = v110[2];
          if (v235)
          {
            v236 = sub_22B32DCA4(v110[2], 0);
            v237 = sub_22B24FA90(v329, v236 + 4, v235, v110);

            sub_22B1A20B8();
            if (v237 != v235)
            {
              __break(1u);
LABEL_61:
              v238 = *(v0 + 800);
              (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
              v239 = sub_22B36048C();
              v240 = sub_22B360E3C();
              v241 = sub_22B360FDC();
              v242 = *(v0 + 808);
              if (v241)
              {
                v243 = *(v0 + 704);
                v244 = *(v0 + 592);
                v245 = *(v0 + 584);
                v246 = *(v0 + 576);
                v247 = swift_slowAlloc();
                *v247 = 0;
                v248 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v239, v240, v248, "End: Compare Meters", "", v247, 2u);
                MEMORY[0x23188F650](v247, -1, -1);

                v249 = v244;
                v250 = v246;
              }

              else
              {
                v251 = *(v0 + 592);
                v252 = *(v0 + 584);
                v253 = *(v0 + 576);

                v249 = v251;
                v250 = v253;
              }

              v242(v249, v250);
              v254 = *(v0 + 752);
              v255 = *(v0 + 688);
              v256 = *(v0 + 392) + *(v0 + 744);
              v257 = sub_22B36048C();
              sub_22B3604CC();
              v258 = sub_22B360E1C();
              if (sub_22B360FDC())
              {
                v259 = *(v0 + 752);
                v261 = *(v0 + 408);
                v260 = *(v0 + 416);
                v262 = *(v0 + 400);

                sub_22B3604FC();

                if ((*(v261 + 88))(v260, v262) == *MEMORY[0x277D85B00])
                {
                  v263 = "[Error] Interval already ended";
                }

                else
                {
                  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                  v263 = "";
                }

                v264 = *(v0 + 688);
                v265 = swift_slowAlloc();
                *v265 = 0;
                v266 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v257, v258, v266, "FindGenerationMeters", v263, v265, 2u);
                MEMORY[0x23188F650](v265, -1, -1);
              }

              v267 = *(v0 + 752);
              v268 = *(v0 + 704);
              v269 = *(v0 + 688);
              v270 = *(v0 + 680);
              v271 = *(v0 + 672);

              v272 = *(v270 + 8);
              v272(v269, v271);
              v272(v268, v271);
              swift_beginAccess();
              v328 = *(v0 + 360);
              v273 = *(v0 + 704);
              v274 = *(v0 + 696);
              v275 = *(v0 + 688);
              v276 = *(v0 + 664);
              v277 = *(v0 + 656);
              v278 = *(v0 + 648);
              v279 = *(v0 + 640);
              v280 = *(v0 + 632);
              v281 = *(v0 + 624);
              v282 = *(v0 + 616);
              v292 = *(v0 + 608);
              v293 = *(v0 + 600);
              v294 = *(v0 + 592);
              v295 = *(v0 + 568);
              v296 = *(v0 + 560);
              v297 = *(v0 + 552);
              v298 = *(v0 + 544);
              v299 = *(v0 + 536);
              v300 = *(v0 + 528);
              v301 = *(v0 + 512);
              v302 = *(v0 + 504);
              v303 = *(v0 + 496);
              v304 = *(v0 + 488);
              v305 = *(v0 + 480);
              v306 = *(v0 + 472);
              v307 = *(v0 + 464);
              v308 = *(v0 + 456);
              v313 = *(v0 + 448);
              v318 = *(v0 + 440);
              v323 = *(v0 + 416);

              v283 = *(v0 + 8);

              return v283(v328);
            }
          }

          else
          {
            v236 = MEMORY[0x277D84F90];
          }

          *(v0 + 1072) = v236;
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v284 = *(v0 + 384);
          v285 = sub_22B35F3AC();
          v287 = v286;
          *(v0 + 1080) = v286;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x800000022B36C000;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
          *(inited + 48) = v236;

          v289 = sub_22B321AAC(inited);
          *(v0 + 1088) = v289;
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
          v290 = swift_task_alloc();
          *(v0 + 1096) = v290;
          *v290 = v0;
          v290[1] = sub_22B1C29E4;
          v226 = v285;
          v227 = v287;
          v228 = v289;
          goto LABEL_76;
        }
      }

      else
      {
        v110 = MEMORY[0x277D84F90];
      }

      *(v0 + 1104) = v110;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v219 = *(v0 + 384);
      v220 = sub_22B35F3AC();
      v222 = v221;
      *(v0 + 1112) = v221;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v223 = swift_initStackObject();
      *(v223 + 16) = xmmword_22B3634B0;
      *(v223 + 32) = 0xD000000000000010;
      *(v223 + 40) = 0x800000022B36C000;
      *(v223 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(v223 + 48) = v110;

      v224 = sub_22B321AAC(v223);
      *(v0 + 1120) = v224;
      swift_setDeallocating();
      sub_22B123284(v223 + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v225 = swift_task_alloc();
      *(v0 + 1128) = v225;
      *v225 = v0;
      v225[1] = sub_22B1C3080;
      v226 = v220;
      v227 = v222;
      v228 = v224;
LABEL_76:

      return sub_22B2244D0(v226, v227, v228);
    }

    v135 = *(v0 + 832) + 1;
    *(v0 + 832) = v135;
    *(v0 + 824) = 0;
    v136 = *(v0 + 768);
    if (v135 < *(v136 + 16))
    {
      v137 = *(v0 + 800);
      v138 = *(v0 + 792);
      v139 = *(v0 + 784);
      v140 = *(v0 + 656);
      v141 = *(v0 + 576);
      sub_22B1CA1F0(v136 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v135, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v138(v140, v139, v141);
      v142 = sub_22B36048C();
      v143 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v144 = *(v0 + 704);
        v145 = swift_slowAlloc();
        *v145 = 0;
        v146 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v142, v143, v146, "Start: Processing UsagePoint", "", v145, 2u);
        MEMORY[0x23188F650](v145, -1, -1);
      }

      v147 = *(v0 + 808);
      v148 = *(v0 + 800);
      v149 = *(v0 + 792);
      v150 = *(v0 + 784);
      v151 = *(v0 + 656);
      v152 = *(v0 + 648);
      v153 = *(v0 + 584);
      v154 = *(v0 + 576);

      v147(v151, v154);
      v149(v152, v150, v154);
      v155 = sub_22B36048C();
      v156 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v157 = *(v0 + 704);
        v158 = swift_slowAlloc();
        *v158 = 0;
        v159 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v155, v156, v159, "Start: Get Unique Meter IDs", "", v158, 2u);
        MEMORY[0x23188F650](v158, -1, -1);
      }

      v160 = *(v0 + 808);
      v161 = *(v0 + 648);
      v162 = *(v0 + 584);
      v163 = *(v0 + 576);

      v160(v161, v163);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_81;
    }
  }

  else
  {
    v41 = *(v0 + 1000) + 1;
    *(v0 + 1000) = v41;
    *(v0 + 992) = 0;
    v42 = *(v0 + 968);
    if (v41 < *(v42 + 16))
    {
      v43 = *(v0 + 800);
      v44 = *(v0 + 792);
      v45 = *(v0 + 784);
      v46 = *(v0 + 632);
      v47 = *(v0 + 576);
      v48 = v42 + 16 * v41;
      *(v0 + 1008) = *(v48 + 32);
      *(v0 + 1016) = *(v48 + 40);
      v44(v46, v45, v47);

      v49 = sub_22B36048C();
      v50 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v51 = *(v0 + 704);
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v49, v50, v53, "Start: Has Meter Imported", "", v52, 2u);
        MEMORY[0x23188F650](v52, -1, -1);
      }

      v54 = *(v0 + 840);
      v55 = *(v0 + 808);
      v56 = *(v0 + 632);
      v57 = *(v0 + 584);
      v58 = *(v0 + 576);
      v59 = *(v0 + 384);

      v55(v56, v58);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v60;
      v61 = sub_22B1BD400;
      v62 = v54;
      goto LABEL_34;
    }

    __break(1u);
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_33:
  v164 = *(v0 + 568);
  v165 = *(v0 + 384);
  v166 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v164 + 16);
  *(v0 + 856) = *(v164 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v167;
  v61 = sub_22B1B98F8;
  v62 = v166;
LABEL_34:

  return MEMORY[0x2822009F8](v61, v62, 0);
}

uint64_t sub_22B1C0B24()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);

  return MEMORY[0x2822009F8](sub_22B1C0BA0, 0, 0);
}

uint64_t sub_22B1C0BA0()
{
  v399 = v0;
  v1 = *(v0 + 1142);
  if (v1 == 2)
  {
    v2 = *(v0 + 1016);
LABEL_11:

    goto LABEL_12;
  }

  v3 = *(v0 + 1016);
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  v7 = *(v0 + 720);
  v8 = *(v0 + 568);
  v9 = *(v0 + 424);
  v10 = *(v0 + 384);
  if ((v1 & 1) == 0)
  {
    v30 = *(v0 + 544);
    v5(*(v0 + 480), v6, v9);
    sub_22B1CA1F0(v8, v30, type metadata accessor for CDUsagePointRecords);

    v31 = v10;

    v32 = sub_22B36050C();
    v33 = sub_22B360D2C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 1016);
      v35 = *(v0 + 1008);
      v36 = *(v0 + 720);
      v37 = *(v0 + 712);
      v38 = *(v0 + 544);
      v385 = *(v0 + 480);
      v392 = *(v0 + 904);
      v367 = *(v0 + 384);
      v371 = *(v0 + 432) + 8;
      v378 = *(v0 + 424);
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v398[0] = v40;
      *v39 = 136315906;
      *(v39 + 4) = sub_22B1A7B20(v35, v34, v398);
      *(v39 + 12) = 2082;
      *(v39 + 14) = sub_22B1A7B20(v37, v36, v398);
      *(v39 + 22) = 2082;
      v41 = *(v38 + 16);
      v42 = *(v38 + 24);

      sub_22B1CA258(v38, type metadata accessor for CDUsagePointRecords);
      v43 = sub_22B1A7B20(v41, v42, v398);

      *(v39 + 24) = v43;
      *(v39 + 32) = 2082;
      v44 = sub_22B35F3AC();
      v46 = sub_22B1A7B20(v44, v45, v398);

      *(v39 + 34) = v46;
      _os_log_impl(&dword_22B116000, v32, v33, "[AMIProcessor] Meter %s for %{public}s with usagePoint %{public}s at %{public}s has never imported energy", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v40, -1, -1);
      MEMORY[0x23188F650](v39, -1, -1);

      v392(v385, v378);
    }

    else
    {
      v52 = *(v0 + 904);
      v53 = *(v0 + 544);
      v54 = *(v0 + 480);
      v55 = *(v0 + 424);
      v56 = *(v0 + 432);

      sub_22B1CA258(v53, type metadata accessor for CDUsagePointRecords);
      v52(v54, v55);
    }

    sub_22B32DF50((v0 + 344), *(v0 + 1008), *(v0 + 1016));
    v57 = *(v0 + 352);
    goto LABEL_11;
  }

  v11 = *(v0 + 552);
  v5(*(v0 + 488), v6, v9);
  sub_22B1CA1F0(v8, v11, type metadata accessor for CDUsagePointRecords);

  v12 = v10;

  v13 = sub_22B36050C();
  v14 = sub_22B360D2C();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 1016);
  if (v15)
  {
    v17 = *(v0 + 1008);
    v18 = *(v0 + 720);
    v19 = *(v0 + 712);
    v20 = *(v0 + 552);
    v384 = *(v0 + 488);
    v391 = *(v0 + 904);
    v366 = *(v0 + 384);
    v370 = *(v0 + 432) + 8;
    v377 = *(v0 + 424);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v398[0] = v22;
    *v21 = 136315906;
    v23 = sub_22B1A7B20(v17, v16, v398);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_22B1A7B20(v19, v18, v398);
    *(v21 + 22) = 2082;
    v24 = *(v20 + 16);
    v25 = *(v20 + 24);

    sub_22B1CA258(v20, type metadata accessor for CDUsagePointRecords);
    v26 = sub_22B1A7B20(v24, v25, v398);

    *(v21 + 24) = v26;
    *(v21 + 32) = 2082;
    v27 = sub_22B35F3AC();
    v29 = sub_22B1A7B20(v27, v28, v398);

    *(v21 + 34) = v29;
    _os_log_impl(&dword_22B116000, v13, v14, "[AMIProcessor] Meter %s for %{public}s with usagePoint %{public}s at %{public}s has imported energy", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v22, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);

    v391(v384, v377);
  }

  else
  {
    v47 = *(v0 + 904);
    v48 = *(v0 + 552);
    v49 = *(v0 + 488);
    v50 = *(v0 + 424);
    v51 = *(v0 + 432);

    sub_22B1CA258(v48, type metadata accessor for CDUsagePointRecords);
    v47(v49, v50);
  }

LABEL_12:
  v58 = *(v0 + 1064);
  v59 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 624), *(v0 + 784), *(v0 + 576));
  v60 = sub_22B36048C();
  v61 = sub_22B360E3C();
  if (sub_22B360FDC())
  {
    v62 = *(v0 + 704);
    v63 = swift_slowAlloc();
    *v63 = 0;
    v64 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v60, v61, v64, "End: Has Meter Imported", "", v63, 2u);
    MEMORY[0x23188F650](v63, -1, -1);
  }

  v65 = *(v0 + 1000);
  v66 = *(v0 + 984);
  v67 = *(v0 + 808);
  v68 = *(v0 + 624);
  v69 = *(v0 + 584);
  v70 = *(v0 + 576);

  v67(v68, v70);
  if (v65 + 1 == v66)
  {
    v71 = *(v0 + 968);

    v72 = *(v0 + 368);
    if (*(v72 + 16) == *(v0 + 976))
    {
      v393 = v58;
      v73 = *(v0 + 896);
      v74 = *(v0 + 888);
      v75 = *(v0 + 880);
      v76 = *(v0 + 720);
      v77 = *(v0 + 568);
      v78 = *(v0 + 536);
      v79 = *(v0 + 472);
      v80 = *(v0 + 424);
      v81 = *(v0 + 384);

      v74(v79, v75, v80);
      sub_22B1CA1F0(v77, v78, type metadata accessor for CDUsagePointRecords);

      v82 = v81;
      v83 = sub_22B36050C();
      v84 = sub_22B360D2C();

      v85 = os_log_type_enabled(v83, v84);
      v86 = *(v0 + 904);
      if (v85)
      {
        v87 = *(v0 + 720);
        v88 = *(v0 + 712);
        v89 = *(v0 + 536);
        v386 = *(v0 + 472);
        v90 = *(v0 + 384);
        v372 = *(v0 + 432) + 8;
        v379 = *(v0 + 424);
        v368 = *(v0 + 904);
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v398[0] = v92;
        *v91 = 136446722;
        *(v91 + 4) = sub_22B1A7B20(v88, v87, v398);
        *(v91 + 12) = 2082;
        v93 = *(v89 + 16);
        v94 = *(v89 + 24);

        sub_22B1CA258(v89, type metadata accessor for CDUsagePointRecords);
        v95 = sub_22B1A7B20(v93, v94, v398);

        *(v91 + 14) = v95;
        *(v91 + 22) = 2082;
        v96 = sub_22B35F3AC();
        v98 = sub_22B1A7B20(v96, v97, v398);

        *(v91 + 24) = v98;
        _os_log_impl(&dword_22B116000, v83, v84, "[AMIProcessor] Heuristic suggested excluding all meters. Ignoring suggestion for %{public}s with usagePoint %{public}s at %{public}s", v91, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v92, -1, -1);
        MEMORY[0x23188F650](v91, -1, -1);

        v368(v386, v379);
      }

      else
      {
        v121 = *(v0 + 536);
        v122 = *(v0 + 472);
        v123 = *(v0 + 424);
        v124 = *(v0 + 432);

        sub_22B1CA258(v121, type metadata accessor for CDUsagePointRecords);
        v86(v122, v123);
      }

      v58 = v393;
    }

    else
    {
      sub_22B24883C(v72);
    }

    v125 = *(v0 + 800);
    (*(v0 + 792))(*(v0 + 616), *(v0 + 784), *(v0 + 576));
    v126 = sub_22B36048C();
    v127 = sub_22B360E3C();
    if (sub_22B360FDC())
    {
      v128 = *(v0 + 704);
      v129 = swift_slowAlloc();
      *v129 = 0;
      v130 = sub_22B36046C();
      _os_signpost_emit_with_name_impl(&dword_22B116000, v126, v127, v130, "End: Processing UsagePoint", "", v129, 2u);
      MEMORY[0x23188F650](v129, -1, -1);
    }

    v131 = *(v0 + 832);
    v132 = *(v0 + 816);
    v133 = *(v0 + 808);
    v134 = *(v0 + 616);
    v135 = *(v0 + 584);
    v136 = *(v0 + 576);
    v137 = *(v0 + 568);

    v133(v134, v136);
    sub_22B1CA258(v137, type metadata accessor for CDUsagePointRecords);
    if (v131 + 1 == v132)
    {
      v138 = *(v0 + 768);
      v139 = *(v0 + 736);

      v140 = *(v0 + 800);
      (*(v0 + 792))(*(v0 + 608), *(v0 + 784), *(v0 + 576));
      v141 = sub_22B36048C();
      v142 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v143 = *(v0 + 704);
        v144 = swift_slowAlloc();
        *v144 = 0;
        v145 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v141, v142, v145, "End: Loop UsagePoints", "", v144, 2u);
        MEMORY[0x23188F650](v144, -1, -1);
      }

      v146 = *(v0 + 808);
      v147 = *(v0 + 800);
      v148 = *(v0 + 792);
      v149 = *(v0 + 784);
      v150 = *(v0 + 608);
      v151 = *(v0 + 600);
      v152 = *(v0 + 584);
      v153 = *(v0 + 576);

      v146(v150, v153);
      v148(v151, v149, v153);
      v154 = sub_22B36048C();
      v155 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v156 = *(v0 + 704);
        v157 = swift_slowAlloc();
        *v157 = 0;
        v158 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v154, v155, v158, "Start: Compare Meters", "", v157, 2u);
        MEMORY[0x23188F650](v157, -1, -1);
      }

      v159 = *(v0 + 808);
      v160 = *(v0 + 600);
      v161 = *(v0 + 584);
      v162 = *(v0 + 576);
      v163 = *(v0 + 384);

      v159(v160, v162);
      v164 = sub_22B35F18C();
      if (v164)
      {
        v165 = v164;
        if (*(v164 + 16))
        {

          v167 = sub_22B31A80C(v166);

          v168 = *(v0 + 360);

          v170 = sub_22B1C3A84(v169, v167);

          if (v170)
          {
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v171 = *(v0 + 720);
            v172 = *(v0 + 456);
            v173 = *(v0 + 424);
            v174 = *(v0 + 432);
            v175 = *(v0 + 384);
            v176 = __swift_project_value_buffer(v173, qword_28140BD10);
            swift_beginAccess();
            (*(v174 + 16))(v172, v176, v173);

            v177 = v175;

            v178 = sub_22B36050C();
            v179 = sub_22B360D2C();

            v180 = os_log_type_enabled(v178, v179);
            v181 = *(v0 + 720);
            if (v180)
            {
              v182 = *(v0 + 712);
              v394 = *(v0 + 456);
              v380 = *(v0 + 432);
              v387 = *(v0 + 424);
              v373 = *(v0 + 384);
              v183 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              v398[0] = v184;
              *v183 = 136315650;
              v185 = MEMORY[0x23188E390](v165, MEMORY[0x277D837D0]);
              v187 = v186;

              v188 = sub_22B1A7B20(v185, v187, v398);

              *(v183 + 4) = v188;
              *(v183 + 12) = 2082;
              v189 = sub_22B1A7B20(v182, v181, v398);

              *(v183 + 14) = v189;
              *(v183 + 22) = 2082;
              v190 = sub_22B35F3AC();
              v192 = sub_22B1A7B20(v190, v191, v398);

              *(v183 + 24) = v192;
              _os_log_impl(&dword_22B116000, v178, v179, "[AMIProcessor] Meters already excluded %s for %{public}s at %{public}s", v183, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v184, -1, -1);
              MEMORY[0x23188F650](v183, -1, -1);

              (*(v380 + 8))(v394, v387);
            }

            else
            {
              v287 = *(v0 + 456);
              v288 = *(v0 + 424);
              v289 = *(v0 + 432);

              (*(v289 + 8))(v287, v288);
            }

            goto LABEL_73;
          }

          goto LABEL_59;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v226 = *(v0 + 720);
      v228 = *(v0 + 432);
      v227 = *(v0 + 440);
      v229 = *(v0 + 424);
      v230 = *(v0 + 384);
      v231 = __swift_project_value_buffer(v229, qword_28140BD10);
      swift_beginAccess();
      (*(v228 + 16))(v227, v231, v229);

      v232 = v230;
      v233 = sub_22B36050C();
      v234 = sub_22B360D2C();

      v235 = os_log_type_enabled(v233, v234);
      v236 = *(v0 + 720);
      if (v235)
      {
        v237 = *(v0 + 712);
        v395 = *(v0 + 440);
        v381 = *(v0 + 432);
        v388 = *(v0 + 424);
        v374 = *(v0 + 384);
        v238 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v398[0] = v239;
        *v238 = 136315650;
        swift_beginAccess();
        v240 = *(v0 + 360);

        v241 = sub_22B360C5C();
        v243 = v242;

        v244 = sub_22B1A7B20(v241, v243, v398);

        *(v238 + 4) = v244;
        *(v238 + 12) = 2082;
        v245 = sub_22B1A7B20(v237, v236, v398);

        *(v238 + 14) = v245;
        *(v238 + 22) = 2082;
        v246 = sub_22B35F3AC();
        v248 = sub_22B1A7B20(v246, v247, v398);

        *(v238 + 24) = v248;
        _os_log_impl(&dword_22B116000, v233, v234, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s", v238, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v239, -1, -1);
        MEMORY[0x23188F650](v238, -1, -1);

        (*(v381 + 8))(v395, v388);
      }

      else
      {
        v250 = *(v0 + 432);
        v249 = *(v0 + 440);
        v251 = *(v0 + 424);

        (*(v250 + 8))(v249, v251);
      }

      if (*(v0 + 1141) != 1)
      {
        goto LABEL_73;
      }

      swift_beginAccess();
      v252 = *(v0 + 360);
      v253 = *(v252 + 16);
      if (v253)
      {
        v168 = sub_22B32DCA4(*(v252 + 16), 0);
        v254 = sub_22B24FA90(v398, v168 + 4, v253, v252);

        sub_22B1A20B8();
        if (v254 != v253)
        {
          __break(1u);
LABEL_59:

          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v255 = *(v0 + 720);
          v256 = *(v0 + 448);
          v257 = *(v0 + 424);
          v258 = *(v0 + 432);
          v259 = *(v0 + 384);
          v260 = __swift_project_value_buffer(v257, qword_28140BD10);
          swift_beginAccess();
          (*(v258 + 16))(v256, v260, v257);

          v261 = v259;
          v262 = sub_22B36050C();
          v263 = sub_22B360D2C();

          v264 = os_log_type_enabled(v262, v263);
          v265 = *(v0 + 720);
          if (v264)
          {
            v266 = *(v0 + 712);
            v396 = *(v0 + 448);
            v382 = *(v0 + 432);
            v389 = *(v0 + 424);
            v375 = *(v0 + 384);
            v267 = swift_slowAlloc();
            v268 = swift_slowAlloc();
            v398[0] = v268;
            *v267 = 136315650;

            v269 = sub_22B360C5C();
            v271 = v270;

            v272 = sub_22B1A7B20(v269, v271, v398);

            *(v267 + 4) = v272;
            *(v267 + 12) = 2082;
            v273 = sub_22B1A7B20(v266, v265, v398);

            *(v267 + 14) = v273;
            *(v267 + 22) = 2082;
            v274 = sub_22B35F3AC();
            v276 = sub_22B1A7B20(v274, v275, v398);

            *(v267 + 24) = v276;
            _os_log_impl(&dword_22B116000, v262, v263, "[AMIProcessor] Heuristic suggested adding %s for %{public}s at %{public}s due to difference between stored and detected", v267, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v268, -1, -1);
            MEMORY[0x23188F650](v267, -1, -1);

            (*(v382 + 8))(v396, v389);
          }

          else
          {
            v290 = *(v0 + 448);
            v291 = *(v0 + 424);
            v292 = *(v0 + 432);

            (*(v292 + 8))(v290, v291);
          }

          if (*(v0 + 1141) != 1)
          {
            goto LABEL_73;
          }

          v293 = v168[2];
          if (v293)
          {
            v294 = sub_22B32DCA4(v168[2], 0);
            v295 = sub_22B24FA90(v398, v294 + 4, v293, v168);

            sub_22B1A20B8();
            if (v295 != v293)
            {
              __break(1u);
LABEL_73:
              v296 = *(v0 + 800);
              (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
              v297 = sub_22B36048C();
              v298 = sub_22B360E3C();
              v299 = sub_22B360FDC();
              v300 = *(v0 + 808);
              if (v299)
              {
                v301 = *(v0 + 704);
                v302 = *(v0 + 592);
                v303 = *(v0 + 584);
                v304 = *(v0 + 576);
                v305 = swift_slowAlloc();
                *v305 = 0;
                v306 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v297, v298, v306, "End: Compare Meters", "", v305, 2u);
                MEMORY[0x23188F650](v305, -1, -1);

                v307 = v302;
                v308 = v304;
              }

              else
              {
                v309 = *(v0 + 592);
                v310 = *(v0 + 584);
                v311 = *(v0 + 576);

                v307 = v309;
                v308 = v311;
              }

              v300(v307, v308);
              v312 = *(v0 + 752);
              v313 = *(v0 + 688);
              v314 = *(v0 + 392) + *(v0 + 744);
              v315 = sub_22B36048C();
              sub_22B3604CC();
              v316 = sub_22B360E1C();
              if (sub_22B360FDC())
              {
                v317 = *(v0 + 752);
                v319 = *(v0 + 408);
                v318 = *(v0 + 416);
                v320 = *(v0 + 400);

                sub_22B3604FC();

                if ((*(v319 + 88))(v318, v320) == *MEMORY[0x277D85B00])
                {
                  v321 = "[Error] Interval already ended";
                }

                else
                {
                  (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
                  v321 = "";
                }

                v322 = *(v0 + 688);
                v323 = swift_slowAlloc();
                *v323 = 0;
                v324 = sub_22B36046C();
                _os_signpost_emit_with_name_impl(&dword_22B116000, v315, v316, v324, "FindGenerationMeters", v321, v323, 2u);
                MEMORY[0x23188F650](v323, -1, -1);
              }

              v325 = *(v0 + 752);
              v326 = *(v0 + 704);
              v327 = *(v0 + 688);
              v328 = *(v0 + 680);
              v329 = *(v0 + 672);

              v330 = *(v328 + 8);
              v330(v327, v329);
              v330(v326, v329);
              swift_beginAccess();
              v397 = *(v0 + 360);
              v331 = *(v0 + 704);
              v332 = *(v0 + 696);
              v333 = *(v0 + 688);
              v334 = *(v0 + 664);
              v335 = *(v0 + 656);
              v336 = *(v0 + 648);
              v337 = *(v0 + 640);
              v338 = *(v0 + 632);
              v339 = *(v0 + 624);
              v340 = *(v0 + 616);
              v350 = *(v0 + 608);
              v351 = *(v0 + 600);
              v352 = *(v0 + 592);
              v353 = *(v0 + 568);
              v354 = *(v0 + 560);
              v355 = *(v0 + 552);
              v356 = *(v0 + 544);
              v357 = *(v0 + 536);
              v358 = *(v0 + 528);
              v359 = *(v0 + 512);
              v360 = *(v0 + 504);
              v361 = *(v0 + 496);
              v362 = *(v0 + 488);
              v363 = *(v0 + 480);
              v364 = *(v0 + 472);
              v365 = *(v0 + 464);
              v369 = *(v0 + 456);
              v376 = *(v0 + 448);
              v383 = *(v0 + 440);
              v390 = *(v0 + 416);

              v341 = *(v0 + 8);

              return v341(v397);
            }
          }

          else
          {
            v294 = MEMORY[0x277D84F90];
          }

          *(v0 + 1072) = v294;
          if (qword_28140B470 != -1)
          {
            swift_once();
          }

          v342 = *(v0 + 384);
          v343 = sub_22B35F3AC();
          v345 = v344;
          *(v0 + 1080) = v344;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B3634B0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x800000022B36C000;
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
          *(inited + 48) = v294;

          v347 = sub_22B321AAC(inited);
          *(v0 + 1088) = v347;
          swift_setDeallocating();
          sub_22B123284(inited + 32, &unk_27D8BAD00, &qword_22B3656C0);
          v348 = swift_task_alloc();
          *(v0 + 1096) = v348;
          *v348 = v0;
          v348[1] = sub_22B1C29E4;
          v284 = v343;
          v285 = v345;
          v286 = v347;
          goto LABEL_88;
        }
      }

      else
      {
        v168 = MEMORY[0x277D84F90];
      }

      *(v0 + 1104) = v168;
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v277 = *(v0 + 384);
      v278 = sub_22B35F3AC();
      v280 = v279;
      *(v0 + 1112) = v279;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v281 = swift_initStackObject();
      *(v281 + 16) = xmmword_22B3634B0;
      *(v281 + 32) = 0xD000000000000010;
      *(v281 + 40) = 0x800000022B36C000;
      *(v281 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
      *(v281 + 48) = v168;

      v282 = sub_22B321AAC(v281);
      *(v0 + 1120) = v282;
      swift_setDeallocating();
      sub_22B123284(v281 + 32, &unk_27D8BAD00, &qword_22B3656C0);
      v283 = swift_task_alloc();
      *(v0 + 1128) = v283;
      *v283 = v0;
      v283[1] = sub_22B1C3080;
      v284 = v278;
      v285 = v280;
      v286 = v282;
LABEL_88:

      return sub_22B2244D0(v284, v285, v286);
    }

    v193 = *(v0 + 832) + 1;
    *(v0 + 832) = v193;
    *(v0 + 824) = v58;
    v194 = *(v0 + 768);
    if (v193 < *(v194 + 16))
    {
      v195 = *(v0 + 800);
      v196 = *(v0 + 792);
      v197 = *(v0 + 784);
      v198 = *(v0 + 656);
      v199 = *(v0 + 576);
      sub_22B1CA1F0(v194 + ((*(v0 + 1136) + 32) & ~*(v0 + 1136)) + *(*(v0 + 520) + 72) * v193, *(v0 + 568), type metadata accessor for CDUsagePointRecords);
      v196(v198, v197, v199);
      v200 = sub_22B36048C();
      v201 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v202 = *(v0 + 704);
        v203 = swift_slowAlloc();
        *v203 = 0;
        v204 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v200, v201, v204, "Start: Processing UsagePoint", "", v203, 2u);
        MEMORY[0x23188F650](v203, -1, -1);
      }

      v205 = *(v0 + 808);
      v206 = *(v0 + 800);
      v207 = *(v0 + 792);
      v208 = *(v0 + 784);
      v209 = *(v0 + 656);
      v210 = *(v0 + 648);
      v211 = *(v0 + 584);
      v212 = *(v0 + 576);

      v205(v209, v212);
      v207(v210, v208, v212);
      v213 = sub_22B36048C();
      v214 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v215 = *(v0 + 704);
        v216 = swift_slowAlloc();
        *v216 = 0;
        v217 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v213, v214, v217, "Start: Get Unique Meter IDs", "", v216, 2u);
        MEMORY[0x23188F650](v216, -1, -1);
      }

      v218 = *(v0 + 808);
      v219 = *(v0 + 648);
      v220 = *(v0 + 584);
      v221 = *(v0 + 576);

      v218(v219, v221);
      if (qword_2814099B0 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_93;
    }
  }

  else
  {
    v99 = *(v0 + 1000) + 1;
    *(v0 + 1000) = v99;
    *(v0 + 992) = v58;
    v100 = *(v0 + 968);
    if (v99 < *(v100 + 16))
    {
      v101 = *(v0 + 800);
      v102 = *(v0 + 792);
      v103 = *(v0 + 784);
      v104 = *(v0 + 632);
      v105 = *(v0 + 576);
      v106 = v100 + 16 * v99;
      *(v0 + 1008) = *(v106 + 32);
      *(v0 + 1016) = *(v106 + 40);
      v102(v104, v103, v105);

      v107 = sub_22B36048C();
      v108 = sub_22B360E3C();
      if (sub_22B360FDC())
      {
        v109 = *(v0 + 704);
        v110 = swift_slowAlloc();
        *v110 = 0;
        v111 = sub_22B36046C();
        _os_signpost_emit_with_name_impl(&dword_22B116000, v107, v108, v111, "Start: Has Meter Imported", "", v110, 2u);
        MEMORY[0x23188F650](v110, -1, -1);
      }

      v112 = *(v0 + 840);
      v113 = *(v0 + 808);
      v114 = *(v0 + 632);
      v115 = *(v0 + 584);
      v116 = *(v0 + 576);
      v117 = *(v0 + 384);

      v113(v114, v116);
      *(v0 + 1024) = sub_22B35F04C();
      *(v0 + 1032) = v118;
      v119 = sub_22B1BD400;
      v120 = v112;
      goto LABEL_46;
    }

    __break(1u);
  }

  __break(1u);
LABEL_93:
  swift_once();
LABEL_45:
  v222 = *(v0 + 568);
  v223 = *(v0 + 384);
  v224 = qword_28140BCF8;
  *(v0 + 840) = qword_28140BCF8;
  *(v0 + 848) = *(v222 + 16);
  *(v0 + 856) = *(v222 + 24);
  *(v0 + 864) = sub_22B35F04C();
  *(v0 + 872) = v225;
  v119 = sub_22B1B98F8;
  v120 = v224;
LABEL_46:

  return MEMORY[0x2822009F8](v119, v120, 0);
}

uint64_t sub_22B1C29E4(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1096);
  v6 = *v2;

  v7 = *(v4 + 1088);
  v8 = *(v4 + 1080);
  if (v1)
  {

    v9 = sub_22B1CA338;
  }

  else
  {

    v9 = sub_22B1C2B60;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22B1C2B60()
{
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCA0;
  v2 = *(v0 + 1072);
  if (qword_28140BCA0)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 1072);
    v5 = sub_22B360A3C();

    sub_22B35F04C();

    MEMORY[0x23188E270](5064493, 0xE300000000000000);

    v6 = sub_22B36081C();

    [v1 setValue:v5 forKey:v6];
  }

  else
  {
  }

  v7 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
  v8 = sub_22B36048C();
  v9 = sub_22B360E3C();
  v10 = sub_22B360FDC();
  v11 = *(v0 + 808);
  if (v10)
  {
    v12 = *(v0 + 704);
    v13 = *(v0 + 592);
    v14 = *(v0 + 584);
    v15 = *(v0 + 576);
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v8, v9, v17, "End: Compare Meters", "", v16, 2u);
    MEMORY[0x23188F650](v16, -1, -1);

    v18 = v13;
    v19 = v15;
  }

  else
  {
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v22 = *(v0 + 576);

    v18 = v20;
    v19 = v22;
  }

  v11(v18, v19);
  v23 = *(v0 + 752);
  v24 = *(v0 + 688);
  v25 = *(v0 + 392) + *(v0 + 744);
  v26 = sub_22B36048C();
  sub_22B3604CC();
  v27 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v28 = *(v0 + 752);
    v30 = *(v0 + 408);
    v29 = *(v0 + 416);
    v31 = *(v0 + 400);

    sub_22B3604FC();

    if ((*(v30 + 88))(v29, v31) == *MEMORY[0x277D85B00])
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
      v32 = "";
    }

    v33 = *(v0 + 688);
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v26, v27, v35, "FindGenerationMeters", v32, v34, 2u);
    MEMORY[0x23188F650](v34, -1, -1);
  }

  v36 = *(v0 + 752);
  v37 = *(v0 + 704);
  v38 = *(v0 + 688);
  v39 = *(v0 + 680);
  v40 = *(v0 + 672);

  v41 = *(v39 + 8);
  v41(v38, v40);
  v41(v37, v40);
  swift_beginAccess();
  v74 = *(v0 + 360);
  v42 = *(v0 + 704);
  v43 = *(v0 + 696);
  v44 = *(v0 + 688);
  v45 = *(v0 + 664);
  v46 = *(v0 + 656);
  v47 = *(v0 + 648);
  v48 = *(v0 + 640);
  v49 = *(v0 + 632);
  v50 = *(v0 + 624);
  v51 = *(v0 + 616);
  v54 = *(v0 + 608);
  v55 = *(v0 + 600);
  v56 = *(v0 + 592);
  v57 = *(v0 + 568);
  v58 = *(v0 + 560);
  v59 = *(v0 + 552);
  v60 = *(v0 + 544);
  v61 = *(v0 + 536);
  v62 = *(v0 + 528);
  v63 = *(v0 + 512);
  v64 = *(v0 + 504);
  v65 = *(v0 + 496);
  v66 = *(v0 + 488);
  v67 = *(v0 + 480);
  v68 = *(v0 + 472);
  v69 = *(v0 + 464);
  v70 = *(v0 + 456);
  v71 = *(v0 + 448);
  v72 = *(v0 + 440);
  v73 = *(v0 + 416);

  v52 = *(v0 + 8);

  return v52(v74);
}

uint64_t sub_22B1C3080(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1128);
  v6 = *v2;

  v7 = *(v4 + 1120);
  v8 = *(v4 + 1112);
  if (v1)
  {

    v9 = sub_22B1CA33C;
  }

  else
  {

    v9 = sub_22B1C31FC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22B1C31FC()
{
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCA0;
  v2 = *(v0 + 1104);
  if (qword_28140BCA0)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 1104);
    v5 = sub_22B360A3C();

    sub_22B35F04C();

    MEMORY[0x23188E270](5064493, 0xE300000000000000);

    v6 = sub_22B36081C();

    [v1 setValue:v5 forKey:v6];
  }

  else
  {
  }

  v7 = *(v0 + 800);
  (*(v0 + 792))(*(v0 + 592), *(v0 + 784), *(v0 + 576));
  v8 = sub_22B36048C();
  v9 = sub_22B360E3C();
  v10 = sub_22B360FDC();
  v11 = *(v0 + 808);
  if (v10)
  {
    v12 = *(v0 + 704);
    v13 = *(v0 + 592);
    v14 = *(v0 + 584);
    v15 = *(v0 + 576);
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v8, v9, v17, "End: Compare Meters", "", v16, 2u);
    MEMORY[0x23188F650](v16, -1, -1);

    v18 = v13;
    v19 = v15;
  }

  else
  {
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v22 = *(v0 + 576);

    v18 = v20;
    v19 = v22;
  }

  v11(v18, v19);
  v23 = *(v0 + 752);
  v24 = *(v0 + 688);
  v25 = *(v0 + 392) + *(v0 + 744);
  v26 = sub_22B36048C();
  sub_22B3604CC();
  v27 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v28 = *(v0 + 752);
    v30 = *(v0 + 408);
    v29 = *(v0 + 416);
    v31 = *(v0 + 400);

    sub_22B3604FC();

    if ((*(v30 + 88))(v29, v31) == *MEMORY[0x277D85B00])
    {
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));
      v32 = "";
    }

    v33 = *(v0 + 688);
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v26, v27, v35, "FindGenerationMeters", v32, v34, 2u);
    MEMORY[0x23188F650](v34, -1, -1);
  }

  v36 = *(v0 + 752);
  v37 = *(v0 + 704);
  v38 = *(v0 + 688);
  v39 = *(v0 + 680);
  v40 = *(v0 + 672);

  v41 = *(v39 + 8);
  v41(v38, v40);
  v41(v37, v40);
  swift_beginAccess();
  v74 = *(v0 + 360);
  v42 = *(v0 + 704);
  v43 = *(v0 + 696);
  v44 = *(v0 + 688);
  v45 = *(v0 + 664);
  v46 = *(v0 + 656);
  v47 = *(v0 + 648);
  v48 = *(v0 + 640);
  v49 = *(v0 + 632);
  v50 = *(v0 + 624);
  v51 = *(v0 + 616);
  v54 = *(v0 + 608);
  v55 = *(v0 + 600);
  v56 = *(v0 + 592);
  v57 = *(v0 + 568);
  v58 = *(v0 + 560);
  v59 = *(v0 + 552);
  v60 = *(v0 + 544);
  v61 = *(v0 + 536);
  v62 = *(v0 + 528);
  v63 = *(v0 + 512);
  v64 = *(v0 + 504);
  v65 = *(v0 + 496);
  v66 = *(v0 + 488);
  v67 = *(v0 + 480);
  v68 = *(v0 + 472);
  v69 = *(v0 + 464);
  v70 = *(v0 + 456);
  v71 = *(v0 + 448);
  v72 = *(v0 + 440);
  v73 = *(v0 + 416);

  v52 = *(v0 + 8);

  return v52(v74);
}

uint64_t sub_22B1C371C()
{
  v1 = v0[94];
  v2 = v0[86];
  v3 = v0[49] + v0[93];
  v4 = sub_22B36048C();
  sub_22B3604CC();
  v5 = sub_22B360E1C();
  if (sub_22B360FDC())
  {
    v6 = v0[94];
    v8 = v0[51];
    v7 = v0[52];
    v9 = v0[50];

    sub_22B3604FC();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[51] + 8))(v0[52], v0[50]);
      v10 = "";
    }

    v11 = v0[86];
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_22B36046C();
    _os_signpost_emit_with_name_impl(&dword_22B116000, v4, v5, v13, "FindGenerationMeters", v10, v12, 2u);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = v0[94];
  v15 = v0[88];
  v16 = v0[86];
  v17 = v0[85];
  v18 = v0[84];

  v19 = *(v17 + 8);
  v19(v16, v18);
  v19(v15, v18);
  swift_beginAccess();
  v52 = v0[45];
  v20 = v0[88];
  v21 = v0[87];
  v22 = v0[86];
  v23 = v0[83];
  v24 = v0[82];
  v25 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v28 = v0[78];
  v29 = v0[77];
  v32 = v0[76];
  v33 = v0[75];
  v34 = v0[74];
  v35 = v0[71];
  v36 = v0[70];
  v37 = v0[69];
  v38 = v0[68];
  v39 = v0[67];
  v40 = v0[66];
  v41 = v0[64];
  v42 = v0[63];
  v43 = v0[62];
  v44 = v0[61];
  v45 = v0[60];
  v46 = v0[59];
  v47 = v0[58];
  v48 = v0[57];
  v49 = v0[56];
  v50 = v0[55];
  v51 = v0[52];

  v30 = v0[1];

  return v30(v52);
}

uint64_t sub_22B1C3A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_22B36149C();

      sub_22B3608FC();
      v20 = sub_22B3614DC();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B1C3C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a2;
  v9[10] = a3;
  v9[8] = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v9[17] = swift_task_alloc();
  v11 = sub_22B36052C();
  v9[18] = v11;
  v12 = *(v11 - 8);
  v9[19] = v12;
  v13 = *(v12 + 64) + 15;
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1C3D80, 0, 0);
}

uint64_t sub_22B1C3D80()
{
  v1 = v0[16];
  v2 = *(v1 + 17);
  if (v2 == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[19];
    v6 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[21];
    v11 = v0[18];
    v12 = v0[19];
    if (!v9)
    {
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "[AMIProcessor] Mock historical data resend request. Skipping request to server";
LABEL_14:
    _os_log_impl(&dword_22B116000, v7, v8, v14, v13, 2u);
    MEMORY[0x23188F650](v13, -1, -1);
LABEL_15:

    (*(v12 + 8))(v10, v11);
    v35 = v0[20];
    v34 = v0[21];
    v36 = v0[17];

    v37 = v0[1];

    return v37(v2);
  }

  if ((*(v1 + 16) & 1) == 0)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v30 = v0[19];
    v29 = v0[20];
    v31 = v0[18];
    v32 = __swift_project_value_buffer(v31, qword_28140BD10);
    swift_beginAccess();
    (*(v30 + 16))(v29, v32, v31);
    v7 = sub_22B36050C();
    v8 = sub_22B360D1C();
    v33 = os_log_type_enabled(v7, v8);
    v12 = v0[19];
    v10 = v0[20];
    v11 = v0[18];
    if (!v33)
    {
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "[AMIProcessor] Resend historical data not enabled. Skipping request to server";
    goto LABEL_14;
  }

  v15 = v0[17];
  v16 = v0[15];
  sub_22B36012C();
  v17 = sub_22B35DE9C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_22B3602DC();
  v0[22] = sub_22B36029C();
  v19 = *(MEMORY[0x277D181D8] + 4);
  v20 = swift_task_alloc();
  v0[23] = v20;
  *v20 = v0;
  v20[1] = sub_22B1C412C;
  v21 = v0[17];
  v22 = v0[13];
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[9];
  v27 = v0[10];
  v28 = v0[8];

  return MEMORY[0x2821724F0](v28, v26, v27, v24, v25, v22, v23, v21);
}

uint64_t sub_22B1C412C(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 184);
  v7 = *v2;

  v8 = v4[22];
  v9 = v4[17];
  if (v1)
  {

    sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);

    return MEMORY[0x2822009F8](sub_22B1C4304, 0, 0);
  }

  else
  {
    sub_22B123284(v9, &qword_27D8BA340, &qword_22B363FB0);

    v11 = v5[20];
    v10 = v5[21];
    v12 = v5[17];

    v13 = *(v7 + 8);

    return v13(a1 & 1);
  }
}

uint64_t sub_22B1C4304()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[17];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_22B1C437C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = sub_22B35DE9C();
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v6 = *(v5 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = sub_22B35F9DC();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v9 = *(v8 + 64) + 15;
  v3[22] = swift_task_alloc();
  v10 = type metadata accessor for CDUsageSummaryRecords();
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v12 = *(v11 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA420, &unk_22B364910) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v15 = sub_22B35E0BC();
  v3[38] = v15;
  v16 = *(v15 - 8);
  v3[39] = v16;
  v17 = *(v16 + 64) + 15;
  v3[40] = swift_task_alloc();
  v18 = sub_22B36052C();
  v3[41] = v18;
  v19 = *(v18 - 8);
  v3[42] = v19;
  v20 = *(v19 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1C4764, 0, 0);
}

uint64_t sub_22B1C4764()
{
  v23 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[59];
  v2 = v0[41];
  v3 = v0[42];
  v4 = v0[14];
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[60] = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[61] = v6;
  v0[62] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D1C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[59];
  v11 = v0[41];
  v12 = v0[42];
  if (v9)
  {
    v14 = v0[13];
    v13 = v0[14];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_22B1A7B20(v14, v13, &v22);
    _os_log_impl(&dword_22B116000, v7, v8, "[AMIProcessor] process %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[63] = v17;
  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v18 = swift_task_alloc();
  v0[64] = v18;
  *v18 = v0;
  v18[1] = sub_22B1C49D0;
  v20 = v0[13];
  v19 = v0[14];

  return sub_22B22250C(v20, v19, 0, 0);
}

uint64_t sub_22B1C49D0(uint64_t a1)
{
  v2 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = a1;

  return MEMORY[0x2822009F8](sub_22B1C4AD0, 0, 0);
}

uint64_t sub_22B1C4AD0()
{
  v71 = v0;
  v1 = *(v0 + 520);
  if (!v1)
  {
LABEL_11:
    v16 = *(v0 + 464);
    v15 = *(v0 + 472);
    v17 = *(v0 + 448);
    v18 = *(v0 + 456);
    v20 = *(v0 + 432);
    v19 = *(v0 + 440);
    v22 = *(v0 + 416);
    v21 = *(v0 + 424);
    v23 = *(v0 + 400);
    v24 = *(v0 + 408);
    v41 = *(v0 + 392);
    v42 = *(v0 + 384);
    v43 = *(v0 + 376);
    v44 = *(v0 + 368);
    v45 = *(v0 + 360);
    v46 = *(v0 + 352);
    v47 = *(v0 + 344);
    v48 = *(v0 + 320);
    v49 = *(v0 + 296);
    v50 = *(v0 + 288);
    v51 = *(v0 + 280);
    v52 = *(v0 + 272);
    v53 = *(v0 + 264);
    v54 = *(v0 + 256);
    v55 = *(v0 + 248);
    v56 = *(v0 + 240);
    v57 = *(v0 + 232);
    v58 = *(v0 + 224);
    v59 = *(v0 + 216);
    v60 = *(v0 + 208);
    v62 = *(v0 + 200);
    v64 = *(v0 + 176);
    v66 = *(v0 + 152);
    v68 = *(v0 + 144);

    v25 = *(v0 + 8);

    return v25();
  }

  v2 = sub_22B35F12C();
  *(v0 + 528) = v2;
  *(v0 + 536) = v3;
  if (!v3)
  {

    goto LABEL_11;
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_22B35F43C();
  *(v0 + 544) = v6;
  *(v0 + 552) = v7;
  if (!v7)
  {

LABEL_10:

    goto LABEL_11;
  }

  v8 = v6;
  v9 = v7;
  sub_22B35F41C();
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = *(v0 + 304);
  v12 = *(v0 + 312);
  v13 = *(v0 + 296);
  sub_22B35E05C();

  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = *(v0 + 296);

    sub_22B123284(v14, &unk_27D8BA080, &unk_22B364280);
    goto LABEL_11;
  }

  (*(*(v0 + 312) + 32))(*(v0 + 320), *(v0 + 296), *(v0 + 304));
  v27 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v27 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v28 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
LABEL_22:
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    goto LABEL_10;
  }

  v29 = *(v0 + 496);
  v30 = *(v0 + 112);
  (*(v0 + 488))(*(v0 + 464), *(v0 + 480), *(v0 + 328));

  v31 = sub_22B36050C();
  v32 = sub_22B360D2C();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 504);
  v35 = *(v0 + 464);
  v36 = *(v0 + 336);
  v69 = *(v0 + 328);
  if (v33)
  {
    v61 = *(v0 + 104);
    v63 = *(v0 + 112);
    v67 = *(v0 + 464);
    v37 = swift_slowAlloc();
    v65 = v34;
    v38 = swift_slowAlloc();
    v70 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_22B1A7B20(v61, v63, &v70);
    _os_log_impl(&dword_22B116000, v31, v32, "[AMIProcessor] Process using usage points for %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x23188F650](v38, -1, -1);
    MEMORY[0x23188F650](v37, -1, -1);

    v65(v67, v69);
  }

  else
  {

    v34(v35, v69);
  }

  if (qword_2814099B0 != -1)
  {
    swift_once();
  }

  *(v0 + 560) = qword_28140BCF8;
  v39 = swift_task_alloc();
  *(v0 + 568) = v39;
  *v39 = v0;
  v39[1] = sub_22B1C5010;
  v40 = *(v0 + 320);

  return sub_22B305BDC(v4, v5, v8, v9, v40);
}

uint64_t sub_22B1C5010()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v8 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v4 = *(v2 + 552);
    v5 = *(v2 + 536);

    v6 = sub_22B1C9A90;
  }

  else
  {
    v6 = sub_22B1C5138;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B1C5138()
{
  v91 = v0;
  if (sub_22B360BFC())
  {
    v1 = v0[69];
    v2 = v0[67];
    v4 = v0[61];
    v3 = v0[62];
    v5 = v0[60];
    v6 = v0[57];
    v7 = v0[41];

    v4(v6, v5, v7);
    v8 = sub_22B36050C();
    v9 = sub_22B360D1C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[65];
    v86 = v0[63];
    v12 = v0[57];
    v14 = v0[41];
    v13 = v0[42];
    v16 = v0[39];
    v15 = v0[40];
    v17 = v0[38];
    if (v10)
    {
      v84 = v0[40];
      v18 = swift_slowAlloc();
      v82 = v17;
      v19 = swift_slowAlloc();
      v90[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B36BF20, v90);
      *(v18 + 12) = 2048;
      *(v18 + 14) = 397;
      _os_log_impl(&dword_22B116000, v8, v9, "[AMIProcessor] Task is cancelled at marker %s:%ld", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      v86(v12, v14);
      (*(v16 + 8))(v84, v82);
    }

    else
    {

      v86(v12, v14);
      (*(v16 + 8))(v15, v17);
    }

    v34 = v0[58];
    v33 = v0[59];
    v35 = v0[56];
    v36 = v0[57];
    v38 = v0[54];
    v37 = v0[55];
    v40 = v0[52];
    v39 = v0[53];
    v41 = v0[50];
    v42 = v0[51];
    v61 = v0[49];
    v62 = v0[48];
    v63 = v0[47];
    v64 = v0[46];
    v65 = v0[45];
    v66 = v0[44];
    v67 = v0[43];
    v68 = v0[40];
    v69 = v0[37];
    v70 = v0[36];
    v71 = v0[35];
    v72 = v0[34];
    v73 = v0[33];
    v74 = v0[32];
    v75 = v0[31];
    v76 = v0[30];
    v77 = v0[29];
    v78 = v0[28];
    v79 = v0[27];
    v80 = v0[26];
    v81 = v0[25];
    v83 = v0[22];
    v85 = v0[19];
    v88 = v0[18];

    v43 = v0[1];

    return v43();
  }

  else
  {
    v20 = v0[62];
    v21 = v0[14];
    (v0[61])(v0[56], v0[60], v0[41]);

    v22 = sub_22B36050C();
    v23 = sub_22B360D2C();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[63];
    v26 = v0[56];
    v27 = v0[41];
    v28 = v0[42];
    if (v24)
    {
      v87 = v0[63];
      v30 = v0[13];
      v29 = v0[14];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v90[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_22B1A7B20(v30, v29, v90);
      _os_log_impl(&dword_22B116000, v22, v23, "[AMIProcessor] Processed using usage points for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);

      v87(v26, v27);
    }

    else
    {

      v25(v26, v27);
    }

    v45 = v0[62];
    v46 = v0[14];
    (v0[61])(v0[55], v0[60], v0[41]);

    v47 = sub_22B36050C();
    v48 = sub_22B360D2C();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[63];
    v51 = v0[55];
    v52 = v0[41];
    v53 = v0[42];
    if (v49)
    {
      v89 = v0[63];
      v55 = v0[13];
      v54 = v0[14];
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v90[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_22B1A7B20(v55, v54, v90);
      _os_log_impl(&dword_22B116000, v47, v48, "[AMIProcessor] Get usage summaries for %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x23188F650](v57, -1, -1);
      MEMORY[0x23188F650](v56, -1, -1);

      v89(v51, v52);
    }

    else
    {

      v50(v51, v52);
    }

    if (qword_281409598 != -1)
    {
      swift_once();
    }

    v58 = v0[36];
    v59 = qword_28140BCE0;
    v0[73] = qword_28140BCE0;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
    (*(*(v60 - 8) + 56))(v58, 1, 1, v60);

    return MEMORY[0x2822009F8](sub_22B1C5810, v59, 0);
  }
}

uint64_t sub_22B1C5810()
{
  v1 = v0[73];
  v2 = v0[72];
  sub_22B1D6838(v0[66], v0[67], v0[68], v0[69], v0[36]);
  v0[74] = v3;
  v0[75] = v2;
  if (v2)
  {
    v4 = v0[69];
    v5 = v0[67];
    sub_22B123284(v0[36], &qword_27D8BA420, &unk_22B364910);

    v6 = sub_22B1C9CC4;
  }

  else
  {
    sub_22B123284(v0[36], &qword_27D8BA420, &unk_22B364910);
    v6 = sub_22B1C58FC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22B1C58FC()
{
  v88 = v0;
  v1 = *(v0 + 592);
  if (v1)
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 112);
    (*(v0 + 488))(*(v0 + 432), *(v0 + 480), *(v0 + 328));

    v4 = sub_22B36050C();
    v5 = sub_22B360D2C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 504);
    v8 = *(v0 + 432);
    v9 = *(v0 + 328);
    v10 = *(v0 + 336);
    if (v6)
    {
      v82 = *(v0 + 112);
      v84 = *(v0 + 504);
      v11 = *(v0 + 104);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v87 = v13;
      *v12 = 134218242;
      *(v12 + 4) = *(v1 + 16);

      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_22B1A7B20(v11, v82, &v87);
      _os_log_impl(&dword_22B116000, v4, v5, "[AMIProcessor] Got %ld usage summaries for %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23188F650](v13, -1, -1);
      MEMORY[0x23188F650](v12, -1, -1);

      v14 = v84(v8, v9);
    }

    else
    {

      v14 = v7(v8, v9);
    }

    v36 = *(v1 + 16);
    *(v0 + 608) = v36;
    if (v36)
    {
      v37 = *(*(v0 + 192) + 80);
      *(v0 + 824) = v37;
      v38 = *(v0 + 600);
      *(v0 + 624) = 0;
      *(v0 + 616) = v38;
      v39 = *(v0 + 592);
      if (*(v39 + 16))
      {
        v40 = *(v0 + 488);
        v41 = *(v0 + 496);
        v42 = *(v0 + 480);
        v43 = *(v0 + 424);
        v44 = *(v0 + 328);
        v46 = *(v0 + 272);
        v45 = *(v0 + 280);
        v86 = *(v0 + 264);
        v47 = *(v0 + 112);
        sub_22B1CA1F0(v39 + ((v37 + 32) & ~v37), v45, type metadata accessor for CDUsageSummaryRecords);
        v40(v43, v42, v44);
        sub_22B1CA1F0(v45, v46, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA1F0(v45, v86, type metadata accessor for CDUsageSummaryRecords);

        v48 = sub_22B36050C();
        v49 = sub_22B360D2C();

        v50 = os_log_type_enabled(v48, v49);
        v51 = *(v0 + 504);
        v52 = *(v0 + 424);
        v54 = *(v0 + 328);
        v53 = *(v0 + 336);
        v56 = *(v0 + 264);
        v55 = *(v0 + 272);
        if (v50)
        {
          v81 = v49;
          v57 = *(v0 + 184);
          v58 = *(v0 + 128);
          v79 = *(v0 + 112);
          v78 = *(v0 + 104);
          v83 = *(v0 + 328);
          v59 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v87 = v80;
          *v59 = 136315650;
          v60 = *(v57 + 44);
          sub_22B1CA150();
          v61 = sub_22B36131C();
          v63 = v62;
          sub_22B1CA258(v55, type metadata accessor for CDUsageSummaryRecords);
          v64 = sub_22B1A7B20(v61, v63, &v87);

          *(v59 + 4) = v64;
          *(v59 + 12) = 2080;
          v65 = v56 + *(v57 + 28);
          v66 = sub_22B36131C();
          v68 = v67;
          sub_22B1CA258(v56, type metadata accessor for CDUsageSummaryRecords);
          v69 = sub_22B1A7B20(v66, v68, &v87);

          *(v59 + 14) = v69;
          *(v59 + 22) = 2080;
          *(v59 + 24) = sub_22B1A7B20(v78, v79, &v87);
          _os_log_impl(&dword_22B116000, v48, v81, "[AMIProcessor] processing summary %s-%s for %s", v59, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v80, -1, -1);
          MEMORY[0x23188F650](v59, -1, -1);

          v51(v52, v83);
        }

        else
        {

          sub_22B1CA258(v56, type metadata accessor for CDUsageSummaryRecords);
          sub_22B1CA258(v55, type metadata accessor for CDUsageSummaryRecords);
          v51(v52, v54);
        }

        v72 = *(v0 + 280);
        v73 = *(v0 + 184);
        v15 = *(v0 + 560);
        *(v0 + 632) = *(v72 + v73[14]);
        *(v0 + 640) = *(v72 + v73[8]);
        *(v0 + 828) = v73[11];
        *(v0 + 832) = v73[7];
        v14 = sub_22B1C5FF8;
        v16 = 0;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x2822009F8](v14, v15, v16);
    }

    v70 = *(v0 + 552);
    v71 = *(v0 + 536);
  }

  else
  {
    v17 = *(v0 + 552);
    v18 = *(v0 + 536);
    v20 = *(v0 + 488);
    v19 = *(v0 + 496);
    v21 = *(v0 + 480);
    v22 = *(v0 + 344);
    v23 = *(v0 + 328);
    v24 = *(v0 + 112);

    v20(v22, v21, v23);

    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 504);
    v30 = *(v0 + 336);
    v29 = *(v0 + 344);
    v31 = *(v0 + 328);
    if (v27)
    {
      v85 = *(v0 + 504);
      v33 = *(v0 + 104);
      v32 = *(v0 + 112);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v87 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22B1A7B20(v33, v32, &v87);
      _os_log_impl(&dword_22B116000, v25, v26, "[AMIProcessor] Got 0 usage summaries for %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x23188F650](v35, -1, -1);
      MEMORY[0x23188F650](v34, -1, -1);

      v85(v29, v31);
    }

    else
    {

      v28(v29, v31);
    }
  }

  v74 = *(v0 + 520);
  v75 = swift_task_alloc();
  *(v0 + 816) = v75;
  *v75 = v0;
  v75[1] = sub_22B1C9758;
  v76 = *(v0 + 120);

  return sub_22B1B7BB4(v74, 1);
}

uint64_t sub_22B1C5FF8()
{
  v1 = *(v0 + 496);
  (*(v0 + 488))(*(v0 + 416), *(v0 + 480), *(v0 + 328));
  v2 = sub_22B36050C();
  v3 = sub_22B360D2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B116000, v2, v3, "Process Interval Blocks", v4, 2u);
    MEMORY[0x23188F650](v4, -1, -1);
  }

  v5 = *(v0 + 560);
  v6 = *(v0 + 504);
  v7 = *(v0 + 416);
  v8 = *(v0 + 328);
  v9 = *(v0 + 336);

  v6(v7, v8);
  v10 = *(v5 + 112);
  *(v0 + 648) = v10;
  if (v10)
  {
    v11 = *(*(v0 + 560) + 120);
    *(v0 + 656) = v11;

    v12 = v11;
    v13 = sub_22B207EFC();
    v14 = [v13 newBackgroundContext];
    *(v0 + 664) = v14;
    v15 = sub_22B36081C();
    [v14 setTransactionAuthor_];

    [v14 setMergePolicy_];
    [v14 setUndoManager_];
    [v14 setShouldRefreshAfterSave_];
    [v14 setStalenessInterval_];
    [v14 setShouldDeleteInaccessibleFaults_];

    v16 = sub_22B1C6270;
  }

  else
  {
    v17 = *(v0 + 592);
    v18 = *(v0 + 552);
    v19 = *(v0 + 536);

    sub_22B134CDC();
    *(v0 + 784) = swift_allocError();
    *v20 = 13;
    swift_willThrow();
    v16 = sub_22B1C6FF0;
  }

  return MEMORY[0x2822009F8](v16, 0, 0);
}

uint64_t sub_22B1C6270()
{
  *(v0 + 88) = 0;
  v1 = v0 + 88;
  *(v0 + 96) = 0;
  v2 = *(v0 + 640);
  *(v0 + 840) = 1;
  v3 = *(v2 + 16);
  *(v0 + 672) = v3;
  if (v3)
  {
    v4 = 0;
    v54 = (v0 + 840);
    v59 = (v0 + 841);
    v5 = *(v0 + 168);
    *(v0 + 836) = *(v5 + 80);
    *(v0 + 680) = *(v5 + 72);
    *(v0 + 688) = *(v5 + 16);
    v6 = *(v0 + 616);
    while (1)
    {
      *(v0 + 720) = v4;
      v7 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      (*(v0 + 688))(*(v0 + 176), *(v0 + 640) + ((*(v0 + 836) + 32) & ~*(v0 + 836)) + *(v0 + 680) * v4, *(v0 + 160));
      v8 = sub_22B35F97C();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {
        goto LABEL_3;
      }

      v12 = *(v0 + 176);
      v13 = sub_22B35F94C();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v17 = *(v0 + 664);
        v57 = v6;
        v18 = *(v0 + 552);
        v19 = *(v0 + 544);
        v20 = *(v0 + 280);
        v21 = *(v0 + 176);
        v22 = v20 + *(v0 + 832);
        v23 = v20 + *(v0 + 828);
        v55 = *(v0 + 648);
        v56 = *(v0 + 528);
        v53 = sub_22B35F97C();
        *(v0 + 728) = v53;
        v58 = v24;
        *(v0 + 736) = v24;
        v25 = sub_22B35F94C();
        v27 = v26;
        *(v0 + 744) = v25;
        *(v0 + 752) = v26;
        *(v0 + 841) = 1;
        v28 = swift_task_alloc();
        *(v28 + 16) = v55;
        *(v28 + 32) = v56;
        *(v28 + 48) = v19;
        *(v28 + 56) = v18;
        *(v28 + 64) = v25;
        *(v28 + 72) = v27;
        *(v28 + 80) = v23;
        *(v28 + 88) = v22;
        *(v28 + 96) = v17;
        *(v28 + 104) = v59;
        *(v28 + 112) = v0 + 96;
        *(v28 + 120) = v0 + 88;
        *(v28 + 128) = v54;
        sub_22B360E7C();
        if (v57)
        {
          v30 = *(v0 + 488);
          v29 = *(v0 + 496);
          v31 = *(v0 + 480);
          v32 = *(v0 + 408);
          v33 = *(v0 + 328);

          v30(v32, v31, v33);
          v34 = sub_22B36050C();
          v35 = sub_22B360D1C();
          v36 = os_log_type_enabled(v34, v35);
          v37 = *(v0 + 504);
          v38 = *(v0 + 408);
          v39 = *(v0 + 328);
          v40 = *(v0 + 336) + 8;
          if (v36)
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_22B116000, v34, v35, "[IntervalReadingRecords] Failed to check if preprocessed already", v41, 2u);
            MEMORY[0x23188F650](v41, -1, -1);
          }

          v37(v38, v39);
        }

        else
        {
        }

        *(v0 + 760) = 0;
        if (*v59 != 1)
        {
          v45 = *(v0 + 832);
          v46 = *(v0 + 828);
          v47 = *(v0 + 552);
          v48 = *(v0 + 280);
          v49 = swift_task_alloc();
          *(v0 + 768) = v49;
          *v49 = v0;
          v49[1] = sub_22B1C68C0;
          v50 = *(v0 + 544);
          v51 = *(v0 + 320);

          return sub_22B3156C8(v50, v47, v48 + v46, v48 + v45, v51, v53, v58);
        }

        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

        v6 = 0;
      }

      else
      {
LABEL_3:
        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      }

      v4 = *(v0 + 720) + 1;
      if (v4 == *(v0 + 672))
      {
        v1 = v0 + 88;
        v42 = *v54;
        v43 = *(v0 + 88);
        goto LABEL_20;
      }
    }
  }

  v6 = *(v0 + 616);
  v43 = 0uLL;
  v42 = 1;
LABEL_20:
  *(v1 + 754) = v42;
  *(v0 + 704) = v43;
  *(v0 + 696) = v6;
  v44 = *(v0 + 560);

  return MEMORY[0x2822009F8](sub_22B1C66DC, v44, 0);
}

uint64_t sub_22B1C66DC()
{
  v1 = *(v0[70] + 128);
  if (v1)
  {
    v2 = v0[83];
    v3 = v0[82];
    v4 = v0[81];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_22B1CA1A8;
    *(v6 + 24) = v5;
    v0[6] = sub_22B12819C;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22B32556C;
    v0[5] = &block_descriptor_12;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];
    v9 = v1;

    [v9 performBlockAndWait_];

    _Block_release(v7);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = v0[82];
  v11 = v0[81];

LABEL_5:

  return MEMORY[0x2822009F8](sub_22B1C7244, 0, 0);
}

uint64_t sub_22B1C68C0(uint64_t a1)
{
  v2 = *(*v1 + 768);
  v4 = *v1;
  *(*v1 + 776) = a1;

  return MEMORY[0x2822009F8](sub_22B1C69C0, 0, 0);
}

uint64_t sub_22B1C69C0()
{
  v1 = (v0 + 648);
  v2 = *(v0 + 776);
  if (v2)
  {
    v84 = *(v0 + 760);
    v3 = *(v0 + 752);
    v4 = *(v0 + 744);
    v83 = *(v0 + 736);
    v5 = *(v0 + 728);
    v6 = *(v0 + 664);
    v7 = *(v0 + 280);
    v8 = v7 + *(v0 + 832);
    v9 = v7 + *(v0 + 828);
    v80 = *(v0 + 528);
    v82 = *(v0 + 544);
    v10 = swift_task_alloc();
    *(v10 + 16) = *v1;
    *(v10 + 32) = v80;
    *(v10 + 48) = v82;
    *(v10 + 64) = v4;
    *(v10 + 72) = v3;
    *(v10 + 80) = v9;
    *(v10 + 88) = v8;
    *(v10 + 96) = v6;
    *(v10 + 104) = v2;
    *(v10 + 112) = v5;
    *(v10 + 120) = v83;
    v11 = v84;
    sub_22B360E7C();
    v12 = *(v0 + 752);
    v13 = *(v0 + 736);
    if (v84)
    {
      v15 = *(v0 + 488);
      v14 = *(v0 + 496);
      v16 = *(v0 + 480);
      v17 = *(v0 + 400);
      v18 = *(v0 + 328);

      v15(v17, v16, v18);
      v19 = sub_22B36050C();
      v20 = sub_22B360D1C();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 504);
      v23 = *(v0 + 400);
      v24 = *(v0 + 328);
      v25 = *(v0 + 336) + 8;
      if (v21)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_22B116000, v19, v20, "[Dropbox Bridge] Failed to process reading", v26, 2u);
        MEMORY[0x23188F650](v26, -1, -1);
      }

      v22(v23, v24);
      v11 = 0;
    }

    else
    {
    }

    v1 = (v0 + 648);
  }

  else
  {
    v27 = *(v0 + 752);
    v28 = *(v0 + 736);

    v11 = *(v0 + 760);
  }

  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  v29 = *(v0 + 720) + 1;
  if (v29 == *(v0 + 672))
  {
LABEL_10:
    v30 = v11;
LABEL_11:
    *(v1 + 194) = *(v1 + 192);
    *(v0 + 704) = *(v0 + 88);
    *(v0 + 696) = v30;
    v31 = *(v0 + 560);

    return MEMORY[0x2822009F8](sub_22B1C66DC, v31, 0);
  }

  else
  {
    v32 = (v0 + 841);
    while (1)
    {
      while (1)
      {
        *(v0 + 720) = v29;
        v33 = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        (*(v0 + 688))(*(v0 + 176), *(v0 + 640) + ((*(v0 + 836) + 32) & ~*(v0 + 836)) + *(v0 + 680) * v29, *(v0 + 160));
        v34 = sub_22B35F97C();
        v36 = v35;

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v38 = *(v0 + 176);
          v39 = sub_22B35F94C();
          v41 = v40;

          v42 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) == 0)
          {
            v42 = v39 & 0xFFFFFFFFFFFFLL;
          }

          if (v42)
          {
            break;
          }
        }

        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        v29 = *(v0 + 720) + 1;
        if (v29 == *(v0 + 672))
        {
          goto LABEL_10;
        }
      }

      v43 = *(v0 + 664);
      v81 = v32;
      v44 = *(v0 + 552);
      v45 = *(v0 + 544);
      v46 = *(v0 + 280);
      v47 = *(v0 + 176);
      v48 = v46 + *(v0 + 832);
      v49 = v46 + *(v0 + 828);
      v77 = *v1;
      v78 = *(v0 + 528);
      v76 = sub_22B35F97C();
      *(v0 + 728) = v76;
      v79 = v50;
      *(v0 + 736) = v50;
      v51 = sub_22B35F94C();
      v53 = v52;
      *(v0 + 744) = v51;
      *(v0 + 752) = v52;
      *(v0 + 841) = 1;
      v54 = swift_task_alloc();
      *(v54 + 16) = v77;
      *(v54 + 32) = v78;
      *(v54 + 48) = v45;
      *(v54 + 56) = v44;
      v32 = v81;
      *(v54 + 64) = v51;
      *(v54 + 72) = v53;
      *(v54 + 80) = v49;
      *(v54 + 88) = v48;
      *(v54 + 96) = v43;
      *(v54 + 104) = v81;
      *(v54 + 112) = v0 + 96;
      *(v54 + 120) = v0 + 88;
      *(v54 + 128) = v0 + 840;
      sub_22B360E7C();
      if (v11)
      {
        v56 = *(v0 + 488);
        v55 = *(v0 + 496);
        v57 = *(v0 + 480);
        v58 = *(v0 + 408);
        v59 = *(v0 + 328);

        v56(v58, v57, v59);
        v60 = sub_22B36050C();
        v61 = sub_22B360D1C();
        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v0 + 504);
        v64 = *(v0 + 408);
        v65 = *(v0 + 328);
        v66 = *(v0 + 336) + 8;
        if (v62)
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_22B116000, v60, v61, "[IntervalReadingRecords] Failed to check if preprocessed already", v67, 2u);
          MEMORY[0x23188F650](v67, -1, -1);
        }

        v63(v64, v65);
        v32 = v81;
      }

      else
      {
      }

      *(v0 + 760) = 0;
      if (*v32 != 1)
      {
        break;
      }

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

      v30 = 0;
      v11 = 0;
      v29 = *(v0 + 720) + 1;
      v1 = (v0 + 648);
      if (v29 == *(v0 + 672))
      {
        goto LABEL_11;
      }
    }

    v68 = *(v0 + 832);
    v69 = *(v0 + 828);
    v70 = *(v0 + 552);
    v71 = *(v0 + 280);
    v72 = swift_task_alloc();
    *(v0 + 768) = v72;
    *v72 = v0;
    v72[1] = sub_22B1C68C0;
    v73 = *(v0 + 544);
    v74 = *(v0 + 320);

    return (sub_22B3156C8)(v73, v70, v71 + v69, v71 + v68, v74, v76, v79);
  }
}

uint64_t sub_22B1C6FF0()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);

  (*(v2 + 8))(v1, v3);
  sub_22B1CA258(v4, type metadata accessor for CDUsageSummaryRecords);
  v41 = *(v0 + 784);
  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v8 = *(v0 + 448);
  v7 = *(v0 + 456);
  v10 = *(v0 + 432);
  v9 = *(v0 + 440);
  v12 = *(v0 + 416);
  v11 = *(v0 + 424);
  v13 = *(v0 + 400);
  v14 = *(v0 + 408);
  v17 = *(v0 + 392);
  v18 = *(v0 + 384);
  v19 = *(v0 + 376);
  v20 = *(v0 + 368);
  v21 = *(v0 + 360);
  v22 = *(v0 + 352);
  v23 = *(v0 + 344);
  v24 = *(v0 + 320);
  v25 = *(v0 + 296);
  v26 = *(v0 + 288);
  v27 = *(v0 + 280);
  v28 = *(v0 + 272);
  v29 = *(v0 + 264);
  v30 = *(v0 + 256);
  v31 = *(v0 + 248);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  v34 = *(v0 + 224);
  v35 = *(v0 + 216);
  v36 = *(v0 + 208);
  v37 = *(v0 + 200);
  v38 = *(v0 + 176);
  v39 = *(v0 + 152);
  v40 = *(v0 + 144);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22B1C7244()
{
  v281 = v0;
  if (sub_22B360BFC())
  {
    v1 = *(v0 + 592);
    v2 = *(v0 + 552);
    v3 = *(v0 + 536);
    v5 = *(v0 + 488);
    v4 = *(v0 + 496);
    v6 = *(v0 + 480);
    v7 = *(v0 + 392);
    v8 = *(v0 + 328);

    v5(v7, v6, v8);
    v9 = sub_22B36050C();
    v10 = sub_22B360D1C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 520);
    v274 = *(v0 + 504);
    v13 = *(v0 + 392);
    v14 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 312);
    v16 = *(v0 + 320);
    v18 = *(v0 + 304);
    if (v11)
    {
      v19 = swift_slowAlloc();
      v262 = v16;
      v20 = swift_slowAlloc();
      v280[0] = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B36BF20, v280);
      *(v19 + 12) = 2048;
      *(v19 + 14) = 458;
      _os_log_impl(&dword_22B116000, v9, v10, "[AMIProcessor] Task is cancelled at marker %s:%ld", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23188F650](v20, -1, -1);
      MEMORY[0x23188F650](v19, -1, -1);

      v274(v13, v14);
      (*(v17 + 8))(v262, v18);
    }

    else
    {

      v274(v13, v14);
      (*(v17 + 8))(v16, v18);
    }

    sub_22B1CA258(*(v0 + 280), type metadata accessor for CDUsageSummaryRecords);
    v43 = *(v0 + 464);
    v42 = *(v0 + 472);
    v44 = *(v0 + 448);
    v45 = *(v0 + 456);
    v47 = *(v0 + 432);
    v46 = *(v0 + 440);
    v49 = *(v0 + 416);
    v48 = *(v0 + 424);
    v50 = *(v0 + 400);
    v51 = *(v0 + 408);
    v222 = *(v0 + 392);
    v223 = *(v0 + 384);
    v224 = *(v0 + 376);
    v225 = *(v0 + 368);
    v226 = *(v0 + 360);
    v227 = *(v0 + 352);
    v228 = *(v0 + 344);
    v229 = *(v0 + 320);
    v230 = *(v0 + 296);
    v231 = *(v0 + 288);
    v232 = *(v0 + 280);
    v233 = *(v0 + 272);
    v234 = *(v0 + 264);
    v235 = *(v0 + 256);
    v236 = *(v0 + 248);
    v237 = *(v0 + 240);
    v239 = *(v0 + 232);
    v243 = *(v0 + 224);
    v248 = *(v0 + 216);
    v253 = *(v0 + 208);
    v257 = *(v0 + 200);
    v264 = *(v0 + 176);
    v268 = *(v0 + 152);
    v276 = *(v0 + 144);

    v52 = *(v0 + 8);

    return v52();
  }

  if (*(v0 + 842))
  {
    v21 = *(v0 + 496);
    v22 = *(v0 + 280);
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    (*(v0 + 488))(*(v0 + 360), *(v0 + 480), *(v0 + 328));
    sub_22B1CA1F0(v22, v23, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA1F0(v22, v24, type metadata accessor for CDUsageSummaryRecords);
    v25 = sub_22B36050C();
    v26 = sub_22B360D2C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 632);
      v267 = *(v0 + 360);
      v275 = *(v0 + 504);
      v263 = *(v0 + 328);
      v28 = *(v0 + 224);
      v29 = *(v0 + 184);
      v242 = v29;
      v247 = *(v0 + 216);
      v30 = *(v0 + 128);
      v256 = *(v0 + 336) + 8;
      v31 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v280[0] = v252;
      *v31 = 134218498;
      *(v31 + 4) = v27;
      *(v31 + 12) = 2080;
      v32 = *(v29 + 44);
      sub_22B1CA150();
      v33 = sub_22B36131C();
      v35 = v34;
      sub_22B1CA258(v28, type metadata accessor for CDUsageSummaryRecords);
      v36 = sub_22B1A7B20(v33, v35, v280);

      *(v31 + 14) = v36;
      *(v31 + 22) = 2080;
      v37 = v247 + *(v242 + 28);
      v38 = sub_22B36131C();
      v40 = v39;
      sub_22B1CA258(v247, type metadata accessor for CDUsageSummaryRecords);
      v41 = sub_22B1A7B20(v38, v40, v280);

      *(v31 + 24) = v41;
      _os_log_impl(&dword_22B116000, v25, v26, "[AMIProcessor] For usage summary(value:%f)%s-%s all readings are present", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v252, -1, -1);
      MEMORY[0x23188F650](v31, -1, -1);

      v275(v267, v263);
    }

    else
    {
      v80 = *(v0 + 504);
      v81 = *(v0 + 360);
      v82 = *(v0 + 328);
      v83 = *(v0 + 336);
      v85 = *(v0 + 216);
      v84 = *(v0 + 224);

      sub_22B1CA258(v85, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA258(v84, type metadata accessor for CDUsageSummaryRecords);
      v80(v81, v82);
    }

    goto LABEL_26;
  }

  v54 = *(v0 + 520);
  v55 = sub_22B35F14C();
  *(v0 + 792) = v56;
  if (!v56)
  {
LABEL_26:
    v148 = *(v0 + 496);
    v149 = *(v0 + 280);
    v151 = *(v0 + 200);
    v150 = *(v0 + 208);
    (*(v0 + 488))(*(v0 + 352), *(v0 + 480), *(v0 + 328));
    sub_22B1CA1F0(v149, v150, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA1F0(v149, v151, type metadata accessor for CDUsageSummaryRecords);
    v152 = sub_22B36050C();
    v153 = sub_22B360D1C();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = *(v0 + 632);
      v272 = *(v0 + 352);
      v278 = *(v0 + 504);
      v266 = *(v0 + 328);
      v155 = *(v0 + 208);
      v156 = *(v0 + 184);
      v245 = v156;
      v250 = *(v0 + 200);
      v157 = *(v0 + 712) - *(v0 + 704);
      v260 = *(v0 + 336) + 8;
      v158 = *(v0 + 128);
      v159 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v280[0] = v255;
      *v159 = 134218754;
      *(v159 + 4) = v157;
      *(v159 + 12) = 2048;
      *(v159 + 14) = v154;
      *(v159 + 22) = 2080;
      v160 = *(v156 + 44);
      sub_22B1CA150();
      v161 = sub_22B36131C();
      v163 = v162;
      sub_22B1CA258(v155, type metadata accessor for CDUsageSummaryRecords);
      v164 = sub_22B1A7B20(v161, v163, v280);

      *(v159 + 24) = v164;
      *(v159 + 32) = 2080;
      v165 = v250 + *(v245 + 28);
      v166 = sub_22B36131C();
      v168 = v167;
      sub_22B1CA258(v250, type metadata accessor for CDUsageSummaryRecords);
      v169 = sub_22B1A7B20(v166, v168, v280);

      *(v159 + 34) = v169;
      _os_log_impl(&dword_22B116000, v152, v153, "[AMIProcessor] Processed Interval Readings(value: %f for usage summary(value:%f) %s-%s", v159, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v255, -1, -1);
      MEMORY[0x23188F650](v159, -1, -1);

      v278(v272, v266);
    }

    else
    {
      v170 = *(v0 + 504);
      v171 = *(v0 + 352);
      v172 = *(v0 + 328);
      v173 = *(v0 + 336);
      v175 = *(v0 + 200);
      v174 = *(v0 + 208);

      sub_22B1CA258(v175, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA258(v174, type metadata accessor for CDUsageSummaryRecords);
      v170(v171, v172);
    }

    v176 = *(v0 + 608);
    v177 = *(v0 + 624) + 1;
    v178 = sub_22B1CA258(*(v0 + 280), type metadata accessor for CDUsageSummaryRecords);
    if (v177 == v176)
    {
      v181 = *(v0 + 592);
      v182 = *(v0 + 552);
      v183 = *(v0 + 536);

      v184 = *(v0 + 520);
      v185 = swift_task_alloc();
      *(v0 + 816) = v185;
      *v185 = v0;
      v185[1] = sub_22B1C9758;
      v186 = *(v0 + 120);

      return sub_22B1B7BB4(v184, 1);
    }

    else
    {
      v187 = *(v0 + 696);
      v188 = *(v0 + 624) + 1;
      *(v0 + 624) = v188;
      *(v0 + 616) = v187;
      v189 = *(v0 + 592);
      if (v188 >= *(v189 + 16))
      {
        __break(1u);
      }

      else
      {
        v190 = *(v0 + 488);
        v191 = *(v0 + 496);
        v192 = *(v0 + 480);
        v193 = *(v0 + 424);
        v194 = *(v0 + 328);
        v196 = *(v0 + 272);
        v195 = *(v0 + 280);
        v279 = *(v0 + 264);
        v197 = *(v0 + 112);
        sub_22B1CA1F0(v189 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(*(v0 + 192) + 72) * v188, v195, type metadata accessor for CDUsageSummaryRecords);
        v190(v193, v192, v194);
        sub_22B1CA1F0(v195, v196, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA1F0(v195, v279, type metadata accessor for CDUsageSummaryRecords);

        v198 = sub_22B36050C();
        v199 = sub_22B360D2C();

        v200 = os_log_type_enabled(v198, v199);
        v201 = *(v0 + 504);
        v202 = *(v0 + 424);
        v204 = *(v0 + 328);
        v203 = *(v0 + 336);
        v206 = *(v0 + 264);
        v205 = *(v0 + 272);
        if (v200)
        {
          v261 = v199;
          v207 = *(v0 + 184);
          v208 = *(v0 + 128);
          v241 = *(v0 + 104);
          v246 = *(v0 + 112);
          v273 = *(v0 + 328);
          v209 = swift_slowAlloc();
          v251 = swift_slowAlloc();
          v280[0] = v251;
          *v209 = 136315650;
          v210 = *(v207 + 44);
          sub_22B1CA150();
          v211 = sub_22B36131C();
          v213 = v212;
          sub_22B1CA258(v205, type metadata accessor for CDUsageSummaryRecords);
          v214 = sub_22B1A7B20(v211, v213, v280);

          *(v209 + 4) = v214;
          *(v209 + 12) = 2080;
          v215 = v206 + *(v207 + 28);
          v216 = sub_22B36131C();
          v218 = v217;
          sub_22B1CA258(v206, type metadata accessor for CDUsageSummaryRecords);
          v219 = sub_22B1A7B20(v216, v218, v280);

          *(v209 + 14) = v219;
          *(v209 + 22) = 2080;
          *(v209 + 24) = sub_22B1A7B20(v241, v246, v280);
          _os_log_impl(&dword_22B116000, v198, v261, "[AMIProcessor] processing summary %s-%s for %s", v209, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v251, -1, -1);
          MEMORY[0x23188F650](v209, -1, -1);

          v201(v202, v273);
        }

        else
        {

          sub_22B1CA258(v206, type metadata accessor for CDUsageSummaryRecords);
          sub_22B1CA258(v205, type metadata accessor for CDUsageSummaryRecords);
          v201(v202, v204);
        }

        v220 = *(v0 + 280);
        v221 = *(v0 + 184);
        v179 = *(v0 + 560);
        *(v0 + 632) = *(v220 + v221[14]);
        *(v0 + 640) = *(v220 + v221[8]);
        *(v0 + 828) = v221[11];
        *(v0 + 832) = v221[7];
        v178 = sub_22B1C5FF8;
        v180 = 0;
      }

      return MEMORY[0x2822009F8](v178, v179, v180);
    }
  }

  v57 = v56;
  v277 = v55;
  v58 = *(v0 + 496);
  v59 = *(v0 + 280);
  v61 = *(v0 + 248);
  v60 = *(v0 + 256);
  (*(v0 + 488))(*(v0 + 384), *(v0 + 480), *(v0 + 328));
  sub_22B1CA1F0(v59, v60, type metadata accessor for CDUsageSummaryRecords);
  sub_22B1CA1F0(v59, v61, type metadata accessor for CDUsageSummaryRecords);
  v62 = sub_22B36050C();
  v63 = sub_22B360D1C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = *(v0 + 632);
    v258 = *(v0 + 384);
    v265 = *(v0 + 504);
    v254 = *(v0 + 328);
    v65 = *(v0 + 256);
    v66 = *(v0 + 184);
    v238 = v66;
    v240 = *(v0 + 248);
    v67 = *(v0 + 128);
    v249 = *(v0 + 336) + 8;
    v269 = v57;
    v68 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    v280[0] = v244;
    *v68 = 134218498;
    *(v68 + 4) = v64;
    *(v68 + 12) = 2080;
    v69 = *(v66 + 44);
    sub_22B1CA150();
    v70 = sub_22B36131C();
    v72 = v71;
    sub_22B1CA258(v65, type metadata accessor for CDUsageSummaryRecords);
    v73 = sub_22B1A7B20(v70, v72, v280);

    *(v68 + 14) = v73;
    *(v68 + 22) = 2080;
    v74 = v240 + *(v238 + 28);
    v75 = sub_22B36131C();
    v77 = v76;
    sub_22B1CA258(v240, type metadata accessor for CDUsageSummaryRecords);
    v78 = sub_22B1A7B20(v75, v77, v280);

    *(v68 + 24) = v78;
    _os_log_impl(&dword_22B116000, v62, v63, "[AMIProcessor] For usage summary(value:%f) %s-%s all readings are not present", v68, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v244, -1, -1);
    v79 = v68;
    v57 = v269;
    MEMORY[0x23188F650](v79, -1, -1);

    v265(v258, v254);
  }

  else
  {
    v86 = *(v0 + 504);
    v87 = *(v0 + 384);
    v88 = *(v0 + 328);
    v89 = *(v0 + 336);
    v91 = *(v0 + 248);
    v90 = *(v0 + 256);

    sub_22B1CA258(v91, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA258(v90, type metadata accessor for CDUsageSummaryRecords);
    v86(v87, v88);
  }

  v92 = *(v0 + 280);
  v93 = *(v0 + 184);
  v94 = *(v0 + 144);
  v95 = *(v0 + 152);
  v96 = *(v0 + 128);
  v97 = *(v0 + 136);
  sub_22B35DE6C();
  v98 = v92 + *(v93 + 20);
  sub_22B35DE0C();
  LOBYTE(v93) = sub_22B35DDEC();
  v99 = *(v97 + 8);
  v99(v94, v96);
  v99(v95, v96);
  v101 = *(v0 + 488);
  v100 = *(v0 + 496);
  v102 = *(v0 + 480);
  v103 = *(v0 + 328);
  v104 = *(v0 + 280);
  if ((v93 & 1) == 0)
  {
    v122 = *(v0 + 368);
    v123 = *(v0 + 232);

    v101(v122, v102, v103);
    sub_22B1CA1F0(v104, v123, type metadata accessor for CDUsageSummaryRecords);
    v124 = sub_22B36050C();
    v125 = sub_22B360D2C();
    v126 = os_log_type_enabled(v124, v125);
    v127 = *(v0 + 504);
    v128 = *(v0 + 368);
    v129 = *(v0 + 328);
    v130 = *(v0 + 336);
    v131 = *(v0 + 232);
    if (v126)
    {
      v132 = *(v0 + 184);
      v133 = swift_slowAlloc();
      v271 = v127;
      v134 = swift_slowAlloc();
      v280[0] = v134;
      *v133 = 136315138;
      v135 = (v131 + *(v132 + 60));
      v136 = *v135;
      v137 = v135[1];

      sub_22B1CA258(v131, type metadata accessor for CDUsageSummaryRecords);
      v138 = sub_22B1A7B20(v136, v137, v280);

      *(v133 + 4) = v138;
      _os_log_impl(&dword_22B116000, v124, v125, "[AMIProcessor] Not asking for resend of missing data for usage summary %s to avoid flooding server", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v134);
      MEMORY[0x23188F650](v134, -1, -1);
      MEMORY[0x23188F650](v133, -1, -1);

      v271(v128, v129);
    }

    else
    {

      sub_22B1CA258(v131, type metadata accessor for CDUsageSummaryRecords);
      v127(v128, v129);
    }

    goto LABEL_26;
  }

  v105 = *(v0 + 240);
  v101(*(v0 + 376), *(v0 + 480), *(v0 + 328));
  sub_22B1CA1F0(v104, v105, type metadata accessor for CDUsageSummaryRecords);
  v106 = sub_22B36050C();
  v107 = sub_22B360D2C();
  v108 = os_log_type_enabled(v106, v107);
  v109 = *(v0 + 504);
  v110 = *(v0 + 376);
  v112 = *(v0 + 328);
  v111 = *(v0 + 336);
  v113 = *(v0 + 240);
  if (v108)
  {
    v270 = v57;
    v114 = *(v0 + 184);
    v259 = *(v0 + 504);
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v280[0] = v116;
    *v115 = 136315138;
    v117 = (v113 + *(v114 + 60));
    v118 = *v117;
    v119 = v117[1];

    sub_22B1CA258(v113, type metadata accessor for CDUsageSummaryRecords);
    v120 = v118;
    v57 = v270;
    v121 = sub_22B1A7B20(v120, v119, v280);

    *(v115 + 4) = v121;
    _os_log_impl(&dword_22B116000, v106, v107, "[AMIProcessor] Asking for resend of missing data for usage summary %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x23188F650](v116, -1, -1);
    MEMORY[0x23188F650](v115, -1, -1);

    v259(v110, v112);
  }

  else
  {

    sub_22B1CA258(v113, type metadata accessor for CDUsageSummaryRecords);
    v109(v110, v112);
  }

  v139 = *(v0 + 832);
  v140 = *(v0 + 828);
  v141 = *(v0 + 552);
  v142 = *(v0 + 536);
  v143 = *(v0 + 280);
  v144 = swift_task_alloc();
  *(v0 + 800) = v144;
  *v144 = v0;
  v144[1] = sub_22B1C8678;
  v145 = *(v0 + 544);
  v146 = *(v0 + 528);
  v147 = *(v0 + 120);

  return sub_22B1C3C6C(v277, v57, v146, v142, v145, v141, v143 + v140, v143 + v139);
}

uint64_t sub_22B1C8678(char a1)
{
  v2 = *(*v1 + 800);
  v3 = *(*v1 + 792);
  v5 = *v1;
  *(*v1 + 843) = a1;

  return MEMORY[0x2822009F8](sub_22B1C8798, 0, 0);
}

uint64_t sub_22B1C8798()
{
  v99 = v0;
  if (*(v0 + 843))
  {
    v1 = *(v0 + 552);
    v2 = *(v0 + 536);
    v3 = (*(v0 + 280) + *(*(v0 + 184) + 64));
    v4 = *v3;
    v5 = v3[1];
    v6 = swift_task_alloc();
    *(v0 + 808) = v6;
    *v6 = v0;
    v6[1] = sub_22B1C8F58;
    v7 = *(v0 + 584);
    v8 = *(v0 + 544);
    v9 = *(v0 + 528);

    return sub_22B1D6B94(v9, v2, v8, v1, v4, v5);
  }

  else
  {
    v11 = *(v0 + 496);
    v12 = *(v0 + 280);
    v14 = *(v0 + 200);
    v13 = *(v0 + 208);
    (*(v0 + 488))(*(v0 + 352), *(v0 + 480), *(v0 + 328));
    sub_22B1CA1F0(v12, v13, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA1F0(v12, v14, type metadata accessor for CDUsageSummaryRecords);
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 632);
      v94 = *(v0 + 352);
      v96 = *(v0 + 504);
      v18 = *(v0 + 208);
      v19 = *(v0 + 184);
      v86 = v19;
      v88 = *(v0 + 200);
      v20 = *(v0 + 712) - *(v0 + 704);
      v91 = *(v0 + 336) + 8;
      v93 = *(v0 + 328);
      v21 = *(v0 + 128);
      v22 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v98 = v90;
      *v22 = 134218754;
      *(v22 + 4) = v20;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v17;
      *(v22 + 22) = 2080;
      v23 = *(v19 + 44);
      sub_22B1CA150();
      v24 = sub_22B36131C();
      v26 = v25;
      sub_22B1CA258(v18, type metadata accessor for CDUsageSummaryRecords);
      v27 = sub_22B1A7B20(v24, v26, &v98);

      *(v22 + 24) = v27;
      *(v22 + 32) = 2080;
      v28 = v88 + *(v86 + 28);
      v29 = sub_22B36131C();
      v31 = v30;
      sub_22B1CA258(v88, type metadata accessor for CDUsageSummaryRecords);
      v32 = sub_22B1A7B20(v29, v31, &v98);

      *(v22 + 34) = v32;
      _os_log_impl(&dword_22B116000, v15, v16, "[AMIProcessor] Processed Interval Readings(value: %f for usage summary(value:%f) %s-%s", v22, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v90, -1, -1);
      MEMORY[0x23188F650](v22, -1, -1);

      v96(v94, v93);
    }

    else
    {
      v33 = *(v0 + 504);
      v34 = *(v0 + 352);
      v35 = *(v0 + 328);
      v36 = *(v0 + 336);
      v38 = *(v0 + 200);
      v37 = *(v0 + 208);

      sub_22B1CA258(v38, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA258(v37, type metadata accessor for CDUsageSummaryRecords);
      v33(v34, v35);
    }

    v39 = *(v0 + 608);
    v40 = *(v0 + 624) + 1;
    v41 = sub_22B1CA258(*(v0 + 280), type metadata accessor for CDUsageSummaryRecords);
    if (v40 == v39)
    {
      v44 = *(v0 + 592);
      v45 = *(v0 + 552);
      v46 = *(v0 + 536);

      v47 = *(v0 + 520);
      v48 = swift_task_alloc();
      *(v0 + 816) = v48;
      *v48 = v0;
      v48[1] = sub_22B1C9758;
      v49 = *(v0 + 120);

      return sub_22B1B7BB4(v47, 1);
    }

    else
    {
      v50 = *(v0 + 696);
      v51 = *(v0 + 624) + 1;
      *(v0 + 624) = v51;
      *(v0 + 616) = v50;
      v52 = *(v0 + 592);
      if (v51 >= *(v52 + 16))
      {
        __break(1u);
      }

      else
      {
        v53 = *(v0 + 488);
        v54 = *(v0 + 496);
        v55 = *(v0 + 480);
        v56 = *(v0 + 424);
        v57 = *(v0 + 328);
        v59 = *(v0 + 272);
        v58 = *(v0 + 280);
        v97 = *(v0 + 264);
        v60 = *(v0 + 112);
        sub_22B1CA1F0(v52 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(*(v0 + 192) + 72) * v51, v58, type metadata accessor for CDUsageSummaryRecords);
        v53(v56, v55, v57);
        sub_22B1CA1F0(v58, v59, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA1F0(v58, v97, type metadata accessor for CDUsageSummaryRecords);

        v61 = sub_22B36050C();
        v62 = sub_22B360D2C();

        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 504);
        v65 = *(v0 + 424);
        v67 = *(v0 + 328);
        v66 = *(v0 + 336);
        v69 = *(v0 + 264);
        v68 = *(v0 + 272);
        if (v63)
        {
          v92 = v62;
          v70 = *(v0 + 184);
          v71 = *(v0 + 128);
          v87 = *(v0 + 112);
          v85 = *(v0 + 104);
          v95 = *(v0 + 328);
          v72 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v98 = v89;
          *v72 = 136315650;
          v73 = *(v70 + 44);
          sub_22B1CA150();
          v74 = sub_22B36131C();
          v76 = v75;
          sub_22B1CA258(v68, type metadata accessor for CDUsageSummaryRecords);
          v77 = sub_22B1A7B20(v74, v76, &v98);

          *(v72 + 4) = v77;
          *(v72 + 12) = 2080;
          v78 = v69 + *(v70 + 28);
          v79 = sub_22B36131C();
          v81 = v80;
          sub_22B1CA258(v69, type metadata accessor for CDUsageSummaryRecords);
          v82 = sub_22B1A7B20(v79, v81, &v98);

          *(v72 + 14) = v82;
          *(v72 + 22) = 2080;
          *(v72 + 24) = sub_22B1A7B20(v85, v87, &v98);
          _os_log_impl(&dword_22B116000, v61, v92, "[AMIProcessor] processing summary %s-%s for %s", v72, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v89, -1, -1);
          MEMORY[0x23188F650](v72, -1, -1);

          v64(v65, v95);
        }

        else
        {

          sub_22B1CA258(v69, type metadata accessor for CDUsageSummaryRecords);
          sub_22B1CA258(v68, type metadata accessor for CDUsageSummaryRecords);
          v64(v65, v67);
        }

        v83 = *(v0 + 280);
        v84 = *(v0 + 184);
        v42 = *(v0 + 560);
        *(v0 + 632) = *(v83 + v84[14]);
        *(v0 + 640) = *(v83 + v84[8]);
        *(v0 + 828) = v84[11];
        *(v0 + 832) = v84[7];
        v41 = sub_22B1C5FF8;
        v43 = 0;
      }

      return MEMORY[0x2822009F8](v41, v42, v43);
    }
  }
}

uint64_t sub_22B1C8F58()
{
  v1 = *(*v0 + 808);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1C9054, 0, 0);
}

uint64_t sub_22B1C9054()
{
  v90 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 280);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  (*(v0 + 488))(*(v0 + 352), *(v0 + 480), *(v0 + 328));
  sub_22B1CA1F0(v2, v3, type metadata accessor for CDUsageSummaryRecords);
  sub_22B1CA1F0(v2, v4, type metadata accessor for CDUsageSummaryRecords);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 632);
    v85 = *(v0 + 352);
    v87 = *(v0 + 504);
    v8 = *(v0 + 208);
    v9 = *(v0 + 184);
    v77 = v9;
    v79 = *(v0 + 200);
    v10 = *(v0 + 712) - *(v0 + 704);
    v82 = *(v0 + 336) + 8;
    v84 = *(v0 + 328);
    v11 = *(v0 + 128);
    v12 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v89 = v81;
    *v12 = 134218754;
    *(v12 + 4) = v10;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;
    *(v12 + 22) = 2080;
    v13 = *(v9 + 44);
    sub_22B1CA150();
    v14 = sub_22B36131C();
    v16 = v15;
    sub_22B1CA258(v8, type metadata accessor for CDUsageSummaryRecords);
    v17 = sub_22B1A7B20(v14, v16, &v89);

    *(v12 + 24) = v17;
    *(v12 + 32) = 2080;
    v18 = v79 + *(v77 + 28);
    v19 = sub_22B36131C();
    v21 = v20;
    sub_22B1CA258(v79, type metadata accessor for CDUsageSummaryRecords);
    v22 = sub_22B1A7B20(v19, v21, &v89);

    *(v12 + 34) = v22;
    _os_log_impl(&dword_22B116000, v5, v6, "[AMIProcessor] Processed Interval Readings(value: %f for usage summary(value:%f) %s-%s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v81, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v87(v85, v84);
  }

  else
  {
    v23 = *(v0 + 504);
    v24 = *(v0 + 352);
    v25 = *(v0 + 328);
    v26 = *(v0 + 336);
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);

    sub_22B1CA258(v28, type metadata accessor for CDUsageSummaryRecords);
    sub_22B1CA258(v27, type metadata accessor for CDUsageSummaryRecords);
    v23(v24, v25);
  }

  v29 = *(v0 + 608);
  v30 = *(v0 + 624) + 1;
  v31 = sub_22B1CA258(*(v0 + 280), type metadata accessor for CDUsageSummaryRecords);
  if (v30 == v29)
  {
    v34 = *(v0 + 592);
    v35 = *(v0 + 552);
    v36 = *(v0 + 536);

    v37 = *(v0 + 520);
    v38 = swift_task_alloc();
    *(v0 + 816) = v38;
    *v38 = v0;
    v38[1] = sub_22B1C9758;
    v39 = *(v0 + 120);

    return sub_22B1B7BB4(v37, 1);
  }

  else
  {
    v41 = *(v0 + 696);
    v42 = *(v0 + 624) + 1;
    *(v0 + 624) = v42;
    *(v0 + 616) = v41;
    v43 = *(v0 + 592);
    if (v42 >= *(v43 + 16))
    {
      __break(1u);
    }

    else
    {
      v44 = *(v0 + 488);
      v45 = *(v0 + 496);
      v46 = *(v0 + 480);
      v47 = *(v0 + 424);
      v48 = *(v0 + 328);
      v50 = *(v0 + 272);
      v49 = *(v0 + 280);
      v88 = *(v0 + 264);
      v51 = *(v0 + 112);
      sub_22B1CA1F0(v43 + ((*(v0 + 824) + 32) & ~*(v0 + 824)) + *(*(v0 + 192) + 72) * v42, v49, type metadata accessor for CDUsageSummaryRecords);
      v44(v47, v46, v48);
      sub_22B1CA1F0(v49, v50, type metadata accessor for CDUsageSummaryRecords);
      sub_22B1CA1F0(v49, v88, type metadata accessor for CDUsageSummaryRecords);

      v52 = sub_22B36050C();
      v53 = sub_22B360D2C();

      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 504);
      v56 = *(v0 + 424);
      v58 = *(v0 + 328);
      v57 = *(v0 + 336);
      v60 = *(v0 + 264);
      v59 = *(v0 + 272);
      if (v54)
      {
        v83 = v53;
        v61 = *(v0 + 184);
        v62 = *(v0 + 128);
        v78 = *(v0 + 112);
        v76 = *(v0 + 104);
        v86 = *(v0 + 328);
        v63 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v89 = v80;
        *v63 = 136315650;
        v64 = *(v61 + 44);
        sub_22B1CA150();
        v65 = sub_22B36131C();
        v67 = v66;
        sub_22B1CA258(v59, type metadata accessor for CDUsageSummaryRecords);
        v68 = sub_22B1A7B20(v65, v67, &v89);

        *(v63 + 4) = v68;
        *(v63 + 12) = 2080;
        v69 = v60 + *(v61 + 28);
        v70 = sub_22B36131C();
        v72 = v71;
        sub_22B1CA258(v60, type metadata accessor for CDUsageSummaryRecords);
        v73 = sub_22B1A7B20(v70, v72, &v89);

        *(v63 + 14) = v73;
        *(v63 + 22) = 2080;
        *(v63 + 24) = sub_22B1A7B20(v76, v78, &v89);
        _os_log_impl(&dword_22B116000, v52, v83, "[AMIProcessor] processing summary %s-%s for %s", v63, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v80, -1, -1);
        MEMORY[0x23188F650](v63, -1, -1);

        v55(v56, v86);
      }

      else
      {

        sub_22B1CA258(v60, type metadata accessor for CDUsageSummaryRecords);
        sub_22B1CA258(v59, type metadata accessor for CDUsageSummaryRecords);
        v55(v56, v58);
      }

      v74 = *(v0 + 280);
      v75 = *(v0 + 184);
      v32 = *(v0 + 560);
      *(v0 + 632) = *(v74 + v75[14]);
      *(v0 + 640) = *(v74 + v75[8]);
      *(v0 + 828) = v75[11];
      *(v0 + 832) = v75[7];
      v31 = sub_22B1C5FF8;
      v33 = 0;
    }

    return MEMORY[0x2822009F8](v31, v32, v33);
  }
}

uint64_t sub_22B1C9758()
{
  v1 = *(*v0 + 816);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22B1C9860, 0, 0);
}

uint64_t sub_22B1C9860()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);
  v9 = *(v0 + 432);
  v8 = *(v0 + 440);
  v11 = *(v0 + 416);
  v10 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 408);
  v16 = *(v0 + 392);
  v17 = *(v0 + 384);
  v18 = *(v0 + 376);
  v19 = *(v0 + 368);
  v20 = *(v0 + 360);
  v21 = *(v0 + 352);
  v22 = *(v0 + 344);
  v23 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = *(v0 + 288);
  v26 = *(v0 + 280);
  v27 = *(v0 + 272);
  v28 = *(v0 + 264);
  v29 = *(v0 + 256);
  v30 = *(v0 + 248);
  v31 = *(v0 + 240);
  v32 = *(v0 + 232);
  v33 = *(v0 + 224);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v36 = *(v0 + 200);
  v37 = *(v0 + 176);
  v38 = *(v0 + 152);
  v39 = *(v0 + 144);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B1C9A90()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  v40 = *(v0 + 576);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v9 = *(v0 + 432);
  v8 = *(v0 + 440);
  v11 = *(v0 + 416);
  v10 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 408);
  v16 = *(v0 + 392);
  v17 = *(v0 + 384);
  v18 = *(v0 + 376);
  v19 = *(v0 + 368);
  v20 = *(v0 + 360);
  v21 = *(v0 + 352);
  v22 = *(v0 + 344);
  v23 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = *(v0 + 288);
  v26 = *(v0 + 280);
  v27 = *(v0 + 272);
  v28 = *(v0 + 264);
  v29 = *(v0 + 256);
  v30 = *(v0 + 248);
  v31 = *(v0 + 240);
  v32 = *(v0 + 232);
  v33 = *(v0 + 224);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v36 = *(v0 + 200);
  v37 = *(v0 + 176);
  v38 = *(v0 + 152);
  v39 = *(v0 + 144);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B1C9CC4()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  v40 = *(v0 + 600);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v7 = *(v0 + 448);
  v6 = *(v0 + 456);
  v9 = *(v0 + 432);
  v8 = *(v0 + 440);
  v11 = *(v0 + 416);
  v10 = *(v0 + 424);
  v12 = *(v0 + 400);
  v13 = *(v0 + 408);
  v16 = *(v0 + 392);
  v17 = *(v0 + 384);
  v18 = *(v0 + 376);
  v19 = *(v0 + 368);
  v20 = *(v0 + 360);
  v21 = *(v0 + 352);
  v22 = *(v0 + 344);
  v23 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = *(v0 + 288);
  v26 = *(v0 + 280);
  v27 = *(v0 + 272);
  v28 = *(v0 + 264);
  v29 = *(v0 + 256);
  v30 = *(v0 + 248);
  v31 = *(v0 + 240);
  v32 = *(v0 + 232);
  v33 = *(v0 + 224);
  v34 = *(v0 + 216);
  v35 = *(v0 + 208);
  v36 = *(v0 + 200);
  v37 = *(v0 + 176);
  v38 = *(v0 + 152);
  v39 = *(v0 + 144);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_22B1C9EF8()
{
  v1 = *(v0 + 6);

  v2 = OBJC_IVAR____TtC16HomeEnergyDaemon19AMIRecordsProcessor_sharedEKSignPoster;
  v3 = sub_22B3604AC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AMIRecordsProcessor()
{
  result = qword_27D8BA610;
  if (!qword_27D8BA610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B1C9FF0()
{
  result = sub_22B3604AC();
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

void sub_22B1CA118(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_22B1CA150()
{
  result = qword_28140B488;
  if (!qword_28140B488)
  {
    sub_22B35DE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140B488);
  }

  return result;
}

uint64_t sub_22B1CA1F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22B1CA258(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22B1CA368@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 recordID];
  v4 = [v3 recordName];

  v5 = sub_22B36084C();
  v7 = v6;

  v8 = 0xF000000000000000;
  if (MEMORY[0x23188E890](0x64616F6C796170, 0xE700000000000000))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA638, &qword_22B365708);
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = v14;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v8 = v15;
    }
  }

  else
  {
    v10 = 0;
  }

  result = MEMORY[0x23188E890](0x6E496D6F74737563, 0xEB00000000786564);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA638, &qword_22B365708);
    result = swift_dynamicCast();
    v12 = v14;
    v13 = v15;
    if (!result)
    {
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v8;
  a2[4] = v12;
  a2[5] = v13;
  return result;
}

uint64_t sub_22B1CA4D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  ObjectType = swift_getObjectType();
  v12 = *(a2 + 16);
  swift_unknownObjectRetain();
  if (v12(ObjectType, a2))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_28140BD10);
    swift_beginAccess();
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22B116000, v14, v15, "KVS failed to synchronize", v16, 2u);
      MEMORY[0x23188F650](v16, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(v10, v6);
  }

  return v3;
}

uint64_t sub_22B1CA700()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22B1CA75C(char *a1)
{
  v2 = sub_22B36089C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v105 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  MEMORY[0x28223BE20](v15);
  v103 = &v94 - v16;
  MEMORY[0x28223BE20](v17);
  v101 = &v94 - v18;
  MEMORY[0x28223BE20](v19);
  v100 = &v94 - v20;
  MEMORY[0x28223BE20](v21);
  v102 = &v94 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - v24;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  v106 = v6;
  v27 = *(v6 + 16);
  v27(v25, v26, v5);
  v28 = sub_22B36050C();
  v29 = sub_22B360D2C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v99 = v9;
    v31 = v26;
    v32 = v27;
    v33 = a1;
    v34 = v5;
    v35 = v30;
    *v30 = 0;
    _os_log_impl(&dword_22B116000, v28, v29, "[ShareManager] Received Share Message", v30, 2u);
    v36 = v35;
    v5 = v34;
    a1 = v33;
    v27 = v32;
    v26 = v31;
    v9 = v99;
    MEMORY[0x23188F650](v36, -1, -1);
  }

  v37 = *(v106 + 8);
  v37(v25, v5);
  if (!*(a1 + 2) || (v38 = sub_22B33B28C(0x67617373654D4B45, 0xED00006570795465), (v39 & 1) == 0))
  {
    v27(v9, v26, v5);
    v45 = sub_22B36050C();
    v46 = sub_22B360D1C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = v9;
      v48 = v5;
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_22B116000, v45, v46, "[ShareManager] Failed to decode messageTypeData", v49, 2u);
      MEMORY[0x23188F650](v49, -1, -1);
      goto LABEL_13;
    }

    v50 = v9;
    goto LABEL_15;
  }

  v99 = a1;
  v40 = (*(a1 + 7) + 16 * v38);
  v41 = *v40;
  v42 = v40[1];
  sub_22B144B30(*v40, v42);
  sub_22B36088C();
  v106 = v41;
  v43 = sub_22B36086C();
  if (!v44)
  {
    v14 = v104;
    v27(v104, v26, v5);
    v52 = sub_22B36050C();
    v53 = sub_22B360D2C();
    if (os_log_type_enabled(v52, v53))
    {
      v48 = v5;
      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "[ShareManager] Failed to decode messageType";
      goto LABEL_30;
    }

    sub_22B12F174(v106, v42);

    v50 = v14;
LABEL_15:
    v51 = v5;
    return (v37)(v50, v51);
  }

  v104 = v5;
  if (v43 != 0x617469766E494B45 || v44 != 0xEC0000006E6F6974)
  {
    v56 = sub_22B36134C();

    if (v56)
    {
      goto LABEL_19;
    }

    v48 = v104;
    v27(v14, v26, v104);
    v52 = sub_22B36050C();
    v53 = sub_22B360D2C();
    if (!os_log_type_enabled(v52, v53))
    {
LABEL_31:
      sub_22B12F174(v106, v42);

      v50 = v14;
      goto LABEL_32;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "[ShareManager] Received unknown message";
LABEL_30:
    _os_log_impl(&dword_22B116000, v52, v53, v55, v54, 2u);
    MEMORY[0x23188F650](v54, -1, -1);
    goto LABEL_31;
  }

LABEL_19:
  v57 = v99;
  if (!*(v99 + 2) || (v58 = sub_22B33B28C(0xD000000000000017, 0x800000022B36C120), (v59 & 1) == 0))
  {
    v76 = v103;
    v48 = v104;
    v27(v103, v26, v104);
    v45 = sub_22B36050C();
    v77 = sub_22B360D2C();
    if (!os_log_type_enabled(v45, v77))
    {
      sub_22B12F174(v106, v42);

      v50 = v76;
      goto LABEL_32;
    }

    v47 = v76;
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_22B116000, v45, v77, "[ShareManager] Received Invalid Invite message", v78, 2u);
    MEMORY[0x23188F650](v78, -1, -1);
    sub_22B12F174(v106, v42);
LABEL_13:

    v50 = v47;
LABEL_32:
    v51 = v48;
    return (v37)(v50, v51);
  }

  v60 = (*(v57 + 7) + 16 * v58);
  v61 = *v60;
  v62 = v60[1];
  sub_22B144B30(*v60, v62);
  sub_22B36088C();
  v98 = v61;
  v103 = v62;
  v63 = sub_22B36086C();
  v64 = v104;
  v105 = v65;
  if (!v65)
  {
    v80 = v101;
    v27(v101, v26, v104);
    v81 = sub_22B36050C();
    v82 = sub_22B360D2C();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_22B116000, v81, v82, "[ShareManager] Failed to decode shareURLData", v83, 2u);
      MEMORY[0x23188F650](v83, -1, -1);
    }

LABEL_36:
    sub_22B12F174(v98, v103);
    sub_22B12F174(v106, v42);

    v50 = v80;
    v51 = v64;
    return (v37)(v50, v51);
  }

  v101 = v63;
  v66 = v102;
  v97 = v27;
  v27(v102, v26, v104);

  v67 = sub_22B36050C();
  v68 = sub_22B360D2C();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v96 = v42;
    v70 = v69;
    v95 = swift_slowAlloc();
    v107 = v95;
    *v70 = 136315138;
    v71 = sub_22B3606FC();
    v73 = sub_22B1A7B20(v71, v72, &v107);

    *(v70 + 4) = v73;
    _os_log_impl(&dword_22B116000, v67, v68, "[ShareManager] Received Invite message %s", v70, 0xCu);
    v74 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    v64 = v104;
    MEMORY[0x23188F650](v74, -1, -1);
    v75 = v70;
    v42 = v96;
    MEMORY[0x23188F650](v75, -1, -1);
  }

  v37(v66, v64);
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v84 = [*(qword_28140BCF0 + 16) options];
  v85 = [v84 isServiceManatee];

  if (v85)
  {
    v86 = v99;
    if (*(v99 + 2))
    {
      v87 = sub_22B33B28C(0xD000000000000019, 0x800000022B36C140);
      if (v88)
      {
        v89 = (*(v86 + 7) + 16 * v87);
        v90 = *v89;
        v91 = v89[1];
        sub_22B144B30(*v89, v91);
        sub_22B1CB268(v101, v105, v90, v91);
        sub_22B12F174(v98, v103);
        sub_22B12F174(v106, v42);

        return sub_22B12F174(v90, v91);
      }
    }

    v80 = v100;
    v97(v100, v26, v64);
    v81 = sub_22B36050C();
    v92 = sub_22B360D2C();
    if (os_log_type_enabled(v81, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_22B116000, v81, v92, "[ShareManager] Failed to decode invitationData", v93, 2u);
      MEMORY[0x23188F650](v93, -1, -1);
    }

    goto LABEL_36;
  }

  sub_22B1CBCF4();
  sub_22B12F174(v98, v103);
  sub_22B12F174(v106, v42);
}

uint64_t sub_22B1CB268(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v75 = a4;
  v73 = a3;
  v4 = sub_22B3605EC();
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22B36062C();
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B36052C();
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v22 = sub_22B35DC4C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = [objc_allocWithZone(MEMORY[0x277CBC3F8]) init];
  sub_22B35DC2C();
  v27 = *(v23 + 48);
  if (v27(v21, 1, v22) == 1)
  {
    sub_22B123284(v21, &qword_27D8BA640, &qword_22B366A50);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v28 = v83;
    v29 = __swift_project_value_buffer(v83, qword_28140BD10);
    swift_beginAccess();
    v30 = v82;
    (*(v82 + 16))(v12, v29, v28);
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22B116000, v31, v32, "[ShareManager] Failed to extract share metadata from invitation. Declining the invitation.", v33, 2u);
      MEMORY[0x23188F650](v33, -1, -1);
    }

    return (*(v30 + 8))(v12, v28);
  }

  else
  {
    v72 = v4;
    (*(v23 + 32))(v26, v21, v22);
    v71 = *(v23 + 16);
    v71(v18, v26, v22);
    (*(v23 + 56))(v18, 0, 1, v22);
    v35 = sub_22B35DCCC();
    v36 = v27(v18, 1, v22);
    v75 = v26;
    if (v36 == 1)
    {
      v37 = 0;
    }

    else
    {
      v37 = sub_22B35DBDC();
      (*(v23 + 8))(v18, v22);
    }

    v38 = [objc_allocWithZone(MEMORY[0x277CBC2C0]) initWithSharingInvitationData:v35 shareURL:v37];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA648, &qword_22B365740);
    v39 = *(v23 + 72);
    v73 = v23;
    v40 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v41 = swift_allocObject();
    v70 = xmmword_22B3634B0;
    *(v41 + 16) = xmmword_22B3634B0;
    v42 = v75;
    v43 = v71;
    v71((v41 + v40), v75, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA650, &qword_22B365748);
    v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA658, &qword_22B365750) - 8);
    v45 = *(*v44 + 72);
    v46 = (*(*v44 + 80) + 32) & ~*(*v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v70;
    v48 = v47 + v46;
    v49 = v44[14];
    v43(v48, v42, v22);
    *(v48 + v49) = v38;
    v71 = v38;
    sub_22B3225C8(v47);
    swift_setDeallocating();
    sub_22B123284(v48, &qword_27D8BA658, &qword_22B365750);
    swift_deallocClassInstance();
    v50 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
    v51 = sub_22B360A3C();

    sub_22B128014(0, &qword_27D8BA660, 0x277CBC2C0);
    sub_22B1CCC10(&qword_27D8BA668, MEMORY[0x277CC9260]);
    v52 = sub_22B3606CC();

    v53 = [v50 initWithShareURLs:v51 invitationTokensByShareURL:v52];

    v54 = qword_28140A0C8;
    v55 = v53;
    if (v54 != -1)
    {
      swift_once();
    }

    v56 = v83;
    v57 = __swift_project_value_buffer(v83, qword_28140BD10);
    swift_beginAccess();
    v58 = v82;
    v59 = v74;
    (*(v82 + 16))(v74, v57, v56);
    v60 = sub_22B36050C();
    v61 = sub_22B360D2C();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v72;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_22B116000, v60, v61, "[ShareManager] Processing Invitation", v64, 2u);
      MEMORY[0x23188F650](v64, -1, -1);
    }

    (*(v58 + 8))(v59, v56);

    sub_22B360F3C();
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v65 = sub_22B360D9C();
    v66 = swift_allocObject();
    *(v66 + 16) = v55;
    aBlock[4] = sub_22B1CD024;
    aBlock[5] = v66;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B118A6C;
    aBlock[3] = &block_descriptor_13;
    v67 = _Block_copy(aBlock);

    v68 = v76;
    sub_22B36060C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22B1CCC10(&qword_281409370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    v69 = v78;
    sub_22B36104C();
    MEMORY[0x23188E6D0](0, v68, v69, v67);

    _Block_release(v67);
    (*(v80 + 8))(v69, v63);
    (*(v77 + 8))(v68, v79);
    return (*(v73 + 8))(v75, v22);
  }
}

uint64_t sub_22B1CBCF4()
{
  v0 = sub_22B3605EC();
  v55 = *(v0 - 8);
  v56 = v0;
  v1 = *(v55 + 64);
  MEMORY[0x28223BE20](v0);
  v53 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22B36062C();
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B36052C();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA640, &qword_22B366A50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - v14;
  v16 = sub_22B35DC4C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(MEMORY[0x277CBC3F8]) init];
  sub_22B35DC2C();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_22B123284(v15, &qword_27D8BA640, &qword_22B366A50);
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v22 = v58;
    v23 = __swift_project_value_buffer(v58, qword_28140BD10);
    swift_beginAccess();
    v24 = v57;
    (*(v57 + 16))(v8, v23, v22);
    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B116000, v25, v26, "[ShareManager] Failed to extract share metadata from invitation. Declining the invitation.", v27, 2u);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    return (*(v24 + 8))(v8, v22);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA648, &qword_22B365740);
    v29 = *(v17 + 72);
    v30 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_22B3634B0;
    v32 = *(v17 + 16);
    v50 = v20;
    v32(v31 + v30, v20, v16);
    v33 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
    v34 = sub_22B360A3C();

    v35 = [v33 initWithShareURLs_];

    v36 = qword_28140A0C8;
    v37 = v35;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = v58;
    v39 = __swift_project_value_buffer(v58, qword_28140BD10);
    swift_beginAccess();
    v40 = v57;
    (*(v57 + 16))(v11, v39, v38);
    v41 = sub_22B36050C();
    v42 = sub_22B360D2C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22B116000, v41, v42, "[ShareManager] Processing Invitation", v43, 2u);
      MEMORY[0x23188F650](v43, -1, -1);
    }

    (*(v40 + 8))(v11, v38);

    sub_22B360F3C();
    sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
    v44 = sub_22B360D9C();
    v45 = swift_allocObject();
    *(v45 + 16) = v37;
    aBlock[4] = sub_22B1CD024;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B118A6C;
    aBlock[3] = &block_descriptor_12;
    v46 = _Block_copy(aBlock);

    v47 = v51;
    sub_22B36060C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22B1CCC10(&qword_281409370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
    sub_22B124A3C();
    v48 = v53;
    v49 = v56;
    sub_22B36104C();
    MEMORY[0x23188E6D0](0, v47, v48, v46);

    _Block_release(v46);
    (*(v55 + 8))(v48, v49);
    (*(v52 + 8))(v47, v54);
    return (*(v17 + 8))(v50, v16);
  }
}

uint64_t sub_22B1CC4B8(uint64_t a1, void *a2, char a3)
{
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v28 - v11;
  if (a3)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v9, v13, v5);
    v14 = a2;
    v15 = sub_22B36050C();
    v16 = sub_22B360D1C();
    sub_22B1CCC58(a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[1] = a2;
      v29 = v18;
      *v17 = 136446210;
      v19 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v20 = sub_22B3608BC();
      v22 = sub_22B1A7B20(v20, v21, &v29);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_22B116000, v15, v16, "[ShareManager] Failed to fetch share metadata: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23188F650](v18, -1, -1);
      MEMORY[0x23188F650](v17, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v5, qword_28140BD10);
    swift_beginAccess();
    (*(v6 + 16))(v12, v24, v5);
    v25 = sub_22B36050C();
    v26 = sub_22B360D0C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B116000, v25, v26, "[ShareManager] Successfully fetched share metadata", v27, 2u);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    return sub_22B1CCC64(a2);
  }
}

uint64_t sub_22B1CC820(void *a1, char a2)
{
  v4 = sub_22B36052C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  if (a2)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v8, v12, v4);
    v13 = a1;
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    sub_22B1CD010(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[1] = a1;
      v28 = v17;
      *v16 = 136446210;
      v18 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
      v19 = sub_22B3608BC();
      v21 = sub_22B1A7B20(v19, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_22B116000, v14, v15, "[ShareManager] Failed to accept share: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23188F650](v17, -1, -1);
      MEMORY[0x23188F650](v16, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_28140BD10);
    swift_beginAccess();
    (*(v5 + 16))(v11, v23, v4);
    v24 = sub_22B36050C();
    v25 = sub_22B360D2C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B116000, v24, v25, "[ShareManager] Successfully accepted share", v26, 2u);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }
}

id sub_22B1CCB78(uint64_t a1)
{
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v2 = *(qword_28140BCF0 + 16);

  return [v2 addOperation_];
}

uint64_t sub_22B1CCC10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B1CCC64(void *a1)
{
  v2 = sub_22B3605EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22B36062C();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22B363650;
  *(v11 + 32) = a1;
  v12 = objc_allocWithZone(MEMORY[0x277CBC158]);
  sub_22B128014(0, &qword_27D8BA670, 0x277CBC698);
  v13 = a1;
  v14 = sub_22B360A3C();

  v15 = [v12 initWithShareMetadatas_];

  v16 = v15;
  [v16 setQualityOfService_];
  sub_22B360EAC();
  sub_22B128014(0, &qword_2814092E0, 0x277D85C78);
  v17 = sub_22B360D9C();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  aBlock[4] = sub_22B1CCFF4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);

  sub_22B36060C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B1CCC10(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v10, v6, v19);

  _Block_release(v19);
  (*(v3 + 8))(v6, v2);
  return (*(v7 + 8))(v10, v22);
}

void sub_22B1CD010(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_22B1CD034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_22B35E04C();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_22B35E02C();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = sub_22B35DE9C();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v14 = sub_22B36052C();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1CD218, v3, 0);
}

uint64_t sub_22B1CD218()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Purging old historical guidance", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v8 = v5;
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v26 = v0[21];
  v27 = v0[19];
  v12 = v0[17];
  v28 = v0[18];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[12];
  v29 = v0[11];
  v30 = v0[20];
  v24 = v14;
  v25 = v0[10];

  (*(v10 + 8))(v9, v11);
  (*(v13 + 104))(v12, *MEMORY[0x277CC9988], v14);
  v18 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
  swift_beginAccess();
  v19 = *(v15 + 16);
  v19(v16, v29 + v18, v17);
  sub_22B35F60C();
  v20 = *(v15 + 8);
  v20(v16, v17);
  (*(v13 + 8))(v12, v24);
  v19(v16, v29 + v18, v17);
  sub_22B35F53C();
  v20(v16, v17);
  v21 = *(v27 + 8);
  v0[25] = v21;
  v0[26] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v30, v28);
  if (qword_281408750 != -1)
  {
    swift_once();
  }

  v22 = qword_28140BC30;
  v0[27] = qword_28140BC30;

  return MEMORY[0x2822009F8](sub_22B1CD51C, v22, 0);
}

uint64_t sub_22B1CD51C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  *(v0 + 224) = sub_22B320EF0(*(v0 + 168), *(v0 + 64), *(v0 + 72)) & 1;

  return MEMORY[0x2822009F8](sub_22B1CD598, v2, 0);
}

uint64_t sub_22B1CD598()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  (*(v0 + 200))(*(v0 + 168), *(v0 + 144));

  v6 = *(v0 + 8);
  v7 = *(v0 + 224);

  return v6(v7);
}

uint64_t sub_22B1CD648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA3E8, &unk_22B364790) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_22B36052C();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = sub_22B35D8BC();
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v12 = sub_22B35E04C();
  v4[31] = v12;
  v13 = *(v12 - 8);
  v4[32] = v13;
  v14 = *(v13 + 64) + 15;
  v4[33] = swift_task_alloc();
  v15 = sub_22B35E02C();
  v4[34] = v15;
  v16 = *(v15 - 8);
  v4[35] = v16;
  v17 = *(v16 + 64) + 15;
  v4[36] = swift_task_alloc();
  v18 = sub_22B35DE9C();
  v4[37] = v18;
  v19 = *(v18 - 8);
  v4[38] = v19;
  v20 = *(v19 + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1CD938, v3, 0);
}

uint64_t sub_22B1CD938()
{
  if (qword_281408750 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC30;
  *(v0 + 352) = qword_28140BC30;

  return MEMORY[0x2822009F8](sub_22B1CD9D0, v1, 0);
}

uint64_t sub_22B1CD9D0()
{
  v1 = v0[44];
  v2 = v0[16];
  v0[45] = sub_22B321590(v0[13], v0[14]);

  return MEMORY[0x2822009F8](sub_22B1CDA44, v2, 0);
}

uint64_t sub_22B1CDA44()
{
  if (*(v0 + 360))
  {
    v58 = *(v0 + 344);
    v2 = *(v0 + 280);
    v1 = *(v0 + 288);
    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *MEMORY[0x277CC9968];
    v10 = *(v2 + 104);
    *(v0 + 368) = v10;
    *(v0 + 376) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10(v1, v9, v3);
    v11 = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    *(v0 + 384) = OBJC_IVAR____TtC16HomeEnergyDaemon29HistoricalGuidanceDataManager_calendar;
    swift_beginAccess();
    v12 = *(v6 + 16);
    *(v0 + 392) = v12;
    *(v0 + 400) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v4, v8 + v11, v5);
    sub_22B35F60C();
    v13 = *(v6 + 8);
    *(v0 + 408) = v13;
    *(v0 + 416) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v4, v5);
    v14 = *(v2 + 8);
    *(v0 + 424) = v14;
    *(v0 + 432) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v1, v3);
    v42 = *MEMORY[0x277CC9998];
    *(v0 + 592) = *MEMORY[0x277CC9998];
    *(v0 + 601) = 0;
    *(v0 + 440) = 0;
    v45 = *(v0 + 424);
    v46 = *(v0 + 432);
    v54 = *(v0 + 416);
    v16 = *(v0 + 392);
    v15 = *(v0 + 400);
    v17 = *(v0 + 384);
    v38 = *(v0 + 408);
    v39 = *(v0 + 368);
    v52 = *(v0 + 352);
    v37 = *(v0 + 344);
    v18 = *(v0 + 328);
    v41 = *(v0 + 336);
    v47 = *(v0 + 320);
    v50 = *(v0 + 312);
    v43 = *(v0 + 304);
    v44 = *(v0 + 296);
    v19 = *(v0 + 288);
    v20 = *(v0 + 264);
    v59 = *(v0 + 272);
    v21 = *(v0 + 248);
    v56 = *(v0 + 128);
    v16(v20, v56 + v17, v21);
    v40 = v16;
    sub_22B35F57C();
    v38(v20, v21);
    v39(v19, v42, v59);
    v16(v20, v56 + v17, v21);
    v22 = v18;
    sub_22B35F60C();
    v38(v20, v21);
    v45(v19, v59);
    v23 = *(v43 + 8);
    *(v0 + 448) = v23;
    *(v0 + 456) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v18, v44);
    v40(v20, v56 + v17, v21);
    sub_22B35F4FC();
    v38(v20, v21);
    v24 = *(v43 + 16);
    v24(v22, v41, v44);
    v24(v50, v47, v44);
    sub_22B35D88C();

    return MEMORY[0x2822009F8](sub_22B1CDEAC, v52, 0);
  }

  else
  {
    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v28 = *(v0 + 320);
    v27 = *(v0 + 328);
    v29 = *(v0 + 312);
    v30 = *(v0 + 288);
    v31 = *(v0 + 264);
    v32 = *(v0 + 232);
    v33 = *(v0 + 240);
    v34 = *(v0 + 224);
    v48 = *(v0 + 216);
    v49 = *(v0 + 192);
    v51 = *(v0 + 184);
    v53 = *(v0 + 176);
    v55 = *(v0 + 168);
    v57 = *(v0 + 144);
    v60 = *(v0 + 136);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_22B1CDEAC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 128);
  *(v0 + 602) = sub_22B31FD94(*(v0 + 104), *(v0 + 112), *(v0 + 240)) & 1;

  return MEMORY[0x2822009F8](sub_22B1CDF28, v2, 0);
}

uint64_t sub_22B1CDF28()
{
  if (*(v0 + 602))
  {
    v1 = *(v0 + 352);

    return MEMORY[0x2822009F8](sub_22B1CE284, v1, 0);
  }

  else
  {
    if (qword_281408858 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 592);
    v4 = *(v0 + 368);
    v3 = *(v0 + 376);
    v5 = *(v0 + 328);
    v6 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = *(v0 + 240);
    sub_22B35D89C();
    v4(v6, v2, v7);
    v9 = swift_task_alloc();
    *(v0 + 464) = v9;
    *v9 = v0;
    v9[1] = sub_22B1CE094;
    v10 = *(v0 + 328);
    v11 = *(v0 + 288);
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);

    return sub_22B358910(v13, v12, v10, v11, 0);
  }
}

uint64_t sub_22B1CE094()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v12 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v4 = *(*v0 + 432);
  v5 = *(*v0 + 424);
  v6 = *(*v0 + 328);
  v7 = *(*v0 + 296);
  v8 = *(*v0 + 288);
  v9 = *(*v0 + 272);
  v13 = *v0;

  v5(v8, v9);
  v3(v6, v7);
  v10 = *(v1 + 352);

  return MEMORY[0x2822009F8](sub_22B1CE284, v10, 0);
}

uint64_t sub_22B1CE284()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 128);
  *(v0 + 603) = sub_22B31FD94(*(v0 + 104), *(v0 + 112), *(v0 + 240)) & 1;

  return MEMORY[0x2822009F8](sub_22B1CE300, v2, 0);
}

uint64_t sub_22B1CE300()
{
  v89 = v0;
  if (*(v0 + 603))
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 240);
    v3 = *(v0 + 200);
    v4 = *(v0 + 208);
    v5 = *(v0 + 144);
    v6 = *(v4 + 16);
    *(v0 + 472) = v6;
    *(v0 + 480) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v5, v2, v3);
    v7 = *(v4 + 56);
    *(v0 + 488) = v7;
    *(v0 + 496) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v7(v5, 0, 1, v3);
    v8 = sub_22B1CE994;
    v9 = v1;
LABEL_8:

    return MEMORY[0x2822009F8](v8, v9, 0);
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 192);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = __swift_project_value_buffer(v15, qword_28140BD10);
  swift_beginAccess();
  (*(v16 + 16))(v14, v17, v15);
  (*(v13 + 16))(v10, v11, v12);
  v18 = sub_22B36050C();
  v19 = sub_22B360CFC();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v0 + 448);
  v21 = *(v0 + 456);
  v23 = *(v0 + 336);
  v82 = *(v0 + 320);
  v85 = *(v0 + 296);
  v24 = *(v0 + 232);
  v26 = *(v0 + 200);
  v25 = *(v0 + 208);
  v76 = *(v0 + 192);
  v79 = *(v0 + 240);
  v27 = *(v0 + 160);
  v74 = *(v0 + 152);
  if (v20)
  {
    v65 = v19;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v88 = v29;
    *v28 = 136315138;
    sub_22B1CFE9C(&qword_2814091E0, MEMORY[0x277CC88A8]);
    v67 = v22;
    v69 = v23;
    v30 = sub_22B36131C();
    v32 = v31;
    log = v18;
    v33 = *(v25 + 8);
    v33(v24, v26);
    v34 = sub_22B1A7B20(v30, v32, &v88);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_22B116000, log, v65, "Monthly data for %s was unable to be added. Skipping deletion.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x23188F650](v29, -1, -1);
    MEMORY[0x23188F650](v28, -1, -1);

    (*(v27 + 8))(v76, v74);
    v33(v79, v26);
    v67(v82, v85);
    v67(v69, v85);
    if ((*(v0 + 601) & 1) == 0)
    {
LABEL_7:
      *(v0 + 601) = 1;
      v62 = *(v0 + 592);
      v68 = *(v0 + 424);
      v70 = *(v0 + 432);
      v83 = *(v0 + 408);
      v86 = *(v0 + 416);
      v58 = *(v0 + 392);
      v35 = *(v0 + 384);
      v60 = *(v0 + 368);
      v36 = *(v0 + 344);
      v80 = *(v0 + 352);
      v61 = *(v0 + 336);
      v59 = *(v0 + 328);
      v72 = *(v0 + 320);
      v77 = *(v0 + 312);
      loga = *(v0 + 304);
      v66 = *(v0 + 296);
      v37 = *(v0 + 288);
      v39 = *(v0 + 264);
      v38 = *(v0 + 272);
      v40 = *(v0 + 248);
      v41 = *(v0 + 128);
      v58(v39, v41 + v35, v40);
      sub_22B35F57C();
      v83(v39, v40);
      v60(v37, v62, v38);
      v58(v39, v41 + v35, v40);
      sub_22B35F60C();
      v83(v39, v40);
      v68(v37, v38);
      isa = loga[1].isa;
      *(v0 + 448) = isa;
      *(v0 + 456) = &loga[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      isa(v59, v66);
      v58(v39, v41 + v35, v40);
      sub_22B35F4FC();
      v83(v39, v40);
      v43 = loga[2].isa;
      v43(v59, v61, v66);
      v43(v77, v72, v66);
      sub_22B35D88C();
      v8 = sub_22B1CDEAC;
      v9 = v80;
      goto LABEL_8;
    }
  }

  else
  {

    v44 = *(v25 + 8);
    v44(v24, v26);
    (*(v27 + 8))(v76, v74);
    v44(v79, v26);
    v22(v82, v85);
    v22(v23, v85);
    if ((*(v0 + 601) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v45 = *(v0 + 456);
  (*(v0 + 448))(*(v0 + 344), *(v0 + 296));
  v47 = *(v0 + 336);
  v46 = *(v0 + 344);
  v49 = *(v0 + 320);
  v48 = *(v0 + 328);
  v50 = *(v0 + 312);
  v51 = *(v0 + 288);
  v52 = *(v0 + 264);
  v53 = *(v0 + 232);
  v54 = *(v0 + 240);
  v55 = *(v0 + 224);
  v71 = *(v0 + 216);
  v73 = *(v0 + 192);
  v75 = *(v0 + 184);
  v78 = *(v0 + 176);
  v81 = *(v0 + 168);
  v84 = *(v0 + 144);
  v87 = *(v0 + 136);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_22B1CE994()
{
  v30 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[14];
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[63] = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[64] = v6;
  v0[65] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_22B36050C();
  v8 = sub_22B360D2C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[19];
  v12 = v0[20];
  if (v9)
  {
    v14 = v0[13];
    v13 = v0[14];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136380675;
    *(v15 + 4) = sub_22B1A7B20(v14, v13, &v29);
    _os_log_impl(&dword_22B116000, v7, v8, "Get historical guidance from cache for %{private}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23188F650](v16, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[66] = v17;
  v18 = *(v0[44] + 112);
  v19 = v0[55];
  v20 = MEMORY[0x277D84F90];
  if (v18)
  {
    v21 = v0[18];
    v28 = *(v0 + 13);
    v0[11] = MEMORY[0x277D84F90];
    v22 = *(v18 + 48);
    v23 = swift_task_alloc();
    *(v23 + 16) = v18;
    *(v23 + 24) = v28;
    *(v23 + 40) = v21;
    *(v23 + 48) = 512;
    *(v23 + 56) = v0 + 11;

    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA678, &qword_22B365760);
    sub_22B360E7C();

    v25 = v0[11];
    v20 = v0[12];
  }

  v0[68] = v20;
  v0[67] = v19;
  v26 = v0[16];
  sub_22B180D48(v0[18]);

  return MEMORY[0x2822009F8](sub_22B1CEC60, v26, 0);
}

uint64_t sub_22B1CEC60()
{
  v125 = v0;
  v1 = *(v0 + 544);
  v2 = *(v1 + 16);
  *(v0 + 552) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 208);
    v5 = *(v4 + 80);
    *(v0 + 596) = v5;
    v6 = *(v4 + 72);
    *(v0 + 560) = v6;
    v7 = *(v0 + 536);
    while (1)
    {
      *(v0 + 576) = v3;
      *(v0 + 568) = v7;
      v8 = *(v0 + 480);
      v10 = *(v0 + 448);
      v9 = *(v0 + 456);
      v11 = *(v0 + 328);
      v12 = *(v0 + 312);
      v13 = *(v0 + 296);
      v14 = *(v0 + 240);
      (*(v0 + 472))(*(v0 + 224), v1 + ((v5 + 32) & ~v5) + v6 * v3, *(v0 + 200));
      sub_22B35D89C();
      sub_22B35D89C();
      sub_22B1CFE9C(&qword_28140B490, MEMORY[0x277CC9578]);
      v15 = sub_22B36074C();
      v10(v12, v13);
      v10(v11, v13);
      if ((v15 & 1) == 0)
      {
        v16 = *(v0 + 448);
        v17 = *(v0 + 456);
        v18 = *(v0 + 328);
        v19 = *(v0 + 312);
        v20 = *(v0 + 296);
        v21 = *(v0 + 240);
        v22 = *(v0 + 224);
        sub_22B35D86C();
        sub_22B35D86C();
        LOBYTE(v22) = sub_22B35DDFC();
        v16(v19, v20);
        v16(v18, v20);
        if (v22)
        {
          break;
        }
      }

      v24 = *(v0 + 448);
      v23 = *(v0 + 456);
      v25 = *(v0 + 328);
      v26 = *(v0 + 312);
      v27 = *(v0 + 296);
      v28 = *(v0 + 240);
      v29 = *(v0 + 224);
      sub_22B35D89C();
      sub_22B35D89C();
      LOBYTE(v29) = sub_22B35DDEC();
      v24(v26, v27);
      v24(v25, v27);
      if (v29)
      {
        v31 = *(v0 + 448);
        v30 = *(v0 + 456);
        v32 = *(v0 + 328);
        v33 = *(v0 + 312);
        v34 = *(v0 + 296);
        v35 = *(v0 + 240);
        v36 = *(v0 + 224);
        sub_22B35D86C();
        sub_22B35D86C();
        LOBYTE(v36) = sub_22B36074C();
        v31(v33, v34);
        v31(v32, v34);
        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      v37 = *(v0 + 552);
      v38 = *(v0 + 576) + 1;
      v39 = *(*(v0 + 208) + 8);
      v39(*(v0 + 224), *(v0 + 200));
      if (v38 == v37)
      {
        v63 = *(v0 + 544);

        goto LABEL_13;
      }

      v3 = *(v0 + 576) + 1;
      v6 = *(v0 + 560);
      LOBYTE(v5) = *(v0 + 596);
      v1 = *(v0 + 544);
    }

    v41 = *(v0 + 520);
    v43 = *(v0 + 472);
    v42 = *(v0 + 480);
    v44 = *(v0 + 216);
    v45 = *(v0 + 224);
    v46 = *(v0 + 200);
    (*(v0 + 512))(*(v0 + 176), *(v0 + 504), *(v0 + 152));
    v43(v44, v45, v46);
    v47 = sub_22B36050C();
    v48 = sub_22B360CFC();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 528);
    v52 = *(v0 + 208);
    v51 = *(v0 + 216);
    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v56 = *(v0 + 152);
    v55 = *(v0 + 160);
    if (v49)
    {
      v119 = *(v0 + 528);
      v57 = swift_slowAlloc();
      v116 = v54;
      v58 = swift_slowAlloc();
      v124 = v58;
      *v57 = 136315138;
      sub_22B1CFE9C(&qword_2814091E0, MEMORY[0x277CC88A8]);
      v113 = v56;
      v59 = sub_22B36131C();
      v61 = v60;
      (*(v52 + 8))(v51, v53);
      v62 = sub_22B1A7B20(v59, v61, &v124);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_22B116000, v47, v48, "Removing entry from cache: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x23188F650](v58, -1, -1);
      MEMORY[0x23188F650](v57, -1, -1);

      v119(v116, v113);
    }

    else
    {

      (*(v52 + 8))(v51, v53);
      v50(v54, v56);
    }

    v95 = *(v0 + 488);
    v94 = *(v0 + 496);
    v96 = *(v0 + 480);
    v97 = *(v0 + 352);
    v98 = *(v0 + 200);
    v99 = *(v0 + 136);
    (*(v0 + 472))(v99, *(v0 + 224), v98);
    v95(v99, 0, 1, v98);
    v92 = sub_22B1CF484;
    v93 = v97;
  }

  else
  {
    v40 = *(v0 + 208);

    v39 = *(v40 + 8);
    v7 = *(v0 + 536);
LABEL_13:
    v65 = *(v0 + 448);
    v64 = *(v0 + 456);
    v66 = *(v0 + 336);
    v67 = *(v0 + 320);
    v68 = *(v0 + 296);
    v69 = *(v0 + 208) + 8;
    v39(*(v0 + 240), *(v0 + 200));
    v65(v67, v68);
    v65(v66, v68);
    if (*(v0 + 601) == 1)
    {
      v70 = *(v0 + 456);
      (*(v0 + 448))(*(v0 + 344), *(v0 + 296));
      v72 = *(v0 + 336);
      v71 = *(v0 + 344);
      v74 = *(v0 + 320);
      v73 = *(v0 + 328);
      v75 = *(v0 + 312);
      v76 = *(v0 + 288);
      v77 = *(v0 + 264);
      v78 = *(v0 + 232);
      v79 = *(v0 + 240);
      v80 = *(v0 + 224);
      v108 = *(v0 + 216);
      v110 = *(v0 + 192);
      v112 = *(v0 + 184);
      v114 = *(v0 + 176);
      v117 = *(v0 + 168);
      v120 = *(v0 + 144);
      v122 = *(v0 + 136);

      v81 = *(v0 + 8);

      return v81();
    }

    *(v0 + 601) = 1;
    *(v0 + 440) = v7;
    v104 = *(v0 + 592);
    v107 = *(v0 + 424);
    v109 = *(v0 + 432);
    v121 = *(v0 + 408);
    v123 = *(v0 + 416);
    v100 = *(v0 + 392);
    v83 = *(v0 + 384);
    v102 = *(v0 + 368);
    v84 = *(v0 + 344);
    v118 = *(v0 + 352);
    v103 = *(v0 + 336);
    v101 = *(v0 + 328);
    v111 = *(v0 + 320);
    v115 = *(v0 + 312);
    v105 = *(v0 + 304);
    v106 = *(v0 + 296);
    v85 = *(v0 + 288);
    v87 = *(v0 + 264);
    v86 = *(v0 + 272);
    v88 = *(v0 + 248);
    v89 = *(v0 + 128);
    v100(v87, v89 + v83, v88);
    sub_22B35F57C();
    v121(v87, v88);
    v102(v85, v104, v86);
    v100(v87, v89 + v83, v88);
    sub_22B35F60C();
    v121(v87, v88);
    v107(v85, v86);
    v90 = *(v105 + 8);
    *(v0 + 448) = v90;
    *(v0 + 456) = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v90(v101, v106);
    v100(v87, v89 + v83, v88);
    sub_22B35F4FC();
    v121(v87, v88);
    v91 = *(v105 + 16);
    v91(v101, v103, v106);
    v91(v115, v111, v106);
    sub_22B35D88C();
    v92 = sub_22B1CDEAC;
    v93 = v118;
  }

  return MEMORY[0x2822009F8](v92, v93, 0);
}

uint64_t sub_22B1CF484()
{
  v24 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 112);
  (*(v0 + 512))(*(v0 + 168), *(v0 + 504), *(v0 + 152));

  v3 = sub_22B36050C();
  v4 = sub_22B360D2C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 528);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  if (v5)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136380675;
    *(v12 + 4) = sub_22B1A7B20(v11, v10, &v23);
    _os_log_impl(&dword_22B116000, v3, v4, "Delete historical guidance from cache for %{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  else
  {
  }

  v6(v7, v9);
  v14 = *(*(v0 + 352) + 112);
  v15 = *(v0 + 568);
  if (v14)
  {
    v16 = *(v0 + 136);
    v22 = *(v0 + 104);
    v17 = *(v14 + 48);
    v18 = swift_task_alloc();
    *(v18 + 16) = v14;
    *(v18 + 24) = v22;
    *(v18 + 40) = v16;

    v19 = v17;
    sub_22B360E7C();
  }

  *(v0 + 584) = v15;
  v20 = *(v0 + 128);
  sub_22B180D48(*(v0 + 136));

  return MEMORY[0x2822009F8](sub_22B1CF6BC, v20, 0);
}

uint64_t sub_22B1CF6BC()
{
  v119 = v0;
  v1 = *(v0 + 584);
  while (1)
  {
    v2 = *(v0 + 552);
    v3 = *(v0 + 576) + 1;
    v4 = *(*(v0 + 208) + 8);
    v4(*(v0 + 224), *(v0 + 200));
    if (v3 == v2)
    {
      break;
    }

    v5 = *(v0 + 576) + 1;
    *(v0 + 576) = v5;
    *(v0 + 568) = v1;
    v6 = *(v0 + 480);
    v8 = *(v0 + 448);
    v7 = *(v0 + 456);
    v9 = *(v0 + 328);
    v10 = *(v0 + 312);
    v11 = *(v0 + 296);
    v12 = *(v0 + 240);
    (*(v0 + 472))(*(v0 + 224), *(v0 + 544) + ((*(v0 + 596) + 32) & ~*(v0 + 596)) + *(v0 + 560) * v5, *(v0 + 200));
    sub_22B35D89C();
    sub_22B35D89C();
    sub_22B1CFE9C(&qword_28140B490, MEMORY[0x277CC9578]);
    v13 = sub_22B36074C();
    v8(v10, v11);
    v8(v9, v11);
    if (v13)
    {
      goto LABEL_21;
    }

    v14 = *(v0 + 448);
    v15 = *(v0 + 456);
    v16 = *(v0 + 328);
    v17 = *(v0 + 312);
    v18 = *(v0 + 296);
    v19 = *(v0 + 240);
    v20 = *(v0 + 224);
    sub_22B35D86C();
    sub_22B35D86C();
    LOBYTE(v20) = sub_22B35DDFC();
    v14(v17, v18);
    v14(v16, v18);
    if ((v20 & 1) == 0)
    {
LABEL_21:
      v22 = *(v0 + 448);
      v21 = *(v0 + 456);
      v23 = *(v0 + 328);
      v24 = *(v0 + 312);
      v25 = *(v0 + 296);
      v26 = *(v0 + 240);
      v27 = *(v0 + 224);
      sub_22B35D89C();
      sub_22B35D89C();
      LOBYTE(v27) = sub_22B35DDEC();
      v22(v24, v25);
      v22(v23, v25);
      if ((v27 & 1) == 0)
      {
        continue;
      }

      v29 = *(v0 + 448);
      v28 = *(v0 + 456);
      v30 = *(v0 + 328);
      v31 = *(v0 + 312);
      v32 = *(v0 + 296);
      v33 = *(v0 + 240);
      v34 = *(v0 + 224);
      sub_22B35D86C();
      sub_22B35D86C();
      LOBYTE(v34) = sub_22B36074C();
      v29(v31, v32);
      v29(v30, v32);
      if (v34)
      {
        continue;
      }
    }

    v35 = *(v0 + 520);
    v37 = *(v0 + 472);
    v36 = *(v0 + 480);
    v38 = *(v0 + 216);
    v39 = *(v0 + 224);
    v40 = *(v0 + 200);
    (*(v0 + 512))(*(v0 + 176), *(v0 + 504), *(v0 + 152));
    v37(v38, v39, v40);
    v41 = sub_22B36050C();
    v42 = sub_22B360CFC();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 528);
    v46 = *(v0 + 208);
    v45 = *(v0 + 216);
    v47 = *(v0 + 200);
    v48 = *(v0 + 176);
    v50 = *(v0 + 152);
    v49 = *(v0 + 160);
    if (v43)
    {
      v113 = *(v0 + 528);
      v51 = swift_slowAlloc();
      v110 = v48;
      v52 = swift_slowAlloc();
      v118 = v52;
      *v51 = 136315138;
      sub_22B1CFE9C(&qword_2814091E0, MEMORY[0x277CC88A8]);
      v107 = v50;
      v53 = sub_22B36131C();
      v55 = v54;
      (*(v46 + 8))(v45, v47);
      v56 = sub_22B1A7B20(v53, v55, &v118);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_22B116000, v41, v42, "Removing entry from cache: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23188F650](v52, -1, -1);
      MEMORY[0x23188F650](v51, -1, -1);

      v113(v110, v107);
    }

    else
    {

      (*(v46 + 8))(v45, v47);
      v44(v48, v50);
    }

    v89 = *(v0 + 488);
    v88 = *(v0 + 496);
    v90 = *(v0 + 480);
    v91 = *(v0 + 352);
    v92 = *(v0 + 200);
    v93 = *(v0 + 136);
    (*(v0 + 472))(v93, *(v0 + 224), v92);
    v89(v93, 0, 1, v92);
    v86 = sub_22B1CF484;
    v87 = v91;
    goto LABEL_16;
  }

  v57 = *(v0 + 544);

  v59 = *(v0 + 448);
  v58 = *(v0 + 456);
  v60 = *(v0 + 336);
  v61 = *(v0 + 320);
  v62 = *(v0 + 296);
  v63 = *(v0 + 208) + 8;
  v4(*(v0 + 240), *(v0 + 200));
  v59(v61, v62);
  v59(v60, v62);
  if (*(v0 + 601) != 1)
  {
    *(v0 + 601) = 1;
    *(v0 + 440) = v1;
    v98 = *(v0 + 592);
    v101 = *(v0 + 424);
    v103 = *(v0 + 432);
    v115 = *(v0 + 408);
    v117 = *(v0 + 416);
    v94 = *(v0 + 392);
    v77 = *(v0 + 384);
    v96 = *(v0 + 368);
    v78 = *(v0 + 344);
    v112 = *(v0 + 352);
    v97 = *(v0 + 336);
    v95 = *(v0 + 328);
    v105 = *(v0 + 320);
    v109 = *(v0 + 312);
    v99 = *(v0 + 304);
    v100 = *(v0 + 296);
    v79 = *(v0 + 288);
    v81 = *(v0 + 264);
    v80 = *(v0 + 272);
    v82 = *(v0 + 248);
    v83 = *(v0 + 128);
    v94(v81, v83 + v77, v82);
    sub_22B35F57C();
    v115(v81, v82);
    v96(v79, v98, v80);
    v94(v81, v83 + v77, v82);
    sub_22B35F60C();
    v115(v81, v82);
    v101(v79, v80);
    v84 = *(v99 + 8);
    *(v0 + 448) = v84;
    *(v0 + 456) = (v99 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v84(v95, v100);
    v94(v81, v83 + v77, v82);
    sub_22B35F4FC();
    v115(v81, v82);
    v85 = *(v99 + 16);
    v85(v95, v97, v100);
    v85(v109, v105, v100);
    sub_22B35D88C();
    v86 = sub_22B1CDEAC;
    v87 = v112;
LABEL_16:

    return MEMORY[0x2822009F8](v86, v87, 0);
  }

  v64 = *(v0 + 456);
  (*(v0 + 448))(*(v0 + 344), *(v0 + 296));
  v66 = *(v0 + 336);
  v65 = *(v0 + 344);
  v68 = *(v0 + 320);
  v67 = *(v0 + 328);
  v69 = *(v0 + 312);
  v70 = *(v0 + 288);
  v71 = *(v0 + 264);
  v72 = *(v0 + 232);
  v73 = *(v0 + 240);
  v74 = *(v0 + 224);
  v102 = *(v0 + 216);
  v104 = *(v0 + 192);
  v106 = *(v0 + 184);
  v108 = *(v0 + 176);
  v111 = *(v0 + 168);
  v114 = *(v0 + 144);
  v116 = *(v0 + 136);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_22B1CFE9C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_22B1CFF30(unint64_t a1, uint64_t *a2)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v40 - v5);
  v51 = type metadata accessor for CDUsageSummaryRecords();
  v43 = *(v51 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v42 = &v40 - v11;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22B36109C())
  {
    v13 = 0;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = a1 & 0xC000000000000001;
    v41 = a1;
    v46 = (v43 + 56);
    v44 = (a1 + 32);
    v45 = (v43 + 48);
    v52 = MEMORY[0x277D84F90];
    v47 = i;
    while (1)
    {
      if (v49)
      {
        v14 = MEMORY[0x23188EAC0](v13, v41, v10);
      }

      else
      {
        if (v13 >= *(v48 + 16))
        {
          goto LABEL_29;
        }

        v14 = *&v44[8 * v13];
      }

      v15 = v14;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v17 = *v54;

      v18 = [v15 usageSummaryID];
      v19 = sub_22B36084C();
      v21 = v20;

      if (*(v17 + 16) && (v22 = *(v17 + 40), sub_22B36149C(), sub_22B3608FC(), v23 = sub_22B3614DC(), v24 = -1 << *(v17 + 32), v25 = v23 & ~v24, ((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (*(v17 + 48) + 16 * v25);
          v28 = *v27 == v19 && v27[1] == v21;
          if (v28 || (sub_22B36134C() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v17 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        a1 = v51;
        (*v46)(v6, 1, 1, v51);

        v34 = (*v45)(v6, 1, a1);
      }

      else
      {
LABEL_19:

        v29 = [v15 usageSummaryID];
        v30 = sub_22B36084C();
        v32 = v31;

        sub_22B32DF50(&v53, v30, v32);

        a1 = v15;
        sub_22B1D03F8(a1, v6);
        v33 = v51;
        (*v46)(v6, 0, 1, v51);

        v34 = (*v45)(v6, 1, v33);
      }

      if (v34 == 1)
      {
        sub_22B123284(v6, &qword_27D8BA688, &qword_22B365848);
      }

      else
      {
        v35 = v42;
        sub_22B1D8160(v6, v42);
        sub_22B1D8160(v35, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_22B32D7C0(0, v52[2] + 1, 1, v52);
        }

        v37 = v52[2];
        v36 = v52[3];
        a1 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v52 = sub_22B32D7C0(v36 > 1, v37 + 1, 1, v52);
        }

        v38 = v52;
        v52[2] = a1;
        sub_22B1D8160(v50, v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37);
      }

      if (v13 == v47)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_22B1D03F8(void *a1@<X0>, void *a2@<X8>)
{
  [a1 billLastPeriod];
  *a2 = v4;
  v5 = [a1 currency];
  v6 = sub_22B36084C();
  v8 = v7;

  v9 = type metadata accessor for CDUsageSummaryRecords();
  v10 = (a2 + v9[6]);
  *v10 = v6;
  v10[1] = v8;
  v11 = [a1 creationDate];
  v12 = a2 + v9[5];
  sub_22B35DE5C();

  v13 = [a1 end];
  v14 = a2 + v9[7];
  sub_22B35DE5C();

  v15 = [a1 items];
  v16 = sub_22B35DCDC();
  v18 = v17;

  v19 = MEMORY[0x23188EEB0]();
  sub_22B1D06E8(&v50);
  objc_autoreleasePoolPop(v19);
  sub_22B12F174(v16, v18);
  *(a2 + v9[8]) = v50;
  v20 = [a1 recordID];
  v21 = sub_22B36084C();
  v23 = v22;

  v24 = (a2 + v9[9]);
  *v24 = v21;
  v24[1] = v23;
  v25 = [a1 sourceTime];
  v26 = a2 + v9[10];
  sub_22B35DE5C();

  v27 = [a1 start];
  v28 = a2 + v9[11];
  sub_22B35DE5C();

  v29 = [a1 subscriptionID];
  v30 = sub_22B36084C();
  v32 = v31;

  v33 = (a2 + v9[12]);
  *v33 = v30;
  v33[1] = v32;
  *(a2 + v9[13]) = sub_22B35FABC();
  [a1 totalConsumptionValue];
  *(a2 + v9[14]) = v34;
  v35 = [a1 usageSummaryID];
  v36 = sub_22B36084C();
  v38 = v37;

  v39 = (a2 + v9[15]);
  *v39 = v36;
  v39[1] = v38;
  v40 = [a1 utilityID];
  v41 = sub_22B36084C();
  v43 = v42;

  v44 = (a2 + v9[16]);
  *v44 = v41;
  v44[1] = v43;
  v45 = [a1 zoneName];
  v46 = sub_22B36084C();
  v48 = v47;

  v49 = (a2 + v9[17]);
  *v49 = v46;
  v49[1] = v48;
}

void sub_22B1D06E8(void (*a1)(char *, char *, uint64_t)@<X8>)
{
  v53 = a1;
  v49 = sub_22B36052C();
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B3603FC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22B35F9DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  sub_22B128014(0, &qword_27D8BA690, 0x277CBEA60);
  v19 = v59;
  v20 = sub_22B360F7C();
  if (v19)
  {
    v21 = v19;
    v22 = v53;
    v23 = v49;
LABEL_3:
    v24 = v52;
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  v50 = v18;
  v51 = v15;
  v55 = v12;
  if (!v20)
  {
    v24 = MEMORY[0x277D84F90];
    v22 = v53;
    goto LABEL_24;
  }

  v59 = 0;
  *&v56 = 0;
  v36 = v20;
  sub_22B360A4C();

  v23 = v56;
  v22 = v53;
  if (!v56)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v48 = *(v56 + 16);
  if (v48)
  {
    v45 = v1;
    v46 = v9;
    v1 = 0;
    v54 = (v9 + 32);
    v21 = (v56 + 40);
    v24 = MEMORY[0x277D84F90];
    v47 = v7;
    while (v1 < *(v23 + 16))
    {
      v38 = *(v21 - 1);
      v37 = *v21;
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      sub_22B144B30(v38, v37);
      sub_22B3603EC();
      sub_22B1D81C4(&qword_27D8BA698, MEMORY[0x277D07460]);
      v39 = v51;
      v40 = v59;
      sub_22B36041C();
      v59 = v40;
      if (v40)
      {

        v21 = v59;
        v22 = v53;
        v23 = v49;
        v1 = v45;
        goto LABEL_3;
      }

      v22 = *v54;
      v41 = v50;
      (*v54)(v50, v39, v8);
      v22(v55, v41, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_22B32D798(0, *(v24 + 2) + 1, 1, v24);
      }

      v43 = *(v24 + 2);
      v42 = *(v24 + 3);
      if (v43 >= v42 >> 1)
      {
        v24 = sub_22B32D798(v42 > 1, v43 + 1, 1, v24);
      }

      ++v1;
      *(v24 + 2) = v43 + 1;
      v22(&v24[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43], v55, v8);
      v21 += 2;
      if (v48 == v1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
LABEL_4:
    v25 = __swift_project_value_buffer(v23, qword_28140BD10);
    swift_beginAccess();
    (*(v1 + 16))(v24, v25, v23);
    v26 = v21;
    v27 = sub_22B36050C();
    v28 = sub_22B360D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v1;
      v31 = swift_slowAlloc();
      *v29 = 138412290;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_22B116000, v27, v28, "Failed to unarchive Item %@", v29, 0xCu);
      sub_22B123284(v31, &unk_27D8BAA90, &unk_22B362BC0);
      v34 = v31;
      v1 = v30;
      MEMORY[0x23188F650](v34, -1, -1);
      v35 = v29;
      v24 = v52;
      MEMORY[0x23188F650](v35, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v24, v23);
    v24 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_23:

  v22 = v53;
LABEL_24:
  *v22 = v24;
}

void sub_22B1D0CDC(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v128 = a6;
  v112 = a5;
  v113 = a4;
  v109 = a2;
  v110 = a3;
  v108 = a1;
  v105 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA420, &unk_22B364910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v97 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  v11 = *(v111 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v111);
  v106 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v107 = &v97 - v15;
  MEMORY[0x28223BE20](v16);
  v115 = &v97 - v17;
  MEMORY[0x28223BE20](v18);
  v114 = &v97 - v19;
  MEMORY[0x28223BE20](v20);
  v116 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v117 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v118 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v119 = &v97 - v27;
  MEMORY[0x28223BE20](v28);
  v120 = &v97 - v29;
  MEMORY[0x28223BE20](v30);
  v121 = &v97 - v31;
  MEMORY[0x28223BE20](v32);
  v122 = &v97 - v33;
  v124 = sub_22B35FADC();
  v34 = sub_22B35FAAC();
  [v34 setResultType_];
  v35 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v36 = sub_22B36081C();
  v37 = [v35 initWithKey:v36 ascending:1];

  v38 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v39 = sub_22B36081C();
  v40 = [v38 initWithKey:v39 ascending:0];

  v41 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v42 = sub_22B36081C();
  v43 = [v41 initWithKey:v42 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_22B365770;
  *(v44 + 32) = v37;
  *(v44 + 40) = v40;
  *(v44 + 48) = v43;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v125 = v37;
  v45 = v40;
  v123 = v43;
  v46 = sub_22B360A3C();

  v126 = v34;
  [v34 setSortDescriptors_];

  v130 = MEMORY[0x277D84F90];
  v47 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_22B3634C0;
  v49 = MEMORY[0x277D837D0];
  *(v48 + 56) = MEMORY[0x277D837D0];
  v50 = sub_22B1280E4();
  v51 = v109;
  v52 = v110;
  *(v48 + 32) = v108;
  *(v48 + 40) = v51;
  *(v48 + 96) = v49;
  *(v48 + 104) = v50;
  *(v48 + 64) = v50;
  *(v48 + 72) = v52;
  *(v48 + 80) = v113;

  v113 = v47;
  v53 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v95 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22B360A7C();
  }

  sub_22B360A9C();
  sub_22B170BE0(v112, v10, &qword_27D8BA420, &unk_22B364910);
  v54 = v111;
  if ((*(v11 + 48))(v10, 1, v111) == 1)
  {
    sub_22B123284(v10, &qword_27D8BA420, &unk_22B364910);
    v55 = v128;
    v56 = v126;
  }

  else
  {
    v112 = v53;
    v110 = v45;
    v57 = v114;
    v58 = v122;
    sub_22B170CD0(v10, v122, &qword_27D8BA078, &unk_22B362BB0);
    v109 = "D = %@ AND usageSummaryID = %@";
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_22B365780;
    sub_22B170BE0(v58, v121, &qword_27D8BA078, &unk_22B362BB0);
    v108 = *(v54 + 48);
    v60 = sub_22B35DDDC();
    v61 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v59 + 56) = v61;
    v62 = sub_22B1D7CDC();
    *(v59 + 64) = v62;
    *(v59 + 32) = v60;
    sub_22B170BE0(v58, v120, &qword_27D8BA078, &unk_22B362BB0);
    v104 = *(v54 + 48);
    v63 = sub_22B35DDDC();
    *(v59 + 96) = v61;
    *(v59 + 104) = v62;
    *(v59 + 72) = v63;
    sub_22B170BE0(v58, v119, &qword_27D8BA078, &unk_22B362BB0);
    v103 = *(v54 + 48);
    v64 = sub_22B35DDDC();
    *(v59 + 136) = v61;
    *(v59 + 144) = v62;
    *(v59 + 112) = v64;
    sub_22B170BE0(v58, v118, &qword_27D8BA078, &unk_22B362BB0);
    v102 = *(v54 + 48);
    v65 = sub_22B35DDDC();
    *(v59 + 176) = v61;
    *(v59 + 184) = v62;
    *(v59 + 152) = v65;
    sub_22B170BE0(v58, v117, &qword_27D8BA078, &unk_22B362BB0);
    v101 = *(v54 + 48);
    v66 = sub_22B35DDDC();
    *(v59 + 216) = v61;
    *(v59 + 224) = v62;
    *(v59 + 192) = v66;
    sub_22B170BE0(v58, v116, &qword_27D8BA078, &unk_22B362BB0);
    v100 = *(v54 + 48);
    v67 = sub_22B35DDDC();
    *(v59 + 256) = v61;
    *(v59 + 264) = v62;
    *(v59 + 232) = v67;
    sub_22B170BE0(v58, v57, &qword_27D8BA078, &unk_22B362BB0);
    v99 = *(v54 + 48);
    v68 = sub_22B35DDDC();
    *(v59 + 296) = v61;
    *(v59 + 304) = v62;
    *(v59 + 272) = v68;
    sub_22B170BE0(v58, v115, &qword_27D8BA078, &unk_22B362BB0);
    v98 = *(v54 + 48);
    v69 = sub_22B35DDDC();
    *(v59 + 336) = v61;
    *(v59 + 344) = v62;
    *(v59 + 312) = v69;
    v70 = v107;
    sub_22B170BE0(v58, v107, &qword_27D8BA078, &unk_22B362BB0);
    v97 = *(v54 + 48);
    v71 = sub_22B35DDDC();
    *(v59 + 376) = v61;
    *(v59 + 384) = v62;
    *(v59 + 352) = v71;
    v72 = v58;
    v73 = v106;
    sub_22B170BE0(v72, v106, &qword_27D8BA078, &unk_22B362BB0);
    v74 = *(v54 + 48);
    v75 = sub_22B35DDDC();
    *(v59 + 416) = v61;
    *(v59 + 424) = v62;
    *(v59 + 392) = v75;
    v76 = sub_22B35DE9C();
    v77 = *(*(v76 - 8) + 8);
    v77(v73 + v74, v76);
    v77(v73, v76);
    v77(v70 + v97, v76);
    v77(v70, v76);
    v78 = v115;
    v77(v115 + v98, v76);
    v77(v78, v76);
    v79 = v114;
    v77(&v114[v99], v76);
    v77(v79, v76);
    v80 = v116;
    v77(v116 + v100, v76);
    v77(v80, v76);
    v81 = v117;
    v77(v117 + v101, v76);
    v77(v81, v76);
    v82 = v118;
    v77(v118 + v102, v76);
    v77(v82, v76);
    v83 = v119;
    v77(v119 + v103, v76);
    v77(v83, v76);
    v84 = v120;
    v77(v120 + v104, v76);
    v77(v84, v76);
    v85 = v121;
    v77(v121 + v108, v76);
    v77(v85, v76);
    v86 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v96 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();

    sub_22B123284(v122, &qword_27D8BA078, &unk_22B362BB0);
    v55 = v128;
    v56 = v126;
    v45 = v110;
    v53 = v112;
  }

  v87 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v88 = sub_22B360A3C();
  v89 = [v87 initWithType:1 subpredicates:v88];

  [v56 setPredicate_];
  v90 = v127;
  v91 = sub_22B360E9C();
  if (v90)
  {

LABEL_10:

    return;
  }

  v112 = v53;
  if (v91 >> 62)
  {
    v92 = sub_22B36109C();
  }

  else
  {
    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v92 >= 1)
  {
    v129 = MEMORY[0x23188E590](v92, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v93 = sub_22B360E9C();
    v94 = sub_22B1CFF30(v93, &v129);

    [v55 reset];

    *v105 = v94;
    goto LABEL_10;
  }

  [v55 reset];

  *v105 = 0;
}

void sub_22B1D19EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void **a9)
{
  v46 = a8;
  v47 = a1;
  v51 = a6;
  v52 = a7;
  v48 = a3;
  v49 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA688, &qword_22B365848);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v45 - v13;
  v50 = sub_22B35FADC();
  v14 = sub_22B35FAAC();
  [v14 setResultType_];
  v15 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v16 = sub_22B36081C();
  v17 = [v15 initWithKey:v16 ascending:0];

  v18 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v19 = sub_22B36081C();
  v20 = [v18 initWithKey:v19 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B363950;
  *(v21 + 32) = v17;
  *(v21 + 40) = v20;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v22 = v17;
  v23 = v20;
  v24 = sub_22B360A3C();

  [v14 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22B364620;
  v26 = MEMORY[0x277D837D0];
  *(v25 + 56) = MEMORY[0x277D837D0];
  v27 = sub_22B1280E4();
  v28 = v48;
  *(v25 + 32) = v47;
  *(v25 + 40) = a2;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  *(v25 + 64) = v27;
  *(v25 + 72) = v28;
  *(v25 + 80) = a4;
  *(v25 + 136) = v26;
  *(v25 + 144) = v27;
  v29 = v51;
  *(v25 + 112) = v49;
  *(v25 + 120) = v29;

  v30 = v52;
  v31 = sub_22B360CCC();
  [v14 setPredicate_];
  v32 = v53;
  v33 = sub_22B360E9C();
  if (v32)
  {

LABEL_12:
    return;
  }

  v53 = v22;
  v51 = v23;
  v35 = v45;
  v34 = v46;
  if (!(v33 >> 62))
  {
    v36 = v53;
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  v43 = v33;
  v44 = sub_22B36109C();
  v33 = v43;
  v36 = v53;
  if (!v44)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v33 + 32);
LABEL_8:
    v38 = v37;

    v39 = v38;
    sub_22B1D03F8(v39, v35);
    v40 = type metadata accessor for CDUsageSummaryRecords();
    (*(*(v40 - 8) + 56))(v35, 0, 1, v40);
    sub_22B1D836C(v35, v34);
    v41 = [v39 objectID];

    v42 = *a9;
    *a9 = v41;

    v36 = v53;
LABEL_11:
    [v30 refreshAllObjects];

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_22B1D1E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, char *a11, void *a12, void *a13)
{
  v181 = a8;
  v180 = a7;
  v179 = a6;
  v178 = a5;
  v177 = a4;
  v176 = a3;
  v172 = a2;
  v205 = *MEMORY[0x277D85DE8];
  v14 = sub_22B36052C();
  v199 = *(v14 - 8);
  v200 = v14;
  v15 = *(v199 + 64);
  MEMORY[0x28223BE20](v14);
  v198 = &v163 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v163 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v163 - v21;
  MEMORY[0x28223BE20](v23);
  v184 = &v163 - v24;
  v175 = sub_22B35F9FC();
  v174 = *(v175 - 8);
  v25 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v173 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22B35F9DC();
  v193 = *(v189 - 8);
  v27 = *(v193 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v163 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_22B35DE9C();
  v191 = *(v187 - 8);
  v29 = *(v191 + 64);
  MEMORY[0x28223BE20](v187);
  v182 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v183 = &v163 - v32;
  MEMORY[0x28223BE20](v33);
  v192 = &v163 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v163 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v163 - v39;
  v186 = sub_22B3603AC();
  v190 = *(v186 - 1);
  v41 = v190[8];
  MEMORY[0x28223BE20](v186);
  v171 = &v163 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v170 = &v163 - v44;
  MEMORY[0x28223BE20](v45);
  v169 = &v163 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v163 - v48;
  v50 = sub_22B3603FC();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v195 = sub_22B35FA9C();
  v185 = *(v195 - 8);
  v52 = *(v185 + 64);
  MEMORY[0x28223BE20](v195);
  v196 = &v163 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22B360F5C() == 0x6D75536567617355 && v54 == 0xEC0000007972616DLL)
  {
  }

  else
  {
    v55 = sub_22B36134C();

    if ((v55 & 1) == 0)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v69 = v200;
      v70 = __swift_project_value_buffer(v200, qword_28140BD10);
      swift_beginAccess();
      v71 = v199;
      (*(v199 + 16))(v19, v70, v69);
      v72 = sub_22B36050C();
      v73 = sub_22B360D1C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_22B116000, v72, v73, "[Dropbox Bridge] Record is not of type UsageSummary!", v74, 2u);
        MEMORY[0x23188F650](v74, -1, -1);
      }

      (*(v71 + 8))(v19, v69);
      sub_22B134CDC();
      v67 = swift_allocError();
      *v75 = 20;
      result = swift_willThrow();
      goto LABEL_34;
    }
  }

  sub_22B1CA368(a1, &v202);
  v56 = *(&v202 + 1);
  v168 = v202;
  v57 = v203;

  v58 = v56;
  v60 = v199;
  v59 = v200;
  v197 = v57;
  if (!v58)
  {
    goto LABEL_8;
  }

  if (*(&v57 + 1) >> 60 == 15)
  {

LABEL_8:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v59, qword_28140BD10);
    swift_beginAccess();
    (*(v60 + 16))(v22, v61, v59);
    v62 = sub_22B36050C();
    v63 = sub_22B360D1C();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v198;
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22B116000, v62, v63, "[Dropbox Bridge] UsageSummary Record is corrupted", v66, 2u);
      MEMORY[0x23188F650](v66, -1, -1);
    }

    (*(v60 + 8))(v22, v59);
    sub_22B134CDC();
    v67 = swift_allocError();
    *v68 = 21;
    swift_willThrow();
    goto LABEL_29;
  }

  v167 = v58;
  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  sub_22B1D825C(v57, *(&v57 + 1));
  sub_22B144B30(v57, *(&v57 + 1));
  sub_22B3603EC();
  sub_22B1D81C4(&qword_27D8BA6A0, MEMORY[0x277D07478]);
  v77 = v194;
  sub_22B36041C();
  v67 = v77;
  if (v77)
  {
    sub_22B11EDC0(v57, *(&v57 + 1));

    v65 = v198;
LABEL_29:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v97 = __swift_project_value_buffer(v59, qword_28140BD10);
    swift_beginAccess();
    (*(v60 + 16))(v65, v97, v59);
    v98 = v67;
    v99 = sub_22B36050C();
    v100 = sub_22B360D1C();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v101 = 138412290;
      v103 = v67;
      v104 = _swift_stdlib_bridgeErrorToNSError();
      *(v101 + 4) = v104;
      *v102 = v104;
      _os_log_impl(&dword_22B116000, v99, v100, "[Dropbox Bridge] Failed handle UsageSummary payload %@", v101, 0xCu);
      sub_22B123284(v102, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v102, -1, -1);
      MEMORY[0x23188F650](v101, -1, -1);
    }

    (*(v60 + 8))(v65, v59);
    swift_willThrow();
    result = sub_22B11EDC0(v197, *(&v197 + 1));
LABEL_34:
    *a13 = v67;
    goto LABEL_35;
  }

  v78 = sub_22B35F87C();
  v80 = v79;

  v81 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v81 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (!v81)
  {
    goto LABEL_25;
  }

  sub_22B35FA2C();
  sub_22B36038C();
  v82 = v190[1];
  ++v190;
  v164 = v82;
  v82(v49, v186);
  sub_22B35DD1C();
  v83 = sub_22B1D81C4(&qword_27D8BA430, MEMORY[0x277CC9578]);
  v84 = v187;
  v166 = v83;
  LODWORD(v194) = sub_22B36078C();
  v86 = v191 + 8;
  v85 = *(v191 + 8);
  v85(v37, v84);
  v191 = v86;
  v85(v40, v84);
  if (v194)
  {
    goto LABEL_25;
  }

  v165 = v85;
  sub_22B35F92C();
  sub_22B36038C();
  v164(v49, v186);
  sub_22B35DD2C();
  v87 = v187;
  v88 = sub_22B36078C();
  v165(v37, v87);
  v165(v40, v87);
  if (v88)
  {
LABEL_25:

    if (qword_28140A0C8 == -1)
    {
LABEL_26:
      v89 = __swift_project_value_buffer(v59, qword_28140BD10);
      swift_beginAccess();
      v90 = v184;
      (*(v60 + 16))(v184, v89, v59);
      v91 = sub_22B36050C();
      v92 = sub_22B360D1C();
      v93 = os_log_type_enabled(v91, v92);
      v65 = v198;
      v94 = v195;
      if (v93)
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_22B116000, v91, v92, "[Dropbox Bridge] UsageSummary Record Payload is corrupted", v95, 2u);
        MEMORY[0x23188F650](v95, -1, -1);
      }

      (*(v60 + 8))(v90, v59);
      sub_22B134CDC();
      v67 = swift_allocError();
      *v96 = 21;
      swift_willThrow();
      sub_22B11EDC0(v197, *(&v197 + 1));
      (*(v185 + 8))(v196, v94);
      goto LABEL_29;
    }

LABEL_55:
    swift_once();
    goto LABEL_26;
  }

  v59 = sub_22B35FA0C();
  v194 = *(v59 + 16);
  if (v194)
  {
    v106 = 0;
    v166 = v193 + 16;
    v184 = (v193 + 8);
    v107 = MEMORY[0x277D84F90];
    while (v106 < *(v59 + 16))
    {
      v108 = v188;
      v109 = v189;
      (*(v193 + 16))(v188, v59 + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v106, v189);
      sub_22B1D81C4(&qword_27D8BA698, MEMORY[0x277D07460]);
      v110 = sub_22B36042C();
      v60 = v111;
      (*v184)(v108, v109);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_22B32D0BC(0, *(v107 + 2) + 1, 1, v107);
      }

      v113 = *(v107 + 2);
      v112 = *(v107 + 3);
      if (v113 >= v112 >> 1)
      {
        v107 = sub_22B32D0BC((v112 > 1), v113 + 1, 1, v107);
      }

      ++v106;
      *(v107 + 2) = v113 + 1;
      v114 = &v107[16 * v113];
      *(v114 + 4) = v110;
      *(v114 + 5) = v60;
      v65 = v198;
      if (v194 == v106)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v65 = v198;
LABEL_46:

  v115 = objc_opt_self();
  v116 = sub_22B360A3C();

  *&v202 = 0;
  v117 = [v115 archivedDataWithRootObject:v116 requiringSecureCoding:0 error:&v202];

  v118 = v202;
  if (!v117)
  {
    v149 = v118;

    v67 = sub_22B35DB9C();

    swift_willThrow();
    sub_22B11EDC0(v197, *(&v197 + 1));
    (*(v185 + 8))(v196, v195);
    v60 = v199;
    v59 = v200;
    goto LABEL_29;
  }

  v184 = a11;
  v189 = a10;
  v188 = a9;
  v193 = sub_22B35DCDC();
  v194 = v119;

  v120 = sub_22B35F87C();
  sub_22B32DF50(&v202, v120, v121);

  sub_22B35F8BC();
  v123 = v122;
  v172 = sub_22B35FA5C();
  v166 = v124;
  v125 = v169;
  sub_22B35F92C();
  sub_22B36038C();
  v126 = v125;
  v127 = v186;
  v128 = v164;
  v164(v126, v186);
  v129 = v170;
  sub_22B35F89C();
  sub_22B36038C();
  v128(v129, v127);
  v130 = v171;
  sub_22B35FA2C();
  v131 = v182;
  sub_22B36038C();
  v128(v130, v127);
  v132 = v173;
  sub_22B35F8EC();
  v133 = sub_22B35F9EC();
  (*(v174 + 8))(v132, v175);
  sub_22B35F90C();
  v135 = v134;
  v136 = sub_22B35F87C();
  v138 = v137;
  v190 = MEMORY[0x23188EEB0]();
  v186 = &v163;
  v201 = 0;
  MEMORY[0x28223BE20](v190);
  v139 = v177;
  *(&v163 - 24) = v176;
  *(&v163 - 23) = v139;
  v140 = v179;
  *(&v163 - 22) = v178;
  *(&v163 - 21) = v140;
  v141 = v181;
  *(&v163 - 20) = v180;
  *(&v163 - 19) = v141;
  *(&v163 - 18) = v136;
  *(&v163 - 17) = v138;
  v142 = v183;
  *(&v163 - 16) = v184;
  *(&v163 - 15) = v142;
  v143 = v167;
  *(&v163 - 14) = v168;
  *(&v163 - 13) = v143;
  *(&v163 - 12) = v123;
  v144 = v166;
  *(&v163 - 11) = v172;
  *(&v163 - 10) = v144;
  v145 = v193;
  v146 = v194;
  *(&v163 - 9) = v147;
  *(&v163 - 8) = v145;
  *(&v163 - 7) = v146;
  *(&v163 - 6) = v131;
  *(&v163 - 5) = v133;
  *(&v163 - 4) = v135;
  v148 = v189;
  *(&v163 - 3) = v188;
  *(&v163 - 2) = v148;
  *(&v163 - 1) = &v201;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
  sub_22B360E7C();
  v150 = v193;

  objc_autoreleasePoolPop(v190);
  v151 = v202;
  v152 = v187;
  v153 = v165;
  v165(v182, v187);
  v153(v183, v152);
  v153(v192, v152);
  v154 = v195;
  if (v151)
  {
    v155 = v194;
    v156 = v151;
    MEMORY[0x23188E350]();
    v157 = v196;
    if (*((*a12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v162 = *((*a12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22B360A7C();
    }

    sub_22B360A9C();
    sub_22B12F174(v150, v155);

    v158 = *(&v197 + 1);
    v159 = v197;
    sub_22B11EDC0(v197, *(&v197 + 1));
    sub_22B11EDC0(v159, v158);
    result = (*(v185 + 8))(v157, v154);
  }

  else
  {
    (*(v185 + 8))(v196, v195);
    v160 = *(&v197 + 1);
    v161 = v197;
    sub_22B11EDC0(v197, *(&v197 + 1));
    sub_22B12F174(v150, v194);
    result = sub_22B11EDC0(v161, v160);
  }

LABEL_35:
  v105 = *MEMORY[0x277D85DE8];
  return result;
}