uint64_t sub_1D2658A58()
{
  v1 = v0[330];
  v2 = v0[303];
  v3 = v0[300];
  v4 = sub_1D2672E78(&qword_1ED89CBF8, MEMORY[0x1E69E8820]);
  sub_1D28796F8();
  sub_1D2672E78(&qword_1ED89CC00, MEMORY[0x1E69E87E8]);
  sub_1D2879338();
  v1(v2, v3);
  v5 = swift_task_alloc();
  v0[332] = v5;
  *v5 = v0;
  v5[1] = sub_1D2658BD4;
  v6 = v0[302];
  v7 = v0[288];

  return MEMORY[0x1EEE6DE58](v6, v0 + 219, v7, v4);
}

uint64_t sub_1D2658BD4()
{
  v2 = *v1;
  *(*v1 + 2664) = v0;

  if (v0)
  {
    (*(v2 + 2640))(*(v2 + 2416), *(v2 + 2400));

    v3 = sub_1D265BBA8;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 2320);
    v7 = *(v2 + 2312);
    v8 = *(v2 + 2304);
    (*(v2 + 2640))(*(v2 + 2416), *(v2 + 2400));
    (*(v7 + 8))(v6, v8);
    v5 = *(v2 + 2560);
    v4 = *(v2 + 2552);
    v3 = sub_1D2658D60;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D2658D60()
{
  v389 = v0;
  v356 = (v0 + 744);
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2624);
LABEL_2:
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_1D25D0574(*(v0 + 2632)), (v5 & 1) != 0))
  {
    sub_1D22D7044(*(v3 + 56) + 40 * v4, v0 + 1624);
    swift_endAccess();
    sub_1D227268C((v0 + 1624), v0 + 824);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
    swift_dynamicCast();
    v6 = *(v0 + 1840);
  }

  else
  {
    v7 = *(v0 + 2632);
    swift_endAccess();
    swift_allocObject();
    v8 = sub_1D2870F78();
    v6 = sub_1D26D5DB8(v8);

    *(v0 + 448) = v7;
    *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
    *(v0 + 424) = v6;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(v0 + 424, v7);
    swift_endAccess();
  }

  v9 = *(v6 + 88);

  if ((v9 & 1) == 0)
  {
    v10 = *(v0 + 2424);
    v11 = *(v0 + 2408);
    v12 = *(v0 + 2400);
    sub_1D28792C8();
    sub_1D28792F8();
    v13 = *(v11 + 8);
    *(v0 + 2640) = v13;
    *(v0 + 2648) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v12);
    if (sub_1D28798E8())
    {
      sub_1D2872658();
      v301 = sub_1D2873CA8();
      v302 = sub_1D28789F8();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        *v303 = 0;
        _os_log_impl(&dword_1D226E000, v301, v302, "Curated prompts have not been loaded yet, waiting to parse recipe", v303, 2u);
        MEMORY[0x1D38A3520](v303, -1, -1);
      }

      v304 = *(v0 + 2384);
      v305 = *(v0 + 2336);
      v306 = *(v0 + 2328);

      (*(v305 + 8))(v304, v306);
      v307 = sub_1D2879908();
      v309 = v308;
      sub_1D2879718();
      *(v0 + 1824) = v307;
      *(v0 + 1832) = v309;
      *(v0 + 1752) = 0u;
      *(v0 + 1768) = 1;
      v203 = sub_1D2658A58;
      v204 = 0;
      v205 = 0;
LABEL_120:

      return MEMORY[0x1EEE6DFA0](v203, v204, v205);
    }

    sub_1D2872658();
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 2392);
    v18 = *(v0 + 2336);
    v19 = *(v0 + 2328);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v374 = v19;
      *&v387[0] = swift_slowAlloc();
      v21 = *&v387[0];
      *v20 = 136315138;
      v22 = sub_1D28798D8();
      v24 = sub_1D23D7C84(v22, v23, v387);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D226E000, v14, v15, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38A3520](v21, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);

      (*(v18 + 8))(v17, v374);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }
  }

  v25 = *(sub_1D23C7858() + 88);

  if (v25 != 1)
  {
LABEL_14:
    v31 = *(sub_1D23C7858() + 88);

    if (v31)
    {
      sub_1D2872658();
      sub_1D2870F68();
      v32 = sub_1D2873CA8();
      v33 = sub_1D2878A18();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 2616);
      if (v34)
      {
        v36 = *(v0 + 2608);
        v37 = *(v0 + 2368);
        v38 = *(v0 + 2336);
        v375 = *(v0 + 2328);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v387[0] = v40;
        *v39 = 136315138;
        v41 = sub_1D23D7C84(v36, v35, v387);

        *(v39 + 4) = v41;
        v42 = v33;
        v43 = v32;
        v44 = "Cannot decode curated prompt from string: %s";
LABEL_19:
        _os_log_impl(&dword_1D226E000, v43, v42, v44, v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x1D38A3520](v40, -1, -1);
        MEMORY[0x1D38A3520](v39, -1, -1);

        (*(v38 + 8))(v37, v375);
        goto LABEL_24;
      }

      v58 = *(v0 + 2368);
    }

    else
    {
      sub_1D2872658();
      sub_1D2870F68();
      v32 = sub_1D2873CA8();
      v45 = sub_1D2878A18();

      v46 = os_log_type_enabled(v32, v45);
      v47 = *(v0 + 2616);
      if (v46)
      {
        v48 = *(v0 + 2608);
        v37 = *(v0 + 2376);
        v38 = *(v0 + 2336);
        v375 = *(v0 + 2328);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v387[0] = v40;
        *v39 = 136315138;
        v49 = sub_1D23D7C84(v48, v47, v387);

        *(v39 + 4) = v49;
        v42 = v45;
        v43 = v32;
        v44 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
        goto LABEL_19;
      }

      v58 = *(v0 + 2376);
    }

    v59 = *(v0 + 2336);
    v60 = *(v0 + 2328);

    (*(v59 + 8))(v58, v60);
LABEL_24:
    (*(v0 + 1880))(*(v0 + 2528));
    v61 = *(v0 + 2528);
    v62 = *(v0 + 2504);
    v63 = *(v0 + 2496);
    v64 = *(v0 + 2432);
    v65 = *(v0 + 2408);
    v66 = *(v0 + 2400);
    if (*(v0 + 1528))
    {
      sub_1D227268C((v0 + 1504), v0 + 1584);
      sub_1D267A600(v0 + 1584, 1, v0 + 1464);
      sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30);
      __swift_destroy_boxed_opaque_existential_0(v0 + 1584);
      (*(v65 + 8))(v64, v66);
      (*(v62 + 8))(v61, v63);
    }

    else
    {
      (*(v65 + 8))(*(v0 + 2432), *(v0 + 2400));
      (*(v62 + 8))(v61, v63);
      sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30);
    }

    goto LABEL_27;
  }

  v26 = *(v0 + 2616);
  v27 = *(v0 + 2608);
  v28 = *(v0 + 2288);
  v29 = *(v0 + 2280);
  v30 = *(v0 + 2272);
  sub_1D23C7858();
  sub_1D26D06B4(v27, v26, v30);

  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210);
    goto LABEL_14;
  }

  v50 = *(v0 + 2504);
  v370 = *(v0 + 2496);
  v376 = *(v0 + 2528);
  v51 = *(v0 + 2432);
  v52 = *(v0 + 2408);
  v53 = *(v0 + 2400);
  v54 = *(v0 + 2296);
  v55 = *(v0 + 2280);
  v56 = *(v0 + 2272);

  sub_1D2672F28(v56, v54, type metadata accessor for CuratedPrompt);
  *(v0 + 1408) = v55;
  *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
  sub_1D2672EC0(v54, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
  sub_1D267A600(v0 + 1384, 1, v0 + 1424);
  sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30);
  sub_1D2672F90(v54, type metadata accessor for CuratedPrompt);
  (*(v52 + 8))(v51, v53);
  (*(v50 + 8))(v376, v370);
  __swift_destroy_boxed_opaque_existential_0(v0 + 1384);
LABEL_27:
  v67 = *(v0 + 2600) + 1;
  if (v67 == *(v0 + 2576))
  {
LABEL_112:

    v299 = *(v0 + 8);
    goto LABEL_113;
  }

  v371 = *(v0 + 330);
  v377 = v1;
  while (1)
  {
    *(v0 + 2600) = v67;
    *(v0 + 330) = v371 & 1;
    *(v0 + 2592) = v1;
    v68 = *(v0 + 2568);
    if (v67 >= *(v68 + 16))
    {
      __break(1u);
      goto LABEL_132;
    }

    v69 = *(v0 + 2504);
    v70 = *(v69 + 16);
    v71 = *(v0 + 1872);
    v364 = *(v69 + 72);
    v70(*(v0 + 2528), v68 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v364 * v67, *(v0 + 2496));
    v72 = *(v71 + 32);
    v73 = *(v72 + 16);
    if (v73)
    {
      v74 = v72 + 32;
      sub_1D2870F68();
      v75 = MEMORY[0x1E69E7CC0];
      do
      {
        v76 = *(v0 + 2456);
        v77 = *(v0 + 2448);
        v78 = *(v0 + 2440);
        sub_1D22D7044(v74, v0 + 1104);
        sub_1D227268C((v0 + 1104), v0 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        v79 = swift_dynamicCast();
        (*(v76 + 56))(v78, v79 ^ 1u, 1, v77);
        if ((*(v76 + 48))(v78, 1, v77) == 1)
        {
          sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20);
        }

        else
        {
          sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1D27CC840(0, v75[2] + 1, 1, v75);
          }

          v81 = v75[2];
          v80 = v75[3];
          if (v81 >= v80 >> 1)
          {
            v75 = sub_1D27CC840(v80 > 1, v81 + 1, 1, v75);
          }

          v82 = *(v0 + 2488);
          v83 = *(v0 + 2456);
          v75[2] = v81 + 1;
          sub_1D2672F28(v82, v75 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, type metadata accessor for Prompt);
        }

        v74 += 40;
        --v73;
      }

      while (v73);
    }

    else
    {
      v75 = MEMORY[0x1E69E7CC0];
    }

    v84 = *(v0 + 1772);
    v85 = *(v0 + 2520);
    v86 = *(v0 + 2504);
    v87 = *(v0 + 2496);
    v70(v85, *(v0 + 2528), v87);
    v88 = *(v86 + 88);
    v89 = v88(v85, v87);
    if (v89 == v84)
    {
      v295 = *(v0 + 2520);
      v296 = *(v0 + 2504);
      v297 = *(v0 + 2496);
      v298 = *(v0 + 1896);

      (*(v296 + 96))(v295, v297);
      *(v0 + 2608) = *v295;
      *(v0 + 2616) = v295[1];
      sub_1D28792C8();
      v2 = *(v298 + 24);
      *(v0 + 2624) = v2;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      v1 = v377;
      goto LABEL_2;
    }

    if (v89 == *(v0 + 2864))
    {
      break;
    }

    if (v89 == *(v0 + 2868))
    {
      v113 = *(v0 + 2520);
      v114 = *(v0 + 2504);
      v115 = *(v0 + 2496);
      v116 = *(v0 + 2152);
      v117 = *(v0 + 2144);
      v118 = *(v0 + 2136);
      v119 = *(v0 + 2128);

      (*(v114 + 96))(v113, v115);
      (*(v118 + 32))(v116, v113, v119);
      sub_1D2878C18();
      (*(v118 + 16))(v117, v116, v119);
      v120 = sub_1D2878BD8();
      *(v0 + 2672) = v120;
      if (v120)
      {
        *(v0 + 2680) = sub_1D23C7314();
        *(v0 + 2688) = sub_1D2878558();
        v310 = sub_1D28784F8();
        v205 = v311;
        *(v0 + 2696) = v310;
        *(v0 + 2704) = v311;
        v203 = sub_1D265BF5C;
        v204 = v310;
        goto LABEL_120;
      }

      v121 = *(v0 + 2528);
      v122 = *(v0 + 2504);
      v123 = *(v0 + 2496);
      (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
      (*(v122 + 8))(v121, v123);
      v371 = *(v0 + 330);
      v124 = (v0 + 2592);
      goto LABEL_108;
    }

    if (v89 == *(v0 + 2872))
    {
      v125 = *(v0 + 2520);
      v126 = *(v0 + 1960);
      v127 = *(v0 + 1952);
      v379 = *(v0 + 1944);
      v362 = *(*(v0 + 2504) + 96);
      v362(v125, *(v0 + 2496));
      (*(v127 + 32))(v126, v125, v379);
      v128 = sub_1D2872238();
      *(v0 + 2752) = v128;
      *(v0 + 2760) = v129;
      if (v129 >> 60 == 15)
      {
        return sub_1D2879398();
      }

      v130 = v128;
      v131 = v129;

      v132 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1D22D6CF8(v130, v131);
      sub_1D22D6CF8(v130, v131);
      v133 = sub_1D28716D8();
      v134 = [v132 initWithData_];

      sub_1D22D6D4C(v130, v131);
      if (v134)
      {
        v312 = *(v0 + 1936);
        v313 = *(v0 + 1920);
        v359 = sub_1D2630BC0();
        v314 = (v312 + v313[9]);
        *v314 = 0u;
        v314[1] = 0u;
        *(v312 + v313[10]) = xmmword_1D28809A0;
        v372 = v130;
        v315 = v313[11];
        v316 = sub_1D2873AA8();
        (*(*(v316 - 8) + 56))(v312 + v315, 1, 1, v316);
        *v312 = v134;
        *(v312 + 8) = 2;
        [v134 imageOrientation];
        *(v312 + 24) = sub_1D2878C88();
        *(v312 + 16) = v359;
        *(v312 + 32) = 0;
        *(v312 + 40) = 0;
        *(v312 + v313[12]) = 0;
        sub_1D2871808();
        sub_1D22D6D4C(v372, v131);
        v317 = sub_1D28722E8();
        v318 = *(v317 + 16);
        if (v318)
        {
          v384 = 0;
          v319 = v317 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
          do
          {
            v322 = *(v0 + 2880);
            v323 = *(v0 + 2512);
            v324 = *(v0 + 2496);
            v70(v323, v319, v324);
            v325 = v88(v323, v324);
            v326 = *(v0 + 2512);
            if (v325 == v322)
            {
              v320 = *(v0 + 2032);
              v321 = *(v0 + 2024);
              v357 = *(v0 + 1992);
              v360 = *(v0 + 1984);
              v373 = *(v0 + 1976);
              v385 = *(v0 + 2016);
              v362(v326, *(v0 + 2496));
              v358 = v320;
              (*(v321 + 32))(v320, v326, v385);
              sub_1D2872418();
              sub_1D2871EA8();
              LOBYTE(v320) = sub_1D2871F78();
              (*(v360 + 8))(v357, v373);
              (*(v321 + 8))(v358, v385);
              v384 = v320 ^ 1;
            }

            else
            {
              (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
            }

            v319 += v364;
            --v318;
          }

          while (v318);

          v327 = v384;
          goto LABEL_133;
        }

LABEL_132:

        v327 = 0;
LABEL_133:
        v328 = v327 & 1;
        *(v0 + 331) = v327 & 1;
        *(v0 + 2768) = sub_1D23C7314();
        *(v0 + 2776) = sub_1D2878558();
        v329 = swift_task_alloc();
        *(v0 + 2784) = v329;
        *v329 = v0;
        v329[1] = sub_1D26620A4;
        v330 = *(v0 + 1936);

        return sub_1D28421E4(v0 + 280, v330, v328);
      }

      sub_1D22D6D4C(v130, v131);
      sub_1D23EE050();
      v135 = swift_allocError();
      *v136 = 0;
      swift_willThrow();
      sub_1D22D6D4C(v130, v131);
      sub_1D2872658();
      v137 = v135;
      v138 = sub_1D2873CA8();
      v139 = sub_1D2878A18();

      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        *v140 = 138412290;
        v142 = v135;
        v143 = _swift_stdlib_bridgeErrorToNSError();
        *(v140 + 4) = v143;
        *v141 = v143;
        _os_log_impl(&dword_1D226E000, v138, v139, "Could not decode image from recipe with error: %@", v140, 0xCu);
        sub_1D22BD238(v141, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v141, -1, -1);
        MEMORY[0x1D38A3520](v140, -1, -1);
      }

      v380 = *(v0 + 2528);
      v144 = *(v0 + 2504);
      v366 = *(v0 + 2496);
      v145 = *(v0 + 2344);
      v146 = *(v0 + 2336);
      v147 = *(v0 + 2328);
      v148 = *(v0 + 1960);
      v149 = *(v0 + 1952);
      v150 = *(v0 + 1944);

      (*(v146 + 8))(v145, v147);
      (*(v149 + 8))(v148, v150);
      (*(v144 + 8))(v380, v366);
      v1 = 0;
      goto LABEL_109;
    }

    if (v89 == *(v0 + 2876))
    {
      v151 = *(v0 + 2520);
      v152 = *(v0 + 2504);
      v153 = *(v0 + 2496);
      v154 = *(v0 + 2120);
      v155 = *(v0 + 2104);
      v156 = *(v0 + 2096);

      (*(v152 + 96))(v151, v153);
      (*(v155 + 32))(v154, v151, v156);
      v157 = sub_1D23C6DDC();
      *(v0 + 1856) = v157;
      v158 = off_1F4DCA918[0];
      type metadata accessor for _PeopleRetrieval();
      v159 = v158();

      *(swift_task_alloc() + 16) = v154;
      sub_1D274BE58(sub_1D2672DCC, v159, v0 + 784);
      *(v0 + 2720) = v377;

      if (*(v0 + 808))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
        if (swift_dynamicCast())
        {
          v160 = v0 + 744;
          if (*(v0 + 768))
          {
            sub_1D227268C(v356, v0 + 704);
            sub_1D22D7044(v0 + 704, v0 + 984);
            if (swift_dynamicCast())
            {
              v161 = *(v0 + 2088);
              (*(*(v0 + 2056) + 56))(v161, 0, 1, *(v0 + 2048));
              v162 = *v161;
              v163 = v161[1];
              v164 = v161[2];
              *(v0 + 136) = v161[3];
              *(v0 + 120) = v164;
              *(v0 + 104) = v163;
              *(v0 + 88) = v162;
              sub_1D22D63B0(v0 + 88, v0 + 152);
              sub_1D2672F90(v161, type metadata accessor for PhotosPersonAsset);
              v165 = sub_1D2872298();
              *(v0 + 2728) = v166;
              if (v166)
              {
                goto LABEL_140;
              }

              sub_1D22D640C(v0 + 88);
            }

            else
            {
              v286 = *(v0 + 2088);
              (*(*(v0 + 2056) + 56))(v286, 1, 1, *(v0 + 2048));
              sub_1D22BD238(v286, &unk_1EC6DDDC0);
            }

            v287 = *(v0 + 2528);
            v288 = *(v0 + 2504);
            v289 = *(v0 + 2496);
            v290 = *(v0 + 728);
            v291 = *(v0 + 736);
            v292 = __swift_project_boxed_opaque_existential_1((v0 + 704), v290);
            *(v0 + 1088) = v290;
            *(v0 + 1096) = *(v291 + 8);
            v293 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
            (*(*(v290 - 8) + 16))(v293, v292, v290);
            v371 = 1;
            sub_1D267A600(v0 + 1064, 1, v0 + 1024);
            sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30);
            (*(v288 + 8))(v287, v289);
            __swift_destroy_boxed_opaque_existential_0(v0 + 1064);
            v294 = *(v0 + 2104);
            __swift_destroy_boxed_opaque_existential_0(v0 + 704);
            v273 = *(v294 + 8);
LABEL_107:
            v273(*(v0 + 2120), *(v0 + 2096));
            v124 = (v0 + 2720);
LABEL_108:
            v1 = *v124;
            goto LABEL_109;
          }
        }

        else
        {
          *(v0 + 776) = 0;
          *v356 = 0u;
          *(v0 + 760) = 0u;
          v160 = v0 + 744;
        }
      }

      else
      {
        sub_1D22BD238(v0 + 784, &qword_1EC6DAD30);
        v160 = v0 + 744;
        *v356 = 0u;
        *(v0 + 760) = 0u;
        *(v0 + 776) = 0;
      }

      v255 = *(v0 + 2120);
      v256 = *(v0 + 2112);
      v257 = *(v0 + 2104);
      v258 = *(v0 + 2096);
      sub_1D22BD238(v160, &qword_1EC6D9A58);
      sub_1D2872658();
      (*(v257 + 16))(v256, v255, v258);
      v259 = sub_1D2873CA8();
      v260 = sub_1D2878A18();
      v261 = os_log_type_enabled(v259, v260);
      v262 = *(v0 + 2352);
      v263 = *(v0 + 2336);
      v264 = *(v0 + 2328);
      v265 = *(v0 + 2112);
      v266 = *(v0 + 2104);
      v267 = *(v0 + 2096);
      if (v261)
      {
        v382 = *(v0 + 2328);
        v268 = swift_slowAlloc();
        v355 = swift_slowAlloc();
        *&v387[0] = v355;
        *v268 = 136315138;
        v351 = sub_1D28722B8();
        v368 = v262;
        v270 = v269;
        v271 = *(v266 + 8);
        v271(v265, v267);
        v272 = sub_1D23D7C84(v351, v270, v387);

        *(v268 + 4) = v272;
        _os_log_impl(&dword_1D226E000, v259, v260, "Cannot find person face with id: %s", v268, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v355);
        MEMORY[0x1D38A3520](v355, -1, -1);
        MEMORY[0x1D38A3520](v268, -1, -1);

        v273 = v271;
        (*(v263 + 8))(v368, v382);
      }

      else
      {

        v273 = *(v266 + 8);
        v273(v265, v267);
        (*(v263 + 8))(v262, v264);
      }

      (*(v0 + 1880))(*(v0 + 2528));
      v274 = *(v0 + 2528);
      v275 = *(v0 + 2504);
      v276 = *(v0 + 2496);
      if (*(v0 + 928))
      {
        sub_1D227268C((v0 + 904), v0 + 864);
        v371 = 1;
        sub_1D267A600(v0 + 864, 1, v0 + 944);
        sub_1D22BD238(v0 + 944, &unk_1EC6E1D30);
        __swift_destroy_boxed_opaque_existential_0(v0 + 864);
        (*(v275 + 8))(v274, v276);
      }

      else
      {
        (*(v275 + 8))(*(v0 + 2528), *(v0 + 2496));
        sub_1D22BD238(v0 + 904, &unk_1EC6E1D30);
      }

      goto LABEL_107;
    }

    v1 = v377;
    if (v89 == *(v0 + 2880))
    {
      v167 = *(v0 + 2520);
      v168 = *(v0 + 2504);
      v169 = *(v0 + 2496);
      v170 = *(v0 + 2040);
      v171 = *(v0 + 2024);
      v172 = *(v0 + 2016);

      (*(v168 + 96))(v167, v169);
      (*(v171 + 32))(v170, v167, v172);
      sub_1D2872418();
      sub_1D2871EA8();
      if (sub_1D2871F78())
      {
        v173 = *(v0 + 2008);
        v174 = *(v0 + 1984);
        v175 = *(v0 + 1976);
        v176 = *(v0 + 1968);
        v177 = *(sub_1D23C6B54() + 64);
        sub_1D2870F68();

        *(swift_task_alloc() + 16) = v173;
        sub_1D274B77C(sub_1D264BD08, v177, v176);

        if ((*(v174 + 48))(v176, 1, v175) != 1)
        {
          v383 = *(v0 + 2528);
          v277 = *(v0 + 2504);
          v363 = *(v0 + 2040);
          v369 = *(v0 + 2496);
          v278 = *(v0 + 2024);
          v279 = *(v0 + 2016);
          v280 = *(v0 + 2000);
          v281 = v1;
          v282 = *(v0 + 1984);
          v283 = *(v0 + 1976);
          (*(v282 + 32))(v280, *(v0 + 1968), v283);
          *(v0 + 688) = v283;
          *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
          v284 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
          (*(v282 + 16))(v284, v280, v283);
          sub_1D267A600(v0 + 664, 1, v0 + 624);
          sub_1D22BD238(v0 + 624, &unk_1EC6E1D30);
          v285 = *(v282 + 8);
          v285(v280, v283);
          v1 = v281;
          (*(v278 + 8))(v363, v279);
          (*(v277 + 8))(v383, v369);
          __swift_destroy_boxed_opaque_existential_0(v0 + 664);
          v285(*(v0 + 2008), *(v0 + 1976));
          goto LABEL_109;
        }

        sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30);
      }

      v178 = *(v0 + 2008);
      v179 = MEMORY[0x1D389AA30]();
      LOBYTE(v178) = sub_1D22D19B8(v178, v179);

      if (v178)
      {
        v381 = *(v0 + 2528);
        v180 = *(v0 + 2504);
        v367 = *(v0 + 2496);
        v181 = *(v0 + 2040);
        v182 = *(v0 + 2024);
        v183 = *(v0 + 2016);
        v184 = *(v0 + 2008);
        v185 = *(v0 + 1984);
        v186 = *(v0 + 1976);
        *(v0 + 608) = v186;
        *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
        v187 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
        (*(v185 + 16))(v187, v184, v186);
        sub_1D267A600(v0 + 584, 1, v0 + 544);
        sub_1D22BD238(v0 + 544, &unk_1EC6E1D30);
        (*(v182 + 8))(v181, v183);
        (*(v180 + 8))(v381, v367);
        __swift_destroy_boxed_opaque_existential_0(v0 + 584);
        (*(v185 + 8))(*(v0 + 2008), *(v0 + 1976));
      }

      else
      {
        v244 = *(v0 + 2008);
        v245 = *(v0 + 1992);
        v246 = *(v0 + 1984);
        v247 = *(v0 + 1976);
        sub_1D2871F48();
        LOBYTE(v244) = MEMORY[0x1D389AA00](v244, v245);
        v248 = *(v246 + 8);
        v248(v245, v247);
        v249 = *(v0 + 2528);
        v250 = *(v0 + 2504);
        v251 = *(v0 + 2496);
        v252 = *(v0 + 2040);
        v253 = *(v0 + 2024);
        v254 = *(v0 + 2016);
        if (v244)
        {
          *(v0 + 528) = *(v0 + 1976);
          *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
          __swift_allocate_boxed_opaque_existential_1((v0 + 504));
          MEMORY[0x1D389AA70]();
          sub_1D267A600(v0 + 504, 1, v0 + 464);
          sub_1D22BD238(v0 + 464, &unk_1EC6E1D30);
          (*(v253 + 8))(v252, v254);
          (*(v250 + 8))(v249, v251);
          __swift_destroy_boxed_opaque_existential_0(v0 + 504);
        }

        else
        {
          (*(v253 + 8))(*(v0 + 2040), *(v0 + 2016));
          (*(v250 + 8))(v249, v251);
        }

        v248(*(v0 + 2008), *(v0 + 1976));
      }

LABEL_109:
      v67 = *(v0 + 2600) + 1;
      if (v67 == *(v0 + 2576))
      {
        goto LABEL_112;
      }

      v377 = v1;
    }

    else
    {
      v90 = *(v0 + 2520);
      v91 = *(v0 + 2496);
      v92 = *(*(v0 + 2504) + 8);
      v92(*(v0 + 2528), v91);

      v92(v90, v91);
      v67 = *(v0 + 2600) + 1;
      if (v67 == *(v0 + 2576))
      {
        goto LABEL_112;
      }
    }
  }

  v93 = *(v0 + 2520);
  v94 = *(v0 + 2264);
  v95 = *(v0 + 2256);
  v96 = *(v0 + 2248);
  v97 = *(v0 + 2240);
  v352 = *(v0 + 2232);
  v98 = *(v0 + 2184);
  v99 = *(v0 + 2176);
  (*(*(v0 + 2504) + 96))(v93, *(v0 + 2496));
  (*(v95 + 32))(v94, v93, v96);
  v100 = sub_1D2872368();
  v365 = v101;
  (*(v98 + 56))(v97, 1, 1, v99);
  v102 = sub_1D28723D8();
  v103 = swift_task_alloc();
  *(v103 + 16) = v94;
  v104 = v377;
  v378 = sub_1D2654E54(sub_1D2672DEC, v103, v102);
  v361 = v104;

  sub_1D2871778();
  sub_1D22BD1D0(v97, v352, &unk_1EC6E1D40);
  v105 = (*(v98 + 48))(v352, 1, v99);
  v106 = *(v0 + 2232);
  if (v105 != 1)
  {
    (*(*(v0 + 2184) + 32))(*(v0 + 2200), v106, *(v0 + 2176));
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v353 = *(v0 + 2584);
    v188 = *(v0 + 2200);
    v189 = *(v0 + 2192);
    v190 = *(v0 + 2184);
    v350 = *(v0 + 2176);
    v191 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
    *(v0 + 1808) = sub_1D28782D8();
    *(v0 + 1816) = v192;
    *(v0 + 1792) = 12369903;
    *(v0 + 1800) = 0xA300000000000000;
    *(v0 + 1776) = 0;
    *(v0 + 1784) = 0xE000000000000000;
    v348 = sub_1D22BD06C();
    v347 = MEMORY[0x1E69E6158];
    v193 = sub_1D2878FA8();
    v195 = v194;

    v196 = sub_1D24B63AC(v191, v193, v195);
    v349 = v197;

    *(v0 + 1848) = v196;
    sub_1D22BCFD0(0, &qword_1ED89CD40);
    (*(v190 + 16))(v189, v188, v350);
    v198 = sub_1D2878AE8();
    v199 = [v198 length];
    v200 = swift_allocObject();
    *(v200 + 16) = v0 + 1848;
    v201 = swift_allocObject();
    *(v201 + 16) = sub_1D2436B8C;
    *(v201 + 24) = v200;
    *(v0 + 368) = sub_1D2436B94;
    *(v0 + 376) = v201;
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1D267502C;
    *(v0 + 360) = &block_descriptor_33;
    v202 = _Block_copy((v0 + 336));
    sub_1D2870F78();

    [v198 enumerateAttribute:v353 inRange:0 options:v199 usingBlock:{0, v202}];

    _Block_release(v202);
    LOBYTE(v202) = swift_isEscapingClosureAtFileLocation();

    if ((v202 & 1) == 0)
    {
      v206 = *(v0 + 2472);
      v207 = *(v0 + 2200);
      v208 = *(v0 + 2184);
      v209 = *(v0 + 2176);
      v210 = *(v0 + 1848);

      *(v206 + 24) = v210;
      v112 = v361;
      *(v206 + 32) = v349 & 1;
      v211 = sub_1D27E0DA0();
      v213 = sub_1D27E1420(v211, v212);
      v111 = v214;

      (*(v208 + 8))(v207, v209);
      v109 = v213;
      goto LABEL_76;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v203, v204, v205);
  }

  sub_1D22BD238(v106, &unk_1EC6E1D40);
  if (qword_1ED89CD48 != -1)
  {
    swift_once();
  }

  v107 = *(v0 + 2472);
  *(v107 + 24) = sub_1D24B63AC(qword_1ED8B0010, v100, v365);
  *(v107 + 32) = v108 & 1;
  v109 = sub_1D27E1420(v100, v365);
  v111 = v110;
  v112 = v104;
