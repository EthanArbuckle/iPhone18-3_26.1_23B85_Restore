uint64_t static FlowDestination.page<A>(whatPage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  *a4 = v8 | 4;
  return result;
}

uint64_t sub_24F44BDD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F212B28);
}

uint64_t sub_24F44BEAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F212B28);
  return sub_24F34DCA8(v4);
}

uint64_t sub_24F44BF6C()
{
  swift_getKeyPath();
  sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD78();
}

uint64_t sub_24F44C08C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24F457898(&qword_27F212898, type metadata accessor for GameActivityDraft);
  sub_24F91FD88();

  *a3 = *(v5 + *a2);
}

uint64_t static FlowDestination.pageContainer<A>(whatPageContainer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  *a4 = v8 | 0x1000000000000000;
  return result;
}

uint64_t static FlowDestination.searchPageContainer<A>(whatPage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 16));
  result = (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  *a4 = v8 | 0x1000000000000004;
  return result;
}

uint64_t sub_24F44C2A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  v377 = a2;
  v376 = a1;
  v373 = a3;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215760);
  MEMORY[0x28223BE20](v269);
  v263 = (&v259 - v3);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441D8);
  MEMORY[0x28223BE20](v265);
  v268 = &v259 - v4;
  v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B88);
  MEMORY[0x28223BE20](v379);
  v270 = &v259 - v5;
  v266 = type metadata accessor for SocialIntegrationContactsListPageView();
  MEMORY[0x28223BE20](v266);
  v262 = &v259 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for SocialIntegrationContactsListPageIntent();
  v7 = MEMORY[0x28223BE20](v264);
  v260 = &v259 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v261 = &v259 - v10;
  MEMORY[0x28223BE20](v9);
  v271 = &v259 - v11;
  v274 = type metadata accessor for OverlayNowPlayingPageIntent();
  v12 = MEMORY[0x28223BE20](v274);
  v267 = &v259 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v273 = &v259 - v14;
  v278 = type metadata accessor for OverlaySocialPageIntent();
  v15 = MEMORY[0x28223BE20](v278);
  v272 = &v259 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v277 = &v259 - v17;
  v286 = type metadata accessor for AchievementsByGameView(0);
  MEMORY[0x28223BE20](v286);
  v276 = &v259 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for AchievementsPageIntent();
  v19 = MEMORY[0x28223BE20](v280);
  v275 = &v259 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v279 = &v259 - v21;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441E0);
  MEMORY[0x28223BE20](v287);
  v289 = &v259 - v22;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441E8);
  MEMORY[0x28223BE20](v282);
  v284 = &v259 - v23;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B50);
  MEMORY[0x28223BE20](v288);
  v285 = &v259 - v24;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B40);
  MEMORY[0x28223BE20](v310);
  v290 = &v259 - v25;
  v283 = type metadata accessor for OverlayActiveCallPageView();
  MEMORY[0x28223BE20](v283);
  v281 = (&v259 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v302 = type metadata accessor for PlayNowPageView(0);
  MEMORY[0x28223BE20](v302);
  v292 = &v259 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for PlayNowPageIntent();
  v28 = MEMORY[0x28223BE20](v294);
  v291 = &v259 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v297 = &v259 - v31;
  MEMORY[0x28223BE20](v30);
  v293 = &v259 - v32;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441F0);
  MEMORY[0x28223BE20](v307);
  v309 = &v259 - v33;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2441F8);
  MEMORY[0x28223BE20](v303);
  v305 = (&v259 - v34);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244200);
  MEMORY[0x28223BE20](v299);
  v300 = &v259 - v35;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B00);
  MEMORY[0x28223BE20](v304);
  v301 = &v259 - v36;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AF0);
  MEMORY[0x28223BE20](v308);
  v306 = &v259 - v37;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AE0);
  MEMORY[0x28223BE20](v369);
  v311 = &v259 - v38;
  v298 = type metadata accessor for GameDetailsMediaPreviewPageView();
  MEMORY[0x28223BE20](v298);
  v296 = &v259 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = type metadata accessor for GameDetailsMediaPreviewPageIntent();
  v40 = MEMORY[0x28223BE20](v313);
  v295 = &v259 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v312 = &v259 - v42;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244208);
  MEMORY[0x28223BE20](v316);
  v318 = (&v259 - v43);
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AC0);
  MEMORY[0x28223BE20](v337);
  v319 = &v259 - v44;
  v317 = type metadata accessor for FriendsPlayingPageView(0);
  MEMORY[0x28223BE20](v317);
  v315 = &v259 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = type metadata accessor for FriendsPlayingPageIntent();
  v46 = MEMORY[0x28223BE20](v322);
  v314 = &v259 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v321 = &v259 - v48;
  v332 = type metadata accessor for AchievementsPageView();
  MEMORY[0x28223BE20](v332);
  v323 = &v259 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = type metadata accessor for GameAchievementsListPageIntent();
  v50 = MEMORY[0x28223BE20](v326);
  v320 = &v259 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v328 = &v259 - v53;
  MEMORY[0x28223BE20](v52);
  v325 = &v259 - v54;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244210);
  MEMORY[0x28223BE20](v333);
  v335 = &v259 - v55;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244218);
  MEMORY[0x28223BE20](v329);
  v330 = &v259 - v56;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219AA8);
  MEMORY[0x28223BE20](v334);
  v331 = &v259 - v57;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A98);
  MEMORY[0x28223BE20](v364);
  v336 = &v259 - v58;
  v340 = type metadata accessor for LeaderboardsListPageIntent();
  v59 = MEMORY[0x28223BE20](v340);
  v324 = &v259 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v327 = &v259 - v62;
  MEMORY[0x28223BE20](v61);
  v339 = &v259 - v63;
  v344 = type metadata accessor for LeaderboardSetDetailsPageIntent();
  v64 = MEMORY[0x28223BE20](v344);
  v338 = &v259 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v341 = &v259 - v67;
  MEMORY[0x28223BE20](v66);
  v343 = &v259 - v68;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244220);
  MEMORY[0x28223BE20](v346);
  v347 = &v259 - v69;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A80);
  MEMORY[0x28223BE20](v361);
  v348 = &v259 - v70;
  v350 = type metadata accessor for LeaderboardsPageView();
  MEMORY[0x28223BE20](v350);
  v349 = &v259 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = type metadata accessor for LeaderboardsOverviewPageIntent();
  v72 = MEMORY[0x28223BE20](v353);
  v342 = &v259 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x28223BE20](v72);
  v345 = &v259 - v75;
  MEMORY[0x28223BE20](v74);
  v352 = &v259 - v76;
  v371 = type metadata accessor for LeaderboardDetailsPageView(0);
  MEMORY[0x28223BE20](v371);
  v354 = &v259 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = type metadata accessor for LeaderboardDetailsPageIntent();
  v78 = MEMORY[0x28223BE20](v356);
  v351 = &v259 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v357 = &v259 - v81;
  MEMORY[0x28223BE20](v80);
  v355 = &v259 - v82;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244228);
  MEMORY[0x28223BE20](v375);
  v374 = &v259 - v83;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244230);
  MEMORY[0x28223BE20](v366);
  v368 = &v259 - v84;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244238);
  MEMORY[0x28223BE20](v363);
  v362 = &v259 - v85;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244240);
  MEMORY[0x28223BE20](v359);
  v370 = &v259 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244248);
  MEMORY[0x28223BE20](v87);
  v89 = &v259 - v88;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A60);
  MEMORY[0x28223BE20](v360);
  v91 = &v259 - v90;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A50);
  MEMORY[0x28223BE20](v372);
  v93 = &v259 - v92;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A40);
  MEMORY[0x28223BE20](v367);
  v95 = &v259 - v94;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219A30);
  MEMORY[0x28223BE20](v378);
  v365 = &v259 - v96;
  v97 = type metadata accessor for LibraryPageView(0);
  MEMORY[0x28223BE20](v97);
  v99 = &v259 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for LibraryPageIntent();
  v101 = MEMORY[0x28223BE20](v100);
  v103 = &v259 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v101);
  v105 = &v259 - v104;
  sub_24E615E00(v376, v395);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243E08);
  if (!swift_dynamicCast())
  {
    v112 = v370;
    v259 = v95;
    v113 = v355;
    if (swift_dynamicCast())
    {
      v114 = v357;
      sub_24F461D70(v113, v357, type metadata accessor for LeaderboardDetailsPageIntent);
      v115 = v351;
      sub_24F461DD8(v114, v351, type metadata accessor for LeaderboardDetailsPageIntent);
      v116 = v377;

      v117 = v354;
      sub_24F88AAEC(v115, v116, v354);
      sub_24F461DD8(v117, v89, type metadata accessor for LeaderboardDetailsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A68, type metadata accessor for LibraryPageView);
      sub_24F457898(&qword_27F219A70, type metadata accessor for LeaderboardDetailsPageView);
      sub_24F924E28();
      sub_24E60169C(v91, v112, &qword_27F219A60);
      swift_storeEnumTagMultiPayload();
      sub_24E712560();
      sub_24E71264C();
      v118 = v93;
      sub_24F924E28();
      sub_24E601704(v91, &qword_27F219A60);
      sub_24E60169C(v93, v362, &qword_27F219A50);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v119 = v259;
      sub_24F924E28();
      sub_24E601704(v118, &qword_27F219A50);
      sub_24E60169C(v119, v368, &qword_27F219A40);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v120 = v365;
      sub_24F924E28();
      sub_24E601704(v119, &qword_27F219A40);
      sub_24E60169C(v120, v374, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v120, &qword_27F219A30);
      sub_24F461E40(v117, type metadata accessor for LeaderboardDetailsPageView);
      v110 = type metadata accessor for LeaderboardDetailsPageIntent;
      v111 = v357;
      goto LABEL_8;
    }

    v121 = v352;
    v122 = v112;
    if (swift_dynamicCast())
    {
      v123 = v345;
      sub_24F461D70(v121, v345, type metadata accessor for LeaderboardsOverviewPageIntent);
      v124 = v342;
      sub_24F461DD8(v123, v342, type metadata accessor for LeaderboardsOverviewPageIntent);
      v125 = v377;

      v126 = v349;
      sub_24EDA2C08(v124, v125, v349);
      sub_24F461DD8(v126, v347, type metadata accessor for LeaderboardsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView);
      v127 = v348;
      sub_24F924E28();
      sub_24E60169C(v127, v122, &qword_27F219A80);
      swift_storeEnumTagMultiPayload();
      sub_24E712560();
      sub_24E71264C();
      sub_24F924E28();
      sub_24E601704(v127, &qword_27F219A80);
      sub_24E60169C(v93, v362, &qword_27F219A50);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v128 = v259;
      sub_24F924E28();
      sub_24E601704(v93, &qword_27F219A50);
      sub_24E60169C(v128, v368, &qword_27F219A40);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v129 = v365;
      sub_24F924E28();
      sub_24E601704(v128, &qword_27F219A40);
      sub_24E60169C(v129, v374, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v129, &qword_27F219A30);
      sub_24F461E40(v126, type metadata accessor for LeaderboardsPageView);
      v110 = type metadata accessor for LeaderboardsOverviewPageIntent;
      v111 = v123;
      goto LABEL_8;
    }

    v131 = v343;
    v132 = swift_dynamicCast();
    v133 = v377;
    if (v132)
    {
      v107 = v341;
      sub_24F461D70(v131, v341, type metadata accessor for LeaderboardSetDetailsPageIntent);
      v134 = v338;
      sub_24F461DD8(v107, v338, type metadata accessor for LeaderboardSetDetailsPageIntent);

      v135 = v349;
      sub_24EDA2F94(v134, v133, v349);
      sub_24F461DD8(v135, v347, type metadata accessor for LeaderboardsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView);
      v136 = v348;
      sub_24F924E28();
      v137 = v374;
      sub_24E60169C(v136, v112, &qword_27F219A80);
      swift_storeEnumTagMultiPayload();
      sub_24E712560();
      sub_24E71264C();
      sub_24F924E28();
      sub_24E601704(v136, &qword_27F219A80);
      sub_24E60169C(v93, v362, &qword_27F219A50);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v138 = v259;
      sub_24F924E28();
      sub_24E601704(v93, &qword_27F219A50);
      sub_24E60169C(v138, v368, &qword_27F219A40);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v139 = v365;
      sub_24F924E28();
      sub_24E601704(v138, &qword_27F219A40);
      sub_24E60169C(v139, v137, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v139, &qword_27F219A30);
      sub_24F461E40(v135, type metadata accessor for LeaderboardsPageView);
      v109 = type metadata accessor for LeaderboardSetDetailsPageIntent;
      goto LABEL_3;
    }

    v140 = v339;
    if (swift_dynamicCast())
    {
      v107 = v327;
      sub_24F461D70(v140, v327, type metadata accessor for LeaderboardsListPageIntent);
      v141 = v324;
      sub_24F461DD8(v107, v324, type metadata accessor for LeaderboardsListPageIntent);

      v142 = v349;
      sub_24EDA3220(v141, v133, v349);
      sub_24F461DD8(v142, v330, type metadata accessor for LeaderboardsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView);
      sub_24F457898(&qword_27F219AB0, type metadata accessor for AchievementsPageView);
      v143 = v331;
      sub_24F924E28();
      v144 = v374;
      sub_24E60169C(v143, v335, &qword_27F219AA8);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v145 = v336;
      sub_24F924E28();
      sub_24E601704(v143, &qword_27F219AA8);
      sub_24E60169C(v145, v362, &qword_27F219A98);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v146 = v259;
      sub_24F924E28();
      sub_24E601704(v145, &qword_27F219A98);
      sub_24E60169C(v146, v368, &qword_27F219A40);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v147 = v365;
      sub_24F924E28();
      sub_24E601704(v146, &qword_27F219A40);
      sub_24E60169C(v147, v144, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v147, &qword_27F219A30);
      sub_24F461E40(v142, type metadata accessor for LeaderboardsPageView);
      v109 = type metadata accessor for LeaderboardsListPageIntent;
      goto LABEL_3;
    }

    v148 = v325;
    if (swift_dynamicCast())
    {
      v149 = v328;
      sub_24F461D70(v148, v328, type metadata accessor for GameAchievementsListPageIntent);
      v150 = v320;
      sub_24F461DD8(v149, v320, type metadata accessor for GameAchievementsListPageIntent);
      v151 = v332;
      v152 = v323;
      v153 = &v323[*(v332 + 28)];
      *v153 = swift_getKeyPath();
      v153[8] = 0;
      sub_24F461DD8(v150, v152, type metadata accessor for GameAchievementsListPageIntent);
      *(v152 + *(v151 + 20)) = v133;
      type metadata accessor for LocalPlayerProvider();

      sub_24F928F28();
      sub_24F461E40(v150, type metadata accessor for GameAchievementsListPageIntent);
      *(v152 + *(v151 + 24)) = v386;
      sub_24F461DD8(v152, v330, type metadata accessor for AchievementsPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219A88, type metadata accessor for LeaderboardsPageView);
      sub_24F457898(&qword_27F219AB0, type metadata accessor for AchievementsPageView);
      v154 = v331;
      sub_24F924E28();
      sub_24E60169C(v154, v335, &qword_27F219AA8);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v155 = v336;
      sub_24F924E28();
      sub_24E601704(v154, &qword_27F219AA8);
      sub_24E60169C(v155, v362, &qword_27F219A98);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v156 = v259;
      sub_24F924E28();
      sub_24E601704(v155, &qword_27F219A98);
      sub_24E60169C(v156, v368, &qword_27F219A40);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v157 = v365;
      sub_24F924E28();
      sub_24E601704(v156, &qword_27F219A40);
      sub_24E60169C(v157, v374, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v157, &qword_27F219A30);
      sub_24F461E40(v152, type metadata accessor for AchievementsPageView);
      v111 = v328;
      v110 = type metadata accessor for GameAchievementsListPageIntent;
      goto LABEL_8;
    }

    v158 = v321;
    if (swift_dynamicCast())
    {
      v107 = v314;
      sub_24F461D70(v158, v314, type metadata accessor for FriendsPlayingPageIntent);
      v159 = v315;
      sub_24F461DD8(v107, v315, type metadata accessor for FriendsPlayingPageIntent);
      *(v159 + *(v317 + 20)) = v133;
      sub_24F461DD8(v159, v318, type metadata accessor for FriendsPlayingPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219AC8, type metadata accessor for FriendsPlayingPageView);
      sub_24E712934();

      v160 = v319;
      sub_24F924E28();
      sub_24E60169C(v160, v335, &qword_27F219AC0);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v161 = v336;
      sub_24F924E28();
      sub_24E601704(v160, &qword_27F219AC0);
      sub_24E60169C(v161, v362, &qword_27F219A98);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v162 = v259;
      sub_24F924E28();
      sub_24E601704(v161, &qword_27F219A98);
      sub_24E60169C(v162, v368, &qword_27F219A40);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v163 = v365;
      sub_24F924E28();
      sub_24E601704(v162, &qword_27F219A40);
      sub_24E60169C(v163, v374, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v163, &qword_27F219A30);
      sub_24F461E40(v159, type metadata accessor for FriendsPlayingPageView);
      v109 = type metadata accessor for FriendsPlayingPageIntent;
      goto LABEL_3;
    }

    if (swift_dynamicCast())
    {
      v164 = v389;
      LOBYTE(v380) = 1;
      *(&v380 + 1) = 0;
      sub_24F926F28();
      v165 = v386;
      v166 = *(&v386 + 1);
      LOBYTE(v386) = v164;
      *(&v386 + 1) = v133;
      LOBYTE(v387) = v165;
      *(&v387 + 1) = *(&v386 + 1);
      *(&v387 + 1) = v166;
      v167 = v387;
      v168 = v318;
      *v318 = v386;
      v168[1] = v167;
      swift_storeEnumTagMultiPayload();

      sub_24F461CB8(&v386, &v380);
      sub_24F457898(&qword_27F219AC8, type metadata accessor for FriendsPlayingPageView);
      sub_24E712934();
      v169 = v319;
      sub_24F924E28();
      v170 = v374;
      sub_24E60169C(v169, v335, &qword_27F219AC0);
      swift_storeEnumTagMultiPayload();
      sub_24E71278C();
      sub_24E712878();
      v171 = v336;
      sub_24F924E28();
      sub_24E601704(v169, &qword_27F219AC0);
      sub_24E60169C(v171, v362, &qword_27F219A98);
      swift_storeEnumTagMultiPayload();
      sub_24E7124D4();
      sub_24E712700();
      v172 = v259;
      sub_24F924E28();
      sub_24E601704(v171, &qword_27F219A98);
      sub_24E60169C(v172, v368, &qword_27F219A40);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v173 = v365;
      sub_24F924E28();
      sub_24E601704(v172, &qword_27F219A40);
      sub_24E60169C(v173, v170, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24F461D14(&v386);
      v174 = v173;
      v175 = &qword_27F219A30;
LABEL_20:
      sub_24E601704(v174, v175);
      return __swift_destroy_boxed_opaque_existential_1(v395);
    }

    v176 = v312;
    if (swift_dynamicCast())
    {
      v177 = v295;
      sub_24F461D70(v176, v295, type metadata accessor for GameDetailsMediaPreviewPageIntent);
      v178 = v298;
      v179 = v296;
      sub_24F461DD8(v177, &v296[*(v298 + 20)], type metadata accessor for GameDetailsMediaPreviewPageIntent);
      type metadata accessor for GameMediaPreviewPlatformOptionProvider();
      v180 = v133;
      v181 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D550);
      swift_allocObject();
      *(v181 + 16) = sub_24F9280D8();
      *(v181 + 24) = 0;
      sub_24F91FDB8();
      v380 = v181;
      sub_24F926F28();
      v182 = *(&v386 + 1);
      *v179 = v386;
      v179[1] = v182;
      *(v179 + *(v178 + 24)) = v180;
      sub_24F461DD8(v179, v300, type metadata accessor for GameDetailsMediaPreviewPageView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219B08, type metadata accessor for GameDetailsMediaPreviewPageView);
      sub_24F457898(&qword_27F219B10, type metadata accessor for PlayNowPageView);

      v183 = v301;
      sub_24F924E28();
      sub_24E60169C(v183, v305, &qword_27F219B00);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20);
      sub_24E712AA0();
      sub_24E712B8C();
      v184 = v306;
      sub_24F924E28();
      sub_24E601704(v183, &qword_27F219B00);
      sub_24E60169C(v184, v309, &qword_27F219AF0);
      swift_storeEnumTagMultiPayload();
      sub_24E712A14();
      sub_24E712CC0();
      v185 = v311;
      sub_24F924E28();
      sub_24E601704(v184, &qword_27F219AF0);
      sub_24E60169C(v185, v368, &qword_27F219AE0);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v186 = v365;
      sub_24F924E28();
      sub_24E601704(v185, &qword_27F219AE0);
      sub_24E60169C(v186, v374, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v186, &qword_27F219A30);
      sub_24F461E40(v179, type metadata accessor for GameDetailsMediaPreviewPageView);
      v187 = type metadata accessor for GameDetailsMediaPreviewPageIntent;
    }

    else
    {
      v188 = v293;
      v189 = v294;
      if (swift_dynamicCast())
      {
        v190 = v297;
        sub_24F461D70(v188, v297, type metadata accessor for PlayNowPageIntent);
        v191 = v291;
        sub_24F461DD8(v190, v291, type metadata accessor for PlayNowPageIntent);
        v192 = v292;
        sub_24F461DD8(v191, v292, type metadata accessor for PlayNowPageIntent);
        v193 = v302;
        *(v192 + *(v302 + 20)) = v133;
        v194 = v192 + *(v193 + 24);
        sub_24F461DD8(v191, v194, type metadata accessor for Player);
        v195 = *(v191 + v189[5]);
        v196 = v191 + v189[6];
        v197 = *v196;
        v198 = *(v196 + 8);
        v199 = v191 + v189[7];
        v200 = v374;
        v201 = *v199;
        v202 = *(v199 + 8);

        v377 = type metadata accessor for PlayNowPageIntent;
        sub_24F461E40(v191, type metadata accessor for PlayNowPageIntent);
        v203 = type metadata accessor for PlayNowFeedShelvesIntent(0);
        *(v194 + v203[5]) = v195;
        v204 = v194 + v203[6];
        *v204 = v197;
        *(v204 + 8) = v198;
        v205 = v194 + v203[7];
        *v205 = v201;
        *(v205 + 8) = v202;
        sub_24F461DD8(v192, v300, type metadata accessor for PlayNowPageView);
        swift_storeEnumTagMultiPayload();
        sub_24F457898(&qword_27F219B08, type metadata accessor for GameDetailsMediaPreviewPageView);
        sub_24F457898(&qword_27F219B10, type metadata accessor for PlayNowPageView);
        v206 = v301;
        sub_24F924E28();
        sub_24E60169C(v206, v305, &qword_27F219B00);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20);
        sub_24E712AA0();
        sub_24E712B8C();
        v207 = v306;
        sub_24F924E28();
        sub_24E601704(v206, &qword_27F219B00);
        sub_24E60169C(v207, v309, &qword_27F219AF0);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v208 = v311;
        sub_24F924E28();
        sub_24E601704(v207, &qword_27F219AF0);
        sub_24E60169C(v208, v368, &qword_27F219AE0);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v209 = v365;
        sub_24F924E28();
        sub_24E601704(v208, &qword_27F219AE0);
        sub_24E60169C(v209, v200, &qword_27F219A30);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();
        sub_24E601704(v209, &qword_27F219A30);
        sub_24F461E40(v192, type metadata accessor for PlayNowPageView);
        v111 = v297;
        v110 = v377;
        goto LABEL_8;
      }

      if (swift_dynamicCast())
      {

        v380 = sub_24F53128C(v210);
        v381 = v211;
        v383 = 0;
        v382 = 0;
        v384 = 0;
        sub_24E712C18();
        sub_24E712C6C();

        sub_24F924E28();
        v212 = v388;
        v213 = v387;
        v214 = v305;
        *v305 = v386;
        v214[1] = v213;
        *(v214 + 32) = v212;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20);
        sub_24E712AA0();
        sub_24E712B8C();
        v215 = v306;
        sub_24F924E28();
        sub_24E60169C(v215, v309, &qword_27F219AF0);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v216 = v311;
        sub_24F924E28();
        sub_24E601704(v215, &qword_27F219AF0);
        sub_24E60169C(v216, v368, &qword_27F219AE0);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v217 = v365;
        sub_24F924E28();
        sub_24E601704(v216, &qword_27F219AE0);
        sub_24E60169C(v217, v374, &qword_27F219A30);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();

        v174 = v217;
        v175 = &qword_27F219A30;
        goto LABEL_20;
      }

      if (swift_dynamicCast())
      {
        KeyPath = swift_getKeyPath();
        v380 = KeyPath;
        v381 = 0;
        v382 = 0;
        v383 = v133;
        v384 = 1;

        sub_24E9CC614(KeyPath, 0, 0);
        sub_24E712C18();
        sub_24E712C6C();

        sub_24F924E28();
        v219 = v388;
        v220 = v387;
        v221 = v305;
        *v305 = v386;
        v221[1] = v220;
        *(v221 + 32) = v219;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B20);
        sub_24E712AA0();
        sub_24E712B8C();
        v222 = v306;
        sub_24F924E28();
        sub_24E60169C(v222, v309, &qword_27F219AF0);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v223 = v311;
        sub_24F924E28();
        sub_24E601704(v222, &qword_27F219AF0);
        sub_24E60169C(v223, v368, &qword_27F219AE0);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v224 = v365;
        sub_24F924E28();
        sub_24E601704(v223, &qword_27F219AE0);
        sub_24E60169C(v224, v374, &qword_27F219A30);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();
        sub_24E74C370(KeyPath, 0, 0);

        v174 = v224;
        v175 = &qword_27F219A30;
        goto LABEL_20;
      }

      if (swift_dynamicCast())
      {
        v380 = [objc_allocWithZone(type metadata accessor for OverlayActiveCallPageViewModel()) init];
        sub_24F926F28();
        v225 = *(&v386 + 1);
        v226 = v281;
        *v281 = v386;
        *(v226 + 8) = v225;
        *(v226 + 24) = swift_getKeyPath();
        *(v226 + 32) = 0;
        *(v226 + 40) = 0;
        *(v226 + 48) = 0;
        *(v226 + 56) = 0;
        v227 = *(v283 + 32);
        *(v226 + v227) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
        swift_storeEnumTagMultiPayload();
        *(v226 + 16) = v133;
        sub_24F461DD8(v226, v284, type metadata accessor for OverlayActiveCallPageView);
        swift_storeEnumTagMultiPayload();
        sub_24F457898(&qword_27F219B58, type metadata accessor for OverlayActiveCallPageView);
        sub_24F457898(&qword_27F219B60, type metadata accessor for AchievementsByGameView);

        v228 = v285;
        sub_24F924E28();
        sub_24E60169C(v228, v289, &qword_27F219B50);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70);
        sub_24E712D4C();
        sub_24E712E38();
        v229 = v290;
        sub_24F924E28();
        sub_24E601704(v228, &qword_27F219B50);
        sub_24E60169C(v229, v309, &qword_27F219B40);
        swift_storeEnumTagMultiPayload();
        sub_24E712A14();
        sub_24E712CC0();
        v230 = v311;
        sub_24F924E28();
        sub_24E601704(v229, &qword_27F219B40);
        sub_24E60169C(v230, v368, &qword_27F219AE0);
        swift_storeEnumTagMultiPayload();
        sub_24E712448();
        sub_24E712988();
        v231 = v365;
        sub_24F924E28();
        sub_24E601704(v230, &qword_27F219AE0);
        sub_24E60169C(v231, v374, &qword_27F219A30);
        swift_storeEnumTagMultiPayload();
        sub_24E7123BC();
        sub_24E712F10();
        sub_24F924E28();
        sub_24E601704(v231, &qword_27F219A30);
        v110 = type metadata accessor for OverlayActiveCallPageView;
        v111 = v226;
        goto LABEL_8;
      }

      v232 = v279;
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v242 = v272;
          sub_24F461D70(v277, v272, type metadata accessor for OverlaySocialPageIntent);
          v392 = v278;
          v393 = sub_24F457898(&qword_27F21D398, type metadata accessor for OverlaySocialPageIntent);
          v243 = __swift_allocate_boxed_opaque_existential_1(&v391);
          sub_24F461DD8(v242, v243, type metadata accessor for OverlaySocialPageIntent);
          v389 = swift_getKeyPath();
          v390 = 0;
          v394 = v377;
          sub_24F461BF8(&v389, &v380);
          v385 = 0;
          sub_24E712EBC();

          sub_24F924E28();
          sub_24E60169C(&v386, v289, &qword_27F219B70);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70);
          sub_24E712D4C();
          sub_24E712E38();
          v244 = v290;
          sub_24F924E28();
          sub_24E601704(&v386, &qword_27F219B70);
          sub_24E60169C(v244, v309, &qword_27F219B40);
          swift_storeEnumTagMultiPayload();
          sub_24E712A14();
          sub_24E712CC0();
          v245 = v311;
          sub_24F924E28();
          sub_24E601704(v244, &qword_27F219B40);
          sub_24E60169C(v245, v368, &qword_27F219AE0);
          swift_storeEnumTagMultiPayload();
          sub_24E712448();
          sub_24E712988();
          v246 = v365;
          sub_24F924E28();
          sub_24E601704(v245, &qword_27F219AE0);
          sub_24E60169C(v246, v374, &qword_27F219A30);
          swift_storeEnumTagMultiPayload();
          sub_24E7123BC();
          sub_24E712F10();
          sub_24F924E28();
          sub_24E601704(v246, &qword_27F219A30);
          sub_24F461C54(&v389);
          v247 = type metadata accessor for OverlaySocialPageIntent;
        }

        else if (swift_dynamicCast())
        {
          v242 = v267;
          sub_24F461D70(v273, v267, type metadata accessor for OverlayNowPlayingPageIntent);
          v392 = v274;
          v393 = sub_24F457898(&qword_27F21D390, type metadata accessor for OverlayNowPlayingPageIntent);
          v248 = __swift_allocate_boxed_opaque_existential_1(&v391);
          sub_24F461DD8(v242, v248, type metadata accessor for OverlayNowPlayingPageIntent);
          v389 = swift_getKeyPath();
          v390 = 0;
          v394 = v377;
          sub_24F461BF8(&v389, &v380);
          v385 = 1;
          sub_24E712EBC();

          sub_24F924E28();
          sub_24E60169C(&v386, v289, &qword_27F219B70);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70);
          sub_24E712D4C();
          sub_24E712E38();
          v249 = v290;
          sub_24F924E28();
          sub_24E601704(&v386, &qword_27F219B70);
          sub_24E60169C(v249, v309, &qword_27F219B40);
          swift_storeEnumTagMultiPayload();
          sub_24E712A14();
          sub_24E712CC0();
          v250 = v311;
          sub_24F924E28();
          sub_24E601704(v249, &qword_27F219B40);
          sub_24E60169C(v250, v368, &qword_27F219AE0);
          swift_storeEnumTagMultiPayload();
          sub_24E712448();
          sub_24E712988();
          v251 = v365;
          sub_24F924E28();
          sub_24E601704(v250, &qword_27F219AE0);
          sub_24E60169C(v251, v374, &qword_27F219A30);
          swift_storeEnumTagMultiPayload();
          sub_24E7123BC();
          sub_24E712F10();
          sub_24F924E28();
          sub_24E601704(v251, &qword_27F219A30);
          sub_24F461C54(&v389);
          v247 = type metadata accessor for OverlayNowPlayingPageIntent;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_24E615E00(v376, &v386);
            v256 = v377;

            v257 = v263;
            sub_24F57BC34(&v386, v256, 1, v263);
            sub_24E60169C(v257, v268, &qword_27F215760);
            swift_storeEnumTagMultiPayload();
            sub_24F457898(&qword_27F219B90, type metadata accessor for SocialIntegrationContactsListPageView);
            sub_24E602068(&qword_27F215758, &qword_27F215760);
            v258 = v270;
            sub_24F924E28();
            sub_24E60169C(v258, v374, &qword_27F219B88);
            swift_storeEnumTagMultiPayload();
            sub_24E7123BC();
            sub_24E712F10();
            sub_24F924E28();
            sub_24E601704(v258, &qword_27F219B88);
            v174 = v257;
            v175 = &qword_27F215760;
            goto LABEL_20;
          }

          v242 = v261;
          sub_24F461D70(v271, v261, type metadata accessor for SocialIntegrationContactsListPageIntent);
          v252 = v260;
          sub_24F461DD8(v242, v260, type metadata accessor for SocialIntegrationContactsListPageIntent);
          v253 = v377;

          v254 = v262;
          sub_24EA54248(v252, v253, v262);
          sub_24F461DD8(v254, v268, type metadata accessor for SocialIntegrationContactsListPageView);
          swift_storeEnumTagMultiPayload();
          sub_24F457898(&qword_27F219B90, type metadata accessor for SocialIntegrationContactsListPageView);
          sub_24E602068(&qword_27F215758, &qword_27F215760);
          v255 = v270;
          sub_24F924E28();
          sub_24E60169C(v255, v374, &qword_27F219B88);
          swift_storeEnumTagMultiPayload();
          sub_24E7123BC();
          sub_24E712F10();
          sub_24F924E28();
          sub_24E601704(v255, &qword_27F219B88);
          sub_24F461E40(v254, type metadata accessor for SocialIntegrationContactsListPageView);
          v247 = type metadata accessor for SocialIntegrationContactsListPageIntent;
        }

        v110 = v247;
        v111 = v242;
        goto LABEL_8;
      }

      v177 = v275;
      sub_24F461D70(v232, v275, type metadata accessor for AchievementsPageIntent);
      v233 = v276;
      sub_24F461DD8(v177, v276, type metadata accessor for AchievementsPageIntent);
      v234 = v286;
      *(v233 + *(v286 + 20)) = v133;
      v235 = (v233 + *(v234 + 24));
      type metadata accessor for AchievementsByGameOptionProvider();
      v236 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215208);
      swift_allocObject();

      *(v236 + 16) = sub_24F9280D8();
      *(v236 + 24) = 0;
      sub_24F91FDB8();
      v380 = v236;
      sub_24F926F28();
      v237 = *(&v386 + 1);
      *v235 = v386;
      v235[1] = v237;
      sub_24F461DD8(v233, v284, type metadata accessor for AchievementsByGameView);
      swift_storeEnumTagMultiPayload();
      sub_24F457898(&qword_27F219B58, type metadata accessor for OverlayActiveCallPageView);
      sub_24F457898(&qword_27F219B60, type metadata accessor for AchievementsByGameView);
      v238 = v285;
      sub_24F924E28();
      sub_24E60169C(v238, v289, &qword_27F219B50);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219B70);
      sub_24E712D4C();
      sub_24E712E38();
      v239 = v290;
      sub_24F924E28();
      sub_24E601704(v238, &qword_27F219B50);
      sub_24E60169C(v239, v309, &qword_27F219B40);
      swift_storeEnumTagMultiPayload();
      sub_24E712A14();
      sub_24E712CC0();
      v240 = v311;
      sub_24F924E28();
      sub_24E601704(v239, &qword_27F219B40);
      sub_24E60169C(v240, v368, &qword_27F219AE0);
      swift_storeEnumTagMultiPayload();
      sub_24E712448();
      sub_24E712988();
      v241 = v365;
      sub_24F924E28();
      sub_24E601704(v240, &qword_27F219AE0);
      sub_24E60169C(v241, v374, &qword_27F219A30);
      swift_storeEnumTagMultiPayload();
      sub_24E7123BC();
      sub_24E712F10();
      sub_24F924E28();
      sub_24E601704(v241, &qword_27F219A30);
      sub_24F461E40(v233, type metadata accessor for AchievementsByGameView);
      v187 = type metadata accessor for AchievementsPageIntent;
    }

    v110 = v187;
    v111 = v177;
    goto LABEL_8;
  }

  v106 = v105;
  v107 = v103;
  sub_24F461D70(v106, v103, type metadata accessor for LibraryPageIntent);
  sub_24F461DD8(v103, v99, type metadata accessor for LibraryPageIntent);
  *&v99[*(v97 + 20)] = v377;
  sub_24F461DD8(v99, v89, type metadata accessor for LibraryPageView);
  swift_storeEnumTagMultiPayload();
  sub_24F457898(&qword_27F219A68, type metadata accessor for LibraryPageView);
  sub_24F457898(&qword_27F219A70, type metadata accessor for LeaderboardDetailsPageView);

  sub_24F924E28();
  sub_24E60169C(v91, v370, &qword_27F219A60);
  swift_storeEnumTagMultiPayload();
  sub_24E712560();
  sub_24E71264C();
  sub_24F924E28();
  sub_24E601704(v91, &qword_27F219A60);
  sub_24E60169C(v93, v362, &qword_27F219A50);
  swift_storeEnumTagMultiPayload();
  sub_24E7124D4();
  sub_24E712700();
  sub_24F924E28();
  sub_24E601704(v93, &qword_27F219A50);
  sub_24E60169C(v95, v368, &qword_27F219A40);
  swift_storeEnumTagMultiPayload();
  sub_24E712448();
  sub_24E712988();
  v108 = v365;
  sub_24F924E28();
  sub_24E601704(v95, &qword_27F219A40);
  sub_24E60169C(v108, v374, &qword_27F219A30);
  swift_storeEnumTagMultiPayload();
  sub_24E7123BC();
  sub_24E712F10();
  sub_24F924E28();
  sub_24E601704(v108, &qword_27F219A30);
  sub_24F461E40(v99, type metadata accessor for LibraryPageView);
  v109 = type metadata accessor for LibraryPageIntent;
