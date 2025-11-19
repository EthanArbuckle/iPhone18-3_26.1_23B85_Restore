void sub_224CDA95C(uint64_t *a1, uint64_t a2, void *a3)
{
  v371 = a2;
  v348 = type metadata accessor for ReloadRequestKey();
  v5 = *(*(v348 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v348);
  v342 = &v339 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v341 = &v339 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v343 = &v339 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v346 = &v339 - v13;
  MEMORY[0x28223BE20](v12);
  v353 = &v339 - v14;
  v15 = sub_224DACB98();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v365 = &v339 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = sub_224DACB08();
  v359 = *(v360 - 8);
  v18 = *(v359 + 64);
  MEMORY[0x28223BE20](v360);
  v363 = &v339 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DACB28();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v361 = &v339 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_224DACC88();
  v364 = *(v367 - 8);
  v23 = *(v364 + 64);
  MEMORY[0x28223BE20](v367);
  v362 = &v339 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v354 = &v339 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v366 = &v339 - v30;
  MEMORY[0x28223BE20](v29);
  v375 = (&v339 - v31);
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v380 = *(v377 - 8);
  v32 = *(v380 + 64);
  v33 = MEMORY[0x28223BE20](v377);
  v352 = &v339 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v339 - v35;
  v37 = sub_224DABE18();
  v38 = *(v37 - 8);
  v39 = v38[8];
  v40 = MEMORY[0x28223BE20](v37);
  v355 = &v339 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v351 = &v339 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v347 = &v339 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v345 = &v339 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v344 = &v339 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v350 = &v339 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v349 = &v339 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v358 = &v339 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v357 = &v339 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v60 = &v339 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v339 - v61;
  v63 = qword_2813548B8;
  v64 = v38[2];
  v64(&v339 - v61, a1, v37);
  v379 = a1;
  v369 = v38 + 2;
  v368 = v64;
  v64(v60, a1, v37);
  v65 = a3;
  v66 = v378;
  v372 = v63;
  v67 = sub_224DAB228();
  v68 = sub_224DAF278();

  v69 = os_log_type_enabled(v67, v68);
  v374 = v37;
  v373 = v38;
  v376 = v36;
  v356 = v65;
  if (v69)
  {
    v340 = v68;
    v70 = 0x6E776F6E6B6E75;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v339 = swift_slowAlloc();
    v381 = v339;
    *v71 = 136446978;
    v73 = a3;
    if (a3)
    {
      v74 = [v65 description];
      v75 = sub_224DAEE18();
      v77 = v76;

      v78 = sub_224A33F74(v75, v77, &v381);

      *(v71 + 4) = v78;
      *(v71 + 12) = 2082;
      v79 = [v65 bundleIdentifier];
      v80 = v373;
      if (v79)
      {
        v81 = v79;
        v70 = sub_224DAEE18();
        v83 = v82;
      }

      else
      {
        v83 = 0xE700000000000000;
        v70 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v83 = 0xE700000000000000;
      v87 = sub_224A33F74(0x6E776F6E6B6E75, 0xE700000000000000, &v381);

      *(v71 + 4) = v87;
      *(v71 + 12) = 2082;
      v80 = v373;
    }

    v88 = sub_224A33F74(v70, v83, &v381);

    *(v71 + 14) = v88;
    *(v71 + 22) = 2114;
    v89 = sub_224DABDB8();
    v90 = v80[1];
    v91 = v62;
    v92 = v374;
    v90(v91, v374);
    *(v71 + 24) = v89;
    *v72 = v89;
    *(v71 + 32) = 2082;
    v93 = sub_224DABDD8();
    v95 = v94;
    v370 = v90;
    v90(v60, v92);
    v96 = sub_224A33F74(v93, v95, &v381);

    *(v71 + 34) = v96;
    _os_log_impl(&dword_224A2F000, v67, v340, "Evaluate reload request from %{public}s:%{public}s for %{public}@:%{public}s.", v71, 0x2Au);
    sub_224A3311C(v72, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v72, -1, -1);
    v97 = v339;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v97, -1, -1);
    MEMORY[0x22AA5EED0](v71, -1, -1);

    v86 = v380;
    v85 = v377;
    v36 = v376;
    v66 = v378;
  }

  else
  {

    v84 = v38[1];
    v84(v60, v37);
    v370 = v84;
    v84(v62, v37);
    v85 = v377;
    v73 = a3;
    v86 = v380;
  }

  v98 = v379;
  v99 = sub_224DABDB8();
  v100 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v101 = v99 + v100;
  v102 = v375;
  sub_224A3796C(v101, v375, &unk_27D6F5060, &qword_224DB5620);

  v103 = *(v86 + 48);
  if (v103(v102, 1, v85) == 1)
  {
    sub_224A3311C(v102, &unk_27D6F5060, &qword_224DB5620);
    return;
  }

  v375 = *(v86 + 32);
  (v375)(v36, v102, v85);
  v388 = 0;
  v389 = 1;
  v104 = __swift_project_boxed_opaque_existential_1((v66 + qword_281354958), *(v66 + qword_281354958 + 24));
  v105 = sub_224DABDB8();
  v106 = *v104;
  sub_224A42660(v105, &v388);

  if (v389)
  {
    v107 = &unk_281365000;
    if (v73)
    {
      v108 = [v356 bundleIdentifier];
      if (v108)
      {
        v109 = v108;
        v358 = sub_224DAEE18();
        v111 = v110;

        v112 = v66 + qword_2813651F0;
        swift_beginAccess();
        if (*(v112 + 24))
        {
          sub_224A3317C(v112, &v381);
          v113 = v382;
          v114 = v111;
          v115 = v383;
          __swift_project_boxed_opaque_existential_1(&v381, v382);
          v116 = sub_224DABDD8();
          v117 = *(v115 + 8);
          v85 = v377;
          v118 = v113;
          v119 = v379;
          v120 = v115;
          v121 = v114;
          v123 = v117(v358, v114, v116, v122, v118, v120);
          v107 = &unk_281365000;

          __swift_destroy_boxed_opaque_existential_1(&v381);
          if (v123)
          {
            v124 = v358;
            v125 = v347;
            v126 = v374;
            v368(v347, v119, v374);

            v127 = sub_224DAB228();
            v128 = sub_224DAF278();

            if (os_log_type_enabled(v127, v128))
            {
              v129 = v121;
              v130 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              v381 = v131;
              *v130 = 136446466;
              v132 = sub_224DABDD8();
              v134 = v133;
              v370(v125, v126);
              v135 = sub_224A33F74(v132, v134, &v381);

              *(v130 + 4) = v135;
              *(v130 + 12) = 2082;
              v136 = sub_224A33F74(v124, v129, &v381);

              *(v130 + 14) = v136;
              _os_log_impl(&dword_224A2F000, v127, v128, "Allowing security critical [%{public}s] from %{public}s.", v130, 0x16u);
              swift_arrayDestroy();
              v137 = v131;
              v138 = v380;
              MEMORY[0x22AA5EED0](v137, -1, -1);
              MEMORY[0x22AA5EED0](v130, -1, -1);
            }

            else
            {

              v370(v125, v126);
              v138 = v380;
            }

            v288 = v364;
            v289 = v362;
            v290 = v367;
            (*(v364 + 32))(v362, v371, v367);
            sub_224DACC58();
            (*(v359 + 104))(v363, *MEMORY[0x277CF9B40], v360);
            sub_224DACC68();
            sub_224DACBB8();
            sub_224DACBD8();
            sub_224DACC28();
            sub_224DACC18();
            (*(v288 + 8))(v289, v290);
            (*(v138 + 8))(v376, v377);
            return;
          }
        }
      }
    }

    v169 = v66 + v107[62];
    swift_beginAccess();
    if (*(v169 + 24))
    {
      sub_224A3317C(v169, &v381);
      v170 = v382;
      v171 = v383;
      __swift_project_boxed_opaque_existential_1(&v381, v382);
      v172 = sub_224DABDB8();
      v173 = sub_224DABDD8();
      LOBYTE(v170) = (*(v171 + 16))(v172, v173, v174, v170, v171);

      v85 = v377;

      __swift_destroy_boxed_opaque_existential_1(&v381);
      if (v170)
      {
        v175 = v351;
        v176 = v379;
        v177 = v374;
        v178 = v368;
        v368(v351, v379, v374);
        v179 = v355;
        v178(v355, v176, v177);
        v180 = sub_224DAB228();
        v181 = sub_224DAF278();
        if (os_log_type_enabled(v180, v181))
        {
          v182 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v387 = v183;
          *v182 = 136446466;
          v184 = sub_224DABDB8();
          v185 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v186 = sub_224DA9FE8();
          v188 = v187;
          swift_endAccess();

          v189 = v175;
          v190 = v370;
          v370(v189, v177);
          v191 = sub_224A33F74(v186, v188, &v387);

          *(v182 + 4) = v191;
          *(v182 + 12) = 2082;
          v192 = v355;
          v193 = sub_224DABDD8();
          v195 = v194;
          v190(v192, v177);
          v196 = sub_224A33F74(v193, v195, &v387);
          v85 = v377;

          *(v182 + 14) = v196;
          _os_log_impl(&dword_224A2F000, v180, v181, "Allowing free reload for %{public}s: [%{public}s] because widget is visible.", v182, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v183, -1, -1);
          MEMORY[0x22AA5EED0](v182, -1, -1);
        }

        else
        {

          v232 = v370;
          v370(v179, v177);
          v232(v175, v177);
        }

        v233 = v364;
        v234 = v362;
        v235 = v367;
        (*(v364 + 32))(v362, v371, v367);
        sub_224DACC58();
        (*(v359 + 104))(v363, *MEMORY[0x277CF9B40], v360);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v233 + 8))(v234, v235);
        goto LABEL_46;
      }
    }

LABEL_32:
    if (*(v66 + qword_2813549F0) && (sub_224CE2040(v379, v371) & 1) != 0)
    {
      sub_224AA33EC(&unk_283833538, sub_224CE3610, &block_descriptor_47);
      goto LABEL_46;
    }

    v197 = *(v66 + qword_2813548C8);
    if (v197 && sub_224CE05A8(v379) != 2)
    {
      goto LABEL_46;
    }

    v373 = *(v380 + 56);
    (v373)(v366, 1, 1, v85);
    v198 = __swift_project_boxed_opaque_existential_1((*(v66 + qword_2813548D0) + 24), *(*(v66 + qword_2813548D0) + 48));
    v199 = *v198;
    v200 = *(*v198 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
    os_unfair_lock_lock(*(v200 + 16));
    v201 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v202 = *(v199 + v201);
    v203 = *(v200 + 16);

    os_unfair_lock_unlock(v203);
    v204 = v376;
    LODWORD(v374) = sub_224A33718(v376, v202, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

    if (v197)
    {
      v205 = __swift_project_boxed_opaque_existential_1((v197 + 16), *(v197 + 40));
      v206 = *v205;
      v207 = *(*v205 + 24);
      v208 = *(v207 + 16);

      os_unfair_lock_lock(v208);
      v209 = swift_beginAccess();
      v210 = *(v206 + 32);
      MEMORY[0x28223BE20](v209);
      *(&v339 - 2) = v204;

      sub_224AA3B30(sub_224C4E084, (&v339 - 4), v210);
      v212 = v211;

      v85 = v377;
      os_unfair_lock_unlock(*(v207 + 16));

      v213 = v366;
      if ((v374 & 1) == 0 && !v212)
      {
LABEL_49:
        v236 = v354;
        sub_224A3796C(v213, v354, &unk_27D6F5060, &qword_224DB5620);
        if (v103(v236, 1, v85) == 1)
        {
          sub_224A3311C(v213, &unk_27D6F5060, &qword_224DB5620);
          (*(v380 + 8))(v376, v85);
          sub_224A3311C(v236, &unk_27D6F5060, &qword_224DB5620);
          return;
        }

        v237 = v352;
        (v375)(v352, v236, v85);
        v238 = qword_2813549E8;
        swift_beginAccess();
        v375 = v238;
        v239 = *&v238[v66];
        if (*(v239 + 16) && (v240 = sub_224A89A08(v237), (v241 & 1) != 0))
        {
          v242 = *(*(v239 + 56) + 8 * v240);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v242 = MEMORY[0x277D84F98];
        }

        v243 = v353;
        v244 = v348;
        v245 = sub_224DABDB8();
        v246 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        (*(*(v247 - 8) + 16))(v243, &v245[v246], v247);

        v248 = sub_224DABDD8();
        v249 = (v243 + *(v244 + 20));
        *v249 = v248;
        v249[1] = v250;
        v251 = v242[2];
        v379 = v242;
        if (v251 && (v252 = sub_224B0B4A0(v243), (v253 & 1) != 0))
        {
          v254 = *(v242[7] + 8 * v252);
          v255 = *(v66 + 16);
          swift_retain_n();
          BSContinuousMachTimeNow();
          v257 = v256;
          v258 = *(v254 + 16);
          v374 = v254;

          if (v255 >= vabdd_f64(v257, v258))
          {
            v303 = v342;
            sub_224CE35AC(v243, v342);
            v304 = sub_224DAB228();
            v305 = sub_224DAF2A8();
            if (os_log_type_enabled(v304, v305))
            {
              v306 = swift_slowAlloc();
              v307 = swift_slowAlloc();
              v384 = v307;
              *v306 = 136446210;
              v308 = v244;
              v309 = v343;
              sub_224CE35AC(v303, v343);
              sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
              v385 = sub_224DAFD28();
              v386 = v310;
              MEMORY[0x22AA5D210](45, 0xE100000000000000);
              MEMORY[0x22AA5D210](*(v309 + *(v308 + 20)), *(v309 + *(v308 + 20) + 8));
              v311 = v385;
              v312 = v386;
              sub_224B30FEC(v303);
              sub_224B30FEC(v309);
              v313 = sub_224A33F74(v311, v312, &v384);

              *(v306 + 4) = v313;
              _os_log_impl(&dword_224A2F000, v304, v305, "%{public}s - Throttling additional refresh request while foreground.", v306, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v307);
              v314 = v307;
              v243 = v353;
              MEMORY[0x22AA5EED0](v314, -1, -1);
              v315 = v306;
              v85 = v377;
              MEMORY[0x22AA5EED0](v315, -1, -1);
            }

            else
            {

              sub_224B30FEC(v303);
            }

            v301 = v380;
            v328 = v374;
            v329 = *(v374 + 24);
            v330 = __OFADD__(v329, 1);
            v331 = v329 + 1;
            v332 = v378;
            v333 = v379;
            if (v330)
            {
              __break(1u);
              return;
            }

            *(v374 + 24) = v331;
            swift_retain_n();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v385 = v333;
            sub_224B1F91C(v328, v243, isUniquelyReferenced_nonNull_native);
            v335 = v385;
            v336 = v375;
            swift_beginAccess();

            v337 = *&v336[v332];
            v338 = swift_isUniquelyReferenced_nonNull_native();
            v384 = *&v336[v332];
            *&v336[v332] = 0x8000000000000000;
            sub_224B1F908(v335, v237, v338);
            *&v336[v332] = v384;
            swift_endAccess();
          }

          else
          {
            v259 = v341;
            sub_224CE35AC(v243, v341);
            v260 = sub_224DAB228();
            v261 = sub_224DAF2A8();
            if (os_log_type_enabled(v260, v261))
            {
              v262 = swift_slowAlloc();
              v263 = swift_slowAlloc();
              v384 = v263;
              *v262 = 136446210;
              v264 = v343;
              sub_224CE35AC(v259, v343);
              sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
              v385 = sub_224DAFD28();
              v386 = v265;
              MEMORY[0x22AA5D210](45, 0xE100000000000000);
              MEMORY[0x22AA5D210](*(v264 + *(v244 + 20)), *(v264 + *(v244 + 20) + 8));
              v266 = v385;
              v267 = v386;
              sub_224B30FEC(v259);
              sub_224B30FEC(v264);
              v268 = sub_224A33F74(v266, v267, &v384);

              *(v262 + 4) = v268;
              _os_log_impl(&dword_224A2F000, v260, v261, "%{public}s - Allowing subsequent refresh after throttle interval.", v262, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v263);
              MEMORY[0x22AA5EED0](v263, -1, -1);
              v269 = v262;
              v85 = v377;
              MEMORY[0x22AA5EED0](v269, -1, -1);
            }

            else
            {

              sub_224B30FEC(v259);
            }

            v316 = v364;
            v317 = v362;
            v318 = v367;
            (*(v364 + 32))(v362, v371, v367);
            sub_224DACC58();
            (*(v359 + 104))(v363, *MEMORY[0x277CF9B40], v360);
            sub_224DACC68();
            sub_224DACBB8();
            sub_224DACBD8();
            sub_224DACC28();
            sub_224DACC18();
            (*(v316 + 8))(v317, v318);
            type metadata accessor for ReloadInfo();
            v319 = swift_allocObject();
            *(v319 + 24) = 0;
            BSContinuousMachTimeNow();
            *(v319 + 16) = v320;
            *(v319 + 24) = 0;
            v321 = v379;
            v322 = swift_isUniquelyReferenced_nonNull_native();
            v385 = v321;
            v243 = v353;
            sub_224B1F91C(v319, v353, v322);
            v323 = v385;
            v324 = v378;
            v325 = v375;
            swift_beginAccess();

            v326 = *&v325[v324];
            v327 = swift_isUniquelyReferenced_nonNull_native();
            v384 = *&v325[v324];
            *&v325[v324] = 0x8000000000000000;
            v237 = v352;
            sub_224B1F908(v323, v352, v327);
            *&v325[v324] = v384;
            swift_endAccess();
            v301 = v380;
          }
        }

        else
        {
          v270 = v85;
          v271 = v243;
          v272 = v346;
          sub_224CE35AC(v271, v346);
          v273 = sub_224DAB228();
          v274 = sub_224DAF2A8();
          if (os_log_type_enabled(v273, v274))
          {
            v275 = swift_slowAlloc();
            v276 = swift_slowAlloc();
            v384 = v276;
            *v275 = 136446210;
            v277 = v272;
            v278 = v272;
            v279 = v343;
            sub_224CE35AC(v277, v343);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
            v385 = sub_224DAFD28();
            v386 = v280;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*(v279 + *(v244 + 20)), *(v279 + *(v244 + 20) + 8));
            v281 = v385;
            v282 = v386;
            sub_224B30FEC(v278);
            sub_224B30FEC(v279);
            v283 = sub_224A33F74(v281, v282, &v384);

            *(v275 + 4) = v283;
            _os_log_impl(&dword_224A2F000, v273, v274, "%{public}s - Allowing first refresh while foreground.", v275, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v276);
            v284 = v276;
            v66 = v378;
            MEMORY[0x22AA5EED0](v284, -1, -1);
            MEMORY[0x22AA5EED0](v275, -1, -1);
          }

          else
          {

            sub_224B30FEC(v272);
          }

          v85 = v270;
          v291 = v364;
          v292 = v362;
          (*(v364 + 32))(v362, v371, v367);
          sub_224DACC58();
          (*(v359 + 104))(v363, *MEMORY[0x277CF9B40], v360);
          sub_224DACC68();
          sub_224DACBB8();
          sub_224DACBD8();
          sub_224DACC28();
          sub_224DACC18();
          (*(v291 + 8))(v292, v367);
          type metadata accessor for ReloadInfo();
          v293 = swift_allocObject();
          *(v293 + 24) = 0;
          BSContinuousMachTimeNow();
          *(v293 + 16) = v294;
          *(v293 + 24) = 0;
          v295 = v379;
          v296 = swift_isUniquelyReferenced_nonNull_native();
          v385 = v295;
          v243 = v353;
          sub_224B1F91C(v293, v353, v296);
          v297 = v385;
          v298 = v375;
          swift_beginAccess();

          v299 = *&v298[v66];
          v300 = swift_isUniquelyReferenced_nonNull_native();
          v384 = *&v298[v66];
          *&v298[v66] = 0x8000000000000000;
          v237 = v352;
          sub_224B1F908(v297, v352, v300);
          *&v298[v66] = v384;
          swift_endAccess();
          v301 = v380;
        }

        sub_224AA33EC(&unk_283833538, sub_224CE3610, &block_descriptor_47);

        sub_224B30FEC(v243);
        v302 = *(v301 + 8);
        v302(v237, v85);
        sub_224A3311C(v366, &unk_27D6F5060, &qword_224DB5620);
        v302(v376, v85);

        return;
      }
    }

    else
    {
      v213 = v366;
      if ((v374 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    sub_224A3311C(v213, &unk_27D6F5060, &qword_224DB5620);
    (*(v380 + 16))(v213, v376, v85);
    (v373)(v213, 0, 1, v85);
    goto LABEL_49;
  }

  if ((v388 & 6) != 0)
  {
    v139 = v357;
    v140 = v374;
    v141 = v368;
    v368(v357, v98, v374);
    v142 = v358;
    v141(v358, v98, v140);
    v143 = sub_224DAB228();
    v144 = sub_224DAF2A8();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      v381 = v379;
      *v145 = 138543618;
      v147 = sub_224DABDB8();
      v148 = v139;
      v149 = v370;
      v370(v148, v140);
      *(v145 + 4) = v147;
      *v146 = v147;
      *(v145 + 12) = 2082;
      v150 = sub_224DABDD8();
      v151 = v140;
      v152 = v380;
      v154 = v153;
      v149(v142, v151);
      v155 = sub_224A33F74(v150, v154, &v381);

      *(v145 + 14) = v155;
      v156 = "Allowing on-going device session for %{public}@ %{public}s";
LABEL_21:
      _os_log_impl(&dword_224A2F000, v143, v144, v156, v145, 0x16u);
      sub_224A3311C(v146, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v146, -1, -1);
      v157 = v379;
      __swift_destroy_boxed_opaque_existential_1(v379);
      MEMORY[0x22AA5EED0](v157, -1, -1);
      MEMORY[0x22AA5EED0](v145, -1, -1);

      (*(v152 + 8))(v376, v377);
      return;
    }

    goto LABEL_26;
  }

  if ((v388 & 0x20) == 0)
  {
    if ((v388 & 8) == 0)
    {
      goto LABEL_32;
    }

    v139 = v344;
    v158 = v379;
    v140 = v374;
    v159 = v368;
    v368(v344, v379, v374);
    v142 = v345;
    v159(v345, v158, v140);
    v143 = sub_224DAB228();
    v144 = sub_224DAF2A8();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      v381 = v379;
      *v145 = 138543618;
      v160 = sub_224DABDB8();
      v161 = v139;
      v162 = v370;
      v370(v161, v140);
      *(v145 + 4) = v160;
      *v146 = v160;
      *(v145 + 12) = 2082;
      v163 = sub_224DABDD8();
      v164 = v140;
      v152 = v380;
      v166 = v165;
      v162(v142, v164);
      v167 = sub_224A33F74(v163, v166, &v381);

      *(v145 + 14) = v167;
      v156 = "Allowing reload because extension has active keep-alive assertion for  %{public}@ %{public}s.";
      goto LABEL_21;
    }

LABEL_26:

    v168 = v370;
    v370(v142, v140);
    v168(v139, v140);
LABEL_46:
    (*(v380 + 8))(v376, v85);
    return;
  }

  v214 = v349;
  v215 = v374;
  v216 = v368;
  v368(v349, v98, v374);
  v217 = v350;
  v216(v350, v98, v215);
  v218 = sub_224DAB228();
  v219 = sub_224DAF2A8();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v379 = swift_slowAlloc();
    v381 = v379;
    *v220 = 138543618;
    v222 = sub_224DABDB8();
    v223 = v214;
    v224 = v370;
    v370(v223, v215);
    *(v220 + 4) = v222;
    *v221 = v222;
    *(v220 + 12) = 2082;
    v225 = sub_224DABDD8();
    v227 = v226;
    v224(v217, v215);
    v228 = sub_224A33F74(v225, v227, &v381);
    v229 = v380;

    *(v220 + 14) = v228;
    _os_log_impl(&dword_224A2F000, v218, v219, "Allowing reload because an intent recently ran for the extension: %{public}@ %{public}s.", v220, 0x16u);
    sub_224A3311C(v221, &unk_27D6F69F0, &unk_224DB3900);
    v230 = v221;
    v85 = v377;
    MEMORY[0x22AA5EED0](v230, -1, -1);
    v231 = v379;
    __swift_destroy_boxed_opaque_existential_1(v379);
    MEMORY[0x22AA5EED0](v231, -1, -1);
    MEMORY[0x22AA5EED0](v220, -1, -1);
  }

  else
  {

    v285 = v370;
    v370(v217, v215);
    v285(v214, v215);
    v229 = v380;
  }

  v286 = v364;
  v287 = v362;
  (*(v364 + 32))(v362, v371, v367);
  sub_224DACC58();
  (*(v359 + 104))(v363, *MEMORY[0x277CF9B40], v360);
  sub_224DACC68();
  sub_224DACBB8();
  sub_224DACBD8();
  sub_224DACC28();
  sub_224DACC18();
  (*(v286 + 8))(v287, v367);
  (*(v229 + 8))(v376, v85);
}