LABEL_76:
  v1 = v112;
  v215 = *(v0 + 2480);
  v216 = *(v0 + 2472);
  v217 = *(v0 + 2448);
  v354 = *(v0 + 2240);
  v218 = *(v0 + 2224);
  v219 = *(v0 + 2216);
  v220 = *(v0 + 2208);
  v216[1] = v109;
  v216[2] = v111;
  v216[5] = v378;
  (*(v219 + 16))(v216 + *(v217 + 36), v218, v220);
  *(v216 + *(v217 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  v221 = v387[3];
  *(v0 + 48) = v387[2];
  *(v0 + 64) = v221;
  *(v0 + 80) = v388;
  v222 = v387[1];
  *(v0 + 16) = v387[0];
  *(v0 + 32) = v222;
  v223 = sub_1D2879818();
  (*(v219 + 8))(v218, v220);
  sub_1D22BD238(v354, &unk_1EC6E1D40);
  *v216 = v223;
  v165 = sub_1D2672F28(v216, v215, type metadata accessor for Prompt);
  v224 = 0;
  v225 = v75[2];
  while (2)
  {
    if (v225 == v224)
    {
      v233 = *(v0 + 329);

      if ((v233 & 1) == 0)
      {
LABEL_88:
        v236 = *(v0 + 2528);
        v237 = *(v0 + 2504);
        v238 = *(v0 + 2496);
        v239 = *(v0 + 2480);
        *(v0 + 1368) = *(v0 + 2448);
        *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt);
        v240 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
        sub_1D2672EC0(v239, v240, type metadata accessor for Prompt);
        sub_1D267A600(v0 + 1344, 1, v0 + 1304);
        sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30);
        (*(v237 + 8))(v236, v238);
        __swift_destroy_boxed_opaque_existential_0(v0 + 1344);
        goto LABEL_92;
      }

      if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
      {

        goto LABEL_88;
      }

      v331 = v234;
      v386 = v235;

      sub_1D2872658();
      v332 = sub_1D2873CA8();
      v333 = sub_1D28789F8();
      if (os_log_type_enabled(v332, v333))
      {
        v334 = swift_slowAlloc();
        *v334 = 0;
        _os_log_impl(&dword_1D226E000, v332, v333, "Blocking name to photo substitution when loading context from GenerationRecipe", v334, 2u);
        MEMORY[0x1D38A3520](v334, -1, -1);
      }

      v335 = *(v0 + 2528);
      v336 = *(v0 + 2504);
      v337 = *(v0 + 2496);
      v338 = *(v0 + 2480);
      v339 = *(v0 + 2360);
      v340 = *(v0 + 2336);
      v341 = *(v0 + 2328);

      (*(v340 + 8))(v339, v341);
      sub_1D2672E0C();
      swift_allocError();
      *v342 = v331;
      v342[1] = v386;
      swift_willThrow();
      (*(v336 + 8))(v335, v337);
      sub_1D2672F90(v338, type metadata accessor for Prompt);
      (*(*(v0 + 2256) + 8))();

      v299 = *(v0 + 8);
LABEL_113:

      return v299();
    }

    if (v224 < v75[2])
    {
      v226 = *(v0 + 2480);
      v227 = *(v0 + 2464);
      sub_1D2672EC0(v75 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v224, v227, type metadata accessor for Prompt);
      v228 = *(v227 + 8);
      v229 = *(v227 + 16);
      v230 = *(v0 + 2464);
      if (v228 == *(v226 + 8) && v229 == *(v226 + 16))
      {
        sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_91:
        (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

LABEL_92:
        v241 = *(v0 + 2264);
        v242 = *(v0 + 2256);
        v243 = *(v0 + 2248);
        sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
        (*(v242 + 8))(v241, v243);
        goto LABEL_109;
      }

      ++v224;
      v232 = sub_1D2879618();
      v165 = sub_1D2672F90(v230, type metadata accessor for Prompt);
      if (v232)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_140:
  v343 = v165;
  v344 = v166;
  *(v0 + 2736) = sub_1D23C6DDC();
  *(v0 + 216) = *(v0 + 88);
  *(v0 + 232) = *(v0 + 104);
  *(v0 + 248) = *(v0 + 120);
  *(v0 + 264) = *(v0 + 136);
  v345 = swift_task_alloc();
  *(v0 + 2744) = v345;
  *v345 = v0;
  v345[1] = sub_1D265EFD8;
  v346 = *(v0 + 2080);

  return sub_1D255FA4C(v346, v343, v344, v0 + 216);
}

uint64_t sub_1D265BBA8()
{
  (*(v0[289] + 8))(v0[290], v0[288]);
  v1 = v0[320];
  v2 = v0[319];

  return MEMORY[0x1EEE6DFA0](sub_1D265BC24, v2, v1);
}

uint64_t sub_1D265BC24()
{
  v1 = v0[330];
  v2 = v0[304];
  v3 = v0[300];

  v1(v2, v3);
  (*(v0[313] + 8))(v0[316], v0[312]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D265BF5C()
{
  v1 = v0[334];
  v2 = swift_task_alloc();
  v0[339] = v2;
  *v2 = v0;
  v2[1] = sub_1D265BFFC;
  v3 = v0[335];

  return sub_1D2674838(v1, v3);
}

uint64_t sub_1D265BFFC()
{
  v1 = *v0;

  v2 = *(v1 + 2704);
  v3 = *(v1 + 2696);

  return MEMORY[0x1EEE6DFA0](sub_1D265C11C, v3, v2);
}

uint64_t sub_1D265C11C()
{

  sub_1D267F6F0();
  sub_1D267E8EC();

  v1 = *(v0 + 2560);
  v2 = *(v0 + 2552);

  return MEMORY[0x1EEE6DFA0](sub_1D265C19C, v2, v1);
}

uint64_t sub_1D265C19C()
{
  v384 = v0;
  v351 = (v0 + 744);

  while (1)
  {
    v1 = *(v0 + 2528);
    v2 = *(v0 + 2504);
    v3 = *(v0 + 2496);
    (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
    v4 = (*(v2 + 8))(v1, v3);
    v6 = *(v0 + 2600) + 1;
    if (v6 == *(v0 + 2576))
    {
LABEL_111:

      v303 = *(v0 + 8);
      goto LABEL_112;
    }

    v7 = *(v0 + 2592);
    v8 = *(v0 + 330);
    while (1)
    {
      *(v0 + 2600) = v6;
      *(v0 + 330) = v8 & 1;
      *(v0 + 2592) = v7;
      v9 = *(v0 + 2568);
      if (v6 >= *(v9 + 16))
      {
        goto LABEL_137;
      }

      v375 = v7;
      v372 = v8;
      v10 = *(v0 + 2504);
      v11 = *(v10 + 16);
      v12 = *(v0 + 1872);
      v361 = *(v10 + 72);
      v11(*(v0 + 2528), v9 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v361 * v6, *(v0 + 2496));
      v13 = *(v12 + 32);
      v14 = *(v13 + 16);
      if (v14)
      {
        v366 = v11;
        v15 = v13 + 32;
        sub_1D2870F68();
        v16 = MEMORY[0x1E69E7CC0];
        do
        {
          v17 = *(v0 + 2456);
          v18 = *(v0 + 2448);
          v19 = *(v0 + 2440);
          sub_1D22D7044(v15, v0 + 1104);
          sub_1D227268C((v0 + 1104), v0 + 384);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
          v20 = swift_dynamicCast();
          (*(v17 + 56))(v19, v20 ^ 1u, 1, v18);
          if ((*(v17 + 48))(v19, 1, v18) == 1)
          {
            sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20);
          }

          else
          {
            sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1D27CC840(0, v16[2] + 1, 1, v16);
            }

            v22 = v16[2];
            v21 = v16[3];
            if (v22 >= v21 >> 1)
            {
              v16 = sub_1D27CC840(v21 > 1, v22 + 1, 1, v16);
            }

            v23 = *(v0 + 2488);
            v24 = *(v0 + 2456);
            v16[2] = v22 + 1;
            sub_1D2672F28(v23, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for Prompt);
          }

          v15 += 40;
          --v14;
        }

        while (v14);

        v11 = v366;
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      v25 = *(v0 + 1772);
      v26 = *(v0 + 2520);
      v27 = *(v0 + 2504);
      v28 = *(v0 + 2496);
      v11(v26, *(v0 + 2528), v28);
      v29 = *(v27 + 88);
      v30 = v29(v26, v28);
      if (v30 != v25)
      {
        break;
      }

      v31 = *(v0 + 2520);
      v32 = *(v0 + 2504);
      v33 = *(v0 + 2496);
      v34 = *(v0 + 1896);

      (*(v32 + 96))(v31, v33);
      *(v0 + 2608) = *v31;
      *(v0 + 2616) = v31[1];
      sub_1D28792C8();
      v35 = *(v34 + 24);
      *(v0 + 2624) = v35;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v36 = *(v35 + 16);
      if (*(v36 + 16) && (v37 = sub_1D25D0574(*(v0 + 2632)), (v38 & 1) != 0))
      {
        sub_1D22D7044(*(v36 + 56) + 40 * v37, v0 + 1624);
        swift_endAccess();
        sub_1D227268C((v0 + 1624), v0 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
        swift_dynamicCast();
        v39 = *(v0 + 1840);
      }

      else
      {
        v56 = *(v0 + 2632);
        swift_endAccess();
        swift_allocObject();
        v57 = sub_1D2870F78();
        v39 = sub_1D26D5DB8(v57);

        *(v0 + 448) = v56;
        *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v0 + 424) = v39;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v0 + 424, v56);
        swift_endAccess();
      }

      v58 = *(v39 + 88);

      if ((v58 & 1) == 0)
      {
        v59 = *(v0 + 2424);
        v60 = *(v0 + 2408);
        v61 = *(v0 + 2400);
        sub_1D28792C8();
        sub_1D28792F8();
        v62 = *(v60 + 8);
        *(v0 + 2640) = v62;
        *(v0 + 2648) = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v62(v59, v61);
        if (sub_1D28798E8())
        {
          sub_1D2872658();
          v305 = sub_1D2873CA8();
          v306 = sub_1D28789F8();
          if (os_log_type_enabled(v305, v306))
          {
            v307 = swift_slowAlloc();
            *v307 = 0;
            _os_log_impl(&dword_1D226E000, v305, v306, "Curated prompts have not been loaded yet, waiting to parse recipe", v307, 2u);
            MEMORY[0x1D38A3520](v307, -1, -1);
          }

          v308 = *(v0 + 2384);
          v309 = *(v0 + 2336);
          v310 = *(v0 + 2328);

          (*(v309 + 8))(v308, v310);
          v311 = sub_1D2879908();
          v313 = v312;
          sub_1D2879718();
          *(v0 + 1824) = v311;
          *(v0 + 1832) = v313;
          *(v0 + 1752) = 0u;
          *(v0 + 1768) = 1;
          v146 = sub_1D2658A58;
          v147 = 0;
          v148 = 0;
LABEL_118:

          return MEMORY[0x1EEE6DFA0](v146, v147, v148);
        }

        sub_1D2872658();
        v63 = sub_1D2873CA8();
        v64 = sub_1D2878A18();
        v65 = os_log_type_enabled(v63, v64);
        v66 = *(v0 + 2392);
        v67 = *(v0 + 2336);
        v68 = *(v0 + 2328);
        if (v65)
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v382[0] = v70;
          *v69 = 136315138;
          v71 = sub_1D28798D8();
          v73 = sub_1D23D7C84(v71, v72, v382);

          *(v69 + 4) = v73;
          _os_log_impl(&dword_1D226E000, v63, v64, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x1D38A3520](v70, -1, -1);
          MEMORY[0x1D38A3520](v69, -1, -1);
        }

        (*(v67 + 8))(v66, v68);
      }

      v74 = *(sub_1D23C7858() + 88);

      if (v74 != 1)
      {
        goto LABEL_39;
      }

      v75 = *(v0 + 2616);
      v76 = *(v0 + 2608);
      v77 = *(v0 + 2288);
      v78 = *(v0 + 2280);
      v79 = *(v0 + 2272);
      sub_1D23C7858();
      sub_1D26D06B4(v76, v75, v79);

      if ((*(v77 + 48))(v79, 1, v78) == 1)
      {
        sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210);
LABEL_39:
        v80 = *(sub_1D23C7858() + 88);

        if (v80)
        {
          sub_1D2872658();
          sub_1D2870F68();
          v81 = sub_1D2873CA8();
          v82 = sub_1D2878A18();

          v83 = os_log_type_enabled(v81, v82);
          v84 = *(v0 + 2616);
          if (v83)
          {
            v85 = *(v0 + 2608);
            v86 = *(v0 + 2368);
            v87 = *(v0 + 2336);
            v88 = *(v0 + 2328);
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            *&v382[0] = v90;
            *v89 = 136315138;
            v91 = sub_1D23D7C84(v85, v84, v382);

            *(v89 + 4) = v91;
            v92 = v82;
            v93 = v81;
            v94 = "Cannot decode curated prompt from string: %s";
            goto LABEL_51;
          }

          v198 = *(v0 + 2368);
LABEL_75:
          v199 = *(v0 + 2336);
          v200 = *(v0 + 2328);

          (*(v199 + 8))(v198, v200);
        }

        else
        {
          sub_1D2872658();
          sub_1D2870F68();
          v81 = sub_1D2873CA8();
          v124 = sub_1D2878A18();

          v125 = os_log_type_enabled(v81, v124);
          v126 = *(v0 + 2616);
          if (!v125)
          {
            v198 = *(v0 + 2376);
            goto LABEL_75;
          }

          v127 = *(v0 + 2608);
          v86 = *(v0 + 2376);
          v87 = *(v0 + 2336);
          v88 = *(v0 + 2328);
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v382[0] = v90;
          *v89 = 136315138;
          v128 = sub_1D23D7C84(v127, v126, v382);

          *(v89 + 4) = v128;
          v92 = v124;
          v93 = v81;
          v94 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_51:
          _os_log_impl(&dword_1D226E000, v93, v92, v94, v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x1D38A3520](v90, -1, -1);
          MEMORY[0x1D38A3520](v89, -1, -1);

          (*(v87 + 8))(v86, v88);
        }

        (*(v0 + 1880))(*(v0 + 2528));
        v201 = *(v0 + 2528);
        v202 = *(v0 + 2504);
        v203 = *(v0 + 2496);
        v204 = *(v0 + 2432);
        v205 = *(v0 + 2408);
        v206 = *(v0 + 2400);
        if (*(v0 + 1528))
        {
          sub_1D227268C((v0 + 1504), v0 + 1584);
          sub_1D267A600(v0 + 1584, 1, v0 + 1464);
          sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30);
          __swift_destroy_boxed_opaque_existential_0(v0 + 1584);
          (*(v205 + 8))(v204, v206);
          v4 = (*(v202 + 8))(v201, v203);
        }

        else
        {
          (*(v205 + 8))(*(v0 + 2432), *(v0 + 2400));
          (*(v202 + 8))(v201, v203);
          v4 = sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30);
        }

        v8 = *(v0 + 330);
        goto LABEL_6;
      }

      v373 = *(v0 + 2528);
      v175 = *(v0 + 2504);
      v176 = *(v0 + 2496);
      v177 = *(v0 + 2432);
      v178 = *(v0 + 2408);
      v179 = *(v0 + 2400);
      v180 = *(v0 + 2296);
      v181 = *(v0 + 2280);
      v182 = *(v0 + 2272);

      sub_1D2672F28(v182, v180, type metadata accessor for CuratedPrompt);
      *(v0 + 1408) = v181;
      *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
      sub_1D2672EC0(v180, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
      sub_1D267A600(v0 + 1384, 1, v0 + 1424);
      sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30);
      sub_1D2672F90(v180, type metadata accessor for CuratedPrompt);
      (*(v178 + 8))(v177, v179);
      (*(v175 + 8))(v373, v176);
      v4 = __swift_destroy_boxed_opaque_existential_0(v0 + 1384);
      v8 = *(v0 + 330);
LABEL_6:
      v7 = v375;
LABEL_7:
      v6 = *(v0 + 2600) + 1;
      if (v6 == *(v0 + 2576))
      {
        goto LABEL_111;
      }
    }

    if (v30 == *(v0 + 2864))
    {
      break;
    }

    if (v30 != *(v0 + 2868))
    {
      if (v30 == *(v0 + 2872))
      {
        v367 = v11;
        v95 = *(v0 + 2520);
        v96 = *(v0 + 1960);
        v97 = *(v0 + 1952);
        v98 = *(v0 + 1944);
        v376 = (*(v0 + 2504) + 96);
        v360 = *v376;
        (*v376)(v95, *(v0 + 2496));
        (*(v97 + 32))(v96, v95, v98);
        v99 = sub_1D2872238();
        *(v0 + 2752) = v99;
        *(v0 + 2760) = v100;
        if (v100 >> 60 == 15)
        {
          return sub_1D2879398();
        }

        v101 = v99;
        v102 = v100;

        v103 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_1D22D6CF8(v101, v102);
        sub_1D22D6CF8(v101, v102);
        v104 = sub_1D28716D8();
        v105 = [v103 initWithData_];

        sub_1D22D6D4C(v101, v102);
        if (v105)
        {
          v314 = *(v0 + 1936);
          v315 = *(v0 + 1920);
          v357 = sub_1D2630BC0();
          v316 = (v314 + v315[9]);
          *v316 = 0u;
          v316[1] = 0u;
          *(v314 + v315[10]) = xmmword_1D28809A0;
          v317 = v315[11];
          v318 = sub_1D2873AA8();
          (*(*(v318 - 8) + 56))(v314 + v317, 1, 1, v318);
          *v314 = v105;
          *(v314 + 8) = 2;
          [v105 imageOrientation];
          *(v314 + 24) = sub_1D2878C88();
          *(v314 + 16) = v357;
          *(v314 + 32) = 0;
          *(v314 + 40) = 0;
          *(v314 + v315[12]) = 0;
          sub_1D2871808();
          sub_1D22D6D4C(v101, v102);
          v319 = sub_1D28722E8();
          v320 = *(v319 + 16);
          if (v320)
          {
            v321 = 0;
            v322 = v319 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
            do
            {
              v326 = *(v0 + 2880);
              v327 = *(v0 + 2512);
              v328 = *(v0 + 2496);
              v367(v327, v322, v328);
              v329 = v29(v327, v328);
              v330 = *(v0 + 2512);
              if (v329 == v326)
              {
                v323 = *(v0 + 2032);
                v324 = *(v0 + 2024);
                v352 = *(v0 + 2016);
                v325 = *(v0 + 1992);
                v358 = *(v0 + 1984);
                v374 = *(v0 + 1976);
                v360(v330, *(v0 + 2496));
                v354 = v323;
                (*(v324 + 32))(v323, v330, v352);
                sub_1D2872418();
                sub_1D2871EA8();
                LOBYTE(v323) = sub_1D2871F78();
                (*(v358 + 8))(v325, v374);
                (*(v324 + 8))(v354, v352);
                v321 = v323 ^ 1;
              }

              else
              {
                (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
              }

              v322 += v361;
              --v320;
            }

            while (v320);
          }

          else
          {

            v321 = 0;
          }

          *(v0 + 331) = v321 & 1;
          *(v0 + 2768) = sub_1D23C7314();
          *(v0 + 2776) = sub_1D2878558();
          v331 = swift_task_alloc();
          *(v0 + 2784) = v331;
          *v331 = v0;
          v331[1] = sub_1D26620A4;
          v332 = *(v0 + 1936);

          return sub_1D28421E4(v0 + 280, v332, v321 & 1);
        }

        sub_1D22D6D4C(v101, v102);
        sub_1D23EE050();
        v106 = swift_allocError();
        *v107 = 0;
        swift_willThrow();
        sub_1D22D6D4C(v101, v102);
        sub_1D2872658();
        v108 = v106;
        v109 = sub_1D2873CA8();
        v110 = sub_1D2878A18();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = 138412290;
          v113 = v106;
          v114 = _swift_stdlib_bridgeErrorToNSError();
          *(v111 + 4) = v114;
          *v112 = v114;
          _os_log_impl(&dword_1D226E000, v109, v110, "Could not decode image from recipe with error: %@", v111, 0xCu);
          sub_1D22BD238(v112, qword_1EC6DA930);
          MEMORY[0x1D38A3520](v112, -1, -1);
          MEMORY[0x1D38A3520](v111, -1, -1);
        }

        v377 = *(v0 + 2528);
        v115 = *(v0 + 2504);
        v116 = *(v0 + 2496);
        v117 = *(v0 + 2344);
        v118 = v109;
        v119 = *(v0 + 2336);
        v120 = *(v0 + 2328);
        v121 = *(v0 + 1960);
        v122 = *(v0 + 1952);
        v123 = *(v0 + 1944);

        (*(v119 + 8))(v117, v120);
        (*(v122 + 8))(v121, v123);
        v4 = (*(v115 + 8))(v377, v116);
        v7 = 0;
        v8 = v372;
        goto LABEL_7;
      }

      if (v30 == *(v0 + 2876))
      {
        v184 = *(v0 + 2520);
        v185 = *(v0 + 2504);
        v186 = *(v0 + 2496);
        v187 = *(v0 + 2120);
        v188 = *(v0 + 2104);
        v189 = *(v0 + 2096);

        (*(v185 + 96))(v184, v186);
        (*(v188 + 32))(v187, v184, v189);
        v190 = sub_1D23C6DDC();
        *(v0 + 1856) = v190;
        v191 = off_1F4DCA918[0];
        type metadata accessor for _PeopleRetrieval();
        v192 = v191();

        *(swift_task_alloc() + 16) = v187;
        sub_1D274BE58(sub_1D2672DCC, v192, v0 + 784);
        *(v0 + 2720) = v375;

        if (*(v0 + 808))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
          if (swift_dynamicCast())
          {
            v193 = v0 + 744;
            if (*(v0 + 768))
            {
              sub_1D227268C(v351, v0 + 704);
              sub_1D22D7044(v0 + 704, v0 + 984);
              if (swift_dynamicCast())
              {
                v194 = *(v0 + 2088);
                (*(*(v0 + 2056) + 56))(v194, 0, 1, *(v0 + 2048));
                v195 = *v194;
                v196 = v194[1];
                v197 = v194[2];
                *(v0 + 136) = v194[3];
                *(v0 + 120) = v197;
                *(v0 + 104) = v196;
                *(v0 + 88) = v195;
                sub_1D22D63B0(v0 + 88, v0 + 152);
                sub_1D2672F90(v194, type metadata accessor for PhotosPersonAsset);
                v4 = sub_1D2872298();
                *(v0 + 2728) = v5;
                if (v5)
                {
                  goto LABEL_138;
                }

                sub_1D22D640C(v0 + 88);
              }

              else
              {
                v284 = *(v0 + 2088);
                (*(*(v0 + 2056) + 56))(v284, 1, 1, *(v0 + 2048));
                sub_1D22BD238(v284, &unk_1EC6DDDC0);
              }

              v285 = *(v0 + 2528);
              v286 = *(v0 + 2504);
              v287 = *(v0 + 2496);
              v288 = *(v0 + 728);
              v289 = *(v0 + 736);
              v290 = __swift_project_boxed_opaque_existential_1((v0 + 704), v288);
              *(v0 + 1088) = v288;
              *(v0 + 1096) = *(v289 + 8);
              v291 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
              (*(*(v288 - 8) + 16))(v291, v290, v288);
              v8 = 1;
              sub_1D267A600(v0 + 1064, 1, v0 + 1024);
              sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30);
              (*(v286 + 8))(v285, v287);
              __swift_destroy_boxed_opaque_existential_0(v0 + 1064);
              v292 = *(v0 + 2104);
              __swift_destroy_boxed_opaque_existential_0(v0 + 704);
              v263 = *(v292 + 8);
              goto LABEL_105;
            }
          }

          else
          {
            *(v0 + 776) = 0;
            *v351 = 0u;
            *(v0 + 760) = 0u;
            v193 = v0 + 744;
          }
        }

        else
        {
          sub_1D22BD238(v0 + 784, &qword_1EC6DAD30);
          v193 = v0 + 744;
          *v351 = 0u;
          *(v0 + 760) = 0u;
          *(v0 + 776) = 0;
        }

        v244 = *(v0 + 2120);
        v245 = *(v0 + 2112);
        v246 = *(v0 + 2104);
        v247 = *(v0 + 2096);
        sub_1D22BD238(v193, &qword_1EC6D9A58);
        sub_1D2872658();
        (*(v246 + 16))(v245, v244, v247);
        v248 = sub_1D2873CA8();
        v249 = sub_1D2878A18();
        v250 = os_log_type_enabled(v248, v249);
        v251 = *(v0 + 2352);
        v252 = *(v0 + 2336);
        v253 = *(v0 + 2328);
        v254 = *(v0 + 2112);
        v255 = *(v0 + 2104);
        v256 = *(v0 + 2096);
        if (v250)
        {
          v257 = swift_slowAlloc();
          v379 = v253;
          *&v382[0] = swift_slowAlloc();
          v258 = *&v382[0];
          *v257 = 136315138;
          v356 = sub_1D28722B8();
          v370 = v251;
          v260 = v259;
          v364 = v249;
          v261 = *(v255 + 8);
          v261(v254, v256);
          v262 = sub_1D23D7C84(v356, v260, v382);

          *(v257 + 4) = v262;
          _os_log_impl(&dword_1D226E000, v248, v364, "Cannot find person face with id: %s", v257, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v258);
          MEMORY[0x1D38A3520](v258, -1, -1);
          MEMORY[0x1D38A3520](v257, -1, -1);

          v263 = v261;
          (*(v252 + 8))(v370, v379);
        }

        else
        {

          v263 = *(v255 + 8);
          v263(v254, v256);
          (*(v252 + 8))(v251, v253);
        }

        (*(v0 + 1880))(*(v0 + 2528));
        v264 = *(v0 + 2528);
        v265 = *(v0 + 2504);
        v266 = *(v0 + 2496);
        v8 = v372;
        if (*(v0 + 928))
        {
          sub_1D227268C((v0 + 904), v0 + 864);
          v8 = 1;
          sub_1D267A600(v0 + 864, 1, v0 + 944);
          sub_1D22BD238(v0 + 944, &unk_1EC6E1D30);
          __swift_destroy_boxed_opaque_existential_0(v0 + 864);
          (*(v265 + 8))(v264, v266);
        }

        else
        {
          (*(v265 + 8))(*(v0 + 2528), *(v0 + 2496));
          sub_1D22BD238(v0 + 904, &unk_1EC6E1D30);
        }

LABEL_105:
        v4 = (v263)(*(v0 + 2120), *(v0 + 2096));
        v7 = *(v0 + 2720);
        goto LABEL_7;
      }

      if (v30 == *(v0 + 2880))
      {
        v218 = *(v0 + 2520);
        v219 = *(v0 + 2504);
        v220 = *(v0 + 2496);
        v221 = *(v0 + 2040);
        v222 = *(v0 + 2024);
        v223 = *(v0 + 2016);

        (*(v219 + 96))(v218, v220);
        (*(v222 + 32))(v221, v218, v223);
        sub_1D2872418();
        sub_1D2871EA8();
        if ((sub_1D2871F78() & 1) == 0)
        {
          goto LABEL_89;
        }

        v224 = *(v0 + 2008);
        v225 = *(v0 + 1984);
        v226 = *(v0 + 1976);
        v227 = *(v0 + 1968);
        v228 = *(sub_1D23C6B54() + 64);
        sub_1D2870F68();

        *(swift_task_alloc() + 16) = v224;
        v7 = v375;
        sub_1D274B77C(sub_1D264BD08, v228, v227);

        if ((*(v225 + 48))(v227, 1, v226) == 1)
        {
          sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30);
LABEL_89:
          v229 = *(v0 + 2008);
          v230 = MEMORY[0x1D389AA30]();
          LOBYTE(v229) = sub_1D22D19B8(v229, v230);

          if (v229)
          {
            v369 = *(v0 + 2528);
            v231 = *(v0 + 2504);
            v232 = *(v0 + 2496);
            v233 = *(v0 + 2040);
            v234 = *(v0 + 2024);
            v235 = *(v0 + 2016);
            v236 = *(v0 + 2008);
            v237 = *(v0 + 1984);
            v238 = *(v0 + 1976);
            *(v0 + 608) = v238;
            *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
            v239 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
            (*(v237 + 16))(v239, v236, v238);
            sub_1D267A600(v0 + 584, 1, v0 + 544);
            sub_1D22BD238(v0 + 544, &unk_1EC6E1D30);
            (*(v234 + 8))(v233, v235);
            (*(v231 + 8))(v369, v232);
            __swift_destroy_boxed_opaque_existential_0(v0 + 584);
            v240 = *(v237 + 8);
          }

          else
          {
            v267 = *(v0 + 2008);
            v268 = *(v0 + 1992);
            v269 = *(v0 + 1984);
            v270 = *(v0 + 1976);
            sub_1D2871F48();
            LOBYTE(v267) = MEMORY[0x1D389AA00](v267, v268);
            v240 = *(v269 + 8);
            v240(v268, v270);
            v271 = *(v0 + 2528);
            v272 = *(v0 + 2504);
            v273 = *(v0 + 2496);
            v274 = *(v0 + 2040);
            v275 = *(v0 + 2024);
            v276 = *(v0 + 2016);
            if (v267)
            {
              *(v0 + 528) = *(v0 + 1976);
              *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
              __swift_allocate_boxed_opaque_existential_1((v0 + 504));
              MEMORY[0x1D389AA70]();
              sub_1D267A600(v0 + 504, 1, v0 + 464);
              sub_1D22BD238(v0 + 464, &unk_1EC6E1D30);
              (*(v275 + 8))(v274, v276);
              (*(v272 + 8))(v271, v273);
              __swift_destroy_boxed_opaque_existential_0(v0 + 504);
            }

            else
            {
              (*(v275 + 8))(*(v0 + 2040), *(v0 + 2016));
              (*(v272 + 8))(v271, v273);
            }
          }

          v7 = v375;
        }

        else
        {
          v380 = *(v0 + 2528);
          v277 = *(v0 + 2504);
          v365 = *(v0 + 2040);
          v371 = *(v0 + 2496);
          v278 = *(v0 + 2024);
          v279 = *(v0 + 2016);
          v280 = *(v0 + 2000);
          v281 = *(v0 + 1984);
          v282 = *(v0 + 1976);
          (*(v281 + 32))(v280, *(v0 + 1968), v282);
          *(v0 + 688) = v282;
          *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
          v283 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
          (*(v281 + 16))(v283, v280, v282);
          sub_1D267A600(v0 + 664, 1, v0 + 624);
          sub_1D22BD238(v0 + 624, &unk_1EC6E1D30);
          v240 = *(v281 + 8);
          v240(v280, v282);
          (*(v278 + 8))(v365, v279);
          (*(v277 + 8))(v380, v371);
          __swift_destroy_boxed_opaque_existential_0(v0 + 664);
        }

        v4 = (v240)(*(v0 + 2008), *(v0 + 1976));
        v8 = v372;
        goto LABEL_7;
      }

      v241 = *(v0 + 2520);
      v242 = *(v0 + 2496);
      v243 = *(*(v0 + 2504) + 8);
      v243(*(v0 + 2528), v242);

      v4 = v243(v241, v242);
      v8 = v372;
      goto LABEL_6;
    }

    v293 = *(v0 + 2520);
    v294 = *(v0 + 2504);
    v295 = *(v0 + 2496);
    v296 = *(v0 + 2152);
    v297 = *(v0 + 2144);
    v298 = *(v0 + 2136);
    v299 = *(v0 + 2128);

    (*(v294 + 96))(v293, v295);
    (*(v298 + 32))(v296, v293, v299);
    sub_1D2878C18();
    (*(v298 + 16))(v297, v296, v299);
    v300 = sub_1D2878BD8();
    *(v0 + 2672) = v300;
    if (v300)
    {
      *(v0 + 2680) = sub_1D23C7314();
      *(v0 + 2688) = sub_1D2878558();
      v301 = sub_1D28784F8();
      v148 = v302;
      *(v0 + 2696) = v301;
      *(v0 + 2704) = v302;
      v146 = sub_1D265BF5C;
      v147 = v301;
      goto LABEL_118;
    }
  }

  v40 = *(v0 + 2520);
  v41 = *(v0 + 2264);
  v42 = *(v0 + 2256);
  v43 = *(v0 + 2248);
  v44 = *(v0 + 2240);
  v45 = *(v0 + 2232);
  v46 = *(v0 + 2184);
  v47 = *(v0 + 2176);
  (*(*(v0 + 2504) + 96))(v40, *(v0 + 2496));
  (*(v42 + 32))(v41, v40, v43);
  v355 = sub_1D2872368();
  v362 = v48;
  (*(v46 + 56))(v44, 1, 1, v47);
  v49 = sub_1D28723D8();
  v50 = swift_task_alloc();
  *(v50 + 16) = v41;
  v353 = sub_1D2654E54(sub_1D2672DEC, v50, v49);
  v359 = v375;

  sub_1D2871778();
  sub_1D22BD1D0(v44, v45, &unk_1EC6E1D40);
  if ((*(v46 + 48))(v45, 1, v47) == 1)
  {
    sub_1D22BD238(*(v0 + 2232), &unk_1EC6E1D40);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 2472);
    *(v51 + 24) = sub_1D24B63AC(qword_1ED8B0010, v355, v362);
    *(v51 + 32) = v52 & 1;
    v53 = sub_1D27E1420(v355, v362);
    v55 = v54;
  }

  else
  {
    (*(*(v0 + 2184) + 32))(*(v0 + 2200), *(v0 + 2232), *(v0 + 2176));
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v378 = *(v0 + 2584);
    v129 = *(v0 + 2200);
    v130 = *(v0 + 2192);
    v131 = *(v0 + 2184);
    v132 = *(v0 + 2176);
    v133 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
    *(v0 + 1808) = sub_1D28782D8();
    *(v0 + 1816) = v134;
    *(v0 + 1792) = 12369903;
    *(v0 + 1800) = 0xA300000000000000;
    *(v0 + 1776) = 0;
    *(v0 + 1784) = 0xE000000000000000;
    v350 = sub_1D22BD06C();
    v349 = MEMORY[0x1E69E6158];
    v135 = sub_1D2878FA8();
    v137 = v136;

    v138 = sub_1D24B63AC(v133, v135, v137);
    v140 = v139;

    *(v0 + 1848) = v138;
    sub_1D22BCFD0(0, &qword_1ED89CD40);
    (*(v131 + 16))(v130, v129, v132);
    v141 = sub_1D2878AE8();
    v142 = [v141 length];
    v143 = swift_allocObject();
    *(v143 + 16) = v0 + 1848;
    v144 = swift_allocObject();
    *(v144 + 16) = sub_1D2436B8C;
    *(v144 + 24) = v143;
    *(v0 + 368) = sub_1D2436B94;
    *(v0 + 376) = v144;
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1D267502C;
    *(v0 + 360) = &block_descriptor_33;
    v145 = _Block_copy((v0 + 336));
    sub_1D2870F78();

    [v141 enumerateAttribute:v378 inRange:0 options:v142 usingBlock:{0, v145}];

    _Block_release(v145);
    LOBYTE(v141) = swift_isEscapingClosureAtFileLocation();

    if (v141)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v146, v147, v148);
    }

    v149 = *(v0 + 2472);
    v150 = *(v0 + 2200);
    v151 = *(v0 + 2184);
    v152 = *(v0 + 2176);
    v153 = *(v0 + 1848);

    *(v149 + 24) = v153;
    *(v149 + 32) = v140 & 1;
    v154 = sub_1D27E0DA0();
    v156 = sub_1D27E1420(v154, v155);
    v55 = v157;

    (*(v151 + 8))(v150, v152);
    v53 = v156;
  }

  v375 = v359;
  v158 = *(v0 + 2472);
  v159 = *(v0 + 2448);
  v363 = *(v0 + 2240);
  v368 = *(v0 + 2480);
  v160 = *(v0 + 2224);
  v161 = *(v0 + 2216);
  v162 = *(v0 + 2208);
  v158[1] = v53;
  v158[2] = v55;
  v158[5] = v353;
  (*(v161 + 16))(v158 + *(v159 + 36), v160, v162);
  *(v158 + *(v159 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  v163 = v382[3];
  *(v0 + 48) = v382[2];
  *(v0 + 64) = v163;
  *(v0 + 80) = v383;
  v164 = v382[1];
  *(v0 + 16) = v382[0];
  *(v0 + 32) = v164;
  v165 = sub_1D2879818();
  (*(v161 + 8))(v160, v162);
  sub_1D22BD238(v363, &unk_1EC6E1D40);
  *v158 = v165;
  v4 = sub_1D2672F28(v158, v368, type metadata accessor for Prompt);
  v166 = 0;
  v167 = v16[2];
  while (2)
  {
    if (v167 == v166)
    {
      v207 = *(v0 + 329);

      v8 = v372;
      if ((v207 & 1) == 0)
      {
LABEL_81:
        v210 = *(v0 + 2528);
        v211 = *(v0 + 2504);
        v212 = *(v0 + 2496);
        v213 = *(v0 + 2480);
        *(v0 + 1368) = *(v0 + 2448);
        *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt);
        v214 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
        sub_1D2672EC0(v213, v214, type metadata accessor for Prompt);
        sub_1D267A600(v0 + 1344, 1, v0 + 1304);
        sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30);
        (*(v211 + 8))(v210, v212);
        __swift_destroy_boxed_opaque_existential_0(v0 + 1344);
        goto LABEL_84;
      }

      if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
      {

        goto LABEL_81;
      }

      v333 = v208;
      v381 = v209;

      sub_1D2872658();
      v334 = sub_1D2873CA8();
      v335 = sub_1D28789F8();
      if (os_log_type_enabled(v334, v335))
      {
        v336 = swift_slowAlloc();
        *v336 = 0;
        _os_log_impl(&dword_1D226E000, v334, v335, "Blocking name to photo substitution when loading context from GenerationRecipe", v336, 2u);
        MEMORY[0x1D38A3520](v336, -1, -1);
      }

      v337 = *(v0 + 2528);
      v338 = *(v0 + 2504);
      v339 = *(v0 + 2496);
      v340 = *(v0 + 2480);
      v341 = *(v0 + 2360);
      v342 = *(v0 + 2336);
      v343 = *(v0 + 2328);

      (*(v342 + 8))(v341, v343);
      sub_1D2672E0C();
      swift_allocError();
      *v344 = v333;
      v344[1] = v381;
      swift_willThrow();
      (*(v338 + 8))(v337, v339);
      sub_1D2672F90(v340, type metadata accessor for Prompt);
      (*(*(v0 + 2256) + 8))();

      v303 = *(v0 + 8);
LABEL_112:

      return v303();
    }

    if (v166 < v16[2])
    {
      v168 = *(v0 + 2480);
      v169 = *(v0 + 2464);
      sub_1D2672EC0(v16 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v166, v169, type metadata accessor for Prompt);
      v170 = *(v169 + 8);
      v171 = *(v169 + 16);
      v172 = *(v0 + 2464);
      if (v170 == *(v168 + 8) && v171 == *(v168 + 16))
      {
        sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_83:
        (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

        v8 = v372;
LABEL_84:
        v215 = *(v0 + 2264);
        v216 = *(v0 + 2256);
        v217 = *(v0 + 2248);
        sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
        v4 = (*(v216 + 8))(v215, v217);
        goto LABEL_6;
      }

      ++v166;
      v174 = sub_1D2879618();
      v4 = sub_1D2672F90(v172, type metadata accessor for Prompt);
      if (v174)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v345 = v4;
  v346 = v5;
  *(v0 + 2736) = sub_1D23C6DDC();
  *(v0 + 216) = *(v0 + 88);
  *(v0 + 232) = *(v0 + 104);
  *(v0 + 248) = *(v0 + 120);
  *(v0 + 264) = *(v0 + 136);
  v347 = swift_task_alloc();
  *(v0 + 2744) = v347;
  *v347 = v0;
  v347[1] = sub_1D265EFD8;
  v348 = *(v0 + 2080);

  return sub_1D255FA4C(v348, v345, v346, v0 + 216);
}

uint64_t sub_1D265EFD8()
{
  v1 = *v0;

  v2 = *(v1 + 2560);
  v3 = *(v1 + 2552);

  return MEMORY[0x1EEE6DFA0](sub_1D265F11C, v3, v2);
}

uint64_t sub_1D265F11C()
{
  v392 = v0;
  v1 = (v0 + 744);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 2048);

  if ((*(v3 + 48))(v2, 1, v4) != 1)
  {
    v361 = v0 + 744;
    v12 = *(v0 + 2528);
    v13 = *(v0 + 2504);
    v14 = *(v0 + 2496);
    v1 = *(v0 + 2064);
    v15 = *(v0 + 2048);
    sub_1D2672F28(*(v0 + 2080), v1, type metadata accessor for PhotosPersonAsset);
    *(v0 + 1288) = v15;
    *(v0 + 1296) = sub_1D2672E78(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1264));
    sub_1D2672EC0(v1, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
    sub_1D267A600(v0 + 1264, 1, v0 + 1224);
    sub_1D22D640C(v0 + 88);
    sub_1D22BD238(v0 + 1224, &unk_1EC6E1D30);
    sub_1D2672F90(v1, type metadata accessor for PhotosPersonAsset);
    (*(v13 + 8))(v12, v14);
    __swift_destroy_boxed_opaque_existential_0(v0 + 1264);
    goto LABEL_5;
  }

  v5 = *(v0 + 2080);
  sub_1D22D640C(v0 + 88);
  sub_1D22BD238(v5, &unk_1EC6DDDC0);
LABEL_3:
  v361 = v1;
  v6 = *(v0 + 2528);
  v7 = *(v0 + 2504);
  v8 = *(v0 + 2496);
  v1 = *(v0 + 728);
  v9 = *(v0 + 736);
  v10 = __swift_project_boxed_opaque_existential_1((v0 + 704), v1);
  *(v0 + 1088) = v1;
  *(v0 + 1096) = *(v9 + 8);
  v11 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
  (*(*(v1 - 1) + 16))(v11, v10, v1);
  sub_1D267A600(v0 + 1064, 1, v0 + 1024);
  sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30);
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 1064);
LABEL_5:
  v17 = *(v0 + 2104);
  __swift_destroy_boxed_opaque_existential_0(v0 + 704);
  (*(v17 + 8))(*(v0 + 2120), *(v0 + 2096));
  v18 = *(v0 + 2600) + 1;
  if (v18 == *(v0 + 2576))
  {
LABEL_109:

    v302 = *(v0 + 8);
    goto LABEL_110;
  }

  v19 = 1;
  v20 = *(v0 + 2720);
  while (1)
  {
    *(v0 + 2600) = v18;
    *(v0 + 330) = v19 & 1;
    *(v0 + 2592) = v20;
    v22 = *(v0 + 2568);
    if (v18 >= *(v22 + 16))
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      sub_1D227268C(v1, v0 + 704);
      sub_1D22D7044(v0 + 704, v0 + 984);
      if (swift_dynamicCast())
      {
        v348 = *(v0 + 2088);
        (*(*(v0 + 2056) + 56))(v348, 0, 1, *(v0 + 2048));
        v349 = *v348;
        v350 = v348[1];
        v351 = v348[2];
        *(v0 + 136) = v348[3];
        *(v0 + 120) = v351;
        *(v0 + 104) = v350;
        *(v0 + 88) = v349;
        sub_1D22D63B0(v0 + 88, v0 + 152);
        sub_1D2672F90(v348, type metadata accessor for PhotosPersonAsset);
        v352 = sub_1D2872298();
        *(v0 + 2728) = v353;
        if (v353)
        {
          v355 = v352;
          v356 = v353;
          *(v0 + 2736) = sub_1D23C6DDC();
          *(v0 + 216) = *(v0 + 88);
          *(v0 + 232) = *(v0 + 104);
          *(v0 + 248) = *(v0 + 120);
          *(v0 + 264) = *(v0 + 136);
          v357 = swift_task_alloc();
          *(v0 + 2744) = v357;
          *v357 = v0;
          v357[1] = sub_1D265EFD8;
          v358 = *(v0 + 2080);

          return sub_1D255FA4C(v358, v355, v356, v0 + 216);
        }

        sub_1D22D640C(v0 + 88);
      }

      else
      {
        v354 = *(v0 + 2088);
        (*(*(v0 + 2056) + 56))(v354, 1, 1, *(v0 + 2048));
        sub_1D22BD238(v354, &unk_1EC6DDDC0);
      }

      goto LABEL_3;
    }

    v384 = v20;
    LODWORD(v382) = v19;
    v23 = *(v0 + 2504);
    v24 = *(v23 + 16);
    v25 = *(v0 + 1872);
    v377 = *(v23 + 72);
    v24(*(v0 + 2528), v22 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v377 * v18, *(v0 + 2496));
    v26 = *(v25 + 32);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v26 + 32;
      sub_1D2870F68();
      v29 = MEMORY[0x1E69E7CC0];
      do
      {
        v30 = *(v0 + 2456);
        v31 = *(v0 + 2448);
        v32 = *(v0 + 2440);
        sub_1D22D7044(v28, v0 + 1104);
        sub_1D227268C((v0 + 1104), v0 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        v33 = swift_dynamicCast();
        (*(v30 + 56))(v32, v33 ^ 1u, 1, v31);
        if ((*(v30 + 48))(v32, 1, v31) == 1)
        {
          sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20);
        }

        else
        {
          sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1D27CC840(0, v29[2] + 1, 1, v29);
          }

          v35 = v29[2];
          v34 = v29[3];
          if (v35 >= v34 >> 1)
          {
            v29 = sub_1D27CC840(v34 > 1, v35 + 1, 1, v29);
          }

          v36 = *(v0 + 2488);
          v37 = *(v0 + 2456);
          v29[2] = v35 + 1;
          sub_1D2672F28(v36, v29 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, type metadata accessor for Prompt);
        }

        v28 += 40;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v38 = *(v0 + 1772);
    v39 = *(v0 + 2520);
    v40 = *(v0 + 2504);
    v41 = *(v0 + 2496);
    v24(v39, *(v0 + 2528), v41);
    v42 = *(v40 + 88);
    v43 = v42(v39, v41);
    if (v43 == v38)
    {
      v44 = *(v0 + 2520);
      v45 = *(v0 + 2504);
      v46 = *(v0 + 2496);
      v47 = *(v0 + 1896);

      (*(v45 + 96))(v44, v46);
      *(v0 + 2608) = *v44;
      *(v0 + 2616) = v44[1];
      sub_1D28792C8();
      v48 = *(v47 + 24);
      *(v0 + 2624) = v48;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v49 = *(v48 + 16);
      if (*(v49 + 16) && (v50 = sub_1D25D0574(*(v0 + 2632)), (v51 & 1) != 0))
      {
        sub_1D22D7044(*(v49 + 56) + 40 * v50, v0 + 1624);
        swift_endAccess();
        sub_1D227268C((v0 + 1624), v0 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
        swift_dynamicCast();
        v52 = *(v0 + 1840);
      }

      else
      {
        v69 = *(v0 + 2632);
        swift_endAccess();
        swift_allocObject();
        v70 = sub_1D2870F78();
        v52 = sub_1D26D5DB8(v70);

        *(v0 + 448) = v69;
        *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v0 + 424) = v52;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v0 + 424, v69);
        swift_endAccess();
      }

      v71 = *(v52 + 88);

      if (v71)
      {
LABEL_38:
        v87 = *(sub_1D23C7858() + 88);

        if (v87 != 1)
        {
          goto LABEL_41;
        }

        v88 = *(v0 + 2616);
        v89 = *(v0 + 2608);
        v90 = *(v0 + 2288);
        v91 = *(v0 + 2280);
        v92 = *(v0 + 2272);
        sub_1D23C7858();
        sub_1D26D06B4(v89, v88, v92);

        if ((*(v90 + 48))(v92, 1, v91) == 1)
        {
          sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210);
LABEL_41:
          v93 = *(sub_1D23C7858() + 88);

          if (v93)
          {
            sub_1D2872658();
            sub_1D2870F68();
            v94 = sub_1D2873CA8();
            v95 = sub_1D2878A18();

            v96 = os_log_type_enabled(v94, v95);
            v97 = *(v0 + 2616);
            if (v96)
            {
              v98 = *(v0 + 2608);
              v99 = *(v0 + 2368);
              v100 = *(v0 + 2336);
              v101 = *(v0 + 2328);
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              *&v390[0] = v103;
              *v102 = 136315138;
              v104 = sub_1D23D7C84(v98, v97, v390);

              *(v102 + 4) = v104;
              v105 = v95;
              v106 = v94;
              v107 = "Cannot decode curated prompt from string: %s";
              goto LABEL_49;
            }

            v201 = *(v0 + 2368);
LABEL_72:
            v202 = *(v0 + 2336);
            v203 = *(v0 + 2328);

            (*(v202 + 8))(v201, v203);
          }

          else
          {
            sub_1D2872658();
            sub_1D2870F68();
            v94 = sub_1D2873CA8();
            v118 = sub_1D2878A18();

            v119 = os_log_type_enabled(v94, v118);
            v120 = *(v0 + 2616);
            if (!v119)
            {
              v201 = *(v0 + 2376);
              goto LABEL_72;
            }

            v121 = *(v0 + 2608);
            v99 = *(v0 + 2376);
            v100 = *(v0 + 2336);
            v101 = *(v0 + 2328);
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            *&v390[0] = v103;
            *v102 = 136315138;
            v122 = sub_1D23D7C84(v121, v120, v390);

            *(v102 + 4) = v122;
            v105 = v118;
            v106 = v94;
            v107 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_49:
            _os_log_impl(&dword_1D226E000, v106, v105, v107, v102, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v103);
            MEMORY[0x1D38A3520](v103, -1, -1);
            MEMORY[0x1D38A3520](v102, -1, -1);

            (*(v100 + 8))(v99, v101);
          }

          v20 = v384;
          (*(v0 + 1880))(*(v0 + 2528));
          v204 = *(v0 + 2528);
          v205 = *(v0 + 2504);
          v206 = *(v0 + 2496);
          v207 = *(v0 + 2432);
          v208 = *(v0 + 2408);
          v209 = *(v0 + 2400);
          if (*(v0 + 1528))
          {
            sub_1D227268C((v0 + 1504), v0 + 1584);
            sub_1D267A600(v0 + 1584, 1, v0 + 1464);
            sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30);
            __swift_destroy_boxed_opaque_existential_0(v0 + 1584);
            v21 = *(v208 + 8);
            v1 = (v208 + 8);
            v21(v207, v209);
            (*(v205 + 8))(v204, v206);
          }

          else
          {
            v210 = *(v208 + 8);
            v1 = (v208 + 8);
            v210(*(v0 + 2432), *(v0 + 2400));
            (*(v205 + 8))(v204, v206);
            sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30);
          }

          v19 = *(v0 + 330);
          goto LABEL_9;
        }

        v383 = *(v0 + 2528);
        v193 = *(v0 + 2504);
        v194 = *(v0 + 2496);
        v195 = *(v0 + 2432);
        v196 = *(v0 + 2408);
        v197 = *(v0 + 2400);
        v198 = *(v0 + 2296);
        v199 = *(v0 + 2280);
        v1 = *(v0 + 2272);

        sub_1D2672F28(v1, v198, type metadata accessor for CuratedPrompt);
        *(v0 + 1408) = v199;
        *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
        v200 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
        sub_1D2672EC0(v198, v200, type metadata accessor for CuratedPrompt);
        sub_1D267A600(v0 + 1384, 1, v0 + 1424);
        sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30);
        sub_1D2672F90(v198, type metadata accessor for CuratedPrompt);
        (*(v196 + 8))(v195, v197);
        (*(v193 + 8))(v383, v194);
        __swift_destroy_boxed_opaque_existential_0(v0 + 1384);
        v19 = *(v0 + 330);
        v20 = v384;
        goto LABEL_9;
      }

      v72 = *(v0 + 2424);
      v73 = *(v0 + 2408);
      v74 = *(v0 + 2400);
      sub_1D28792C8();
      sub_1D28792F8();
      v75 = *(v73 + 8);
      *(v0 + 2640) = v75;
      *(v0 + 2648) = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v75(v72, v74);
      if ((sub_1D28798E8() & 1) == 0)
      {
        sub_1D2872658();
        v76 = sub_1D2873CA8();
        v77 = sub_1D2878A18();
        v78 = os_log_type_enabled(v76, v77);
        v79 = *(v0 + 2392);
        v80 = *(v0 + 2336);
        v81 = *(v0 + 2328);
        if (v78)
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *&v390[0] = v83;
          *v82 = 136315138;
          v84 = sub_1D28798D8();
          v86 = sub_1D23D7C84(v84, v85, v390);

          *(v82 + 4) = v86;
          _os_log_impl(&dword_1D226E000, v76, v77, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v83);
          MEMORY[0x1D38A3520](v83, -1, -1);
          MEMORY[0x1D38A3520](v82, -1, -1);
        }

        (*(v80 + 8))(v79, v81);
        goto LABEL_38;
      }

      sub_1D2872658();
      v304 = sub_1D2873CA8();
      v305 = sub_1D28789F8();
      if (os_log_type_enabled(v304, v305))
      {
        v306 = swift_slowAlloc();
        *v306 = 0;
        _os_log_impl(&dword_1D226E000, v304, v305, "Curated prompts have not been loaded yet, waiting to parse recipe", v306, 2u);
        MEMORY[0x1D38A3520](v306, -1, -1);
      }

      v307 = *(v0 + 2384);
      v308 = *(v0 + 2336);
      v309 = *(v0 + 2328);

      (*(v308 + 8))(v307, v309);
      v310 = sub_1D2879908();
      v312 = v311;
      sub_1D2879718();
      *(v0 + 1824) = v310;
      *(v0 + 1832) = v312;
      *(v0 + 1752) = 0u;
      *(v0 + 1768) = 1;
      v313 = sub_1D2658A58;
      v314 = 0;
      v315 = 0;