LABEL_3:
  v110 = v109;
  v111 = v107;
LABEL_8:
  sub_24F461E40(v111, v110);
  return __swift_destroy_boxed_opaque_existential_1(v395);
}

uint64_t sub_24F4517C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219D80);
  v8 = MEMORY[0x28223BE20](v25);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = (a1 + *(type metadata accessor for AchievementDetails() + 44));
  v14 = v13[2];
  if (*v13 == 1 || v14 == 0)
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    v16 = sub_24E71428C();
    v26 = &type metadata for PageToolbarItemGroupView;
    v27 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v10, v4, OpaqueTypeConformance2);
    sub_24E601704(v10, &qword_27F219D80);
  }

  else
  {
    type metadata accessor for LocalPlayerProvider();
    v24[3] = a2;

    sub_24F928F28();
    v18 = v26;
    type metadata accessor for ArcadeSubscription();
    sub_24F928F28();
    v19 = v32;
    v24[2] = v32;
    type metadata accessor for NetworkConnectionMonitor();
    sub_24F928F28();
    v24[0] = v31;
    v24[1] = v18;
    v26 = v18;
    v27 = v19;
    v28 = v31;
    v29 = 6;
    v30 = v14;
    v20 = sub_24E71428C();

    MEMORY[0x25304AA30](&v26, &type metadata for PageToolbarItemGroupView, v20);

    (*(v5 + 16))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    v26 = &type metadata for PageToolbarItemGroupView;
    v27 = v20;
    v21 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304AA60](v10, v4, v21);

    sub_24E601704(v10, &qword_27F219D80);
    (*(v5 + 8))(v7, v4);
  }

  v22 = sub_24E7141DC();
  MEMORY[0x25304AA30](v12, v25, v22);
  return sub_24E601704(v12, &qword_27F219D80);
}