uint64_t sub_224CDD2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a4;
  v78 = a5;
  v75 = a2;
  v76 = a3;
  v7 = type metadata accessor for ReloadRequestKey();
  v79 = *(v7 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D6F62E8, &qword_224DBF298);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v21 = qword_2813651F0;
  swift_beginAccess();
  sub_224A3796C(v5 + v21, &v88, &qword_27D6F54B0, &unk_224DBF2A0);
  v22 = v90;
  result = sub_224A3311C(&v88, &qword_27D6F54B0, &unk_224DBF2A0);
  if (v22)
  {
    v73 = v7;
    v85 = v5;
    v82 = v20;
    v24 = a1 + 64;
    v25 = 1 << *(a1 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(a1 + 64);
    v72 = qword_2813548B8;
    v28 = (v25 + 63) >> 6;
    v71 = "ter - throttled reload";
    v80 = a1;

    v29 = 0;
    v30 = &qword_27D6F62C0;
    *&v31 = 136446210;
    v66 = v31;
    v32 = v84;
    v86 = v18;
    while (v27)
    {
      v34 = v29;
LABEL_18:
      v37 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v38 = v37 | (v34 << 6);
      v39 = v80;
      v40 = v83;
      sub_224CE35AC(*(v80 + 48) + *(v79 + 72) * v38, v83);
      v41 = *(*(v39 + 56) + 8 * v38);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, &qword_224DBF268);
      v43 = *(v42 + 48);
      v44 = v40;
      v18 = v86;
      sub_224CE3B5C(v44, v86);
      *&v18[v43] = v41;
      (*(*(v42 - 8) + 56))(v18, 0, 1, v42);

      v32 = v84;
LABEL_19:
      v45 = v30;
      v46 = v82;
      sub_224A44E4C(v18, v82, qword_27D6F62E8, &qword_224DBF298);
      v47 = v45;
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, &qword_224DBF268);
      if ((*(*(v48 - 8) + 48))(v46, 1, v48) == 1)
      {
      }

      v49 = *(v46 + *(v48 + 48));
      sub_224CE3B5C(v46, v32);
      v30 = v47;
      if (*(v49 + 24) > 0)
      {
        v50 = v74;
        sub_224CE35AC(v32, v74);
        v51 = sub_224DAB228();
        v81 = sub_224DAF2A8();
        if (os_log_type_enabled(v51, v81))
        {
          v52 = swift_slowAlloc();
          v67 = v52;
          v69 = swift_slowAlloc();
          v87 = v69;
          *v52 = v66;
          v53 = v83;
          sub_224CE35AC(v50, v83);
          v68 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          v70 = v49;
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
          v88 = sub_224DAFD28();
          v89 = v54;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          v55 = v50;
          v33 = v73;
          MEMORY[0x22AA5D210](*(v53 + *(v73 + 20)), *(v53 + *(v73 + 20) + 8));
          v56 = v88;
          v57 = v89;
          v58 = v55;
          v32 = v84;
          sub_224B30FEC(v58);
          sub_224B30FEC(v53);
          v59 = sub_224A33F74(v56, v57, &v87);

          v60 = v67;
          *(v67 + 1) = v59;
          v61 = v68;
          v62 = v60;
          _os_log_impl(&dword_224A2F000, v68, v81, "%{public}s - Flushing pending reload request due to background transition.", v60, 0xCu);
          v63 = v69;
          __swift_destroy_boxed_opaque_existential_1(v69);
          v64 = v63;
          v30 = &qword_27D6F62C0;
          MEMORY[0x22AA5EED0](v64, -1, -1);
          MEMORY[0x22AA5EED0](v62, -1, -1);
        }

        else
        {

          sub_224B30FEC(v50);
          v33 = v73;
        }

        sub_224CDDDEC(*(v32 + *(v33 + 20)), *(v32 + *(v33 + 20) + 8), v75, 0xD00000000000004ALL, v71 | 0x8000000000000000, v76, v77, v78);
        v18 = v86;
      }

      result = sub_224B30FEC(v32);
    }

    if (v28 <= v29 + 1)
    {
      v35 = v29 + 1;
    }

    else
    {
      v35 = v28;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v34 >= v28)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, &qword_224DBF268);
        (*(*(v65 - 8) + 56))(v18, 1, 1, v65);
        v27 = 0;
        v29 = v36;
        goto LABEL_19;
      }

      v27 = *(v24 + 8 * v34);
      ++v29;
      if (v27)
      {
        v29 = v34;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_224CDD950(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v53 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62C8, &qword_224DBF270);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = qword_2813549E8;
  swift_beginAccess();
  v41 = v11;
  v49 = a1;
  v12 = *(a1 + v11);
  v13 = *(v12 + 64);
  v43 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v42 = (v14 + 63) >> 6;
  v44 = v2 + 16;
  v51 = (v2 + 32);
  v46 = v2;
  v47 = v12;
  v48 = (v2 + 8);

  v17 = 0;
  v18 = &unk_224DBF278;
  v45 = v10;
  if (v16)
  {
    while (1)
    {
      v19 = v17;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v19 << 6);
      v25 = v46;
      v26 = v47;
      v27 = v52;
      v28 = v53;
      (*(v46 + 16))(v52, *(v47 + 48) + *(v46 + 72) * v24, v53);
      v29 = *(*(v26 + 56) + 8 * v24);
      v30 = v18;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, v18);
      v32 = *(v31 + 48);
      v33 = *(v25 + 32);
      v22 = v50;
      v33(v50, v27, v28);
      *(v22 + v32) = v29;
      (*(*(v31 - 8) + 56))(v22, 0, 1, v31);

      v21 = v19;
      v18 = v30;
      v10 = v45;
LABEL_13:
      sub_224A44E4C(v22, v10, &qword_27D6F62C8, &qword_224DBF270);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, v18);
      if ((*(*(v34 - 8) + 48))(v10, 1, v34) == 1)
      {
        break;
      }

      v35 = *&v10[*(v34 + 48)];
      v36 = v52;
      v37 = v53;
      (*v51)(v52, v10, v53);
      sub_224CDD2B4(v35, v36, &unk_283833650, sub_224CE3DE0, &block_descriptor_33);

      (*v48)(v36, v37);
      v17 = v21;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v39 = sub_224DA18C4(MEMORY[0x277D84F90]);
    v40 = *(v49 + v41);
    *(v49 + v41) = v39;

    sub_224AA33EC(&unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);
  }

  else
  {
LABEL_5:
    if (v42 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v42;
    }

    v21 = v20 - 1;
    v22 = v50;
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v42)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, v18);
        (*(*(v38 - 8) + 56))(v22, 1, 1, v38);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v43 + 8 * v19);
      ++v17;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224CDDDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a7;
  v43 = a8;
  v36 = a6;
  v37 = a4;
  v38 = a5;
  v34 = a3;
  v40 = a1;
  v41 = a2;
  v44 = sub_224DAB7B8();
  v47 = *(v44 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = sub_224DAB7C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224AC319C();
  (*(v21 + 104))(v24, *MEMORY[0x277D851C0], v20);
  v35 = sub_224DAF428();
  (*(v21 + 8))(v24, v20);
  (*(v16 + 16))(v19, v34, v15);
  v25 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v26 = swift_allocObject();
  v27 = v38;
  *(v26 + 2) = v37;
  *(v26 + 3) = v27;
  *(v26 + 4) = v39;
  (*(v16 + 32))(&v26[v25], v19, v15);
  v28 = &v26[(v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
  v29 = v41;
  *v28 = v40;
  *(v28 + 1) = v29;
  aBlock[4] = v42;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = v43;
  v30 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v48 = MEMORY[0x277D84F90];
  sub_224CE3D8C(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v31 = v44;
  sub_224DAF788();
  v32 = v35;
  MEMORY[0x22AA5D760](0, v14, v10, v30);
  _Block_release(v30);

  (*(v47 + 8))(v10, v31);
  (*(v45 + 8))(v14, v46);
}

uint64_t sub_224CDE28C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v46 = a3;
  v41 = sub_224DACB08();
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACB28();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_224DACC88();
  v38 = *(v40 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DACB98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v34 - v22);
  v24 = swift_allocBox();
  v26 = v25;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = a1;
  v27[4] = a2;
  *v26 = v27;
  v28 = *(v17 + 104);
  v28(v26, *MEMORY[0x277CF9B90], v16);
  *v23 = v24;
  v28(v23, *MEMORY[0x277CF9BD0], v16);
  v29 = v46 + qword_2813651F0;
  swift_beginAccess();
  if (*(v29 + 24))
  {
    sub_224A3317C(v29, v47);
    swift_endAccess();
    v31 = v48;
    v30 = v49;
    v46 = __swift_project_boxed_opaque_existential_1(v47, v48);
    (*(v35 + 104))(v37, *MEMORY[0x277CF9B50], v36);
    (*(v39 + 104))(v42, *MEMORY[0x277CF9B40], v41);
    (*(v17 + 16))(v21, v23, v16);

    sub_224DACC48();
    sub_224DACC38();
    (*(v30 + 24))(v43, v44, v45, v15, v31, v30);
    (*(v38 + 8))(v15, v40);
    (*(v17 + 8))(v23, v16);
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    v33 = *(v17 + 8);

    v33(v23, v16);
    return swift_endAccess();
  }
}

uint64_t sub_224CDE6DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + qword_2813548C0);
    v2 = *(v1 + 16);

    os_unfair_lock_lock(v2);
    sub_224CDE8B4(sub_224CE3BC8, &unk_2838336F0, sub_224CE3DE0, &block_descriptor_47_0, &unk_2838336A0, sub_224CE3BC0, &block_descriptor_40_1);
    os_unfair_lock_unlock(*(v1 + 16));
  }

  return result;
}

uint64_t sub_224CDE7C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + qword_2813548C0);
    v2 = *(v1 + 16);

    os_unfair_lock_lock(v2);
    sub_224CDE8B4(sub_224CE3DF0, &unk_283833588, sub_224CE3B58, &block_descriptor_16, &unk_283833538, sub_224CE3610, &block_descriptor_47);
    os_unfair_lock_unlock(*(v1 + 16));
  }

  return result;
}

void sub_224CDE8B4(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v141 = a7;
  v140 = a6;
  v139 = a5;
  v175 = a4;
  v174 = a3;
  v173 = a2;
  v147 = a1;
  v172 = sub_224DAB7B8();
  v8 = *(v172 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_224DAB848();
  v11 = *(v170 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v170);
  v169 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_224DAB7C8();
  v14 = *(v168 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v168);
  v167 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ReloadRequestKey();
  v166 = *(v17 - 8);
  v18 = *(v166 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v154 = &v139 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v139 - v24;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62C0, &qword_224DBF268);
  v26 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v192 = &v139 - v27;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v178 = *(v187 - 8);
  v28 = *(v178 + 64);
  v29 = MEMORY[0x28223BE20](v187);
  v184 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v177 = &v139 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62C8, &qword_224DBF270);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v148 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v149 = &v139 - v35;
  v191 = v7;
  v163 = qword_2813548B8;
  v36 = sub_224DAB228();
  v37 = sub_224DAF268();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_224A2F000, v36, v37, "Timer fired.", v38, 2u);
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  v39 = v191;
  os_unfair_lock_assert_owner(*(*(v191 + qword_2813548C0) + 16));
  BSContinuousMachTimeNow();
  v41 = v40 + *(v39 + 24);
  v42 = qword_2813549E8;
  swift_beginAccess();
  v146 = v42;
  v43 = *(v39 + v42);
  v44 = *(v43 + 64);
  v143 = v43 + 64;
  v45 = 1 << *(v43 + 32);
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & v44;
  v142 = (v45 + 63) >> 6;
  v176 = v178 + 16;
  v182 = (v178 + 32);
  v162 = 0x8000000224DCDFB0;
  v161 = *MEMORY[0x277D851C0];
  v160 = (v14 + 104);
  v159 = (v14 + 8);
  v158 = v28 + 7;
  v157 = v196;
  v156 = (v8 + 8);
  v155 = (v11 + 8);
  v145 = (v178 + 8);
  v144 = v43;

  v48 = 0;
  v152 = 0;
  *&v49 = 136446210;
  v153 = v49;
  v165 = v21;
  v186 = v25;
  v190 = v17;
LABEL_8:
  if (v47)
  {
    v55 = v48;
LABEL_16:
    v151 = (v47 - 1) & v47;
    v57 = __clz(__rbit64(v47)) | (v55 << 6);
    v58 = v144;
    v59 = v178;
    v60 = v177;
    v61 = v187;
    (*(v178 + 16))(v177, *(v144 + 48) + *(v178 + 72) * v57, v187);
    v62 = *(*(v58 + 56) + 8 * v57);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, &unk_224DBF278);
    v64 = *(v63 + 48);
    v65 = *(v59 + 32);
    v66 = v148;
    v65(v148, v60, v61);
    *&v66[v64] = v62;
    (*(*(v63 - 8) + 56))(v66, 0, 1, v63);

    v150 = v55;
    v67 = v66;