LABEL_117:

      return MEMORY[0x1EEE6DFA0](v313, v314, v315);
    }

    if (v43 == *(v0 + 2864))
    {
      v53 = *(v0 + 2520);
      v54 = *(v0 + 2264);
      v55 = *(v0 + 2256);
      v56 = *(v0 + 2248);
      v57 = *(v0 + 2240);
      v58 = *(v0 + 2232);
      v59 = *(v0 + 2184);
      v60 = *(v0 + 2176);
      (*(*(v0 + 2504) + 96))(v53, *(v0 + 2496));
      (*(v55 + 32))(v54, v53, v56);
      v365 = sub_1D2872368();
      v369 = v61;
      (*(v59 + 56))(v57, 1, 1, v60);
      v62 = sub_1D28723D8();
      v63 = swift_task_alloc();
      *(v63 + 16) = v54;
      v363 = sub_1D2654E54(sub_1D2672DEC, v63, v62);
      v374 = v384;

      sub_1D2871778();
      sub_1D22BD1D0(v57, v58, &unk_1EC6E1D40);
      if ((*(v59 + 48))(v58, 1, v60) == 1)
      {
        sub_1D22BD238(*(v0 + 2232), &unk_1EC6E1D40);
        if (qword_1ED89CD48 != -1)
        {
          swift_once();
        }

        v64 = *(v0 + 2472);
        *(v64 + 24) = sub_1D24B63AC(qword_1ED8B0010, v365, v369);
        *(v64 + 32) = v65 & 1;
        v66 = sub_1D27E1420(v365, v369);
        v68 = v67;
        goto LABEL_54;
      }

      (*(*(v0 + 2184) + 32))(*(v0 + 2200), *(v0 + 2232), *(v0 + 2176));
      if (qword_1ED89CD48 != -1)
      {
        swift_once();
      }

      v385 = *(v0 + 2584);
      v123 = *(v0 + 2200);
      v124 = *(v0 + 2192);
      v125 = *(v0 + 2184);
      v126 = *(v0 + 2176);
      v127 = qword_1ED8B0010;
      sub_1D28712B8();
      sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
      *(v0 + 1808) = sub_1D28782D8();
      *(v0 + 1816) = v128;
      *(v0 + 1792) = 12369903;
      *(v0 + 1800) = 0xA300000000000000;
      *(v0 + 1776) = 0;
      *(v0 + 1784) = 0xE000000000000000;
      v360 = sub_1D22BD06C();
      v359 = MEMORY[0x1E69E6158];
      v129 = sub_1D2878FA8();
      v131 = v130;

      v132 = sub_1D24B63AC(v127, v129, v131);
      v134 = v133;

      *(v0 + 1848) = v132;
      sub_1D22BCFD0(0, &qword_1ED89CD40);
      (*(v125 + 16))(v124, v123, v126);
      v135 = sub_1D2878AE8();
      v1 = [v135 length];
      v136 = swift_allocObject();
      *(v136 + 16) = v0 + 1848;
      v137 = swift_allocObject();
      *(v137 + 16) = sub_1D2436B8C;
      *(v137 + 24) = v136;
      *(v0 + 368) = sub_1D2436B94;
      *(v0 + 376) = v137;
      *(v0 + 336) = MEMORY[0x1E69E9820];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_1D267502C;
      *(v0 + 360) = &block_descriptor_33;
      v138 = _Block_copy((v0 + 336));
      sub_1D2870F78();

      [v135 enumerateAttribute:v385 inRange:0 options:v1 usingBlock:{0, v138}];

      _Block_release(v138);
      LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

      if ((v135 & 1) == 0)
      {
        v139 = *(v0 + 2472);
        v140 = *(v0 + 2200);
        v141 = *(v0 + 2184);
        v142 = *(v0 + 2176);
        v143 = *(v0 + 1848);

        *(v139 + 24) = v143;
        *(v139 + 32) = v134 & 1;
        v144 = sub_1D27E0DA0();
        v146 = sub_1D27E1420(v144, v145);
        v68 = v147;

        (*(v141 + 8))(v140, v142);
        v66 = v146;
LABEL_54:
        v378 = *(v0 + 2480);
        v148 = *(v0 + 2472);
        v149 = *(v0 + 2448);
        v370 = *(v0 + 2240);
        v150 = *(v0 + 2224);
        v151 = *(v0 + 2216);
        v152 = *(v0 + 2208);
        v148[1] = v66;
        v148[2] = v68;
        v148[5] = v363;
        (*(v151 + 16))(v148 + *(v149 + 36), v150, v152);
        *(v148 + *(v149 + 40)) = 0;
        sub_1D2879838();
        sub_1D2877F38();

        v153 = v390[3];
        *(v0 + 48) = v390[2];
        *(v0 + 64) = v153;
        *(v0 + 80) = v391;
        v154 = v390[1];
        *(v0 + 16) = v390[0];
        *(v0 + 32) = v154;
        v155 = sub_1D2879818();
        (*(v151 + 8))(v150, v152);
        sub_1D22BD238(v370, &unk_1EC6E1D40);
        *v148 = v155;
        sub_1D2672F28(v148, v378, type metadata accessor for Prompt);
        v156 = 0;
        v157 = v29[2];
        while (v157 != v156)
        {
          if (v156 >= v29[2])
          {
            __break(1u);
            goto LABEL_131;
          }

          v158 = *(v0 + 2480);
          v159 = *(v0 + 2464);
          sub_1D2672EC0(v29 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v156, v159, type metadata accessor for Prompt);
          v160 = *(v159 + 8);
          v161 = *(v159 + 16);
          v162 = *(v0 + 2464);
          if (v160 == *(v158 + 8) && v161 == *(v158 + 16))
          {
            sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_80:
            (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

            v20 = v374;
LABEL_81:
            v219 = *(v0 + 2264);
            v220 = *(v0 + 2256);
            v221 = *(v0 + 2248);
            sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
            v222 = *(v220 + 8);
            v1 = (v220 + 8);
            v222(v219, v221);
            v19 = v382;
            goto LABEL_9;
          }

          ++v156;
          v164 = sub_1D2879618();
          sub_1D2672F90(v162, type metadata accessor for Prompt);
          if (v164)
          {
            goto LABEL_80;
          }
        }

        v211 = *(v0 + 329);

        v20 = v374;
        if ((v211 & 1) == 0)
        {
LABEL_78:
          v214 = *(v0 + 2528);
          v215 = *(v0 + 2504);
          v216 = *(v0 + 2496);
          v217 = *(v0 + 2480);
          *(v0 + 1368) = *(v0 + 2448);
          *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt);
          v218 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
          sub_1D2672EC0(v217, v218, type metadata accessor for Prompt);
          sub_1D267A600(v0 + 1344, 1, v0 + 1304);
          sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30);
          (*(v215 + 8))(v214, v216);
          __swift_destroy_boxed_opaque_existential_0(v0 + 1344);
          goto LABEL_81;
        }

        if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
        {

          goto LABEL_78;
        }

        v332 = v212;
        v389 = v213;

        sub_1D2872658();
        v333 = sub_1D2873CA8();
        v334 = sub_1D28789F8();
        if (os_log_type_enabled(v333, v334))
        {
          v335 = swift_slowAlloc();
          *v335 = 0;
          _os_log_impl(&dword_1D226E000, v333, v334, "Blocking name to photo substitution when loading context from GenerationRecipe", v335, 2u);
          MEMORY[0x1D38A3520](v335, -1, -1);
        }

        v336 = *(v0 + 2528);
        v337 = *(v0 + 2504);
        v338 = *(v0 + 2496);
        v339 = *(v0 + 2480);
        v340 = *(v0 + 2360);
        v341 = *(v0 + 2336);
        v342 = *(v0 + 2328);

        (*(v341 + 8))(v340, v342);
        sub_1D2672E0C();
        swift_allocError();
        *v343 = v332;
        v343[1] = v389;
        swift_willThrow();
        (*(v337 + 8))(v336, v338);
        sub_1D2672F90(v339, type metadata accessor for Prompt);
        (*(*(v0 + 2256) + 8))();

        v302 = *(v0 + 8);
LABEL_110:

        return v302();
      }

      goto LABEL_137;
    }

    if (v43 == *(v0 + 2868))
    {
      v108 = *(v0 + 2520);
      v109 = *(v0 + 2504);
      v110 = *(v0 + 2496);
      v111 = *(v0 + 2152);
      v1 = *(v0 + 2144);
      v112 = *(v0 + 2136);
      v113 = *(v0 + 2128);

      (*(v109 + 96))(v108, v110);
      (*(v112 + 32))(v111, v108, v113);
      sub_1D2878C18();
      (*(v112 + 16))(v1, v111, v113);
      v114 = sub_1D2878BD8();
      *(v0 + 2672) = v114;
      if (!v114)
      {
        v115 = *(v0 + 2528);
        v116 = *(v0 + 2504);
        v117 = *(v0 + 2496);
        (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
        (*(v116 + 8))(v115, v117);
        v19 = *(v0 + 330);
        v20 = *(v0 + 2592);
        goto LABEL_9;
      }

      *(v0 + 2680) = sub_1D23C7314();
      *(v0 + 2688) = sub_1D2878558();
      v316 = sub_1D28784F8();
      v315 = v317;
      *(v0 + 2696) = v316;
      *(v0 + 2704) = v317;
      v313 = sub_1D265BF5C;
      v314 = v316;
      goto LABEL_117;
    }

    if (v43 == *(v0 + 2872))
    {
      break;
    }

    if (v43 == *(v0 + 2876))
    {
      v266 = *(v0 + 2520);
      v267 = *(v0 + 2504);
      v268 = *(v0 + 2496);
      v269 = *(v0 + 2120);
      v270 = *(v0 + 2104);
      v271 = *(v0 + 2096);

      (*(v267 + 96))(v266, v268);
      (*(v270 + 32))(v269, v266, v271);
      v272 = sub_1D23C6DDC();
      *(v0 + 1856) = v272;
      v273 = off_1F4DCA918[0];
      type metadata accessor for _PeopleRetrieval();
      v274 = v273();

      *(swift_task_alloc() + 16) = v269;
      sub_1D274BE58(sub_1D2672DCC, v274, v0 + 784);
      *(v0 + 2720) = v384;

      if (*(v0 + 808))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
        v1 = v361;
        if (swift_dynamicCast())
        {
          if (*(v0 + 768))
          {
            goto LABEL_138;
          }
        }

        else
        {
          *(v361 + 32) = 0;
          *v361 = 0u;
          *(v361 + 16) = 0u;
        }
      }

      else
      {
        sub_1D22BD238(v0 + 784, &qword_1EC6DAD30);
        v1 = v361;
        *v361 = 0u;
        *(v361 + 16) = 0u;
        *(v361 + 32) = 0;
      }

      v275 = *(v0 + 2120);
      v276 = *(v0 + 2112);
      v277 = *(v0 + 2104);
      v278 = v1;
      v279 = *(v0 + 2096);
      v361 = v278;
      sub_1D22BD238(v278, &qword_1EC6D9A58);
      sub_1D2872658();
      (*(v277 + 16))(v276, v275, v279);
      v280 = sub_1D2873CA8();
      v281 = sub_1D2878A18();
      v282 = os_log_type_enabled(v280, v281);
      v283 = *(v0 + 2352);
      v284 = *(v0 + 2336);
      v285 = *(v0 + 2328);
      v286 = *(v0 + 2112);
      v287 = *(v0 + 2104);
      v288 = *(v0 + 2096);
      if (v282)
      {
        v289 = swift_slowAlloc();
        v388 = v285;
        *&v390[0] = swift_slowAlloc();
        v290 = *&v390[0];
        *v289 = 136315138;
        v366 = sub_1D28722B8();
        v381 = v283;
        v292 = v291;
        v371 = v281;
        v293 = *(v287 + 8);
        v293(v286, v288);
        v294 = v293;
        v295 = sub_1D23D7C84(v366, v292, v390);

        *(v289 + 4) = v295;
        _os_log_impl(&dword_1D226E000, v280, v371, "Cannot find person face with id: %s", v289, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v290);
        MEMORY[0x1D38A3520](v290, -1, -1);
        MEMORY[0x1D38A3520](v289, -1, -1);

        (*(v284 + 8))(v381, v388);
      }

      else
      {

        v296 = *(v287 + 8);
        v296(v286, v288);
        v294 = v296;
        (*(v284 + 8))(v283, v285);
      }

      (*(v0 + 1880))(*(v0 + 2528));
      v297 = *(v0 + 2528);
      v298 = *(v0 + 2504);
      v299 = *(v0 + 2496);
      if (*(v0 + 928))
      {
        sub_1D227268C((v0 + 904), v0 + 864);
        LODWORD(v382) = 1;
        sub_1D267A600(v0 + 864, 1, v0 + 944);
        sub_1D22BD238(v0 + 944, &unk_1EC6E1D30);
        __swift_destroy_boxed_opaque_existential_0(v0 + 864);
        v300 = *(v298 + 8);
        v1 = (v298 + 8);
        v300(v297, v299);
      }

      else
      {
        v301 = *(v298 + 8);
        v1 = (v298 + 8);
        v301(*(v0 + 2528), *(v0 + 2496));
        sub_1D22BD238(v0 + 904, &unk_1EC6E1D30);
      }

      v294(*(v0 + 2120), *(v0 + 2096));
      v18 = *(v0 + 2600) + 1;
      v19 = v382;
      if (v18 == *(v0 + 2576))
      {
        goto LABEL_109;
      }

      v20 = *(v0 + 2720);
    }

    else
    {
      v20 = v384;
      if (v43 == *(v0 + 2880))
      {
        v223 = *(v0 + 2520);
        v224 = *(v0 + 2504);
        v225 = *(v0 + 2496);
        v226 = *(v0 + 2040);
        v227 = *(v0 + 2024);
        v228 = *(v0 + 2016);

        (*(v224 + 96))(v223, v225);
        (*(v227 + 32))(v226, v223, v228);
        sub_1D2872418();
        sub_1D2871EA8();
        if (sub_1D2871F78())
        {
          v229 = *(v0 + 2008);
          v230 = *(v0 + 1984);
          v231 = *(v0 + 1976);
          v232 = *(v0 + 1968);
          v233 = *(sub_1D23C6B54() + 64);
          sub_1D2870F68();

          *(swift_task_alloc() + 16) = v229;
          sub_1D274B77C(sub_1D264BD08, v233, v232);

          if ((*(v230 + 48))(v232, 1, v231) == 1)
          {
            sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30);
            goto LABEL_87;
          }

          v258 = *(v0 + 2504);
          v376 = *(v0 + 2496);
          v380 = *(v0 + 2528);
          v259 = *(v0 + 2040);
          v260 = *(v0 + 2024);
          v261 = *(v0 + 2016);
          v1 = *(v0 + 2000);
          v262 = *(v0 + 1984);
          v263 = *(v0 + 1976);
          (*(v262 + 32))(v1, *(v0 + 1968), v263);
          *(v0 + 688) = v263;
          *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
          v264 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
          (*(v262 + 16))(v264, v1, v263);
          sub_1D267A600(v0 + 664, 1, v0 + 624);
          sub_1D22BD238(v0 + 624, &unk_1EC6E1D30);
          v244 = *(v262 + 8);
          v244(v1, v263);
          (*(v260 + 8))(v259, v261);
          (*(v258 + 8))(v380, v376);
          v20 = v384;
          __swift_destroy_boxed_opaque_existential_0(v0 + 664);
        }

        else
        {
LABEL_87:
          v234 = *(v0 + 2008);
          v235 = MEMORY[0x1D389AA30]();
          LOBYTE(v234) = sub_1D22D19B8(v234, v235);

          if (v234)
          {
            v379 = *(v0 + 2528);
            v236 = *(v0 + 2504);
            v237 = *(v0 + 2496);
            v1 = *(v0 + 2040);
            v238 = *(v0 + 2024);
            v239 = *(v0 + 2016);
            v240 = *(v0 + 2008);
            v241 = *(v0 + 1984);
            v242 = *(v0 + 1976);
            *(v0 + 608) = v242;
            *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
            v243 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
            (*(v241 + 16))(v243, v240, v242);
            sub_1D267A600(v0 + 584, 1, v0 + 544);
            sub_1D22BD238(v0 + 544, &unk_1EC6E1D30);
            (*(v238 + 8))(v1, v239);
            (*(v236 + 8))(v379, v237);
            v20 = v384;
            __swift_destroy_boxed_opaque_existential_0(v0 + 584);
            v244 = *(v241 + 8);
          }

          else
          {
            v247 = *(v0 + 2008);
            v248 = *(v0 + 1992);
            v249 = *(v0 + 1984);
            v250 = *(v0 + 1976);
            sub_1D2871F48();
            LOBYTE(v247) = MEMORY[0x1D389AA00](v247, v248);
            v244 = *(v249 + 8);
            v244(v248, v250);
            v251 = *(v0 + 2528);
            v252 = *(v0 + 2504);
            v253 = *(v0 + 2496);
            v254 = *(v0 + 2040);
            v255 = *(v0 + 2024);
            v256 = *(v0 + 2016);
            if (v247)
            {
              *(v0 + 528) = *(v0 + 1976);
              *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
              __swift_allocate_boxed_opaque_existential_1((v0 + 504));
              MEMORY[0x1D389AA70]();
              sub_1D267A600(v0 + 504, 1, v0 + 464);
              sub_1D22BD238(v0 + 464, &unk_1EC6E1D30);
              (*(v255 + 8))(v254, v256);
              v257 = *(v252 + 8);
              v1 = (v252 + 8);
              v257(v251, v253);
              __swift_destroy_boxed_opaque_existential_0(v0 + 504);
            }

            else
            {
              (*(v255 + 8))(*(v0 + 2040), *(v0 + 2016));
              v265 = *(v252 + 8);
              v1 = (v252 + 8);
              v265(v251, v253);
            }
          }
        }

        v19 = v382;
        v244(*(v0 + 2008), *(v0 + 1976));
        goto LABEL_9;
      }

      v245 = *(v0 + 2520);
      v246 = *(v0 + 2496);
      v1 = *(*(v0 + 2504) + 8);
      (v1)(*(v0 + 2528), v246);

      (v1)(v245, v246);
      v19 = v382;