unint64_t sub_24F451BA0(char a1)
{
  result = 0x7974706D65;
  switch(a1)
  {
    case 1:
      result = 0x6F53676E696D6F63;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 1701273968;
      break;
    case 4:
      result = 0x746E6F4365676170;
      break;
    case 5:
      result = 0x686372616573;
      break;
    case 6:
    case 14:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0x7373654D646E6573;
      break;
    case 9:
      result = 0x504174726F706572;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
    case 16:
    case 17:
      result = 0xD000000000000019;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x45656C69666F7270;
      break;
    case 20:
      result = 0x7246657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F451E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA42EA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F451EF8(uint64_t a1)
{
  v2 = sub_24F45E79C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F451F34(uint64_t a1)
{
  v2 = sub_24F45E79C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F451F70()
{
  v1 = 0x614E646E65697266;
  v2 = 0x7261646E6F636573;
  if (*v0 != 2)
  {
    v2 = 0x7274654D65676170;
  }

  if (*v0)
  {
    v1 = 0x417972616D697270;
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

uint64_t sub_24F452010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F460C74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F452038(uint64_t a1)
{
  v2 = sub_24F45E898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452074(uint64_t a1)
{
  v2 = sub_24F45E898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4520CC(uint64_t a1)
{
  v2 = sub_24F45EC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452108(uint64_t a1)
{
  v2 = sub_24F45EC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452144()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x444965676170;
    if (v1 != 1)
    {
      v5 = 0xD000000000000012;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x697461676976616ELL;
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    if (v1 != 5)
    {
      v2 = 0x7274654D65676170;
    }

    v3 = 0xD000000000000015;
    if (v1 == 3)
    {
      v3 = 1701080941;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F452234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F460DF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F45225C(uint64_t a1)
{
  v2 = sub_24F45EA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452298(uint64_t a1)
{
  v2 = sub_24F45EA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4522D4()
{
  if (*v0)
  {
    return 0x666E497466617264;
  }

  else
  {
    return 0x6F666E4965736162;
  }
}

uint64_t sub_24F452318(uint64_t a1)
{
  v2 = sub_24F45EA3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452354(uint64_t a1)
{
  v2 = sub_24F45EA3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F46104C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4523CC(uint64_t a1)
{
  v2 = sub_24F45E6A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452408(uint64_t a1)
{
  v2 = sub_24F45E6A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452444(uint64_t a1)
{
  v2 = sub_24F45EFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452480(uint64_t a1)
{
  v2 = sub_24F45EFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4524BC()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x7274654D65676170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x417972616D697270;
  }
}

uint64_t sub_24F452538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F4616F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F452560(uint64_t a1)
{
  v2 = sub_24F45E844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F45259C(uint64_t a1)
{
  v2 = sub_24F45E844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4525D8()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6449626174;
  }
}

uint64_t sub_24F452614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449626174 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA75720 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F4526F4(uint64_t a1)
{
  v2 = sub_24F45EE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452730(uint64_t a1)
{
  v2 = sub_24F45EE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F45276C(uint64_t a1)
{
  v2 = sub_24F45F044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4527A8(uint64_t a1)
{
  v2 = sub_24F45F044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4527E4()
{
  v1 = 0x4173736563637573;
  if (*v0 != 1)
  {
    v1 = 0x416572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65697069636572;
  }
}

uint64_t sub_24F45285C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F461820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F452884(uint64_t a1)
{
  v2 = sub_24F45ECA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4528C0(uint64_t a1)
{
  v2 = sub_24F45ECA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E69 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F452994(uint64_t a1)
{
  v2 = sub_24F45E6F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4529D0(uint64_t a1)
{
  v2 = sub_24F45E6F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F666E4965736162 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x666E497466617264 && a2 == 0xE90000000000006FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F452AF0(uint64_t a1)
{
  v2 = sub_24F45E994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452B2C(uint64_t a1)
{
  v2 = sub_24F45E994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567615074616877 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F452C08(uint64_t a1)
{
  v2 = sub_24F45EDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452C44(uint64_t a1)
{
  v2 = sub_24F45EDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452C80(uint64_t a1)
{
  v2 = sub_24F45EDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452CBC(uint64_t a1)
{
  v2 = sub_24F45EDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024FA756E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F452DA8(uint64_t a1)
{
  v2 = sub_24F45EAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452DE4(uint64_t a1)
{
  v2 = sub_24F45EAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F452ED4(uint64_t a1)
{
  v2 = sub_24F45E7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452F10(uint64_t a1)
{
  v2 = sub_24F45E7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F452F4C(uint64_t a1)
{
  v2 = sub_24F45E748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F452F88(uint64_t a1)
{
  v2 = sub_24F45E748();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F452FC4()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_24F453000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x800000024FA75680 == a2;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA756A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F4530E0(uint64_t a1)
{
  v2 = sub_24F45E8EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F45311C(uint64_t a1)
{
  v2 = sub_24F45E8EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F453158(uint64_t a1)
{
  v2 = sub_24F45EB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F453194(uint64_t a1)
{
  v2 = sub_24F45EB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4531F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000024FA75700 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24F92CE08();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24F453284(uint64_t a1)
{
  v2 = sub_24F45ED50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4532C0(uint64_t a1)
{
  v2 = sub_24F45ED50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F453300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F453390(uint64_t a1)
{
  v2 = sub_24F45EBC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4533CC(uint64_t a1)
{
  v2 = sub_24F45EBC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlowDestination.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v223 = a2;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C00);
  v205 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v221 = &v165 - v3;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C08);
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v218 = &v165 - v4;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C10);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v220 = &v165 - v5;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C18);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v229 = &v165 - v6;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C20);
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v228 = &v165 - v7;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C28);
  v207 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v219 = &v165 - v8;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C30);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v217 = &v165 - v9;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C38);
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v216 = &v165 - v10;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C40);
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v215 = &v165 - v11;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C48);
  v224 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v222 = &v165 - v12;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C50);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v214 = &v165 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C58);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v213 = &v165 - v14;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C60);
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v212 = &v165 - v15;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C68);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v211 = &v165 - v16;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C70);
  v186 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v226 = &v165 - v17;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C78);
  v179 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v225 = &v165 - v18;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C80);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v210 = &v165 - v19;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C88);
  v172 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v209 = &v165 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C90);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v208 = &v165 - v21;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243C98);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v23 = &v165 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243CA0);
  v169 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v165 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243CA8);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v165 - v29;
  v31 = a1[3];
  v230 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_24F45E6A0();
  v32 = v231;
  sub_24F92D108();
  if (v32)
  {
LABEL_8:
    v48 = v230;
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v166 = v26;
  v165 = v24;
  v167 = v23;
  v33 = v225;
  v34 = v226;
  v36 = v227;
  v35 = v228;
  v37 = v229;
  v168 = 0;
  v231 = v28;
  v38 = sub_24F92CC78();
  v39 = (2 * *(v38 + 16)) | 1;
  v232 = v38;
  v233 = v38 + 32;
  v234 = 0;
  v235 = v39;
  v40 = sub_24E6413C0();
  if (v234 != v235 >> 1)
  {
LABEL_6:
    v44 = sub_24F92C918();
    swift_allocError();
    v45 = v27;
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v47 = &type metadata for FlowDestination;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v44 - 8) + 104))(v47, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    (*(v231 + 8))(v30, v45);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v40)
  {
    case 0:
      v236 = 0;
      sub_24F45F044();
      v41 = v166;
      v42 = v168;
      sub_24F92CBA8();
      if (v42)
      {
        goto LABEL_51;
      }

      (*(v169 + 8))(v41, v165);
      (*(v231 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = 0x9000000000000000;
      goto LABEL_56;
    case 1:
      v236 = 1;
      sub_24F45EFF0();
      v107 = v167;
      v108 = v168;
      sub_24F92CBA8();
      if (v108)
      {
        goto LABEL_51;
      }

      v109 = v27;
      v43 = 0x9000000000000008;
      (*(v170 + 8))(v107, v171);
      (*(v231 + 8))(v30, v109);
      goto LABEL_32;
    case 2:
      v236 = 2;
      sub_24F45EE4C();
      v83 = v208;
      v84 = v168;
      sub_24F92CBA8();
      if (v84)
      {
        goto LABEL_51;
      }

      v85 = v27;
      v43 = swift_allocObject();
      v236 = 0;
      v86 = v174;
      v87 = sub_24F92CC28();
      v88 = v231;
      *(v43 + 16) = v87;
      *(v43 + 24) = v156;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227168);
      v236 = 1;
      sub_24F45EEE0();
      sub_24F92CC68();
      (*(v173 + 8))(v83, v86);
      (*(v88 + 8))(v30, v85);
LABEL_32:
      swift_unknownObjectRelease();
      goto LABEL_56;
    case 3:
      v236 = 3;
      sub_24F45EDF8();
      v96 = v209;
      v97 = v168;
      sub_24F92CBA8();
      if (v97)
      {
        goto LABEL_51;
      }

      v98 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768);
      sub_24E602068(&qword_27F243DB0, &qword_27F215768);
      v99 = v175;
      sub_24F92CC68();
      v100 = v231;
      (*(v172 + 8))(v96, v99);
      (*(v100 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = v98 | 4;
      goto LABEL_54;
    case 4:
      v236 = 4;
      sub_24F45EDA4();
      v65 = v210;
      v66 = v168;
      sub_24F92CBA8();
      if (v66)
      {
        goto LABEL_51;
      }

      v67 = v27;
      v68 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BF8);
      sub_24E602068(&qword_27F243DA0, &qword_27F243BF8);
      v69 = v177;
      sub_24F92CC68();
      v70 = v231;
      (*(v176 + 8))(v65, v69);
      (*(v70 + 8))(v30, v67);
      swift_unknownObjectRelease();
      v43 = v68 | 0x1000000000000000;
      goto LABEL_54;
    case 5:
      v236 = 5;
      sub_24F45ED50();
      v115 = v168;
      sub_24F92CBA8();
      if (v115)
      {
        goto LABEL_51;
      }

      v116 = v27;
      v103 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227178);
      sub_24E602068(&qword_27F243D90, &qword_27F227178);
      v117 = v178;
      sub_24F92CC68();
      v118 = v231;
      (*(v179 + 8))(v33, v117);
      (*(v118 + 8))(v30, v116);
      swift_unknownObjectRelease();
      v106 = 0x1000000000000004;
      goto LABEL_39;
    case 6:
      v236 = 6;
      sub_24F45ECA4();
      v124 = v168;
      sub_24F92CBA8();
      if (v124)
      {
        goto LABEL_51;
      }

      v125 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      v236 = 0;
      sub_24E7C1498();
      sub_24F92CC18();
      v126 = v231;
      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
      v236 = 1;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
      sub_24F92CC68();
      v236 = 2;
      sub_24F92CC68();
      (*(v186 + 8))(v34, v36);
      (*(v126 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v43 = v125 | 0x2000000000000000;
      goto LABEL_56;
    case 7:
      v236 = 7;
      sub_24F45EC50();
      v101 = v211;
      v102 = v168;
      sub_24F92CBA8();
      if (v102)
      {
        goto LABEL_51;
      }

      v103 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E7C1498();
      v104 = v181;
      sub_24F92CC18();
      v105 = v231;
      (*(v180 + 8))(v101, v104);
      (*(v105 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v106 = 0x2000000000000004;
      goto LABEL_39;
    case 8:
      v236 = 8;
      sub_24F45EBC4();
      v138 = v212;
      v139 = v168;
      sub_24F92CBA8();
      if (v139)
      {
        goto LABEL_51;
      }

      v140 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E7C1498();
      v141 = v183;
      sub_24F92CC68();
      v142 = v231;
      (*(v182 + 8))(v138, v141);
      (*(v142 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = v140 | 0x3000000000000000;
      goto LABEL_54;
    case 9:
      v236 = 9;
      sub_24F45EB38();
      v76 = v213;
      v77 = v168;
      sub_24F92CBA8();
      if (v77)
      {
        goto LABEL_51;
      }

      v78 = v30;
      v79 = swift_allocObject();
      v80 = v185;
      v81 = sub_24F92CC28();
      v82 = v231;
      v151 = v81;
      v152 = v76;
      v153 = v27;
      v155 = v154;
      (*(v184 + 8))(v152, v80);
      (*(v82 + 8))(v78, v153);
      swift_unknownObjectRelease();
      *(v79 + 16) = v151;
      *(v79 + 24) = v155;
      v43 = v79 | 0x3000000000000004;
      goto LABEL_56;
    case 10:
      v236 = 10;
      sub_24F45EAE4();
      v132 = v214;
      v133 = v168;
      sub_24F92CBA8();
      if (v133)
      {
        goto LABEL_51;
      }

      v134 = v27;
      v135 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BF0);
      sub_24E602068(&qword_27F243D60, &qword_27F243BF0);
      v136 = v188;
      sub_24F92CC68();
      v137 = v231;
      (*(v187 + 8))(v132, v136);
      (*(v137 + 8))(v30, v134);
      swift_unknownObjectRelease();
      v43 = v135 | 0x4000000000000000;
      goto LABEL_54;
    case 11:
      v236 = 11;
      sub_24F45EA90();
      v59 = v168;
      sub_24F92CBA8();
      if (v59)
      {
        goto LABEL_51;
      }

      v227 = v30;
      v229 = v27;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FB68);
      v61 = swift_allocBox();
      v63 = v62;
      v236 = 0;
      v64 = sub_24F92CC28();
      v228 = v61;
      v148 = v60[12];
      *v63 = v64;
      v63[1] = v149;
      v150 = sub_24F92A708();
      v236 = 1;
      sub_24F457898(&qword_27F21F8C0, MEMORY[0x277D22408]);
      sub_24F92CC68();
      v225 = v150;
      v226 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      v236 = 2;
      sub_24E7C1498();
      sub_24F92CC68();
      v163 = v60[20];
      type metadata accessor for ChallengesPlayerPickerMode(0);
      v236 = 3;
      sub_24F457898(&qword_27F243D50, type metadata accessor for ChallengesPlayerPickerMode);
      v221 = v163;
      sub_24F92CC68();
      v164 = v60[24];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
      v236 = 4;
      sub_24E602068(&qword_27F243830, &qword_27F2169E8);
      v220 = v164;
      sub_24F92CC68();
      v236 = 5;
      sub_24F92CC68();
      sub_24F928818();
      v236 = 6;
      sub_24F457898(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
      sub_24F92CC68();
      (*(v224 + 8))(v222, v206);
      (*(v231 + 8))(v227, v229);
      swift_unknownObjectRelease();
      v43 = v228 | 0x4000000000000004;
      v48 = v230;
      goto LABEL_57;
    case 12:
      v236 = 12;
      sub_24F45EA3C();
      v71 = v215;
      v72 = v168;
      sub_24F92CBA8();
      if (v72)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE8);
      v73 = swift_allocBox();
      type metadata accessor for ChallengesReviewBaseInfo(0);
      v236 = 0;
      sub_24F457898(&qword_27F243D38, type metadata accessor for ChallengesReviewBaseInfo);
      v74 = v190;
      sub_24F92CC68();
      v75 = v231;
      v228 = v73;
      type metadata accessor for ChallengeDefinitionDraftInfo(0);
      v236 = 1;
      sub_24F457898(&qword_27F243D40, type metadata accessor for ChallengeDefinitionDraftInfo);
      sub_24F92CC18();
      (*(v189 + 8))(v71, v74);
      (*(v75 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v161 = 0x5000000000000000;
      goto LABEL_55;
    case 13:
      v236 = 13;
      sub_24F45E994();
      v119 = v216;
      v120 = v168;
      sub_24F92CBA8();
      if (v120)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BE0);
      v121 = swift_allocBox();
      type metadata accessor for MultiplayerActivityReviewBaseInfo(0);
      v236 = 0;
      sub_24F457898(&qword_27F243D20, type metadata accessor for MultiplayerActivityReviewBaseInfo);
      v122 = v192;
      sub_24F92CC68();
      v123 = v231;
      v228 = v121;
      v236 = 1;
      sub_24F45E9E8();
      sub_24F92CC68();
      (*(v191 + 8))(v119, v122);
      (*(v123 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v161 = 0x5000000000000004;
LABEL_55:
      v43 = v228 | v161;
      goto LABEL_56;
    case 14:
      v236 = 14;
      sub_24F45E8EC();
      v54 = v217;
      v55 = v168;
      sub_24F92CBA8();
      if (v55)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD8);
      v56 = swift_allocBox();
      type metadata accessor for RecordingAssociation();
      v236 = 0;
      sub_24F457898(&qword_27F243D08, type metadata accessor for RecordingAssociation);
      v57 = v194;
      sub_24F92CC68();
      v58 = v231;
      v228 = v56;
      v236 = 1;
      sub_24F45E940();
      sub_24F92CC68();
      (*(v193 + 8))(v54, v57);
      (*(v58 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v43 = v228 | 0x6000000000000000;
      goto LABEL_56;
    case 15:
      v236 = 15;
      sub_24F45E898();
      v89 = v219;
      v90 = v168;
      sub_24F92CBA8();
      if (v90)
      {
        goto LABEL_51;
      }

      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BD0);
      v91 = swift_allocBox();
      v93 = v92;
      v236 = 0;
      v94 = v201;
      v95 = sub_24F92CBC8();
      v228 = v91;
      *v93 = v95;
      v93[1] = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
      v236 = 1;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
      sub_24F92CC68();
      v236 = 2;
      sub_24F92CC68();
      sub_24F928818();
      v236 = 3;
      sub_24F457898(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
      sub_24F92CC68();
      (*(v207 + 8))(v89, v94);
      (*(v231 + 8))(v30, v229);
      swift_unknownObjectRelease();
      v43 = v228 | 0x6000000000000004;
      v48 = v230;
      goto LABEL_57;
    case 16:
      v236 = 16;
      sub_24F45E844();
      v50 = v168;
      sub_24F92CBA8();
      if (v50)
      {
        goto LABEL_51;
      }

      v227 = v30;
      v229 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BC8);
      v51 = swift_allocBox();
      v52 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
      v236 = 0;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
      v53 = v203;
      sub_24F92CC68();
      v226 = v51;
      v236 = 1;
      sub_24F92CC68();
      sub_24F928818();
      v236 = 2;
      sub_24F457898(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
      sub_24F92CC68();
      v158 = v231;
      v159 = v53;
      v160 = v226;
      (*(v202 + 8))(v52, v159);
      (*(v158 + 8))(v227, v229);
      swift_unknownObjectRelease();
      v43 = v160 | 0x7000000000000000;
      v48 = v230;
      v162 = v223;
      goto LABEL_58;
    case 17:
      v236 = 17;
      sub_24F45E7F0();
      v110 = v168;
      sub_24F92CBA8();
      if (v110)
      {
        goto LABEL_51;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BC0);
      v103 = swift_allocBox();
      type metadata accessor for PlayTogetherWelcomePage(0);
      sub_24F457898(&qword_27F243CE8, type metadata accessor for PlayTogetherWelcomePage);
      v111 = v198;
      sub_24F92CC68();
      v112 = v231;
      (*(v197 + 8))(v37, v111);
      (*(v112 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v106 = 0x7000000000000004;
LABEL_39:
      v43 = v103 | v106;
      goto LABEL_54;
    case 18:
      v236 = 18;
      sub_24F45E79C();
      v127 = v220;
      v128 = v168;
      sub_24F92CBA8();
      if (v128)
      {
        goto LABEL_51;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BB8);
      v129 = swift_allocBox();
      type metadata accessor for AchievementDetails();
      sub_24F457898(&qword_27F243CD8, type metadata accessor for AchievementDetails);
      v130 = v200;
      sub_24F92CC68();
      v131 = v231;
      (*(v199 + 8))(v127, v130);
      (*(v131 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = v129 | 0x8000000000000000;
LABEL_54:
      v48 = v230;
      v162 = v223;
      goto LABEL_58;
    case 19:
      v236 = 19;
      sub_24F45E748();
      v143 = v218;
      v144 = v168;
      sub_24F92CBA8();
      if (v144)
      {
LABEL_51:
        (*(v231 + 8))(v30, v27);
        goto LABEL_7;
      }

      (*(v195 + 8))(v143, v196);
      (*(v231 + 8))(v30, v27);
      swift_unknownObjectRelease();
      v43 = 0x9000000000000010;
LABEL_56:
      v48 = v230;
LABEL_57:
      v162 = v223;
      goto LABEL_58;
    case 20:
      v236 = 20;
      sub_24F45E6F4();
      v113 = v221;
      v114 = v168;
      sub_24F92CBA8();
      if (v114)
      {
        (*(v231 + 8))(v30, v27);
        swift_unknownObjectRelease();
        v48 = v230;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243BB0);
        v145 = swift_allocBox();
        type metadata accessor for InviteFriendsPageIntent();
        sub_24F457898(&qword_27F243CC0, type metadata accessor for InviteFriendsPageIntent);
        v146 = v204;
        sub_24F92CC68();
        v147 = v231;
        (*(v205 + 8))(v113, v146);
        (*(v147 + 8))(v30, v27);
        swift_unknownObjectRelease();
        v43 = v145 | 0x8000000000000004;
        v48 = v230;
        v162 = v223;
LABEL_58:
        *v162 = v43;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t FlowAction.presentationSizing.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for FlowAction.Destination();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - v9);
  v11 = OBJC_IVAR____TtC12GameStoreKit6Action_id;
  LOBYTE(v24) = *(v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
  v25[4] = &protocol witness table for FlowAction;
  v12 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl;
  v25[3] = v4;
  v25[0] = v2;
  v13 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v2 + v11, &v24, v2 + v12, v25, v15, v14, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 3)
    {
      a1[3] = &type metadata for AnyPresentationSizing;
      a1[4] = sub_24F45F0A8();
      v20 = swift_allocObject();
      *a1 = v20;
      v20[5] = &type metadata for FixedPresentationSizing;
      v20[6] = sub_24F199A18();
      v21 = swift_allocObject();
      v20[2] = v21;
      *(v21 + 16) = 0x4085000000000000;
      *(v21 + 24) = 0;
      v22 = 0x7FF0000000000000;
LABEL_13:
      *(v21 + 32) = v22;
      *(v21 + 40) = 0;
      return sub_24F461E40(v10, type metadata accessor for FlowAction.Destination);
    }

    if (EnumCaseMultiPayload != 6)
    {
LABEL_12:
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = sub_24F199A18();
      v21 = swift_allocObject();
      *a1 = v21;
      *(v21 + 16) = 0x4089A00000000000;
      *(v21 + 24) = 0;
      v22 = 0x4087C00000000000;
      goto LABEL_13;
    }

LABEL_9:
    sub_24F461E40(v10, type metadata accessor for FlowAction.Destination);
    a1[3] = &type metadata for FixedPresentationSizing;
    a1[4] = sub_24F199A18();
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0x4082C00000000000;
    *(result + 24) = 0;
    *(result + 32) = 0x4085400000000000;
    *(result + 40) = 0;
    return result;
  }

  if (EnumCaseMultiPayload == 13)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 27)
  {
    goto LABEL_12;
  }

  sub_24F461DD8(v10, v7, type metadata accessor for FlowAction.Destination);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    goto LABEL_12;
  }

  v17 = v25[0];
  v24 = v25[0];
  a1[3] = &type metadata for AnyPresentationSizing;
  a1[4] = sub_24F45F0A8();
  v18 = swift_allocObject();
  *a1 = v18;
  FlowDestination.presentationSizing.getter((v18 + 16));
  sub_24EAB9674(v17);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return sub_24F461E40(v10, type metadata accessor for FlowAction.Destination);
}

uint64_t FlowDestination.presentationSizing.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243DE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243DF0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243DF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243E00);
  MEMORY[0x28223BE20](v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v52 - v22;
  v24 = *v1;
  v25 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  if (v25 <= 7)
  {
    v54 = v7;
    if (v25 > 3)
    {
      if ((v25 - 4) >= 2)
      {
        goto LABEL_15;
      }

LABEL_14:
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = sub_24F199A18();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = 0x4089A00000000000;
      *(result + 24) = 0;
      v27 = 0x4087C00000000000;
      goto LABEL_16;
    }

    if ((v25 - 2) < 2 || !v25)
    {
      goto LABEL_14;
    }

    v28 = v20;
    v29 = v21;
    sub_24E60169C((v24 & 0xFFFFFFFFFFFFFFBLL) + 16, v56, &qword_27F215768);
    sub_24E615E00(v56, v55);
    v52[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243E08);
    v53 = v28;
    v30 = swift_dynamicCast();
    v31 = *(v29 + 56);
    v52[0] = v29 + 56;
    if (v30)
    {
      v32 = v53;
      v33 = v31;
      v31(v15, 0, 1, v53);
      sub_24E6009C8(v15, v23, &qword_27F243E00);
      v34 = &v23[*(v32 + 28)];
      if ((v34[25] & 1) == 0)
      {
        v43 = v34[24];
        v44 = *(v34 + 2);
        v45 = *(v34 + 2);
        v46 = *v34;
        v47 = sub_24F199A18();
        v48 = swift_allocObject();
        *(v48 + 16) = v46;
        *(v48 + 24) = v45 & 1;
        *(v48 + 32) = v44;
        *(v48 + 40) = v43 & 1;
        sub_24E601704(v23, &qword_27F243E00);
        goto LABEL_28;
      }

      v35 = &qword_27F243E00;
      v36 = v23;
    }

    else
    {
      v33 = v31;
      v31(v15, 1, 1, v53);
      v35 = &qword_27F243DF8;
      v36 = v15;
    }

    sub_24E601704(v36, v35);
    sub_24E615E00(v56, v55);
    v37 = swift_dynamicCast();
    v38 = v54;
    if ((v37 & 1) == 0)
    {
      sub_24E601704(v56, &qword_27F215768);
      (*(v38 + 56))(v5, 1, 1, v6);
      v41 = &qword_27F243DE8;
      v42 = v5;
      goto LABEL_26;
    }

    (*(v54 + 56))(v5, 0, 1, v6);
    (*(v38 + 32))(v9, v5, v6);
    sub_24F9294D8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v38 + 8))(v9, v6);
      sub_24E601704(v56, &qword_27F215768);
      v33(v12, 1, 1, v53);
      v41 = &qword_27F243DF8;
      v42 = v12;
      goto LABEL_26;
    }

    v39 = v53;
    v33(v12, 0, 1, v53);
    sub_24E6009C8(v12, v18, &qword_27F243E00);
    v40 = &v18[*(v39 + 28)];
    if (v40[25])
    {
      sub_24E601704(v18, &qword_27F243E00);
      (*(v38 + 8))(v9, v6);
      v41 = &qword_27F215768;
      v42 = v56;
LABEL_26:
      sub_24E601704(v42, v41);
      v47 = sub_24F199A18();
      result = swift_allocObject();
      *(result + 16) = 0x4089A00000000000;
      *(result + 24) = 0;
      *(result + 32) = 0x4087C00000000000;
      *(result + 40) = 0;
LABEL_29:
      *a1 = result;
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = v47;
      return result;
    }

    LODWORD(v53) = v40[24];
    v49 = *(v40 + 2);
    v50 = *(v40 + 2);
    v51 = *v40;
    v47 = sub_24F199A18();
    v48 = swift_allocObject();
    *(v48 + 16) = v51;
    *(v48 + 24) = v50 & 1;
    *(v48 + 32) = v49;
    *(v48 + 40) = v53 & 1;
    sub_24E601704(v18, &qword_27F243E00);
    (*(v38 + 8))(v9, v6);
LABEL_28:
    sub_24E601704(v56, &qword_27F215768);
    result = v48;
    goto LABEL_29;
  }

  if (v25 <= 12)
  {
    if ((v25 - 8) < 4)
    {
      a1[3] = &type metadata for FixedPresentationSizing;
      a1[4] = sub_24F199A18();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = 0x4080E00000000000;
      *(result + 24) = 0;
      v27 = 0x4088300000000000;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if ((v25 - 13) >= 3)
  {
LABEL_15:
    a1[3] = &type metadata for FixedPresentationSizing;
    a1[4] = sub_24F199A18();
    result = swift_allocObject();
    *a1 = result;
    *(result + 16) = 0x4082C00000000000;
    *(result + 24) = 0;
    v27 = 0x4085400000000000;
    goto LABEL_16;
  }

  a1[3] = &type metadata for FixedPresentationSizing;
  a1[4] = sub_24F199A18();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = 0x4083800000000000;
  *(result + 24) = 0;
  v27 = 0x4087500000000000;
LABEL_16:
  *(result + 32) = v27;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_24F457580()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244008);
  sub_24E602068(&qword_27F244010, &qword_27F244008);
  return sub_24F923C18();
}

uint64_t sub_24F457624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244018);
  MEMORY[0x28223BE20](v0);
  v2 = v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244020);
  v4 = sub_24E602068(&qword_27F244028, &qword_27F244020);
  MEMORY[0x25304C400](1, MEMORY[0x277D84F90], v3, v4);
  if (qword_27F211278 != -1)
  {
    swift_once();
  }

  v5 = qword_27F2431D0;
  KeyPath = swift_getKeyPath();
  v10[1] = v5;

  v7 = sub_24F9238D8();
  v8 = &v2[*(v0 + 36)];
  *v8 = KeyPath;
  v8[1] = v7;
  sub_24F460B4C();
  sub_24F925F48();
  return sub_24E601704(v2, &qword_27F244018);
}

char *sub_24F4577CC(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_24F4578E0(result, v5, 0);
  }

  return result;
}

uint64_t sub_24F457844@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F924438();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24F457898(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_24F4578E0(char *a1, int64_t a2, char a3)
{
  result = sub_24F45909C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457900(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F2231B0, &unk_24F96D8E8, &qword_27F251730);
  *v3 = result;
  return result;
}

void *sub_24F457940(void *a1, int64_t a2, char a3)
{
  result = sub_24F4591A8(a1, a2, a3, *v3, &qword_27F2440D8, &unk_24F9FA9D0, &qword_27F2440E0);
  *v3 = result;
  return result;
}

void *sub_24F457980(void *a1, int64_t a2, char a3)
{
  result = sub_24F4591A8(a1, a2, a3, *v3, &qword_27F2440C0, &unk_24F9FA9B8, &qword_27F2440C8);
  *v3 = result;
  return result;
}

char *sub_24F4579C0(char *a1, int64_t a2, char a3)
{
  result = sub_24F45C054(a1, a2, a3, *v3, &qword_27F2137E0);
  *v3 = result;
  return result;
}

size_t sub_24F4579F8(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F2139D0, &unk_24F9FAB80, &qword_27F2139D8);
  *v3 = result;
  return result;
}

size_t sub_24F457A38(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213DD0, &unk_24F9FAD40, type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
  *v3 = result;
  return result;
}

void *sub_24F457A7C(void *a1, int64_t a2, char a3)
{
  result = sub_24F4592F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457A9C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F213B00, &unk_24F93B6F0, &unk_27F23A6A0);
  *v3 = result;
  return result;
}

void *sub_24F457ADC(void *a1, int64_t a2, char a3)
{
  result = sub_24F459438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457AFC(void *a1, int64_t a2, char a3)
{
  result = sub_24F45AEC0(a1, a2, a3, *v3, &qword_27F221550, &unk_24F9668E0, &qword_27F244110);
  *v3 = result;
  return result;
}

char *sub_24F457B3C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45956C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F457B5C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45B950(a1, a2, a3, *v3, &qword_27F213AD8);
  *v3 = result;
  return result;
}

char *sub_24F457B94(char *a1, int64_t a2, char a3)
{
  result = sub_24F45968C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F457BB4(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F217C28, &unk_24F94C070, MEMORY[0x277D21C48]);
  *v3 = result;
  return result;
}

size_t sub_24F457BF8(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &unk_27F22E010, &unk_24F93B380, type metadata accessor for PlayerAvatar);
  *v3 = result;
  return result;
}

size_t sub_24F457C3C(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F217C10, &unk_24F947340, &qword_27F217C08);
  *v3 = result;
  return result;
}

size_t sub_24F457C7C(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213848, &unk_24F947350, type metadata accessor for PlayerAvatarView);
  *v3 = result;
  return result;
}

size_t sub_24F457CC0(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2442B0, &unk_24F9FAD58, type metadata accessor for ChallengeVisualOutcomeMetrics.Participant);
  *v3 = result;
  return result;
}

char *sub_24F457D04(char *a1, int64_t a2, char a3)
{
  result = sub_24F4597EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F457D24(char *a1, int64_t a2, char a3)
{
  result = sub_24F45BBD0(a1, a2, a3, *v3, &qword_27F22E020);
  *v3 = result;
  return result;
}

char *sub_24F457D54(char *a1, int64_t a2, char a3)
{
  result = sub_24F45CE20(a1, a2, a3, *v3, &qword_27F2139C8);
  *v3 = result;
  return result;
}

char *sub_24F457D8C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45990C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F457DAC(char *a1, int64_t a2, char a3)
{
  result = sub_24F459B68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F457DCC(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F244258, &unk_24F9FACC8, type metadata accessor for Achievement);
  *v3 = result;
  return result;
}

size_t sub_24F457E10(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213DF0, &unk_24F9FAD80, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
  *v3 = result;
  return result;
}

void *sub_24F457E54(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244158, &unk_24F9FAAA0, &qword_27F225208);
  *v3 = result;
  return result;
}

char *sub_24F457E94(char *a1, int64_t a2, char a3)
{
  result = sub_24F459C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F457EB4(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2138D0, &unk_24F93B460, type metadata accessor for LeaderboardEntry);
  *v3 = result;
  return result;
}

size_t sub_24F457EF8(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F2442B8, &unk_24F9FAD68, &qword_27F21D248);
  *v3 = result;
  return result;
}

char *sub_24F457F38(char *a1, int64_t a2, char a3)
{
  result = sub_24F459D94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F457F58(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F21E6E8, &unk_24F95CDC0, &qword_27F21BCB8);
  *v3 = result;
  return result;
}

size_t sub_24F457F98(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2440E8, &unk_24F9FA9E0, MEMORY[0x277D0D0D0]);
  *v3 = result;
  return result;
}

size_t sub_24F457FDC(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213870, &unk_24F93B3F0, type metadata accessor for Player);
  *v3 = result;
  return result;
}

size_t sub_24F458020(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F2442C8, &unk_24F9FADB8, &qword_27F21EFE0);
  *v3 = result;
  return result;
}

size_t sub_24F458060(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2441D0, &unk_24F9FAB70, type metadata accessor for PlayerProfileData);
  *v3 = result;
  return result;
}

size_t sub_24F4580A4(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2441C8, &unk_24F9FAB68, type metadata accessor for RecordingAssociation);
  *v3 = result;
  return result;
}

char *sub_24F4580E8(char *a1, int64_t a2, char a3)
{
  result = sub_24F459EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F458108(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2138D8, &unk_24F9C9260, MEMORY[0x277D21BD8]);
  *v3 = result;
  return result;
}

char *sub_24F45814C(char *a1, int64_t a2, char a3)
{
  result = sub_24F459FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45816C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &unk_27F255040, &unk_24F93B590, &unk_27F22C070);
  *v3 = result;
  return result;
}

void *sub_24F4581AC(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &unk_27F23C970, &unk_24F93B690, &unk_27F235730);
  *v3 = result;
  return result;
}

char *sub_24F4581EC(char *a1, int64_t a2, char a3)
{
  result = sub_24F45A0F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45820C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45A1EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45822C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45A2F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45824C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45A558(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45826C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &unk_27F228050, &unk_24F980F30, &qword_27F2441A0);
  *v3 = result;
  return result;
}

char *sub_24F4582AC(char *a1, int64_t a2, char a3)
{
  result = sub_24F45A65C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F4582CC(char *a1, int64_t a2, char a3)
{
  result = sub_24F45A9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F4582EC(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F22CB50, &unk_24F9FAAC0, &qword_27F244170);
  *v3 = result;
  return result;
}

void *sub_24F45832C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45AB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F45834C(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2139E8, &unk_24F93B5A0, type metadata accessor for Leaderboard);
  *v3 = result;
  return result;
}

void *sub_24F458390(void *a1, int64_t a2, char a3)
{
  result = sub_24F45AC4C(a1, a2, a3, *v3, &qword_27F2441B0, &unk_24F9FAB58, &qword_27F2441B8);
  *v3 = result;
  return result;
}

size_t sub_24F4583D0(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213820, &unk_24F93B3A0, type metadata accessor for ContactsListDataSource.Item);
  *v3 = result;
  return result;
}

size_t sub_24F458414(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F244058, &unk_24F9FA940, &unk_27F23E230);
  *v3 = result;
  return result;
}

size_t sub_24F458454(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213C48, &unk_24F93B870, type metadata accessor for StoreTab);
  *v3 = result;
  return result;
}

void *sub_24F458498(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F2218A0, &unk_24F9876F0, &qword_27F2440A0);
  *v3 = result;
  return result;
}

void *sub_24F4584D8(void *a1, int64_t a2, char a3)
{
  result = sub_24F45AC4C(a1, a2, a3, *v3, &qword_27F213C30, &unk_24F9FAB50, &qword_27F213C38);
  *v3 = result;
  return result;
}

size_t sub_24F458518(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213B48, &unk_24F9FAAD0, MEMORY[0x277CC8918]);
  *v3 = result;
  return result;
}

char *sub_24F45855C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45AD80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F45857C(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F217C20, &unk_24F947358, type metadata accessor for GameDetailsAnnotation);
  *v3 = result;
  return result;
}

size_t sub_24F4585C0(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F242AB0, &unk_24F9FADB0, &qword_27F2260C8);
  *v3 = result;
  return result;
}

void *sub_24F458600(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F234A70, &unk_24F9FA9F0, &qword_27F2325A0);
  *v3 = result;
  return result;
}

size_t sub_24F458640(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213B78, &unk_24F93B790, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_24F458684(char *a1, int64_t a2, char a3)
{
  result = sub_24F45CE20(a1, a2, a3, *v3, &unk_27F227F00);
  *v3 = result;
  return result;
}

void *sub_24F4586BC(void *a1, int64_t a2, char a3)
{
  result = sub_24F45AEC0(a1, a2, a3, *v3, &qword_27F213BD8, &unk_24F93B800, &qword_27F213BE0);
  *v3 = result;
  return result;
}

char *sub_24F4586FC(char *a1, int64_t a2, char a3)
{
  result = sub_24F45AFF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45871C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45B100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F45873C(char *a1, int64_t a2, char a3)
{
  result = sub_24F45B220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45875C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45B348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F45877C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244188, &unk_24F9FAB08, &qword_27F244190);
  *v3 = result;
  return result;
}

char *sub_24F4587BC(char *a1, int64_t a2, char a3)
{
  result = sub_24F45B498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F4587DC(char *a1, int64_t a2, char a3)
{
  result = sub_24F45B5C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F4587FC(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F244178, &unk_24F9FAAD8, &qword_27F22B868);
  *v3 = result;
  return result;
}

size_t sub_24F45883C(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F244038, &unk_24F9FA918, MEMORY[0x277CEC160]);
  *v3 = result;
  return result;
}

void *sub_24F458880(void *a1, int64_t a2, char a3)
{
  result = sub_24F45B6CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F4588A0(void *a1, int64_t a2, char a3)
{
  result = sub_24F45B81C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F4588C0(char *a1, int64_t a2, char a3)
{
  result = sub_24F45BBD0(a1, a2, a3, *v3, &qword_27F2440A8);
  *v3 = result;
  return result;
}

void *sub_24F4588F0(void *a1, int64_t a2, char a3)
{
  result = sub_24F45B950(a1, a2, a3, *v3, &qword_27F213B40);
  *v3 = result;
  return result;
}

void *sub_24F458928(void *a1, int64_t a2, char a3)
{
  result = sub_24F45BA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F458948(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213B20, &unk_24F9B7470, MEMORY[0x277CC9AF8]);
  *v3 = result;
  return result;
}

size_t sub_24F45898C(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &unk_27F235740, &unk_24F965BC0, MEMORY[0x277D22860]);
  *v3 = result;
  return result;
}

void *sub_24F4589D0(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244150, &unk_24F9FAA90, &qword_27F229AF0);
  *v3 = result;
  return result;
}

char *sub_24F458A10(char *a1, int64_t a2, char a3)
{
  result = sub_24F45BBD0(a1, a2, a3, *v3, &qword_27F213B60);
  *v3 = result;
  return result;
}

char *sub_24F458A40(char *a1, int64_t a2, char a3)
{
  result = sub_24F45BCCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458A60(char *a1, int64_t a2, char a3)
{
  result = sub_24F45BDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458A80(char *a1, int64_t a2, char a3)
{
  result = sub_24F45BF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458AA0(char *a1, int64_t a2, char a3)
{
  result = sub_24F45C054(a1, a2, a3, *v3, &qword_27F213878);
  *v3 = result;
  return result;
}

size_t sub_24F458AD8(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213868, &unk_24F9FA950, type metadata accessor for ChallengesPlayerInviteType);
  *v3 = result;
  return result;
}

void *sub_24F458B1C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F2442D0, &unk_24F9FADC8, &qword_27F2442D8);
  *v3 = result;
  return result;
}

void *sub_24F458B5C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244140, &unk_24F9FAA88, &qword_27F232570);
  *v3 = result;
  return result;
}

void *sub_24F458B9C(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244138, &unk_24F9FAA78, &qword_27F212F20);
  *v3 = result;
  return result;
}

size_t sub_24F458BDC(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F237770, &unk_24F9C0430, type metadata accessor for ItemLayoutContext);
  *v3 = result;
  return result;
}