LABEL_17:
    v68 = v149;
    sub_224A44E4C(v67, v149, &qword_27D6F62C8, &qword_224DBF270);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, &unk_224DBF278);
    if ((*(*(v69 - 8) + 48))(v68, 1, v69) != 1)
    {
      v70 = *(v68 + *(v69 + 48));
      v181 = *v182;
      v71 = v181(v184, v68, v187);
      MEMORY[0x28223BE20](v71);
      *(&v139 - 2) = v191;
      *(&v139 - 1) = v41;

      v73 = v152;
      v74 = sub_224CE39D8(v72, v147);
      v152 = v73;

      v75 = v74 + 64;
      v76 = 1 << *(v74 + 32);
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      else
      {
        v77 = -1;
      }

      v78 = v77 & *(v74 + 64);
      v79 = (v76 + 63) >> 6;
      v183 = v74;

      v80 = 0;
      v81 = v17;
      v180 = v75;
      for (i = v79; ; v79 = i)
      {
        if (!v78)
        {
          while (1)
          {
            v84 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            if (v84 >= v79)
            {
              v17 = v81;

              v50 = v191;
              v51 = v146;
              swift_beginAccess();

              v52 = *(v50 + v51);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v193 = *(v50 + v51);
              *(v50 + v51) = 0x8000000000000000;
              v54 = v184;
              sub_224B1F908(v70, v184, isUniquelyReferenced_nonNull_native);
              *(v50 + v51) = v193;
              swift_endAccess();

              (*v145)(v54, v187);
              v48 = v150;
              v47 = v151;
              goto LABEL_8;
            }

            v78 = *(v75 + 8 * v84);
            ++v80;
            if (v78)
            {
              v189 = v70;
              v80 = v84;
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

        v189 = v70;
LABEL_30:
        v85 = __clz(__rbit64(v78)) | (v80 << 6);
        v86 = v183;
        v87 = *(v166 + 72);
        v88 = v192;
        sub_224CE35AC(*(v183 + 48) + v87 * v85, v192);
        *(v88 + *(v164 + 48)) = *(*(v86 + 56) + 8 * v85);
        sub_224CE35AC(v88, v25);

        v89 = sub_224DAB228();
        v90 = sub_224DAF2A8();
        v91 = os_log_type_enabled(v89, v90);
        v185 = v87;
        if (v91)
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v193 = v93;
          *v92 = v153;
          v94 = v25;
          v95 = v154;
          sub_224CE35AC(v94, v154);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
          aBlock = sub_224DAFD28();
          v195 = v96;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          v97 = v190;
          MEMORY[0x22AA5D210](*(v95 + *(v190 + 20)), *(v95 + *(v190 + 20) + 8));
          v98 = aBlock;
          v99 = v195;
          sub_224B30FEC(v186);
          sub_224B30FEC(v95);
          v100 = sub_224A33F74(v98, v99, &v193);

          *(v92 + 4) = v100;
          _os_log_impl(&dword_224A2F000, v89, v90, "%{public}s - Reloading for prior requested throttled reload", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x22AA5EED0](v93, -1, -1);
          MEMORY[0x22AA5EED0](v92, -1, -1);
        }

        else
        {

          sub_224B30FEC(v25);
          v97 = v190;
        }

        v101 = (v192 + *(v97 + 20));
        v103 = *v101;
        v102 = v101[1];
        sub_224AC319C();
        v104 = v167;
        v105 = v168;
        (*v160)(v167, v161, v168);
        v188 = sub_224DAF428();
        (*v159)(v104, v105);
        v106 = v178;
        v107 = v177;
        v108 = v187;
        (*(v178 + 16))(v177, v184, v187);
        v109 = (*(v106 + 80) + 40) & ~*(v106 + 80);
        v110 = (v158 + v109) & 0xFFFFFFFFFFFFFFF8;
        v111 = swift_allocObject();
        v111[2] = 0xD000000000000036;
        v112 = v191;
        v111[3] = v162;
        v111[4] = v112;
        v181(v111 + v109, v107, v108);
        v113 = (v111 + v110);
        *v113 = v103;
        v113[1] = v102;
        v196[2] = v174;
        v196[3] = v111;
        aBlock = MEMORY[0x277D85DD0];
        v195 = 1107296256;
        v196[0] = sub_224A39F40;
        v196[1] = v175;
        v114 = _Block_copy(&aBlock);

        v115 = v169;
        sub_224DAB7E8();
        v193 = MEMORY[0x277D84F90];
        sub_224CE3D8C(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v116 = v171;
        v117 = v172;
        sub_224DAF788();
        v118 = v188;
        MEMORY[0x22AA5D760](0, v115, v116, v114);
        _Block_release(v114);

        (*v156)(v116, v117);
        (*v155)(v115, v170);

        v119 = v165;
        sub_224CE35AC(v192, v165);
        type metadata accessor for ReloadInfo();
        v120 = swift_allocObject();
        *(v120 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v120 + 16) = v121;
        *(v120 + 24) = 0;
        v122 = v189;
        v123 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v122;
        v124 = sub_224B0B4A0(v119);
        v126 = *(v122 + 16);
        v127 = (v125 & 1) == 0;
        v128 = __OFADD__(v126, v127);
        v129 = v126 + v127;
        if (v128)
        {
          goto LABEL_49;
        }

        v130 = v125;
        if (*(v122 + 24) < v129)
        {
          break;
        }

        v81 = v190;
        v25 = v186;
        if (v123)
        {
          goto LABEL_38;
        }

        v135 = v190;
        v136 = v124;
        sub_224B252CC();
        v124 = v136;
        v81 = v135;
        v70 = aBlock;
        if (v130)
        {
LABEL_22:
          v82 = v70[7];
          v83 = *(v82 + 8 * v124);
          *(v82 + 8 * v124) = v120;

          goto LABEL_23;
        }

LABEL_39:
        v70[(v124 >> 6) + 8] |= 1 << v124;
        v132 = v124;
        sub_224CE35AC(v119, v70[6] + v124 * v185);
        *(v70[7] + 8 * v132) = v120;
        v133 = v70[2];
        v128 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v128)
        {
          goto LABEL_50;
        }

        v70[2] = v134;
LABEL_23:
        v78 &= v78 - 1;
        sub_224B30FEC(v119);
        sub_224A3311C(v192, &qword_27D6F62C0, &qword_224DBF268);
        v75 = v180;
      }

      sub_224B0F154(v129, v123);
      v124 = sub_224B0B4A0(v119);
      v81 = v190;
      v25 = v186;
      if ((v130 & 1) != (v131 & 1))
      {
        goto LABEL_51;
      }

LABEL_38:
      v70 = aBlock;
      if (v130)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

    if (*(v191 + qword_2813549F0))
    {
      sub_224CE2E28(v41);
    }

    sub_224AA33EC(v139, v140, v141);
  }

  else
  {
    if (v142 <= v48 + 1)
    {
      v56 = v48 + 1;
    }

    else
    {
      v56 = v142;
    }

    while (1)
    {
      v55 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v55 >= v142)
      {
        v150 = v56 - 1;
        v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D0, &unk_224DBF278);
        v138 = v148;
        (*(*(v137 - 8) + 56))(v148, 1, 1, v137);
        v67 = v138;
        v151 = 0;
        goto LABEL_17;
      }

      v47 = *(v143 + 8 * v55);
      ++v48;
      if (v47)
      {
        goto LABEL_16;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    sub_224DAFDD8();
    __break(1u);
  }
}

void *sub_224CDF9F0()
{
  sub_224A3317C((v0 + 3), v8);
  v1 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v2 = *v1;
  v3 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  os_unfair_lock_assert_not_owner(*(*(*v1 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v4 = *(v2 + v3);
  os_unfair_lock_lock(*(v4 + 16));
  sub_224B45B00(v2);
  os_unfair_lock_unlock(*(v4 + 16));
  __swift_destroy_boxed_opaque_existential_1(v8);
  v5 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v6 = v0[9];
  sub_224A3D418(v0[8]);
  return v0;
}

uint64_t sub_224CDFAA8()
{
  sub_224CDF9F0();

  return swift_deallocClassInstance();
}

void *sub_224CDFB0C()
{
  v1 = *v0;
  v2 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = type metadata accessor for ExternalRequestReloadFilter.ForegroundControlPolicy();
  sub_224CC0BB0(v0, v2, v5, &off_2838334E8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[7];

  v7 = qword_27D6F6228;
  v8 = sub_224DAB258();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + qword_27D6F71D8 + 8);
  sub_224A3D418(*(v0 + qword_27D6F71D8));
  return v0;
}

uint64_t sub_224CDFC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v88 = *(v2 - 8);
  v89 = v2;
  v3 = *(v88 + 64);
  MEMORY[0x28223BE20](v2);
  v87 = &v84 - v4;
  v5 = sub_224DAC2B8();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v90 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v84 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v84 - v18;
  v20 = sub_224DACB98();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();
  if ((*(v21 + 88))(v24, v20) != *MEMORY[0x277CF9B90])
  {
    (*(v21 + 8))(v24, v20);
    return 1;
  }

  (*(v21 + 96))(v24, v20);
  v25 = *(*v24 + 16);
  v26 = v25;

  v27 = sub_224DAC2A8();
  v28 = [v27 extensionIdentity];

  v29 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v28 + v29, v14, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_224A3311C(v14, &unk_27D6F5060, &qword_224DB5620);
    return 1;
  }

  (*(v16 + 32))(v19, v14, v15);
  if (v25)
  {
    v31 = v26;
    sub_224DAA318();
    v32 = sub_224DAEDE8();

    v33 = [v31 hasEntitlement_];

    if (v33 & 1) != 0 || (v31 = v31, v34 = sub_224DAEDE8(), v35 = [v31 hasEntitlement_], v31, v34, (v35))
    {
      (*(v16 + 8))(v19, v15);

      return 1;
    }
  }

  v36 = __swift_project_boxed_opaque_existential_1(v93 + 2, v93[5]);
  v37 = sub_224DAC2A8();
  v38 = [v37 extensionIdentity];

  v39 = *v36;
  v40 = *(v39 + 24);
  v41 = *(v40 + 16);

  os_unfair_lock_lock(v41);
  swift_beginAccess();
  if (*(*(v39 + 32) + 16))
  {
    v42 = *(v39 + 32);

    sub_224A3E7EC(v38);
    v44 = v43;

    if (v44)
    {
      os_unfair_lock_unlock(*(v40 + 16));

LABEL_16:
      (*(v16 + 8))(v19, v15);
      return 2;
    }
  }

  os_unfair_lock_unlock(*(v40 + 16));

  v45 = __swift_project_boxed_opaque_existential_1((v93[7] + 24), *(v93[7] + 48));
  v46 = *v45;
  v47 = *(*v45 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v48 = *(v47 + 16);

  os_unfair_lock_lock(v48);
  v49 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v50 = *(v46 + v49);
  v51 = *(v47 + 16);

  os_unfair_lock_unlock(v51);

  LOBYTE(v47) = sub_224A33718(v19, v50, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

  if (v47)
  {

    goto LABEL_16;
  }

  v86 = v26;
  v85 = qword_27D6F6228;
  v53 = v91;
  v52 = v92;
  v54 = *(v91 + 16);
  v54(v10, a1, v92);
  v54(v90, a1, v52);
  v55 = sub_224DAB228();
  v56 = sub_224DAF2A8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = v53;
    v58 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v94 = v93;
    *v58 = 136315394;
    LODWORD(v85) = v56;
    v59 = sub_224DAC2A8();
    v60 = [v59 extensionIdentity];

    v61 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v62 = v88;
    v63 = *(v88 + 16);
    v64 = &v60[v61];
    v65 = v87;
    v84 = v55;
    v66 = v89;
    v63(v87, v64, v89);

    v67 = v57 + 8;
    v68 = *(v57 + 8);
    v91 = v67;
    v68(v10, v92);
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
    v69 = sub_224DAFD28();
    v71 = v70;
    (*(v62 + 8))(v65, v66);
    v72 = sub_224A33F74(v69, v71, &v94);

    *(v58 + 4) = v72;
    *(v58 + 12) = 2080;
    v73 = v90;
    v74 = sub_224DAC2A8();
    v75 = [v74 kind];

    v76 = sub_224DAEE18();
    v78 = v77;

    v68(v73, v92);
    v79 = sub_224A33F74(v76, v78, &v94);

    *(v58 + 14) = v79;
    v80 = v84;
    _os_log_impl(&dword_224A2F000, v84, v85, "%s:%s blocked reload request for non-visible control", v58, 0x16u);
    v81 = v93;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v81, -1, -1);
    MEMORY[0x22AA5EED0](v58, -1, -1);
  }

  else
  {
    v82 = *(v53 + 8);
    v83 = v92;
    v82(v10, v92);

    v82(v90, v83);
  }

  (*(v16 + 8))(v19, v15);
  return 0;
}

uint64_t sub_224CE05A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v83 = *(v2 - 8);
  v84 = v2;
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v2);
  v82 = &v77 - v4;
  v87 = sub_224DABE18();
  v85 = *(v87 - 8);
  v5 = *(v85 + 64);
  v6 = MEMORY[0x28223BE20](v87);
  v86 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v77 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v77 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v77 - v17;
  v19 = sub_224DACB98();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DACC68();
  if ((*(v20 + 88))(v23, v19) != *MEMORY[0x277CF9B90])
  {
    (*(v20 + 8))(v23, v19);
    return 1;
  }

  (*(v20 + 96))(v23, v19);
  v24 = *(*v23 + 16);
  v25 = v24;

  v81 = a1;
  v26 = sub_224DABDB8();
  v27 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v26 + v27, v13, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
    return 1;
  }

  v80 = v25;
  (*(v15 + 32))(v18, v13, v14);
  if (v24)
  {
    v29 = v80;
    sub_224DAA318();
    v30 = sub_224DAEDE8();

    v31 = [v29 hasEntitlement_];

    if (v31 & 1) != 0 || (v29 = v29, v32 = sub_224DAEDE8(), v33 = [v29 hasEntitlement_], v29, v32, (v33))
    {
      (*(v15 + 8))(v18, v14);

      return 1;
    }
  }

  v34 = __swift_project_boxed_opaque_existential_1(v88 + 2, v88[5]);
  v35 = sub_224DABDB8();
  v36 = *v34;
  v37 = *(*v34 + 24);
  v38 = *(v37 + 16);

  os_unfair_lock_lock(v38);
  swift_beginAccess();
  if (*(*(v36 + 32) + 16))
  {
    v39 = *(v36 + 32);

    sub_224A3E7EC(v35);
    v41 = v40;

    if (v41)
    {
      os_unfair_lock_unlock(*(v37 + 16));

LABEL_16:
      (*(v15 + 8))(v18, v14);
      return 2;
    }
  }

  os_unfair_lock_unlock(*(v37 + 16));

  v42 = __swift_project_boxed_opaque_existential_1((v88[7] + 24), *(v88[7] + 48));
  v43 = *v42;
  v44 = *(*v42 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v44 + 16));
  v45 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
  swift_beginAccess();
  v46 = *(v43 + v45);
  v47 = *(v44 + 16);

  os_unfair_lock_unlock(v47);
  LOBYTE(v47) = sub_224A33718(v18, v46, &qword_27D6F3900, &unk_224DB4640, &qword_281351970, &unk_281351960);

  if (v47)
  {

    goto LABEL_16;
  }

  v79 = qword_27D6F6228;
  v48 = v85;
  v49 = *(v85 + 16);
  v50 = v81;
  v51 = v87;
  v49(v9, v81, v87);
  v49(v86, v50, v51);
  v52 = sub_224DAB228();
  v53 = sub_224DAF2A8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v48;
    v55 = swift_slowAlloc();
    v78 = v55;
    v88 = swift_slowAlloc();
    v89 = v88;
    *v55 = 136315394;
    LODWORD(v81) = v53;
    v56 = sub_224DABDB8();
    v79 = v52;
    v57 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    v58 = v82;
    v59 = v83;
    v60 = &v56[v57];
    v61 = v84;
    (*(v83 + 16))(v82, v60, v84);

    v62 = v87;
    v85 = *(v54 + 8);
    (v85)(v9, v87);
    sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
    v63 = sub_224DAFD28();
    v65 = v64;
    (*(v59 + 8))(v58, v61);
    v66 = sub_224A33F74(v63, v65, &v89);

    v67 = v78;
    *(v78 + 1) = v66;
    *(v67 + 6) = 2080;
    v68 = v86;
    v69 = sub_224DABDD8();
    v71 = v70;
    (v85)(v68, v62);
    v72 = sub_224A33F74(v69, v71, &v89);

    *(v67 + 14) = v72;
    v73 = v79;
    _os_log_impl(&dword_224A2F000, v79, v81, "%s:%s blocked reload request for non-visible control", v67, 0x16u);
    v74 = v88;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v74, -1, -1);
    MEMORY[0x22AA5EED0](v67, -1, -1);
  }

  else
  {
    v75 = *(v48 + 8);
    v76 = v87;
    v75(v9, v87);

    v75(v86, v76);
  }

  (*(v15 + 8))(v18, v14);
  return 0;
}

uint64_t sub_224CE0ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(a2 + v13, v7, &unk_27D6F5060, &qword_224DB5620);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_224A3311C(v7, &unk_27D6F5060, &qword_224DB5620);
  }

  (*(v9 + 32))(v12, v7, v8);
  v15 = *(v2 + qword_27D6F71D8);
  if (v15)
  {
    v16 = *(v2 + qword_27D6F71D8 + 8);

    v15(v12);
    sub_224A3D418(v15);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224CE10F0()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CE1194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v135 = a2;
  v4 = sub_224DACB98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v134 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_224DACB08();
  v127 = *(v128 - 8);
  v7 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v133 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v130 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_224DACC88();
  v131 = *(v132 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v129 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for ReloadRequestKey();
  v14 = *(*(v136 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v136);
  v124 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v123 = &v118 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v126 = &v118 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v125 = &v118 - v22;
  MEMORY[0x28223BE20](v21);
  v137 = &v118 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v118 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v118 - v31;
  v33 = sub_224DAC2A8();
  v34 = [v33 extensionIdentity];

  v35 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v34 + v35, v27, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_224A3311C(v27, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    v36 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v37 = sub_224DA9FE8();
    v38 = (*(v36 + 8))(v37);

    if (v38)
    {
      v122 = v32;
      v120 = v29;
      v121 = v28;
      swift_beginAccess();
      v39 = v3[7];
      v40 = v3;
      if (*(v39 + 16))
      {
        v41 = v3[7];

        v42 = sub_224A89A08(v122);
        v43 = v136;
        v44 = v137;
        if (v45)
        {
          v46 = *(*(v39 + 56) + 8 * v42);
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
        v43 = v136;
        v44 = v137;
      }

      v47 = sub_224DAC2A8();
      v48 = [v47 extensionIdentity];

      v49 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v51 = *(*(v50 - 8) + 16);
      v136 = v50;
      v51(v44, &v48[v49]);

      v52 = sub_224DAC2A8();
      v53 = [v52 kind];

      v54 = sub_224DAEE18();
      v56 = v55;

      v57 = (v44 + *(v43 + 20));
      *v57 = v54;
      v57[1] = v56;
      v58 = v43;
      if (v46)
      {
        v59 = *(v40 + qword_27D6F6238);

        BSContinuousMachTimeNow();
        v61 = v60;
        v62 = *(v46 + 16);

        if (v59 >= vabdd_f64(v61, v62))
        {
          v85 = v124;
          sub_224CE35AC(v44, v124);
          v86 = sub_224DAB228();
          v87 = sub_224DAF2A8();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = v85;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v119 = v46;
            v91 = v90;
            v138 = v90;
            *v89 = 136446210;
            v92 = v126;
            sub_224CE35AC(v88, v126);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
            v139 = sub_224DAFD28();
            v140 = v93;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*(v92 + *(v43 + 20)), *(v92 + *(v43 + 20) + 8));
            v94 = v44;
            v95 = v139;
            v96 = v140;
            sub_224B30FEC(v88);
            sub_224B30FEC(v92);
            v97 = sub_224A33F74(v95, v96, &v138);

            *(v89 + 4) = v97;
            _os_log_impl(&dword_224A2F000, v86, v87, "%{public}s - Received additional connected device refresh request within throttle period.", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v91);
            MEMORY[0x22AA5EED0](v91, -1, -1);
            MEMORY[0x22AA5EED0](v89, -1, -1);

            v98 = v94;
          }

          else
          {

            sub_224B30FEC(v85);
            v98 = v44;
          }

          sub_224B30FEC(v98);
          (*(v120 + 8))(v122, v121);
          return 0;
        }

        v63 = v43;
        v64 = v123;
        sub_224CE35AC(v44, v123);
        v65 = sub_224DAB228();
        v66 = sub_224DAF2A8();
        v67 = os_log_type_enabled(v65, v66);
        v119 = v46;
        if (v67)
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v138 = v69;
          *v68 = 136446210;
          v70 = v126;
          sub_224CE35AC(v64, v126);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
          v139 = sub_224DAFD28();
          v140 = v71;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v70 + *(v63 + 20)), *(v70 + *(v63 + 20) + 8));
          v72 = v139;
          v73 = v140;
          sub_224B30FEC(v64);
          sub_224B30FEC(v70);
          v74 = sub_224A33F74(v72, v73, &v138);

          *(v68 + 4) = v74;
          _os_log_impl(&dword_224A2F000, v65, v66, "%{public}s - Allowing subsequent connected device refresh after throttle interval.", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          MEMORY[0x22AA5EED0](v69, -1, -1);
          MEMORY[0x22AA5EED0](v68, -1, -1);
        }

        else
        {

          sub_224B30FEC(v64);
        }

        v109 = v131;
        v110 = v129;
        v111 = v132;
        (*(v131 + 32))(v129, v135, v132);
        sub_224DACC58();
        (*(v127 + 104))(v133, *MEMORY[0x277CF9B40], v128);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v109 + 8))(v110, v111);
        type metadata accessor for ReloadInfo();
        v112 = swift_allocObject();
        *(v112 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v112 + 16) = v113;
        *(v112 + 24) = 0;
        swift_beginAccess();
        v114 = *(v40 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = *(v40 + 56);
        *(v40 + 56) = 0x8000000000000000;
        v116 = v122;
        sub_224B1FAC0(v112, v122, isUniquelyReferenced_nonNull_native);
        *(v40 + 56) = v138;
        swift_endAccess();

        sub_224B30FEC(v137);
        (*(v120 + 8))(v116, v121);
      }

      else
      {
        v75 = v125;
        sub_224CE35AC(v44, v125);
        v124 = v40;
        v76 = sub_224DAB228();
        v77 = sub_224DAF2A8();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v138 = v79;
          *v78 = 136446210;
          v80 = v126;
          sub_224CE35AC(v75, v126);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
          v139 = sub_224DAFD28();
          v140 = v81;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v80 + *(v58 + 20)), *(v80 + *(v58 + 20) + 8));
          v82 = v139;
          v83 = v140;
          sub_224B30FEC(v75);
          sub_224B30FEC(v80);
          v84 = sub_224A33F74(v82, v83, &v138);

          *(v78 + 4) = v84;
          _os_log_impl(&dword_224A2F000, v76, v77, "%{public}s - Allowing first refresh while attached to connected device.", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          MEMORY[0x22AA5EED0](v79, -1, -1);
          MEMORY[0x22AA5EED0](v78, -1, -1);
        }

        else
        {

          sub_224B30FEC(v75);
        }

        v99 = v120;
        v100 = v131;
        v101 = v129;
        v102 = v132;
        (*(v131 + 32))(v129, v135, v132);
        sub_224DACC58();
        (*(v127 + 104))(v133, *MEMORY[0x277CF9B40], v128);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v100 + 8))(v101, v102);
        type metadata accessor for ReloadInfo();
        v103 = swift_allocObject();
        *(v103 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v103 + 16) = v104;
        *(v103 + 24) = 0;
        v105 = v124;
        swift_beginAccess();
        v106 = *(v105 + 56);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v138 = *(v105 + 56);
        *(v105 + 56) = 0x8000000000000000;
        v108 = v122;
        sub_224B1FAC0(v103, v122, v107);
        *(v105 + 56) = v138;
        swift_endAccess();
        sub_224B30FEC(v137);
        (*(v99 + 8))(v108, v121);
      }

      return 1;
    }

    (*(v29 + 8))(v32, v28);
  }

  return 0;
}

uint64_t sub_224CE2040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v123 = a2;
  v4 = sub_224DACB98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_224DACB08();
  v115 = *(v116 - 8);
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v121 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v118 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DACC88();
  v119 = *(v120 - 8);
  v12 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v117 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for ReloadRequestKey();
  v14 = *(*(v124 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v124);
  v125 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v112 = &v109 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v114 = &v109 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v109 - v22;
  MEMORY[0x28223BE20](v21);
  v126 = &v109 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v109 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v109 - v31;
  v33 = sub_224DABDB8();
  v34 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v33 + v34, v27, &unk_27D6F5060, &qword_224DB5620);

  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_224A3311C(v27, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    (*(v29 + 32))(v32, v27, v28);
    v35 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v36 = sub_224DA9FE8();
    v37 = (*(v35 + 8))(v36);

    if (v37)
    {
      v38 = v32;
      v111 = v28;
      v110 = v29;
      swift_beginAccess();
      v39 = v3[7];
      v40 = v3;
      if (*(v39 + 16))
      {
        v41 = v3[7];

        v42 = v38;
        v43 = sub_224A89A08(v38);
        v44 = v125;
        v45 = v126;
        if (v46)
        {
          v47 = *(*(v39 + 56) + 8 * v43);
        }

        else
        {
          v47 = 0;
        }
      }

      else
      {
        v47 = 0;
        v44 = v125;
        v45 = v126;
        v42 = v38;
      }

      v48 = sub_224DABDB8();
      v49 = *MEMORY[0x277CFA138];
      swift_beginAccess();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v50 - 8) + 16))(v45, &v48[v49], v50);

      v51 = sub_224DABDD8();
      v52 = v124;
      v53 = (v45 + *(v124 + 20));
      *v53 = v51;
      v53[1] = v54;
      if (v47)
      {
        v55 = *(v40 + qword_27D6F6238);

        BSContinuousMachTimeNow();
        v57 = v56;
        v58 = *(v47 + 16);

        if (v55 >= vabdd_f64(v57, v58))
        {
          sub_224CE35AC(v45, v44);
          v82 = sub_224DAB228();
          v83 = sub_224DAF2A8();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v127 = v85;
            *v84 = 136446210;
            v86 = v44;
            v87 = v114;
            sub_224CE35AC(v86, v114);
            sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
            v128 = sub_224DAFD28();
            v129 = v88;
            MEMORY[0x22AA5D210](45, 0xE100000000000000);
            MEMORY[0x22AA5D210](*(v87 + *(v52 + 20)), *(v87 + *(v52 + 20) + 8));
            v89 = v128;
            v90 = v129;
            sub_224B30FEC(v125);
            sub_224B30FEC(v87);
            v91 = sub_224A33F74(v89, v90, &v127);

            *(v84 + 4) = v91;
            _os_log_impl(&dword_224A2F000, v82, v83, "%{public}s - Received additional connected device refresh request within throttle period.", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v85);
            MEMORY[0x22AA5EED0](v85, -1, -1);
            MEMORY[0x22AA5EED0](v84, -1, -1);

            v92 = v126;
          }

          else
          {

            sub_224B30FEC(v44);
            v92 = v45;
          }

          sub_224B30FEC(v92);
          (*(v110 + 8))(v38, v111);
          return 0;
        }

        v125 = v47;
        v59 = v112;
        sub_224CE35AC(v45, v112);
        v60 = v40;
        v61 = sub_224DAB228();
        v62 = sub_224DAF2A8();
        v63 = os_log_type_enabled(v61, v62);
        v109 = v42;
        if (v63)
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v127 = v65;
          *v64 = 136446210;
          v66 = v114;
          sub_224CE35AC(v59, v114);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
          v128 = sub_224DAFD28();
          v129 = v67;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v66 + *(v52 + 20)), *(v66 + *(v52 + 20) + 8));
          v68 = v128;
          v69 = v129;
          sub_224B30FEC(v59);
          sub_224B30FEC(v66);
          v70 = sub_224A33F74(v68, v69, &v127);

          *(v64 + 4) = v70;
          _os_log_impl(&dword_224A2F000, v61, v62, "%{public}s - Allowing subsequent connected device refresh after throttle interval.", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x22AA5EED0](v65, -1, -1);
          MEMORY[0x22AA5EED0](v64, -1, -1);
        }

        else
        {

          sub_224B30FEC(v59);
        }

        v101 = v119;
        v102 = v117;
        v103 = v120;
        (*(v119 + 32))(v117, v123, v120);
        sub_224DACC58();
        (*(v115 + 104))(v121, *MEMORY[0x277CF9B40], v116);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v101 + 8))(v102, v103);
        type metadata accessor for ReloadInfo();
        v104 = swift_allocObject();
        *(v104 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v104 + 16) = v105;
        *(v104 + 24) = 0;
        swift_beginAccess();
        v106 = v60[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v60[7];
        v60[7] = 0x8000000000000000;
        v100 = v109;
        sub_224B1FAC0(v104, v109, isUniquelyReferenced_nonNull_native);
        v60[7] = v127;
        swift_endAccess();
      }

      else
      {
        v71 = v113;
        sub_224CE35AC(v45, v113);
        v72 = sub_224DAB228();
        v73 = sub_224DAF2A8();
        v74 = os_log_type_enabled(v72, v73);
        v109 = v42;
        if (v74)
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v127 = v76;
          *v75 = 136446210;
          v77 = v114;
          sub_224CE35AC(v71, v114);
          sub_224A33088(&unk_2813518D0, &unk_27D6F3920, &qword_224DB35B0);
          v128 = sub_224DAFD28();
          v129 = v78;
          MEMORY[0x22AA5D210](45, 0xE100000000000000);
          MEMORY[0x22AA5D210](*(v77 + *(v52 + 20)), *(v77 + *(v52 + 20) + 8));
          v79 = v128;
          v80 = v129;
          sub_224B30FEC(v71);
          sub_224B30FEC(v77);
          v81 = sub_224A33F74(v79, v80, &v127);

          *(v75 + 4) = v81;
          _os_log_impl(&dword_224A2F000, v72, v73, "%{public}s - Allowing first refresh while attached to connected device.", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v76);
          MEMORY[0x22AA5EED0](v76, -1, -1);
          MEMORY[0x22AA5EED0](v75, -1, -1);
        }

        else
        {

          sub_224B30FEC(v71);
        }

        v93 = v119;
        v94 = v117;
        v95 = v120;
        (*(v119 + 32))(v117, v123, v120);
        sub_224DACC58();
        (*(v115 + 104))(v121, *MEMORY[0x277CF9B40], v116);
        sub_224DACC68();
        sub_224DACBB8();
        sub_224DACBD8();
        sub_224DACC28();
        sub_224DACC18();
        (*(v93 + 8))(v94, v95);
        type metadata accessor for ReloadInfo();
        v96 = swift_allocObject();
        *(v96 + 24) = 0;
        BSContinuousMachTimeNow();
        *(v96 + 16) = v97;
        *(v96 + 24) = 0;
        swift_beginAccess();
        v98 = v40[7];
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v40[7];
        v40[7] = 0x8000000000000000;
        v100 = v109;
        sub_224B1FAC0(v96, v109, v99);
        v40[7] = v127;
        swift_endAccess();
      }

      sub_224B30FEC(v126);
      (*(v110 + 8))(v100, v111);
      return 1;
    }

    (*(v29 + 8))(v32, v28);
  }

  return 0;
}