LABEL_9:
      v18 = *(v0 + 2600) + 1;
      if (v18 == *(v0 + 2576))
      {
        goto LABEL_109;
      }
    }
  }

  v165 = *(v0 + 2520);
  v166 = *(v0 + 1960);
  v167 = *(v0 + 1952);
  v168 = *(v0 + 1944);
  v386 = (*(v0 + 2504) + 96);
  v375 = *v386;
  (*v386)(v165, *(v0 + 2496));
  (*(v167 + 32))(v166, v165, v168);
  v169 = sub_1D2872238();
  *(v0 + 2752) = v169;
  *(v0 + 2760) = v170;
  if (v170 >> 60 == 15)
  {
    return sub_1D2879398();
  }

  v171 = v169;
  v172 = v170;

  v173 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(v171, v172);
  sub_1D22D6CF8(v171, v172);
  v174 = sub_1D28716D8();
  v175 = [v173 initWithData_];

  sub_1D22D6D4C(v171, v172);
  if (!v175)
  {
    sub_1D22D6D4C(v171, v172);
    sub_1D23EE050();
    v176 = swift_allocError();
    *v177 = 0;
    swift_willThrow();
    sub_1D22D6D4C(v171, v172);
    sub_1D2872658();
    v178 = v176;
    v179 = sub_1D2873CA8();
    v180 = sub_1D2878A18();

    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *v181 = 138412290;
      v183 = v176;
      v184 = _swift_stdlib_bridgeErrorToNSError();
      *(v181 + 4) = v184;
      *v182 = v184;
      _os_log_impl(&dword_1D226E000, v179, v180, "Could not decode image from recipe with error: %@", v181, 0xCu);
      sub_1D22BD238(v182, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v182, -1, -1);
      MEMORY[0x1D38A3520](v181, -1, -1);
    }

    v387 = *(v0 + 2528);
    v185 = *(v0 + 2504);
    v186 = *(v0 + 2496);
    v1 = *(v0 + 2344);
    v187 = v179;
    v188 = *(v0 + 2336);
    v189 = *(v0 + 2328);
    v190 = *(v0 + 1960);
    v191 = *(v0 + 1952);
    v192 = *(v0 + 1944);

    (*(v188 + 8))(v1, v189);
    (*(v191 + 8))(v190, v192);
    (*(v185 + 8))(v387, v186);
    v20 = 0;
    v19 = v382;
    goto LABEL_9;
  }

  v318 = *(v0 + 1936);
  v367 = *(v0 + 1920);
  v372 = sub_1D2630BC0();
  v319 = (v318 + v367[9]);
  *v319 = 0u;
  v319[1] = 0u;
  *(v318 + v367[10]) = xmmword_1D28809A0;
  v320 = v367[11];
  v321 = sub_1D2873AA8();
  (*(*(v321 - 8) + 56))(v318 + v320, 1, 1, v321);
  *v318 = v175;
  *(v318 + 8) = 2;
  [v175 imageOrientation];
  *(v318 + 24) = sub_1D2878C88();
  *(v318 + 16) = v372;
  *(v318 + 32) = 0;
  *(v318 + 40) = 0;
  *(v318 + v367[12]) = 0;
  sub_1D2871808();
  sub_1D22D6D4C(v171, v172);
  v322 = sub_1D28722E8();
  v323 = *(v322 + 16);
  if (v323)
  {
    LOBYTE(v382) = 0;
    v324 = v322 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
    do
    {
      v327 = *(v0 + 2880);
      v328 = *(v0 + 2512);
      v329 = *(v0 + 2496);
      v24(v328, v324, v329);
      v330 = v42(v328, v329);
      v331 = *(v0 + 2512);
      if (v330 == v327)
      {
        v325 = *(v0 + 2032);
        v326 = *(v0 + 2024);
        v382 = *(v0 + 2016);
        v362 = *(v0 + 1992);
        v368 = *(v0 + 1984);
        v373 = *(v0 + 1976);
        v375(v331, *(v0 + 2496));
        v364 = v325;
        (*(v326 + 32))(v325, v331, v382);
        sub_1D2872418();
        sub_1D2871EA8();
        LOBYTE(v325) = sub_1D2871F78();
        (*(v368 + 8))(v362, v373);
        (*(v326 + 8))(v364, v382);
        LOBYTE(v382) = v325 ^ 1;
      }

      else
      {
        (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
      }

      v324 += v377;
      --v323;
    }

    while (v323);
LABEL_131:

    v344 = v382;
  }

  else
  {

    v344 = 0;
  }

  v345 = v344 & 1;
  *(v0 + 331) = v344 & 1;
  *(v0 + 2768) = sub_1D23C7314();
  *(v0 + 2776) = sub_1D2878558();
  v346 = swift_task_alloc();
  *(v0 + 2784) = v346;
  *v346 = v0;
  v346[1] = sub_1D26620A4;
  v347 = *(v0 + 1936);

  return sub_1D28421E4(v0 + 280, v347, v345);
}

uint64_t sub_1D26620A4()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 2792) = *(v2 + 280);
  *(v2 + 2800) = *(v2 + 288);
  *(v2 + 2816) = *(v2 + 304);
  *(v2 + 1769) = *(v2 + 312);
  *(v2 + 2824) = *(v1 + 320);
  *(v2 + 1770) = *(v2 + 328);

  *(v2 + 2832) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v2 + 2840) = v4;
  *(v2 + 2848) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2662228, v4, v3);
}

uint64_t sub_1D2662228()
{
  v1 = *(v0 + 1769);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v8 = *(v0 + 1770);
    v9 = *(v0 + 1769);
    v10 = *(v0 + 1936);

    sub_1D23C7044();
    v11 = sub_1D27ED8C8();

    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if ((v11 | (v9 & ~v8)))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = type metadata accessor for SceneConditioningImage();
    *(v0 + 1568) = v14;
    *(v0 + 1576) = sub_1D2672E78(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1544));
    sub_1D2672EC0(v10, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v14 + 20)) = v13;
    goto LABEL_12;
  }

  v3 = *(v0 + 331);
  sub_1D2672EC0(*(v0 + 1936), *(v0 + 1928), type metadata accessor for PlaygroundImage);
  if (v3 != 1)
  {
    if (*(v0 + 2824) == 1)
    {
      goto LABEL_14;
    }

    v21 = *(v0 + 2072);
    v22 = *(v0 + 2056);
    v23 = *(v0 + 2048);

    (*(v22 + 56))(v21, 1, 1, v23);
    v24 = *(v0 + 2072);
    v25 = *(v0 + 1928);
    v26 = *(v0 + 1904);
    *(v0 + 1568) = v26;
    *(v0 + 1576) = sub_1D2672E78(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
    v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 1544));
    sub_1D2672F28(v25, v27 + *(v26 + 20), type metadata accessor for PlaygroundImage);
    sub_1D22D6E50(v24, v27);
LABEL_12:
    v16 = sub_1D28784F8();
    v18 = v17;
    v19 = sub_1D26626E0;
    goto LABEL_15;
  }

  v4 = *(v0 + 2816);
  v5 = *(v0 + 2808);
  v6 = *(v0 + 1928);
  v7 = *(v0 + 1920);
  v30.origin.x = *(v0 + 2792) - v5 * 0.5;
  v30.origin.y = *(v0 + 2800) - v4 * 0.5;
  v30.size.width = v5 + v5;
  v30.size.height = v4 + v4;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 1.0;
  v31.size.height = 1.0;
  *(v6 + *(v7 + 36)) = CGRectIntersection(v30, v31);
LABEL_14:
  *(v0 + 2856) = sub_1D2878558();
  v16 = sub_1D28784F8();
  v18 = v20;
  v19 = sub_1D2662534;
LABEL_15:

  return MEMORY[0x1EEE6DFA0](v19, v16, v18);
}

uint64_t sub_1D2662534()
{
  v1 = v0[259];
  v2 = v0[257];
  v3 = v0[256];

  (*(v2 + 56))(v1, 1, 1, v3);
  v4 = v0[356];
  v5 = v0[355];

  return MEMORY[0x1EEE6DFA0](sub_1D26625D0, v5, v4);
}

uint64_t sub_1D26625D0()
{

  v1 = v0[259];
  v2 = v0[241];
  v3 = v0[238];
  v0[196] = v3;
  v0[197] = sub_1D2672E78(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 193);
  sub_1D2672F28(v2, boxed_opaque_existential_1 + *(v3 + 20), type metadata accessor for PlaygroundImage);
  sub_1D22D6E50(v1, boxed_opaque_existential_1);
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D26626E0, v6, v5);
}

uint64_t sub_1D26626E0()
{

  v1 = *(v0 + 2560);
  v2 = *(v0 + 2552);

  return MEMORY[0x1EEE6DFA0](sub_1D2662754, v2, v1);
}

uint64_t sub_1D2662754()
{
  v405 = v0;
  sub_1D22D7044(v0 + 1544, v0 + 1184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F0);
  if (swift_dynamicCast() & 1) != 0 && (v1 = *(v0 + 330), sub_1D2672F90(*(v0 + 1912), type metadata accessor for PersonConditioningImage), (v1))
  {
    v2 = *(v0 + 2528);
    v3 = *(v0 + 2504);
    v4 = *(v0 + 2496);
    v5 = *(v0 + 1960);
    v6 = *(v0 + 1952);
    v7 = *(v0 + 1944);
    v8 = *(v0 + 1936);
    sub_1D22D6D4C(*(v0 + 2752), *(v0 + 2760));
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    sub_1D2672F90(v8, type metadata accessor for PlaygroundImage);
    v9 = __swift_destroy_boxed_opaque_existential_0(v0 + 1544);
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 2760);
    v13 = *(v0 + 2752);
    v14 = *(v0 + 2504);
    v387 = *(v0 + 2496);
    v393 = *(v0 + 2528);
    v383 = *(v0 + 1960);
    v15 = *(v0 + 1952);
    v16 = *(v0 + 1944);
    v396 = *(v0 + 1936);
    v17 = *(v0 + 1568);
    v18 = *(v0 + 1576);
    v19 = __swift_project_boxed_opaque_existential_1((v0 + 1544), v17);
    *(v0 + 1688) = v17;
    *(v0 + 1696) = *(v18 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1664));
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
    sub_1D267A600(v0 + 1664, 1, v0 + 1144);
    sub_1D22D6D4C(v13, v12);
    sub_1D22BD238(v0 + 1144, &unk_1EC6E1D30);
    (*(v15 + 8))(v383, v16);
    (*(v14 + 8))(v393, v387);
    sub_1D2672F90(v396, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0(v0 + 1664);
    v9 = __swift_destroy_boxed_opaque_existential_0(v0 + 1544);
    v11 = *(v0 + 330);
  }

  v21 = *(v0 + 2600) + 1;
  if (v21 == *(v0 + 2576))
  {
LABEL_6:

    v22 = *(v0 + 8);
    goto LABEL_7;
  }

  v370 = (v0 + 744);
  v24 = *(v0 + 2592);
  while (1)
  {
    *(v0 + 2600) = v21;
    *(v0 + 330) = v11 & 1;
    *(v0 + 2592) = v24;
    v25 = *(v0 + 2568);
    if (v21 >= *(v25 + 16))
    {
      break;
    }

    v397 = v24;
    LODWORD(v394) = v11;
    v26 = *(v0 + 2504);
    v27 = *(v26 + 16);
    v28 = *(v0 + 1872);
    v388 = *(v26 + 72);
    v27(*(v0 + 2528), v25 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v388 * v21, *(v0 + 2496));
    v29 = *(v28 + 32);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v29 + 32;
      sub_1D2870F68();
      v32 = MEMORY[0x1E69E7CC0];
      do
      {
        v33 = *(v0 + 2456);
        v34 = *(v0 + 2448);
        v35 = *(v0 + 2440);
        sub_1D22D7044(v31, v0 + 1104);
        sub_1D227268C((v0 + 1104), v0 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        v36 = swift_dynamicCast();
        (*(v33 + 56))(v35, v36 ^ 1u, 1, v34);
        if ((*(v33 + 48))(v35, 1, v34) == 1)
        {
          sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20);
        }

        else
        {
          sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1D27CC840(0, v32[2] + 1, 1, v32);
          }

          v38 = v32[2];
          v37 = v32[3];
          if (v38 >= v37 >> 1)
          {
            v32 = sub_1D27CC840(v37 > 1, v38 + 1, 1, v32);
          }

          v39 = *(v0 + 2488);
          v40 = *(v0 + 2456);
          v32[2] = v38 + 1;
          sub_1D2672F28(v39, v32 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v38, type metadata accessor for Prompt);
        }

        v31 += 40;
        --v30;
      }

      while (v30);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v0 + 1772);
    v42 = *(v0 + 2520);
    v43 = *(v0 + 2504);
    v44 = *(v0 + 2496);
    v27(v42, *(v0 + 2528), v44);
    v45 = *(v43 + 88);
    v46 = v45(v42, v44);
    if (v46 == v41)
    {
      v47 = *(v0 + 2520);
      v48 = *(v0 + 2504);
      v49 = *(v0 + 2496);
      v50 = *(v0 + 1896);

      (*(v48 + 96))(v47, v49);
      *(v0 + 2608) = *v47;
      *(v0 + 2616) = v47[1];
      sub_1D28792C8();
      v51 = *(v50 + 24);
      *(v0 + 2624) = v51;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v52 = *(v51 + 16);
      if (*(v52 + 16) && (v53 = sub_1D25D0574(*(v0 + 2632)), (v54 & 1) != 0))
      {
        sub_1D22D7044(*(v52 + 56) + 40 * v53, v0 + 1624);
        swift_endAccess();
        sub_1D227268C((v0 + 1624), v0 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520);
        swift_dynamicCast();
        v55 = *(v0 + 1840);
      }

      else
      {
        v72 = *(v0 + 2632);
        swift_endAccess();
        swift_allocObject();
        v73 = sub_1D2870F78();
        v55 = sub_1D26D5DB8(v73);

        *(v0 + 448) = v72;
        *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v0 + 424) = v55;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v0 + 424, v72);
        swift_endAccess();
      }

      v74 = *(v55 + 88);

      if ((v74 & 1) == 0)
      {
        v75 = *(v0 + 2424);
        v76 = *(v0 + 2408);
        v77 = *(v0 + 2400);
        sub_1D28792C8();
        sub_1D28792F8();
        v78 = *(v76 + 8);
        *(v0 + 2640) = v78;
        *(v0 + 2648) = (v76 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v78(v75, v77);
        if (sub_1D28798E8())
        {
          sub_1D2872658();
          v323 = sub_1D2873CA8();
          v324 = sub_1D28789F8();
          if (os_log_type_enabled(v323, v324))
          {
            v325 = swift_slowAlloc();
            *v325 = 0;
            _os_log_impl(&dword_1D226E000, v323, v324, "Curated prompts have not been loaded yet, waiting to parse recipe", v325, 2u);
            MEMORY[0x1D38A3520](v325, -1, -1);
          }

          v326 = *(v0 + 2384);
          v327 = *(v0 + 2336);
          v328 = *(v0 + 2328);

          (*(v327 + 8))(v326, v328);
          v329 = sub_1D2879908();
          v331 = v330;
          sub_1D2879718();
          *(v0 + 1824) = v329;
          *(v0 + 1832) = v331;
          *(v0 + 1752) = 0u;
          *(v0 + 1768) = 1;
          v144 = sub_1D2658A58;
          v145 = 0;
          v146 = 0;
LABEL_121:

          return MEMORY[0x1EEE6DFA0](v144, v145, v146);
        }

        sub_1D2872658();
        v79 = sub_1D2873CA8();
        v80 = sub_1D2878A18();
        v81 = os_log_type_enabled(v79, v80);
        v82 = *(v0 + 2392);
        v83 = *(v0 + 2336);
        v84 = *(v0 + 2328);
        if (v81)
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *&v403[0] = v86;
          *v85 = 136315138;
          v87 = sub_1D28798D8();
          v89 = sub_1D23D7C84(v87, v88, v403);

          *(v85 + 4) = v89;
          _os_log_impl(&dword_1D226E000, v79, v80, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x1D38A3520](v86, -1, -1);
          MEMORY[0x1D38A3520](v85, -1, -1);
        }

        (*(v83 + 8))(v82, v84);
      }

      v90 = *(sub_1D23C7858() + 88);

      if (v90 != 1)
      {
        goto LABEL_45;
      }

      v91 = *(v0 + 2616);
      v92 = *(v0 + 2608);
      v93 = *(v0 + 2288);
      v94 = *(v0 + 2280);
      v95 = *(v0 + 2272);
      sub_1D23C7858();
      sub_1D26D06B4(v92, v91, v95);

      if ((*(v93 + 48))(v95, 1, v94) == 1)
      {
        sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210);
LABEL_45:
        v96 = *(sub_1D23C7858() + 88);

        if (v96)
        {
          sub_1D2872658();
          sub_1D2870F68();
          v97 = sub_1D2873CA8();
          v98 = sub_1D2878A18();

          v99 = os_log_type_enabled(v97, v98);
          v100 = *(v0 + 2616);
          if (v99)
          {
            v101 = *(v0 + 2608);
            v102 = *(v0 + 2368);
            v103 = *(v0 + 2336);
            v104 = *(v0 + 2328);
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            *&v403[0] = v106;
            *v105 = 136315138;
            v107 = sub_1D23D7C84(v101, v100, v403);

            *(v105 + 4) = v107;
            v108 = v98;
            v109 = v97;
            v110 = "Cannot decode curated prompt from string: %s";
            goto LABEL_53;
          }

          v211 = *(v0 + 2368);
LABEL_76:
          v212 = *(v0 + 2336);
          v213 = *(v0 + 2328);

          (*(v212 + 8))(v211, v213);
        }

        else
        {
          sub_1D2872658();
          sub_1D2870F68();
          v97 = sub_1D2873CA8();
          v122 = sub_1D2878A18();

          v123 = os_log_type_enabled(v97, v122);
          v124 = *(v0 + 2616);
          if (!v123)
          {
            v211 = *(v0 + 2376);
            goto LABEL_76;
          }

          v125 = *(v0 + 2608);
          v102 = *(v0 + 2376);
          v103 = *(v0 + 2336);
          v104 = *(v0 + 2328);
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *&v403[0] = v106;
          *v105 = 136315138;
          v126 = sub_1D23D7C84(v125, v124, v403);

          *(v105 + 4) = v126;
          v108 = v122;
          v109 = v97;
          v110 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_53:
          _os_log_impl(&dword_1D226E000, v109, v108, v110, v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v106);
          MEMORY[0x1D38A3520](v106, -1, -1);
          MEMORY[0x1D38A3520](v105, -1, -1);

          (*(v103 + 8))(v102, v104);
        }

        v24 = v397;
        (*(v0 + 1880))(*(v0 + 2528));
        v214 = *(v0 + 2528);
        v215 = *(v0 + 2504);
        v216 = *(v0 + 2496);
        v217 = *(v0 + 2432);
        v218 = *(v0 + 2408);
        v219 = *(v0 + 2400);
        if (*(v0 + 1528))
        {
          sub_1D227268C((v0 + 1504), v0 + 1584);
          sub_1D267A600(v0 + 1584, 1, v0 + 1464);
          sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30);
          __swift_destroy_boxed_opaque_existential_0(v0 + 1584);
          (*(v218 + 8))(v217, v219);
          v9 = (*(v215 + 8))(v214, v216);
        }

        else
        {
          (*(v218 + 8))(*(v0 + 2432), *(v0 + 2400));
          (*(v215 + 8))(v214, v216);
          v9 = sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30);
        }

        v11 = *(v0 + 330);
        goto LABEL_13;
      }

      v395 = *(v0 + 2528);
      v202 = *(v0 + 2504);
      v203 = *(v0 + 2496);
      v204 = *(v0 + 2432);
      v205 = *(v0 + 2408);
      v206 = *(v0 + 2400);
      v207 = *(v0 + 2296);
      v208 = *(v0 + 2280);
      v209 = *(v0 + 2272);

      sub_1D2672F28(v209, v207, type metadata accessor for CuratedPrompt);
      *(v0 + 1408) = v208;
      *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt);
      v210 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
      sub_1D2672EC0(v207, v210, type metadata accessor for CuratedPrompt);
      sub_1D267A600(v0 + 1384, 1, v0 + 1424);
      sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30);
      sub_1D2672F90(v207, type metadata accessor for CuratedPrompt);
      (*(v205 + 8))(v204, v206);
      (*(v202 + 8))(v395, v203);
      v9 = __swift_destroy_boxed_opaque_existential_0(v0 + 1384);
      v11 = *(v0 + 330);
      v24 = v397;
    }

    else
    {
      if (v46 == *(v0 + 2864))
      {
        v56 = *(v0 + 2520);
        v57 = *(v0 + 2264);
        v58 = *(v0 + 2256);
        v59 = *(v0 + 2248);
        v60 = *(v0 + 2240);
        v61 = *(v0 + 2232);
        v62 = *(v0 + 2184);
        v63 = *(v0 + 2176);
        (*(*(v0 + 2504) + 96))(v56, *(v0 + 2496));
        (*(v58 + 32))(v57, v56, v59);
        v374 = sub_1D2872368();
        v378 = v64;
        (*(v62 + 56))(v60, 1, 1, v63);
        v65 = sub_1D28723D8();
        v66 = swift_task_alloc();
        *(v66 + 16) = v57;
        v372 = sub_1D2654E54(sub_1D2672DEC, v66, v65);
        v384 = v397;

        sub_1D2871778();
        sub_1D22BD1D0(v60, v61, &unk_1EC6E1D40);
        if ((*(v62 + 48))(v61, 1, v63) == 1)
        {
          sub_1D22BD238(*(v0 + 2232), &unk_1EC6E1D40);
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v67 = *(v0 + 2472);
          *(v67 + 24) = sub_1D24B63AC(qword_1ED8B0010, v374, v378);
          *(v67 + 32) = v68 & 1;
          v69 = sub_1D27E1420(v374, v378);
          v71 = v70;
        }

        else
        {
          (*(*(v0 + 2184) + 32))(*(v0 + 2200), *(v0 + 2232), *(v0 + 2176));
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v398 = *(v0 + 2584);
          v127 = *(v0 + 2200);
          v128 = *(v0 + 2192);
          v129 = *(v0 + 2184);
          v130 = *(v0 + 2176);
          v131 = qword_1ED8B0010;
          sub_1D28712B8();
          sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
          *(v0 + 1808) = sub_1D28782D8();
          *(v0 + 1816) = v132;
          *(v0 + 1792) = 12369903;
          *(v0 + 1800) = 0xA300000000000000;
          *(v0 + 1776) = 0;
          *(v0 + 1784) = 0xE000000000000000;
          v369 = sub_1D22BD06C();
          v368 = MEMORY[0x1E69E6158];
          v133 = sub_1D2878FA8();
          v135 = v134;

          v136 = sub_1D24B63AC(v131, v133, v135);
          v138 = v137;

          *(v0 + 1848) = v136;
          sub_1D22BCFD0(0, &qword_1ED89CD40);
          (*(v129 + 16))(v128, v127, v130);
          v139 = sub_1D2878AE8();
          v140 = [v139 length];
          v141 = swift_allocObject();
          *(v141 + 16) = v0 + 1848;
          v142 = swift_allocObject();
          *(v142 + 16) = sub_1D2436B8C;
          *(v142 + 24) = v141;
          *(v0 + 368) = sub_1D2436B94;
          *(v0 + 376) = v142;
          *(v0 + 336) = MEMORY[0x1E69E9820];
          *(v0 + 344) = 1107296256;
          *(v0 + 352) = sub_1D267502C;
          *(v0 + 360) = &block_descriptor_33;
          v143 = _Block_copy((v0 + 336));
          sub_1D2870F78();

          [v139 enumerateAttribute:v398 inRange:0 options:v140 usingBlock:{0, v143}];

          _Block_release(v143);
          LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

          if (v139)
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v144, v145, v146);
          }

          v147 = *(v0 + 2472);
          v148 = *(v0 + 2200);
          v149 = *(v0 + 2184);
          v150 = *(v0 + 2176);
          v151 = *(v0 + 1848);

          *(v147 + 24) = v151;
          *(v147 + 32) = v138 & 1;
          v152 = sub_1D27E0DA0();
          v154 = sub_1D27E1420(v152, v153);
          v71 = v155;

          (*(v149 + 8))(v148, v150);
          v69 = v154;
        }

        v389 = *(v0 + 2480);
        v156 = *(v0 + 2472);
        v157 = *(v0 + 2448);
        v379 = *(v0 + 2240);
        v158 = *(v0 + 2224);
        v159 = *(v0 + 2216);
        v160 = *(v0 + 2208);
        v156[1] = v69;
        v156[2] = v71;
        v156[5] = v372;
        (*(v159 + 16))(v156 + *(v157 + 36), v158, v160);
        *(v156 + *(v157 + 40)) = 0;
        sub_1D2879838();
        sub_1D2877F38();

        v161 = v403[3];
        *(v0 + 48) = v403[2];
        *(v0 + 64) = v161;
        *(v0 + 80) = v404;
        v162 = v403[1];
        *(v0 + 16) = v403[0];
        *(v0 + 32) = v162;
        v163 = sub_1D2879818();
        (*(v159 + 8))(v158, v160);
        sub_1D22BD238(v379, &unk_1EC6E1D40);
        *v156 = v163;
        sub_1D2672F28(v156, v389, type metadata accessor for Prompt);
        v164 = 0;
        v165 = v32[2];
        while (v165 != v164)
        {
          if (v164 >= v32[2])
          {
            __break(1u);
            goto LABEL_135;
          }

          v166 = *(v0 + 2480);
          v167 = *(v0 + 2464);
          sub_1D2672EC0(v32 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v164, v167, type metadata accessor for Prompt);
          v168 = *(v167 + 8);
          v169 = *(v167 + 16);
          v170 = *(v0 + 2464);
          if (v168 == *(v166 + 8) && v169 == *(v166 + 16))
          {
            sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_84:
            (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

            v11 = v394;
            v24 = v384;
LABEL_85:
            v228 = *(v0 + 2264);
            v229 = *(v0 + 2256);
            v230 = *(v0 + 2248);
            sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
            v9 = (*(v229 + 8))(v228, v230);
            goto LABEL_13;
          }

          ++v164;
          v172 = sub_1D2879618();
          sub_1D2672F90(v170, type metadata accessor for Prompt);
          if (v172)
          {
            goto LABEL_84;
          }
        }

        v220 = *(v0 + 329);

        v11 = v394;
        v24 = v384;
        if ((v220 & 1) == 0)
        {
LABEL_82:
          v223 = *(v0 + 2528);
          v224 = *(v0 + 2504);
          v225 = *(v0 + 2496);
          v226 = *(v0 + 2480);
          *(v0 + 1368) = *(v0 + 2448);
          *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt);
          v227 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
          sub_1D2672EC0(v226, v227, type metadata accessor for Prompt);
          sub_1D267A600(v0 + 1344, 1, v0 + 1304);
          sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30);
          (*(v224 + 8))(v223, v225);
          __swift_destroy_boxed_opaque_existential_0(v0 + 1344);
          goto LABEL_85;
        }

        if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
        {

          goto LABEL_82;
        }

        v348 = v221;
        v402 = v222;

        sub_1D2872658();
        v349 = sub_1D2873CA8();
        v350 = sub_1D28789F8();
        if (os_log_type_enabled(v349, v350))
        {
          v351 = swift_slowAlloc();
          *v351 = 0;
          _os_log_impl(&dword_1D226E000, v349, v350, "Blocking name to photo substitution when loading context from GenerationRecipe", v351, 2u);
          MEMORY[0x1D38A3520](v351, -1, -1);
        }

        v352 = *(v0 + 2528);
        v353 = *(v0 + 2504);
        v354 = *(v0 + 2496);
        v355 = *(v0 + 2480);
        v356 = *(v0 + 2360);
        v357 = *(v0 + 2336);
        v358 = *(v0 + 2328);

        (*(v357 + 8))(v356, v358);
        sub_1D2672E0C();
        swift_allocError();
        *v359 = v348;
        v359[1] = v402;
        swift_willThrow();
        (*(v353 + 8))(v352, v354);
        sub_1D2672F90(v355, type metadata accessor for Prompt);
        (*(*(v0 + 2256) + 8))();

        v22 = *(v0 + 8);