void *sub_24F458C20(void *a1, int64_t a2, char a3)
{
  result = sub_24F45C19C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458C40(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F237768, &unk_24F9C0428, &qword_27F244120);
  *v3 = result;
  return result;
}

void *sub_24F458C80(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F237760, &unk_24F9C03D8, &qword_27F244118);
  *v3 = result;
  return result;
}

size_t sub_24F458CC0(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213AE8, &unk_24F93B6D0, MEMORY[0x277D0C7C0]);
  *v3 = result;
  return result;
}

void *sub_24F458D04(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F213BB0, &unk_24F93B7D0, &qword_27F227A20);
  *v3 = result;
  return result;
}

void *sub_24F458D44(void *a1, int64_t a2, char a3)
{
  result = sub_24F45C2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F458D64(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2137C8, &unk_24F967940, MEMORY[0x277D21BB8]);
  *v3 = result;
  return result;
}

char *sub_24F458DA8(char *a1, int64_t a2, char a3)
{
  result = sub_24F45C42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24F458DC8(char *a1, int64_t a2, char a3)
{
  result = sub_24F45C554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458DE8(void *a1, int64_t a2, char a3)
{
  result = sub_24F45C66C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458E08(void *a1, int64_t a2, char a3)
{
  result = sub_24F45C7B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458E28(void *a1, int64_t a2, char a3)
{
  result = sub_24F45C8FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F458E48(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F244280, &unk_24F9FACF0, type metadata accessor for ActiveCall);
  *v3 = result;
  return result;
}

size_t sub_24F458E8C(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213D60, &unk_24F9472F0, type metadata accessor for FriendSuggestion);
  *v3 = result;
  return result;
}

void *sub_24F458ED0(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CA40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24F458EF0(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CB88(a1, a2, a3, *v3, &qword_27F213DF8, &unk_24F93BA40, &qword_27F213E00);
  *v3 = result;
  return result;
}

size_t sub_24F458F30(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F2137E8, &unk_24F9FA910, type metadata accessor for GSKDebugMetricsEvent);
  *v3 = result;
  return result;
}

void *sub_24F458F74(void *a1, int64_t a2, char a3)
{
  result = sub_24F45CCD0(a1, a2, a3, *v3, &qword_27F244070, &unk_24F9FA960, &qword_27F244078);
  *v3 = result;
  return result;
}

size_t sub_24F458FB4(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213890, &unk_24F980DA0, MEMORY[0x277D224C0]);
  *v3 = result;
  return result;
}

size_t sub_24F458FF8(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45CF6C(a1, a2, a3, *v3, &qword_27F244290, &unk_24F9FAD08, &qword_27F241A70);
  *v3 = result;
  return result;
}

char *sub_24F459038(char *a1, int64_t a2, char a3)
{
  result = sub_24F45D154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24F459058(size_t a1, int64_t a2, char a3)
{
  result = sub_24F45D27C(a1, a2, a3, *v3, &qword_27F213808, &unk_24F93B378, type metadata accessor for ModernAppStateMachine.ObserverData);
  *v3 = result;
  return result;
}

char *sub_24F45909C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F4591A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_24F4592F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F459438(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45956C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45968C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F4597EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45990C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F459A18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227EE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459B68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459D94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F459FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BE10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45A0F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B258);
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

char *sub_24F45A1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_24F45A2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45A410(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217BF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45A558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_24F45A65C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244198);
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

void *sub_24F45A750(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242A80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 192);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[24 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 192 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DA08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45A894(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CB40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45A9E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45AB04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2294B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221090);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45AC4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_24F45AD80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 160 * v8);
  }

  return v10;
}

void *sub_24F45AEC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_24F45AFF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244080);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45B100(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45B220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45B348(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213378);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45B498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45B5C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24F45B6CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45B81C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2210A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45B950(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v6)
  {
    if (v11 < a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_24F45BA88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45BBD0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_24F45BCCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45BDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45BF34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2440D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45C054(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_24F45C19C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2442A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221098);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45C2F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244128);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244130);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45C42C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24F45C554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244108);
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