uint64_t sub_224CE2E28(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62D8, &qword_224DBF288);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  swift_beginAccess();
  v17 = *(v1 + 56);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v53 = qword_27D6F6238;
  v22 = (v19 + 63) >> 6;
  v49 = v4 + 16;
  v60 = (v4 + 32);
  v56 = v4;
  v58 = (v4 + 8);
  v51 = v17;

  v24 = 0;
  v59 = v1;
  v54 = v16;
  v55 = v14;
  v52 = v18;
  v57 = v8;
  if (!v21)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v25 = v3;
      v26 = v24;
LABEL_15:
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v51;
      v32 = v56;
      (*(v56 + 16))(v50, *(v51 + 48) + *(v56 + 72) * v30, v25);
      v33 = *(*(v31 + 56) + 8 * v30);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62E0, &qword_224DBF290);
      v35 = *(v34 + 48);
      v3 = v25;
      v14 = v55;
      (*(v32 + 32))();
      *&v14[v35] = v33;
      (*(*(v34 - 8) + 56))(v14, 0, 1, v34);

      v1 = v59;
      v16 = v54;
LABEL_16:
      sub_224A44E4C(v14, v16, &qword_27D6F62D8, &qword_224DBF288);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62E0, &qword_224DBF290);
      if ((*(*(v36 - 8) + 48))(v16, 1, v36) == 1)
      {
      }

      v37 = *&v16[*(v36 + 48)];
      v38 = v57;
      (*v60)(v57, v16, v3);
      if (fabs(*(v37 + 16) + *(v1 + v53)) < a1)
      {
        break;
      }

      (*v58)(v38, v3);

      v18 = v52;
      if (!v21)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v39 = *(v1 + 56);
    v40 = sub_224A89A08(v38);
    v18 = v52;
    if (v41)
    {
      v42 = v40;
      v43 = v59;
      v44 = *(v59 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v43 + 56);
      v61 = v46;
      *(v43 + 56) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B25518();
        v46 = v61;
      }

      (*(v56 + 8))(*(v46 + 48) + *(v56 + 72) * v42, v3);
      v47 = *(*(v46 + 56) + 8 * v42);

      sub_224B3151C(v42, v46);
      *(v43 + 56) = v46;
      v38 = v57;
      v16 = v54;
      v14 = v55;
    }

    swift_endAccess();

    result = (*v58)(v38, v3);
    v1 = v59;
  }

  while (v21);
LABEL_7:
  if (v22 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v22;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F62E0, &qword_224DBF290);
      (*(*(v48 - 8) + 56))(v14, 1, 1, v48);
      v21 = 0;
      v24 = v28;
      goto LABEL_16;
    }

    v21 = *(v18 + 8 * v26);
    ++v24;
    if (v21)
    {
      v25 = v3;
      v24 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CE3380()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  v2 = qword_27D6F6230;
  v3 = sub_224DAB258();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_224CE3408(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReloadRequestKey()
{
  result = qword_28135AEA0;
  if (!qword_28135AEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224CE34F0()
{
  sub_224AFCB78();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_224CE35AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadRequestKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_224CE3618(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
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

    v8 = sub_224CE37E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_224CE36A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v15 == v13 && v16 == v14)
  {
  }

  else
  {
    v5 = sub_224DAFD88();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = *(type metadata accessor for ReloadRequestKey() + 20);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_224DAFD88();
  }

  return v6 & 1;
}

uint64_t sub_224CE37E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v30 = a4;
  v27 = a1;
  v5 = type metadata accessor for ReloadRequestKey();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v31;
    sub_224CE35AC(*(v31 + 48) + *(v29 + 72) * v21, v9);
    v23 = *(*(v22 + 56) + 8 * v21);

    v24 = v30(v9, v23);

    result = sub_224B30FEC(v9);
    if (v24)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_224B2CAC4(v27, v26, v28, v31);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_224B2CAC4(v27, v26, v28, v31);
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CE39D8(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_224CE37E8(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_224CE3618(v11, v6, v4, a2);
  result = MEMORY[0x22AA5EED0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224CE3B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadRequestKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_224CE3CF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_224CDE28C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, v3[1]);
}

uint64_t sub_224CE3D8C(unint64_t *a1, void (*a2)(uint64_t))
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

size_t sub_224CE3E18()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_224B0CC04(*(v3 + 16), 0);
  v6 = *(sub_224DAE438() - 8);
  v7 = sub_224B2EEB0(&v9, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v4, v3);

  sub_224A3B7E4();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v5;
}

void sub_224CE3F38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAE438();
  v5 = *(v4 - 8);
  v23 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v24 = v2[4];
  os_unfair_lock_lock(*(v24 + 16));
  v11 = v2[2];
  v21 = a1;
  v12 = sub_224DAE418();
  v14 = v13;
  v15 = *(v5 + 16);
  v15(v10, a1, v4);
  (*(v5 + 56))(v10, 0, 1, v4);
  swift_beginAccess();
  sub_224B0764C(v10, v12, v14);
  swift_endAccess();
  v16 = v2[3];
  v17 = v22;
  v15(v22, v21, v4);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  (*(v5 + 32))(v19 + v18, v17, v4);

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v16, sub_224CE4E18, v19, 0.0);

  os_unfair_lock_unlock(*(v24 + 16));
}

uint64_t sub_224CE41A0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_224DAE438();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = *(a3 + 40);
  v8 = sub_224DABBC8();
  return a1(v8);
}

void sub_224CE44BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = *(v2 + 32);
  os_unfair_lock_lock(*(v10 + 16));
  v11 = *(v2 + 16);
  v12 = sub_224DAE438();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  swift_beginAccess();

  sub_224B0764C(v9, a1, a2);
  swift_endAccess();
  v13 = *(v3 + 24);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v13, sub_224CE4D78, v14, 0.0);

  os_unfair_lock_unlock(*(v10 + 16));
}

uint64_t sub_224CE464C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = sub_224DABBC8();
  return a1(v5);
}

void sub_224CE4884(uint64_t a1, uint64_t a2)
{
  v5 = v2[4];
  os_unfair_lock_lock(*(v5 + 16));
  v6 = v2[2];
  swift_beginAccess();
  v7 = *(v6 + 16);

  v9 = sub_224B30D34(v8, a1, a2);

  v10 = *(v6 + 16);
  *(v6 + 16) = v9;

  v11 = v2[3];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;

  _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v11, sub_224CE4D40, v12, 0.0);

  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_224CE49AC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  v5 = sub_224DABBC8();
  return a1(v5);
}

uint64_t sub_224CE4C74(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + 32);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *(v5 + 16);
  v8 = sub_224B09FAC(a1, a2);
  os_unfair_lock_unlock(*(v6 + 16));
  return v8;
}

void sub_224CE4CD0(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v7 = *v3;
  v8 = *(v7 + 32);
  os_unfair_lock_lock(*(v8 + 16));
  v9 = *(v7 + 16);
  sub_224B0AAFC(a1, a2, a3);
  v10 = *(v8 + 16);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_224CE4D40(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_224CE49AC(a1, a2, v2[2]);
}

uint64_t sub_224CE4D78(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_224CE464C(a1, a2, v2[2]);
}

uint64_t sub_224CE4DB0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_224DAB958();
  a2(v4, v5);
}

uint64_t sub_224CE4E18(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(*(sub_224DAE438() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_224CE41A0(a1, a2, v6);
}

uint64_t sub_224CE4E9C()
{
  v1 = *(v0 + 16);
  sub_224DAB958();
  sub_224DAB938();
}

uint64_t sub_224CE4EF0(uint64_t a1)
{
  v70 = a1;
  v2 = sub_224DAE438();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v73 = &v64 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - v8;
  v69 = sub_224DAF3C8();
  v10 = *(v69 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v69);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAF318();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_224DAB848();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  type metadata accessor for PushTokenStore();
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F98];
  v1[2] = v18;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *v20 = 0;
  *(v19 + 16) = v20;
  v1[4] = v19;
  v68 = sub_224AC319C();
  sub_224DAB7E8();
  v76 = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v10 + 104))(v13, *MEMORY[0x277D85260], v69);
  v1[3] = sub_224DAF418();
  v68 = v1;
  v1[5] = v70;

  sub_224DABAD8();
  v21 = sub_224DABB88();

  v22 = *(v21 + 16);
  v69 = v22;
  v70 = v21;
  isUniquelyReferenced_nonNull_native = 0;
  if (v22)
  {
    v24 = v72;
    v67 = *(v71 + 16);
    v25 = v21 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v26 = *(v71 + 72);
    v27 = (v71 + 8);
    v28 = 0xE000000000000000;
    do
    {
      v67(v9, v25, v24);
      v76 = isUniquelyReferenced_nonNull_native;
      v77 = v28;

      MEMORY[0x22AA5D210](8236, 0xE200000000000000);
      v29 = sub_224DAE418();
      MEMORY[0x22AA5D210](v29);

      isUniquelyReferenced_nonNull_native = v76;
      v28 = v77;
      (*v27)(v9, v24);
      v25 += v26;
      --v22;
    }

    while (v22);
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  if (qword_281351438 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v30 = sub_224DAB258();
    __swift_project_value_buffer(v30, qword_281364D78);

    v31 = sub_224DAB228();
    v32 = sub_224DAF2A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v76 = v34;
      *v33 = 136446210;
      v35 = sub_224A33F74(isUniquelyReferenced_nonNull_native, v28, &v76);

      *(v33 + 4) = v35;
      _os_log_impl(&dword_224A2F000, v31, v32, "Restored push tokens with identifiers: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x22AA5EED0](v34, -1, -1);
      MEMORY[0x22AA5EED0](v33, -1, -1);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = v72;
    v36 = v70;
    if (!v69)
    {
      break;
    }

    v37 = 0;
    v67 = (v70 + ((*(v71 + 80) + 32) & ~*(v71 + 80)));
    v65 = (v71 + 40);
    v66 = (v71 + 32);
    v38 = (v71 + 8);
    while (v37 < *(v36 + 16))
    {
      v42 = *(v71 + 72);
      v43 = *(v71 + 16);
      v44 = v73;
      v43(v73, v67 + v42 * v37, isUniquelyReferenced_nonNull_native);
      v45 = *(v68 + 16);
      v46 = sub_224DAE418();
      v28 = v47;
      swift_beginAccess();
      v43(v74, v44, isUniquelyReferenced_nonNull_native);
      v48 = *(v45 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v45 + 16);
      v49 = v75;
      *(v45 + 16) = 0x8000000000000000;
      v50 = sub_224A3A40C(v46, v28);
      v52 = v49[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_27;
      }

      v56 = v51;
      if (v49[3] < v55)
      {
        sub_224B0F12C(v55, isUniquelyReferenced_nonNull_native);
        v50 = sub_224A3A40C(v46, v28);
        if ((v56 & 1) != (v57 & 1))
        {
          sub_224DAFDD8();
          __break(1u);

          result = sub_224DAFB58();
          __break(1u);
          return result;
        }

LABEL_20:
        isUniquelyReferenced_nonNull_native = v72;
        if (v56)
        {
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v62 = v50;
      sub_224B252A4();
      v50 = v62;
      isUniquelyReferenced_nonNull_native = v72;
      if (v56)
      {
LABEL_12:
        v39 = v50;

        v40 = v75;
        (*v65)(v75[7] + v39 * v42, v74, isUniquelyReferenced_nonNull_native);
        goto LABEL_13;
      }

LABEL_21:
      v58 = v74;
      v40 = v75;
      v75[(v50 >> 6) + 8] |= 1 << v50;
      v59 = (v40[6] + 16 * v50);
      *v59 = v46;
      v59[1] = v28;
      (*v66)(v40[7] + v50 * v42, v58, isUniquelyReferenced_nonNull_native);
      v60 = v40[2];
      v54 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v54)
      {
        goto LABEL_28;
      }

      v40[2] = v61;
LABEL_13:
      ++v37;
      v41 = *(v45 + 16);
      *(v45 + 16) = v40;

      swift_endAccess();
      (*v38)(v73, isUniquelyReferenced_nonNull_native);
      v36 = v70;
      if (v69 == v37)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_25:

  return v68;
}

uint64_t sub_224CE56E0(uint64_t a1)
{
  v1 = *(a1 + 48);

  return sub_224CE578C(v2);
}

void *sub_224CE5714(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224CE5B40(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_224CE578C(uint64_t a1)
{
  v2 = v1;
  v42 = *MEMORY[0x277D85DE8];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v30 = v10;
    v31 = v2;
    v29 = &v29;
    MEMORY[0x28223BE20](v7);
    v32 = &v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v33 = 0;
    v34 = v9;
    v12 = 0;
    v2 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v10 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v36 = (v5 + 8);
    v37 = v5 + 16;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v19 = v16 | (v12 << 6);
      v20 = *(a1 + 48);
      v21 = *(v5 + 72);
      v35 = v19;
      (*(v5 + 16))(v9, v20 + v21 * v19, v4);
      if (sub_224DA95D8())
      {
        (*v36)(v9, v4);
      }

      else
      {
        v40 = sub_224DA95A8();
        v41 = v22;
        v38 = 0x6E6176656C65722FLL;
        v39 = 0xEB000000002F6563;
        sub_224AFC154();
        v23 = sub_224DAF748();
        v9 = v34;

        (*v36)(v9, v4);
        if (v23)
        {
          *&v32[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_18:
            result = sub_224B04F30(v32, v30, v33, a1);
            goto LABEL_19;
          }
        }
      }
    }

    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v12 >= v15)
      {
        goto LABEL_18;
      }

      v18 = *(v2 + 8 * v12);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v10 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  v28 = sub_224CE5714(v27, v10, a1);

  result = MEMORY[0x22AA5EED0](v27, -1, -1);
  if (!v2)
  {
    result = v28;
  }

LABEL_19:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224CE5B40(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a1;
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = v9;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v35 = v5 + 16;
  v30 = (v5 + 8);
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v18 = v15 | (v10 << 6);
    v19 = *(a3 + 48);
    v20 = *(v5 + 72);
    v29 = v18;
    (*(v5 + 16))(v9, v19 + v20 * v18, v4);
    if (sub_224DA95D8())
    {
      result = (*v30)(v9, v4);
    }

    else
    {
      v33 = sub_224DA95A8();
      v34 = v21;
      v31 = 0x6E6176656C65722FLL;
      v32 = 0xEB000000002F6563;
      sub_224AFC154();
      v22 = sub_224DAF748();
      v9 = v28;

      result = (*v30)(v9, v4);
      if (v22)
      {
        *(v26 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_17:

          return sub_224B04F30(v26, v25, v27, a3);
        }
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_17;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CE5DFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_224CE5E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_224CE5EBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_224CE5F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224CE5F60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_224CE5FBC()
{
  v0 = sub_224DAFBF8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224CE6010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_224CE6084(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_224CE60F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_224CE6160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_224CE61D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_224CE5FBC();
  *a3 = result;
  return result;
}

uint64_t sub_224CE6208@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = sub_224AAF094(*v2);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_224CE623C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_224AAF094(*v1);
}

uint64_t sub_224CE624C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_224CE5FBC();
  *a2 = result;
  return result;
}

uint64_t sub_224CE627C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_224CE699C();
  *a2 = result;
  return result;
}

uint64_t sub_224CE62A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_224CE62FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_224CE6350(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for ReplicatedConfiguration.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_224DAFC88();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAFEF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a2;
  }

  v33 = 0;
  sub_224B6AA7C();
  sub_224DAFC68();
  v10 = v31;
  v11 = v32;
  sub_224DAAD38();
  v12 = sub_224DAACF8();
  v13 = v30;
  a2 = v12;
  v29 = v11;
  LOBYTE(v31) = 1;
  v14 = sub_224DAFC38();
  v17 = v10;
  if (v15)
  {
    v18 = v8;
    v19 = a1;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281365120);
    v21 = sub_224DAB228();
    v22 = sub_224DAF278();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v29;
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = v22;
      v27 = v25;
      _os_log_impl(&dword_224A2F000, v21, v26, "activation state was not included, assuming activated", v25, 2u);
      MEMORY[0x22AA5EED0](v27, -1, -1);
    }

    sub_224A78024(v17, v24);

    (*(v30 + 8))(v18, v5);
    goto LABEL_12;
  }

  v28 = v14;
  (*(v13 + 8))(v8, v5);
  result = sub_224A78024(v10, v29);
  v19 = a1;
  if ((v28 & 0x8000000000000000) == 0)
  {
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_224CE66DC(void *a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a3;
  type metadata accessor for ReplicatedConfiguration.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_224DAFCF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAFF08();
  sub_224DAAD38();
  v10 = v16[1];
  v11 = sub_224DAAD08();
  if (v10)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v11;
  v17 = v11;
  v18 = v12;
  v15 = v12;
  v19 = 0;
  sub_224B6B30C();
  sub_224DAFCE8();
  LOBYTE(v17) = 1;
  sub_224DAFCD8();
  (*(v5 + 8))(v8, v4);
  return sub_224A78024(v14, v15);
}

uint64_t sub_224CE68D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  result = sub_224CE6350(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_224CE690C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_224CE66DC(a1, *v2, v2[1]);
}

uint64_t sub_224CE6A0C(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v32 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v29 = result;
    v30 = v4;
    v31 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v32 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v5 = -1 << *(a1 + 32);
  result = sub_224DAF798();
  v6 = *(a1 + 36);
  v29 = result;
  v30 = v6;
  v31 = 0;
LABEL_7:
  v7 = 0;
  v25 = v2;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v29;
    v10 = v30;
    v12 = v31;
    sub_224CB9ABC(v29, v30, v31, a1);
    v14 = v13;
    [v13 mutableCopy];
    sub_224DAF758();
    swift_unknownObjectRelease();
    sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
    swift_dynamicCast();
    [v27 setDefaultIntent_];
    [v27 setIntentRecommendationsContainer_];
    [v27 copy];
    sub_224DAF758();

    swift_unknownObjectRelease();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    swift_dynamicCast();

    sub_224DAF9B8();
    v15 = *(v32 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A98, &qword_224DBF930);
      v8 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v8(v28, 0);
      if (v7 == v25)
      {
LABEL_28:
        sub_224A3E204(v29, v30, v31);
        return v32;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v16 = 1 << *(a1 + 32);
      if (v11 >= v16)
      {
        goto LABEL_32;
      }

      v17 = v11 >> 6;
      v18 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v18 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v19 = v18 & (-2 << (v11 & 0x3F));
      if (v19)
      {
        v16 = __clz(__rbit64(v19)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v2 = v25;
      }

      else
      {
        v20 = v17 << 6;
        v21 = v17 + 1;
        v22 = (a1 + 64 + 8 * v17);
        v2 = v25;
        while (v21 < (v16 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_224A3E204(v11, v10, 0);
            v16 = __clz(__rbit64(v23)) + v20;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v11, v10, 0);
      }

LABEL_27:
      v29 = v16;
      v30 = v10;
      v31 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

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
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224CE6E08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x7265766F63736964;
  v4 = a1;
  v5 = 0xEE0068636E75614CLL;
  v6 = 0x73656E656C617473;
  v7 = 0xEA00000000007373;
  if (a1 != 4)
  {
    v6 = 7037793;
    v7 = 0xE300000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x7974697669746361;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x7463617265746E69;
  v9 = 0xEB000000006E6F69;
  if (a1 != 1)
  {
    v8 = 0xD000000000000012;
    v9 = 0x8000000224DC4510;
  }

  if (!a1)
  {
    v8 = 0x7265766F63736964;
    v9 = 0xE900000000000079;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE0068636E75614CLL;
      if (v10 != 0x7974697669746361)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000007373;
      if (v10 != 0x73656E656C617473)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xE300000000000000;
      if (v10 != 7037793)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB000000006E6F69;
        if (v10 != 0x7463617265746E69)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000012;
      v2 = 0x8000000224DC4510;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_224DAFD88();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_224CE6FFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006465676E6168;
  v3 = 0x437363697274656DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xE700000000000000;
      v5 = 0x64657472617473;
    }

    else
    {
      v6 = 0x8000000224DC4690;
      v5 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x437363697274656DLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (v4)
    {
      v6 = 0xEE006465676E6168;
    }

    else
    {
      v6 = 0x8000000224DC4660;
    }
  }

  v7 = 0x64657472617473;
  v8 = 0x8000000224DC4690;
  if (a2 == 2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (!a2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000224DC4660;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_224DAFD88();
  }

  return v11 & 1;
}

uint64_t sub_224CE7150(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000726564;
  v3 = 0x6C6F686563616C70;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x746F687370616E73;
    }

    else
    {
      v5 = 0x6C6F686563616C70;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000726564;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x656E696C656D6974;
  }

  else
  {
    v5 = 0x2D6C6F72746E6F63;
    if (v4 == 3)
    {
      v6 = 0xEF77656976657270;
    }

    else
    {
      v6 = 0xEC0000006576696CLL;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E696C656D6974;
  v9 = 0xEF77656976657270;
  if (a2 != 3)
  {
    v9 = 0xEC0000006576696CLL;
  }

  if (a2 != 2)
  {
    v8 = 0x2D6C6F72746E6F63;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x746F687370616E73;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_224DAFD88();
  }

  return v12 & 1;
}

uint64_t sub_224CE7300(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746F687370616E73;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x2D6C6F72746E6F63;
    if (v3 == 2)
    {
      v5 = 0xEF77656976657270;
    }

    else
    {
      v5 = 0xEC0000006576696CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656E696C656D6974;
    }

    else
    {
      v4 = 0x746F687370616E73;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0xEF77656976657270;
  if (a2 != 2)
  {
    v6 = 0xEC0000006576696CLL;
  }

  if (a2)
  {
    v2 = 0x656E696C656D6974;
  }

  if (a2 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x2D6C6F72746E6F63;
  }

  if (a2 <= 1u)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = v6;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();
  }

  return v9 & 1;
}

uint64_t sub_224CE746C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000726F74696ELL;
  v3 = 0x6F4D656369766564;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x736C6F72746E6F63;
  if (a1 != 4)
  {
    v6 = 0x6974697669746361;
    v5 = 0xEA00000000007365;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000016;
    v5 = 0x8000000224DC45E0;
  }

  v7 = 0xD00000000000001CLL;
  if (a1 == 1)
  {
    v7 = 0x6F69736E65747865;
    v8 = 0xEA0000000000736ELL;
  }

  else
  {
    v8 = 0x8000000224DC45C0;
  }

  if (!a1)
  {
    v7 = 0x6F4D656369766564;
    v8 = 0xED0000726F74696ELL;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000224DC45E0;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x736C6F72746E6F63)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEA00000000007365;
      if (v9 != 0x6974697669746361)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000736ELL;
        if (v9 != 0x6F69736E65747865)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v2 = 0x8000000224DC45C0;
      v3 = 0xD00000000000001CLL;
    }

    if (v9 != v3)
    {
LABEL_32:
      v11 = sub_224DAFD88();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v10 != v2)
  {
    goto LABEL_32;
  }

  v11 = 1;
LABEL_33:

  return v11 & 1;
}

uint64_t sub_224CE7654(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_224DAF838();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_224AFF30C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_224DAF838() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_224DAF838();
  v2 = sub_224ADD3B4(v5, v6);
LABEL_10:

  return sub_224B00A68(a1, v2);
}

uint64_t sub_224CE7798@<X0>(uint64_t *a1@<X8>)
{
  result = sub_224DAB618();
  *a1 = result;
  return result;
}

uint64_t sub_224CE77F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB708();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE7848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB6D8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE78C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_224A3796C(a1, &v6 - v4, &qword_27D6F48C0, &qword_224DB8220);
  return sub_224DAB658();
}

uint64_t sub_224CE796C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE7AB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB588();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CE7B18()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224CE7BF4()
{
  *v0;
  *v0;
  sub_224DAEE78();
}

uint64_t sub_224CE7CBC()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224CE7D94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_224CF7A7C();
  *a2 = result;
  return result;
}

void sub_224CE7DC4(unint64_t *a1@<X8>)
{
  v2 = 0xEE006465676E6168;
  v3 = 0x437363697274656DLL;
  v4 = 0xE700000000000000;
  v5 = 0x64657472617473;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = 0x8000000224DC4690;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000224DC4660;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_224CE7E5C()
{
  v17 = sub_224DACB98();
  v0 = *(v17 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DACB08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACC88();
  __swift_allocate_value_buffer(v14, qword_281356148);
  __swift_project_value_buffer(v14, qword_281356148);
  (*(v10 + 104))(v13, *MEMORY[0x277CF9B50], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CF9B40], v4);
  (*(v0 + 104))(v3, *MEMORY[0x277CF9BF0], v17);
  sub_224DACC48();
  return sub_224DACC38();
}

uint64_t sub_224CE80BC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 176);
    v1 = sub_224DAC0C8();
    v4 = *(v2 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_224CE8124(uint64_t *a1)
{
  v2 = sub_224DAB258();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    (*(v3 + 16))(v6, result + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v2);
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224A2F000, v10, v11, "Descriptors changed", v12, 2u);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v13 = *(v9 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy);

    v14 = sub_224DACF58();
    v15 = *(v13 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
    v16 = MEMORY[0x28223BE20](v14);
    *(&v19 - 2) = v16;
    *(&v19 - 1) = v13;
    MEMORY[0x28223BE20](v16);
    *(&v19 - 2) = sub_224CF7DE0;
    *(&v19 - 1) = v17;
    os_unfair_lock_lock(v15 + 4);
    sub_224CF7DFC(v18);
    os_unfair_lock_unlock(v15 + 4);

    sub_224CEE034(0);
  }

  return result;
}

uint64_t sub_224CE837C()
{
  v0 = sub_224DAB258();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    (*(v1 + 16))(v4, result + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v0);

    v7 = sub_224DAB228();
    v8 = sub_224DAF2A8();

    if (!os_log_type_enabled(v7, v8))
    {
LABEL_9:

      (*(v1 + 8))(v4, v0);
      sub_224CEE034(1);
    }

    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v9 = 136446210;
    v10 = v6[31];
    v11 = v6[32];
    __swift_project_boxed_opaque_existential_1(v6 + 28, v10);
    (*(v11 + 32))(v22, 768, v10, v11);
    if (v22[5])
    {
      v12 = sub_224C160B0();
      sub_224A699F0(v22);
      if (v12)
      {
        v13 = sub_224A3B79C(0, &unk_281350890, 0x277CFA3F8);
        v14 = MEMORY[0x22AA5D380](v12, v13);
        v16 = v15;

        v17 = v14;
LABEL_8:
        v18 = sub_224A33F74(v17, v16, &v23);

        *(v9 + 4) = v18;
        _os_log_impl(&dword_224A2F000, v7, v8, "Received metrics change: %{public}s", v9, 0xCu);
        v19 = v21;
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x22AA5EED0](v19, -1, -1);
        MEMORY[0x22AA5EED0](v9, -1, -1);
        goto LABEL_9;
      }
    }

    else
    {
      sub_224A3311C(v22, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v16 = 0xE300000000000000;
    v17 = 7104878;
    goto LABEL_8;
  }

  return result;
}

void sub_224CE8640(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
    MEMORY[0x28223BE20](Strong);
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
    sub_224DAF3E8();
  }

  else
  {
    v6 = sub_224DAE4F8();
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_224CE8774(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v34 - v4;
  v6 = sub_224DAF3B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(result + 176);
    v42[0] = v16;
    v20 = v16;
    v21 = sub_224DAC168();

    if (v21 && (v39 = v20, v22 = sub_224A73210(v21), , v22))
    {
      v34[0] = v22;
      sub_224DABE38();
      v37 = v7;
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      v36 = sub_224DAD178();
      *&v40[0] = v36;
      sub_224DAF378();
      v41 = *(v18 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
      v23 = v41;
      v24 = sub_224DAF358();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      v35 = v23;
      v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
      v38 = v12;
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
      sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
      sub_224DAB468();
      sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

      (*(v37 + 8))(v10, v6);

      v25 = swift_allocObject();
      swift_weakInit();
      sub_224A3317C(v42, v40);
      v26 = swift_allocObject();
      v27 = v39;
      *(v26 + 16) = v25;
      *(v26 + 24) = v27;
      sub_224A36F98(v40, v26 + 32);
      sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
      v28 = v27;
      v29 = sub_224DAB488();

      (*(v38 + 8))(v15, v11);
      v30 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_environmentSubscriptions;
      swift_beginAccess();
      v31 = *(v18 + v30);
      if ((v31 & 0xC000000000000001) == 0)
      {
LABEL_10:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v18 + v30);
        sub_224A73460(v29, v28, isUniquelyReferenced_nonNull_native);
        *(v18 + v30) = v41;
        swift_endAccess();

        return __swift_destroy_boxed_opaque_existential_1(v42);
      }

      if (v31 < 0)
      {
        v32 = *(v18 + v30);
      }

      else
      {
        v32 = v31 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_224DAF838();
      if (!__OFADD__(result, 1))
      {
        *(v18 + v30) = sub_224D2D250(v32, result + 1);
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224CE8CA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_224DAB728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    sub_224DAD168();
    sub_224CED2FC(a3);

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_224CE8DD8(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_224B0E37C(v1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224CE8E74(uint64_t a1)
{
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v10 + 16))(v13, Strong + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v9);

    (*(v3 + 16))(v8, a1, v2);
    v15 = v3;
    v16 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = v2;
      v19 = v18;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v19 = 136446210;
      sub_224A828F0(&qword_281350C28, MEMORY[0x277CE3D70]);
      v31 = v9;
      v20 = v15;
      v21 = sub_224DAFD28();
      v32 = a1;
      v23 = v22;
      (*(v20 + 8))(v8, v33);
      v24 = sub_224A33F74(v21, v23, &v35);
      a1 = v32;

      *(v19 + 4) = v24;
      _os_log_impl(&dword_224A2F000, v16, v17, "Protection Type changed to %{public}s", v19, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      v26 = v19;
      v2 = v33;
      MEMORY[0x22AA5EED0](v26, -1, -1);

      (*(v10 + 8))(v13, v31);
      v3 = v20;
    }

    else
    {

      (*(v15 + 8))(v8, v2);
      (*(v10 + 8))(v13, v9);
      v3 = v15;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = *(result + 176);

    (*(v3 + 16))(v34, a1, v2);
    sub_224DAC0A8();
  }

  return result;
}

uint64_t sub_224CE9280(NSObject *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224CEF4B4(a1, a2, a3);
  }

  return result;
}

uint64_t *sub_224CE92FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_persistentSubscriptions;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_224DAF838();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v5;
    }

    while (v7 != v4);
  }

  v8 = v1[2];
  swift_unknownObjectRelease();
  v9 = v1[4];

  v10 = v1[5];

  v11 = v1[6];

  __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  __swift_destroy_boxed_opaque_existential_1(v1 + 12);
  __swift_destroy_boxed_opaque_existential_1(v1 + 17);
  v12 = v1[22];

  __swift_destroy_boxed_opaque_existential_1(v1 + 23);
  __swift_destroy_boxed_opaque_existential_1(v1 + 28);
  v13 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
  v14 = sub_224DAB258();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_archiveVersionProvider));
  v16 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager);

  v17 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__deviceUpdateTask);

  v18 = *(v1 + v2);

  v19 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_environmentSubscriptions);

  v20 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors);

  v21 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_waitingOnEventsToPrecache);

  v22 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_queuedPrecacheEvents);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver));
  sub_224A3311C(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_replicator, &qword_27D6F58B8, &qword_224DBBDC0);
  return v1;
}