LABEL_7:

        return v22();
      }

      if (v46 == *(v0 + 2868))
      {
        v111 = *(v0 + 2520);
        v112 = *(v0 + 2504);
        v113 = *(v0 + 2496);
        v114 = *(v0 + 2152);
        v115 = *(v0 + 2144);
        v116 = *(v0 + 2136);
        v117 = *(v0 + 2128);

        (*(v112 + 96))(v111, v113);
        (*(v116 + 32))(v114, v111, v117);
        sub_1D2878C18();
        (*(v116 + 16))(v115, v114, v117);
        v118 = sub_1D2878BD8();
        *(v0 + 2672) = v118;
        if (v118)
        {
          *(v0 + 2680) = sub_1D23C7314();
          *(v0 + 2688) = sub_1D2878558();
          v332 = sub_1D28784F8();
          v146 = v333;
          *(v0 + 2696) = v332;
          *(v0 + 2704) = v333;
          v144 = sub_1D265BF5C;
          v145 = v332;
          goto LABEL_121;
        }

        v119 = *(v0 + 2528);
        v120 = *(v0 + 2504);
        v121 = *(v0 + 2496);
        (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
        v9 = (*(v120 + 8))(v119, v121);
        v11 = *(v0 + 330);
        v24 = *(v0 + 2592);
      }

      else if (v46 == *(v0 + 2872))
      {
        v173 = *(v0 + 2520);
        v174 = *(v0 + 1960);
        v175 = *(v0 + 1952);
        v176 = *(v0 + 1944);
        v399 = (*(v0 + 2504) + 96);
        v385 = *v399;
        (*v399)(v173, *(v0 + 2496));
        (*(v175 + 32))(v174, v173, v176);
        v177 = sub_1D2872238();
        *(v0 + 2752) = v177;
        *(v0 + 2760) = v178;
        if (v178 >> 60 == 15)
        {
          return sub_1D2879398();
        }

        v179 = v177;
        v180 = v178;

        v181 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_1D22D6CF8(v179, v180);
        sub_1D22D6CF8(v179, v180);
        v182 = sub_1D28716D8();
        v183 = [v181 initWithData_];

        sub_1D22D6D4C(v179, v180);
        if (v183)
        {
          v334 = *(v0 + 1936);
          v376 = *(v0 + 1920);
          v381 = sub_1D2630BC0();
          v335 = (v334 + v376[9]);
          *v335 = 0u;
          v335[1] = 0u;
          *(v334 + v376[10]) = xmmword_1D28809A0;
          v336 = v376[11];
          v337 = sub_1D2873AA8();
          (*(*(v337 - 8) + 56))(v334 + v336, 1, 1, v337);
          *v334 = v183;
          *(v334 + 8) = 2;
          [v183 imageOrientation];
          *(v334 + 24) = sub_1D2878C88();
          *(v334 + 16) = v381;
          *(v334 + 32) = 0;
          *(v334 + 40) = 0;
          *(v334 + v376[12]) = 0;
          sub_1D2871808();
          sub_1D22D6D4C(v179, v180);
          v338 = sub_1D28722E8();
          v339 = *(v338 + 16);
          if (v339)
          {
            LOBYTE(v394) = 0;
            v340 = v338 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
            do
            {
              v343 = *(v0 + 2880);
              v344 = *(v0 + 2512);
              v345 = *(v0 + 2496);
              v27(v344, v340, v345);
              v346 = v45(v344, v345);
              v347 = *(v0 + 2512);
              if (v346 == v343)
              {
                v341 = *(v0 + 2032);
                v342 = *(v0 + 2024);
                v394 = *(v0 + 2016);
                v371 = *(v0 + 1992);
                v377 = *(v0 + 1984);
                v382 = *(v0 + 1976);
                v385(v347, *(v0 + 2496));
                v373 = v341;
                (*(v342 + 32))(v341, v347, v394);
                sub_1D2872418();
                sub_1D2871EA8();
                LOBYTE(v341) = sub_1D2871F78();
                (*(v377 + 8))(v371, v382);
                (*(v342 + 8))(v373, v394);
                LOBYTE(v394) = v341 ^ 1;
              }

              else
              {
                (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
              }

              v340 += v388;
              --v339;
            }

            while (v339);
LABEL_135:

            v360 = v394;
          }

          else
          {

            v360 = 0;
          }

          v361 = v360 & 1;
          *(v0 + 331) = v360 & 1;
          *(v0 + 2768) = sub_1D23C7314();
          *(v0 + 2776) = sub_1D2878558();
          v362 = swift_task_alloc();
          *(v0 + 2784) = v362;
          *v362 = v0;
          v362[1] = sub_1D26620A4;
          v363 = *(v0 + 1936);

          return sub_1D28421E4(v0 + 280, v363, v361);
        }

        sub_1D22D6D4C(v179, v180);
        sub_1D23EE050();
        v184 = swift_allocError();
        *v185 = 0;
        swift_willThrow();
        sub_1D22D6D4C(v179, v180);
        sub_1D2872658();
        v186 = v184;
        v187 = sub_1D2873CA8();
        v188 = sub_1D2878A18();

        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          *v189 = 138412290;
          v191 = v184;
          v192 = _swift_stdlib_bridgeErrorToNSError();
          *(v189 + 4) = v192;
          *v190 = v192;
          _os_log_impl(&dword_1D226E000, v187, v188, "Could not decode image from recipe with error: %@", v189, 0xCu);
          sub_1D22BD238(v190, qword_1EC6DA930);
          MEMORY[0x1D38A3520](v190, -1, -1);
          MEMORY[0x1D38A3520](v189, -1, -1);
        }

        v400 = *(v0 + 2528);
        v193 = *(v0 + 2504);
        v194 = *(v0 + 2496);
        v195 = *(v0 + 2344);
        v196 = v187;
        v197 = *(v0 + 2336);
        v198 = *(v0 + 2328);
        v199 = *(v0 + 1960);
        v200 = *(v0 + 1952);
        v201 = *(v0 + 1944);

        (*(v197 + 8))(v195, v198);
        (*(v200 + 8))(v199, v201);
        v9 = (*(v193 + 8))(v400, v194);
        v24 = 0;
        v11 = v394;
      }

      else
      {
        if (v46 == *(v0 + 2876))
        {
          v231 = *(v0 + 2520);
          v232 = *(v0 + 2504);
          v233 = *(v0 + 2496);
          v234 = *(v0 + 2120);
          v235 = *(v0 + 2104);
          v236 = *(v0 + 2096);

          (*(v232 + 96))(v231, v233);
          (*(v235 + 32))(v234, v231, v236);
          v237 = sub_1D23C6DDC();
          *(v0 + 1856) = v237;
          v238 = off_1F4DCA918[0];
          type metadata accessor for _PeopleRetrieval();
          v239 = v238();

          *(swift_task_alloc() + 16) = v234;
          sub_1D274BE58(sub_1D2672DCC, v239, v0 + 784);
          *(v0 + 2720) = v397;

          if (*(v0 + 808))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
            if (swift_dynamicCast())
            {
              v240 = v0 + 744;
              if (*(v0 + 768))
              {
                sub_1D227268C(v370, v0 + 704);
                sub_1D22D7044(v0 + 704, v0 + 984);
                if (swift_dynamicCast())
                {
                  v241 = *(v0 + 2088);
                  (*(*(v0 + 2056) + 56))(v241, 0, 1, *(v0 + 2048));
                  v242 = *v241;
                  v243 = v241[1];
                  v244 = v241[2];
                  *(v0 + 136) = v241[3];
                  *(v0 + 120) = v244;
                  *(v0 + 104) = v243;
                  *(v0 + 88) = v242;
                  sub_1D22D63B0(v0 + 88, v0 + 152);
                  sub_1D2672F90(v241, type metadata accessor for PhotosPersonAsset);
                  v9 = sub_1D2872298();
                  *(v0 + 2728) = v10;
                  if (v10)
                  {
                    goto LABEL_141;
                  }

                  sub_1D22D640C(v0 + 88);
                }

                else
                {
                  v314 = *(v0 + 2088);
                  (*(*(v0 + 2056) + 56))(v314, 1, 1, *(v0 + 2048));
                  sub_1D22BD238(v314, &unk_1EC6DDDC0);
                }

                v315 = *(v0 + 2528);
                v316 = *(v0 + 2504);
                v317 = *(v0 + 2496);
                v318 = *(v0 + 728);
                v319 = *(v0 + 736);
                v320 = __swift_project_boxed_opaque_existential_1((v0 + 704), v318);
                *(v0 + 1088) = v318;
                *(v0 + 1096) = *(v319 + 8);
                v321 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
                (*(*(v318 - 8) + 16))(v321, v320, v318);
                v11 = 1;
                sub_1D267A600(v0 + 1064, 1, v0 + 1024);
                sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30);
                (*(v316 + 8))(v315, v317);
                __swift_destroy_boxed_opaque_existential_0(v0 + 1064);
                v322 = *(v0 + 2104);
                __swift_destroy_boxed_opaque_existential_0(v0 + 704);
                v288 = *(v322 + 8);
                goto LABEL_113;
              }
            }

            else
            {
              *(v0 + 776) = 0;
              *v370 = 0u;
              *(v0 + 760) = 0u;
              v240 = v0 + 744;
            }
          }

          else
          {
            sub_1D22BD238(v0 + 784, &qword_1EC6DAD30);
            v240 = v0 + 744;
            *v370 = 0u;
            *(v0 + 760) = 0u;
            *(v0 + 776) = 0;
          }

          v270 = *(v0 + 2120);
          v271 = *(v0 + 2112);
          v272 = *(v0 + 2104);
          v273 = *(v0 + 2096);
          sub_1D22BD238(v240, &qword_1EC6D9A58);
          sub_1D2872658();
          (*(v272 + 16))(v271, v270, v273);
          v274 = sub_1D2873CA8();
          v275 = sub_1D2878A18();
          v276 = os_log_type_enabled(v274, v275);
          v277 = *(v0 + 2352);
          v278 = *(v0 + 2336);
          v279 = *(v0 + 2328);
          v280 = *(v0 + 2112);
          v281 = *(v0 + 2104);
          v282 = *(v0 + 2096);
          if (v276)
          {
            v283 = swift_slowAlloc();
            v401 = v279;
            *&v403[0] = swift_slowAlloc();
            v284 = *&v403[0];
            *v283 = 136315138;
            v375 = sub_1D28722B8();
            v391 = v277;
            v286 = v285;
            v380 = v275;
            v287 = *(v281 + 8);
            v287(v280, v282);
            v288 = v287;
            v289 = sub_1D23D7C84(v375, v286, v403);

            *(v283 + 4) = v289;
            _os_log_impl(&dword_1D226E000, v274, v380, "Cannot find person face with id: %s", v283, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v284);
            MEMORY[0x1D38A3520](v284, -1, -1);
            MEMORY[0x1D38A3520](v283, -1, -1);

            (*(v278 + 8))(v391, v401);
          }

          else
          {

            v290 = *(v281 + 8);
            v290(v280, v282);
            v288 = v290;
            (*(v278 + 8))(v277, v279);
          }

          (*(v0 + 1880))(*(v0 + 2528));
          v291 = *(v0 + 2528);
          v292 = *(v0 + 2504);
          v293 = *(v0 + 2496);
          v11 = v394;
          if (*(v0 + 928))
          {
            sub_1D227268C((v0 + 904), v0 + 864);
            v11 = 1;
            sub_1D267A600(v0 + 864, 1, v0 + 944);
            sub_1D22BD238(v0 + 944, &unk_1EC6E1D30);
            __swift_destroy_boxed_opaque_existential_0(v0 + 864);
            (*(v292 + 8))(v291, v293);
          }

          else
          {
            (*(v292 + 8))(*(v0 + 2528), *(v0 + 2496));
            sub_1D22BD238(v0 + 904, &unk_1EC6E1D30);
          }

LABEL_113:
          v9 = (v288)(*(v0 + 2120), *(v0 + 2096));
          v24 = *(v0 + 2720);
          goto LABEL_13;
        }

        v24 = v397;
        if (v46 == *(v0 + 2880))
        {
          v245 = *(v0 + 2520);
          v246 = *(v0 + 2504);
          v247 = *(v0 + 2496);
          v248 = *(v0 + 2040);
          v249 = *(v0 + 2024);
          v250 = *(v0 + 2016);

          (*(v246 + 96))(v245, v247);
          (*(v249 + 32))(v248, v245, v250);
          sub_1D2872418();
          sub_1D2871EA8();
          if (sub_1D2871F78())
          {
            v251 = *(v0 + 2008);
            v252 = *(v0 + 1984);
            v253 = *(v0 + 1976);
            v254 = *(v0 + 1968);
            v255 = *(sub_1D23C6B54() + 64);
            sub_1D2870F68();

            *(swift_task_alloc() + 16) = v251;
            sub_1D274B77C(sub_1D264BD08, v255, v254);

            if ((*(v252 + 48))(v254, 1, v253) == 1)
            {
              sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30);
              goto LABEL_97;
            }

            v305 = *(v0 + 2504);
            v386 = *(v0 + 2496);
            v392 = *(v0 + 2528);
            v306 = *(v0 + 2040);
            v307 = *(v0 + 2024);
            v308 = *(v0 + 2016);
            v309 = *(v0 + 2000);
            v310 = *(v0 + 1984);
            v311 = *(v0 + 1976);
            (*(v310 + 32))(v309, *(v0 + 1968), v311);
            *(v0 + 688) = v311;
            *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
            v312 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
            (*(v310 + 16))(v312, v309, v311);
            sub_1D267A600(v0 + 664, 1, v0 + 624);
            sub_1D22BD238(v0 + 624, &unk_1EC6E1D30);
            v313 = *(v310 + 8);
            v313(v309, v311);
            (*(v307 + 8))(v306, v308);
            (*(v305 + 8))(v392, v386);
            v24 = v397;
            __swift_destroy_boxed_opaque_existential_0(v0 + 664);
            v9 = (v313)(*(v0 + 2008), *(v0 + 1976));
          }

          else
          {
LABEL_97:
            v256 = *(v0 + 2008);
            v257 = MEMORY[0x1D389AA30]();
            LOBYTE(v256) = sub_1D22D19B8(v256, v257);

            if (v256)
            {
              v390 = *(v0 + 2528);
              v258 = *(v0 + 2504);
              v259 = *(v0 + 2496);
              v260 = *(v0 + 2040);
              v261 = *(v0 + 2024);
              v262 = *(v0 + 2016);
              v263 = *(v0 + 2008);
              v264 = *(v0 + 1984);
              v265 = *(v0 + 1976);
              *(v0 + 608) = v265;
              *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
              v266 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
              (*(v264 + 16))(v266, v263, v265);
              sub_1D267A600(v0 + 584, 1, v0 + 544);
              sub_1D22BD238(v0 + 544, &unk_1EC6E1D30);
              (*(v261 + 8))(v260, v262);
              (*(v258 + 8))(v390, v259);
              v24 = v397;
              __swift_destroy_boxed_opaque_existential_0(v0 + 584);
              v9 = (*(v264 + 8))(*(v0 + 2008), *(v0 + 1976));
            }

            else
            {
              v294 = *(v0 + 2008);
              v295 = *(v0 + 1992);
              v296 = *(v0 + 1984);
              v297 = *(v0 + 1976);
              sub_1D2871F48();
              LOBYTE(v294) = MEMORY[0x1D389AA00](v294, v295);
              v298 = *(v296 + 8);
              v298(v295, v297);
              v299 = *(v0 + 2528);
              v300 = *(v0 + 2504);
              v301 = *(v0 + 2496);
              v302 = *(v0 + 2040);
              v303 = *(v0 + 2024);
              v304 = *(v0 + 2016);
              if (v294)
              {
                *(v0 + 528) = *(v0 + 1976);
                *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310]);
                __swift_allocate_boxed_opaque_existential_1((v0 + 504));
                MEMORY[0x1D389AA70]();
                sub_1D267A600(v0 + 504, 1, v0 + 464);
                sub_1D22BD238(v0 + 464, &unk_1EC6E1D30);
                (*(v303 + 8))(v302, v304);
                (*(v300 + 8))(v299, v301);
                __swift_destroy_boxed_opaque_existential_0(v0 + 504);
              }

              else
              {
                (*(v303 + 8))(*(v0 + 2040), *(v0 + 2016));
                (*(v300 + 8))(v299, v301);
              }

              v9 = (v298)(*(v0 + 2008), *(v0 + 1976));
            }
          }

          v11 = v394;
          goto LABEL_13;
        }

        v267 = *(v0 + 2520);
        v268 = *(v0 + 2496);
        v269 = *(*(v0 + 2504) + 8);
        v269(*(v0 + 2528), v268);

        v9 = v269(v267, v268);
        v11 = v394;
      }
    }

LABEL_13:
    v21 = *(v0 + 2600) + 1;
    if (v21 == *(v0 + 2576))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_141:
  v364 = v9;
  v365 = v10;
  *(v0 + 2736) = sub_1D23C6DDC();
  *(v0 + 216) = *(v0 + 88);
  *(v0 + 232) = *(v0 + 104);
  *(v0 + 248) = *(v0 + 120);
  *(v0 + 264) = *(v0 + 136);
  v366 = swift_task_alloc();
  *(v0 + 2744) = v366;
  *v366 = v0;
  v366[1] = sub_1D265EFD8;
  v367 = *(v0 + 2080);

  return sub_1D255FA4C(v367, v364, v365, v0 + 216);
}

uint64_t sub_1D2665738(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1304) = v6;
  *(v7 + 402) = a6;
  *(v7 + 1296) = a5;
  *(v7 + 1288) = a4;
  *(v7 + 1280) = a3;
  *(v7 + 1272) = a1;
  v9 = sub_1D2872438();
  *(v7 + 1312) = v9;
  *(v7 + 1320) = *(v9 - 8);
  *(v7 + 1328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v7 + 1336) = swift_task_alloc();
  *(v7 + 1344) = swift_task_alloc();
  *(v7 + 1352) = swift_task_alloc();
  *(v7 + 1360) = swift_task_alloc();
  v10 = type metadata accessor for PlaygroundImage();
  *(v7 + 1368) = v10;
  *(v7 + 1376) = *(v10 - 8);
  *(v7 + 1384) = swift_task_alloc();
  *(v7 + 1392) = swift_task_alloc();
  *(v7 + 1400) = swift_task_alloc();
  *(v7 + 1408) = swift_task_alloc();
  v11 = sub_1D2877E58();
  *(v7 + 1416) = v11;
  *(v7 + 1424) = *(v11 - 8);
  *(v7 + 1432) = swift_task_alloc();
  *(v7 + 1440) = swift_task_alloc();
  v12 = sub_1D28721C8();
  *(v7 + 1448) = v12;
  *(v7 + 1456) = *(v12 - 8);
  *(v7 + 1464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7A0);
  *(v7 + 1472) = swift_task_alloc();
  *(v7 + 1480) = swift_task_alloc();
  *(v7 + 1488) = type metadata accessor for SketchConditioningImage();
  *(v7 + 1496) = swift_task_alloc();
  *(v7 + 1504) = type metadata accessor for SceneConditioningImage();
  *(v7 + 1512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20);
  *(v7 + 1520) = swift_task_alloc();
  v13 = sub_1D2873CB8();
  *(v7 + 1528) = v13;
  *(v7 + 1536) = *(v13 - 8);
  *(v7 + 1544) = swift_task_alloc();
  *(v7 + 1552) = swift_task_alloc();
  *(v7 + 1560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  *(v7 + 1568) = swift_task_alloc();
  *(v7 + 1576) = sub_1D28712C8();
  *(v7 + 1584) = swift_task_alloc();
  v14 = sub_1D2871318();
  *(v7 + 1592) = v14;
  *(v7 + 1600) = *(v14 - 8);
  *(v7 + 1608) = swift_task_alloc();
  *(v7 + 1616) = swift_task_alloc();
  *(v7 + 1624) = swift_task_alloc();
  v15 = sub_1D2871798();
  *(v7 + 1632) = v15;
  *(v7 + 1640) = *(v15 - 8);
  *(v7 + 1648) = swift_task_alloc();
  *(v7 + 1656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  *(v7 + 1664) = swift_task_alloc();
  *(v7 + 1672) = swift_task_alloc();
  *(v7 + 1680) = swift_task_alloc();
  *(v7 + 1688) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  *(v7 + 1696) = swift_task_alloc();
  v16 = type metadata accessor for Prompt(0);
  *(v7 + 1704) = v16;
  *(v7 + 1712) = *(v16 - 8);
  *(v7 + 1720) = swift_task_alloc();
  *(v7 + 1728) = swift_task_alloc();
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  *(v7 + 1752) = swift_task_alloc();
  *(v7 + 1760) = swift_task_alloc();
  v17 = type metadata accessor for PromptElementConceptExtractor.Concept();
  *(v7 + 1768) = v17;
  *(v7 + 1776) = *(v17 - 8);
  *(v7 + 1784) = swift_task_alloc();
  *(v7 + 1792) = swift_task_alloc();
  *(v7 + 1800) = swift_task_alloc();
  *(v7 + 1808) = swift_task_alloc();
  *(v7 + 1816) = swift_task_alloc();
  *(v7 + 1824) = swift_task_alloc();
  *(v7 + 1832) = swift_task_alloc();
  *(v7 + 1840) = swift_task_alloc();
  v18 = sub_1D2872038();
  *(v7 + 1848) = v18;
  *(v7 + 1856) = *(v18 - 8);
  *(v7 + 1864) = swift_task_alloc();
  *(v7 + 403) = *a2;
  *(v7 + 1872) = sub_1D2878568();
  *(v7 + 1880) = sub_1D2878558();
  v20 = sub_1D28784F8();
  *(v7 + 1888) = v20;
  *(v7 + 1896) = v19;

  return MEMORY[0x1EEE6DFA0](sub_1D2665EC0, v20, v19);
}

uint64_t sub_1D2665EC0()
{
  v1 = *(v0 + 1272);
  *(*(v0 + 1304) + 16) = 0;
  v2 = [v1 drawOnImageRecipe];
  *(v0 + 1904) = v2;
  if (v2)
  {
    *(v0 + 1912) = sub_1D23C7314();
    *(v0 + 1920) = sub_1D2878558();
    v3 = sub_1D28784F8();
    v5 = v4;
    *(v0 + 1928) = v3;
    *(v0 + 1936) = v4;
    v6 = sub_1D26661A8;
    v7 = v3;

    return MEMORY[0x1EEE6DFA0](v6, v7, v5);
  }

  v8 = [*(v0 + 1272) promptElements];
  sub_1D22BCFD0(0, &qword_1EC6D9418);
  v9 = sub_1D28783E8();

  if (v9 >> 62)
  {
    v10 = sub_1D2879368();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_17:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_7:
  v23 = v9;
  v24 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D23D84C4(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v6, v7, v5);
  }

  v11 = 0;
  v12 = *(v0 + 1856);
  v13 = v9;
  v14 = v24;
  v15 = v9 & 0xC000000000000001;
  do
  {
    if (v15)
    {
      MEMORY[0x1D38A1C30](v11, v13);
    }

    else
    {
      v16 = *(v13 + 8 * v11 + 32);
    }

    sub_1D2872048();
    v18 = *(v24 + 16);
    v17 = *(v24 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D23D84C4(v17 > 1, v18 + 1, 1);
      v13 = v23;
    }

    v19 = *(v0 + 1864);
    v20 = *(v0 + 1848);
    ++v11;
    *(v24 + 16) = v18 + 1;
    (*(v12 + 32))(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v19, v20);
  }

  while (v10 != v11);

LABEL_18:
  *(v0 + 1952) = *(*(v0 + 1304) + 24);
  *(v0 + 1960) = sub_1D23C719C();
  v21 = swift_task_alloc();
  *(v0 + 1968) = v21;
  *v21 = v0;
  v21[1] = sub_1D2666628;

  return sub_1D26F6410(v14);
}

uint64_t sub_1D26661A8()
{
  v1 = swift_task_alloc();
  v0[243] = v1;
  *v1 = v0;
  v1[1] = sub_1D2666248;
  v2 = v0[239];
  v3 = v0[238];

  return sub_1D2674838(v3, v2);
}

uint64_t sub_1D2666248()
{
  v1 = *v0;

  v2 = *(v1 + 1936);
  v3 = *(v1 + 1928);

  return MEMORY[0x1EEE6DFA0](sub_1D2666368, v3, v2);
}

uint64_t sub_1D2666368()
{

  sub_1D267F6F0();
  sub_1D267E8EC();

  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D26663E8, v2, v1);
}

size_t sub_1D26663E8()
{
  v1 = [*(v0 + 1272) promptElements];
  sub_1D22BCFD0(0, &qword_1EC6D9418);
  v2 = sub_1D28783E8();

  if (v2 >> 62)
  {
    v3 = sub_1D2879368();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = v2;
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D84C4(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *(v0 + 1856);
  v7 = v2;
  v8 = v17;
  v9 = v2 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      MEMORY[0x1D38A1C30](v5, v7);
    }

    else
    {
      v10 = *(v7 + 8 * v5 + 32);
    }

    sub_1D2872048();
    v12 = *(v17 + 16);
    v11 = *(v17 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D23D84C4(v11 > 1, v12 + 1, 1);
      v7 = v16;
    }

    v13 = *(v0 + 1864);
    v14 = *(v0 + 1848);
    ++v5;
    *(v17 + 16) = v12 + 1;
    (*(v6 + 32))(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v13, v14);
  }

  while (v3 != v5);

LABEL_14:
  *(v0 + 1952) = *(*(v0 + 1304) + 24);
  *(v0 + 1960) = sub_1D23C719C();
  v15 = swift_task_alloc();
  *(v0 + 1968) = v15;
  *v15 = v0;
  v15[1] = sub_1D2666628;

  return sub_1D26F6410(v8);
}