void *sub_24F45C66C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45C7B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2440F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221078);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45C8FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45CA40(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24F45CB88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_24F45CCD0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_24F45CE20(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 72);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[72 * v9])
    {
      memmove(v13, v14, 72 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

size_t sub_24F45CF6C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24F45D154(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24F45D27C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24F45D458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_24F45D55C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25304A100]();
  *a1 = result;
  return result;
}

uint64_t sub_24F45D588@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x25304A100]();
  *a1 = result;
  return result;
}

uint64_t sub_24F45D6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_24F461B48();
  result = MEMORY[0x253051460](v1, &type metadata for SupplementaryAppPlatform, v2);
  v4 = result;
  if (v1)
  {
    do
    {
      sub_24ED7CBB0();
      --v1;
    }

    while (v1);
    return v4;
  }

  return result;
}

uint64_t sub_24F45D748(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24F461AA0();
  result = MEMORY[0x253051460](v2, &type metadata for PageFacets.Facet.Option, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v11[0] = *v5;
      v11[1] = v6;
      v7 = v5[3];
      v11[2] = v5[2];
      v11[3] = v7;
      sub_24E8056D8(v11, v9);
      sub_24ED7C740(v8, v11);
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      sub_24E805734(v9);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_24F45D828(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253051460](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24ED7C5F0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24F45D8C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24F461950();
  result = MEMORY[0x253051460](v2, &type metadata for GameActivityDraftPlayerInfo, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 48);
      v13[2] = *(v5 + 32);
      v13[3] = v6;
      v14 = *(v5 + 64);
      v7 = *(v5 + 16);
      v13[0] = *v5;
      v13[1] = v7;
      sub_24E627A14(v13, v10);
      sub_24ED7D19C(v8, v13);
      v10[2] = v8[2];
      v10[3] = v8[3];
      v11 = v9;
      v10[0] = v8[0];
      v10[1] = v8[1];
      sub_24E627A70(v10);
      v5 += 72;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_24F45D9F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24E69103C();
  result = MEMORY[0x253051460](v2, &type metadata for AdamId, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_24ED7E42C(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_24F45DA90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253051460](v2, MEMORY[0x277D84030], MEMORY[0x277D84038]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_24E65864C(v4, v5);
      sub_24ED7D5A0(v6, v5);
      sub_24E6585F8(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_24F45DB1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253051460](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_24ED7EC9C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_24F45DBC4(uint64_t a1)
{
  v2 = sub_24F927D58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24F457898(&qword_27F21E530, MEMORY[0x277CEC160]);
  result = MEMORY[0x253051460](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_24ED7EF08(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24F45DD94(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x253051460](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_24F45DE64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = MEMORY[0x253051460](v6);
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_24F45DED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24E602068(&qword_27F22F0A8, &qword_27F213980);
  result = MEMORY[0x253051460](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v5, v15, v2);
      sub_24ED7F67C(v8, v5);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24F45E0A4(uint64_t a1)
{
  v2 = sub_24F92AA48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24F457898(&qword_27F21BCA0, MEMORY[0x277D224C0]);
  result = MEMORY[0x253051460](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_24ED801C4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24F45E270(unint64_t a1, unint64_t *j, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v11 = sub_24E69A5C4(0, j);
    v12 = sub_24EFDD1F0(a4, j);
    result = MEMORY[0x253051460](i, v11, v12);
    v17 = result;
    if (v9)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; j = (j + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x253052270](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(a1 + 8 * j + 32);
      }

      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a4 = &v17;
      a5(&v16, v15);

      if (v9 == v14)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v14 = sub_24F92C738();
  result = a4;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_24F45E3FC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x253051460](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_24F45E668()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24F45E6A0()
{
  result = qword_27F243CB0;
  if (!qword_27F243CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CB0);
  }

  return result;
}

unint64_t sub_24F45E6F4()
{
  result = qword_27F243CB8;
  if (!qword_27F243CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CB8);
  }

  return result;
}

unint64_t sub_24F45E748()
{
  result = qword_27F243CC8;
  if (!qword_27F243CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CC8);
  }

  return result;
}

unint64_t sub_24F45E79C()
{
  result = qword_27F243CD0;
  if (!qword_27F243CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CD0);
  }

  return result;
}

unint64_t sub_24F45E7F0()
{
  result = qword_27F243CE0;
  if (!qword_27F243CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CE0);
  }

  return result;
}

unint64_t sub_24F45E844()
{
  result = qword_27F243CF0;
  if (!qword_27F243CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CF0);
  }

  return result;
}

unint64_t sub_24F45E898()
{
  result = qword_27F243CF8;
  if (!qword_27F243CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243CF8);
  }

  return result;
}

unint64_t sub_24F45E8EC()
{
  result = qword_27F243D00;
  if (!qword_27F243D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D00);
  }

  return result;
}

unint64_t sub_24F45E940()
{
  result = qword_27F243D10;
  if (!qword_27F243D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D10);
  }

  return result;
}

unint64_t sub_24F45E994()
{
  result = qword_27F243D18;
  if (!qword_27F243D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D18);
  }

  return result;
}

unint64_t sub_24F45E9E8()
{
  result = qword_27F243D28;
  if (!qword_27F243D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D28);
  }

  return result;
}

unint64_t sub_24F45EA3C()
{
  result = qword_27F243D30;
  if (!qword_27F243D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D30);
  }

  return result;
}

unint64_t sub_24F45EA90()
{
  result = qword_27F243D48;
  if (!qword_27F243D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D48);
  }

  return result;
}