uint64_t sub_224CE956C()
{
  sub_224CE92FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobilePlaceholderService()
{
  result = qword_2813560E0;
  if (!qword_2813560E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CE9618()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224CE971C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v25 = &v24 - v8;
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v9);
  v14 = sub_224DAB228();
  v15 = sub_224DAF2A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_224A2F000, v14, v15, "Start", v16, 2u);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v17 = a1[21];
  __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
  v28 = sub_224DAC6A8();
  v29 = *(a1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  v18 = v29;
  v19 = sub_224DAF358();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v21 = v25;
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
  v22 = v27;
  sub_224DAB488();

  (*(v26 + 8))(v21, v22);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400);
  sub_224DAB318();
  swift_endAccess();

  return sub_224CEE034(2);
}

uint64_t sub_224CE9BF0(uint64_t *a1)
{
  v2 = sub_224DACB98();
  v31 = *(v2 - 8);
  v32 = v2;
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DACB08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB28();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DACC88();
  v33 = *(v16 - 8);
  v34 = v16;
  v17 = *(v33 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    (*(v12 + 104))(v15, *MEMORY[0x277CF9B50], v11);
    (*(v7 + 104))(v10, *MEMORY[0x277CF9B40], v6);
    (*(v31 + 104))(v5, *MEMORY[0x277CF9B98], v32);
    sub_224DACC48();
    sub_224DACC38();
    v23 = *(v20 + 16);
    if (v23)
    {
      v24 = v20 + 32;
      do
      {
        sub_224A3317C(v24, v36);
        __swift_project_boxed_opaque_existential_1(v36, v36[3]);
        v25 = sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v36);
        v26 = *(v22 + 176);
        v35 = v25;
        v27 = v25;
        v28 = sub_224DAC168();

        if (v28)
        {

          v29 = *(v22 + 176);
          v35 = v27;
          sub_224DAC138();
        }

        v24 += 40;
        --v23;
      }

      while (v23);
    }

    return (*(v33 + 8))(v19, v34);
  }

  return result;
}

uint64_t sub_224CE9F80(uint64_t a1, uint64_t a2)
{
  v192 = a2;
  v162 = a1;
  v3 = sub_224DAB258();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v146 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v146 - v12;
  v161 = sub_224DAE918();
  v195 = *(v161 - 8);
  v14 = *(v195 + 8);
  MEMORY[0x28223BE20](v161);
  v160 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v172 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v171 = &v146 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v182 = &v146 - v23;
  MEMORY[0x28223BE20](v22);
  v189 = &v146 - v24;
  v181 = sub_224DAC268();
  v25 = *(v181 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v181);
  v159 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v158 = &v146 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v157 = &v146 - v32;
  MEMORY[0x28223BE20](v31);
  v179 = &v146 - v33;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v34 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v169 = &v146 - v35;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v183 = *(v193 - 8);
  v36 = *(v183 + 64);
  v37 = MEMORY[0x28223BE20](v193);
  v168 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v178 = &v146 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v175 = &v146 - v42;
  MEMORY[0x28223BE20](v41);
  v180 = &v146 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v196 = &v146 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v185 = &v146 - v48;
  v49 = v2[31];
  v50 = v2[32];
  __swift_project_boxed_opaque_existential_1(v2 + 28, v49);
  (*(v50 + 32))(v201, 768, v49, v50);
  if (!*(&v202 + 1))
  {
    sub_224A3311C(v201, &qword_27D6F50E0, &qword_224DB41A0);
    (*(v4 + 16))(v8, v2 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v3);
    v140 = sub_224DAB228();
    v141 = sub_224DAF278();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_224A2F000, v140, v141, "No hosts", v142, 2u);
      MEMORY[0x22AA5EED0](v142, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    return 0;
  }

  v163 = v2;
  v203[0] = v201[0];
  v203[1] = v201[1];
  v203[2] = v202;
  v51 = sub_224A86CAC();
  if (!v51)
  {
LABEL_58:
    (*(v4 + 16))(v11, v163 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v3);
    v143 = sub_224DAB228();
    v144 = sub_224DAF278();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      *v145 = 0;
      _os_log_impl(&dword_224A2F000, v143, v144, "No configurations", v145, 2u);
      MEMORY[0x22AA5EED0](v145, -1, -1);
    }

    (*(v4 + 8))(v11, v3);
    sub_224A699F0(v203);
    return 0;
  }

  if (!*(v51 + 16))
  {

    goto LABEL_58;
  }

  v156 = v3;
  v155 = v13;
  v52 = sub_224CF6B9C(v51);

  v55 = 0;
  v57 = v52 + 64;
  v56 = *(v52 + 64);
  v176 = v52;
  v58 = 1 << *(v52 + 32);
  v199 = MEMORY[0x277D84F90];
  v200 = MEMORY[0x277D84FA0];
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & v56;
  v154 = MEMORY[0x277D84F90];
  v153 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver;
  v167 = (v58 + 63) >> 6;
  v152 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
  v188 = (v183 + 16);
  v190 = (v183 + 32);
  v166 = "er";
  v177 = (v183 + 56);
  v165 = (v183 + 48);
  v191 = (v183 + 8);
  v151 = (v25 + 16);
  v173 = (v25 + 8);
  v150 = *MEMORY[0x277CE3D68];
  v149 = v195 + 104;
  v148 = (v4 + 16);
  v147 = (v4 + 8);
  *&v54 = 136315138;
  v146 = v54;
  v61 = v193;
  v62 = v175;
  v63 = v196;
  v184 = v52 + 64;
  while (v60)
  {
    v65 = v55;
LABEL_22:
    v69 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v70 = v69 | (v65 << 6);
    v71 = v176;
    v72 = v183;
    v73 = v180;
    (*(v183 + 16))(v180, *(v176 + 48) + *(v183 + 72) * v70, v61);
    v74 = *(*(v71 + 56) + 8 * v70);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v76 = *(v75 + 48);
    v77 = *(v72 + 32);
    v63 = v196;
    v78 = v73;
    v68 = v190;
    v77(v196, v78, v61);
    *(v63 + v76) = v74;
    (*(*(v75 - 8) + 56))(v63, 0, 1, v75);
    v79 = v74;
LABEL_23:
    v80 = v185;
    sub_224A44E4C(v63, v185, &qword_27D6F4930, &unk_224DB8D00);
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
    {
      sub_224A699F0(v203);

      return v154;
    }

    v64 = *(v80 + *(v81 + 48));
    v186 = *v68;
    v82 = (v186)(v62, v80, v61);
    v195 = MEMORY[0x22AA5E4C0](v82);
    v83 = [v64 metricsSpecification];
    v84 = sub_224DAC248();
    v85 = [v84 family];

    v194 = v83;
    v86 = [v83 allMetricsForFamily_];
    sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
    sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0);
    v87 = sub_224DAF1B8();

    v88 = sub_224DAC258();
    if ((v87 & 0xC000000000000001) != 0)
    {
      v89 = sub_224DAF888();

      if (v89)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*(v87 + 16))
      {
        v187 = v64;
        v97 = *(v87 + 40);
        v98 = sub_224DAF698();
        v99 = -1 << *(v87 + 32);
        v100 = v98 & ~v99;
        if ((*(v87 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100))
        {
          v101 = ~v99;
          while (1)
          {
            v102 = *(*(v87 + 48) + 8 * v100);
            v103 = sub_224DAF6A8();

            if (v103)
            {
              break;
            }

            v100 = (v100 + 1) & v101;
            if (((*(v87 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v64 = v187;
LABEL_26:
          v187 = v64;
          sub_224DA9FF8();
          v90 = v193;
          v174 = sub_224DAA1F8();
          sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0);
          sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0);
          sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0);
          sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0);
          v91 = v178;
          sub_224DAA1D8();
          v92 = sub_224DAC248();
          v174 = sub_224DAC258();
          v93 = v189;
          (*v188)(v189, v91, v90);
          v94 = *v177;
          (*v177)(v93, 0, 1, v90);
          v95 = [v92 intentReference];
          if (v95)
          {

            v96 = [v92 widgetByReplacingIntent_];
          }

          else
          {
            v96 = v92;
          }

          v105 = v96;
          v106 = v168;
          v107 = v171;
          v108 = v193;
          v94(v182, 1, 1, v193);
          sub_224A3796C(v189, v107, &qword_27D6F56C0, &unk_224DB3580);
          if ((*v165)(v107, 1, v108) == 1)
          {
            v109 = v105;
            sub_224A3311C(v107, &qword_27D6F56C0, &unk_224DB3580);
          }

          else
          {
            v164 = v92;
            v110 = v186;
            (v186)(v106, v107, v108);
            v111 = v105;
            sub_224DAA1F8();
            v112 = sub_224DAA048();

            if (v112)
            {
              v113 = v106;
              v114 = v182;
              sub_224A3311C(v182, &qword_27D6F56C0, &unk_224DB3580);
              (v110)(v114, v113, v108);
              v94(v114, 0, 1, v108);
            }

            else
            {
              (*v191)(v106, v108);
            }

            v92 = v164;
          }

          v115 = v182;
          sub_224A3796C(v182, v172, &qword_27D6F56C0, &unk_224DB3580);
          v116 = v179;
          sub_224DAC228();

          sub_224A3311C(v115, &qword_27D6F56C0, &unk_224DB3580);
          sub_224A3311C(v189, &qword_27D6F56C0, &unk_224DB3580);

          if ((sub_224CD70BC(v116, v200) & 1) == 0)
          {
            v117 = *v151;
            v118 = v158;
            v119 = v181;
            (*v151)(v158, v116, v181);
            v120 = v157;
            sub_224ADCAF4(v157, v118);
            v186 = *v173;
            v186(v120, v119);
            v121 = v163;
            v122 = v163[16];
            __swift_project_boxed_opaque_existential_1(v163 + 12, v163[15]);
            sub_224DADA58();
            sub_224DABE88();
            v174 = v117;
            v117(v120, v179, v119);
            (*v149)(v160, v150, v161);
            sub_224A3317C(v201, &v198);
            sub_224A3317C(v121 + v153, v197);
            v123 = sub_224DABE48();
            MEMORY[0x22AA5D350]();
            if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v139 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_224DAF038();
            }

            sub_224DAF078();
            v154 = v199;
            v124 = v155;
            v125 = v156;
            (*v148)(v155, v121 + v152, v156);
            v164 = v123;
            v126 = v159;
            v127 = v181;
            v174(v159, v192, v181);
            v128 = sub_224DAB228();
            v129 = sub_224DAF278();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              v131 = v126;
              v132 = swift_slowAlloc();
              v198 = v132;
              *v130 = v146;
              sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978]);
              v133 = sub_224DAFD28();
              v135 = v134;
              v136 = v186;
              v186(v131, v181);
              v137 = sub_224A33F74(v133, v135, &v198);

              *(v130 + 4) = v137;
              _os_log_impl(&dword_224A2F000, v128, v129, "Found %s", v130, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v132);
              MEMORY[0x22AA5EED0](v132, -1, -1);
              MEMORY[0x22AA5EED0](v130, -1, -1);

              (*v147)(v155, v156);
              __swift_destroy_boxed_opaque_existential_1(v201);
              v136(v179, v181);
            }

            else
            {

              v138 = v186;
              v186(v126, v127);
              (*v147)(v124, v125);
              __swift_destroy_boxed_opaque_existential_1(v201);
              v138(v179, v127);
            }

            v61 = v193;
            (*v191)(v178, v193);
            v62 = v175;
            v57 = v184;
            v63 = v196;
            goto LABEL_10;
          }

          (*v173)(v116, v181);
          v61 = v193;
          (*v191)(v178, v193);
        }

        else
        {
LABEL_33:

          v61 = v193;
        }

        v62 = v175;
        v63 = v196;
        v57 = v184;
LABEL_10:
        v64 = v187;
        goto LABEL_11;
      }
    }

    v61 = v193;
    v63 = v196;
    v57 = v184;
LABEL_11:
    objc_autoreleasePoolPop(v195);

    result = (*v191)(v62, v61);
  }

  if (v167 <= v55 + 1)
  {
    v66 = v55 + 1;
  }

  else
  {
    v66 = v167;
  }

  v67 = v66 - 1;
  v68 = v190;
  while (1)
  {
    v65 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v65 >= v167)
    {
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v104 - 8) + 56))(v63, 1, 1, v104);
      v60 = 0;
      v55 = v67;
      goto LABEL_23;
    }

    v60 = *(v57 + 8 * v65);
    ++v55;
    if (v60)
    {
      v55 = v65;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CEB668(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v24 = a2;
  v23 = sub_224DACB98();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DACB08();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACB28();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DACC88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CF9B50], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CF9B40], v22);
  (*(v2 + 16))(v5, v24, v23);
  sub_224DACC48();
  sub_224DACC38();
  v20 = *(v26 + 176);
  v27 = v25;
  sub_224DAC138();
  return (*(v16 + 8))(v19, v15);
}