uint64_t sub_1D2666628(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1976) = v1;

  if (v1)
  {
    v5 = v4[237];
    v6 = v4[236];
    v7 = sub_1D266FB28;
  }

  else
  {

    v4[248] = a1;
    v5 = v4[237];
    v6 = v4[236];
    v7 = sub_1D2666760;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D2666760(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 1984);
  v5 = *(v3 + 1976);
  *(v3 + 2000) = v4;
  *(v3 + 404) = 0;
  *(v3 + 1992) = v5;
  v6 = *(v4 + 16);
  *(v3 + 2008) = v6;
  if (v6)
  {
    v7 = *(v3 + 1832);
    v8 = *(v3 + 1776);
    v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *(v3 + 1840);
      v13 = *(v3 + 1832);
      sub_1D2672EC0(v9, v12, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v12, v13, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = *(v3 + 1832);
      if (EnumCaseMultiPayload)
      {
        isUniquelyReferenced_nonNull_native = sub_1D2672F90(v15, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      else
      {
        v16 = *v15;
        v17 = *(v7 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674(0, *(v11 + 16) + 1, 1, v11);
          v11 = isUniquelyReferenced_nonNull_native;
        }

        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674((v18 > 1), v19 + 1, 1, v11);
          v11 = isUniquelyReferenced_nonNull_native;
        }

        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v3 + 2016) = v11;
  v21 = *(v11 + 16);
  *(v3 + 2024) = v21;
  if (v21)
  {
    *(v3 + 2032) = *MEMORY[0x1E69DB5F0];
    *(v3 + 2040) = 0;
    if (!*(v11 + 16))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, a2, a3);
    }

    v22 = *(v3 + 1696);
    v23 = *(v11 + 32);
    *(v3 + 2048) = v23;
    v24 = *(v11 + 40);
    *(v3 + 2056) = v24;
    v25 = sub_1D26552B8();
    v26 = sub_1D28785F8();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    v27 = sub_1D2878558();
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v25;
    v28[5] = v23;
    v28[6] = v24;
    v30 = sub_1D22AE630(0, 0, v22, &unk_1D2883730, v28);
    *(v3 + 2064) = v30;

    v31 = swift_task_alloc();
    *(v3 + 2072) = v31;
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
    *v31 = v3;
    v31[1] = sub_1D2668250;
    isUniquelyReferenced_nonNull_native = v3 + 1240;
LABEL_15:
    a2 = v30;

    return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, a2, a3);
  }

  v32 = *(v3 + 1280);

  v184 = v32;
  v33 = *(v32 + 32);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = *(v3 + 1712);
    v36 = v33 + 32;
    sub_1D2870F68();
    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      v38 = *(v3 + 1704);
      v39 = *(v3 + 1520);
      sub_1D22D7044(v36, v3 + 504);
      sub_1D227268C((v3 + 504), v3 + 624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      v40 = swift_dynamicCast();
      (*(v35 + 56))(v39, v40 ^ 1u, 1, v38);
      if ((*(v35 + 48))(v39, 1, v38) == 1)
      {
        sub_1D22BD238(*(v3 + 1520), &unk_1EC6E1D20);
      }

      else
      {
        sub_1D2672F28(*(v3 + 1520), *(v3 + 1744), type metadata accessor for Prompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1D27CC840(0, v37[2] + 1, 1, v37);
        }

        v42 = v37[2];
        v41 = v37[3];
        if (v42 >= v41 >> 1)
        {
          v37 = sub_1D27CC840(v41 > 1, v42 + 1, 1, v37);
        }

        v43 = *(v3 + 1744);
        v37[2] = v42 + 1;
        sub_1D2672F28(v43, v37 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v42, type metadata accessor for Prompt);
      }

      v36 += 40;
      --v34;
    }

    while (v34);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v44 = v37[2];
  v45 = MEMORY[0x1E69E7CC0];
  v185 = v37;
  if (v44)
  {
    v46 = v37;
    v47 = *(v3 + 1736);
    v48 = *(v3 + 1712);
    sub_1D23D81B8(0, v44, 0);
    v49 = v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v50 = *(v48 + 72);
    do
    {
      v51 = *(v3 + 1736);
      sub_1D2672EC0(v49, v51, type metadata accessor for Prompt);
      v53 = *(v47 + 8);
      v52 = *(v47 + 16);
      sub_1D2870F68();
      sub_1D2672F90(v51, type metadata accessor for Prompt);
      v55 = *(v45 + 16);
      v54 = *(v45 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_1D23D81B8((v54 > 1), v55 + 1, 1);
      }

      *(v45 + 16) = v55 + 1;
      v56 = v45 + 16 * v55;
      *(v56 + 32) = v53;
      *(v56 + 40) = v52;
      v49 += v50;
      --v44;
    }

    while (v44);
  }

  v57 = *(v3 + 2000);
  v58 = *(v3 + 1992);
  v59 = *(v3 + 403);
  v60 = sub_1D233C990(v45);

  *(v3 + 1264) = v60;
  sub_1D2655050(v57);
  v62 = v61;
  *(v3 + 2080) = v61;
  *(v3 + 2088) = v58;
  if (v59)
  {

    *(v3 + 2160) = sub_1D23C7858();
    v63 = swift_task_alloc();
    *(v3 + 2168) = v63;
    *v63 = v3;
    v63[1] = sub_1D266C144;

    return sub_1D26D09F4(v62);
  }

  v65 = v185[2];

  if (!v65)
  {
    v66 = *(v184 + 32);
    v67 = *(v66 + 16);
    isUniquelyReferenced_nonNull_native = sub_1D2870F68();
    if (v67)
    {
      v68 = 0;
      v69 = v66 + 32;
      while (1)
      {
        if (v68 >= *(v66 + 16))
        {
          goto LABEL_115;
        }

        sub_1D22D7044(v69, v3 + 1024);
        sub_1D22D7044(v3 + 1024, v3 + 984);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1D227268C((v3 + 1024), v3 + 544);
        isUniquelyReferenced_nonNull_native = swift_dynamicCast();
        if (isUniquelyReferenced_nonNull_native)
        {
          v82 = *(v3 + 1496);

          v83 = type metadata accessor for SketchConditioningImage;
          goto LABEL_52;
        }

        ++v68;
        v69 += 40;
        if (v67 == v68)
        {
          goto LABEL_46;
        }
      }

      v82 = *(v3 + 1512);
      __swift_destroy_boxed_opaque_existential_0(v3 + 1024);

      v83 = type metadata accessor for SceneConditioningImage;
LABEL_52:
      sub_1D2672F90(v82, v83);
      goto LABEL_53;
    }

LABEL_46:

    v70 = *(v62 + 16);
    v71 = 4;
    if (v70 < 4)
    {
      v71 = *(v62 + 16);
    }

    *(v3 + 2096) = v71;
    if (v70)
    {
      *(v3 + 2104) = *(*(v3 + 1304) + 32);
      *(v3 + 2112) = *MEMORY[0x1E69DB5F0];
      *(v3 + 2120) = 0;
      v72 = *(v3 + 2080);
      v73 = *(v3 + 1696);
      v74 = *(v72 + 32);
      *(v3 + 2128) = v74;
      v75 = *(v72 + 40);
      *(v3 + 2136) = v75;
      sub_1D2870F68();
      v76 = sub_1D26552B8();
      v77 = sub_1D28785F8();
      (*(*(v77 - 8) + 56))(v73, 1, 1, v77);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v78 = sub_1D2878558();
      v79 = swift_allocObject();
      v80 = MEMORY[0x1E69E85E0];
      v79[2] = v78;
      v79[3] = v80;
      v79[4] = v76;
      v79[5] = v74;
      v79[6] = v75;
      v30 = sub_1D22AE630(0, 0, v73, &unk_1D289B1B0, v79);
      *(v3 + 2144) = v30;

      v81 = swift_task_alloc();
      *(v3 + 2152) = v81;
      a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      *v81 = v3;
      v81[1] = sub_1D266A65C;
      isUniquelyReferenced_nonNull_native = v3 + 1208;
      goto LABEL_15;
    }
  }

LABEL_53:
  v84 = *(v3 + 2080);
  *(v3 + 928) = type metadata accessor for ImageConditioningSuggestionsFetcher();
  *(v3 + 936) = &off_1F4DC65D0;
  *(v3 + 904) = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1((v3 + 904), *(v3 + 928)) + 32) = v84;

  __swift_destroy_boxed_opaque_existential_0(v3 + 904);
  v186 = *(v3 + 2008);
  if (v186)
  {
    v85 = 0;
    v86 = *(v3 + 1776);
    v87 = *(v3 + 1456);
    v88 = *(v3 + 2000) + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v89 = *(v86 + 72);
    v90 = (v87 + 32);
    v91 = MEMORY[0x1E69E7CC0];
    do
    {
      v92 = *(v3 + 1824);
      v93 = *(v3 + 1808);
      sub_1D2672EC0(v88, v92, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v92, v93, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v94 = *v90;
        (*v90)(*(v3 + 1464), *(v3 + 1808), *(v3 + 1448));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1D27CD8F8(0, *(v91 + 2) + 1, 1, v91);
        }

        v96 = *(v91 + 2);
        v95 = *(v91 + 3);
        if (v96 >= v95 >> 1)
        {
          v91 = sub_1D27CD8F8(v95 > 1, v96 + 1, 1, v91);
        }

        v97 = *(v3 + 1464);
        v98 = *(v3 + 1448);
        *(v91 + 2) = v96 + 1;
        v94(&v91[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v96], v97, v98);
      }

      else
      {
        sub_1D2672F90(*(v3 + 1808), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v85;
      v88 += v89;
    }

    while (v85 != *(v3 + 2008));
  }

  v99 = sub_1D23C6DDC();
  *(v3 + 1232) = v99;
  v100 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval();
  v100();

  if (v186)
  {
    v101 = 0;
    v102 = *(v3 + 1776);
    v103 = *(v3 + 1424);
    v104 = *(v3 + 2000) + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v105 = *(v102 + 72);
    v106 = (v103 + 32);
    v107 = MEMORY[0x1E69E7CC0];
    do
    {
      v108 = *(v3 + 1816);
      v109 = *(v3 + 1800);
      sub_1D2672EC0(v104, v108, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v108, v109, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v110 = *v106;
        (*v106)(*(v3 + 1440), *(v3 + 1800), *(v3 + 1416));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1D27CD8D0(0, *(v107 + 2) + 1, 1, v107);
        }

        v112 = *(v107 + 2);
        v111 = *(v107 + 3);
        if (v112 >= v111 >> 1)
        {
          v107 = sub_1D27CD8D0(v111 > 1, v112 + 1, 1, v107);
        }

        v113 = *(v3 + 1440);
        v114 = *(v3 + 1416);
        *(v107 + 2) = v112 + 1;
        v110(&v107[((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v112], v113, v114);
      }

      else
      {
        sub_1D2672F90(*(v3 + 1800), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v101;
      v104 += v105;
    }

    while (v101 != *(v3 + 2008));
  }

  else
  {
    v107 = MEMORY[0x1E69E7CC0];
  }

  if (*(v107 + 2))
  {
    (*(*(v3 + 1424) + 16))(*(v3 + 1480), &v107[(*(*(v3 + 1424) + 80) + 32) & ~*(*(v3 + 1424) + 80)], *(v3 + 1416));
    v115 = 0;
  }

  else
  {
    v115 = 1;
  }

  v116 = *(v3 + 1480);
  v117 = *(v3 + 1472);
  v118 = *(v3 + 1424);
  v119 = *(v3 + 1416);

  (*(v118 + 56))(v116, v115, 1, v119);
  sub_1D22BD1D0(v116, v117, &qword_1EC6DF7A0);
  if ((*(v118 + 48))(v117, 1, v119) == 1)
  {
    sub_1D22BD238(*(v3 + 1472), &qword_1EC6DF7A0);
    v120 = [*(v3 + 1272) additionalMetadata];
    if (v120)
    {
      v121 = *(v3 + 2088);
      v122 = v120;
      v123 = sub_1D28716E8();
      v125 = v124;

      *(v3 + 2256) = v123;
      *(v3 + 2264) = v125;
      v126 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v123, v125);
      v127 = sub_1D28716D8();
      *(v3 + 2272) = [v126 initWithUnderlyingData_];

      sub_1D22D6D60(v123, v125);
      sub_1D2878C38();
      if (!v121)
      {
        v141 = swift_task_alloc();
        *(v3 + 2280) = v141;
        *v141 = v3;
        v141[1] = sub_1D266E964;
        v142 = *(v3 + 1328);
        v143 = *(v3 + 402);
        v144 = *(v3 + 1296);
        v145 = *(v3 + 1288);
        v146 = *(v3 + 1280);

        return sub_1D2655328(v142, v146, v145, v144, v143);
      }

      *(v3 + 1216) = v121;
      v128 = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v129 = *(v3 + 2272);
        v130 = *(v3 + 2264);
        v131 = *(v3 + 2256);
        v132 = *(v3 + 1480);

        v133 = *(v3 + 1096);
        v134 = *(v3 + 1104);
        sub_1D2672E0C();
        swift_allocError();
        *v135 = v133;
        v135[1] = v134;
        swift_willThrow();

        sub_1D22D6D60(v131, v130);
        sub_1D22BD238(v132, &qword_1EC6DF7A0);

        v136 = *(v3 + 8);
LABEL_108:

        return v136();
      }

      sub_1D2872658();
      v147 = v121;
      v148 = sub_1D2873CA8();
      v149 = sub_1D2878A18();

      v150 = os_log_type_enabled(v148, v149);
      v151 = *(v3 + 2272);
      v152 = *(v3 + 2264);
      v153 = *(v3 + 2256);
      if (v150)
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *v154 = 138412290;
        v156 = v121;
        v157 = _swift_stdlib_bridgeErrorToNSError();
        *(v154 + 4) = v157;
        *v155 = v157;
        _os_log_impl(&dword_1D226E000, v148, v149, "Cannot parse recipe data wrapper to recipe with error: %@", v154, 0xCu);
        sub_1D22BD238(v155, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v155, -1, -1);
        MEMORY[0x1D38A3520](v154, -1, -1);

        sub_1D22D6D60(v153, v152);
      }

      else
      {
        sub_1D22D6D60(*(v3 + 2256), *(v3 + 2264));
      }

      (*(*(v3 + 1536) + 8))(*(v3 + 1544), *(v3 + 1528));
    }

    *(v3 + 405) = 0;
    if (*(v3 + 2008))
    {
      v158 = 0;
      v159 = *(v3 + 1776);
      v160 = *(v3 + 1376);
      v161 = *(v3 + 2000) + ((*(v159 + 80) + 32) & ~*(v159 + 80));
      v162 = *(v159 + 72);
      v163 = MEMORY[0x1E69E7CC0];
      do
      {
        v164 = *(v3 + 1792);
        v165 = *(v3 + 1784);
        sub_1D2672EC0(v161, v164, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v164, v165, type metadata accessor for PromptElementConceptExtractor.Concept);
        v166 = swift_getEnumCaseMultiPayload();
        v167 = *(v3 + 1784);
        if (v166 == 5)
        {
          sub_1D2672F28(v167, *(v3 + 1392), type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = sub_1D27CD8A8(0, v163[2] + 1, 1, v163);
          }

          v169 = v163[2];
          v168 = v163[3];
          if (v169 >= v168 >> 1)
          {
            v163 = sub_1D27CD8A8(v168 > 1, v169 + 1, 1, v163);
          }

          v170 = *(v3 + 1392);
          v163[2] = v169 + 1;
          sub_1D2672F28(v170, v163 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v169, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v167, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v158;
        v161 += v162;
      }

      while (v158 != *(v3 + 2008));
    }

    else
    {
      v163 = MEMORY[0x1E69E7CC0];
    }

    if (v163[2])
    {
      v171 = *(*(v3 + 1376) + 80);
      sub_1D2672EC0(v163 + ((v171 + 32) & ~v171), *(v3 + 1344), type metadata accessor for PlaygroundImage);
      v172 = 0;
    }

    else
    {
      v172 = 1;
    }

    v173 = *(v3 + 1376);
    v174 = *(v3 + 1368);
    v175 = *(v3 + 1344);
    v176 = *(v3 + 1336);

    (*(v173 + 56))(v175, v172, 1, v174);
    sub_1D22BD1D0(v175, v176, &unk_1EC6DE5A0);
    if ((*(v173 + 48))(v176, 1, v174) == 1)
    {
      v177 = *(v3 + 1480);
      v178 = *(v3 + 1344);
      v179 = *(v3 + 1336);

      sub_1D22BD238(v178, &unk_1EC6DE5A0);
      sub_1D22BD238(v177, &qword_1EC6DF7A0);
      sub_1D22BD238(v179, &unk_1EC6DE5A0);
      v180 = *(v3 + 405);
      v181 = *(v3 + 1304);
      *(v181 + 16) = *(v3 + 404);
      *(v181 + 17) = v180;

      v136 = *(v3 + 8);
      goto LABEL_108;
    }

    sub_1D2672F28(*(v3 + 1336), *(v3 + 1384), type metadata accessor for PlaygroundImage);
    *(v3 + 2296) = sub_1D23C7314();
    *(v3 + 2304) = sub_1D2878558();
    v182 = swift_task_alloc();
    *(v3 + 2312) = v182;
    *v182 = v3;
    v182[1] = sub_1D266F178;
    v183 = *(v3 + 1384);

    return sub_1D28421E4(v3 + 352, v183, 1);
  }

  else
  {
    (*(*(v3 + 1424) + 32))(*(v3 + 1432), *(v3 + 1472), *(v3 + 1416));
    sub_1D2877E48();
    v137 = sub_1D2877E38();
    *(v3 + 2184) = v137;
    v138 = v137;
    v139 = swift_task_alloc();
    *(v3 + 2192) = v139;
    *v139 = v3;
    v139[1] = sub_1D266D468;
    v140 = *(v3 + 1360);

    return sub_1D26722CC(v140, v138, 1);
  }
}

uint64_t sub_1D2668250()
{
  v1 = *v0;

  v2 = *(v1 + 1896);
  v3 = *(v1 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D2668394, v3, v2);
}

uint64_t sub_1D2668394()
{
  v1 = v0[211];
  v2 = v0[210];
  v3 = v0[200];
  v4 = v0[199];
  v5 = v0[155];
  (*(v3 + 56))(v1, 1, 1, v4);
  sub_1D2871778();
  sub_1D22BD1D0(v1, v2, &unk_1EC6E1D40);
  v6 = (*(v3 + 48))(v2, 1, v4);
  v7 = v0[210];
  v250 = v5;
  if (v6 == 1)
  {
    sub_1D22BD238(v7, &unk_1EC6E1D40);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v8 = v0[257];
    v9 = v0[256];
    v10 = v0[219];
    *(v10 + 24) = sub_1D24B63AC(qword_1ED8B0010, v9, v8);
    *(v10 + 32) = v11 & 1;
    v12 = sub_1D27E1420(v9, v8);
    v14 = v13;
  }

  else
  {
    (*(v0[200] + 32))(v0[203], v7, v0[199]);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v247 = v0[254];
    v15 = v0[203];
    v16 = v0[202];
    v17 = v0[200];
    v18 = v0[199];
    v19 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
    v0[145] = sub_1D28782D8();
    v0[146] = v20;
    v0[147] = 12369903;
    v0[148] = 0xA300000000000000;
    v0[149] = 0;
    v0[150] = 0xE000000000000000;
    v243 = sub_1D22BD06C();
    v242 = MEMORY[0x1E69E6158];
    v21 = sub_1D2878FA8();
    v23 = v22;

    v24 = sub_1D24B63AC(v19, v21, v23);
    v26 = v25;

    v0[157] = v24;
    sub_1D22BCFD0(0, &qword_1ED89CD40);
    (*(v17 + 16))(v16, v15, v18);
    v27 = sub_1D2878AE8();
    v28 = [v27 length];
    v29 = swift_allocObject();
    *(v29 + 16) = v0 + 157;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D26730DC;
    *(v30 + 24) = v29;
    v0[55] = sub_1D26730D0;
    v0[56] = v30;
    v0[51] = MEMORY[0x1E69E9820];
    v0[52] = 1107296256;
    v0[53] = sub_1D267502C;
    v0[54] = &block_descriptor_49;
    v31 = _Block_copy(v0 + 51);
    sub_1D2870F78();

    [v27 enumerateAttribute:v247 inRange:0 options:v28 usingBlock:{0, v31}];

    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
      goto LABEL_121;
    }

    v35 = v0[219];
    v36 = v0[203];
    v37 = v0[200];
    v38 = v0[199];
    v39 = v0[157];

    *(v35 + 24) = v39;
    *(v35 + 32) = v26 & 1;
    v40 = sub_1D27E0DA0();
    v12 = sub_1D27E1420(v40, v41);
    v14 = v42;

    (*(v37 + 8))(v36, v38);
  }

  v248 = v0[220];
  v43 = v0[219];
  v44 = v0[213];
  v244 = v0[211];
  v45 = v0[207];
  v46 = v0[205];
  v47 = v0[204];
  v245 = *(v0 + 402);
  v43[1] = v12;
  v43[2] = v14;
  v43[5] = v250;
  (*(v46 + 16))(v43 + *(v44 + 36), v45, v47);
  *(v43 + *(v44 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  *(v0 + 13) = v254;
  *(v0 + 15) = v255;
  *(v0 + 17) = v256;
  v0[19] = v257;
  *(v0 + 11) = v252;
  v48 = sub_1D2879818();
  (*(v46 + 8))(v45, v47);
  sub_1D22BD238(v244, &unk_1EC6E1D40);
  *v43 = v48;
  sub_1D2672F28(v43, v248, type metadata accessor for Prompt);
  v251 = v0;
  if (v245 == 1)
  {
    v49 = v0 + 133;
    sub_1D2680C6C(v0[220], v0 + 28);
    v50 = *(v0 + 17);
    *(v0 + 20) = *(v0 + 16);
    *(v0 + 21) = v50;
    v51 = *(v0 + 15);
    v52 = *(v0 + 16);
    *(v0 + 18) = *(v0 + 14);
    *(v0 + 19) = v51;
    v54 = v0[36];
    v53 = v0[37];
    v55 = v0;
    v57 = v0[38];
    v56 = v0[39];
    v58 = *(v55 + 17);
    *v49 = v52;
    v49[1] = v58;
    if (v56)
    {
      v59 = v55[196];
      v60 = sub_1D23C6DDC();
      v55[20] = v54;
      v55[21] = v53;
      v55[22] = v57;
      v55[23] = v56;
      v61 = v49[1];
      *(v55 + 12) = *v49;
      *(v55 + 13) = v61;
      sub_1D255AC68(v55 + 10, v59);

      v62 = type metadata accessor for PhotosPersonAsset();
      if ((*(*(v62 - 8) + 48))(v59, 1, v62) != 1)
      {
        v130 = v55[196];

        sub_1D22BD238(v130, &unk_1EC6DDDC0);
        sub_1D2870F68();
        sub_1D22BD238((v55 + 36), &qword_1EC6DF7A8);
        sub_1D2872658();
        v131 = sub_1D2873CA8();
        v132 = sub_1D28789F8();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_1D226E000, v131, v132, "Blocking name to photo substitution when loading context from GPRecipe", v133, 2u);
          MEMORY[0x1D38A3520](v133, -1, -1);
        }

        v134 = v55[220];
        v135 = v55[195];
        v136 = v251[192];
        v137 = v251[191];

        (*(v136 + 8))(v135, v137);
        v138 = v251;
        sub_1D2672E0C();
        swift_allocError();
        *v139 = v54;
        v139[1] = v53;
        swift_willThrow();
        sub_1D2672F90(v134, type metadata accessor for Prompt);
        goto LABEL_55;
      }

      v63 = v55[196];
      sub_1D22BD238((v55 + 36), &qword_1EC6DF7A8);
      sub_1D22BD238(v63, &unk_1EC6DDDC0);
    }

    v0 = v55;
  }

  v64 = v0[253];
  v65 = v0[220];
  v66 = v0[255] + 1;
  v0[91] = v0[213];
  v0[92] = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 88);
  sub_1D2672EC0(v65, boxed_opaque_existential_1, type metadata accessor for Prompt);
  sub_1D267A600((v0 + 88), 1, (v0 + 118));
  sub_1D22BD238((v0 + 118), &unk_1EC6E1D30);
  sub_1D2672F90(v65, type metadata accessor for Prompt);
  v32 = __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  if (v66 != v64)
  {
    v80 = v0[255] + 1;
    v0[255] = v80;
    v81 = v0[252];
    if (v80 < *(v81 + 16))
    {
      v82 = v0[212];
      v83 = v81 + 16 * v80;
      v84 = *(v83 + 32);
      v0[256] = v84;
      v85 = *(v83 + 40);
      v0[257] = v85;
      v86 = sub_1D26552B8();
      v87 = sub_1D28785F8();
      (*(*(v87 - 8) + 56))(v82, 1, 1, v87);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v88 = sub_1D2878558();
      v89 = swift_allocObject();
      v90 = MEMORY[0x1E69E85E0];
      v89[2] = v88;
      v89[3] = v90;
      v89[4] = v86;
      v89[5] = v84;
      v89[6] = v85;
      v91 = sub_1D22AE630(0, 0, v82, &unk_1D2883730, v89);
      v0[258] = v91;

      v92 = swift_task_alloc();
      v0[259] = v92;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      *v92 = v0;
      v92[1] = sub_1D2668250;
      v32 = (v0 + 155);
      goto LABEL_27;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    return MEMORY[0x1EEE6DA40](v32, v33, v34);
  }

  v68 = v0[160];

  v246 = v68;
  v69 = *(v68 + 32);
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = v0[214];
    v72 = v69 + 32;
    sub_1D2870F68();
    v73 = MEMORY[0x1E69E7CC0];
    do
    {
      v74 = v251[213];
      v75 = v251[190];
      sub_1D22D7044(v72, (v251 + 63));
      sub_1D227268C((v251 + 63), (v251 + 78));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      v76 = swift_dynamicCast();
      (*(v71 + 56))(v75, v76 ^ 1u, 1, v74);
      if ((*(v71 + 48))(v75, 1, v74) == 1)
      {
        sub_1D22BD238(v251[190], &unk_1EC6E1D20);
      }

      else
      {
        sub_1D2672F28(v251[190], v251[218], type metadata accessor for Prompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1D27CC840(0, v73[2] + 1, 1, v73);
        }

        v78 = v73[2];
        v77 = v73[3];
        if (v78 >= v77 >> 1)
        {
          v73 = sub_1D27CC840(v77 > 1, v78 + 1, 1, v73);
        }

        v79 = v251[218];
        v73[2] = v78 + 1;
        sub_1D2672F28(v79, v73 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v78, type metadata accessor for Prompt);
      }

      v72 += 40;
      --v70;
    }

    while (v70);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v93 = v73[2];
  v94 = MEMORY[0x1E69E7CC0];
  if (v93)
  {
    v95 = v251[217];
    v96 = v251[214];
    v253 = MEMORY[0x1E69E7CC0];
    sub_1D23D81B8(0, v93, 0);
    v94 = v253;
    v97 = v73 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v98 = *(v96 + 72);
    do
    {
      v99 = v251[217];
      sub_1D2672EC0(v97, v99, type metadata accessor for Prompt);
      v101 = *(v95 + 8);
      v100 = *(v95 + 16);
      sub_1D2870F68();
      sub_1D2672F90(v99, type metadata accessor for Prompt);
      v103 = *(v253 + 16);
      v102 = *(v253 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_1D23D81B8((v102 > 1), v103 + 1, 1);
      }

      *(v253 + 16) = v103 + 1;
      v104 = v253 + 16 * v103;
      *(v104 + 32) = v101;
      *(v104 + 40) = v100;
      v97 += v98;
      --v93;
    }

    while (v93);
  }

  v105 = v251[250];
  v106 = v251[249];
  v107 = *(v251 + 403);
  v108 = sub_1D233C990(v94);

  v251[158] = v108;
  sub_1D2655050(v105);
  v110 = v109;
  v251[260] = v109;
  v251[261] = v106;
  if (v107)
  {

    v251[270] = sub_1D23C7858();
    v111 = swift_task_alloc();
    v251[271] = v111;
    *v111 = v251;
    v111[1] = sub_1D266C144;

    return sub_1D26D09F4(v110);
  }

  v113 = v73[2];

  if (!v113)
  {
    v114 = *(v246 + 32);
    v115 = *(v114 + 16);
    v32 = sub_1D2870F68();
    if (v115)
    {
      v116 = 0;
      v117 = v114 + 32;
      while (1)
      {
        if (v116 >= *(v114 + 16))
        {
          goto LABEL_122;
        }

        sub_1D22D7044(v117, (v251 + 128));
        sub_1D22D7044((v251 + 128), (v251 + 123));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1D227268C(v251 + 64, (v251 + 68));
        v32 = swift_dynamicCast();
        if (v32)
        {
          v141 = v251[187];

          v142 = type metadata accessor for SketchConditioningImage;
          goto LABEL_61;
        }

        ++v116;
        v117 += 40;
        if (v115 == v116)
        {
          goto LABEL_48;
        }
      }

      v141 = v251[189];
      __swift_destroy_boxed_opaque_existential_0((v251 + 128));

      v142 = type metadata accessor for SceneConditioningImage;
LABEL_61:
      sub_1D2672F90(v141, v142);
      goto LABEL_62;
    }

LABEL_48:

    v118 = *(v110 + 16);
    v119 = 4;
    if (v118 < 4)
    {
      v119 = *(v110 + 16);
    }

    v251[262] = v119;
    if (v118)
    {
      v251[263] = *(v251[163] + 32);
      v251[264] = *MEMORY[0x1E69DB5F0];
      v251[265] = 0;
      v120 = v251[260];
      v121 = v251[212];
      v122 = *(v120 + 32);
      v251[266] = v122;
      v123 = *(v120 + 40);
      v251[267] = v123;
      sub_1D2870F68();
      v124 = sub_1D26552B8();
      v125 = sub_1D28785F8();
      (*(*(v125 - 8) + 56))(v121, 1, 1, v125);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v126 = sub_1D2878558();
      v127 = swift_allocObject();
      v128 = MEMORY[0x1E69E85E0];
      v127[2] = v126;
      v127[3] = v128;
      v127[4] = v124;
      v127[5] = v122;
      v127[6] = v123;
      v91 = sub_1D22AE630(0, 0, v121, &unk_1D289B1B0, v127);
      v251[268] = v91;

      v129 = swift_task_alloc();
      v251[269] = v129;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      *v129 = v251;
      v129[1] = sub_1D266A65C;
      v32 = (v251 + 151);
LABEL_27:
      v33 = v91;

      return MEMORY[0x1EEE6DA40](v32, v33, v34);
    }
  }

LABEL_62:
  v143 = v251[260];
  v251[116] = type metadata accessor for ImageConditioningSuggestionsFetcher();
  v251[117] = &off_1F4DC65D0;
  v251[113] = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1(v251 + 113, v251[116]) + 32) = v143;

  __swift_destroy_boxed_opaque_existential_0((v251 + 113));
  v249 = v251[251];
  if (v249)
  {
    v144 = 0;
    v145 = v251[222];
    v146 = v251[182];
    v147 = v251[250] + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v148 = *(v145 + 72);
    v149 = (v146 + 32);
    v150 = MEMORY[0x1E69E7CC0];
    do
    {
      v151 = v251[228];
      v152 = v251[226];
      sub_1D2672EC0(v147, v151, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v151, v152, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v153 = *v149;
        (*v149)(v251[183], v251[226], v251[181]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_1D27CD8F8(0, *(v150 + 2) + 1, 1, v150);
        }

        v155 = *(v150 + 2);
        v154 = *(v150 + 3);
        if (v155 >= v154 >> 1)
        {
          v150 = sub_1D27CD8F8(v154 > 1, v155 + 1, 1, v150);
        }

        v156 = v251[183];
        v157 = v251[181];
        *(v150 + 2) = v155 + 1;
        v153(&v150[((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v155], v156, v157);
      }

      else
      {
        sub_1D2672F90(v251[226], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v144;
      v147 += v148;
    }

    while (v144 != v251[251]);
  }

  v158 = sub_1D23C6DDC();
  v251[154] = v158;
  v159 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval();
  v159();

  if (v249)
  {
    v160 = 0;
    v161 = v251[222];
    v162 = v251[178];
    v163 = v251[250] + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v164 = *(v161 + 72);
    v165 = (v162 + 32);
    v166 = MEMORY[0x1E69E7CC0];
    do
    {
      v167 = v251[227];
      v168 = v251[225];
      sub_1D2672EC0(v163, v167, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v167, v168, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v169 = *v165;
        (*v165)(v251[180], v251[225], v251[177]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = sub_1D27CD8D0(0, *(v166 + 2) + 1, 1, v166);
        }

        v171 = *(v166 + 2);
        v170 = *(v166 + 3);
        if (v171 >= v170 >> 1)
        {
          v166 = sub_1D27CD8D0(v170 > 1, v171 + 1, 1, v166);
        }

        v172 = v251[180];
        v173 = v251[177];
        *(v166 + 2) = v171 + 1;
        v169(&v166[((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v171], v172, v173);
      }

      else
      {
        sub_1D2672F90(v251[225], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v160;
      v163 += v164;
    }

    while (v160 != v251[251]);
  }

  else
  {
    v166 = MEMORY[0x1E69E7CC0];
  }

  if (*(v166 + 2))
  {
    (*(v251[178] + 16))(v251[185], &v166[(*(v251[178] + 80) + 32) & ~*(v251[178] + 80)], v251[177]);
    v174 = 0;
  }

  else
  {
    v174 = 1;
  }

  v175 = v251[185];
  v176 = v251[184];
  v177 = v251[178];
  v178 = v251[177];

  (*(v177 + 56))(v175, v174, 1, v178);
  sub_1D22BD1D0(v175, v176, &qword_1EC6DF7A0);
  if ((*(v177 + 48))(v176, 1, v178) == 1)
  {
    sub_1D22BD238(v251[184], &qword_1EC6DF7A0);
    v179 = [v251[159] additionalMetadata];
    if (v179)
    {
      v180 = v251[261];
      v181 = v179;
      v182 = sub_1D28716E8();
      v184 = v183;

      v251[282] = v182;
      v251[283] = v184;
      v185 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v182, v184);
      v186 = sub_1D28716D8();
      v251[284] = [v185 initWithUnderlyingData_];

      sub_1D22D6D60(v182, v184);
      sub_1D2878C38();
      if (!v180)
      {
        v199 = swift_task_alloc();
        v251[285] = v199;
        *v199 = v251;
        v199[1] = sub_1D266E964;
        v200 = v251[166];
        v201 = *(v251 + 402);
        v202 = v251[162];
        v203 = v251[161];
        v204 = v251[160];

        return sub_1D2655328(v200, v204, v203, v202, v201);
      }

      v251[152] = v180;
      v187 = v180;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v188 = v251[284];
        v189 = v251[283];
        v190 = v251[282];
        v191 = v251[185];

        v192 = v251[137];
        v193 = v251[138];
        sub_1D2672E0C();
        swift_allocError();
        *v194 = v192;
        v194[1] = v193;
        swift_willThrow();

        v138 = v251;
        sub_1D22D6D60(v190, v189);
        sub_1D22BD238(v191, &qword_1EC6DF7A0);

LABEL_55:

        v140 = v138[1];
LABEL_56:

        return v140();
      }

      sub_1D2872658();
      v205 = v180;
      v206 = sub_1D2873CA8();
      v207 = sub_1D2878A18();

      v208 = os_log_type_enabled(v206, v207);
      v209 = v251[284];
      v210 = v251[283];
      v211 = v251[282];
      if (v208)
      {
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        *v212 = 138412290;
        v214 = v180;
        v215 = _swift_stdlib_bridgeErrorToNSError();
        *(v212 + 4) = v215;
        *v213 = v215;
        _os_log_impl(&dword_1D226E000, v206, v207, "Cannot parse recipe data wrapper to recipe with error: %@", v212, 0xCu);
        sub_1D22BD238(v213, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v213, -1, -1);
        MEMORY[0x1D38A3520](v212, -1, -1);

        sub_1D22D6D60(v211, v210);
      }

      else
      {
        sub_1D22D6D60(v251[282], v251[283]);
      }

      (*(v251[192] + 8))(v251[193], v251[191]);
    }

    *(v251 + 405) = 0;
    if (v251[251])
    {
      v216 = 0;
      v217 = v251[222];
      v218 = v251[172];
      v219 = v251[250] + ((*(v217 + 80) + 32) & ~*(v217 + 80));
      v220 = *(v217 + 72);
      v221 = MEMORY[0x1E69E7CC0];
      do
      {
        v222 = v251[224];
        v223 = v251[223];
        sub_1D2672EC0(v219, v222, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v222, v223, type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v225 = v251[223];
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2672F28(v225, v251[174], type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v221 = sub_1D27CD8A8(0, v221[2] + 1, 1, v221);
          }

          v227 = v221[2];
          v226 = v221[3];
          if (v227 >= v226 >> 1)
          {
            v221 = sub_1D27CD8A8(v226 > 1, v227 + 1, 1, v221);
          }

          v228 = v251[174];
          v221[2] = v227 + 1;
          sub_1D2672F28(v228, v221 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v227, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v225, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v216;
        v219 += v220;
      }

      while (v216 != v251[251]);
    }

    else
    {
      v221 = MEMORY[0x1E69E7CC0];
    }

    if (v221[2])
    {
      v229 = *(v251[172] + 80);
      sub_1D2672EC0(v221 + ((v229 + 32) & ~v229), v251[168], type metadata accessor for PlaygroundImage);
      v230 = 0;
    }

    else
    {
      v230 = 1;
    }

    v231 = v251[172];
    v232 = v251[171];
    v233 = v251[168];
    v234 = v251[167];

    (*(v231 + 56))(v233, v230, 1, v232);
    sub_1D22BD1D0(v233, v234, &unk_1EC6DE5A0);
    if ((*(v231 + 48))(v234, 1, v232) == 1)
    {
      v235 = v251[185];
      v236 = v251[168];
      v237 = v251[167];

      sub_1D22BD238(v236, &unk_1EC6DE5A0);
      sub_1D22BD238(v235, &qword_1EC6DF7A0);
      sub_1D22BD238(v237, &unk_1EC6DE5A0);
      v238 = *(v251 + 405);
      v239 = v251[163];
      *(v239 + 16) = *(v251 + 404);
      *(v239 + 17) = v238;

      v140 = v251[1];
      goto LABEL_56;
    }

    sub_1D2672F28(v251[167], v251[173], type metadata accessor for PlaygroundImage);
    v251[287] = sub_1D23C7314();
    v251[288] = sub_1D2878558();
    v240 = swift_task_alloc();
    v251[289] = v240;
    *v240 = v251;
    v240[1] = sub_1D266F178;
    v241 = v251[173];

    return sub_1D28421E4((v251 + 44), v241, 1);
  }

  else
  {
    (*(v251[178] + 32))(v251[179], v251[184], v251[177]);
    sub_1D2877E48();
    v195 = sub_1D2877E38();
    v251[273] = v195;
    v196 = v195;
    v197 = swift_task_alloc();
    v251[274] = v197;
    *v197 = v251;
    v197[1] = sub_1D266D468;
    v198 = v251[170];

    return sub_1D26722CC(v198, v196, 1);
  }
}

uint64_t sub_1D266A65C()
{
  v1 = *v0;

  v2 = *(v1 + 1896);
  v3 = *(v1 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266A7A0, v3, v2);
}

uint64_t sub_1D266A7A0()
{
  v1 = v0[209];
  v2 = v0[208];
  v3 = v0[200];
  v4 = v0[199];
  v5 = v0[151];
  (*(v3 + 56))(v1, 1, 1, v4);
  sub_1D2871778();
  sub_1D22BD1D0(v1, v2, &unk_1EC6E1D40);
  v6 = (*(v3 + 48))(v2, 1, v4);
  v7 = v0[208];
  v170 = v5;
  if (v6 == 1)
  {
    sub_1D22BD238(v7, &unk_1EC6E1D40);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v8 = v0[267];
    v9 = v0[266];
    v10 = v0[215];
    *(v10 + 24) = sub_1D24B63AC(qword_1ED8B0010, v9, v8);
    *(v10 + 32) = v11 & 1;
    v12 = sub_1D27E1420(v9, v8);
    v14 = v13;
  }

  else
  {
    (*(v0[200] + 32))(v0[201], v7, v0[199]);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v168 = v0[264];
    v15 = v0[202];
    v16 = v0[201];
    v17 = v0[200];
    v18 = v0[199];
    v19 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678]);
    v0[139] = sub_1D28782D8();
    v0[140] = v20;
    v0[141] = 12369903;
    v0[142] = 0xA300000000000000;
    v0[143] = 0;
    v0[144] = 0xE000000000000000;
    v164 = sub_1D22BD06C();
    v163 = MEMORY[0x1E69E6158];
    v21 = sub_1D2878FA8();
    v23 = v22;

    v24 = sub_1D24B63AC(v19, v21, v23);
    v26 = v25;

    v0[153] = v24;
    sub_1D22BCFD0(0, &qword_1ED89CD40);
    (*(v17 + 16))(v15, v16, v18);
    v27 = sub_1D2878AE8();
    v28 = [v27 length];
    v29 = swift_allocObject();
    *(v29 + 16) = v0 + 153;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D26730DC;
    *(v30 + 24) = v29;
    v0[61] = sub_1D26730D0;
    v0[62] = v30;
    v0[57] = MEMORY[0x1E69E9820];
    v0[58] = 1107296256;
    v0[59] = sub_1D267502C;
    v0[60] = &block_descriptor_38;
    v31 = _Block_copy(v0 + 57);
    sub_1D2870F78();

    [v27 enumerateAttribute:v168 inRange:0 options:v28 usingBlock:{0, v31}];

    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA40](v32, v33, v34);
    }

    v35 = v0[215];
    v36 = v0[201];
    v37 = v0[200];
    v38 = v0[199];
    v39 = v0[153];

    *(v35 + 24) = v39;
    *(v35 + 32) = v26 & 1;
    v40 = sub_1D27E0DA0();
    v12 = sub_1D27E1420(v40, v41);
    v14 = v42;

    (*(v37 + 8))(v36, v38);
  }

  v166 = v0[216];
  v43 = v0[215];
  v44 = v0[213];
  v165 = v0[209];
  v45 = v0[206];
  v46 = v0[205];
  v47 = v0[204];
  v167 = v0[265] + 1;
  v169 = v0[262];
  v43[1] = v12;
  v43[2] = v14;
  v43[5] = v170;
  (*(v46 + 16))(v43 + *(v44 + 36), v45, v47);
  *(v43 + *(v44 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  *(v0 + 3) = v174;
  *(v0 + 4) = v175;
  v0[10] = v176;
  *(v0 + 1) = v172;
  *(v0 + 2) = v173;
  v48 = sub_1D2879818();
  (*(v46 + 8))(v45, v47);
  sub_1D22BD238(v165, &unk_1EC6E1D40);
  *v43 = v48;
  sub_1D2672F28(v43, v166, type metadata accessor for Prompt);
  v0[106] = v44;
  v0[107] = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 103);
  sub_1D2672EC0(v166, boxed_opaque_existential_1, type metadata accessor for Prompt);
  sub_1D267A600((v0 + 103), 1, (v0 + 108));
  sub_1D22BD238((v0 + 108), &unk_1EC6E1D30);
  sub_1D2672F90(v166, type metadata accessor for Prompt);
  __swift_destroy_boxed_opaque_existential_0((v0 + 103));
  if (v167 != v169)
  {
    v65 = v0[265] + 1;
    v0[265] = v65;
    v66 = v0[212];
    v67 = v0[260] + 16 * v65;
    v68 = *(v67 + 32);
    v0[266] = v68;
    v69 = *(v67 + 40);
    v0[267] = v69;
    v70 = sub_1D26552B8();
    v71 = sub_1D28785F8();
    (*(*(v71 - 8) + 56))(v66, 1, 1, v71);
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    v72 = sub_1D2878558();
    v73 = swift_allocObject();
    v74 = MEMORY[0x1E69E85E0];
    v73[2] = v72;
    v73[3] = v74;
    v73[4] = v70;
    v73[5] = v68;
    v73[6] = v69;
    v75 = sub_1D22AE630(0, 0, v66, &unk_1D289B1B0, v73);
    v0[268] = v75;

    v76 = swift_task_alloc();
    v0[269] = v76;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
    *v76 = v0;
    v76[1] = sub_1D266A65C;
    v32 = (v0 + 151);
    v33 = v75;

    return MEMORY[0x1EEE6DA40](v32, v33, v34);
  }

  v50 = v0[260];
  v0[116] = type metadata accessor for ImageConditioningSuggestionsFetcher();
  v0[117] = &off_1F4DC65D0;
  v0[113] = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1(v0 + 113, v0[116]) + 32) = v50;

  __swift_destroy_boxed_opaque_existential_0((v0 + 113));
  v171 = v0[251];
  if (v171)
  {
    v51 = 0;
    v52 = v0[222];
    v53 = v0[182];
    v54 = v0[250] + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v55 = *(v52 + 72);
    v56 = (v53 + 32);
    v57 = MEMORY[0x1E69E7CC0];
    do
    {
      v58 = v0[228];
      v59 = v0[226];
      sub_1D2672EC0(v54, v58, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v58, v59, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v60 = *v56;
        (*v56)(v0[183], v0[226], v0[181]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1D27CD8F8(0, *(v57 + 2) + 1, 1, v57);
        }

        v62 = *(v57 + 2);
        v61 = *(v57 + 3);
        if (v62 >= v61 >> 1)
        {
          v57 = sub_1D27CD8F8(v61 > 1, v62 + 1, 1, v57);
        }

        v63 = v0[183];
        v64 = v0[181];
        *(v57 + 2) = v62 + 1;
        v60(&v57[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v62], v63, v64);
      }

      else
      {
        sub_1D2672F90(v0[226], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v51;
      v54 += v55;
    }

    while (v51 != v0[251]);
  }

  v77 = sub_1D23C6DDC();
  v0[154] = v77;
  v78 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval();
  v78();

  if (v171)
  {
    v79 = 0;
    v80 = v0[222];
    v81 = v0[178];
    v82 = v0[250] + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v83 = *(v80 + 72);
    v84 = (v81 + 32);
    v85 = MEMORY[0x1E69E7CC0];
    do
    {
      v86 = v0[227];
      v87 = v0[225];
      sub_1D2672EC0(v82, v86, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v86, v87, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v88 = *v84;
        (*v84)(v0[180], v0[225], v0[177]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1D27CD8D0(0, *(v85 + 2) + 1, 1, v85);
        }

        v90 = *(v85 + 2);
        v89 = *(v85 + 3);
        if (v90 >= v89 >> 1)
        {
          v85 = sub_1D27CD8D0(v89 > 1, v90 + 1, 1, v85);
        }

        v91 = v0[180];
        v92 = v0[177];
        *(v85 + 2) = v90 + 1;
        v88(&v85[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v90], v91, v92);
      }

      else
      {
        sub_1D2672F90(v0[225], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v79;
      v82 += v83;
    }

    while (v79 != v0[251]);
  }

  else
  {
    v85 = MEMORY[0x1E69E7CC0];
  }

  if (*(v85 + 2))
  {
    (*(v0[178] + 16))(v0[185], &v85[(*(v0[178] + 80) + 32) & ~*(v0[178] + 80)], v0[177]);
    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  v94 = v0[185];
  v95 = v0[184];
  v96 = v0[178];
  v97 = v0[177];

  (*(v96 + 56))(v94, v93, 1, v97);
  sub_1D22BD1D0(v94, v95, &qword_1EC6DF7A0);
  if ((*(v96 + 48))(v95, 1, v97) == 1)
  {
    sub_1D22BD238(v0[184], &qword_1EC6DF7A0);
    v98 = [v0[159] additionalMetadata];
    if (v98)
    {
      v99 = v0[261];
      v100 = v98;
      v101 = sub_1D28716E8();
      v103 = v102;

      v0[282] = v101;
      v0[283] = v103;
      v104 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v101, v103);
      v105 = sub_1D28716D8();
      v0[284] = [v104 initWithUnderlyingData_];

      sub_1D22D6D60(v101, v103);
      sub_1D2878C38();
      if (!v99)
      {
        v120 = swift_task_alloc();
        v0[285] = v120;
        *v120 = v0;
        v120[1] = sub_1D266E964;
        v121 = v0[166];
        v122 = *(v0 + 402);
        v123 = v0[162];
        v124 = v0[161];
        v125 = v0[160];

        return sub_1D2655328(v121, v125, v124, v123, v122);
      }

      v0[152] = v99;
      v106 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v107 = v0[284];
        v108 = v0[283];
        v109 = v0[282];
        v110 = v0[185];

        v111 = v0[137];
        v112 = v0[138];
        sub_1D2672E0C();
        swift_allocError();
        *v113 = v111;
        v113[1] = v112;
        swift_willThrow();

        sub_1D22D6D60(v109, v108);
        sub_1D22BD238(v110, &qword_1EC6DF7A0);

        v114 = v0[1];
LABEL_68:

        return v114();
      }

      sub_1D2872658();
      v126 = v99;
      v127 = sub_1D2873CA8();
      v128 = sub_1D2878A18();

      v129 = os_log_type_enabled(v127, v128);
      v130 = v0[284];
      v131 = v0[283];
      v132 = v0[282];
      if (v129)
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412290;
        v135 = v99;
        v136 = _swift_stdlib_bridgeErrorToNSError();
        *(v133 + 4) = v136;
        *v134 = v136;
        _os_log_impl(&dword_1D226E000, v127, v128, "Cannot parse recipe data wrapper to recipe with error: %@", v133, 0xCu);
        sub_1D22BD238(v134, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v134, -1, -1);
        MEMORY[0x1D38A3520](v133, -1, -1);

        sub_1D22D6D60(v132, v131);
      }

      else
      {
        sub_1D22D6D60(v0[282], v0[283]);
      }

      (*(v0[192] + 8))(v0[193], v0[191]);
    }

    *(v0 + 405) = 0;
    if (v0[251])
    {
      v137 = 0;
      v138 = v0[222];
      v139 = v0[172];
      v140 = v0[250] + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v141 = *(v138 + 72);
      v142 = MEMORY[0x1E69E7CC0];
      do
      {
        v143 = v0[224];
        v144 = v0[223];
        sub_1D2672EC0(v140, v143, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v143, v144, type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v146 = v0[223];
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2672F28(v146, v0[174], type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_1D27CD8A8(0, v142[2] + 1, 1, v142);
          }

          v148 = v142[2];
          v147 = v142[3];
          if (v148 >= v147 >> 1)
          {
            v142 = sub_1D27CD8A8(v147 > 1, v148 + 1, 1, v142);
          }

          v149 = v0[174];
          v142[2] = v148 + 1;
          sub_1D2672F28(v149, v142 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v148, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v146, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v137;
        v140 += v141;
      }

      while (v137 != v0[251]);
    }

    else
    {
      v142 = MEMORY[0x1E69E7CC0];
    }

    if (v142[2])
    {
      v150 = *(v0[172] + 80);
      sub_1D2672EC0(v142 + ((v150 + 32) & ~v150), v0[168], type metadata accessor for PlaygroundImage);
      v151 = 0;
    }

    else
    {
      v151 = 1;
    }

    v152 = v0[172];
    v153 = v0[171];
    v154 = v0[168];
    v155 = v0[167];

    (*(v152 + 56))(v154, v151, 1, v153);
    sub_1D22BD1D0(v154, v155, &unk_1EC6DE5A0);
    if ((*(v152 + 48))(v155, 1, v153) == 1)
    {
      v156 = v0[185];
      v157 = v0[168];
      v158 = v0[167];

      sub_1D22BD238(v157, &unk_1EC6DE5A0);
      sub_1D22BD238(v156, &qword_1EC6DF7A0);
      sub_1D22BD238(v158, &unk_1EC6DE5A0);
      v159 = *(v0 + 405);
      v160 = v0[163];
      *(v160 + 16) = *(v0 + 404);
      *(v160 + 17) = v159;

      v114 = v0[1];
      goto LABEL_68;
    }

    sub_1D2672F28(v0[167], v0[173], type metadata accessor for PlaygroundImage);
    v0[287] = sub_1D23C7314();
    v0[288] = sub_1D2878558();
    v161 = swift_task_alloc();
    v0[289] = v161;
    *v161 = v0;
    v161[1] = sub_1D266F178;
    v162 = v0[173];

    return sub_1D28421E4((v0 + 44), v162, 1);
  }

  else
  {
    (*(v0[178] + 32))(v0[179], v0[184], v0[177]);
    sub_1D2877E48();
    v115 = sub_1D2877E38();
    v0[273] = v115;
    v116 = v115;
    v117 = swift_task_alloc();
    v0[274] = v117;
    *v117 = v0;
    v117[1] = sub_1D266D468;
    v118 = v0[170];

    return sub_1D26722CC(v118, v116, 1);
  }
}

uint64_t sub_1D266C144(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 2176) = a1;

  v3 = *(v2 + 1896);
  v4 = *(v2 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266C2AC, v4, v3);
}

uint64_t sub_1D266C2AC()
{
  v1 = *(v0 + 2176);
  *(v0 + 608) = type metadata accessor for ImageConditioningSuggestionsFetcher();
  *(v0 + 616) = &off_1F4DC65D0;
  *(v0 + 584) = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608)) + 24) = v1;

  __swift_destroy_boxed_opaque_existential_0(v0 + 584);
  v102 = *(v0 + 2008);
  if (v102)
  {
    v2 = 0;
    v3 = *(v0 + 1776);
    v4 = *(v0 + 1456);
    v5 = *(v0 + 2000) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = (v4 + 32);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v0 + 1824);
      v10 = *(v0 + 1808);
      sub_1D2672EC0(v5, v9, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v9, v10, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v11 = *v7;
        (*v7)(*(v0 + 1464), *(v0 + 1808), *(v0 + 1448));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CD8F8(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1D27CD8F8(v12 > 1, v13 + 1, 1, v8);
        }

        v14 = *(v0 + 1464);
        v15 = *(v0 + 1448);
        *(v8 + 2) = v13 + 1;
        v11(&v8[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13], v14, v15);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1808), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v2;
      v5 += v6;
    }

    while (v2 != *(v0 + 2008));
  }

  v16 = sub_1D23C6DDC();
  *(v0 + 1232) = v16;
  v17 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval();
  v17();

  if (v102)
  {
    v18 = 0;
    v19 = *(v0 + 1776);
    v20 = *(v0 + 1424);
    v21 = *(v0 + 2000) + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v22 = *(v19 + 72);
    v23 = (v20 + 32);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = *(v0 + 1816);
      v26 = *(v0 + 1800);
      sub_1D2672EC0(v21, v25, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v25, v26, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v27 = *v23;
        (*v23)(*(v0 + 1440), *(v0 + 1800), *(v0 + 1416));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D27CD8D0(0, *(v24 + 2) + 1, 1, v24);
        }

        v29 = *(v24 + 2);
        v28 = *(v24 + 3);
        if (v29 >= v28 >> 1)
        {
          v24 = sub_1D27CD8D0(v28 > 1, v29 + 1, 1, v24);
        }

        v30 = *(v0 + 1440);
        v31 = *(v0 + 1416);
        *(v24 + 2) = v29 + 1;
        v27(&v24[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v29], v30, v31);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1800), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v18;
      v21 += v22;
    }

    while (v18 != *(v0 + 2008));
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if (*(v24 + 2))
  {
    (*(*(v0 + 1424) + 16))(*(v0 + 1480), &v24[(*(*(v0 + 1424) + 80) + 32) & ~*(*(v0 + 1424) + 80)], *(v0 + 1416));
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = *(v0 + 1480);
  v34 = *(v0 + 1472);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  (*(v35 + 56))(v33, v32, 1, v36);
  sub_1D22BD1D0(v33, v34, &qword_1EC6DF7A0);
  if ((*(v35 + 48))(v34, 1, v36) == 1)
  {
    sub_1D22BD238(*(v0 + 1472), &qword_1EC6DF7A0);
    v37 = [*(v0 + 1272) additionalMetadata];
    if (v37)
    {
      v38 = *(v0 + 2088);
      v39 = v37;
      v40 = sub_1D28716E8();
      v42 = v41;

      *(v0 + 2256) = v40;
      *(v0 + 2264) = v42;
      v43 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v40, v42);
      v44 = sub_1D28716D8();
      *(v0 + 2272) = [v43 initWithUnderlyingData_];

      sub_1D22D6D60(v40, v42);
      sub_1D2878C38();
      if (!v38)
      {
        v59 = swift_task_alloc();
        *(v0 + 2280) = v59;
        *v59 = v0;
        v59[1] = sub_1D266E964;
        v60 = *(v0 + 1328);
        v61 = *(v0 + 402);
        v62 = *(v0 + 1296);
        v63 = *(v0 + 1288);
        v64 = *(v0 + 1280);

        return sub_1D2655328(v60, v64, v63, v62, v61);
      }

      *(v0 + 1216) = v38;
      v45 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v46 = *(v0 + 2272);
        v47 = *(v0 + 2264);
        v48 = *(v0 + 2256);
        v49 = *(v0 + 1480);

        v50 = *(v0 + 1096);
        v51 = *(v0 + 1104);
        sub_1D2672E0C();
        swift_allocError();
        *v52 = v50;
        v52[1] = v51;
        swift_willThrow();

        sub_1D22D6D60(v48, v47);
        sub_1D22BD238(v49, &qword_1EC6DF7A0);

        v53 = *(v0 + 8);
LABEL_56:

        return v53();
      }

      sub_1D2872658();
      v65 = v38;
      v66 = sub_1D2873CA8();
      v67 = sub_1D2878A18();

      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 2272);
      v70 = *(v0 + 2264);
      v71 = *(v0 + 2256);
      if (v68)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        v74 = v38;
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 4) = v75;
        *v73 = v75;
        _os_log_impl(&dword_1D226E000, v66, v67, "Cannot parse recipe data wrapper to recipe with error: %@", v72, 0xCu);
        sub_1D22BD238(v73, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v73, -1, -1);
        MEMORY[0x1D38A3520](v72, -1, -1);

        sub_1D22D6D60(v71, v70);
      }

      else
      {
        sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
      }

      (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
    }

    *(v0 + 405) = 0;
    if (*(v0 + 2008))
    {
      v76 = 0;
      v77 = *(v0 + 1776);
      v78 = *(v0 + 1376);
      v79 = *(v0 + 2000) + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v80 = *(v77 + 72);
      v81 = MEMORY[0x1E69E7CC0];
      do
      {
        v82 = *(v0 + 1792);
        v83 = *(v0 + 1784);
        sub_1D2672EC0(v79, v82, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v82, v83, type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v85 = *(v0 + 1784);
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2672F28(v85, *(v0 + 1392), type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_1D27CD8A8(0, v81[2] + 1, 1, v81);
          }

          v87 = v81[2];
          v86 = v81[3];
          if (v87 >= v86 >> 1)
          {
            v81 = sub_1D27CD8A8(v86 > 1, v87 + 1, 1, v81);
          }

          v88 = *(v0 + 1392);
          v81[2] = v87 + 1;
          sub_1D2672F28(v88, v81 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v87, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v85, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v76;
        v79 += v80;
      }

      while (v76 != *(v0 + 2008));
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
    }

    if (v81[2])
    {
      v89 = *(*(v0 + 1376) + 80);
      sub_1D2672EC0(v81 + ((v89 + 32) & ~v89), *(v0 + 1344), type metadata accessor for PlaygroundImage);
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(v0 + 1376);
    v92 = *(v0 + 1368);
    v93 = *(v0 + 1344);
    v94 = *(v0 + 1336);

    (*(v91 + 56))(v93, v90, 1, v92);
    sub_1D22BD1D0(v93, v94, &unk_1EC6DE5A0);
    if ((*(v91 + 48))(v94, 1, v92) == 1)
    {
      v95 = *(v0 + 1480);
      v96 = *(v0 + 1344);
      v97 = *(v0 + 1336);

      sub_1D22BD238(v96, &unk_1EC6DE5A0);
      sub_1D22BD238(v95, &qword_1EC6DF7A0);
      sub_1D22BD238(v97, &unk_1EC6DE5A0);
      v98 = *(v0 + 405);
      v99 = *(v0 + 1304);
      *(v99 + 16) = *(v0 + 404);
      *(v99 + 17) = v98;

      v53 = *(v0 + 8);
      goto LABEL_56;
    }

    sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
    *(v0 + 2296) = sub_1D23C7314();
    *(v0 + 2304) = sub_1D2878558();
    v100 = swift_task_alloc();
    *(v0 + 2312) = v100;
    *v100 = v0;
    v100[1] = sub_1D266F178;
    v101 = *(v0 + 1384);

    return sub_1D28421E4(v0 + 352, v101, 1);
  }

  else
  {
    (*(*(v0 + 1424) + 32))(*(v0 + 1432), *(v0 + 1472), *(v0 + 1416));
    sub_1D2877E48();
    v54 = sub_1D2877E38();
    *(v0 + 2184) = v54;
    v55 = v54;
    v56 = swift_task_alloc();
    *(v0 + 2192) = v56;
    *v56 = v0;
    v56[1] = sub_1D266D468;
    v57 = *(v0 + 1360);

    return sub_1D26722CC(v57, v55, 1);
  }
}

uint64_t sub_1D266D468()
{
  v1 = *v0;

  v2 = *(v1 + 1896);
  v3 = *(v1 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266D588, v3, v2);
}

uint64_t sub_1D266D588()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[273];
    v5 = v0[185];
    v6 = v0[179];
    v7 = v0[178];
    v8 = v0[177];

    (*(v7 + 8))(v6, v8);
    sub_1D22BD238(v5, &qword_1EC6DF7A0);
    sub_1D22BD238(v3, &unk_1EC6DE5A0);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[176];
    v12 = v0[175];
    v13 = v0[169];
    v14 = v0[163];
    sub_1D2672F28(v3, v11, type metadata accessor for PlaygroundImage);
    sub_1D2878C18();
    sub_1D2672EC0(v11, v12, type metadata accessor for PlaygroundImage);
    (*(v1 + 56))(v13, 1, 1, v2);
    v0[275] = sub_1D27FC910(v12, v13);
    v0[276] = *(v14 + 32);
    v0[277] = sub_1D23C7314();
    v0[278] = sub_1D2878558();
    v16 = sub_1D28784F8();
    v0[279] = v16;
    v0[280] = v15;

    return MEMORY[0x1EEE6DFA0](sub_1D266DA54, v16, v15);
  }
}