unint64_t sub_24F45EAE4()
{
  result = qword_27F243D58;
  if (!qword_27F243D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D58);
  }

  return result;
}

unint64_t sub_24F45EB38()
{
  result = qword_27F243D68;
  if (!qword_27F243D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D68);
  }

  return result;
}

uint64_t sub_24F45EB8C()
{

  return swift_deallocObject();
}

unint64_t sub_24F45EBC4()
{
  result = qword_27F243D70;
  if (!qword_27F243D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D70);
  }

  return result;
}

uint64_t sub_24F45EC18()
{

  return swift_deallocObject();
}

unint64_t sub_24F45EC50()
{
  result = qword_27F243D78;
  if (!qword_27F243D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D78);
  }

  return result;
}

unint64_t sub_24F45ECA4()
{
  result = qword_27F243D80;
  if (!qword_27F243D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D80);
  }

  return result;
}

uint64_t sub_24F45ECF8()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  }

  return swift_deallocObject();
}

unint64_t sub_24F45ED50()
{
  result = qword_27F243D88;
  if (!qword_27F243D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D88);
  }

  return result;
}

unint64_t sub_24F45EDA4()
{
  result = qword_27F243D98;
  if (!qword_27F243D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243D98);
  }

  return result;
}

unint64_t sub_24F45EDF8()
{
  result = qword_27F243DA8;
  if (!qword_27F243DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DA8);
  }

  return result;
}