id sub_224CEB940()
{
  [v0 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
  swift_dynamicCast();
  [v2 setDefaultIntent_];
  [v2 setIntentRecommendationsContainer_];
  [v2 copy];
  sub_224DAF758();

  swift_unknownObjectRelease();
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  swift_dynamicCast();
  return v2;
}

uint64_t sub_224CEBA50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v192 = a2;
  v177 = sub_224DAB258();
  v176 = *(v177 - 8);
  v6 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v174 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v159 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v169 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v190 = &v159 - v17;
  v188 = sub_224DA9CC8();
  v191 = *(v188 - 8);
  v18 = *(v191 + 64);
  v19 = MEMORY[0x28223BE20](v188);
  v175 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v187 = &v159 - v21;
  v171 = sub_224DAD8A8();
  v170 = *(v171 - 1);
  v22 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v24 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAE5C8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v180 = &v159 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_224DAE588();
  v182 = *(v181 - 8);
  v28 = *(v182 + 64);
  v29 = MEMORY[0x28223BE20](v181);
  v178 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v179 = &v159 - v31;
  v32 = sub_224DAE4F8();
  v193 = *(v32 - 8);
  v194 = v32;
  v33 = *(v193 + 64);
  MEMORY[0x28223BE20](v32);
  *&v189 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_224DAC268();
  v183 = *(v35 - 8);
  v36 = *(v183 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v172 = &v159 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v159 - v39;
  v41 = sub_224DAE478();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = sub_224DAB728();
  v185 = *(v43 - 8);
  v186 = v43;
  v44 = *(v185 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v159 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v184 = &v159 - v48;
  v49 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  BSDispatchQueueAssert();
  v173 = v3;
  v50 = v3[22];
  v196 = a1;
  v51 = a1;
  v52 = sub_224DAC168();

  if (!v52)
  {
    return (*(v193 + 56))(a3, 1, 1, v194);
  }

  if (!*(v52 + 16) || (v53 = sub_224A61E5C(v192), (v54 & 1) == 0))
  {

    return (*(v193 + 56))(a3, 1, 1, v194);
  }

  v160 = v51;
  v161 = v11;
  v162 = v13;
  v163 = a3;
  v55 = *(*(v52 + 56) + 8 * v53);

  sub_224DABE38();
  __swift_project_boxed_opaque_existential_1(&v196, v197);
  v168 = v35;
  v56 = v184;
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(&v196);
  sub_224DABE58();
  v57 = sub_224DAC248();
  v59 = v183 + 8;
  v58 = *(v183 + 8);
  v58(v40, v168);
  [v57 family];

  sub_224DAE488();
  sub_224DAB5F8();
  sub_224DABE58();
  sub_224DAC258();
  v58(v40, v168);
  sub_224DAB628();
  v60 = v56;
  v61 = v168;
  (*(v185 + 16))(v47, v60, v186);
  sub_224DAE4D8();
  v166 = v55;
  sub_224DABE58();
  v62 = sub_224DAC248();
  v165 = v59;
  v164 = v58;
  v58(v40, v61);
  v63 = [v62 family];

  v159 = v63;
  LODWORD(v55) = CHSWidgetFamilyIsAccessory();
  swift_getKeyPath();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAB518();
  sub_224DAE4B8();
  v195 = MEMORY[0x277D84FA0];
  v167 = v55;
  if ((v55 & 1) == 0)
  {
    sub_224DAE5B8();
    v64 = v178;
    sub_224DAE568();
    v65 = v179;
    sub_224ADC50C(v179, v64);
    (*(v182 + 8))(v65, v181);
  }

  v66 = v173;
  v67 = v173[27];
  __swift_project_boxed_opaque_existential_1(v173 + 23, v173[26]);
  v68 = *(v67 + 24);
  v69 = sub_224DADA38();
  v70 = v188;
  v71 = v191;
  if (v69)
  {
    sub_224DABE58();
    v72 = sub_224DAC248();
    v164(v40, v61);
    sub_224DACA18();

    v73 = v171;
    sub_224DACF08();

    (*(v170 + 8))(v24, v73);
    v74 = v196;
    v75 = v190;
    v76 = v175;
    if (!v196)
    {
      goto LABEL_17;
    }

    if (v167)
    {
      goto LABEL_9;
    }

    if ([v196 isLinkedOnOrAfter_])
    {
      sub_224DAE5A8();
      v78 = v178;
      sub_224DAE568();
      v79 = v179;
      sub_224ADC50C(v179, v78);
      v171 = *(v182 + 8);
      v80 = v181;
      (v171)(v79, v181);
      sub_224DAE5B8();
      v76 = v175;
      sub_224DAE568();
      v81 = v78;
      v75 = v190;
      sub_224ADC50C(v79, v81);

      (v171)(v79, v80);
      v71 = v191;
    }

    else
    {
      if (![v74 isLinkedOnOrAfter_])
      {
LABEL_9:

        goto LABEL_17;
      }

      sub_224DAE5B8();
      v82 = v178;
      sub_224DAE568();
      v83 = v179;
      v84 = v82;
      v76 = v175;
      sub_224ADC50C(v179, v84);

      (*(v182 + 8))(v83, v181);
    }
  }

  else
  {
    v75 = v190;
    v76 = v175;
  }

LABEL_17:
  v85 = v66[11];
  __swift_project_boxed_opaque_existential_1(v66 + 7, v66[10]);
  sub_224DAA068();
  v86 = *(v71 + 104);
  v86(v76, *MEMORY[0x277CF9F08], v70);
  v87 = sub_224DA9CB8();
  v88 = *(v71 + 8);
  v88(v76, v70);
  v175 = v88;
  v191 = v71 + 8;
  if (v87)
  {
    v89 = (v182 + 8);
    if (v167)
    {
      sub_224DAE598();
      v90 = v75;
      v91 = v178;
      sub_224DAE568();
      v92 = v179;
      sub_224ADC50C(v179, v91);
      v93 = *v89;
      v94 = v181;
      (*v89)(v92, v181);
      sub_224DAE5B8();
      sub_224DAE568();
      v95 = v92;
      v96 = v91;
      v75 = v90;
    }

    else
    {
      sub_224DAE5B8();
      v103 = v178;
      sub_224DAE568();
      v92 = v179;
      sub_224ADC50C(v179, v103);
      v93 = *v89;
      v94 = v181;
      (*v89)(v92, v181);
      sub_224DAE598();
      sub_224DAE568();
      sub_224ADC50C(v92, v103);
      v93(v92, v94);
      sub_224DAE5B8();
      sub_224DAE568();
      v95 = v92;
      v96 = v103;
    }

    sub_224ADC50C(v95, v96);
    v93(v92, v94);
    v98 = v174;
    v99 = v189;
    if (v159 == 1)
    {
      sub_224DAE598();
      v104 = v178;
      sub_224DAE568();
      v105 = v98;
      v106 = v179;
      sub_224ADC50C(v179, v104);
      v107 = v181;
      v93(v106, v181);
      sub_224DAE5B8();
      sub_224DAE568();
      sub_224ADC50C(v106, v104);
      v93(v106, v107);
      sub_224DAE5A8();
      sub_224DAE568();
      v108 = v104;
      v75 = v190;
      sub_224ADC50C(v106, v108);
      v109 = v106;
      v98 = v105;
      v93(v109, v107);
    }

    goto LABEL_28;
  }

  v86(v76, *MEMORY[0x277CF9F00], v70);
  v97 = sub_224DA9CB8();
  v88(v76, v70);
  v98 = v174;
  v99 = v189;
  if ((v97 & 1) == 0)
  {
LABEL_28:
    if (v167)
    {
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA8, &unk_224DBFB90);
      v110 = sub_224DAB528();
      v111 = *(v110 - 8);
      v112 = *(v111 + 72);
      v113 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_224DB3100;
      v75 = v190;
      (*(v111 + 104))(v114 + v113, *MEMORY[0x277CDF3C0], v110);
      sub_224DAE4B8();
    }

    goto LABEL_30;
  }

  v100 = v167;
  if (v159 == 1)
  {
    v100 = 1;
  }

  if (v100 == 1)
  {
    sub_224DAE598();
    v101 = v178;
    sub_224DAE568();
    v102 = v179;
    sub_224ADC50C(v179, v101);
    (*(v182 + 8))(v102, v181);
    goto LABEL_28;
  }

LABEL_30:
  swift_getKeyPath();
  v115 = v195;
  v116 = *(v195 + 16);
  if (v116)
  {
    v117 = sub_224B0CD70(*(v195 + 16), 0);
    v118 = sub_224B2FE58(&v196, (v117 + ((*(v182 + 80) + 32) & ~*(v182 + 80))), v116, v115);
    sub_224A3B7E4();
    if (v118 == v116)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

LABEL_34:
  sub_224DAE4B8();
  sub_224DAE7B8();
  v119 = sub_224DAE7C8();
  (*(*(v119 - 8) + 56))(v75, 0, 1, v119);
  v120 = v161;
  sub_224DAC218();
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v122 = *(v121 - 8);
  if ((*(v122 + 48))(v120, 1, v121) == 1)
  {
    sub_224A3311C(v120, &qword_27D6F56C0, &unk_224DB3580);
LABEL_38:
    v126 = 0;
    goto LABEL_39;
  }

  sub_224DAA1F8();
  v124 = v123;
  (*(v122 + 8))(v120, v121);
  if (!v124)
  {
    goto LABEL_38;
  }

  sub_224A3317C(v66 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_archiveVersionProvider, &v196);
  __swift_project_boxed_opaque_existential_1(&v196, v197);
  v125 = v169;
  sub_224DAD4E8();

  sub_224A3311C(v75, &qword_27D6F48C0, &qword_224DB8220);
  sub_224A44E4C(v125, v75, &qword_27D6F48C0, &qword_224DB8220);
  __swift_destroy_boxed_opaque_existential_1(&v196);
  v126 = 1;
LABEL_39:
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v127 = swift_allocObject();
  v189 = xmmword_224DB3100;
  *(v127 + 16) = xmmword_224DB3100;
  *(v127 + 32) = v126;
  sub_224DAE4B8();
  swift_getKeyPath();
  v128 = swift_allocObject();
  *(v128 + 16) = v189;
  *(v128 + 32) = v126;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v129 = *(v162 + 72);
  v130 = (*(v162 + 80) + 32) & ~*(v162 + 80);
  v131 = swift_allocObject();
  *(v131 + 16) = v189;
  sub_224A3796C(v75, v131 + v130, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v132 = swift_allocObject();
  *(v132 + 16) = v189;
  *(v132 + 32) = v126;
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE748();
  sub_224DAE4B8();
  v133 = v176;
  v134 = v177;
  (*(v176 + 16))(v98, v66 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v177);
  v135 = v172;
  v136 = v168;
  (*(v183 + 16))(v172, v192, v168);
  v137 = v99;
  v138 = v160;
  v139 = sub_224DAB228();
  v140 = sub_224DAF278();

  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v192 = v142;
    v143 = swift_slowAlloc();
    v196 = v143;
    *v141 = 138543874;
    *(v141 + 4) = v138;
    *v142 = v138;
    *(v141 + 12) = 2082;
    v144 = v138;
    LODWORD(v189) = v140;
    v145 = sub_224DAC248();
    [v145 family];

    v146 = NSStringFromWidgetFamily();
    v147 = sub_224DAEE18();
    v149 = v148;

    v164(v135, v136);
    v150 = sub_224A33F74(v147, v149, &v196);

    *(v141 + 14) = v150;
    *(v141 + 22) = 2082;
    swift_beginAccess();
    v151 = sub_224DAE498();
    v153 = sub_224A33F74(v151, v152, &v196);

    *(v141 + 24) = v153;
    _os_log_impl(&dword_224A2F000, v139, v189, "Environment for %{public}@-%{public}s: %{public}s", v141, 0x20u);
    v154 = v192;
    sub_224A3311C(v192, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v154, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v143, -1, -1);
    MEMORY[0x22AA5EED0](v141, -1, -1);

    (*(v176 + 8))(v98, v177);
    v155 = v190;
  }

  else
  {

    v164(v135, v136);
    (*(v133 + 8))(v98, v134);
    v155 = v75;
  }

  sub_224A3311C(v155, &qword_27D6F48C0, &qword_224DB8220);
  (v175)(v187, v188);
  (*(v185 + 8))(v184, v186);
  swift_beginAccess();
  v157 = v193;
  v156 = v194;
  v158 = v163;
  (*(v193 + 16))(v163, v137, v194);
  (*(v157 + 56))(v158, 0, 1, v156);
  return (*(v157 + 8))(v137, v156);
}

uint64_t sub_224CED22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

void sub_224CED2FC(void *a1)
{
  v3 = sub_224DACB98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DACB28();
  v89 = *(v90 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v92 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DACC88();
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DAB258();
  v86 = *(v88 - 8);
  v18 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v85 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_224DAB728();
  v107 = *(v98 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x28223BE20](v98);
  v110 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_224DAE4F8();
  v100 = *(v97 - 8);
  v22 = *(v100 + 64);
  MEMORY[0x28223BE20](v97);
  v109 = v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_224DAC268();
  v105 = *(v108 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v103 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v111 = v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v104 = v75 - v30;
  v31 = *(v1 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  BSDispatchQueueAssert();
  v87 = v1;
  v32 = *(v1 + 176);
  v114[0] = a1;
  v33 = a1;
  v84 = v32;
  v34 = sub_224DAC168();

  v106 = v34;
  if (!v34)
  {
    return;
  }

  v76 = v33;
  v77 = v15;
  v78 = v9;
  v79 = v8;
  v80 = v12;
  v81 = v4;
  v82 = v7;
  v83 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_224DBF6A0;
  *(v35 + 32) = swift_getKeyPath();
  *(v35 + 40) = swift_getKeyPath();
  *(v35 + 48) = swift_getKeyPath();
  v115 = v35;
  swift_getKeyPath();
  MEMORY[0x22AA5D350]();
  if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_35:
    sub_224DAF038();
  }

  sub_224DAF078();
  v36 = 0;
  v37 = v106 + 64;
  v38 = 1 << *(v106 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v106 + 64);
  v41 = (v38 + 63) >> 6;
  v102 = v105 + 16;
  v101 = v105 + 32;
  v42 = v115 & 0xFFFFFFFFFFFFFF8;
  v99 = v115;
  v94 = v115 & 0xFFFFFFFFFFFFFF8;
  if (v115 < 0)
  {
    v42 = v115;
  }

  v75[1] = v42;
  v96 = (v107 + 8);
  v95 = (v100 + 8);
  v107 = v105 + 8;
  v43 = v108;
  v44 = v104;
  v45 = v111;
  v100 = v106 + 64;
  while (1)
  {
    if (!v40)
    {
      if (v41 <= v36 + 1)
      {
        v47 = v36 + 1;
      }

      else
      {
        v47 = v41;
      }

      v48 = v47 - 1;
      while (1)
      {
        v46 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v46 >= v41)
        {
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          (*(*(v64 - 8) + 56))(v45, 1, 1, v64);
          v40 = 0;
          v36 = v48;
          goto LABEL_21;
        }

        v40 = *(v37 + 8 * v46);
        ++v36;
        if (v40)
        {
          v36 = v46;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v46 = v36;
LABEL_20:
    v49 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v50 = v49 | (v46 << 6);
    v51 = v105;
    v52 = v106;
    v53 = v103;
    (*(v105 + 16))(v103, *(v106 + 48) + *(v105 + 72) * v50, v43);
    v54 = *(*(v52 + 56) + 8 * v50);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    v56 = *(v55 + 48);
    v57 = *(v51 + 32);
    v45 = v111;
    v57(v111, v53, v43);
    *(v45 + v56) = v54;
    (*(*(v55 - 8) + 56))(v45, 0, 1, v55);
    v58 = v54;
    v44 = v104;
    v37 = v100;
LABEL_21:
    sub_224A44E4C(v45, v44, &qword_27D6F47F0, &unk_224DB7850);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    if ((*(*(v59 - 8) + 48))(v44, 1, v59) == 1)
    {

      return;
    }

    v60 = *(v44 + *(v59 + 48));
    sub_224DABE68();
    if (!v113)
    {

      sub_224A3311C(&v112, &unk_27D6F3CB0, &unk_224DB7860);
      v43 = v108;
      goto LABEL_9;
    }

    sub_224A36F98(&v112, v114);
    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    sub_224DAEA78();
    sub_224DABE38();
    __swift_project_boxed_opaque_existential_1(&v112, v113);
    sub_224DAD168();
    if (v99 >> 62)
    {
      sub_224DAF768();

      sub_224DAFB68();
    }

    else
    {
      swift_bridgeObjectRetain_n();
      sub_224DAFD98();
      sub_224DAF768();
    }

    v61 = v109;
    v62 = v110;
    v63 = sub_224DAE4E8();

    (*v96)(v62, v98);
    (*v95)(v61, v97);
    __swift_destroy_boxed_opaque_existential_1(&v112);
    if ((v63 & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v114);
    v43 = v108;
    v45 = v111;
LABEL_9:
    (*v107)(v44, v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v114);
  (*v107)(v44, v108);
  v65 = v86;
  v66 = v85;
  v67 = v88;
  (*(v86 + 16))(v85, v87 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v88);
  v68 = v76;
  v69 = sub_224DAB228();
  v70 = sub_224DAF2A8();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138543362;
    *(v71 + 4) = v68;
    *v72 = v68;
    v73 = v68;
    _os_log_impl(&dword_224A2F000, v69, v70, "Reloading placeholder for %{public}@ because environment no longer matches.", v71, 0xCu);
    sub_224A3311C(v72, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v72, -1, -1);
    MEMORY[0x22AA5EED0](v71, -1, -1);
  }

  (*(v65 + 8))(v66, v67);
  (*(v89 + 104))(v92, *MEMORY[0x277CF9B50], v90);
  (*(v78 + 104))(v80, *MEMORY[0x277CF9B40], v79);
  (*(v81 + 104))(v82, *MEMORY[0x277CF9BA8], v83);
  sub_224DACC48();
  v74 = v91;
  sub_224DACC38();
  v114[0] = v68;
  sub_224DAC138();
  (*(v93 + 8))(v74, v77);
}

uint64_t sub_224CEDFDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_224DAB5A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_224CEE034(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v65 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_queuedPrecacheEvents;
  swift_beginAccess();
  sub_224ADCDD4(v67, a1);
  swift_endAccess();
  v18 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_waitingOnEventsToPrecache;
  swift_beginAccess();
  if (*(*&v1[v18] + 16))
  {
    v61 = v17;
    v62 = v9;
    swift_beginAccess();
    sub_224B02CC4(a1);
    swift_endAccess();
    v19 = *(v5 + 16);
    v63 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
    v64 = v19;
    v19(v16, &v1[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v4);
    v20 = sub_224DAB228();
    v21 = v5;
    v22 = sub_224DAF2A8();
    if (os_log_type_enabled(v20, v22))
    {
      v23 = swift_slowAlloc();
      v60 = v4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v59 = v12;
      v26 = v25;
      v67[0] = v25;
      *v24 = 136446210;
      v66 = a1;
      v27 = sub_224DAEE28();
      v29 = sub_224A33F74(v27, v28, v67);
      v58 = v21;
      v30 = v29;

      *(v24 + 4) = v30;
      _os_log_impl(&dword_224A2F000, v20, v22, "Removing pre-caching startup reason: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v31 = v26;
      v12 = v59;
      MEMORY[0x22AA5EED0](v31, -1, -1);
      v32 = v24;
      v4 = v60;
      MEMORY[0x22AA5EED0](v32, -1, -1);

      v5 = v58;
      v33 = v58;
    }

    else
    {

      v33 = v21;
      v5 = v21;
    }

    v34 = *(v33 + 8);
    v34(v16, v4);
    if (*(*&v2[v18] + 16))
    {
      v35 = v65;
      v64(v65, &v2[v63], v4);
      v36 = sub_224DAB228();
      v37 = sub_224DAF2A8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_224A2F000, v36, v37, "Still waiting on other events before pre-caching.", v38, 2u);
        MEMORY[0x22AA5EED0](v38, -1, -1);
      }

      return (v34)(v35, v4);
    }

    v64(v12, &v2[v63], v4);
    v40 = sub_224DAB228();
    v41 = sub_224DAF2A8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v12;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_224A2F000, v40, v41, "All startup events received to enable pre-caching.", v43, 2u);
      v44 = v43;
      v12 = v42;
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    v34(v12, v4);
    v17 = v61;
    v9 = v62;
  }

  v45 = *(v2 + 27);
  __swift_project_boxed_opaque_existential_1(v2 + 23, *(v2 + 26));
  v46 = *(v45 + 24);
  if (sub_224DADA38())
  {
    v47 = sub_224DACF18();

    v48 = sub_224AE9E10(&unk_283828720);
    v49 = *&v2[v17];

    v50 = sub_224CF71F8(v48, v49, sub_224CF73D4, sub_224CF73D4);

    v51 = v50[2];

    v52 = *&v2[v17];
    *&v2[v17] = MEMORY[0x277D84FA0];

    v53 = sub_224AE8EB4(v47);

    sub_224CEE620(v53, v51 != 0);
  }

  else
  {
    (*(v5 + 16))(v9, &v2[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v4);
    v54 = sub_224DAB228();
    v55 = sub_224DAF2A8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_224A2F000, v54, v55, "No descriptors available to pre-cache.", v56, 2u);
      MEMORY[0x22AA5EED0](v56, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_224CEE620(uint64_t a1, int a2)
{
  v3 = v2;
  v121 = a2;
  v122 = a1;
  v129 = *MEMORY[0x277D85DE8];
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v114 - v10;
  v12 = sub_224DAB8C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_224DAB8F8();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {
    goto LABEL_90;
  }

  v20 = *(v3 + 248);
  v21 = *(v3 + 256);
  __swift_project_boxed_opaque_existential_1((v3 + 224), v20);
  (*(v21 + 32))(&aBlock, 768, v20, v21);
  if (!*(&v127 + 1))
  {
    sub_224A3311C(&aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    (*(v5 + 16))(v9, v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v4);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "Unable to update placeholders because no hosts exist", v45, 2u);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    result = (*(v5 + 8))(v9, v4);
    goto LABEL_105;
  }

  v128[0] = aBlock;
  v128[1] = v126;
  v128[2] = v127;
  v22 = sub_224C160B0();
  if (!v22)
  {
    goto LABEL_92;
  }

  if (v22 >> 62)
  {
    goto LABEL_91;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v23)
  {
LABEL_92:
    (*(v5 + 16))(v11, v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v4);
    v95 = sub_224DAB228();
    v96 = sub_224DAF2A8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_224A2F000, v95, v96, "Unable to update placeholders because no metrics specifications exist", v97, 2u);
      MEMORY[0x22AA5EED0](v97, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_104;
  }

LABEL_6:
  v4 = 0;
  v24 = sub_224CE6A0C(v122);
  v25 = sub_224AE8EB4(v24);

  v11 = MEMORY[0x277D84FA0];
  if (*(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors))
  {
    v26 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors) = v25;
  v119 = 0;
  v120 = v3;
  v122 = v25;
  if ((v26 & 0xC000000000000001) != 0)
  {
    *&aBlock = v11;

    sub_224DAF7E8();
    v27 = sub_224DAF878();
    if (v27)
    {
      v28 = v27;
      sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
      v29 = v28;
      v3 = MEMORY[0x277D84FA0];
      do
      {
        v123 = v29;
        swift_dynamicCast();
        v30 = [v124 extensionIdentity];
        v4 = [v30 isRemote];

        v5 = v124;
        if (v4)
        {
        }

        else
        {
          v31 = *(v3 + 16);
          if (*(v3 + 24) <= v31)
          {
            sub_224ADE124(v31 + 1);
          }

          v3 = aBlock;
          v32 = *(aBlock + 40);
          v33 = sub_224DAF698();
          v34 = v3 + 56;
          v35 = -1 << *(v3 + 32);
          v36 = v33 & ~v35;
          v37 = v36 >> 6;
          if (((-1 << v36) & ~*(v3 + 56 + 8 * (v36 >> 6))) != 0)
          {
            v38 = __clz(__rbit64((-1 << v36) & ~*(v3 + 56 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v39 = 0;
            v40 = (63 - v35) >> 6;
            do
            {
              if (++v37 == v40 && (v39 & 1) != 0)
              {
                __break(1u);
                goto LABEL_87;
              }

              v41 = v37 == v40;
              if (v37 == v40)
              {
                v37 = 0;
              }

              v39 |= v41;
              v42 = *(v34 + 8 * v37);
            }

            while (v42 == -1);
            v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          }

          *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
          *(*(v3 + 48) + 8 * v38) = v5;
          ++*(v3 + 16);
        }

        v29 = sub_224DAF878();
      }

      while (v29);
    }

    else
    {
      v3 = v11;
    }

    goto LABEL_49;
  }

  v47 = *(v26 + 32);
  v48 = v47 & 0x3F;
  v116 = ((1 << v47) + 63) >> 6;
  v49 = 8 * v116;

  if (v48 <= 0xD)
  {
LABEL_32:
    v115 = &v114;
    MEMORY[0x28223BE20](v50);
    v117 = &v114 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v117, v49);
    v118 = 0;
    v51 = 0;
    v52 = 1 << *(v26 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v26 + 56);
    v4 = (v52 + 63) >> 6;
    while (v54)
    {
      v55 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
LABEL_42:
      v58 = v55 | (v51 << 6);
      v5 = *(*(v26 + 48) + 8 * v58);
      v59 = [v5 extensionIdentity];
      v3 = [v59 isRemote];

      if ((v3 & 1) == 0)
      {
        *&v117[(v58 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v58;
        v60 = __OFADD__(v118++, 1);
        if (v60)
        {
          __break(1u);
          goto LABEL_46;
        }
      }
    }

    v56 = v51;
    while (1)
    {
      v51 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_88;
      }

      if (v51 >= v4)
      {
        break;
      }

      v57 = *(v26 + 56 + 8 * v51);
      ++v56;
      if (v57)
      {
        v55 = __clz(__rbit64(v57));
        v54 = (v57 - 1) & v57;
        goto LABEL_42;
      }
    }

LABEL_46:
    v61 = sub_224B0552C(v117, v116, v118, v26);
    v3 = v61;
    goto LABEL_49;
  }

  v98 = v116;
  v99 = v26;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_32;
  }

  v101 = swift_slowAlloc();
  v4 = v119;
  v3 = sub_224CF70D0(v101, v98, v99, sub_224CF7EC8, 0);
  v119 = v4;

  v61 = MEMORY[0x22AA5EED0](v101, -1, -1);
LABEL_49:
  v62 = v122;
  if ((v122 & 0xC000000000000001) != 0)
  {
    *&aBlock = v11;
    sub_224DAF7E8();
    v63 = sub_224DAF878();
    if (!v63)
    {
LABEL_68:

      if ((v121 & 1) == 0)
      {
        goto LABEL_101;
      }

LABEL_86:

      v93 = v11;
      goto LABEL_102;
    }

    v64 = v63;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    v65 = v64;
    v11 = MEMORY[0x277D84FA0];
    v5 = &off_27853F000;
    while (1)
    {
      v123 = v65;
      swift_dynamicCast();
      v66 = [v124 extensionIdentity];
      v4 = [v66 isRemote];

      v67 = v124;
      if (v4)
      {
      }

      else
      {
        v68 = *(v11 + 2);
        if (*(v11 + 3) <= v68)
        {
          sub_224ADE124(v68 + 1);
        }

        v11 = aBlock;
        v69 = *(aBlock + 40);
        v70 = sub_224DAF698();
        v71 = v11 + 56;
        v72 = -1 << v11[32];
        v73 = v70 & ~v72;
        v74 = v73 >> 6;
        if (((-1 << v73) & ~*&v11[8 * (v73 >> 6) + 56]) == 0)
        {
          v76 = 0;
          v77 = (63 - v72) >> 6;
          while (++v74 != v77 || (v76 & 1) == 0)
          {
            v78 = v74 == v77;
            if (v74 == v77)
            {
              v74 = 0;
            }

            v76 |= v78;
            v79 = *&v71[8 * v74];
            if (v79 != -1)
            {
              v75 = __clz(__rbit64(~v79)) + (v74 << 6);
              goto LABEL_67;
            }
          }

LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          v94 = sub_224DAF838();

          if (!v94)
          {
            goto LABEL_92;
          }

          goto LABEL_6;
        }

        v75 = __clz(__rbit64((-1 << v73) & ~*&v11[8 * (v73 >> 6) + 56])) | v73 & 0x7FFFFFFFFFFFFFC0;
LABEL_67:
        *&v71[(v75 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v75;
        *(*(v11 + 6) + 8 * v75) = v67;
        ++*(v11 + 2);
      }

      v65 = sub_224DAF878();
      if (!v65)
      {
        goto LABEL_68;
      }
    }
  }

  v80 = *(v122 + 32);
  v116 = ((1 << v80) + 63) >> 6;
  if ((v80 & 0x3Fu) <= 0xD)
  {
LABEL_71:
    v115 = &v114;
    MEMORY[0x28223BE20](v61);
    v117 = &v114 - ((v81 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v117, v81);
    v118 = 0;
    v5 = 0;
    v11 = v62;
    v82 = v62 + 56;
    v83 = 1 << *(v62 + 32);
    v84 = -1;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    v85 = v84 & *(v62 + 56);
    v86 = (v83 + 63) >> 6;
    while (v85)
    {
      v87 = __clz(__rbit64(v85));
      v85 &= v85 - 1;
LABEL_81:
      v90 = v87 | (v5 << 6);
      v4 = *(*(v11 + 6) + 8 * v90);
      v91 = [v4 extensionIdentity];
      v92 = [v91 isRemote];

      if ((v92 & 1) == 0)
      {
        *&v117[(v90 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v90;
        v60 = __OFADD__(v118++, 1);
        if (v60)
        {
          __break(1u);
          goto LABEL_85;
        }
      }
    }

    v88 = v5;
    while (1)
    {
      v5 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_89;
      }

      if (v5 >= v86)
      {
        break;
      }

      v89 = *(v82 + 8 * v5);
      ++v88;
      if (v89)
      {
        v87 = __clz(__rbit64(v89));
        v85 = (v89 - 1) & v89;
        goto LABEL_81;
      }
    }

LABEL_85:
    v11 = sub_224B0552C(v117, v116, v118, v11);
    if ((v121 & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_86;
  }

  v100 = v116;
  v4 = 8 * v116;

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_71;
  }

  v102 = swift_slowAlloc();
  v11 = sub_224CF70D0(v102, v100, v62, sub_224CF7EC8, 0);

  MEMORY[0x22AA5EED0](v102, -1, -1);
  if (v121)
  {
    goto LABEL_86;
  }

LABEL_101:

  v93 = sub_224CE7654(v3, v11);
LABEL_102:
  v103 = v120;
  v104 = sub_224CE7654(v11, v3);

  sub_224CF12C8(v104);
  v105 = v103;
  v106 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager;
  v107 = *(v103 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager);
  v108 = *(v107 + 16);
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v109 + 24) = v104;
  v110 = swift_allocObject();
  *(v110 + 16) = sub_224CF7D90;
  *(v110 + 24) = v109;
  *&v127 = sub_224BC4B74;
  *(&v127 + 1) = v110;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v126 = sub_224A9B6F8;
  *(&v126 + 1) = &block_descriptor_118;
  v111 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(v108, v111);
  _Block_release(v111);
  LOBYTE(v108) = swift_isEscapingClosureAtFileLocation();

  if (v108)
  {
    __break(1u);
  }

  v112 = *(v105 + v106);

  sub_224BA8D98(v93, v128);

LABEL_104:
  result = sub_224A699F0(v128);
LABEL_105:
  v113 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224CEF454(id *a1)
{
  v1 = [*a1 extensionIdentity];
  v2 = [v1 isRemote];

  return v2 ^ 1;
}

void sub_224CEF4B4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_224DAB258();
  isEscapingClosureAtFileLocation = *(v8 - 1);
  v10 = *(isEscapingClosureAtFileLocation + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 wantsLiveScene]& 1) == 0)
  {
    v22 = *(v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = v3;
    v8[4] = a2;
    v8[5] = a3;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_224CF7D54;
    *(a2 + 24) = v8;
    aBlock[4] = sub_224A8A838;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A9B6F8;
    aBlock[3] = &block_descriptor_98;
    v12 = _Block_copy(aBlock);
    v23 = v22;
    v24 = a1;

    dispatch_sync(v23, v12);

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_7;
  }

  (*(isEscapingClosureAtFileLocation + 16))(v12, v3 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v8);
  v4 = a1;
  a1 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (!os_log_type_enabled(a1, v13))
  {
LABEL_7:

    v25 = (*(isEscapingClosureAtFileLocation + 8))(v12, v8);
    (a2)(v25);
    return;
  }

  v26[0] = a2;
  v26[1] = a3;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  aBlock[0] = v15;
  *v14 = 136315138;
  v16 = [v4 succinctDescription];

  if (v16)
  {
    v17 = sub_224DAEE18();
    v19 = v18;

    v20 = sub_224A33F74(v17, v19, aBlock);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_224A2F000, a1, v13, "Skipping placeholder precaching for live scene descriptor: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA5EED0](v15, -1, -1);
    MEMORY[0x22AA5EED0](v14, -1, -1);

    v21 = (*(isEscapingClosureAtFileLocation + 8))(v12, v8);
    (v26[0])(v21);
  }

  else
  {
    __break(1u);
  }
}

void sub_224CEF850(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_224DAB258();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x28223BE20](v8);
  v64[2] = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v74 = *(v84 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v84);
  v72 = v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v80 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v64 - v17;
  v81 = a1;
  v77 = [a1 supportedFamilies];
  v19 = a2[31];
  v20 = a2[32];
  v79 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 28, v19);
  (*(v20 + 32))(&v91, 768, v19, v20);
  sub_224A3796C(&v91, aBlock, &qword_27D6F50E0, &qword_224DB41A0);
  v68 = a3;
  v67 = a4;
  v64[1] = v8;
  if (v90)
  {
    v21 = sub_224A86CAC();
    sub_224A699F0(aBlock);
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v21 = sub_224A870EC(MEMORY[0x277D84F90]);

LABEL_6:
  v22 = swift_allocObject();
  v78 = v22;
  *(v22 + 16) = MEMORY[0x277D84FA0];
  v66 = (v22 + 16);
  v82 = [v81 extensionIdentity];
  v23 = 0;
  v73 = v21;
  v24 = *(v21 + 64);
  v69 = v21 + 64;
  v25 = 1 << *(v21 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v71 = v74 + 16;
  v70 = v74 + 32;
  v76 = v89;
  v75 = (v74 + 8);
  v83 = v18;
  if ((v26 & v24) == 0)
  {
LABEL_10:
    if (v28 <= (v23 + 1))
    {
      v31 = (v23 + 1);
    }

    else
    {
      v31 = v28;
    }

    v32 = (v31 - 1);
    v30 = v80;
    while (1)
    {
      v29 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v29 >= v28)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        (*(*(v55 - 8) + 56))(v30, 1, 1, v55);
        v27 = 0;
        goto LABEL_18;
      }

      v27 = *(v69 + 8 * v29);
      ++v23;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_26;
  }

  while (1)
  {
    v29 = v23;
    v30 = v80;
LABEL_17:
    v33 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v34 = v33 | (v29 << 6);
    v35 = v73;
    v36 = v74;
    v37 = v72;
    v38 = v84;
    (*(v74 + 16))(v72, *(v73 + 48) + *(v74 + 72) * v34, v84);
    v39 = *(*(v35 + 56) + 8 * v34);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    v41 = *(v40 + 48);
    (*(v36 + 32))(v30, v37, v38);
    *(v30 + v41) = v39;
    (*(*(v40 - 8) + 56))(v30, 0, 1, v40);
    v42 = v39;
    v32 = v29;
    v18 = v83;
LABEL_18:
    sub_224A44E4C(v30, v18, &qword_27D6F4930, &unk_224DB8D00);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v43 - 8) + 48))(v18, 1, v43) == 1)
    {
      break;
    }

    v44 = *&v18[*(v43 + 48)];
    v86 = MEMORY[0x22AA5E4C0]();
    v45 = [v44 metricsSpecification];
    v46 = swift_allocObject();
    v47 = v82;
    v48 = v81;
    v46[2] = v82;
    v46[3] = v48;
    v49 = v79;
    v46[4] = v45;
    v46[5] = v49;
    v85 = v32;
    v46[6] = v78;
    v89[2] = sub_224CF7D60;
    v90 = v46;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    v89[0] = sub_224CF1274;
    v89[1] = &block_descriptor_108;
    v50 = _Block_copy(aBlock);
    v51 = v47;
    v52 = v48;
    v53 = v45;

    CHSWidgetFamilyMaskEnumerateFamilies();
    v54 = v50;
    v18 = v83;
    _Block_release(v54);

    objc_autoreleasePoolPop(v86);
    (*v75)(v18, v84);
    v23 = v85;
    if (!v27)
    {
      goto LABEL_10;
    }
  }

  v56 = v66;
  v57 = swift_beginAccess();
  v58 = *v56;
  if (*(v58 + 16))
  {
    v59 = swift_allocObject();
    v60 = v67;
    *(v59 + 16) = v68;
    *(v59 + 24) = v60;

    v32 = v82;
    v61 = v79;
    sub_224CF2AE8(v82, v58, sub_224A9C358, v59);
  }

  else
  {
    v68(v57);
    v61 = v79;
    v32 = v82;
  }

  v62 = v61[22];
  if (qword_281356140 != -1)
  {
    goto LABEL_28;
  }

LABEL_26:
  v63 = sub_224DACC88();
  __swift_project_value_buffer(v63, qword_281356148);
  v87 = v32;
  sub_224DAC138();
  sub_224A3311C(&v91, &qword_27D6F50E0, &qword_224DB41A0);
}

void sub_224CF0200(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v131 = a6;
  v119 = a5;
  v10 = sub_224DAB258();
  v135 = *(v10 - 8);
  v11 = *(v135 + 64);
  MEMORY[0x28223BE20](v10);
  v127 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v106 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v124 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v130 = &v106 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v137 = &v106 - v25;
  MEMORY[0x28223BE20](v24);
  v138 = &v106 - v26;
  v27 = sub_224DAC268();
  v111 = *(v27 - 8);
  v28 = v111[8];
  v29 = MEMORY[0x28223BE20](v27);
  v117 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v116 = &v106 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v140 = &v106 - v34;
  MEMORY[0x28223BE20](v33);
  v139 = &v106 - v35;
  v36 = [a3 kind];
  v110 = v17;
  v141 = v27;
  if (!v36)
  {
    sub_224DAEE18();
    v36 = sub_224DAEDE8();
    v27 = v141;
  }

  v128 = v10;
  v37 = objc_allocWithZone(MEMORY[0x277CFA358]);
  v118 = a2;
  v38 = [v37 initWithExtensionIdentity:a2 kind:v36 family:a1 intent:0 activityIdentifier:0];

  v39 = [a4 allMetricsForFamily_];
  v40 = sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
  sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0);
  v41 = sub_224DAF1B8();

  v109 = v40;
  if ((v41 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v41 = v145[7];
    v43 = v145[8];
    v44 = v145[9];
    v45 = v145[10];
    v46 = v145[11];
  }

  else
  {
    v45 = 0;
    v47 = -1 << *(v41 + 32);
    v43 = v41 + 56;
    v48 = ~v47;
    v49 = -v47;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v46 = v50 & *(v41 + 56);
    v44 = v48;
  }

  v51 = v131;
  v52 = v139;
  v129 = 0;
  v106 = v44;
  v113 = (v44 + 64) >> 6;
  v136 = (v14 + 56);
  v121 = (v14 + 48);
  v120 = (v14 + 32);
  v107 = (v14 + 8);
  v142 = (v111 + 2);
  v143 = (v111 + 1);
  v115 = (v135 + 16);
  v114 = (v135 + 8);
  *&v42 = 136446210;
  v108 = v42;
  v125 = v13;
  v53 = v130;
  v123 = v38;
  v126 = v43;
  v122 = v41;
  while (v41 < 0)
  {
    v61 = sub_224DAF878();
    if (!v61 || (v144 = v61, swift_dynamicCast(), v60 = v145[0], v59 = v45, v135 = v46, v53 = v130, !v145[0]))
    {
LABEL_40:
      sub_224A3B7E4();

      return;
    }

LABEL_22:
    v133 = v60;
    v134 = v59;
    v62 = *v136;
    (*v136)(v138, 1, 1, v13);
    v63 = [v38 intentReference];
    if (v63)
    {

      v64 = [v38 widgetByReplacingIntent_];
    }

    else
    {
      v64 = v38;
    }

    v65 = v64;
    v62(v137, 1, 1, v13);
    sub_224A3796C(v138, v53, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v121)(v53, 1, v13) == 1)
    {
      v66 = v65;
      sub_224A3311C(v53, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v67 = *v120;
      v68 = v110;
      (*v120)(v110, v53, v13);
      v69 = v65;
      sub_224DAA1F8();
      v70 = sub_224DAA048();

      if (v70)
      {
        v71 = v137;
        sub_224A3311C(v137, &qword_27D6F56C0, &unk_224DB3580);
        v67(v71, v68, v13);
        v62(v71, 0, 1, v13);
      }

      else
      {
        (*v107)(v68, v13);
      }

      v51 = v131;
      v27 = v141;
    }

    v72 = v137;
    sub_224A3796C(v137, v124, &qword_27D6F56C0, &unk_224DB3580);
    v133 = v133;
    sub_224DAC228();

    sub_224A3311C(v72, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v138, &qword_27D6F56C0, &unk_224DB3580);
    v73 = swift_beginAccess();
    v74 = *(v51 + 16);
    v75 = *(v74 + 16);
    v132 = v143 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (!v75)
    {
      goto LABEL_37;
    }

    v76 = *(v74 + 40);
    sub_224A828F0(&qword_281350E50, MEMORY[0x277CF9978]);

    v77 = sub_224DAED88();
    v78 = -1 << *(v74 + 32);
    v79 = v77 & ~v78;
    if (((*(v74 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
    {
LABEL_36:

      v13 = v125;
      v27 = v141;
LABEL_37:
      v86 = v119;
      v87 = *(v119 + 176);
      MEMORY[0x28223BE20](v73);
      *(&v106 - 4) = v118;
      *(&v106 - 3) = v52;
      *(&v106 - 2) = v86;
      v88 = v129;
      sub_224DAC128();
      v129 = v88;
      v89 = v86 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger;
      v90 = v127;
      v91 = v128;
      (*v115)(v127, v89, v128);
      v92 = *v142;
      v93 = v116;
      (*v142)(v116, v52, v27);
      v94 = sub_224DAB228();
      v95 = v27;
      v96 = sub_224DAF2A8();
      if (os_log_type_enabled(v94, v96))
      {
        v97 = swift_slowAlloc();
        v98 = v93;
        v112 = v92;
        v99 = v97;
        v100 = swift_slowAlloc();
        v145[0] = v100;
        *v99 = v108;
        sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978]);
        v101 = sub_224DAFD28();
        v103 = v102;
        v54 = *v143;
        (*v143)(v98, v95);
        v104 = sub_224A33F74(v101, v103, v145);

        *(v99 + 4) = v104;
        _os_log_impl(&dword_224A2F000, v94, v96, "Will fetch placeholder for variantKey: %{public}s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v100);
        MEMORY[0x22AA5EED0](v100, -1, -1);
        v105 = v99;
        v92 = v112;
        MEMORY[0x22AA5EED0](v105, -1, -1);

        v13 = v125;
        (*v114)(v127, v128);
      }

      else
      {

        v54 = *v143;
        (*v143)(v93, v95);
        (*v114)(v90, v91);
      }

      v27 = v95;
      v55 = v117;
      v92(v117, v52, v95);
      v51 = v131;
      swift_beginAccess();
      v56 = v140;
      sub_224ADCAF4(v140, v55);
      swift_endAccess();

      v54(v56, v95);
      v38 = v123;
      goto LABEL_12;
    }

    v80 = ~v78;
    v81 = v111[9];
    v82 = v111[2];
    while (1)
    {
      v84 = v140;
      v83 = v141;
      v82(v140, *(v74 + 48) + v81 * v79, v141);
      sub_224A828F0(&qword_281350E48, MEMORY[0x277CF9978]);
      v85 = sub_224DAEDD8();
      v54 = *v143;
      (*v143)(v84, v83);
      if (v85)
      {
        break;
      }

      v79 = (v79 + 1) & v80;
      v52 = v139;
      if (((*(v74 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v51 = v131;
    v13 = v125;
    v27 = v141;
    v52 = v139;
    v38 = v123;
LABEL_12:
    v54(v52, v27);
    v45 = v134;
    v46 = v135;
    v53 = v130;
    v41 = v122;
    v43 = v126;
  }

  v57 = v45;
  v58 = v46;
  v59 = v45;
  if (v46)
  {
LABEL_18:
    v135 = (v58 - 1) & v58;
    v60 = *(*(v41 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));
    if (!v60)
    {
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v59 >= v113)
    {
      goto LABEL_40;
    }

    v58 = *(v43 + 8 * v59);
    ++v57;
    if (v58)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_224CF0FE4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a4;
  v7 = sub_224DAE918();
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v25 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC268();
  v22 = *(v10 - 8);
  v11 = *(v22 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = a2;
  v28[0] = a2;
  v16 = a3;
  sub_224DAD3D8();
  if (v29[0])
  {
  }

  else
  {
    v17 = v26;
    v18 = v26[16];
    __swift_project_boxed_opaque_existential_1(v26 + 12, v26[15]);
    sub_224DADA58();
    sub_224DABE88();
    (*(v22 + 16))(v13, v16, v10);
    (*(v23 + 104))(v25, *MEMORY[0x277CE3D68], v24);
    sub_224A3317C(v29, v28);
    sub_224A3317C(v17 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver, &v27);
    v19 = sub_224DABE48();
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v28[0] = v15;
    v27 = v19;
    sub_224DAD3B8();
    __swift_destroy_boxed_opaque_existential_1(v29);
  }
}

uint64_t sub_224CF1274(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_224CF12C8(uint64_t a1)
{
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6380, &qword_224DBF928);
  v142 = *(v122 - 8);
  v2 = *(v142 + 8);
  MEMORY[0x28223BE20](v122);
  v121 = v106 - v3;
  v124 = sub_224DAC268();
  v123 = *(v124 - 8);
  v4 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v120 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v144 = *(v139 - 8);
  v6 = *(v144 + 64);
  v7 = MEMORY[0x28223BE20](v139);
  v130 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v143 = v106 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v106 - v14;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v113 = v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224A3B758(&qword_2813509C8, &unk_2813509D0, 0x277CFA378);
    sub_224DAF1F8();
    a1 = v148[6];
    v21 = v148[7];
    v22 = v148[8];
    v23 = v148[9];
    v24 = v148[10];
  }

  else
  {
    v25 = -1 << *(a1 + 32);
    v21 = a1 + 56;
    v26 = ~v25;
    v27 = -v25;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v24 = v28 & *(a1 + 56);

    v22 = v26;
    v23 = 0;
  }

  v106[1] = v22;
  v29 = (v22 + 64) >> 6;
  v112 = (v17 + 16);
  v111 = (v17 + 8);
  v138 = v144 + 16;
  v137 = v144 + 32;
  v129 = v6 + 7;
  v128 = v146;
  v127 = v144 + 8;
  v119 = v123 + 16;
  v118 = (v142 + 8);
  *&v20 = 136446210;
  v107 = v20;
  v110 = a1;
  v133 = v13;
  v132 = v15;
  v109 = v16;
  v114 = v21;
  v108 = v29;
LABEL_9:
  if (a1 < 0)
  {
    v36 = sub_224DAF878();
    if (!v36)
    {
      goto LABEL_55;
    }

    aBlock[0] = v36;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    swift_dynamicCast();
    v35 = v148[0];
    v117 = v23;
    v116 = v24;
    if (!v148[0])
    {
      goto LABEL_55;
    }
  }

  else
  {
    v30 = v23;
    v31 = v24;
    for (i = v23; !v31; ++v30)
    {
      i = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_58;
      }

      if (i >= v29)
      {
        goto LABEL_55;
      }

      v31 = *(v21 + 8 * i);
    }

    v33 = __clz(__rbit64(v31));
    v116 = (v31 - 1) & v31;
    v34 = *(a1 + 48);
    v117 = i;
    v35 = *(v34 + ((i << 9) | (8 * v33)));
    if (!v35)
    {
LABEL_55:
      sub_224A3B7E4();
      return;
    }
  }

  v37 = v113;
  (*v112)(v113, v136 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v16);
  v38 = v35;
  v39 = sub_224DAB228();
  v40 = sub_224DAF2A8();
  if (!os_log_type_enabled(v39, v40))
  {

LABEL_22:
    (*v111)(v37, v16);
    v48 = v136[31];
    v49 = v136[32];
    __swift_project_boxed_opaque_existential_1(v136 + 28, v48);
    (*(v49 + 32))(v148, 768, v48, v49);
    sub_224A3796C(v148, aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    v135 = v38;
    if (v147)
    {
      v50 = sub_224A86CAC();
      sub_224A699F0(aBlock);
      if (v50)
      {
LABEL_27:
        v51 = swift_allocObject();
        v52 = 0;
        v134 = v51;
        *(v51 + 16) = MEMORY[0x277D84FA0];
        v115 = v51 + 16;
        v126 = v50;
        v53 = *(v50 + 64);
        v125 = v50 + 64;
        v54 = 1 << *(v50 + 32);
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        else
        {
          v55 = -1;
        }

        v56 = v55 & v53;
        v57 = (v54 + 63) >> 6;
        v131 = v57;
        if ((v55 & v53) != 0)
        {
          while (1)
          {
            v58 = v52;
            v59 = v133;
LABEL_39:
            v62 = __clz(__rbit64(v56));
            v56 &= v56 - 1;
            v63 = v62 | (v58 << 6);
            v64 = v126;
            v65 = v144;
            v66 = v143;
            v67 = v139;
            (*(v144 + 16))(v143, *(v126 + 48) + *(v144 + 72) * v63, v139);
            v68 = *(*(v64 + 56) + 8 * v63);
            v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
            v70 = *(v69 + 48);
            (*(v65 + 32))(v59, v66, v67);
            *(v59 + v70) = v68;
            (*(*(v69 - 8) + 56))(v59, 0, 1, v69);
            v71 = v68;
            v61 = v58;
LABEL_40:
            v72 = v132;
            sub_224A44E4C(v59, v132, &qword_27D6F4930, &unk_224DB8D00);
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
            if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
            {
              break;
            }

            v142 = *(v72 + *(v73 + 48));
            v74 = v142;
            v75 = *(v144 + 32);
            v76 = v144;
            v77 = v143;
            v78 = v72;
            v79 = v139;
            v75(v143, v78, v139);
            v80 = [v74 metricsSpecification];
            v140 = v80;
            v81 = v130;
            (*(v76 + 16))(v130, v77, v79);
            v82 = (*(v76 + 80) + 40) & ~*(v76 + 80);
            v83 = (v129 + v82) & 0xFFFFFFFFFFFFFFF8;
            v84 = swift_allocObject();
            v141 = v61;
            v85 = v135;
            *(v84 + 2) = v135;
            *(v84 + 3) = v80;
            *(v84 + 4) = v136;
            v75(&v84[v82], v81, v79);
            *&v84[v83] = v134;
            v146[2] = sub_224CF7C78;
            v147 = v84;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v146[0] = sub_224CF1274;
            v146[1] = &block_descriptor_89;
            v86 = _Block_copy(aBlock);
            v87 = v85;
            v88 = v140;

            CHSWidgetFamilyMaskEnumerateFamilies();
            _Block_release(v86);

            (*(v144 + 8))(v143, v79);
            v52 = v141;
            v57 = v131;
            if (!v56)
            {
              goto LABEL_32;
            }
          }

          v90 = v115;
          swift_beginAccess();
          v91 = (*v90 + 56);
          v92 = 1 << (*v90)[32];
          if (v92 < 64)
          {
            v93 = ~(-1 << v92);
          }

          else
          {
            v93 = -1;
          }

          v94 = v93 & *(*v90 + 7);
          v95 = (v92 + 63) >> 6;
          v142 = *v90;

          v96 = 0;
          while (1)
          {
            v97 = v135;
            if (!v94)
            {
              break;
            }

            v98 = v96;
LABEL_54:
            v99 = __clz(__rbit64(v94));
            v94 &= v94 - 1;
            (*(v123 + 16))(v120, *(v142 + 6) + *(v123 + 72) * (v99 | (v98 << 6)), v124);
            v100 = sub_224DAC248();
            v101 = [v100 extensionIdentity];

            aBlock[0] = v101;
            sub_224DAF538();
            v102 = MEMORY[0x277CFA140];
            sub_224A828F0(&qword_281350998, MEMORY[0x277CFA140]);
            sub_224A828F0(&unk_2813509A0, v102);
            v103 = MEMORY[0x277CF9978];
            sub_224A828F0(&qword_281350E40, MEMORY[0x277CF9978]);
            sub_224A828F0(&qword_281350E50, v103);
            v104 = v121;
            sub_224DAC848();
            v105 = v136[6];

            sub_224DAB348();

            (*v118)(v104, v122);
          }

          while (1)
          {
            v98 = v96 + 1;
            if (__OFADD__(v96, 1))
            {
              break;
            }

            if (v98 >= v95)
            {
              sub_224A3311C(v148, &qword_27D6F50E0, &qword_224DB41A0);

              v23 = v117;
              v24 = v116;
              a1 = v110;
              v16 = v109;
              v21 = v114;
              v29 = v108;
              goto LABEL_9;
            }

            v94 = *(v91 + 8 * v98);
            ++v96;
            if (v94)
            {
              v96 = v98;
              goto LABEL_54;
            }
          }
        }

        else
        {
LABEL_32:
          if (v57 <= v52 + 1)
          {
            v60 = v52 + 1;
          }

          else
          {
            v60 = v57;
          }

          v61 = v60 - 1;
          v59 = v133;
          while (1)
          {
            v58 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              break;
            }

            if (v58 >= v57)
            {
              v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
              (*(*(v89 - 8) + 56))(v59, 1, 1, v89);
              v56 = 0;
              goto LABEL_40;
            }

            v56 = *(v125 + 8 * v58);
            ++v52;
            if (v56)
            {
              goto LABEL_39;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    }

    v50 = sub_224A870EC(MEMORY[0x277D84F90]);

    goto LABEL_27;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v148[0] = v42;
  *v41 = v107;
  v43 = [v38 succinctDescription];

  if (v43)
  {
    v44 = sub_224DAEE18();
    v46 = v45;

    v47 = sub_224A33F74(v44, v46, v148);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_224A2F000, v39, v40, "Purging placeholders for removed descriptor: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v41, -1, -1);

    goto LABEL_22;
  }

LABEL_59:
  __break(1u);
}

void sub_224CF2234(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a6;
  v92 = a5;
  v94 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v97 = v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v91 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = v73 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v98 = v73 - v20;
  MEMORY[0x28223BE20](v19);
  v99 = v73 - v21;
  v90 = sub_224DAC268();
  v22 = *(v90 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v90);
  v89 = v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v88 = v73 - v27;
  MEMORY[0x28223BE20](v26);
  v87 = v73 - v28;
  v29 = [a2 extensionIdentity];
  v30 = [a2 kind];
  if (!v30)
  {
    sub_224DAEE18();
    v30 = sub_224DAEDE8();
  }

  v93 = v9;
  v31 = [objc_allocWithZone(MEMORY[0x277CFA358]) initWithExtensionIdentity:v29 kind:v30 family:a1 intent:0 activityIdentifier:0];

  v32 = [a3 allMetricsForFamily_];
  v33 = sub_224A3B79C(0, &unk_281350AD8, 0x277CFA3F0);
  sub_224A3B758(&qword_281350AD0, &unk_281350AD8, 0x277CFA3F0);
  v34 = sub_224DAF1B8();

  v76 = v33;
  if ((v34 & 0xC000000000000001) != 0)
  {
    sub_224DAF7E8();
    sub_224DAF1F8();
    v34 = v102;
    v35 = v103;
    v36 = v104;
    v37 = v105;
    v38 = v106;
  }

  else
  {
    v37 = 0;
    v39 = -1 << *(v34 + 32);
    v35 = v34 + 56;
    v36 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v38 = v41 & *(v34 + 56);
  }

  v42 = v97;
  v43 = v77;
  v73[1] = v36;
  v78 = (v36 + 64) >> 6;
  v84 = (v10 + 16);
  v97 = (v10 + 56);
  v83 = (v10 + 48);
  v82 = (v10 + 32);
  v74 = (v10 + 8);
  v80 = (v22 + 16);
  v79 = (v22 + 8);
  v95 = v35;
  v86 = v31;
  v85 = v34;
  while (v34 < 0)
  {
    v60 = sub_224DAF878();
    if (!v60 || (v100 = v60, swift_dynamicCast(), v59 = v101, v57 = v37, v58 = v38, !v101))
    {
LABEL_29:
      sub_224A3B7E4();

      return;
    }

LABEL_21:
    v61 = v99;
    v62 = v93;
    (*v84)(v99, v92, v93);
    v63 = *v97;
    (*v97)(v61, 0, 1, v62);
    v64 = [v31 intentReference];
    v96 = v58;
    if (v64)
    {

      v65 = [v31 widgetByReplacingIntent_];
    }

    else
    {
      v65 = v31;
    }

    v66 = v65;
    v67 = v82;
    v63(v98, 1, 1, v62);
    sub_224A3796C(v99, v43, &qword_27D6F56C0, &unk_224DB3580);
    if ((*v83)(v43, 1, v62) == 1)
    {
      v44 = v66;
      sub_224A3311C(v43, &qword_27D6F56C0, &unk_224DB3580);
    }

    else
    {
      v68 = *v67;
      (*v67)(v42, v43, v62);
      v69 = v66;
      sub_224DAA1F8();
      v70 = v62;
      v71 = sub_224DAA048();

      if (v71)
      {
        v72 = v98;
        v75 = v59;
        sub_224A3311C(v98, &qword_27D6F56C0, &unk_224DB3580);
        v68(v72, v42, v70);
        v59 = v75;
        v63(v72, 0, 1, v70);
      }

      else
      {
        (*v74)(v42, v70);
      }

      v43 = v77;
    }

    v45 = v98;
    sub_224A3796C(v98, v91, &qword_27D6F56C0, &unk_224DB3580);
    v46 = v59;
    v47 = v87;
    sub_224DAC228();

    sub_224A3311C(v45, &qword_27D6F56C0, &unk_224DB3580);
    sub_224A3311C(v99, &qword_27D6F56C0, &unk_224DB3580);
    v49 = *(v94 + 16);
    v48 = *(v94 + 24);
    swift_getObjectType();
    v50 = *(v48 + 16);
    sub_224DAC468();
    v51 = v89;
    v52 = v90;
    (*v80)(v89, v47, v90);
    swift_beginAccess();
    v53 = v88;
    sub_224ADCAF4(v88, v51);
    swift_endAccess();

    v54 = *v79;
    (*v79)(v53, v52);
    v54(v47, v52);
    v37 = v57;
    v35 = v95;
    v38 = v96;
    v31 = v86;
    v34 = v85;
  }

  v55 = v37;
  v56 = v38;
  v57 = v37;
  if (v38)
  {
LABEL_17:
    v58 = (v56 - 1) & v56;
    v59 = *(*(v34 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));
    if (!v59)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v57 >= v78)
    {
      goto LABEL_29;
    }

    v56 = *(v35 + 8 * v57);
    ++v55;
    if (v56)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_224CF2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v153 = a4;
  v152 = a3;
  v154 = a2;
  v161 = a1;
  v160 = sub_224DAB7B8();
  v159 = *(v160 - 8);
  v6 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v157 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_224DAB848();
  v156 = *(v158 - 1);
  v8 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v155 = (&v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v149 = &v139 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC0, &unk_224DBD710);
  v143 = *(v148 - 8);
  v13 = *(v143 + 64);
  MEMORY[0x28223BE20](v148);
  v165 = &v139 - v14;
  v172 = sub_224DAC268();
  v167 = *(v172 - 8);
  v15 = *(v167 + 64);
  v16 = MEMORY[0x28223BE20](v172);
  v147 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v169 = &v139 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v139 - v20;
  MEMORY[0x28223BE20](v19);
  v150 = &v139 - v21;
  v168 = sub_224DAB258();
  v166 = *(v168 - 8);
  v22 = *(v166 + 8);
  v23 = MEMORY[0x28223BE20](v168);
  v164 = &v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v163 = &v139 - v25;
  v26 = sub_224DACC88();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_224DAB8C8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = (&v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue;
  v36 = *(v5 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  *v35 = v36;
  (*(v32 + 104))(v35, *MEMORY[0x277D85200], v31);
  v37 = v36;
  LOBYTE(v36) = sub_224DAB8F8();
  v39 = *(v32 + 8);
  v38 = v32 + 8;
  v39(v35, v31);
  if ((v36 & 1) == 0)
  {
    goto LABEL_38;
  }

  v146 = v15;
  v170 = v5;
  v40 = *(v5 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy);

  v41 = sub_224DACC78();
  v38 = *(v40 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock);
  v42 = MEMORY[0x28223BE20](v41);
  v43 = v161;
  *(&v139 - 2) = v40;
  *(&v139 - 1) = v43;
  MEMORY[0x28223BE20](v42);
  *(&v139 - 2) = sub_224A82858;
  *(&v139 - 1) = v44;
  os_unfair_lock_lock((v38 + 16));
  v45 = v162;
  sub_224A828B8(&aBlock);
  if (v45)
  {
LABEL_40:
    os_unfair_lock_unlock((v38 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v38 + 16));
    v46 = aBlock;

    (*(v27 + 8))(v30, v26);
    v47 = *(v166 + 2);
    v139 = 0;
    if (v46)
    {
      v47(v163, v170 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v168);
      v48 = v154;
      swift_bridgeObjectRetain_n();
      v49 = v43;
      v50 = sub_224DAB228();
      v51 = sub_224DAF278();

      v52 = os_log_type_enabled(v50, v51);
      v144 = v49;
      if (v52)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138543618;
        *(v53 + 4) = v49;
        *v54 = v49;
        *(v53 + 12) = 2048;
        v55 = *(v48 + 16);
        v56 = v49;

        *(v53 + 14) = v55;

        _os_log_impl(&dword_224A2F000, v50, v51, "Creating precache assertion for %{public}@ (%ld variants)", v53, 0x16u);
        sub_224A3311C(v54, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v54, -1, -1);
        MEMORY[0x22AA5EED0](v53, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v66 = v172;
      v67 = v146;
      (*(v166 + 1))(v163, v168);
      v68 = swift_allocObject();
      v164 = v68;
      *(v68 + 16) = MEMORY[0x277D84F98];
      v146 = (v68 + 16);
      v69 = v48 + 56;
      v70 = 1 << *(v48 + 32);
      v71 = -1;
      if (v70 < 64)
      {
        v71 = ~(-1 << v70);
      }

      v38 = v71 & *(v48 + 56);
      v72 = (v70 + 63) >> 6;
      v168 = v167 + 16;
      v163 = (v167 + 32);
      v145 = v167 + 8;
      v141 = v67 + 7;
      v140 = (v143 + 8);

      v73 = 0;
      v143 = v48 + 56;
      for (i = v72; ; v72 = i)
      {
        if (!v38)
        {
          v97 = v170;
          while (1)
          {
            v98 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (v98 >= v72)
            {

              goto LABEL_34;
            }

            v38 = *(v69 + 8 * v98);
            ++v73;
            if (v38)
            {
              v73 = v98;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          sub_224DAFDD8();
          __break(1u);
          goto LABEL_40;
        }

        v97 = v170;
LABEL_21:
        v99 = *(v48 + 48);
        v100 = v167;
        v161 = *(v167 + 72);
        v101 = *(v167 + 16);
        v102 = v150;
        v101(v150, v99 + v161 * (__clz(__rbit64(v38)) | (v73 << 6)), v66);
        v103 = *(v100 + 32);
        v104 = v171;
        v162 = v103;
        v103(v171, v102, v66);
        v105 = v66;
        v106 = v169;
        v107 = v105;
        v166 = v101;
        (v101)(v169, v104);
        v108 = *(v97 + 176);
        v109 = sub_224DAC208();
        *&v173 = v109;
        sub_224DAD288();

        v110 = v146;
        swift_beginAccess();
        sub_224A36F98(&aBlock, &v173);
        v111 = *v110;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v179 = *v110;
        v113 = v179;
        *v110 = 0x8000000000000000;
        v114 = sub_224A61E5C(v106);
        v116 = v113[2];
        v117 = (v115 & 1) == 0;
        v118 = __OFADD__(v116, v117);
        v119 = v116 + v117;
        if (v118)
        {
          goto LABEL_36;
        }

        v120 = v115;
        if (v113[3] < v119)
        {
          break;
        }

        v122 = v107;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_26;
        }

        v130 = v114;
        sub_224B29D08();
        v114 = v130;
        v123 = v179;
        if (v120)
        {
LABEL_12:
          v74 = (v123[7] + 40 * v114);
          __swift_destroy_boxed_opaque_existential_1(v74);
          sub_224A36F98(&v173, v74);
          v75 = *v145;
          v156 = v145 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v155 = v75;
          (v75)(v169, v122);
          goto LABEL_13;
        }

LABEL_27:
        v123[(v114 >> 6) + 8] |= 1 << v114;
        v124 = v114;
        v125 = v169;
        v166(v123[6] + v114 * v161, v169, v122);
        sub_224A36F98(&v173, v123[7] + 40 * v124);
        v126 = v145;
        v127 = *v145;
        (*v145)(v125, v122);
        v128 = v123[2];
        v118 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v118)
        {
          goto LABEL_37;
        }

        v156 = v126 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v123[2] = v129;
        v155 = v127;
LABEL_13:
        v38 &= v38 - 1;
        v76 = *(v164 + 2);
        *(v164 + 2) = v123;

        swift_endAccess();
        v77 = swift_allocObject();
        v160 = v77;
        *(v77 + 16) = 0;
        v161 = v77 + 16;
        v159 = sub_224DAC0C8();
        *&aBlock = v159;
        *&v173 = *(v170 + v151);
        v78 = v173;
        v79 = sub_224DAF358();
        v80 = v149;
        (*(*(v79 - 8) + 56))(v149, 1, 1, v79);
        v158 = v78;
        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC8, qword_224DBE8A0);
        sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
        sub_224A33088(&qword_281351090, &qword_27D6F5CC8, qword_224DBE8A0);
        sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
        sub_224DAB448();
        sub_224A3311C(v80, &qword_27D6F5090, &qword_224DB5C30);

        v81 = swift_allocObject();
        swift_weakInit();
        v82 = v147;
        v166(v147, v171, v172);
        v83 = (*(v167 + 80) + 32) & ~*(v167 + 80);
        v84 = (v141 + v83) & 0xFFFFFFFFFFFFFFF8;
        v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
        v86 = swift_allocObject();
        *(v86 + 16) = v81;
        v87 = v144;
        *(v86 + 24) = v144;
        v162(v86 + v83, v82, v172);
        *(v86 + v84) = v160;
        *(v86 + v85) = v164;
        v88 = (v86 + ((v85 + 15) & 0xFFFFFFFFFFFFFFF8));
        v89 = v153;
        *v88 = v152;
        v88[1] = v89;
        sub_224A33088(&qword_281351258, &qword_27D6F5CC0, &unk_224DBD710);
        v90 = v87;

        v91 = v148;
        v92 = v165;
        v93 = sub_224DAB488();

        (*v140)(v92, v91);
        v94 = v172;
        v155(v171, v172);
        v95 = v161;
        swift_beginAccess();
        v96 = *v95;
        *v95 = v93;

        v48 = v154;
        v66 = v94;
        v69 = v143;
      }

      sub_224B18728(v119, isUniquelyReferenced_nonNull_native);
      v114 = sub_224A61E5C(v169);
      v122 = v107;
      if ((v120 & 1) != (v121 & 1))
      {
        goto LABEL_39;
      }

LABEL_26:
      v123 = v179;
      if (v120)
      {
        goto LABEL_12;
      }

      goto LABEL_27;
    }

    v57 = v170;
    v47(v164, v170 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger, v168);
    v58 = v154;
    swift_bridgeObjectRetain_n();
    v59 = v43;
    v60 = sub_224DAB228();
    v61 = sub_224DAF288();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138543618;
      *(v62 + 4) = v59;
      *v63 = v59;
      *(v62 + 12) = 2048;
      v64 = *(v58 + 16);
      v65 = v59;

      *(v62 + 14) = v64;

      _os_log_impl(&dword_224A2F000, v60, v61, "Cannot create precache assertion for %{public}@ (%ld variants) as reloads are not permitted", v62, 0x16u);
      sub_224A3311C(v63, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v63, -1, -1);
      MEMORY[0x22AA5EED0](v62, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v166 + 1))(v164, v168);
    v131 = *(v57 + v151);
    v132 = swift_allocObject();
    v133 = v153;
    *(v132 + 16) = v152;
    *(v132 + 24) = v133;
    v177 = sub_224A8A840;
    v178 = v132;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v175 = sub_224A39F40;
    v176 = &block_descriptor_66_0;
    v134 = _Block_copy(&aBlock);

    v135 = v131;
    v136 = v155;
    sub_224DAB7E8();
    *&v173 = MEMORY[0x277D84F90];
    sub_224A828F0(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v137 = v157;
    v138 = v160;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v136, v137, v134);
    _Block_release(v134);

    (*(v159 + 8))(v137, v138);
    (*(v156 + 8))(v136, v158);
LABEL_34:
  }
}