uint64_t sub_1D266DA54()
{
  v1 = swift_task_alloc();
  v0[281] = v1;
  *v1 = v0;
  v1[1] = sub_1D266DAF4;
  v2 = v0[277];
  v3 = v0[275];

  return sub_1D2674838(v3, v2);
}

uint64_t sub_1D266DAF4()
{
  v1 = *v0;

  v2 = *(v1 + 2240);
  v3 = *(v1 + 2232);

  return MEMORY[0x1EEE6DFA0](sub_1D266DC14, v3, v2);
}

uint64_t sub_1D266DC14()
{

  sub_1D267F6F0();
  sub_1D267E8EC();

  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266DC94, v2, v1);
}

uint64_t sub_1D266DC94()
{
  v1 = *(v0 + 2184);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);

  sub_1D2672F90(v5, type metadata accessor for PlaygroundImage);
  (*(v3 + 8))(v2, v4);
  v6 = [*(v0 + 1272) additionalMetadata];
  if (v6)
  {
    v7 = *(v0 + 2088);
    v8 = v6;
    v9 = sub_1D28716E8();
    v11 = v10;

    *(v0 + 2256) = v9;
    *(v0 + 2264) = v11;
    v12 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
    sub_1D22D6CF8(v9, v11);
    v13 = sub_1D28716D8();
    *(v0 + 2272) = [v12 initWithUnderlyingData_];

    sub_1D22D6D60(v9, v11);
    sub_1D2878C38();
    if (!v7)
    {
      v23 = swift_task_alloc();
      *(v0 + 2280) = v23;
      *v23 = v0;
      v23[1] = sub_1D266E964;
      v24 = *(v0 + 1328);
      v25 = *(v0 + 402);
      v26 = *(v0 + 1296);
      v27 = *(v0 + 1288);
      v28 = *(v0 + 1280);

      return sub_1D2655328(v24, v28, v27, v26, v25);
    }

    *(v0 + 1216) = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 2272);
      v16 = *(v0 + 2264);
      v17 = *(v0 + 2256);
      v18 = *(v0 + 1480);

      v19 = *(v0 + 1096);
      v20 = *(v0 + 1104);
      sub_1D2672E0C();
      swift_allocError();
      *v21 = v19;
      v21[1] = v20;
      swift_willThrow();

      sub_1D22D6D60(v17, v16);
      sub_1D22BD238(v18, &qword_1EC6DF7A0);

      v22 = *(v0 + 8);
LABEL_28:

      return v22();
    }

    sub_1D2872658();
    v30 = v7;
    v31 = sub_1D2873CA8();
    v32 = sub_1D2878A18();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 2272);
    v35 = *(v0 + 2264);
    v36 = *(v0 + 2256);
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v7;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_1D226E000, v31, v32, "Cannot parse recipe data wrapper to recipe with error: %@", v37, 0xCu);
      sub_1D22BD238(v38, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v38, -1, -1);
      MEMORY[0x1D38A3520](v37, -1, -1);

      sub_1D22D6D60(v36, v35);
    }

    else
    {
      sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
    }

    (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
  }

  *(v0 + 405) = 0;
  if (*(v0 + 2008))
  {
    v41 = 0;
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1376);
    v44 = *(v0 + 2000) + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v45 = *(v42 + 72);
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      v47 = *(v0 + 1792);
      v48 = *(v0 + 1784);
      sub_1D2672EC0(v44, v47, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v47, v48, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v50 = *(v0 + 1784);
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D2672F28(v50, *(v0 + 1392), type metadata accessor for PlaygroundImage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D27CD8A8(0, v46[2] + 1, 1, v46);
        }

        v52 = v46[2];
        v51 = v46[3];
        if (v52 >= v51 >> 1)
        {
          v46 = sub_1D27CD8A8(v51 > 1, v52 + 1, 1, v46);
        }

        v53 = *(v0 + 1392);
        v46[2] = v52 + 1;
        sub_1D2672F28(v53, v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v52, type metadata accessor for PlaygroundImage);
      }

      else
      {
        sub_1D2672F90(v50, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v41;
      v44 += v45;
    }

    while (v41 != *(v0 + 2008));
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  if (v46[2])
  {
    v54 = *(*(v0 + 1376) + 80);
    sub_1D2672EC0(v46 + ((v54 + 32) & ~v54), *(v0 + 1344), type metadata accessor for PlaygroundImage);
    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = *(v0 + 1376);
  v57 = *(v0 + 1368);
  v58 = *(v0 + 1344);
  v59 = *(v0 + 1336);

  (*(v56 + 56))(v58, v55, 1, v57);
  sub_1D22BD1D0(v58, v59, &unk_1EC6DE5A0);
  if ((*(v56 + 48))(v59, 1, v57) == 1)
  {
    v60 = *(v0 + 1480);
    v61 = *(v0 + 1344);
    v62 = *(v0 + 1336);

    sub_1D22BD238(v61, &unk_1EC6DE5A0);
    sub_1D22BD238(v60, &qword_1EC6DF7A0);
    sub_1D22BD238(v62, &unk_1EC6DE5A0);
    v63 = *(v0 + 405);
    v64 = *(v0 + 1304);
    *(v64 + 16) = *(v0 + 404);
    *(v64 + 17) = v63;

    v22 = *(v0 + 8);
    goto LABEL_28;
  }

  sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
  *(v0 + 2296) = sub_1D23C7314();
  *(v0 + 2304) = sub_1D2878558();
  v65 = swift_task_alloc();
  *(v0 + 2312) = v65;
  *v65 = v0;
  v65[1] = sub_1D266F178;
  v66 = *(v0 + 1384);

  return sub_1D28421E4(v0 + 352, v66, 1);
}

uint64_t sub_1D266E964()
{
  v2 = *v1;
  *(*v1 + 2288) = v0;

  v3 = *(v2 + 1896);
  v4 = *(v2 + 1888);
  if (v0)
  {
    v5 = sub_1D267176C;
  }

  else
  {
    v5 = sub_1D266EAA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D266EAA0()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1320);
  v5 = *(v0 + 1312);

  sub_1D22D6D60(v2, v1);
  (*(v4 + 8))(v3, v5);
  *(v0 + 405) = 1;
  if (*(v0 + 2008))
  {
    v6 = 0;
    v7 = *(v0 + 1776);
    v8 = *(v0 + 1376);
    v9 = *(v0 + 2000) + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *(v0 + 1792);
      v13 = *(v0 + 1784);
      sub_1D2672EC0(v9, v12, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v12, v13, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = *(v0 + 1784);
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D2672F28(v15, *(v0 + 1392), type metadata accessor for PlaygroundImage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D27CD8A8(0, v11[2] + 1, 1, v11);
        }

        v17 = v11[2];
        v16 = v11[3];
        if (v17 >= v16 >> 1)
        {
          v11 = sub_1D27CD8A8(v16 > 1, v17 + 1, 1, v11);
        }

        v18 = *(v0 + 1392);
        v11[2] = v17 + 1;
        sub_1D2672F28(v18, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for PlaygroundImage);
      }

      else
      {
        sub_1D2672F90(v15, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v6;
      v9 += v10;
    }

    while (v6 != *(v0 + 2008));
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v11[2])
  {
    v19 = *(*(v0 + 1376) + 80);
    sub_1D2672EC0(v11 + ((v19 + 32) & ~v19), *(v0 + 1344), type metadata accessor for PlaygroundImage);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(v0 + 1376);
  v22 = *(v0 + 1368);
  v23 = *(v0 + 1344);
  v24 = *(v0 + 1336);

  (*(v21 + 56))(v23, v20, 1, v22);
  sub_1D22BD1D0(v23, v24, &unk_1EC6DE5A0);
  v25 = (*(v21 + 48))(v24, 1, v22);
  v26 = *(v0 + 1336);
  if (v25 == 1)
  {
    v27 = *(v0 + 1480);
    v28 = *(v0 + 1344);

    sub_1D22BD238(v28, &unk_1EC6DE5A0);
    sub_1D22BD238(v27, &qword_1EC6DF7A0);
    sub_1D22BD238(v26, &unk_1EC6DE5A0);
    v29 = *(v0 + 405);
    v30 = *(v0 + 1304);
    *(v30 + 16) = *(v0 + 404);
    *(v30 + 17) = v29;

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
    *(v0 + 2296) = sub_1D23C7314();
    *(v0 + 2304) = sub_1D2878558();
    v33 = swift_task_alloc();
    *(v0 + 2312) = v33;
    *v33 = v0;
    v33[1] = sub_1D266F178;
    v34 = *(v0 + 1384);

    return sub_1D28421E4(v0 + 352, v34, 1);
  }
}

uint64_t sub_1D266F178()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  *(v1 + 2320) = *(v1 + 352);
  *(v1 + 2336) = v2;
  *(v1 + 406) = *(v1 + 384);
  *(v1 + 407) = *(v1 + 400);

  *(v1 + 2352) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v1 + 2360) = v4;
  *(v1 + 2368) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D266F2D8, v4, v3);
}

uint64_t sub_1D266F2D8()
{
  v1 = *(v0 + 406);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v16 = *(v0 + 407);
    v17 = *(v0 + 406);
    v18 = *(v0 + 1504);
    v19 = *(v0 + 1384);

    sub_1D23C7044();
    v20 = sub_1D27ED8C8();

    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if ((v20 | (v17 & ~v16)))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(v0 + 688) = v18;
    *(v0 + 696) = sub_1D2672E78(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
    sub_1D2672EC0(v19, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v18 + 20)) = v22;
    v12 = sub_1D28784F8();
    v14 = v24;
    v15 = sub_1D266F6A0;
  }

  else
  {
    v3 = *(v0 + 2344);
    v4 = *(v0 + 2336);
    v5 = *(v0 + 2328);
    v6 = *(v0 + 2320);
    v7 = *(v0 + 1384);
    v8 = *(v0 + 1368);
    v9 = type metadata accessor for PersonConditioningImage();
    *(v0 + 688) = v9;
    *(v0 + 696) = sub_1D2672E78(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage);
    v10 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
    *(v0 + 2376) = v10;
    v11 = v10 + *(v9 + 20);
    sub_1D2672EC0(v7, v11, type metadata accessor for PlaygroundImage);
    v27.origin.x = v6 - v4 * 0.5;
    v27.origin.y = v5 - v3 * 0.5;
    v27.size.width = v4 + v4;
    v27.size.height = v3 + v3;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = 1.0;
    v28.size.height = 1.0;
    *(v11 + *(v8 + 36)) = CGRectIntersection(v27, v28);
    *(v0 + 2384) = sub_1D2878558();
    v12 = sub_1D28784F8();
    v14 = v13;
    v15 = sub_1D266F570;
  }

  return MEMORY[0x1EEE6DFA0](v15, v12, v14);
}

uint64_t sub_1D266F570()
{
  v1 = v0[297];

  v2 = type metadata accessor for PhotosPersonAsset();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[296];
  v4 = v0[295];

  return MEMORY[0x1EEE6DFA0](sub_1D266F61C, v4, v3);
}

uint64_t sub_1D266F61C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D266F6A0, v1, v0);
}

uint64_t sub_1D266F6A0()
{

  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266F714, v2, v1);
}