unint64_t sub_24F45EE4C()
{
  result = qword_27F243DB8;
  if (!qword_27F243DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DB8);
  }

  return result;
}

uint64_t sub_24F45EEA0()
{

  return swift_deallocObject();
}

unint64_t sub_24F45EEE0()
{
  result = qword_27F243DC0;
  if (!qword_27F243DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227168);
    sub_24F45EF9C();
    sub_24F457898(&qword_27F2145E0, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DC0);
  }

  return result;
}

unint64_t sub_24F45EF9C()
{
  result = qword_27F243DC8;
  if (!qword_27F243DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DC8);
  }

  return result;
}

unint64_t sub_24F45EFF0()
{
  result = qword_27F243DD0;
  if (!qword_27F243DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DD0);
  }

  return result;
}

unint64_t sub_24F45F044()
{
  result = qword_27F243DD8;
  if (!qword_27F243DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DD8);
  }

  return result;
}

unint64_t sub_24F45F0A8()
{
  result = qword_27F243DE0;
  if (!qword_27F243DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243DE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit15FlowDestinationO(void *a1)
{
  if (*a1 >> 60 <= 8uLL)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 18;
  }
}

uint64_t sub_24F45F124(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6E && *(a1 + 8))
  {
    return (*a1 + 110);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F45F180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6D)
  {
    *result = a2 - 110;
    if (a3 >= 0x6E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_24F45F1E4(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x12)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 18)) | 0x9000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlowDestination.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowDestination.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24F45F4F8()
{
  result = qword_27F243E10;
  if (!qword_27F243E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E10);
  }

  return result;
}