uint64_t sub_1D266F714()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1344);

  v4 = *(v0 + 688);
  v5 = *(v0 + 696);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 664), v4);
  *(v0 + 808) = v4;
  *(v0 + 816) = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 784));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  sub_1D267A600(v0 + 784, 1, v0 + 744);
  sub_1D22BD238(v0 + 744, &unk_1EC6E1D30);
  sub_1D2672F90(v2, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v3, &unk_1EC6DE5A0);
  sub_1D22BD238(v1, &qword_1EC6DF7A0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 784);
  __swift_destroy_boxed_opaque_existential_0(v0 + 664);
  v8 = *(v0 + 405);
  v9 = *(v0 + 1304);
  *(v9 + 16) = *(v0 + 404);
  *(v9 + 17) = v8;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D266FB28()
{
  v1 = *(v0 + 1976);

  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1976);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Cannot parse recipe data wrapper to recipe with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v10 = *(v0 + 1976);
  v11 = *(v0 + 1552);
  v12 = *(v0 + 1536);
  v13 = *(v0 + 1528);

  (*(v12 + 8))(v11, v13);
  *(v0 + 1248) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  isUniquelyReferenced_nonNull_native = swift_dynamicCast();
  if (isUniquelyReferenced_nonNull_native)
  {
    v17 = *(v0 + 401) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x1E69E7CC0];
  *(v0 + 2000) = MEMORY[0x1E69E7CC0];
  *(v0 + 404) = v17 & 1;
  *(v0 + 1992) = 0;
  v19 = *(v18 + 16);
  *(v0 + 2008) = v19;
  if (v19)
  {
    v20 = *(v0 + 1832);
    v21 = *(v0 + 1776);
    v22 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    do
    {
      v24 = *(v0 + 1840);
      v25 = *(v0 + 1832);
      sub_1D2672EC0(v22, v24, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v24, v25, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = *(v0 + 1832);
      if (EnumCaseMultiPayload)
      {
        isUniquelyReferenced_nonNull_native = sub_1D2672F90(v27, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      else
      {
        v28 = *v27;
        v29 = *(v20 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674(0, *(v18 + 16) + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        if (v31 >= v30 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674((v30 > 1), v31 + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        *(v18 + 16) = v31 + 1;
        v32 = v18 + 16 * v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v29;
      }

      v22 += v23;
      --v19;
    }

    while (v19);
  }

  *(v0 + 2016) = v18;
  v33 = *(v18 + 16);
  *(v0 + 2024) = v33;
  if (v33)
  {
    *(v0 + 2032) = *MEMORY[0x1E69DB5F0];
    *(v0 + 2040) = 0;
    if (!*(v18 + 16))
    {
      __break(1u);
LABEL_119:
      __break(1u);
      return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, v15, v16);
    }

    v34 = *(v0 + 1696);
    v35 = *(v18 + 32);
    *(v0 + 2048) = v35;
    v36 = *(v18 + 40);
    *(v0 + 2056) = v36;
    v37 = sub_1D26552B8();
    v38 = sub_1D28785F8();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    v39 = sub_1D2878558();
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E85E0];
    v40[2] = v39;
    v40[3] = v41;
    v40[4] = v37;
    v40[5] = v35;
    v40[6] = v36;
    v42 = sub_1D22AE630(0, 0, v34, &unk_1D2883730, v40);
    *(v0 + 2064) = v42;

    v43 = swift_task_alloc();
    *(v0 + 2072) = v43;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
    *v43 = v0;
    v43[1] = sub_1D2668250;
    isUniquelyReferenced_nonNull_native = v0 + 1240;
LABEL_19:
    v15 = v42;

    return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, v15, v16);
  }

  v44 = *(v0 + 1280);

  v196 = v44;
  v45 = *(v44 + 32);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = *(v0 + 1712);
    v48 = v45 + 32;
    sub_1D2870F68();
    v49 = MEMORY[0x1E69E7CC0];
    do
    {
      v50 = *(v0 + 1704);
      v51 = *(v0 + 1520);
      sub_1D22D7044(v48, v0 + 504);
      sub_1D227268C((v0 + 504), v0 + 624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      v52 = swift_dynamicCast();
      (*(v47 + 56))(v51, v52 ^ 1u, 1, v50);
      if ((*(v47 + 48))(v51, 1, v50) == 1)
      {
        sub_1D22BD238(*(v0 + 1520), &unk_1EC6E1D20);
      }

      else
      {
        sub_1D2672F28(*(v0 + 1520), *(v0 + 1744), type metadata accessor for Prompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1D27CC840(0, v49[2] + 1, 1, v49);
        }

        v54 = v49[2];
        v53 = v49[3];
        if (v54 >= v53 >> 1)
        {
          v49 = sub_1D27CC840(v53 > 1, v54 + 1, 1, v49);
        }

        v55 = *(v0 + 1744);
        v49[2] = v54 + 1;
        sub_1D2672F28(v55, v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v54, type metadata accessor for Prompt);
      }

      v48 += 40;
      --v46;
    }

    while (v46);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v56 = v49[2];
  v57 = MEMORY[0x1E69E7CC0];
  v197 = v49;
  if (v56)
  {
    v58 = v49;
    v59 = *(v0 + 1736);
    v60 = *(v0 + 1712);
    sub_1D23D81B8(0, v56, 0);
    v61 = v58 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v62 = *(v60 + 72);
    do
    {
      v63 = *(v0 + 1736);
      sub_1D2672EC0(v61, v63, type metadata accessor for Prompt);
      v65 = *(v59 + 8);
      v64 = *(v59 + 16);
      sub_1D2870F68();
      sub_1D2672F90(v63, type metadata accessor for Prompt);
      v67 = *(v57 + 16);
      v66 = *(v57 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1D23D81B8((v66 > 1), v67 + 1, 1);
      }

      *(v57 + 16) = v67 + 1;
      v68 = v57 + 16 * v67;
      *(v68 + 32) = v65;
      *(v68 + 40) = v64;
      v61 += v62;
      --v56;
    }

    while (v56);
  }

  v69 = *(v0 + 2000);
  v70 = *(v0 + 1992);
  v71 = *(v0 + 403);
  v72 = sub_1D233C990(v57);

  *(v0 + 1264) = v72;
  sub_1D2655050(v69);
  v74 = v73;
  *(v0 + 2080) = v73;
  *(v0 + 2088) = v70;
  if (v71)
  {

    *(v0 + 2160) = sub_1D23C7858();
    v75 = swift_task_alloc();
    *(v0 + 2168) = v75;
    *v75 = v0;
    v75[1] = sub_1D266C144;

    return sub_1D26D09F4(v74);
  }

  v77 = v197[2];

  if (!v77)
  {
    v78 = *(v196 + 32);
    v79 = *(v78 + 16);
    isUniquelyReferenced_nonNull_native = sub_1D2870F68();
    if (v79)
    {
      v80 = 0;
      v81 = v78 + 32;
      while (1)
      {
        if (v80 >= *(v78 + 16))
        {
          goto LABEL_119;
        }

        sub_1D22D7044(v81, v0 + 1024);
        sub_1D22D7044(v0 + 1024, v0 + 984);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1D227268C((v0 + 1024), v0 + 544);
        isUniquelyReferenced_nonNull_native = swift_dynamicCast();
        if (isUniquelyReferenced_nonNull_native)
        {
          v94 = *(v0 + 1496);

          v95 = type metadata accessor for SketchConditioningImage;
          goto LABEL_56;
        }

        ++v80;
        v81 += 40;
        if (v79 == v80)
        {
          goto LABEL_50;
        }
      }

      v94 = *(v0 + 1512);
      __swift_destroy_boxed_opaque_existential_0(v0 + 1024);

      v95 = type metadata accessor for SceneConditioningImage;
LABEL_56:
      sub_1D2672F90(v94, v95);
      goto LABEL_57;
    }

LABEL_50:

    v82 = *(v74 + 16);
    v83 = 4;
    if (v82 < 4)
    {
      v83 = *(v74 + 16);
    }

    *(v0 + 2096) = v83;
    if (v82)
    {
      *(v0 + 2104) = *(*(v0 + 1304) + 32);
      *(v0 + 2112) = *MEMORY[0x1E69DB5F0];
      *(v0 + 2120) = 0;
      v84 = *(v0 + 2080);
      v85 = *(v0 + 1696);
      v86 = *(v84 + 32);
      *(v0 + 2128) = v86;
      v87 = *(v84 + 40);
      *(v0 + 2136) = v87;
      sub_1D2870F68();
      v88 = sub_1D26552B8();
      v89 = sub_1D28785F8();
      (*(*(v89 - 8) + 56))(v85, 1, 1, v89);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v90 = sub_1D2878558();
      v91 = swift_allocObject();
      v92 = MEMORY[0x1E69E85E0];
      v91[2] = v90;
      v91[3] = v92;
      v91[4] = v88;
      v91[5] = v86;
      v91[6] = v87;
      v42 = sub_1D22AE630(0, 0, v85, &unk_1D289B1B0, v91);
      *(v0 + 2144) = v42;

      v93 = swift_task_alloc();
      *(v0 + 2152) = v93;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8);
      *v93 = v0;
      v93[1] = sub_1D266A65C;
      isUniquelyReferenced_nonNull_native = v0 + 1208;
      goto LABEL_19;
    }
  }

LABEL_57:
  v96 = *(v0 + 2080);
  *(v0 + 928) = type metadata accessor for ImageConditioningSuggestionsFetcher();
  *(v0 + 936) = &off_1F4DC65D0;
  *(v0 + 904) = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1((v0 + 904), *(v0 + 928)) + 32) = v96;

  __swift_destroy_boxed_opaque_existential_0(v0 + 904);
  v198 = *(v0 + 2008);
  if (v198)
  {
    v97 = 0;
    v98 = *(v0 + 1776);
    v99 = *(v0 + 1456);
    v100 = *(v0 + 2000) + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v101 = *(v98 + 72);
    v102 = (v99 + 32);
    v103 = MEMORY[0x1E69E7CC0];
    do
    {
      v104 = *(v0 + 1824);
      v105 = *(v0 + 1808);
      sub_1D2672EC0(v100, v104, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v104, v105, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v106 = *v102;
        (*v102)(*(v0 + 1464), *(v0 + 1808), *(v0 + 1448));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D27CD8F8(0, *(v103 + 2) + 1, 1, v103);
        }

        v108 = *(v103 + 2);
        v107 = *(v103 + 3);
        if (v108 >= v107 >> 1)
        {
          v103 = sub_1D27CD8F8(v107 > 1, v108 + 1, 1, v103);
        }

        v109 = *(v0 + 1464);
        v110 = *(v0 + 1448);
        *(v103 + 2) = v108 + 1;
        v106(&v103[((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v108], v109, v110);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1808), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v97;
      v100 += v101;
    }

    while (v97 != *(v0 + 2008));
  }

  v111 = sub_1D23C6DDC();
  *(v0 + 1232) = v111;
  v112 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval();
  v112();

  if (v198)
  {
    v113 = 0;
    v114 = *(v0 + 1776);
    v115 = *(v0 + 1424);
    v116 = *(v0 + 2000) + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v117 = *(v114 + 72);
    v118 = (v115 + 32);
    v119 = MEMORY[0x1E69E7CC0];
    do
    {
      v120 = *(v0 + 1816);
      v121 = *(v0 + 1800);
      sub_1D2672EC0(v116, v120, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v120, v121, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v122 = *v118;
        (*v118)(*(v0 + 1440), *(v0 + 1800), *(v0 + 1416));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_1D27CD8D0(0, *(v119 + 2) + 1, 1, v119);
        }

        v124 = *(v119 + 2);
        v123 = *(v119 + 3);
        if (v124 >= v123 >> 1)
        {
          v119 = sub_1D27CD8D0(v123 > 1, v124 + 1, 1, v119);
        }

        v125 = *(v0 + 1440);
        v126 = *(v0 + 1416);
        *(v119 + 2) = v124 + 1;
        v122(&v119[((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v124], v125, v126);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1800), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v113;
      v116 += v117;
    }

    while (v113 != *(v0 + 2008));
  }

  else
  {
    v119 = MEMORY[0x1E69E7CC0];
  }

  if (*(v119 + 2))
  {
    (*(*(v0 + 1424) + 16))(*(v0 + 1480), &v119[(*(*(v0 + 1424) + 80) + 32) & ~*(*(v0 + 1424) + 80)], *(v0 + 1416));
    v127 = 0;
  }

  else
  {
    v127 = 1;
  }

  v128 = *(v0 + 1480);
  v129 = *(v0 + 1472);
  v130 = *(v0 + 1424);
  v131 = *(v0 + 1416);

  (*(v130 + 56))(v128, v127, 1, v131);
  sub_1D22BD1D0(v128, v129, &qword_1EC6DF7A0);
  if ((*(v130 + 48))(v129, 1, v131) == 1)
  {
    sub_1D22BD238(*(v0 + 1472), &qword_1EC6DF7A0);
    v132 = [*(v0 + 1272) additionalMetadata];
    if (v132)
    {
      v133 = *(v0 + 2088);
      v134 = v132;
      v135 = sub_1D28716E8();
      v137 = v136;

      *(v0 + 2256) = v135;
      *(v0 + 2264) = v137;
      v138 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v135, v137);
      v139 = sub_1D28716D8();
      *(v0 + 2272) = [v138 initWithUnderlyingData_];

      sub_1D22D6D60(v135, v137);
      sub_1D2878C38();
      if (!v133)
      {
        v153 = swift_task_alloc();
        *(v0 + 2280) = v153;
        *v153 = v0;
        v153[1] = sub_1D266E964;
        v154 = *(v0 + 1328);
        v155 = *(v0 + 402);
        v156 = *(v0 + 1296);
        v157 = *(v0 + 1288);
        v158 = *(v0 + 1280);

        return sub_1D2655328(v154, v158, v157, v156, v155);
      }

      *(v0 + 1216) = v133;
      v140 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      if (swift_dynamicCast())
      {
        v141 = *(v0 + 2272);
        v142 = *(v0 + 2264);
        v143 = *(v0 + 2256);
        v144 = *(v0 + 1480);

        v145 = *(v0 + 1096);
        v146 = *(v0 + 1104);
        sub_1D2672E0C();
        swift_allocError();
        *v147 = v145;
        v147[1] = v146;
        swift_willThrow();

        sub_1D22D6D60(v143, v142);
        sub_1D22BD238(v144, &qword_1EC6DF7A0);

        v148 = *(v0 + 8);
LABEL_112:

        return v148();
      }

      sub_1D2872658();
      v159 = v133;
      v160 = sub_1D2873CA8();
      v161 = sub_1D2878A18();

      v162 = os_log_type_enabled(v160, v161);
      v163 = *(v0 + 2272);
      v164 = *(v0 + 2264);
      v165 = *(v0 + 2256);
      if (v162)
      {
        v166 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *v166 = 138412290;
        v168 = v133;
        v169 = _swift_stdlib_bridgeErrorToNSError();
        *(v166 + 4) = v169;
        *v167 = v169;
        _os_log_impl(&dword_1D226E000, v160, v161, "Cannot parse recipe data wrapper to recipe with error: %@", v166, 0xCu);
        sub_1D22BD238(v167, qword_1EC6DA930);
        MEMORY[0x1D38A3520](v167, -1, -1);
        MEMORY[0x1D38A3520](v166, -1, -1);

        sub_1D22D6D60(v165, v164);
      }

      else
      {
        sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
      }

      (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
    }

    *(v0 + 405) = 0;
    if (*(v0 + 2008))
    {
      v170 = 0;
      v171 = *(v0 + 1776);
      v172 = *(v0 + 1376);
      v173 = *(v0 + 2000) + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v174 = *(v171 + 72);
      v175 = MEMORY[0x1E69E7CC0];
      do
      {
        v176 = *(v0 + 1792);
        v177 = *(v0 + 1784);
        sub_1D2672EC0(v173, v176, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v176, v177, type metadata accessor for PromptElementConceptExtractor.Concept);
        v178 = swift_getEnumCaseMultiPayload();
        v179 = *(v0 + 1784);
        if (v178 == 5)
        {
          sub_1D2672F28(v179, *(v0 + 1392), type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v175 = sub_1D27CD8A8(0, v175[2] + 1, 1, v175);
          }

          v181 = v175[2];
          v180 = v175[3];
          if (v181 >= v180 >> 1)
          {
            v175 = sub_1D27CD8A8(v180 > 1, v181 + 1, 1, v175);
          }

          v182 = *(v0 + 1392);
          v175[2] = v181 + 1;
          sub_1D2672F28(v182, v175 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v181, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v179, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v170;
        v173 += v174;
      }

      while (v170 != *(v0 + 2008));
    }

    else
    {
      v175 = MEMORY[0x1E69E7CC0];
    }

    if (v175[2])
    {
      v183 = *(*(v0 + 1376) + 80);
      sub_1D2672EC0(v175 + ((v183 + 32) & ~v183), *(v0 + 1344), type metadata accessor for PlaygroundImage);
      v184 = 0;
    }

    else
    {
      v184 = 1;
    }

    v185 = *(v0 + 1376);
    v186 = *(v0 + 1368);
    v187 = *(v0 + 1344);
    v188 = *(v0 + 1336);

    (*(v185 + 56))(v187, v184, 1, v186);
    sub_1D22BD1D0(v187, v188, &unk_1EC6DE5A0);
    if ((*(v185 + 48))(v188, 1, v186) == 1)
    {
      v189 = *(v0 + 1480);
      v190 = *(v0 + 1344);
      v191 = *(v0 + 1336);

      sub_1D22BD238(v190, &unk_1EC6DE5A0);
      sub_1D22BD238(v189, &qword_1EC6DF7A0);
      sub_1D22BD238(v191, &unk_1EC6DE5A0);
      v192 = *(v0 + 405);
      v193 = *(v0 + 1304);
      *(v193 + 16) = *(v0 + 404);
      *(v193 + 17) = v192;

      v148 = *(v0 + 8);
      goto LABEL_112;
    }

    sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
    *(v0 + 2296) = sub_1D23C7314();
    *(v0 + 2304) = sub_1D2878558();
    v194 = swift_task_alloc();
    *(v0 + 2312) = v194;
    *v194 = v0;
    v194[1] = sub_1D266F178;
    v195 = *(v0 + 1384);

    return sub_1D28421E4(v0 + 352, v195, 1);
  }

  else
  {
    (*(*(v0 + 1424) + 32))(*(v0 + 1432), *(v0 + 1472), *(v0 + 1416));
    sub_1D2877E48();
    v149 = sub_1D2877E38();
    *(v0 + 2184) = v149;
    v150 = v149;
    v151 = swift_task_alloc();
    *(v0 + 2192) = v151;
    *v151 = v0;
    v151[1] = sub_1D266D468;
    v152 = *(v0 + 1360);

    return sub_1D26722CC(v152, v150, 1);
  }
}

uint64_t sub_1D267176C()
{
  (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));
  v1 = *(v0 + 2288);
  *(v0 + 1216) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 2272);
    v4 = *(v0 + 2264);
    v5 = *(v0 + 2256);
    v6 = *(v0 + 1480);

    v7 = *(v0 + 1096);
    v8 = *(v0 + 1104);
    sub_1D2672E0C();
    swift_allocError();
    *v9 = v7;
    v9[1] = v8;
    swift_willThrow();

    sub_1D22D6D60(v5, v4);
    sub_1D22BD238(v6, &qword_1EC6DF7A0);

    v10 = *(v0 + 8);
LABEL_22:

    return v10();
  }

  sub_1D2872658();
  v11 = v1;
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 2272);
  v16 = *(v0 + 2264);
  v17 = *(v0 + 2256);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1D226E000, v12, v13, "Cannot parse recipe data wrapper to recipe with error: %@", v18, 0xCu);
    sub_1D22BD238(v19, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v19, -1, -1);
    MEMORY[0x1D38A3520](v18, -1, -1);

    sub_1D22D6D60(v17, v16);
  }

  else
  {
    sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
  }

  (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
  *(v0 + 405) = 0;
  if (*(v0 + 2008))
  {
    v22 = 0;
    v23 = *(v0 + 1776);
    v24 = *(v0 + 1376);
    v25 = *(v0 + 2000) + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v26 = *(v23 + 72);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v28 = *(v0 + 1792);
      v29 = *(v0 + 1784);
      sub_1D2672EC0(v25, v28, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v28, v29, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v31 = *(v0 + 1784);
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D2672F28(v31, *(v0 + 1392), type metadata accessor for PlaygroundImage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D27CD8A8(0, v27[2] + 1, 1, v27);
        }

        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          v27 = sub_1D27CD8A8(v32 > 1, v33 + 1, 1, v27);
        }

        v34 = *(v0 + 1392);
        v27[2] = v33 + 1;
        sub_1D2672F28(v34, v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v33, type metadata accessor for PlaygroundImage);
      }

      else
      {
        sub_1D2672F90(v31, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v22;
      v25 += v26;
    }

    while (v22 != *(v0 + 2008));
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  if (v27[2])
  {
    v35 = *(*(v0 + 1376) + 80);
    sub_1D2672EC0(v27 + ((v35 + 32) & ~v35), *(v0 + 1344), type metadata accessor for PlaygroundImage);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = *(v0 + 1376);
  v38 = *(v0 + 1368);
  v39 = *(v0 + 1344);
  v40 = *(v0 + 1336);

  (*(v37 + 56))(v39, v36, 1, v38);
  sub_1D22BD1D0(v39, v40, &unk_1EC6DE5A0);
  if ((*(v37 + 48))(v40, 1, v38) == 1)
  {
    v41 = *(v0 + 1480);
    v42 = *(v0 + 1344);
    v43 = *(v0 + 1336);

    sub_1D22BD238(v42, &unk_1EC6DE5A0);
    sub_1D22BD238(v41, &qword_1EC6DF7A0);
    sub_1D22BD238(v43, &unk_1EC6DE5A0);
    v44 = *(v0 + 405);
    v45 = *(v0 + 1304);
    *(v45 + 16) = *(v0 + 404);
    *(v45 + 17) = v44;

    v10 = *(v0 + 8);
    goto LABEL_22;
  }

  sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
  *(v0 + 2296) = sub_1D23C7314();
  *(v0 + 2304) = sub_1D2878558();
  v47 = swift_task_alloc();
  *(v0 + 2312) = v47;
  *v47 = v0;
  v47[1] = sub_1D266F178;
  v48 = *(v0 + 1384);

  return sub_1D28421E4(v0 + 352, v48, 1);
}

uint64_t sub_1D26722CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 112) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = sub_1D2873CB8();
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB560);
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = sub_1D2872488();
  *(v3 + 64) = v7;
  *(v3 + 72) = *(v7 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = sub_1D2878568();
  *(v3 + 96) = sub_1D2878558();
  type metadata accessor for CGImage(0);
  v8 = swift_task_alloc();
  *(v3 + 104) = v8;
  *v8 = v3;
  v8[1] = sub_1D2672494;

  return MEMORY[0x1EEDC93C0](v6, a2);
}

uint64_t sub_1D2672494()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D26725D0, v1, v0);
}

uint64_t sub_1D26725D0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 56), &qword_1EC6DB560);
    sub_1D2872658();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Cannot resize native image into CGImage", v6, 2u);
      MEMORY[0x1D38A3520](v6, -1, -1);
    }

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    (*(v8 + 8))(v7, v9);
    v11 = type metadata accessor for PlaygroundImage();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = *(v0 + 112);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    (*(v13 + 32))(v12, *(v0 + 56), v14);
    v18 = sub_1D2872478();
    v19 = type metadata accessor for PlaygroundImage();
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    v20 = (v16 + v19[9]);
    *v20 = 0u;
    v20[1] = 0u;
    *(v16 + v19[10]) = xmmword_1D28809A0;
    v21 = v19[11];
    v22 = sub_1D2873AA8();
    (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
    *v16 = v18;
    *(v16 + 8) = 3;
    *(v16 + 24) = 1;
    *(v16 + 16) = 0;
    *(v16 + v19[12]) = v15;
    v23 = v18;
    sub_1D2871808();

    (*(v13 + 8))(v12, v14);
    (*(*(v19 - 1) + 56))(v16, 0, 1, v19);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D26728B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D2872378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872388();
  v9 = (*(v3 + 88))(v5, v2);
  if (v9 == *MEMORY[0x1E696E480])
  {
    (*(v3 + 96))(v5, v2);
    v10 = sub_1D2871818();
    v11 = *(v10 - 8);
    (*(v11 + 32))(v8, v5, v10);
    (*(v11 + 56))(v8, 0, 2, v10);
  }

  else if (v9 == *MEMORY[0x1E696E488])
  {
    v12 = sub_1D2871818();
    (*(*(v12 - 8) + 56))(v8, 1, 2, v12);
  }

  else
  {
    v13 = *MEMORY[0x1E696E490];
    v14 = v9;
    v15 = sub_1D2871818();
    (*(*(v15 - 8) + 56))(v8, 2, 2, v15);
    if (v14 != v13)
    {
      (*(v3 + 8))(v5, v2);
    }
  }

  v16 = sub_1D28723A8();
  v18 = v17;
  v19 = type metadata accessor for IdentifiedEntity(0);
  sub_1D2672EC0(v8, a1 + *(v19 + 20), type metadata accessor for IdentifiedEntity.Kind);
  sub_1D28723B8();
  sub_1D2872368();
  v20 = sub_1D28721D8();
  v22 = v21;

  result = sub_1D2672F90(v8, type metadata accessor for IdentifiedEntity.Kind);
  *a1 = v16;
  a1[1] = v18;
  v24 = (a1 + *(v19 + 24));
  *v24 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_1D2672BFC(uint64_t a1)
{
  sub_1D22D7044(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D22BD238(&v12, &qword_1EC6D9A58);
    sub_1D28722B8();
    goto LABEL_9;
  }

  v1 = *(&v13 + 1);
  v2 = v14;
  __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v6 = sub_1D28722B8();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_1D2879618();
  }

LABEL_10:

  return v9 & 1;
}

uint64_t sub_1D2672D60()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D2672E0C()
{
  result = qword_1EC6DF798;
  if (!qword_1EC6DF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF798);
  }

  return result;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2672E78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2672EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2672F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2672F90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2672FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D2783B48(a1, v4, v5, v6, v7, v8);
}

uint64_t CreationContext.__allocating_init(defaultStyle:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CreationContext.init(defaultStyle:)(a1);
  return v2;
}

uint64_t sub_1D2673120()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25[-v5 - 8];
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v8 = *(*(v0 + v7) + 16) != 0;
  v9 = sub_1D27D8C8C();
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  if ((v9 & 1) == 0)
  {
    swift_beginAccess();
    if (*(v0 + v10))
    {
      return 1;
    }

    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    sub_1D22BD1D0(v0 + v14, v4, &qword_1EC6DA2C8);
    v15 = type metadata accessor for SceneConditioningImage();
    v16 = (*(*(v15 - 8) + 48))(v4, 1, v15);
    v17 = v4;
LABEL_8:
    sub_1D22BD238(v17, &qword_1EC6DA2C8);
    if (v16 == 1)
    {
      goto LABEL_9;
    }

    return 1;
  }

  swift_beginAccess();
  v11 = *(v0 + v10);
  if (!v11)
  {
    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    sub_1D22BD1D0(v0 + v18, v6, &qword_1EC6DA2C8);
    v19 = type metadata accessor for SceneConditioningImage();
    v16 = (*(*(v19 - 8) + 48))(v6, 1, v19);
    v17 = v6;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_1D2878BF8();

  if (v13)
  {
    return 1;
  }

LABEL_9:
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v20, v25, &qword_1EC6D9A58);
  v21 = v26;
  sub_1D22BD238(v25, &qword_1EC6D9A58);
  if (v21)
  {
    return 1;
  }

  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  if (*(*(v0 + v22) + 16))
  {
    return 1;
  }

  return v8;
}

uint64_t sub_1D2673418()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt(0);
  v65 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CuratedPrompt();
  v64 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_1D2872008();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SketchConditioningImage();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SceneConditioningImage();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  if ((*(v14 + 48))(v1 + v17, 1, v13))
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    sub_1D26784A4(v1 + v17, v16, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage();
    v18 = sub_1D28717B8();
    v19 = v20;
    sub_1D2678444(v16, type metadata accessor for SceneConditioningImage);
  }

  v74 = v18;
  v75 = v19;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  if ((*(v10 + 48))(v1 + v21, 1, v9))
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    sub_1D26784A4(v1 + v21, v12, type metadata accessor for SketchConditioningImage);
    type metadata accessor for PlaygroundImage();
    v24 = sub_1D28717B8();
    v23 = v25;
    sub_1D2678444(v12, type metadata accessor for SketchConditioningImage);
    v22 = v24;
  }

  MEMORY[0x1D38A0C50](v22, v23);

  v26 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson);
  swift_beginAccess();
  v27 = v26[3];
  v28 = 0xE000000000000000;
  if (v27)
  {
    v29 = v26[4];
    v30 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v31 = *(v27 - 8);
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v33);
    v34 = (*(*(*(v29 + 8) + 8) + 16))(v27);
    v36 = v35;
    (*(v31 + 8))(v33, v27);
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  MEMORY[0x1D38A0C50](v34, v36);

  v37 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v38 = v67;
  v39 = v1 + v37;
  v40 = v66;
  v41 = v68;
  (*(v67 + 16))(v66, v39, v68);
  v42 = sub_1D2871F98();
  v44 = v43;
  (*(v38 + 8))(v40, v41);
  MEMORY[0x1D38A0C50](v42, v44);

  v45 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v68 = v1;
  v46 = *(v1 + v45);
  v70 = 0;
  v71 = 0xE000000000000000;
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v46 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v49 = *(v64 + 72);
    v67 = v46;
    sub_1D2870F68();
    do
    {
      sub_1D26784A4(v48, v7, type metadata accessor for CuratedPrompt);
      v50 = v7[1];
      v72 = *v7;
      v73 = v50;
      sub_1D2870F68();
      v51 = sub_1D28782E8();
      MEMORY[0x1D38A0C50](v51);

      sub_1D2678444(v7, type metadata accessor for CuratedPrompt);
      v48 += v49;
      --v47;
    }

    while (v47);

    v52 = v70;
    v28 = v71;
  }

  else
  {
    v52 = 0;
  }

  MEMORY[0x1D38A0C50](v52, v28);

  v53 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  v54 = v68;
  swift_beginAccess();
  v55 = *(v54 + v53);
  v56 = 0xE000000000000000;
  v72 = 0;
  v73 = 0xE000000000000000;
  v57 = *(v55 + 16);
  if (v57)
  {
    v58 = v55 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v59 = *(v65 + 72);
    sub_1D2870F68();
    do
    {
      sub_1D26784A4(v58, v4, type metadata accessor for Prompt);
      v69 = *v4;
      v60 = sub_1D28795C8();
      MEMORY[0x1D38A0C50](v60);

      sub_1D2678444(v4, type metadata accessor for Prompt);
      v58 += v59;
      --v57;
    }

    while (v57);

    v61 = v72;
    v56 = v73;
  }

  else
  {
    v61 = 0;
  }

  MEMORY[0x1D38A0C50](v61, v56);

  return v74;
}

BOOL sub_1D2673C1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v7, v6, &qword_1EC6DA2C8);
  v8 = type metadata accessor for SceneConditioningImage();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_1D22BD238(v6, &qword_1EC6DA2C8);
  if (v7 != 1)
  {
    return 0;
  }

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v9, v3, &qword_1EC6DA200);
  v10 = type metadata accessor for SketchConditioningImage();
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v3, 1, v10);
  sub_1D22BD238(v3, &qword_1EC6DA200);
  if (v9 != 1)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  if (*(v0 + v11))
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v12, v18, &qword_1EC6D9A58);
  v13 = v19;
  sub_1D22BD238(v18, &qword_1EC6D9A58);
  if (v13)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription + 8))
  {
    return 0;
  }

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  if (*(*(v0 + v14) + 16))
  {
    return 0;
  }

  v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  return *(*(v0 + v16) + 16) == 0;
}

uint64_t sub_1D2673EFC()
{
  v1 = type metadata accessor for CuratedPrompt();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v39 = v0;
    v40 = v2;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v11, 0);
    v12 = v42;
    v13 = *(v6 + 80);
    v38 = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = *(v6 + 72);
    do
    {
      sub_1D26784A4(v14, v8, type metadata accessor for Prompt);
      v16 = *(v8 + 1);
      v17 = *(v8 + 2);
      sub_1D2870F68();
      sub_1D2678444(v8, type metadata accessor for Prompt);
      v42 = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D23D81B8((v18 > 1), v19 + 1, 1);
        v12 = v42;
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v14 += v15;
      --v11;
    }

    while (v11);

    v0 = v39;
    v2 = v40;
  }

  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v22 = *(v0 + v21);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v23, 0);
    v24 = v41;
    v25 = *(v2 + 80);
    v40 = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v2 + 72);
    do
    {
      sub_1D26784A4(v26, v4, type metadata accessor for CuratedPrompt);
      v29 = *(v4 + 2);
      v28 = *(v4 + 3);
      sub_1D2870F68();
      sub_1D2678444(v4, type metadata accessor for CuratedPrompt);
      v41 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D23D81B8((v30 > 1), v31 + 1, 1);
        v24 = v41;
      }

      *(v24 + 16) = v31 + 1;
      v32 = v24 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v26 += v27;
      --v23;
    }

    while (v23);
  }

  v41 = v12;
  sub_1D274DC9C(v24);
  v33 = objc_opt_self();
  v34 = sub_1D28783C8();

  v35 = [v33 localizedStringByJoiningStrings_];

  v36 = sub_1D28780A8();
  return v36;
}