unint64_t sub_24F45F550()
{
  result = qword_27F243E18;
  if (!qword_27F243E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E18);
  }

  return result;
}

unint64_t sub_24F45F5A8()
{
  result = qword_27F243E20;
  if (!qword_27F243E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E20);
  }

  return result;
}

unint64_t sub_24F45F600()
{
  result = qword_27F243E28;
  if (!qword_27F243E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E28);
  }

  return result;
}

unint64_t sub_24F45F658()
{
  result = qword_27F243E30;
  if (!qword_27F243E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E30);
  }

  return result;
}

unint64_t sub_24F45F6B0()
{
  result = qword_27F243E38;
  if (!qword_27F243E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E38);
  }

  return result;
}

unint64_t sub_24F45F708()
{
  result = qword_27F243E40;
  if (!qword_27F243E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E40);
  }

  return result;
}

unint64_t sub_24F45F760()
{
  result = qword_27F243E48;
  if (!qword_27F243E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E48);
  }

  return result;
}

unint64_t sub_24F45F7B8()
{
  result = qword_27F243E50;
  if (!qword_27F243E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E50);
  }

  return result;
}

unint64_t sub_24F45F810()
{
  result = qword_27F243E58;
  if (!qword_27F243E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E58);
  }

  return result;
}

unint64_t sub_24F45F868()
{
  result = qword_27F243E60;
  if (!qword_27F243E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E60);
  }

  return result;
}

unint64_t sub_24F45F8C0()
{
  result = qword_27F243E68;
  if (!qword_27F243E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E68);
  }

  return result;
}

unint64_t sub_24F45F918()
{
  result = qword_27F243E70;
  if (!qword_27F243E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E70);
  }

  return result;
}

unint64_t sub_24F45F970()
{
  result = qword_27F243E78;
  if (!qword_27F243E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E78);
  }

  return result;
}

unint64_t sub_24F45F9C8()
{
  result = qword_27F243E80;
  if (!qword_27F243E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E80);
  }

  return result;
}

unint64_t sub_24F45FA20()
{
  result = qword_27F243E88;
  if (!qword_27F243E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E88);
  }

  return result;
}

unint64_t sub_24F45FA78()
{
  result = qword_27F243E90;
  if (!qword_27F243E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E90);
  }

  return result;
}

unint64_t sub_24F45FAD0()
{
  result = qword_27F243E98;
  if (!qword_27F243E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243E98);
  }

  return result;
}

unint64_t sub_24F45FB28()
{
  result = qword_27F243EA0;
  if (!qword_27F243EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EA0);
  }

  return result;
}

unint64_t sub_24F45FB80()
{
  result = qword_27F243EA8;
  if (!qword_27F243EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EA8);
  }

  return result;
}

unint64_t sub_24F45FBD8()
{
  result = qword_27F243EB0;
  if (!qword_27F243EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EB0);
  }

  return result;
}

unint64_t sub_24F45FC30()
{
  result = qword_27F243EB8;
  if (!qword_27F243EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EB8);
  }

  return result;
}

unint64_t sub_24F45FC88()
{
  result = qword_27F243EC0;
  if (!qword_27F243EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EC0);
  }

  return result;
}

unint64_t sub_24F45FCE0()
{
  result = qword_27F243EC8;
  if (!qword_27F243EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EC8);
  }

  return result;
}

unint64_t sub_24F45FD38()
{
  result = qword_27F243ED0;
  if (!qword_27F243ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243ED0);
  }

  return result;
}

unint64_t sub_24F45FD90()
{
  result = qword_27F243ED8;
  if (!qword_27F243ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243ED8);
  }

  return result;
}

unint64_t sub_24F45FDE8()
{
  result = qword_27F243EE0;
  if (!qword_27F243EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EE0);
  }

  return result;
}

unint64_t sub_24F45FE40()
{
  result = qword_27F243EE8;
  if (!qword_27F243EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EE8);
  }

  return result;
}

unint64_t sub_24F45FE98()
{
  result = qword_27F243EF0;
  if (!qword_27F243EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EF0);
  }

  return result;
}

unint64_t sub_24F45FEF0()
{
  result = qword_27F243EF8;
  if (!qword_27F243EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243EF8);
  }

  return result;
}

unint64_t sub_24F45FF48()
{
  result = qword_27F243F00;
  if (!qword_27F243F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F00);
  }

  return result;
}

unint64_t sub_24F45FFA0()
{
  result = qword_27F243F08;
  if (!qword_27F243F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F08);
  }

  return result;
}

unint64_t sub_24F45FFF8()
{
  result = qword_27F243F10;
  if (!qword_27F243F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F10);
  }

  return result;
}

unint64_t sub_24F460050()
{
  result = qword_27F243F18;
  if (!qword_27F243F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F18);
  }

  return result;
}

unint64_t sub_24F4600A8()
{
  result = qword_27F243F20;
  if (!qword_27F243F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F20);
  }

  return result;
}

unint64_t sub_24F460100()
{
  result = qword_27F243F28;
  if (!qword_27F243F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F28);
  }

  return result;
}

unint64_t sub_24F460158()
{
  result = qword_27F243F30;
  if (!qword_27F243F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F30);
  }

  return result;
}

unint64_t sub_24F4601B0()
{
  result = qword_27F243F38;
  if (!qword_27F243F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F38);
  }

  return result;
}

unint64_t sub_24F460208()
{
  result = qword_27F243F40;
  if (!qword_27F243F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F40);
  }

  return result;
}

unint64_t sub_24F460260()
{
  result = qword_27F243F48;
  if (!qword_27F243F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F48);
  }

  return result;
}

unint64_t sub_24F4602B8()
{
  result = qword_27F243F50;
  if (!qword_27F243F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F50);
  }

  return result;
}

unint64_t sub_24F460310()
{
  result = qword_27F243F58;
  if (!qword_27F243F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F58);
  }

  return result;
}

unint64_t sub_24F460368()
{
  result = qword_27F243F60;
  if (!qword_27F243F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F60);
  }

  return result;
}

unint64_t sub_24F4603C0()
{
  result = qword_27F243F68;
  if (!qword_27F243F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F68);
  }

  return result;
}

unint64_t sub_24F460418()
{
  result = qword_27F243F70;
  if (!qword_27F243F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243F70);
  }

  return result;
}