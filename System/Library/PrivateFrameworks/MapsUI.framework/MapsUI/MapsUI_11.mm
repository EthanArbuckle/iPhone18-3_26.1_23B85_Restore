void sub_1C5738E7C(uint64_t a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v29 - v19;
  if (*(*a1 + 16))
  {
    sub_1C5743990(*a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v11, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    _Block_copy(a3);
    _Block_copy(a3);
    sub_1C5691B90(v17);
    sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v17, v20, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
    v21 = sub_1C5696784();
    v22 = 0.0;
    v23.n128_u64[0] = 0;
    if (v21)
    {
      v23.n128_f64[0] = sub_1C569676C();
    }

    v24 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *a2) + 0x180))(v23);
    if (sub_1C56967CC())
    {
      v22 = sub_1C56967B4();
    }

    v25 = (*((*v24 & *a2) + 0x198))(v22);
    v26 = (*((*v24 & *a2) + 0xB0))(v25);
    if (v26)
    {
      v27 = v26;
      v28 = sub_1C569676C();
      [v27 sectionController:a2 updateInsetsForHeaderWithTopInset:v28 bottom:sub_1C56967B4()];
      swift_unknownObjectRelease();
    }

    v29 = 0u;
    v30 = 0u;
    _Block_copy(a3);
    sub_1C5734C0C(&v29, 6u, a3);
    _Block_release(a3);
    sub_1C5625230(&v29, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
  }

  else
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v29 = 0u;
    v30 = 0u;
    _Block_copy(a3);
    sub_1C5734C0C(&v29, 1u, a3);
    _Block_release(a3);
    sub_1C5625230(&v29, &qword_1EC16E790, &unk_1C586A110);
  }

  _Block_release(a3);
  _Block_release(a3);
}

void sub_1C5739208(uint64_t a1, uint64_t a2, char *a3, const void *a4)
{
  v399 = a3;
  v411 = a2;
  v6 = type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v409 = v371 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v407 = v371 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v382 = v371 - v16;
  v17 = type metadata accessor for WebPlacecardBridge.MUPageResizedArgument(0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v389 = v371 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v393 = v371 - v23;
  v24 = type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument(0);
  v25 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v388 = v371 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v392 = v371 - v30;
  v31 = type metadata accessor for WebPlacecardBridge.MUWebMenuButton(0);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v387 = v371 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v391 = v371 - v37;
  v38 = type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument(0);
  v39 = *(*(v38 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v385 = v371 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v43);
  v396 = v371 - v44;
  v45 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v408 = *(v45 - 8);
  v46 = *(v408 + 64);
  v48 = MEMORY[0x1EEE9AC00](v45 - 8, v47);
  v401 = v371 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v400 = v371 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v406 = v371 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54, v56);
  v405 = v371 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v404 = v371 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60, v62);
  v403 = v371 - v64;
  MEMORY[0x1EEE9AC00](v63, v65);
  v402 = v371 - v66;
  v67 = type metadata accessor for WebPlacecardBridge.MUIconArgument(0);
  v68 = *(*(v67 - 8) + 64);
  v70 = MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v380 = v371 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70, v72);
  v390 = v371 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v75 = *(*(v74 - 8) + 64);
  v77 = MEMORY[0x1EEE9AC00](v74 - 8, v76);
  v386 = v371 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x1EEE9AC00](v77, v79);
  v384 = v371 - v81;
  v83 = MEMORY[0x1EEE9AC00](v80, v82);
  v381 = v371 - v84;
  v86 = MEMORY[0x1EEE9AC00](v83, v85);
  v383 = v371 - v87;
  v89 = MEMORY[0x1EEE9AC00](v86, v88);
  v378 = v371 - v90;
  MEMORY[0x1EEE9AC00](v89, v91);
  v395 = v371 - v92;
  v398 = type metadata accessor for WebPlacecardBridgeReply(0);
  v397 = *(v398 - 8);
  v93 = *(v397 + 64);
  v95 = MEMORY[0x1EEE9AC00](v398, v94);
  v376 = v371 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = MEMORY[0x1EEE9AC00](v95, v97);
  v374 = v371 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98, v100);
  v375 = v371 - v102;
  v104 = MEMORY[0x1EEE9AC00](v101, v103);
  v373 = v371 - v105;
  v107 = MEMORY[0x1EEE9AC00](v104, v106);
  v372 = v371 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107, v109);
  v379 = v371 - v111;
  MEMORY[0x1EEE9AC00](v110, v112);
  v377 = v371 - v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170930, &qword_1C58695F0);
  v115 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114 - 8, v116);
  v394 = v371 - v117;
  v118 = sub_1C584F010();
  v119 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118 - 8, v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170938, &unk_1C5878158);
  v122 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121 - 8, v123);
  v125 = v371 - v124;
  v126 = type metadata accessor for WebPlacecardBridge(0);
  v127 = *(v126 - 8);
  v128 = *(v127 + 64);
  v130 = MEMORY[0x1EEE9AC00](v126, v129);
  MEMORY[0x1EEE9AC00](v130, v131);
  v410 = (v371 - v132);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  v133 = swift_allocObject();
  *(v133 + 16) = a4;
  v134 = v411;
  v415 = a1;
  v416 = v411;
  v420 = 0;
  v418 = 0u;
  v419 = 0u;
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  v412 = a4;
  _Block_copy(a4);
  sub_1C566DCD4(a1, v134);
  sub_1C584F000();
  sub_1C5742CB4(&qword_1EC16D460, type metadata accessor for WebPlacecardBridge);
  sub_1C584F150();
  v371[0] = v371 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v400;
  v136 = v401;
  v411 = 0;
  v137 = v407;
  v138 = v409;
  (*(v127 + 56))(v125, 0, 1, v126);
  v139 = v410;
  sub_1C5743928(v125, v410, type metadata accessor for WebPlacecardBridge);
  v140 = swift_allocObject();
  *(v140 + 16) = sub_1C566EA18;
  *(v140 + 24) = v133;
  swift_retain_n();
  v141 = sub_1C568FE50();
  v371[1] = v133;
  v142 = v412;
  switch(v141)
  {
    case 1:
      _Block_copy(v412);

      sub_1C57359D8(v139, v399, v142);
      goto LABEL_51;
    case 2:
      v175 = *v139;
      if (!*(*v139 + 16))
      {
        goto LABEL_46;
      }

      v176 = v405;
      sub_1C5743990(v175 + ((*(v408 + 80) + 32) & ~*(v408 + 80)), v405, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v177 = v387;
      sub_1C5690CC0(v387);
      sub_1C57439F8(v176, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v178 = v391;
      sub_1C5743928(v177, v391, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);
      v179 = *&v399[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController];
      v180 = *&v399[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
      v181 = [v399 mapItem];
      sub_1C57191B4(v178, v180, v181);

      v418 = 0u;
      v419 = 0u;
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      if (v417)
      {
        v182 = v383;
        v183 = v398;
        v184 = swift_dynamicCast();
        v185 = v397;
        (*(v397 + 56))(v182, v184 ^ 1u, 1, v183);
        if ((*(v185 + 48))(v182, 1, v183) != 1)
        {
          v186 = v373;
          sub_1C5743928(v182, v373, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v187 = v411;
          v188 = sub_1C584F140();
          if (v187)
          {

            sub_1C57439F8(v186, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v323 = v188;
            v324 = v189;
            v325 = sub_1C584EAD0();
            v327 = v326;
            sub_1C566DD84(v323, v324);
            v417 = MEMORY[0x1E69E6158];
            v415 = v325;
            v416 = v327;
            sub_1C56466CC(&v415, &v413, &qword_1EC16E790, &unk_1C586A110);
            v328 = v414;
            if (v414)
            {
              v329 = __swift_project_boxed_opaque_existential_1(&v413, v414);
              v330 = *(v328 - 8);
              v331 = *(v330 + 64);
              MEMORY[0x1EEE9AC00](v329, v329);
              v333 = v371 - ((v332 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v330 + 16))(v333);
              v334 = sub_1C584FDB0();
              (*(v330 + 8))(v333, v328);
              __swift_destroy_boxed_opaque_existential_1(&v413);
            }

            else
            {
              v334 = 0;
            }

            (*(v142 + 2))(v142, v334, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v186, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_78;
        }
      }

      else
      {
        sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
        v182 = v383;
        (*(v397 + 56))(v383, 1, 1, v398);
      }

      sub_1C5625230(v182, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      v271 = v417;
      if (v417)
      {
        v272 = __swift_project_boxed_opaque_existential_1(&v415, v417);
        v273 = *(v271 - 8);
        v274 = *(v273 + 64);
        MEMORY[0x1EEE9AC00](v272, v272);
        v276 = v371 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v273 + 16))(v276);
        v277 = sub_1C584FDB0();
        (*(v273 + 8))(v276, v271);
        __swift_destroy_boxed_opaque_existential_1(&v415);
      }

      else
      {
        v277 = 0;
      }

      (*(v142 + 2))(v142, v277, 0);
      swift_unknownObjectRelease();
LABEL_78:
      sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v178, type metadata accessor for WebPlacecardBridge.MUWebMenuButton);

      goto LABEL_79;
    case 3:
      v199 = *v139;
      if (!*(*v139 + 16))
      {
        goto LABEL_46;
      }

      v200 = v402;
      sub_1C5743990(v199 + ((*(v408 + 80) + 32) & ~*(v408 + 80)), v402, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v201 = v380;
      sub_1C56905F4(v380);
      sub_1C57439F8(v200, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v202 = v390;
      sub_1C5743928(v201, v390, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      v203 = *(**sub_1C5764F70() + 88);

      v204 = v203(v202);
      v206 = v205;

      if (!v206)
      {
        v418 = 0u;
        v419 = 0u;
        _Block_copy(v142);
        sub_1C5734C0C(&v418, 2u, v142);
        _Block_release(v142);
        sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v202, type metadata accessor for WebPlacecardBridge.MUIconArgument);

        goto LABEL_83;
      }

      v207 = v379;
      sub_1C569CA9C(v379);
      sub_1C5696FD8(v204, v206);
      v208 = v398;
      *(&v419 + 1) = v398;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v418);
      sub_1C5743990(v207, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      if (v417)
      {
        v210 = v378;
        v211 = swift_dynamicCast();
        v212 = v397;
        (*(v397 + 56))(v210, v211 ^ 1u, 1, v208);
        if ((*(v212 + 48))(v210, 1, v208) != 1)
        {
          v213 = v372;
          sub_1C5743928(v210, v372, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v214 = v411;
          v215 = sub_1C584F140();
          if (v214)
          {

            sub_1C57439F8(v213, type metadata accessor for WebPlacecardBridgeReply);
            v139 = v410;
          }

          else
          {
            v359 = v215;
            v360 = v216;
            v361 = sub_1C584EAD0();
            v363 = v362;
            sub_1C566DD84(v359, v360);
            v417 = MEMORY[0x1E69E6158];
            v415 = v361;
            v416 = v363;
            sub_1C56466CC(&v415, &v413, &qword_1EC16E790, &unk_1C586A110);
            v364 = v414;
            if (v414)
            {
              v365 = __swift_project_boxed_opaque_existential_1(&v413, v414);
              v366 = *(v364 - 8);
              v367 = *(v366 + 64);
              MEMORY[0x1EEE9AC00](v365, v365);
              v369 = v371 - ((v368 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v366 + 16))(v369);
              v370 = sub_1C584FDB0();
              (*(v366 + 8))(v369, v364);
              v207 = v379;
              __swift_destroy_boxed_opaque_existential_1(&v413);
            }

            else
            {
              v370 = 0;
            }

            v139 = v410;
            (*(v142 + 2))(v142, v370, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v213, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_99;
        }
      }

      else
      {
        sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
        v210 = v378;
        (*(v397 + 56))(v378, 1, 1, v208);
      }

      sub_1C5625230(v210, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      v292 = v417;
      if (v417)
      {
        v293 = __swift_project_boxed_opaque_existential_1(&v415, v417);
        v294 = *(v292 - 8);
        v295 = *(v294 + 64);
        MEMORY[0x1EEE9AC00](v293, v293);
        v297 = v371 - ((v296 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v294 + 16))(v297);
        v298 = sub_1C584FDB0();
        (*(v294 + 8))(v297, v292);
        v207 = v379;
        __swift_destroy_boxed_opaque_existential_1(&v415);
      }

      else
      {
        v298 = 0;
      }

      v139 = v410;
      (*(v142 + 2))(v142, v298, 0);
      swift_unknownObjectRelease();
LABEL_99:
      sub_1C57439F8(v207, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C57439F8(v202, type metadata accessor for WebPlacecardBridge.MUIconArgument);
      sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);

      goto LABEL_88;
    case 4:
      if (!*(*v139 + 16))
      {
        goto LABEL_46;
      }

      v166 = v138;
      v167 = v403;
      sub_1C5743990(*v139 + ((*(v408 + 80) + 32) & ~*(v408 + 80)), v403, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v168 = v139;
      sub_1C5690970(v138);
      sub_1C57439F8(v167, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v169 = sub_1C5695BB4();
      v171 = v170;
      sub_1C57439F8(v166, type metadata accessor for WebPlacecardBridge.MUAmpArtworkArgument);
      v172 = *sub_1C5764F70();
      v173 = swift_allocObject();
      *(v173 + 16) = sub_1C5743EE0;
      *(v173 + 24) = v140;
      v174 = *(*v172 + 104);

      v174(v169, v171, sub_1C5743F20, v173);

      v139 = v168;

      goto LABEL_88;
    case 5:
      _Block_copy(v412);

      sub_1C5735318(v139, v399, v142);
      goto LABEL_51;
    case 6:
      if (!*(*v139 + 16))
      {
        goto LABEL_46;
      }

      sub_1C5743990(*v139 + ((*(v408 + 80) + 32) & ~*(v408 + 80)), v135, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v217 = v389;
      sub_1C5690E98(v389);
      sub_1C57439F8(v135, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v218 = v393;
      sub_1C5743928(v217, v393, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);
      v219 = *&v399[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController];
      v220 = sub_1C5695DC8();
      MUWebBasedPlacecardViewController.defaultHeight.setter(COERCE__INT64(v220), 0);
      v418 = 0u;
      v419 = 0u;
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      if (v417)
      {
        v221 = v384;
        v222 = v398;
        v223 = swift_dynamicCast();
        v224 = v397;
        (*(v397 + 56))(v221, v223 ^ 1u, 1, v222);
        if ((*(v224 + 48))(v221, 1, v222) != 1)
        {
          v225 = v374;
          sub_1C5743928(v221, v374, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v226 = v411;
          v227 = sub_1C584F140();
          if (v226)
          {

            sub_1C57439F8(v225, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v335 = v227;
            v336 = v228;
            v337 = sub_1C584EAD0();
            v339 = v338;
            sub_1C566DD84(v335, v336);
            v417 = MEMORY[0x1E69E6158];
            v415 = v337;
            v416 = v339;
            sub_1C56466CC(&v415, &v413, &qword_1EC16E790, &unk_1C586A110);
            v340 = v414;
            if (v414)
            {
              v341 = __swift_project_boxed_opaque_existential_1(&v413, v414);
              v342 = *(v340 - 8);
              v343 = *(v342 + 64);
              MEMORY[0x1EEE9AC00](v341, v341);
              v345 = v371 - ((v344 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v342 + 16))(v345);
              v346 = sub_1C584FDB0();
              (*(v342 + 8))(v345, v340);
              __swift_destroy_boxed_opaque_existential_1(&v413);
            }

            else
            {
              v346 = 0;
            }

            (*(v142 + 2))(v142, v346, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v225, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_82;
        }
      }

      else
      {
        sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
        v221 = v384;
        (*(v397 + 56))(v384, 1, 1, v398);
      }

      sub_1C5625230(v221, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      v278 = v417;
      if (v417)
      {
        v279 = __swift_project_boxed_opaque_existential_1(&v415, v417);
        v280 = *(v278 - 8);
        v281 = *(v280 + 64);
        MEMORY[0x1EEE9AC00](v279, v279);
        v283 = v371 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v280 + 16))(v283);
        v284 = sub_1C584FDB0();
        (*(v280 + 8))(v283, v278);
        __swift_destroy_boxed_opaque_existential_1(&v415);
      }

      else
      {
        v284 = 0;
      }

      (*(v142 + 2))(v142, v284, 0);
      swift_unknownObjectRelease();
LABEL_82:
      sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v218, type metadata accessor for WebPlacecardBridge.MUPageResizedArgument);

LABEL_83:

      v139 = v410;
      goto LABEL_89;
    case 7:
      _Block_copy(v412);

      sub_1C5736B28(v139, v399, v142);
      goto LABEL_51;
    case 8:
      _Block_copy(v412);

      sub_1C57378E8(v139, v142);
      goto LABEL_51;
    case 9:
      _Block_copy(v412);

      sub_1C5735E58(v139, v142);
      goto LABEL_51;
    case 10:
      v242 = *v139;
      if (!*(*v139 + 16))
      {
        goto LABEL_72;
      }

      v243 = v139;
      v244 = v140;
      v245 = v404;
      sub_1C5743990(v242 + ((*(v408 + 80) + 32) & ~*(v408 + 80)), v404, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v246 = v385;
      sub_1C569134C(v385);
      sub_1C57439F8(v245, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v247 = v396;
      sub_1C5743928(v246, v396, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
      sub_1C5691FCC();
      v248 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
      v249 = sub_1C584F630();

      v250 = [v248 initWithEncodedMapsIdentifier_];

      if (!v250)
      {
        sub_1C57439F8(v247, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);
        v139 = v243;
LABEL_72:
        v418 = 0u;
        v419 = 0u;
        _Block_copy(v142);
        sub_1C5734C0C(&v418, 1u, v142);
        _Block_release(v142);
        sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
        goto LABEL_87;
      }

      v251 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
      v411 = sub_1C5691FE4();
      v253 = v252;
      v254 = *sub_1C567A818();
      v255 = swift_allocObject();
      *(v255 + 16) = sub_1C5743EE0;
      *(v255 + 24) = v244;
      v256 = *(*v254 + 120);

      v256(v251, v411, v253, sub_1C5743EE4, v255);

      sub_1C57439F8(v396, type metadata accessor for WebPlacecardBridge.MUNearbyPlacesArgument);

LABEL_79:

      v153 = v410;
      goto LABEL_90;
    case 11:
      _Block_copy(v412);

      sub_1C5737160(v139, v142);
      goto LABEL_51;
    case 12:
      _Block_copy(v412);

      sub_1C573754C(v139, v142);
      goto LABEL_51;
    case 13:
      _Block_copy(v412);

      sub_1C5737C68(v139, v399, v142);
      goto LABEL_51;
    case 14:
      if (!*(*v139 + 16))
      {
        goto LABEL_46;
      }

      sub_1C5743990(*v139 + ((*(v408 + 80) + 32) & ~*(v408 + 80)), v136, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5691A0C(v137);
      sub_1C57439F8(v136, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v154 = v382;
      v155 = sub_1C5743928(v137, v382, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);
      v156 = v399;
      v157 = (*((*MEMORY[0x1E69E7D40] & *v399) + 0xB0))(v155);
      if (v157)
      {
        [v157 sectionController:v156 updateFixedHeaderWithShouldShow:sub_1C5696744() & 1];
        swift_unknownObjectRelease();
      }

      v418 = 0u;
      v419 = 0u;
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      v158 = v398;
      v159 = v397;
      if (v417)
      {
        v160 = v386;
        v161 = swift_dynamicCast();
        (*(v159 + 56))(v160, v161 ^ 1u, 1, v158);
        if ((*(v159 + 48))(v160, 1, v158) != 1)
        {
          v162 = v376;
          sub_1C5743928(v160, v376, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v163 = v411;
          v164 = sub_1C584F140();
          if (v163)
          {

            sub_1C57439F8(v162, type metadata accessor for WebPlacecardBridgeReply);
            v139 = v410;
          }

          else
          {
            v311 = v164;
            v312 = v165;
            v313 = sub_1C584EAD0();
            v315 = v314;
            sub_1C566DD84(v311, v312);
            v417 = MEMORY[0x1E69E6158];
            v415 = v313;
            v416 = v315;
            sub_1C56466CC(&v415, &v413, &qword_1EC16E790, &unk_1C586A110);
            v316 = v414;
            if (v414)
            {
              v317 = __swift_project_boxed_opaque_existential_1(&v413, v414);
              v318 = *(v316 - 8);
              v319 = *(v318 + 64);
              MEMORY[0x1EEE9AC00](v317, v317);
              v321 = v371 - ((v320 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v318 + 16))(v321);
              v322 = sub_1C584FDB0();
              (*(v318 + 8))(v321, v316);
              __swift_destroy_boxed_opaque_existential_1(&v413);
            }

            else
            {
              v322 = 0;
            }

            v139 = v410;
            (*(v142 + 2))(v142, v322, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v376, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_75;
        }
      }

      else
      {
        sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
        v160 = v386;
        (*(v159 + 56))(v386, 1, 1, v158);
      }

      sub_1C5625230(v160, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      v264 = v417;
      if (v417)
      {
        v265 = __swift_project_boxed_opaque_existential_1(&v415, v417);
        v266 = *(v264 - 8);
        v267 = *(v266 + 64);
        MEMORY[0x1EEE9AC00](v265, v265);
        v269 = v371 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v266 + 16))(v269);
        v270 = sub_1C584FDB0();
        (*(v266 + 8))(v269, v264);
        __swift_destroy_boxed_opaque_existential_1(&v415);
      }

      else
      {
        v270 = 0;
      }

      v139 = v410;
      (*(v142 + 2))(v142, v270, 0);
      swift_unknownObjectRelease();
LABEL_75:
      sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v154, type metadata accessor for WebPlacecardBridge.MUStickyHeaderArgument);

      goto LABEL_88;
    case 15:
      [v399 webViewFinishedLoading];
      v418 = 0u;
      v419 = 0u;
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      if (v417)
      {
        v190 = v139;
        v191 = v395;
        v192 = v398;
        v193 = swift_dynamicCast();
        v194 = v397;
        (*(v397 + 56))(v191, v193 ^ 1u, 1, v192);
        if ((*(v194 + 48))(v191, 1, v192) != 1)
        {
          v195 = v377;
          sub_1C5743928(v191, v377, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v196 = v411;
          v197 = sub_1C584F140();
          if (v196)
          {

            sub_1C57439F8(v195, type metadata accessor for WebPlacecardBridgeReply);

            v139 = v190;
          }

          else
          {
            v299 = v197;
            v300 = v198;
            v301 = sub_1C584EAD0();
            v303 = v302;
            sub_1C566DD84(v299, v300);
            v417 = MEMORY[0x1E69E6158];
            v415 = v301;
            v416 = v303;
            sub_1C56466CC(&v415, &v413, &qword_1EC16E790, &unk_1C586A110);
            v304 = v414;
            if (v414)
            {
              v305 = __swift_project_boxed_opaque_existential_1(&v413, v414);
              v306 = *(v304 - 8);
              v307 = *(v306 + 64);
              MEMORY[0x1EEE9AC00](v305, v305);
              v309 = v371 - ((v308 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v306 + 16))(v309);
              v310 = sub_1C584FDB0();
              (*(v306 + 8))(v309, v304);
              v195 = v377;
              __swift_destroy_boxed_opaque_existential_1(&v413);
            }

            else
            {
              v310 = 0;
            }

            v139 = v190;
            (*(v142 + 2))(v142, v310, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v195, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_57;
        }
      }

      else
      {
        v190 = v139;
        sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
        v191 = v395;
        (*(v397 + 56))(v395, 1, 1, v398);
      }

      sub_1C5625230(v191, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      v257 = v417;
      if (v417)
      {
        v258 = __swift_project_boxed_opaque_existential_1(&v415, v417);
        v259 = *(v257 - 8);
        v260 = *(v259 + 64);
        MEMORY[0x1EEE9AC00](v258, v258);
        v262 = v371 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v259 + 16))(v262);
        v263 = sub_1C584FDB0();
        (*(v259 + 8))(v262, v257);
        __swift_destroy_boxed_opaque_existential_1(&v415);
      }

      else
      {
        v263 = 0;
      }

      v139 = v190;
      (*(v142 + 2))(v142, v263, 0);

      swift_unknownObjectRelease();

LABEL_57:
      sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
      goto LABEL_89;
    case 16:
      _Block_copy(v412);

      sub_1C5738E7C(v139, v399, v142);
LABEL_51:
      _Block_release(v142);

      goto LABEL_89;
    case 17:
      sub_1C57439F8(v139, type metadata accessor for WebPlacecardBridge);

      goto LABEL_91;
    case 18:
      v229 = *v139;
      if (!*(*v139 + 16))
      {
LABEL_46:
        v418 = 0u;
        v419 = 0u;
        _Block_copy(v412);
        sub_1C5734C0C(&v418, 1u, v142);
        _Block_release(v142);
        sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
        goto LABEL_87;
      }

      v230 = v406;
      sub_1C5743990(v229 + ((*(v408 + 80) + 32) & ~*(v408 + 80)), v406, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v231 = v388;
      sub_1C5691D2C(v388);
      sub_1C57439F8(v230, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v232 = v392;
      sub_1C5743928(v231, v392, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
      v233 = *&v399[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController];
      sub_1C5719754();
      v418 = 0u;
      v419 = 0u;
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      if (v417)
      {
        v234 = v381;
        v235 = v398;
        v236 = swift_dynamicCast();
        v237 = v397;
        (*(v397 + 56))(v234, v236 ^ 1u, 1, v235);
        if ((*(v237 + 48))(v234, 1, v235) != 1)
        {
          v238 = v375;
          sub_1C5743928(v234, v375, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v239 = v411;
          v240 = sub_1C584F140();
          if (v239)
          {

            sub_1C57439F8(v238, type metadata accessor for WebPlacecardBridgeReply);
            v139 = v410;
          }

          else
          {
            v347 = v240;
            v348 = v241;
            v349 = sub_1C584EAD0();
            v351 = v350;
            sub_1C566DD84(v347, v348);
            v417 = MEMORY[0x1E69E6158];
            v415 = v349;
            v416 = v351;
            sub_1C56466CC(&v415, &v413, &qword_1EC16E790, &unk_1C586A110);
            v352 = v414;
            if (v414)
            {
              v353 = __swift_project_boxed_opaque_existential_1(&v413, v414);
              v354 = *(v352 - 8);
              v355 = *(v354 + 64);
              MEMORY[0x1EEE9AC00](v353, v353);
              v357 = v371 - ((v356 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v354 + 16))(v357);
              v358 = sub_1C584FDB0();
              (*(v354 + 8))(v357, v352);
              v238 = v375;
              __swift_destroy_boxed_opaque_existential_1(&v413);
            }

            else
            {
              v358 = 0;
            }

            v139 = v410;
            (*(v142 + 2))(v142, v358, 0);
            swift_unknownObjectRelease();
            sub_1C57439F8(v238, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_86;
        }
      }

      else
      {
        sub_1C5625230(&v415, &qword_1EC16E790, &unk_1C586A110);
        v234 = v381;
        (*(v397 + 56))(v381, 1, 1, v398);
      }

      sub_1C5625230(v234, &qword_1EC170928, &unk_1C5878148);
      sub_1C56466CC(&v418, &v415, &qword_1EC16E790, &unk_1C586A110);
      v285 = v417;
      if (v417)
      {
        v286 = __swift_project_boxed_opaque_existential_1(&v415, v417);
        v287 = *(v285 - 8);
        v288 = *(v287 + 64);
        MEMORY[0x1EEE9AC00](v286, v286);
        v290 = v371 - ((v289 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v287 + 16))(v290);
        v291 = sub_1C584FDB0();
        (*(v287 + 8))(v290, v285);
        __swift_destroy_boxed_opaque_existential_1(&v415);
      }

      else
      {
        v291 = 0;
      }

      v139 = v410;
      (*(v142 + 2))(v142, v291, 0);
      swift_unknownObjectRelease();
LABEL_86:
      sub_1C5625230(&v418, &qword_1EC16E790, &unk_1C586A110);
      sub_1C57439F8(v232, type metadata accessor for WebPlacecardBridge.MUWebTextSelectionViewArgument);
LABEL_87:

LABEL_88:

LABEL_89:
      v153 = v139;
LABEL_90:
      sub_1C57439F8(v153, type metadata accessor for WebPlacecardBridge);
LABEL_91:

      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      _Block_release(v142);
      return;
    default:
      v143 = sub_1C584F8A0();
      v144 = v394;
      (*(*(v143 - 8) + 56))(v394, 1, 1, v143);
      v145 = v371[0];
      sub_1C5743990(v139, v371[0], type metadata accessor for WebPlacecardBridge);
      v146 = (*(v127 + 80) + 40) & ~*(v127 + 80);
      v147 = v140;
      v148 = v139;
      v149 = swift_allocObject();
      v149[2] = 0;
      v149[3] = 0;
      v150 = v399;
      v149[4] = v399;
      sub_1C5743928(v145, v149 + v146, type metadata accessor for WebPlacecardBridge);
      v151 = (v149 + ((v128 + v146 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v151 = sub_1C5743EE0;
      v151[1] = v147;
      v152 = v150;

      sub_1C5659C04(0, 0, v144, &unk_1C5878398, v149);

      v153 = v148;
      goto LABEL_90;
  }
}

uint64_t sub_1C573C8B0(uint64_t *a1, void *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v49 = a2;
  v7 = type metadata accessor for WebPlacecardBridge.MUAttributionArgument(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12 - 8, v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v48 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  v27 = *a1;
  if (!*(*a1 + 16))
  {
    v35 = qword_1EC17B020;

    if (v35 != -1)
    {
      swift_once();
    }

    v36 = sub_1C584F2C0();
    __swift_project_value_buffer(v36, qword_1EC18FA38);
    v37 = sub_1C584F2A0();
    v38 = sub_1C584F9B0();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_18;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "empty vendorId for getAttributionData bridge call";
    goto LABEL_17;
  }

  v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  sub_1C5743990(v27 + v28, v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);

  sub_1C56907E0(v11);
  sub_1C57439F8(v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v48 = sub_1C5695B18();
  v30 = v29;
  sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
  if (*(v27 + 16))
  {
    sub_1C5743990(v27 + v28, v22, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C56907E0(v11);
    sub_1C57439F8(v22, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v31 = sub_1C5695B30();
    sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
    LOBYTE(v50[0]) = v31 & 1;
    v51 = 1;
    sub_1C56F5740();
    if (sub_1C584F620())
    {
      v32 = *sub_1C5764F70();
      v33 = swift_allocObject();
      *(v33 + 16) = sub_1C5743EE0;
      *(v33 + 24) = v26;
      v34 = *(*v32 + 120);

      v34(v48, v30, sub_1C5743F24, v33);

LABEL_12:
    }

    if (*(v27 + 16))
    {
      sub_1C5743990(v27 + v28, v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C56907E0(v11);
      sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v41 = sub_1C5695B30();
      sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridge.MUAttributionArgument);
      LOBYTE(v50[0]) = v41 & 1;
      v51 = 0;
      if (sub_1C584F620())
      {
        v42 = *sub_1C5764F70();

        v43 = [v49 mapItem];
        v44 = swift_allocObject();
        *(v44 + 16) = sub_1C5743EE0;
        *(v44 + 24) = v26;
        v45 = *(*v42 + 112);

        v45(v48, v30, v43, sub_1C5743F24, v44);

        goto LABEL_12;
      }
    }
  }

  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v47 = sub_1C584F2C0();
  __swift_project_value_buffer(v47, qword_1EC18FA38);
  v37 = sub_1C584F2A0();
  v38 = sub_1C584F9B0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "invalid argument for getAttributionData bridge call";
LABEL_17:
    _os_log_impl(&dword_1C5620000, v37, v38, v40, v39, 2u);
    MEMORY[0x1C694B7A0](v39, -1, -1);
  }

LABEL_18:

  memset(v50, 0, sizeof(v50));
  sub_1C572942C(v50, 1u, a3);
  sub_1C5625230(v50, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C573CEFC(uint64_t *a1, char *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v45 = a2;
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v44 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19 - 8, v22);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v43 - v27;
  v29 = swift_allocObject();
  v43 = a3;
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;

  BOOL = GEOConfigGetBOOL();
  v31 = *a1;
  if (!BOOL)
  {
    goto LABEL_13;
  }

  if (!*(v31 + 16))
  {
    goto LABEL_13;
  }

  sub_1C5743990(v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v28, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5690AF4(v18);
  sub_1C57439F8(v28, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v32 = sub_1C56921A8();
  sub_1C57439F8(v18, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  LOBYTE(v47[0]) = v32;
  v46 = 52;
  sub_1C56F4B10();
  if ((sub_1C584F620() & 1) == 0)
  {
LABEL_13:
    if (*(v31 + 16))
    {
      sub_1C5743990(v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      sub_1C5690AF4(v12);
      sub_1C57439F8(v25, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
      v33 = v12;
      v34 = v44;
      sub_1C5743928(v33, v44, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      v35 = v45;
      v36 = [v45 mapItem];
      sub_1C5774F00(v36);
      v38 = v37;

      if (v38)
      {
        v39 = *&v35[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher];
        type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v40 = sub_1C56433CC(0);
        v41 = swift_allocObject();
        *(v41 + 16) = sub_1C5743EE0;
        *(v41 + 24) = v29;

        MUPlaceActionDispatcher.performAction(for:environment:completion:)(v38, v40, sub_1C5743F28, v41);

        sub_1C57439F8(v34, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
      }

      sub_1C57439F8(v34, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    }

    memset(v47, 0, sizeof(v47));
    sub_1C572942C(v47, 1u, v43);
    sub_1C5625230(v47, &qword_1EC16E790, &unk_1C586A110);
  }

  [v45 presentDebugPanel];
}

uint64_t sub_1C573D334(uint64_t *a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v78 = &v70 - v9;
  v10 = type metadata accessor for WebPlacecardBridgeReply(0);
  v77 = *(v10 - 8);
  v11 = *(v77 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v70 - v17;
  v19 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument(0);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v30 = (&v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v70 - v32;
  v34 = *a1;
  if (*(*a1 + 16))
  {
    v72 = a3;
    v73 = v10;
    v71 = v15;
    v75 = v18;
    v76 = a2;
    sub_1C5743990(v34 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v24, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C56911C4(v30);
    sub_1C57439F8(v24, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v30, v33, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
    v74 = v33;
    v35 = *(*v33 + 16);
    if (v35)
    {
      v36 = (*v33 + 40);
      v37 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = *(v36 - 1);
        v39 = *v36;

        v40 = sub_1C584EAB0();
        v42 = v41;

        if (v42 >> 60 != 15)
        {
          v43 = objc_allocWithZone(MEMORY[0x1E69A2660]);
          sub_1C566DCD4(v40, v42);
          v44 = sub_1C584EAC0();
          v45 = [v43 initWithEncodedData_];

          sub_1C566DD70(v40, v42);
          v46 = *(**sub_1C5764F70() + 96);

          v47 = v46(v45);
          v49 = v48;

          if (v49)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_1C5638228(0, *(v37 + 2) + 1, 1, v37);
            }

            v51 = *(v37 + 2);
            v50 = *(v37 + 3);
            if (v51 >= v50 >> 1)
            {
              v37 = sub_1C5638228((v50 > 1), v51 + 1, 1, v37);
            }

            sub_1C566DD70(v40, v42);
            *(v37 + 2) = v51 + 1;
            v52 = &v37[16 * v51];
            *(v52 + 4) = v47;
            *(v52 + 5) = v49;
          }

          else
          {
            sub_1C566DD70(v40, v42);
          }
        }

        v36 += 2;
        --v35;
      }

      while (v35);
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v53 = v75;
    sub_1C569CA9C(v75);
    sub_1C56976F8(v37);
    v54 = v73;
    *(&v82 + 1) = v73;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
    sub_1C5743990(v53, boxed_opaque_existential_1, type metadata accessor for WebPlacecardBridgeReply);
    sub_1C56466CC(&v81, v79, &qword_1EC16E790, &unk_1C586A110);
    if (v80)
    {
      v56 = v78;
      v57 = swift_dynamicCast();
      v58 = v77;
      (*(v77 + 56))(v56, v57 ^ 1u, 1, v54);
      v59 = (*(v58 + 48))(v56, 1, v54);
      v60 = v76;
      v61 = v74;
      if (v59 != 1)
      {
        v62 = v71;
        sub_1C5743928(v56, v71, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
        v64 = sub_1C584F140();
        v66 = v65;
        v67 = sub_1C584EAD0();
        v69 = v68;
        sub_1C566DD84(v64, v66);
        v80 = MEMORY[0x1E69E6158];
        v79[0] = v67;
        v79[1] = v69;
        v60(v79, 0, 0);
        sub_1C57439F8(v62, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(v79, &qword_1EC16E790, &unk_1C586A110);
LABEL_20:
        sub_1C57439F8(v53, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C57439F8(v61, type metadata accessor for WebPlacecardBridge.MUTransitLabelArgument);
        return sub_1C5625230(&v81, &qword_1EC16E790, &unk_1C586A110);
      }
    }

    else
    {
      sub_1C5625230(v79, &qword_1EC16E790, &unk_1C586A110);
      v56 = v78;
      (*(v77 + 56))(v78, 1, 1, v54);
      v60 = v76;
      v61 = v74;
    }

    sub_1C5625230(v56, &qword_1EC170928, &unk_1C5878148);
    v60(&v81, 0, 0);
    goto LABEL_20;
  }

  v81 = 0u;
  v82 = 0u;
  sub_1C572942C(&v81, 1u, a2);
  return sub_1C5625230(&v81, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C573DA54(uint64_t *a1, void *a2, void (*a3)(uint64_t *, void, void), uint64_t a4)
{
  v128 = a2;
  v133 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v127 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v135 = &v124 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v124 - v16;
  v18 = type metadata accessor for WebPlacecardBridgeReply(0);
  v136 = *(v18 - 8);
  v19 = *(v136 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v125 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v126 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v124 - v27;
  v29 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v32);
  v34 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v36 = *(*(refreshed - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](refreshed - 8, v37);
  v40 = (&v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38, v41);
  v43 = (&v124 - v42);
  v44 = swift_allocObject();
  *(v44 + 16) = a3;
  *(v44 + 24) = a4;
  v45 = *a1;
  if (*(*a1 + 16))
  {
    v134 = v18;
    v131 = a3;
    v132 = v44;
    sub_1C5743990(v45 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v34, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v130 = a4;

    sub_1C5691024(v40);
    sub_1C57439F8(v34, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    sub_1C5743928(v40, v43, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
    v46 = 0;
    v129 = v43;
    v47 = *v43;
    v48 = MEMORY[0x1E69E7CC0];
    *&v143 = MEMORY[0x1E69E7CC0];
    v49 = *(v47 + 16);
    v50 = v47 + 40;
    v137 = v47 + 40;
LABEL_3:
    v51 = (v50 + 16 * v46);
    while (v49 != v46)
    {
      if (v46 >= *(v47 + 16))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      ++v46;
      v52 = v51 + 2;
      v54 = *(v51 - 1);
      v53 = *v51;
      v55 = objc_allocWithZone(MEMORY[0x1E69A21C0]);

      v56 = sub_1C584F630();

      v57 = [v55 initWithEncodedMapsIdentifier_];

      v51 = v52;
      if (v57)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v58 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v48 = v143;
        v50 = v137;
        goto LABEL_3;
      }
    }

    *&v143 = MEMORY[0x1E69E7CC0];
    v46 = v48 & 0xFFFFFFFFFFFFFF8;
    if (!(v48 >> 62))
    {
      v59 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_12;
    }

LABEL_62:
    v59 = sub_1C584FB90();
LABEL_12:
    v60 = 0;
    v137 = MEMORY[0x1E69E7CC0];
    while (v59 != v60)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1C694A320](v60, v48);
      }

      else
      {
        if (v60 >= *(v46 + 16))
        {
          goto LABEL_61;
        }

        v61 = *(v48 + 8 * v60 + 32);
      }

      v62 = v61;
      v63 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_60;
      }

      v64 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      ++v60;
      if (v64)
      {
        MEMORY[0x1C6949DF0]();
        if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v65 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        v137 = v143;
        v60 = v63;
      }
    }

    v66 = v137;
    if (v137 >> 62)
    {
      v67 = sub_1C584FB90();
    }

    else
    {
      v67 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = v131;
    v69 = v132;
    v70 = v129;
    v71 = v134;
    v72 = v135;
    if (v67 < 1)
    {

      v143 = 0u;
      v144 = 0u;
      sub_1C56466CC(&v143, &v140, &qword_1EC16E790, &unk_1C586A110);
      if (v142)
      {
        v90 = swift_dynamicCast();
        v91 = v136;
        (*(v136 + 56))(v72, v90 ^ 1u, 1, v71);
        if ((*(v91 + 48))(v72, 1, v71) != 1)
        {
          v92 = v126;
          sub_1C5743928(v72, v126, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
          v93 = v133;
          v94 = sub_1C584F140();
          if (v93)
          {

            sub_1C57439F8(v92, type metadata accessor for WebPlacecardBridgeReply);
          }

          else
          {
            v113 = v92;
            v114 = v94;
            v115 = v95;
            v116 = sub_1C584EAD0();
            v118 = v117;
            sub_1C566DD84(v114, v115);
            v142 = MEMORY[0x1E69E6158];
            v140 = v116;
            v141 = v118;
            v68(&v140, 0, 0);
            sub_1C57439F8(v113, type metadata accessor for WebPlacecardBridgeReply);
            sub_1C5625230(&v140, &qword_1EC16E790, &unk_1C586A110);
          }

          goto LABEL_54;
        }
      }

      else
      {
        sub_1C5625230(&v140, &qword_1EC16E790, &unk_1C586A110);
        (*(v136 + 56))(v72, 1, 1, v71);
      }

      sub_1C5625230(v72, &qword_1EC170928, &unk_1C5878148);
      v68(&v143, 0, 0);
LABEL_54:
      sub_1C5625230(&v143, &qword_1EC16E790, &unk_1C586A110);
      goto LABEL_55;
    }

    v73 = swift_allocObject();
    *(v73 + 16) = sub_1C5743EE0;
    *(v73 + 24) = v69;

    v139 = sub_1C5691FA0();
    v138 = 2;
    sub_1C56F4950();
    sub_1C584F730();
    sub_1C584F730();
    if (v143 != v140)
    {
      v96 = *sub_1C567A818();
      v97 = swift_allocObject();
      *(v97 + 16) = sub_1C5743F30;
      *(v97 + 24) = v73;
      v98 = *(*v96 + 80);

      v98(v66, sub_1C5743EEC, v97);

      goto LABEL_39;
    }

    v74 = v128;
    v75 = [v128 mapItem];
    v76 = [v75 identifier];

    if (v76)
    {
      v77 = MEMORY[0x1E69E7D40];
      v78 = (*((*MEMORY[0x1E69E7D40] & *v74) + 0xE0))();
      v79 = (*((*v77 & *v78) + 0x1F0))();

      if (v79)
      {
        v80 = *sub_1C567A818();
        v81 = swift_allocObject();
        *(v81 + 16) = v79;
        *(v81 + 24) = v76;
        v82 = *(*v80 + 104);

        v83 = v79;
        v84 = v76;
        v82();

LABEL_39:

LABEL_55:
        sub_1C57439F8(v70, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
      }
    }

    v143 = 0u;
    v144 = 0u;
    sub_1C56466CC(&v143, &v140, &qword_1EC16E790, &unk_1C586A110);
    if (v142)
    {
      v104 = v127;
      v105 = v134;
      v106 = swift_dynamicCast();
      v107 = v136;
      (*(v136 + 56))(v104, v106 ^ 1u, 1, v105);
      if ((*(v107 + 48))(v104, 1, v105) != 1)
      {
        v108 = v125;
        sub_1C5743928(v104, v125, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
        v109 = v133;
        v110 = sub_1C584F140();
        if (v109)
        {

          sub_1C57439F8(v108, type metadata accessor for WebPlacecardBridgeReply);
        }

        else
        {
          v119 = v110;
          v120 = v111;
          v121 = sub_1C584EAD0();
          v123 = v122;
          sub_1C566DD84(v119, v120);
          v142 = MEMORY[0x1E69E6158];
          v140 = v121;
          v141 = v123;
          v68(&v140, 0, 0);
          sub_1C57439F8(v108, type metadata accessor for WebPlacecardBridgeReply);
          sub_1C5625230(&v140, &qword_1EC16E790, &unk_1C586A110);
        }

        goto LABEL_53;
      }
    }

    else
    {
      sub_1C5625230(&v140, &qword_1EC16E790, &unk_1C586A110);
      v104 = v127;
      (*(v136 + 56))(v127, 1, 1, v134);
    }

    sub_1C5625230(v104, &qword_1EC170928, &unk_1C5878148);
    v68(&v143, 0, 0);
LABEL_53:

    goto LABEL_54;
  }

  v143 = 0u;
  v144 = 0u;
  sub_1C56466CC(&v143, &v140, &qword_1EC16E790, &unk_1C586A110);
  if (v142)
  {
    v85 = swift_dynamicCast();
    v86 = v136;
    (*(v136 + 56))(v17, v85 ^ 1u, 1, v18);
    if ((*(v86 + 48))(v17, 1, v18) != 1)
    {
      sub_1C5743928(v17, v28, type metadata accessor for WebPlacecardBridgeReply);
      sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
      v87 = v133;
      v88 = sub_1C584F140();
      if (v87)
      {

        sub_1C57439F8(v28, type metadata accessor for WebPlacecardBridgeReply);
      }

      else
      {
        v99 = v88;
        v100 = v89;
        v101 = sub_1C584EAD0();
        v103 = v102;
        sub_1C566DD84(v99, v100);
        v142 = MEMORY[0x1E69E6158];
        v140 = v101;
        v141 = v103;
        a3(&v140, 0, 0);
        sub_1C57439F8(v28, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v140, &qword_1EC16E790, &unk_1C586A110);
      }

      goto LABEL_42;
    }
  }

  else
  {
    sub_1C5625230(&v140, &qword_1EC16E790, &unk_1C586A110);
    (*(v136 + 56))(v17, 1, 1, v18);
  }

  sub_1C5625230(v17, &qword_1EC170928, &unk_1C5878148);
  a3(&v143, 0, 0);
LABEL_42:
  sub_1C5625230(&v143, &qword_1EC16E790, &unk_1C586A110);
}

uint64_t sub_1C573E98C(uint64_t *a1, void *a2, void (*a3)(uint64_t *, void, void), void *a4)
{
  v82 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v78 - v13;
  v15 = type metadata accessor for WebPlacecardBridgeReply(0);
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v78 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v78 - v21;
  v23 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v26);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0);
  v79 = *(refreshed - 8);
  v30 = *(v79 + 64);
  v32 = MEMORY[0x1EEE9AC00](refreshed - 8, v31);
  v80 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = (&v78 - v35);
  MEMORY[0x1EEE9AC00](v34, v37);
  v39 = &v78 - v38;
  v40 = swift_allocObject();
  v85 = a3;
  *(v40 + 16) = a3;
  *(v40 + 24) = a4;
  v41 = v40;
  if (!*(*a1 + 16))
  {
    swift_retain_n();
    v91 = 0u;
    v92 = 0u;
    sub_1C56466CC(&v91, &v88, &qword_1EC16E790, &unk_1C586A110);
    if (v90)
    {
      v42 = v84;
      v43 = swift_dynamicCast();
      v44 = v83;
      (*(v83 + 56))(v14, v43 ^ 1u, 1, v42);
      if ((*(v44 + 48))(v14, 1, v42) != 1)
      {
        sub_1C5743928(v14, v22, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
        v65 = sub_1C584F140();
        v67 = v66;
        v68 = sub_1C584EAD0();
        v70 = v69;
        sub_1C566DD84(v65, v67);
        v90 = MEMORY[0x1E69E6158];
        v88 = v68;
        v89 = v70;
        v85(&v88, 0, 0);
        sub_1C57439F8(v22, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v88, &qword_1EC16E790, &unk_1C586A110);
LABEL_12:
        sub_1C5625230(&v91, &qword_1EC16E790, &unk_1C586A110);
LABEL_21:
      }
    }

    else
    {
      sub_1C5625230(&v88, &qword_1EC16E790, &unk_1C586A110);
      (*(v83 + 56))(v14, 1, 1, v84);
    }

    sub_1C5625230(v14, &qword_1EC170928, &unk_1C5878148);
    v85(&v91, 0, 0);
    goto LABEL_12;
  }

  sub_1C5743990(*a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v28, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  swift_retain_n();
  sub_1C5691024(v36);
  sub_1C57439F8(v28, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v36, v39, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
  if (!*(*v39 + 16))
  {
    v82 = a4;
    sub_1C5691F88();
    v45 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
    v46 = sub_1C584F630();

    v47 = [v45 initWithEncodedMapsIdentifier_];

    if (v47)
    {
      v48 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
      v49 = swift_allocObject();
      *(v49 + 16) = sub_1C5743EE0;
      *(v49 + 24) = v41;

      v87 = sub_1C5691FA0();
      v86 = 1;
      sub_1C56F4950();
      sub_1C584F730();
      sub_1C584F730();
      v50 = v91;
      v51 = v88;
      v52 = *sub_1C567A818();
      if (v50 == v51)
      {
        v53 = swift_allocObject();
        *(v53 + 16) = sub_1C5743F2C;
        *(v53 + 24) = v49;
        v54 = *(*v52 + 112);

        v54(v48, sub_1C5743EE8, v53);
      }

      else
      {
        v85 = v47;
        v60 = v80;
        sub_1C5743990(v39, v80, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
        v61 = (*(v79 + 80) + 16) & ~*(v79 + 80);
        v62 = swift_allocObject();
        sub_1C5743928(v60, v62 + v61, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
        v63 = (v62 + ((v30 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v63 = sub_1C5743F2C;
        v63[1] = v49;
        v64 = *(*v52 + 88);

        v64(v48, sub_1C5743F10, v62);
      }

      sub_1C57439F8(v39, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
      goto LABEL_21;
    }

    v91 = 0u;
    v92 = 0u;
    sub_1C56466CC(&v91, &v88, &qword_1EC16E790, &unk_1C586A110);
    if (v90)
    {
      v55 = v81;
      v56 = v84;
      v57 = swift_dynamicCast();
      v58 = v83;
      (*(v83 + 56))(v55, v57 ^ 1u, 1, v56);
      if ((*(v58 + 48))(v55, 1, v56) != 1)
      {
        v59 = v78;
        sub_1C5743928(v55, v78, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
        v72 = sub_1C584F140();
        v74 = v73;
        v75 = sub_1C584EAD0();
        v77 = v76;
        sub_1C566DD84(v72, v74);
        v90 = MEMORY[0x1E69E6158];
        v88 = v75;
        v89 = v77;
        v85(&v88, 0, 0);
        sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(&v88, &qword_1EC16E790, &unk_1C586A110);
LABEL_20:
        sub_1C5625230(&v91, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v39, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
        goto LABEL_21;
      }
    }

    else
    {
      sub_1C5625230(&v88, &qword_1EC16E790, &unk_1C586A110);
      v55 = v81;
      (*(v83 + 56))(v81, 1, 1, v84);
    }

    sub_1C5625230(v55, &qword_1EC170928, &unk_1C5878148);
    v85(&v91, 0, 0);
    goto LABEL_20;
  }

  sub_1C573DA54(a1, v82, v85, a4);

  sub_1C57439F8(v39, type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument);
}

uint64_t sub_1C573F4F8(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument(0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v32 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  if (!*(*a1 + 16))
  {

LABEL_6:
    memset(v32, 0, sizeof(v32));
    sub_1C572942C(v32, 1u, a2);
    sub_1C5625230(v32, &qword_1EC16E790, &unk_1C586A110);
  }

  sub_1C5743990(*a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v11, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);

  sub_1C56914DC(v17);
  sub_1C57439F8(v11, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v17, v20, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
  sub_1C56920A4();
  v22 = objc_allocWithZone(MEMORY[0x1E69A21C0]);
  v23 = sub_1C584F630();

  v24 = [v22 initWithEncodedMapsIdentifier_];

  if (!v24)
  {
    sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
    goto LABEL_6;
  }

  v25 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];
  v26 = *sub_1C567A818();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C5867970;
  *(v27 + 32) = v25;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C5743EE0;
  *(v28 + 24) = v21;
  v29 = *(*v26 + 80);

  v30 = v25;

  v29(v27, sub_1C5743EF4, v28);

  sub_1C57439F8(v20, type metadata accessor for WebPlacecardBridge.MURouteSnapshotArgument);
}

void sub_1C573F898(uint64_t *a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for WebPlacecardBridgeReply(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument(0);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v27 = (&v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v57 - v29;
  v31 = *a1;
  if (!*(*a1 + 16))
  {
    v62 = 0u;
    v63 = 0u;
    sub_1C572942C(&v62, 1u, a2);
    sub_1C5625230(&v62, &qword_1EC16E790, &unk_1C586A110);
    return;
  }

  v59 = a2;
  sub_1C5743990(v31 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C56916A0(v27);
  sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v27, v30, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
  sub_1C5692164();
  v32 = sub_1C584EAB0();
  v34 = v33;

  if (v34 >> 60 == 15)
  {
    v62 = 0u;
    v63 = 0u;
    sub_1C572942C(&v62, 2u, v59);
LABEL_20:
    sub_1C5625230(&v62, &qword_1EC16E790, &unk_1C586A110);
    sub_1C57439F8(v30, type metadata accessor for WebPlacecardBridge.MUAnalyticsArgument);
    return;
  }

  v35 = sub_1C584EAC0();
  v36 = sub_1C569217C();
  v37 = sub_1C568FFE4(v36);
  v57 = a3;
  if (!v37)
  {
    goto LABEL_9;
  }

  v38 = sub_1C569217C();
  v39 = sub_1C568FFE4(v38);
  if (v39 >= 0xFFFFFFFF80000000)
  {
    v40 = v39;
    if (v39 <= 0x7FFFFFFF)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_9:
    v40 = 6;
LABEL_10:
    v41 = objc_opt_self();
    [v41 captureWebPlaceCardAnalyticEvent:v35 analyticSessionType:v40];

    v42 = *(*v30 + 16);
    if (v42)
    {
      v43 = (*v30 + 32);
      while (1)
      {
        v44 = *v43++;
        if (v44 < 0)
        {
          break;
        }

        [v41 captureWebPlaceCardFeatureUseCount_usageString_usageBool_];
        if (!--v42)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_14:
    v62 = 0u;
    v63 = 0u;
    sub_1C56466CC(&v62, v60, &qword_1EC16E790, &unk_1C586A110);
    if (v61)
    {
      v45 = swift_dynamicCast();
      (*(v12 + 56))(v10, v45 ^ 1u, 1, v11);
      v46 = (*(v12 + 48))(v10, 1, v11);
      v47 = v59;
      if (v46 != 1)
      {
        v48 = v32;
        v49 = v58;
        sub_1C5743928(v10, v58, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
        v50 = sub_1C584F140();
        v52 = v51;
        v53 = sub_1C584EAD0();
        v55 = v54;
        sub_1C566DD84(v50, v52);
        v61 = MEMORY[0x1E69E6158];
        v60[0] = v53;
        v60[1] = v55;
        v47(v60, 0, 0);
        sub_1C57439F8(v49, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(v60, &qword_1EC16E790, &unk_1C586A110);
        v56 = v48;
LABEL_19:
        sub_1C566DD70(v56, v34);
        goto LABEL_20;
      }
    }

    else
    {
      sub_1C5625230(v60, &qword_1EC16E790, &unk_1C586A110);
      (*(v12 + 56))(v10, 1, 1, v11);
      v47 = v59;
    }

    sub_1C5625230(v10, &qword_1EC170928, &unk_1C5878148);
    v47(&v62, 0, 0);
    v56 = v32;
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1C573FEC8(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v49 - v9;
  v11 = type metadata accessor for WebPlacecardBridgeReply(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v51 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v25 = v49 - v24;
  if (!*(*a1 + 16))
  {
    v55 = 0u;
    v56 = 0u;
    sub_1C572942C(&v55, 1u, a2);
    return sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
  }

  sub_1C5743990(*a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v49 - v24, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  if (qword_1EC17B020 != -1)
  {
    swift_once();
  }

  v26 = sub_1C584F2C0();
  __swift_project_value_buffer(v26, qword_1EC18FA38);
  v52 = v25;
  sub_1C5743990(v25, v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  v27 = sub_1C584F2A0();
  v28 = sub_1C584F9B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v49[1] = a3;
    v30 = v29;
    v31 = swift_slowAlloc();
    v50 = a2;
    v32 = v31;
    *&v55 = v31;
    *v30 = 136315138;
    sub_1C5742CB4(&qword_1EC16D660, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v33 = sub_1C584F160();
    v35 = v34;
    sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
    v36 = sub_1C5649518(v33, v35, &v55);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1C5620000, v27, v28, "Received web bundle error: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v37 = v32;
    a2 = v50;
    MEMORY[0x1C694B7A0](v37, -1, -1);
    MEMORY[0x1C694B7A0](v30, -1, -1);
  }

  else
  {

    sub_1C57439F8(v21, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  }

  v55 = 0u;
  v56 = 0u;
  sub_1C56466CC(&v55, v53, &qword_1EC16E790, &unk_1C586A110);
  v39 = v52;
  if (!v54)
  {
    sub_1C5625230(v53, &qword_1EC16E790, &unk_1C586A110);
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_12;
  }

  v40 = swift_dynamicCast();
  (*(v12 + 56))(v10, v40 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_12:
    sub_1C5625230(v10, &qword_1EC170928, &unk_1C5878148);
    a2(&v55, 0, 0);
    goto LABEL_13;
  }

  v41 = v10;
  v42 = v51;
  sub_1C5743928(v41, v51, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
  v43 = sub_1C584F140();
  v45 = v44;
  v46 = sub_1C584EAD0();
  v48 = v47;
  sub_1C566DD84(v43, v45);
  v54 = MEMORY[0x1E69E6158];
  v53[0] = v46;
  v53[1] = v48;
  a2(v53, 0, 0);
  sub_1C57439F8(v42, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5625230(v53, &qword_1EC16E790, &unk_1C586A110);
LABEL_13:
  sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
  return sub_1C57439F8(v39, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
}

uint64_t sub_1C574050C(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v206 = a4;
  v205 = a3;
  v211 = a2;
  v210 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v201 = &v183 - v7;
  v202 = type metadata accessor for WebPlacecardBridgeReply(0);
  v200 = *(v202 - 8);
  v8 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v202, v9);
  v203 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v212 = *(v11 - 8);
  v12 = *(v212 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v214 = &v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v209 = &v183 - v17;
  v18 = type metadata accessor for PlaceActionBarLayout(0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v199 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v204 = &v183 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v197 = &v183 - v28;
  v29 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v31);
  v195 = &v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v213 = *(v33 - 8);
  v34 = *(v213 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v38 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v191 = (&v183 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v189 = (&v183 - v44);
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v188 = (&v183 - v47);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v194 = (&v183 - v50);
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v193 = (&v183 - v53);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v190 = (&v183 - v56);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = (&v183 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v61 = *(*(v60 - 8) + 64);
  v63 = MEMORY[0x1EEE9AC00](v60 - 8, v62);
  v65 = &v183 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v63, v66);
  v198 = &v183 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67, v69);
  v196 = &v183 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v192 = &v183 - v74;
  MEMORY[0x1EEE9AC00](v73, v75);
  v77 = &v183 - v76;
  v78 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78 - 8, v81);
  v83 = &v183 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0);
  v85 = *(*(v84 - 8) + 64);
  v87 = MEMORY[0x1EEE9AC00](v84 - 8, v86);
  v89 = MEMORY[0x1EEE9AC00](v87, v88);
  v91 = &v183 - v90;
  MEMORY[0x1EEE9AC00](v89, v92);
  v96 = &v183 - v95;
  v97 = *v210;
  if (!*(*v210 + 16))
  {
    memset(v218, 0, sizeof(v218));
    sub_1C572942C(v218, 1u, v205);
    return sub_1C5625230(v218, &qword_1EC16E790, &unk_1C586A110);
  }

  v184 = v94;
  v185 = v93;
  sub_1C5743990(v97 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v83, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5691840(v91);
  sub_1C57439F8(v83, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v91, v96, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
  v98 = v212;
  v99 = *(v212 + 56);
  v210 = v11;
  v187 = v212 + 56;
  v186 = v99;
  v99(v77, 1, 1, v11);
  sub_1C5695114(v59);
  v100 = sub_1C5694E6C();
  sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v101 = v96;
  v208 = v96;
  v102 = v98;
  v207 = v77;
  if (!v100)
  {
LABEL_14:
    v151 = *v101;
    v152 = *(*v101 + 16);
    if (v152)
    {
      v153 = 0;
      v154 = (v102 + 48);
      v155 = MEMORY[0x1E69E7CC0];
      v156 = v211;
      v157 = v210;
      while (v153 < *(v151 + 16))
      {
        sub_1C5743990(v151 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v153, v38, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        sub_1C572E2AC(v38, v156, v65);
        sub_1C57439F8(v38, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
        if ((*v154)(v65, 1, v157) == 1)
        {
          sub_1C5625230(v65, &qword_1EC16FE18, &unk_1C5877850);
        }

        else
        {
          v158 = v209;
          sub_1C5743928(v65, v209, type metadata accessor for PlaceActionBarLayoutItem);
          sub_1C5743928(v158, v214, type metadata accessor for PlaceActionBarLayoutItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_1C573426C(0, v155[2] + 1, 1, v155, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v160 = v155[2];
          v159 = v155[3];
          if (v160 >= v159 >> 1)
          {
            v155 = sub_1C573426C(v159 > 1, v160 + 1, 1, v155, &unk_1EC170A50, &unk_1C5878AF0, type metadata accessor for PlaceActionBarLayoutItem);
          }

          v155[2] = v160 + 1;
          sub_1C5743928(v214, v155 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v160, type metadata accessor for PlaceActionBarLayoutItem);
          v156 = v211;
          v157 = v210;
        }

        if (v152 == ++v153)
        {
          goto LABEL_26;
        }
      }

      __break(1u);

      sub_1C57439F8(v38, type metadata accessor for WebPlacecardBridge.MUActionBarItem);

      __break(1u);
      goto LABEL_35;
    }

    v155 = MEMORY[0x1E69E7CC0];
    v156 = v211;
LABEL_26:
    v161 = v198;
    sub_1C56466CC(v207, v198, &qword_1EC16FE18, &unk_1C5877850);
    v162 = v204;
    sub_1C57162A0(v161, v155, v204);
    type metadata accessor for PlaceActionBarConfiguration();
    v163 = v199;
    sub_1C5743990(v162, v199, type metadata accessor for PlaceActionBarLayout);
    v164 = *(v156 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_webContentViewController);
    v165 = *(v156 + OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_actionDispatcher);
    v166 = v164;
    v167 = sub_1C5704684(v163, v165, v164, &off_1F44C6BB0);
    v168 = (*((*MEMORY[0x1E69E7D40] & *v156) + 0xB0))();
    if (v168)
    {
      [v168 sectionController:v156 updateWithActionBarConfiguration:v167];
      swift_unknownObjectRelease();
    }

    memset(v217, 0, sizeof(v217));
    sub_1C56466CC(v217, v215, &qword_1EC16E790, &unk_1C586A110);
    v169 = v205;
    v170 = v203;
    v171 = v202;
    v172 = v201;
    if (v216)
    {
      v173 = swift_dynamicCast();
      v174 = v200;
      (*(v200 + 56))(v172, v173 ^ 1u, 1, v171);
      if ((*(v174 + 48))(v172, 1, v171) != 1)
      {
        sub_1C5743928(v172, v170, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
        v175 = sub_1C584F140();
        v177 = v176;
        v178 = sub_1C584EAD0();
        v180 = v179;
        sub_1C566DD84(v175, v177);
        v216 = MEMORY[0x1E69E6158];
        v215[0] = v178;
        v215[1] = v180;
        v169(v215, 0, 0);
        sub_1C57439F8(v170, type metadata accessor for WebPlacecardBridgeReply);
        sub_1C5625230(v215, &qword_1EC16E790, &unk_1C586A110);
LABEL_33:

        sub_1C5625230(v217, &qword_1EC16E790, &unk_1C586A110);
        sub_1C57439F8(v162, type metadata accessor for PlaceActionBarLayout);
        sub_1C5625230(v207, &qword_1EC16FE18, &unk_1C5877850);
        return sub_1C57439F8(v208, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
      }
    }

    else
    {
      sub_1C5625230(v215, &qword_1EC16E790, &unk_1C586A110);
      (*(v200 + 56))(v172, 1, 1, v171);
    }

    sub_1C5625230(v172, &qword_1EC170928, &unk_1C5878148);
    v169(v217, 0, 0);
    goto LABEL_33;
  }

  sub_1C5695114(v59);
  v103 = sub_1C5694E44();
  sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  if (v103)
  {
    v104 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v105 = v185;
    sub_1C5743990(v208, v185, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v106 = (*(v184 + 80) + 24) & ~*(v184 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = v104;
    sub_1C5743928(v105, v107 + v106, type metadata accessor for WebPlacecardBridge.MUActionBarArgument);
    v108 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C564898C(GEOLocationCoordinate2DMake, 0, sub_1C5743F14, v107, GEOLocationCoordinate2DMake, 0, sub_1C5743F0C, v108, v218);
    sub_1C5695114(v59);
    v109 = *v59;

    sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v110 = v190;
    sub_1C5695114(v190);
    v195 = sub_1C5694DE4();
    v112 = v111;
    sub_1C57439F8(v110, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v113 = objc_opt_self();
    v114 = v193;
    sub_1C5695114(v193);
    sub_1C5694E2C();
    sub_1C57439F8(v114, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v115 = sub_1C584F630();

    v116 = [v113 _mapsui_systemImageNamed_];

    v195 = sub_1C5646814(v109, v195, v112, v116, 0, -1);

    v117 = v194;
    sub_1C5695114(v194);
    v193 = sub_1C5694E2C();
    v192 = v118;
    sub_1C57439F8(v117, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    sub_1C5695114(v59);
    LOBYTE(v115) = sub_1C5694DFC();
    sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v119 = 0;
    v120 = 0;
    v121 = v210;
    if (v115)
    {
      sub_1C5695114(v59);
      v119 = sub_1C5694DE4();
      v120 = v122;
      sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    }

    sub_1C5695114(v59);
    v123 = sub_1C5695040();
    v125 = v124;
    v126 = sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
    v127 = v197;
    sub_1C5716754(v126);
    v128 = v195;
    v129 = v195;
    v181 = v125;
    v130 = v196;
    sub_1C57163A4(v127, v128, 0, 1, v193, v192, v119, v120, v196, v123, v181, 1970169165, 0xE400000000000000);

    v131 = v207;
    sub_1C5625230(v207, &qword_1EC16FE18, &unk_1C5877850);
    goto LABEL_13;
  }

  sub_1C5695114(v59);
  v133 = sub_1C5694DFC();
  sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  if (v133)
  {
    sub_1C5695114(v59);
    v196 = sub_1C5694DE4();
    v194 = v134;
    sub_1C57439F8(v59, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  }

  else
  {
    v196 = 0;
    v194 = 0;
  }

  v135 = v77;
  v136 = v188;
  sub_1C5695114(v188);
  v193 = sub_1C5694E2C();
  v190 = v137;
  sub_1C57439F8(v136, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v138 = v189;
  sub_1C5695114(v189);
  v139 = v195;
  sub_1C5694E98(v195);
  sub_1C57439F8(v138, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  v140 = v191;
  sub_1C5695114(v191);
  v189 = sub_1C5695040();
  v142 = v141;
  sub_1C57439F8(v140, type metadata accessor for WebPlacecardBridge.MUActionBarItem);
  sub_1C5774F00(0);
  if (v143)
  {
    v144 = v143;
    v145 = *((*MEMORY[0x1E69E7D40] & *v143) + 0x50);
    v146 = v143;
    v145(v218);
    v147 = MUPlaceActionDispatcher.ActionType.axID.getter();
    v149 = v148;
    v150 = v197;
    sub_1C5716754(v147);
    v182 = v142;
    v130 = v192;
    sub_1C57163A4(v150, v144, 0, 0, v193, v190, v196, v194, v192, v189, v182, v147, v149);

    sub_1C57439F8(v139, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    v131 = v135;
    sub_1C5625230(v135, &qword_1EC16FE18, &unk_1C5877850);
    v121 = v210;
LABEL_13:
    v186(v130, 0, 1, v121);
    sub_1C56534F4(v130, v131, &qword_1EC16FE18, &unk_1C5877850);
    v101 = v208;
    v102 = v212;
    goto LABEL_14;
  }

LABEL_35:

  result = sub_1C584FD00();
  __break(1u);
  return result;
}

uint64_t sub_1C5741A94(uint64_t *a1, void *a2, void (*a3)(uint64_t, unint64_t, unint64_t), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170928, &unk_1C5878148);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v51 - v11;
  v52 = type metadata accessor for WebPlacecardBridgeReply(0);
  v13 = *(v52 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v52, v15);
  v51[0] = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v20);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument(0);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = v51 - v30;
  v32 = *a1;
  if (!*(*a1 + 16))
  {
    v55 = 0u;
    v56 = 0u;
    sub_1C572942C(&v55, 1u, a3);
    return sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
  }

  v51[1] = a4;
  sub_1C5743990(v32 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v22, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5691B90(v28);
  sub_1C57439F8(v22, type metadata accessor for WebPlacecardBridge.MUBridgeMethodArgument);
  sub_1C5743928(v28, v31, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
  v33 = sub_1C5696784();
  v34 = 0.0;
  v35.n128_u64[0] = 0;
  if (v33)
  {
    v35.n128_f64[0] = sub_1C569676C();
  }

  v36 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x180))(v35);
  if (sub_1C56967CC())
  {
    v34 = sub_1C56967B4();
  }

  v37 = (*((*v36 & *a2) + 0x198))(v34);
  v38 = (*((*v36 & *a2) + 0xB0))(v37);
  if (v38)
  {
    v39 = v38;
    v40 = sub_1C569676C();
    [v39 sectionController:a2 updateInsetsForHeaderWithTopInset:v40 bottom:sub_1C56967B4()];
    swift_unknownObjectRelease();
  }

  v55 = 0u;
  v56 = 0u;
  sub_1C56466CC(&v55, v53, &qword_1EC16E790, &unk_1C586A110);
  if (!v54)
  {
    sub_1C5625230(v53, &qword_1EC16E790, &unk_1C586A110);
    (*(v13 + 56))(v12, 1, 1, v52);
    goto LABEL_13;
  }

  v41 = v52;
  v42 = swift_dynamicCast();
  (*(v13 + 56))(v12, v42 ^ 1u, 1, v41);
  if ((*(v13 + 48))(v12, 1, v41) == 1)
  {
LABEL_13:
    sub_1C5625230(v12, &qword_1EC170928, &unk_1C5878148);
    a3(&v55, 0, 0);
    goto LABEL_14;
  }

  v43 = v51[0];
  sub_1C5743928(v12, v51[0], type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5742CB4(&qword_1EC16D150, type metadata accessor for WebPlacecardBridgeReply);
  v45 = sub_1C584F140();
  v47 = v46;
  v48 = sub_1C584EAD0();
  v50 = v49;
  sub_1C566DD84(v45, v47);
  v54 = MEMORY[0x1E69E6158];
  v53[0] = v48;
  v53[1] = v50;
  a3(v53, 0, 0);
  sub_1C57439F8(v43, type metadata accessor for WebPlacecardBridgeReply);
  sub_1C5625230(v53, &qword_1EC16E790, &unk_1C586A110);
LABEL_14:
  sub_1C5625230(&v55, &qword_1EC16E790, &unk_1C586A110);
  return sub_1C57439F8(v31, type metadata accessor for WebPlacecardBridge.MUHeaderInsetsArgument);
}

uint64_t sub_1C57420D0()
{
  v2 = *(type metadata accessor for WebPlacecardBridge(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C565C934;

  return sub_1C5729E1C(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_1C5742274()
{
  v0 = sub_1C584FD70();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_1C57422F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController];
    *&Strong[OBJC_IVAR____TtC6MapsUI36MUWebBasedPlacecardSectionController_debugPanelViewController] = 0;
  }
}

unint64_t sub_1C5742354()
{
  result = qword_1EC170948;
  if (!qword_1EC170948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170948);
  }

  return result;
}

unint64_t sub_1C57423AC()
{
  result = qword_1EC170950;
  if (!qword_1EC170950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170950);
  }

  return result;
}

uint64_t sub_1C5742764(void (**a1)(void))
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  _Block_copy(a1);
  if ([v3 isMainThread])
  {
    a1[2](a1);
  }

  else
  {
    sub_1C5626E40(0, &qword_1EC16D010, 0x1E69E9610);
    v5 = sub_1C584F9F0();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1C5742978;
    *(v6 + 24) = v2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1C566DF14;
    *(v7 + 24) = v6;
    v9[4] = sub_1C566DF14;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1C566A440;
    v9[3] = &block_descriptor_110;
    v8 = _Block_copy(v9);

    dispatch_sync(v5, v8);

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = (type metadata accessor for WebPlacecardBridge(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = (v0 + v3);
  v7 = *v6;

  v8 = v1[7];
  v9 = sub_1C584EFD0();
  (*(*(v9 - 8) + 8))(&v6[v8], v9);
  v10 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1C5742A98()
{
  v2 = *(type metadata accessor for WebPlacecardBridge(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C565C598;

  return sub_1C5729E1C(v8, v9, v10, v4, v0 + v3, v6, v7);
}

void sub_1C5742BB0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  [v2 setObject:v1 forKey:v3];
  if (v4 >> 62)
  {
    v5 = sub_1C584FB90();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      if (v9)
      {
        v10 = v9;
        [v2 setObject:v8 forKey:v9];
      }
    }
  }
}

uint64_t sub_1C5742CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_226Tm()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + v3);

  v6 = v1[5];
  v7 = sub_1C584EFD0();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3 + v6, v7);
  v9 = *(v0 + v3 + v1[6] + 8);

  v10 = *(v0 + v3 + v1[7] + 8);

  v11 = v0 + v3 + v1[9];
  v12 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v8(v11, v7);
    v13 = *(v11 + *(v12 + 20));
  }

  v14 = *(v0 + v3 + v1[10] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v16, v2 | 7);
}

void sub_1C5742EDC()
{
  v1 = *(*(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) - 8) + 80);
  v2 = *(v0 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1C5695040();
    sub_1C572DC6C(0, 0xE000000000000000, v5, v6, 2);
  }
}

void sub_1C5742F9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();
    if (v2)
    {
      v3 = v2;
      sub_1C5696D18();
      sub_1C5696D48();
      sub_1C5696D78();
      sub_1C5696DA8();
      v9 = objc_allocWithZone(MUDevice);
      v4 = sub_1C584F630();

      v5 = sub_1C584F630();

      v6 = sub_1C584F630();

      v7 = sub_1C584F630();

      v8 = [v9 initWithName:v4 symbolName:v5 deviceID:v6 model:v7];

      [v3 sectionController:v1 didSelectSendToDevice:v8];
      swift_unknownObjectRelease();

      v1 = v8;
    }
  }
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 88) & ~v2;
  v22 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);

  v5 = *(v0 + 4);

  v6 = *(v0 + 6);

  v7 = *(v0 + 8);

  v8 = *(v0 + 10);

  v9 = *&v0[v3];

  v10 = v1[5];
  v11 = sub_1C584EFD0();
  v12 = *(*(v11 - 8) + 8);
  v12(&v0[v3 + v10], v11);
  v13 = *&v0[v3 + 8 + v1[6]];

  v14 = *&v0[v3 + 8 + v1[7]];

  v15 = &v0[v3 + v1[9]];
  v16 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v12(v15, v11);
    v17 = *&v15[*(v16 + 20)];
  }

  v18 = (v22 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *&v0[v3 + 8 + v1[10]];

  v20 = *&v0[v18 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v18 + 16, v2 | 7);
}

uint64_t sub_1C5743338()
{
  v1 = *(type metadata accessor for WebPlacecardBridge.MUActionBarItem(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1C572DA48(v3, v0 + 24, (v0 + v2), v5, v6);
}

unint64_t sub_1C5743480()
{
  result = qword_1EC170A70;
  if (!qword_1EC170A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170A70);
  }

  return result;
}

uint64_t sub_1C57434D4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = [v1 sectionView];
  v5 = [v4 traitCollection];

  swift_beginAccess();
  v6 = *(v2 + 16);
  *(v2 + 16) = v5;

  LOBYTE(v1) = [v1 isTesting];
  result = swift_beginAccess();
  *(v3 + 16) = v1;
  return result;
}

id sub_1C5743594(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_1C57435A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

uint64_t sub_1C57435BC(uint64_t a1, void *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  if (a2)
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v6 = sub_1C584F2C0();
    __swift_project_value_buffer(v6, qword_1EC18FA38);
    v7 = a2;
    v8 = sub_1C584F2A0();
    v9 = sub_1C584F9B0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1C5620000, v8, v9, "Tried to refine mapItem but failed with error %@", v10, 0xCu);
      sub_1C5625230(v11, &unk_1EC16E670, &qword_1C586A030);
      MEMORY[0x1C694B7A0](v11, -1, -1);
      MEMORY[0x1C694B7A0](v10, -1, -1);
    }

    v24 = a2;
    v14 = a2;
    goto LABEL_17;
  }

  if (a1 && *(a1 + 16) && (sub_1C56465F8(a1 + 32, &v24), sub_1C5626E40(0, &unk_1EC16CF70, 0x1E696F270), (swift_dynamicCast() & 1) != 0))
  {
    if (qword_1EC17B020 != -1)
    {
      swift_once();
    }

    v15 = sub_1C584F2C0();
    __swift_project_value_buffer(v15, qword_1EC18FA38);
    v16 = sub_1C584F2A0();
    v17 = sub_1C584F990();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C5620000, v16, v17, "Successfully fetched refined map item from MKMapService", v18, 2u);
      MEMORY[0x1C694B7A0](v18, -1, -1);
    }

    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
    return sub_1C584F850();
  }

  else
  {
    result = sub_1C5742274();
    if (result != 6)
    {
      v20 = result;
      sub_1C5743480();
      v21 = swift_allocError();
      *v22 = v20;
      v24 = v21;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
      return sub_1C584F840();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C5743928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5743990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C57439F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_38Tm()
{
  v1 = (type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  v8 = sub_1C584EFD0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v5 + v1[8] + 8);

  v10 = *(v0 + v4 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1C5743B68(void *a1, void *a2)
{
  v5 = *(type metadata accessor for WebPlacecardBridge.MUMapItemRefreshArgument(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1C572F4EC(a1, a2, v2 + v6, v8);
}

uint64_t objectdestroy_52Tm()
{
  v1 = (type metadata accessor for WebPlacecardBridge.MUActionBarArgument(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3);

  v7 = v1[7];
  v8 = sub_1C584EFD0();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v10 = (v0 + v3 + v1[8]);
  v11 = type metadata accessor for WebPlacecardBridge.MUActionBarItem(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v20 = v4;
    v12 = *v10;

    v9(v10 + v11[5], v8);
    v13 = *(v10 + v11[6] + 8);

    v14 = *(v10 + v11[7] + 8);

    v15 = v10 + v11[9];
    v16 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {
      v9(v15, v8);
      v17 = *&v15[*(v16 + 20)];
    }

    v18 = *(v10 + v11[10] + 8);

    v4 = v20;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C5743E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

uint64_t EVChargerAvailabilityDownloader.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5744094@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C57440F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

void (*EVChargerAvailabilityDownloader.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

uint64_t EVChargerAvailabilityDownloader.isActive.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

void EVChargerAvailabilityDownloader.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1C57443D8();
}

uint64_t sub_1C5744328@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_1C5744380(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1C57443D8();
}

void sub_1C57443D8()
{
  v1 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if ((*(v0 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress) & 1) == 0)
    {
      v2 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer;
      v3 = *(v0 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer);
      if (v3)
      {
        [v3 invalidate];
        v4 = *(v0 + v2);
      }

      else
      {
        v4 = 0;
      }

      *(v0 + v2) = 0;

      sub_1C57446FC(0.0);
    }
  }

  else
  {
    v5 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer;
    v6 = *(v0 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer);
    if (v6)
    {
      [v6 invalidate];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;
  }
}

void (*EVChargerAvailabilityDownloader.isActive.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C5744504;
}

void sub_1C5744504(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_1C57443D8();
  }
}

id EVChargerAvailabilityDownloader.__allocating_init(mapItemIdentifier:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer] = 0;
  v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id EVChargerAvailabilityDownloader.init(mapItemIdentifier:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer] = 0;
  v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1C57446FC(double a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isActive;
  swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    v4 = OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer;
    if (!*(v1 + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer))
    {
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1C57449C0;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C564A8C4;
      aBlock[3] = &block_descriptor_12;
      v7 = _Block_copy(aBlock);

      v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:a1];
      _Block_release(v7);
      v9 = *(v1 + v4);
      *(v1 + v4) = v8;
    }
  }
}

id EVChargerAvailabilityDownloader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EVChargerAvailabilityDownloader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C57449C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer);
    *(Strong + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_timer) = 0;

    ObjectType = swift_getObjectType();
    v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress] = 1;
    v4 = [objc_opt_self() sharedService];
    if (v4)
    {
      v5 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C5867970;
      v7 = *&v1[OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier];
      *(v6 + 32) = v7;
      sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);
      v8 = v7;
      v9 = sub_1C584F750();

      v10 = [v5 ticketForRefreshingEVChargersWithIdentifiers:v9 traits:0];

      if (v10)
      {
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = ObjectType;
        aBlock[4] = sub_1C5744C18;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C567AB00;
        aBlock[3] = &block_descriptor_9_0;
        v13 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        [v10 submitRefreshRequestWithHandler:v13 networkActivity:0];
        swift_unknownObjectRelease_n();
        _Block_release(v13);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C5744C18(id a1, void *a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    *(Strong + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_isDownloadInProgress) = 0;
    if (a2)
    {
      v8 = a2;
      if (qword_1EC18E860 != -1)
      {
        swift_once();
      }

      v9 = sub_1C584F2C0();
      __swift_project_value_buffer(v9, qword_1EC18E868);
      v10 = a2;
      v11 = v7;
      v12 = sub_1C584F2A0();
      v13 = sub_1C584F9B0();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 134218242;
        *(v14 + 4) = [*(&v11->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

        *(v14 + 12) = 2112;
        v16 = a2;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 14) = v17;
        *v15 = v17;
        _os_log_impl(&dword_1C5620000, v12, v13, "Error downloading map item with identifier:%llu. Error: %@", v14, 0x16u);
        sub_1C567CCE0(v15);
        MEMORY[0x1C694B7A0](v15, -1, -1);
        MEMORY[0x1C694B7A0](v14, -1, -1);
      }

      else
      {
      }

      sub_1C57446FC(v27, 10.0);
      goto LABEL_38;
    }

    if (a1)
    {
      v18 = sub_1C567A9F4(a1);
      if (v18)
      {
        v19 = v18 & 0xFFFFFFFFFFFFFF8;
        if (v18 >> 62)
        {
          a2 = v18;
          v33 = sub_1C584FB90();
          v18 = a2;
          if (v33)
          {
            goto LABEL_11;
          }
        }

        else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_11:
          if ((v18 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1C694A320](0);
          }

          else
          {
            if (!*(v19 + 16))
            {
              __break(1u);
              goto LABEL_42;
            }

            v20 = *(v18 + 32);
          }

          a2 = v20;
          v21 = [v20 _geoMapItem];
          if (!v21)
          {
            __break(1u);
            return;
          }

          v22 = v21;

          a1 = [v22 _evCharger];
          swift_unknownObjectRelease();
          if (a1)
          {
            if (qword_1EC18E860 == -1)
            {
LABEL_17:
              v23 = sub_1C584F2C0();
              __swift_project_value_buffer(v23, qword_1EC18E868);
              v11 = v7;
              v24 = sub_1C584F2A0();
              v25 = sub_1C584F990();
              if (os_log_type_enabled(v24, v25))
              {
                v26 = swift_slowAlloc();
                *v26 = 134217984;
                *(v26 + 4) = [*(&v11->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

                _os_log_impl(&dword_1C5620000, v24, v25, "downloaded new availability for muid: %llu", v26, 0xCu);
                MEMORY[0x1C694B7A0](v26, -1, -1);
              }

              else
              {
              }

              swift_beginAccess();
              v32 = swift_unknownObjectWeakLoadStrong();
              if (v32)
              {
                [v32 didDownloadEVChargerAvailabilityWithEvCharger_];
                v32 = swift_unknownObjectRelease();
              }

              sub_1C57446FC(v32, 30.0);

              goto LABEL_38;
            }

LABEL_42:
            swift_once();
            goto LABEL_17;
          }

          if (qword_1EC18E860 != -1)
          {
            swift_once();
          }

          v28 = sub_1C584F2C0();
          __swift_project_value_buffer(v28, qword_1EC18E868);
          v11 = v7;
          v29 = sub_1C584F2A0();
          v30 = sub_1C584F9B0();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 134217984;
            *(v31 + 4) = [*(&v11->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

            _os_log_impl(&dword_1C5620000, v29, v30, "downloaded mapItem doesn't have charger availability information. mapItem identifier:%llu ", v31, 0xCu);
            MEMORY[0x1C694B7A0](v31, -1, -1);

LABEL_38:
            return;
          }

          goto LABEL_37;
        }
      }
    }

    if (qword_1EC18E860 != -1)
    {
      swift_once();
    }

    v34 = sub_1C584F2C0();
    __swift_project_value_buffer(v34, qword_1EC18E868);
    v11 = v7;
    v29 = sub_1C584F2A0();
    v35 = sub_1C584F9B0();
    if (os_log_type_enabled(v29, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      *(v36 + 4) = [*(&v11->isa + OBJC_IVAR____TtC6MapsUI31EVChargerAvailabilityDownloader_mapItemIdentifier) muid];

      _os_log_impl(&dword_1C5620000, v29, v35, "refresh ticket returned no error and no mapItem. mapItem identifier:%llu", v36, 0xCu);
      MEMORY[0x1C694B7A0](v36, -1, -1);

      goto LABEL_38;
    }

LABEL_37:
    v11 = v29;
    goto LABEL_38;
  }
}

uint64_t sub_1C57451F0()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC18E868);
  __swift_project_value_buffer(v0, qword_1EC18E868);
  v1 = sub_1C5715FD8();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return sub_1C584F2B0();
}

id sub_1C574529C()
{
  v0 = sub_1C584ECE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C584EC20();
  v7 = sub_1C584EC10();
  (*(v1 + 8))(v5, v0);
  [v6 setLocale_];

  [v6 setDateStyle_];
  result = [v6 setTimeStyle_];
  qword_1EC190470 = v6;
  return result;
}

void sub_1C57453D0()
{
  v1 = sub_1C584ED50();
  v73 = *(v1 - 8);
  v2 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v72 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1C584ED80();
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v77, v7);
  v75 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1C584EB30();
  v85 = *(v9 - 8);
  v10 = *(v85 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v83 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v84 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v74 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v66 - v22;
  v24 = type metadata accessor for TransitDeparturesRowViewModel();
  v25 = v24[6];
  v76 = v0;
  v26 = *(v0 + v25);
  if ([v26 departureTimeDisplayStyle] == 3)
  {
    v27 = [v26 operatingHours];
    if (v27)
    {
      v67 = v1;

      v28 = v76;
      v29 = v76 + v24[5];
      v30 = sub_1C584EB00();
      v68 = v24[9];
      sub_1C56466CC(v28 + v68, v23, &unk_1EC1702F0, &unk_1C5877650);
      v31 = v5 + 48;
      v32 = *(v5 + 48);
      v33 = v5;
      v34 = v77;
      v69 = v32;
      v70 = v31;
      v35 = v32(v23, 1, v77);
      v71 = v33;
      if (v35 == 1)
      {
        v36 = 0;
      }

      else
      {
        v36 = sub_1C584ED60();
        (*(v33 + 8))(v23, v34);
      }

      v37 = v75;
      v38 = [v26 operatingHoursForDate:v30 inTimeZone:v36];

      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170C30, &qword_1C5878640);
        v39 = sub_1C584F770();

        v87 = MEMORY[0x1E69E7CC0];
        if (v39 >> 62)
        {
LABEL_23:
          v40 = sub_1C584FB90();
          v41 = v74;
          if (v40)
          {
LABEL_10:
            v42 = 0;
            v81 = v39 & 0xFFFFFFFFFFFFFF8;
            v82 = v39 & 0xC000000000000001;
            v37 = (v85 + 32);
            v80 = xmmword_1C5867990;
            v78 = v40;
            v79 = v39;
            while (1)
            {
              if (v82)
              {
                v43 = MEMORY[0x1C694A320](v42, v39);
                v44 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
LABEL_20:
                  __break(1u);
                  return;
                }
              }

              else
              {
                if (v42 >= *(v81 + 16))
                {
                  __break(1u);
                  goto LABEL_23;
                }

                v43 = *(v39 + 8 * v42 + 32);
                swift_unknownObjectRetain();
                v44 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_20;
                }
              }

              v86 = v44;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170C38, &qword_1C5878648);
              v45 = *(v85 + 72);
              v46 = (*(v85 + 80) + 32) & ~*(v85 + 80);
              v47 = swift_allocObject();
              *(v47 + 16) = v80;
              v48 = [v43 startDate];
              if (!v48)
              {
                break;
              }

              v49 = v48;
              v50 = v47 + v46;
              v51 = v84;
              sub_1C584EB10();

              v34 = *v37;
              (*v37)(v50, v51, v9);
              v52 = [v43 endDate];
              if (!v52)
              {
                goto LABEL_32;
              }

              v53 = v52;
              v54 = v83;
              sub_1C584EB10();

              v34(v50 + v45, v54, v9);
              swift_unknownObjectRelease();
              sub_1C57487BC(v47);
              ++v42;
              v39 = v79;
              if (v86 == v78)
              {
                v55 = v87;
                v34 = v77;
                v41 = v74;
                v37 = v75;
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            return;
          }
        }

        else
        {
          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v41 = v74;
          if (v40)
          {
            goto LABEL_10;
          }
        }

        v55 = MEMORY[0x1E69E7CC0];
LABEL_25:
        sub_1C56466CC(v76 + v68, v41, &unk_1EC1702F0, &unk_1C5877650);
        v56 = v69;
        if (v69(v41, 1, v34) == 1)
        {
          v57 = [objc_opt_self() currentCalendar];
          v58 = v72;
          sub_1C584ED20();

          v59 = v74;
          sub_1C584ED40();
          (*(v73 + 8))(v58, v67);
          if (v56(v59, 1, v34) != 1)
          {
            sub_1C5625230(v59, &unk_1EC1702F0, &unk_1C5877650);
          }
        }

        else
        {
          (*(v71 + 32))(v37, v41, v34);
        }

        v60 = objc_opt_self();
        sub_1C5745B48(v55);
        v61 = sub_1C584F750();

        v62 = sub_1C584ED60();
        v63 = v37;
        v64 = sub_1C584F630();
        v65 = [v60 _navigation_formattedStringForHourRanges_timeZone_delimeter_];

        if (v65)
        {

          sub_1C584F660();

          (*(v71 + 8))(v63, v77);
          return;
        }

        goto LABEL_33;
      }
    }
  }
}

uint64_t sub_1C5745B48(uint64_t a1)
{
  v2 = sub_1C584EB30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C57488E8(0, v8, 0);
    v9 = v20;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      swift_dynamicCast();
      v20 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C57488E8((v15 > 1), v16 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v16 + 1;
      sub_1C563D304(&v19, (v9 + 32 * v16 + 32));
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return v9;
}

id sub_1C5745CE0(unint64_t a1, uint64_t a2)
{
  v68 = a2;
  v4 = sub_1C584EB30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    v64 = 0;
    v15 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v17 = 0x1E8216000uLL;
    v36 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
    if (*(v15 + 2))
    {
      v70 = v15;
      v37 = objc_opt_self();

      v38 = [v37 commaDelimeter];
      sub_1C584F660();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
      sub_1C571AC5C();
      v39 = sub_1C584F600();
      v41 = v40;

      v42 = [v37 transitDeparturesCountdownFormatString];
      sub_1C584F660();

      v43 = [v37 transitDeparturesCountdownUnitString];
      v44 = sub_1C584F660();
      v46 = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1C5867990;
      v48 = MEMORY[0x1E69E6158];
      *(v47 + 56) = MEMORY[0x1E69E6158];
      v49 = sub_1C563D3B0();
      *(v47 + 32) = v39;
      *(v47 + 40) = v41;
      *(v47 + 96) = v48;
      *(v47 + 104) = v49;
      *(v47 + 64) = v49;
      *(v47 + 72) = v44;
      *(v47 + 80) = v46;
      v9 = sub_1C584F670();
      v4 = v50;

      v2 = sub_1C5638228(0, 1, 1, MEMORY[0x1E69E7CC0]);
      a1 = *(v2 + 2);
      v24 = *(v2 + 3);
      v13 = a1 + 1;
      if (a1 >= v24 >> 1)
      {
LABEL_40:
        v2 = sub_1C5638228((v24 > 1), v13, 1, v2);
      }

      v51 = v64;
      *(v2 + 2) = v13;
      v52 = &v2[16 * a1];
      *(v52 + 4) = v9;
      *(v52 + 5) = v4;
      v36 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
      if ((v51 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      if ((v64 & 1) == 0)
      {
LABEL_35:
        v69 = v2;
        v60 = *(v17 + 1368);
        v61 = [objc_opt_self() v36[343]];
        sub_1C584F660();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
        sub_1C571AC5C();
        v62 = sub_1C584F600();

        return v62;
      }
    }

    v53 = *(v17 + 1368);
    v54 = [objc_opt_self() transitDeparturesRowNowString];
    v55 = sub_1C584F660();
    v57 = v56;

    v58 = *(v2 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v2;
    if (!isUniquelyReferenced_nonNull_native || v58 >= *(v2 + 3) >> 1)
    {
      v2 = sub_1C5638228(isUniquelyReferenced_nonNull_native, v58 + 1, 1, v2);
      v70 = v2;
    }

    sub_1C5748CFC(0, 0, 1, v55, v57);

    goto LABEL_35;
  }

  v64 = 0;
  v12 = *(v5 + 16);
  v11 = v5 + 16;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v66 = (v11 - 8);
  v67 = v12;
  v65 = *(v11 + 56);
  v14 = v10 - 1;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = 2;
  while (1)
  {
    v17 = v14;
    v67(v9, v13, v4);
    sub_1C584EAF0();
    v19 = v18;
    IsImminentDepartureTimeInterval = GEOTransitDepartureIsImminentDepartureTimeInterval();
    v21 = 0.0;
    if ((IsImminentDepartureTimeInterval & 1) == 0)
    {
      if (v19 < 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      v21 = v22 / 60.0;
    }

    v23 = floor(v21);
    v24 = *&v23 & 0x7FFFFFFFFFFFFFFFLL;
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v24 = 0xC3E0000000000001;
    if (v23 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    v24 = 0x43E0000000000000;
    if (v23 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v23)
    {
      break;
    }

    v24 = v64;
    if ((v64 & 1) == 0 && v16-- == 0)
    {
      goto LABEL_39;
    }

    v64 = 1;
LABEL_22:
    a1 = *(v15 + 2);
    (*v66)(v9, v4);
    if (a1 != v16)
    {
      v14 = v17 - 1;
      v13 += v65;
      if (v17)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  v25 = v15;
  result = [objc_opt_self() _navigation_formattedStringForInteger_];
  if (result)
  {
    v27 = result;
    v28 = sub_1C584F660();
    v2 = v29;

    v30 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1C5638228(0, *(v25 + 2) + 1, 1, v25);
    }

    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    v33 = v30;
    if (v32 >= v31 >> 1)
    {
      v33 = sub_1C5638228((v31 > 1), v32 + 1, 1, v30);
    }

    *(v33 + 2) = v32 + 1;
    v15 = v33;
    v34 = &v33[16 * v32];
    *(v34 + 4) = v28;
    *(v34 + 5) = v2;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id sub_1C57462A4(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v71 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v72 = &v71 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v71 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v71 - v20;
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v71 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v71 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v71 - v32;
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v71 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v71 - v39;
  if (a2 > 5)
  {
    if (a1)
    {
      v48 = [a1 scheduledDepartureDate];
      if (v48)
      {
        v49 = v48;
        sub_1C584EB10();

        v50 = sub_1C584EB30();
        (*(*(v50 - 8) + 56))(v17, 0, 1, v50);
      }

      else
      {
        v55 = sub_1C584EB30();
        (*(*(v55 - 8) + 56))(v17, 1, 1, v55);
      }

      sub_1C56534F4(v17, v21, &unk_1EC170AC0, &qword_1C5878418);
    }

    else
    {
      v54 = sub_1C584EB30();
      (*(*(v54 - 8) + 56))(v21, 1, 1, v54);
    }

    v37 = v21;
  }

  else if (((1 << a2) & 0x39) != 0)
  {
    if (a1)
    {
      v41 = [a1 scheduledDepartureDate];
      if (v41)
      {
        v42 = v41;
        sub_1C584EB10();

        v43 = sub_1C584EB30();
        (*(*(v43 - 8) + 56))(v33, 0, 1, v43);
      }

      else
      {
        v51 = sub_1C584EB30();
        (*(*(v51 - 8) + 56))(v33, 1, 1, v51);
      }

      sub_1C56534F4(v33, v37, &unk_1EC170AC0, &qword_1C5878418);
    }

    else
    {
      v47 = sub_1C584EB30();
      (*(*(v47 - 8) + 56))(v37, 1, 1, v47);
    }
  }

  else if (a1)
  {
    v44 = [a1 liveDepartureDate];
    if (v44)
    {
      v45 = v44;
      sub_1C584EB10();

      v46 = sub_1C584EB30();
      (*(*(v46 - 8) + 56))(v25, 0, 1, v46);
    }

    else
    {
      v53 = sub_1C584EB30();
      (*(*(v53 - 8) + 56))(v25, 1, 1, v53);
    }

    sub_1C56534F4(v25, v29, &unk_1EC170AC0, &qword_1C5878418);
    v37 = v29;
  }

  else
  {
    v52 = sub_1C584EB30();
    (*(*(v52 - 8) + 56))(v29, 1, 1, v52);
    v37 = v29;
  }

  sub_1C56534F4(v37, v40, &unk_1EC170AC0, &qword_1C5878418);
  sub_1C57469A4(v40, a3);
  if (v56)
  {
    v57 = objc_opt_self();
    v58 = sub_1C584F630();

    v59 = [v57 _mapkit_attributedLiveTransitStringFromDepartureString_departure_darkMode_];
  }

  else
  {
    if (a1)
    {
      if ([a1 liveStatusString])
      {
        swift_unknownObjectRelease();
        v60 = 0;
        goto LABEL_25;
      }

      v64 = [a1 liveDepartureDate];
      if (v64)
      {
        v65 = v71;
        v66 = v64;
        sub_1C584EB10();

        v67 = 0;
      }

      else
      {
        v67 = 1;
        v65 = v71;
      }

      v63 = v72;
      v68 = sub_1C584EB30();
      (*(*(v68 - 8) + 56))(v65, v67, 1, v68);
      sub_1C56534F4(v65, v63, &unk_1EC170AC0, &qword_1C5878418);
    }

    else
    {
      v62 = sub_1C584EB30();
      v63 = v72;
      (*(*(v62 - 8) + 56))(v72, 1, 1, v62);
    }

    sub_1C57469A4(v63, a3);
    v60 = v69;
    sub_1C5625230(v63, &unk_1EC170AC0, &qword_1C5878418);
    if (!v60)
    {
      goto LABEL_25;
    }

    v70 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v58 = sub_1C584F630();

    v59 = [v70 initWithString_];
  }

  v60 = v59;

LABEL_25:
  sub_1C5625230(v40, &unk_1EC170AC0, &qword_1C5878418);
  return v60;
}

uint64_t sub_1C57469A4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v41 - v5;
  v7 = sub_1C584ED80();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v41 - v13;
  v15 = sub_1C584ED50();
  v43 = *(v15 - 8);
  v44 = v15;
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v41 - v23;
  v25 = sub_1C584EB30();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56466CC(v46, v24, &unk_1EC170AC0, &qword_1C5878418);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1C5625230(v24, &unk_1EC170AC0, &qword_1C5878418);
    return 0;
  }

  else
  {
    (*(v26 + 32))(v30, v24, v25);
    sub_1C584ED30();
    v46 = v19;
    sub_1C584ED40();
    sub_1C56466CC(v42, v6, &unk_1EC1702F0, &unk_1C5877650);
    v32 = v41;
    v33 = *(v41 + 48);
    if (v33(v6, 1, v7) == 1)
    {
      v34 = v45;
      (*(v32 + 16))(v45, v14, v7);
      if (v33(v6, 1, v7) != 1)
      {
        sub_1C5625230(v6, &unk_1EC1702F0, &unk_1C5877650);
      }
    }

    else
    {
      v34 = v45;
      (*(v32 + 32))(v45, v6, v7);
    }

    if (qword_1EC18E880 != -1)
    {
      swift_once();
    }

    v35 = qword_1EC190470;
    v36 = sub_1C584ED60();
    [v35 setTimeZone_];

    v37 = sub_1C584EB00();
    v38 = [v35 stringFromDate_];

    v39 = sub_1C584F660();
    v40 = *(v32 + 8);
    v40(v34, v7);
    v40(v14, v7);
    (*(v43 + 8))(v46, v44);
    (*(v26 + 8))(v30, v25);
    return v39;
  }
}

char *sub_1C5746E7C(unint64_t a1, uint64_t a2)
{
  v4 = sub_1C584EB30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C574711C(a1);
  v11 = type metadata accessor for TransitDeparturesRowViewModel();
  result = v10;
  v13 = *(v10 + 2);
  if (v13)
  {
    v27 = v11;
    v28 = a2;
    v14 = 0;
    v15 = 0;
    v29 = 0;
    v16 = *(v5 + 80);
    v30 = *(v11 + 20);
    v17 = &result[(v16 + 32) & ~v16];
    v26 = v13 - 1;
    while (1)
    {
      if (v14 >= *(result + 2))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v18 = result;
      (*(v5 + 16))(v9, &v17[*(v5 + 72) * v14], v4);
      sub_1C584EAF0();
      v20 = v19;
      (*(v5 + 8))(v9, v4);
      result = GEOTransitDepartureIsImminentDepartureTimeInterval();
      v21 = 0.0;
      if ((result & 1) == 0)
      {
        if (v20 < 0.0)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = v20;
        }

        v21 = v22 / 60.0;
      }

      v23 = floor(v21);
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      if (v23 <= -9.22337204e18)
      {
        goto LABEL_28;
      }

      if (v23 >= 9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v23)
      {
        v24 = __CFADD__(v15++, 1);
        if (v24)
        {
          goto LABEL_30;
        }

        result = v18;
LABEL_4:
        if (v13 == ++v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = v18;
        if (v29)
        {
          goto LABEL_4;
        }

        v24 = __CFADD__(v15++, 1);
        if (v24)
        {
          goto LABEL_32;
        }

        v29 = 1;
        if (v26 == v14++)
        {
LABEL_20:

          v11 = v27;
          a2 = v28;
          goto LABEL_22;
        }
      }
    }
  }

  v15 = 0;
LABEL_22:
  result = GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle(a2);
  if (result == 1 && *(v31 + *(v11 + 40)) == 1)
  {
    v24 = __CFADD__(v15++, 1);
    if (v24)
    {
      goto LABEL_31;
    }
  }

  return v15;
}

char *sub_1C574711C(unint64_t a1)
{
  v41 = sub_1C584EB30();
  v39 = *(v41 - 8);
  v2 = *(v39 + 64);
  v4 = MEMORY[0x1EEE9AC00](v41, v3);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v37 = &v35 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v36 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v42 = &v35 - v13;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v15 = 0;
    v16 = a1 & 0xC000000000000001;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = (v39 + 32);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
    v35 = a1;
    v40 = a1 & 0xC000000000000001;
    while (v16)
    {
      v21 = MEMORY[0x1C694A320](v15, a1);
      v22 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      if ([v21 v20[357]])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = i;
        v24 = [v21 departureDate];
        if (v24)
        {
          v25 = v24;
          v26 = v17;
          v27 = v38;
          sub_1C584EB10();

          swift_unknownObjectRelease();
          v28 = *v18;
          v29 = v37;
          v30 = v41;
          (*v18)(v37, v27, v41);
          v31 = v36;
          v28(v36, v29, v30);
          v28(v42, v31, v30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1C5748A18(0, *(v19 + 2) + 1, 1, v19);
          }

          v33 = *(v19 + 2);
          v32 = *(v19 + 3);
          v17 = v26;
          if (v33 >= v32 >> 1)
          {
            v19 = sub_1C5748A18(v32 > 1, v33 + 1, 1, v19);
          }

          v20 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
          *(v19 + 2) = v33 + 1;
          v28(&v19[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33], v42, v41);
          a1 = v35;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        i = v23;
        v16 = v40;
      }

      ++v15;
      if (v22 == i)
      {
        return v19;
      }
    }

    if (v15 >= *(v17 + 16))
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 8 * v15 + 32);
    swift_unknownObjectRetain();
    v22 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t type metadata accessor for TransitDeparturesRowViewModel()
{
  result = qword_1EC18E990;
  if (!qword_1EC18E990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C57474B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  v17 = type metadata accessor for TransitDeparturesRowViewModel();
  v18 = v17[5];
  v19 = sub_1C584EB30();
  (*(*(v19 - 8) + 32))(&a9[v18], a2, v19);
  *&a9[v17[6]] = a3;
  a9[v17[7]] = a4;
  *&a9[v17[8]] = a5;
  result = sub_1C56534F4(a6, &a9[v17[9]], &unk_1EC1702F0, &unk_1C5877650);
  a9[v17[10]] = a7;
  *&a9[v17[11]] = a8;
  return result;
}

uint64_t sub_1C57475A8()
{
  v1 = type metadata accessor for TransitDeparturesRowViewModel();
  v2 = v1;
  if (*(v0 + *(v1 + 28)) != 1)
  {
    goto LABEL_16;
  }

  v3 = *(v0 + *(v1 + 32));
  if (v3 && (v4 = [v3 vehicleIdentifier]) != 0)
  {
    v5 = v4;
    v6 = sub_1C584F660();
  }

  else
  {
    v6 = 0;
  }

  if (sub_1C584F6D0() <= 0)
  {

    v7 = [*(v0 + *(v2 + 24)) line];
    if (v7)
    {
      v8 = [v7 name];
      if (v8)
      {
        v9 = v8;
        v6 = sub_1C584F660();

        v10 = sub_1C584F6D0();
        swift_unknownObjectRelease();
        if (v10 > 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v6 = 0;
  }

LABEL_13:
  if (sub_1C584F6D0() >= 1 && [*(v0 + *(v2 + 24)) displayStyle] == 1)
  {
    return v6;
  }

LABEL_16:
  v11 = *(v0 + *(v2 + 32));
  if (!v11 || (v12 = [v11 displayName]) == 0)
  {
    v12 = [*(v0 + *(v2 + 24)) displayName];
    if (!v12)
    {
      return 0;
    }
  }

  v13 = v12;
  v6 = sub_1C584F660();

  return v6;
}

id sub_1C574777C()
{
  v1 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for TransitDeparturesRowViewModel();
  if (*(v0 + *(v2 + 28)) != 1)
  {
    return v1;
  }

  v3 = v2;
  v4 = *(v0 + *(v2 + 32));
  if (v4)
  {
    v5 = [v4 vehicleIdentifier];
    if (v5)
    {
      v6 = v5;
      sub_1C584F660();
    }
  }

  if (sub_1C584F6D0() > 0)
  {
LABEL_10:
    v10 = *(v0 + *(v3 + 24));
    if ([v10 displayStyle] == 1 && sub_1C584F6D0() >= 1 && (v11 = objc_msgSend(v10, sel_headsign)) != 0)
    {
      v12 = v11;
      [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

      MEMORY[0x1C6949DF0]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
      v1 = v14;
    }

    else
    {
      v1 = MEMORY[0x1E69E7CC0];
    }

    return v1;
  }

  result = [*(v0 + *(v3 + 24)) line];
  if (result)
  {
    v8 = result;

    v9 = [v8 name];
    swift_unknownObjectRelease();
    if (v9)
    {
      sub_1C584F660();

      if (sub_1C584F6D0() <= 0)
      {
      }
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1C57479A4()
{
  v1 = type metadata accessor for TransitDeparturesRowViewModel();
  v2 = *(v0 + *(v1 + 24));
  if (GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle([v2 departureTimeDisplayStyle]) == 1)
  {
    v3 = v0 + *(v1 + 20);
    v4 = sub_1C584EB00();
    v5 = [v2 departuresValidForDate_];

    if (!v5)
    {
LABEL_15:
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
    v6 = sub_1C584F770();

    if (v6 >> 62)
    {
      if (sub_1C584FB90())
      {
        goto LABEL_5;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C694A320](0, v6);
        goto LABEL_8;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v6 + 32);
        swift_unknownObjectRetain();
LABEL_8:

        v8 = [v7 liveStatus];
        swift_unknownObjectRelease();
LABEL_12:
        GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle(v8, [v2 departureTimeDisplayStyle]);
        return;
      }

      __break(1u);
      goto LABEL_15;
    }

    v8 = 0;
    goto LABEL_12;
  }
}

void sub_1C5747B34()
{
  v1 = v0;
  v2 = type metadata accessor for TransitDeparturesRowViewModel();
  v3 = v2[5];
  v4 = *(v0 + v2[6]);
  v5 = sub_1C584EB00();
  v6 = [v4 departuresValidForDate_];

  if (!v6)
  {
    goto LABEL_55;
  }

  v42 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
  v7 = sub_1C584F770();

  v8 = sub_1C574711C(v7);
  v9 = v1;
  v10 = sub_1C5746E7C(v7, [v4 departureTimeDisplayStyle]);
  if (v7 >> 62)
  {
    v11 = sub_1C584FB90();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1C694A320](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v12 = *(v7 + 32);
    swift_unknownObjectRetain();
  }

  v13 = [v12 liveStatus];
  swift_unknownObjectRelease();
LABEL_10:
  v9 = GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle(v13, [v4 departureTimeDisplayStyle]);
  v14 = [v4 departureTimeDisplayStyle];
  if (!v10)
  {
    goto LABEL_23;
  }

  v15 = GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle(v14);
  if (v15 == 2)
  {

    if (v11)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C694A320](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v11 = *(v7 + 32);
        swift_unknownObjectRetain();
      }
    }

    v20 = sub_1C57462A4(v11, v9, v1 + v2[9]);
    swift_unknownObjectRelease();
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v15 != 1)
  {
LABEL_23:

    v20 = 0;
    goto LABEL_33;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_49:
  MEMORY[0x1C694A320](0, v7);
  swift_unknownObjectRelease();
LABEL_16:
  sub_1C5745CE0(v8, v1 + v42);
  v17 = v16;

  if (v17)
  {
    v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v19 = sub_1C584F630();

    v20 = [v18 initWithString_];

    if (v11)
    {
LABEL_18:
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C694A320](0, v7);
LABEL_21:

        v22 = [objc_opt_self() _mapkit_attributedLiveTransitStringFromAttributedDepartureString_liveStatus_darkMode_symbolOverrideColor_];

        swift_unknownObjectRelease();
        v20 = v22;
        if (!v22)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v7 + 32);
        swift_unknownObjectRetain();
        goto LABEL_21;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v20 = 0;
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_32:
  if ([v20 length] > 0)
  {
    return;
  }

LABEL_33:
  v23 = *(v1 + v2[11]);
  if (v23)
  {
    v24 = [v23 string];
    sub_1C584F660();
    v26 = v25;

    if (sub_1C584F6D0() > 0)
    {
      if (!v26)
      {
        goto LABEL_42;
      }

LABEL_41:
      v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v38 = sub_1C584F630();

      [v37 initWithString_];

LABEL_44:
      return;
    }
  }

  v27 = v2[5];
  v28 = *(v1 + v2[6]);
  v29 = sub_1C584EB00();
  v30 = [v28 hasFrequencyAtDate_];

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = sub_1C584EB00();
    v33 = [v28 frequencyToDescribeAtDate_];

    v34 = [v31 _navigation_formattedDescriptionForFrequency_];
    swift_unknownObjectRelease();
    if (v34)
    {
      sub_1C584F660();
      v36 = v35;

      if (v36)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_56:
    __break(1u);
    return;
  }

LABEL_42:
  sub_1C57453D0();
  if (v39)
  {
    v40 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v41 = sub_1C584F630();

    [v40 initWithString_];

    goto LABEL_44;
  }
}

void sub_1C5748094()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170AC0, &qword_1C5878418);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v51 - v5;
  v7 = sub_1C584EB30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for TransitDeparturesRowViewModel();
  v18 = *(v0 + v17[6]);
  v19 = v0 + v17[5];
  v20 = sub_1C584EB00();
  v21 = [v18 departuresValidForDate_];

  if (!v21)
  {
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170860, &unk_1C5877F60);
  v22 = sub_1C584F770();

  if (v22 >> 62)
  {
    if (!sub_1C584FB90())
    {
      goto LABEL_16;
    }
  }

  else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    return;
  }

  v54 = v8;
  v55 = v7;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1C694A320](0, v22);
    goto LABEL_7;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = *(v22 + 32);
  swift_unknownObjectRetain();
LABEL_7:
  v24 = GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle([v23 liveStatus], objc_msgSend(v18, sel_departureTimeDisplayStyle));
  v25 = GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle([v18 departureTimeDisplayStyle]);
  if ((v24 & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_15;
  }

  v26 = v25;
  v27 = [v23 liveStatusString];
  if (v27)
  {
    v28 = v27;

    v29 = objc_allocWithZone(MEMORY[0x1E696F3A0]);
    v56[0] = 1;
    v57[2] = 0;
    v57[0] = 0;
    *(v57 + 7) = 0;
    v30 = [v29 initWithOptions:v56 variableOverrides:0];
    v31 = [objc_allocWithZone(MEMORY[0x1E696F398]) initWithGeoServerString:v28 parameters:v30];
    sub_1C5748DE0(MEMORY[0x1E69E7CC0]);
    v32 = sub_1C584F5C0();

    v33 = [v31 multiPartAttributedStringWithAttributes_];

    [v33 attributedString];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

  v34 = [v23 departureDate];
  if (!v34)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v53 = v26;
  v35 = v34;
  sub_1C584EB10();

  v36 = *(v54 + 32);
  v51 = v16;
  v36(v16, v13, v55);
  v52 = MKTransitLiveDepartureColorForLiveStatus();
  if (!v52)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA80, &qword_1C5867A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5867900;
  v38 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  *(inited + 64) = sub_1C5626E40(0, &unk_1EC170AD0, 0x1E69DC888);
  v39 = v52;
  *(inited + 40) = v52;
  v40 = v38;
  v41 = v39;
  sub_1C563C930(inited);
  swift_setDeallocating();
  sub_1C5625230(inited + 32, &qword_1EC16DA88, &qword_1C5867A88);
  if (v53 != 2)
  {
    (*(v54 + 8))(v51, v55);
    swift_unknownObjectRelease();

    return;
  }

  v53 = v41;
  v42 = v54;
  v43 = v55;
  v44 = v51;
  (*(v54 + 16))(v6, v51, v55);
  (*(v42 + 56))(v6, 0, 1, v43);
  sub_1C57469A4(v6, v1 + v17[9]);
  v46 = v45;
  sub_1C5625230(v6, &unk_1EC170AC0, &qword_1C5878418);
  if (v46)
  {

    v47 = sub_1C584F630();
  }

  else
  {
    v47 = 0;
  }

  v48 = [objc_opt_self() _navigation_formattedDescriptionForLiveStatus_updatedDepartureTimeString_];

  if (v48)
  {

    v49 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    type metadata accessor for Key(0);
    sub_1C57492B0(&qword_1EC170AE0);
    v50 = sub_1C584F5C0();

    [v49 initWithString:v48 attributes:v50];

    swift_unknownObjectRelease();
    (*(v54 + 8))(v44, v55);
    return;
  }

LABEL_27:
  __break(1u);
}

void *sub_1C5748728(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  v3 = v2;
  return v2;
}

uint64_t GEOTransitDepartureTimeDisplayStyleToMKTransitDepartureLabelStyle(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return 1;
  }

  else
  {
    return qword_1C5878660[a1 - 2];
  }
}

uint64_t GEOTransitDepartureLiveStatusEffectiveStatusForTimeDisplayStyle(uint64_t result, uint64_t a2)
{
  if (a2 == 1 && result == 3)
  {
    return 2;
  }

  return result;
}

uint64_t sub_1C57487BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1C5748A18(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1C584EB30();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C57488E8(char *a1, int64_t a2, char a3)
{
  result = sub_1C5748908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5748908(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170C40, &unk_1C5878650);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1C5748A18(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170C38, &qword_1C5878648);
  v10 = *(sub_1C584EB30() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1C584EB30() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1C5748BF0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C584FBD0();

  return sub_1C5748C34(a1, v5);
}

unint64_t sub_1C5748C34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C57492F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C694A290](v9, a1);
      sub_1C5749350(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C5748CFC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1C5748DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD90, &unk_1C5868550);
    v3 = sub_1C584FD50();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C56466CC(v4, v13, &qword_1EC170B98, &unk_1C5878630);
      result = sub_1C5748BF0(v13);
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
      result = sub_1C563D304(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C5748F20()
{
  result = qword_1EC170AE8;
  if (!qword_1EC170AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170AE8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C5748FB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5748FFC(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C5749084()
{
  sub_1C5626E40(319, &qword_1EC170878, 0x1E696F400);
  if (v0 <= 0x3F)
  {
    sub_1C584EB30();
    if (v1 <= 0x3F)
    {
      sub_1C5749180();
      if (v2 <= 0x3F)
      {
        sub_1C57491E4();
        if (v3 <= 0x3F)
        {
          sub_1C57231C4();
          if (v4 <= 0x3F)
          {
            sub_1C5749248();
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

unint64_t sub_1C5749180()
{
  result = qword_1EC170B50;
  if (!qword_1EC170B50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC170B50);
  }

  return result;
}

void sub_1C57491E4()
{
  if (!qword_1EC170B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC170860, &unk_1C5877F60);
    v0 = sub_1C584FAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC170B58);
    }
  }
}

void sub_1C5749248()
{
  if (!qword_1EC170B68)
  {
    sub_1C5626E40(255, &unk_1EC170B70, 0x1E696AAB0);
    v0 = sub_1C584FAF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC170B68);
    }
  }
}

uint64_t sub_1C57492B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t AppleRatingRollingAnimation.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id AppleRatingRowSubtitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AppleRatingRowSubtitleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] = 0;
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView] = 0;
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel] = 0;
  *&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView] = 0;
  v4[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] = 0;
  v4[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] = 1;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setSpacing_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1C5749AE0(1, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE90, &qword_1C5876290);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C5867990;
  v12 = sub_1C584F300();
  v13 = MEMORY[0x1E69DC130];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_1C584F2F0();
  v15 = MEMORY[0x1E69DC0C8];
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  MEMORY[0x1C694A140](v11, sel_updateForSizeClassChange);
  swift_unknownObjectRelease();

  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v10 selector:sel_contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  return v10;
}

id sub_1C574960C()
{
  ObjectType = swift_getObjectType();

  *&v0[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] = 0;
  *&v0[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView] = 0;
  *&v0[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel] = 0;
  *&v0[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView] = 0;
  v0[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] = 0;
  v0[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] = 1;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

id sub_1C5749730()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTextAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C574980C()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for RollingLabelsView();
    v5 = RollingLabelsView.__allocating_init(frame:)(0.0, 0.0, 0.0, 0.0);
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [v5 setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C57498E0()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_opt_self() vibrantLabelForProminence_];
    [v5 setTextAlignment_];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v6) = 1148846080;
    [v5 setContentHuggingPriority:0 forAxis:v6];
    type metadata accessor for UILayoutPriority(0);
    sub_1C5625AB0(&qword_1ED77E830);
    sub_1C584F2E0();
    LODWORD(v7) = v11;
    [v5 setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C5749A1C()
{
  v1 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView;
  v2 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1C5749AE0(char a1, int a2)
{
  v3 = a2;
  if (a1 & 1) != 0 || ((v2[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] ^ a2))
  {
    v2[OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout] = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5868600;
    *(inited + 32) = sub_1C5749730();
    *(inited + 40) = sub_1C574980C();
    *(inited + 48) = sub_1C57498E0();
    *(inited + 56) = sub_1C5749A1C();
    v5 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C694A320](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(inited + 32);
    }

    v7 = v6;
    [v6 removeFromSuperview];

    if (v5)
    {
      v8 = MEMORY[0x1C694A320](1, inited);
LABEL_10:
      v9 = v8;
      [v8 removeFromSuperview];

      if (v5)
      {
        v10 = MEMORY[0x1C694A320](2, inited);
LABEL_14:
        v11 = v10;
        [v10 removeFromSuperview];

        if (v5)
        {
          v12 = MEMORY[0x1C694A320](3, inited);
          goto LABEL_18;
        }

        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v12 = *(inited + 56);
LABEL_18:
          v13 = v12;

          [v13 removeFromSuperview];

          if (v3)
          {
            [v2 setAxis_];
            [v2 setAlignment_];
            [v2 addArrangedSubview_];
            v14 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView;
            [*&v2[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView] addArrangedSubview_];
            [*&v2[v14] addArrangedSubview_];
            [v2 addArrangedSubview_];
          }

          else
          {
            [v2 setAxis_];
            [v2 addArrangedSubview_];
            [v2 addArrangedSubview_];
            [v2 addArrangedSubview_];
            [v2 setAlignment_];
          }

          return;
        }

LABEL_26:
        __break(1u);
        return;
      }

      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v10 = *(inited + 48);
        goto LABEL_14;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

Swift::Void __swiftcall AppleRatingRowSubtitleView.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  if ((v0[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] & 1) == 0)
  {
    v1 = sub_1C57498E0();
    [v1 intrinsicContentSize];
    v3 = v2;

    [*&v0[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel] bounds];
    if (CGRectGetWidth(v5) < v3)
    {
      sub_1C5749AE0(0, 1);
    }
  }
}

uint64_t AppleRatingRowSubtitleView.set(percentageString:ratingsValueString:ratingsValueAnimation:ratingsString:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress;
  v5[OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress] = 1;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  if (a2)
  {
    v13 = a1;
    v14 = a2;
    v15 = sub_1C574980C();
    v16 = [v15 isHidden];

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = a3;
    }

    v18 = OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView;
    [*&v5[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView] setHidden_];
    v19 = *&v5[v18];
    sub_1C5669428(v14, v17, sub_1C574A304, v12);
  }

  else
  {
    v20 = a1;

    v21 = sub_1C574980C();
    [v21 setHidden_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = sub_1C5749730();
      [v24 setHidden_];

      [*&v23[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] setAttributedText_];
    }

    else
    {
    }
  }

  v25 = sub_1C57498E0();
  [v25 setAttributedText_];

  v26 = sub_1C5749A1C();
  [v26 layoutIfNeeded];

  v5[v10] = 0;
  [v5 layoutIfNeeded];
}

id AppleRatingRowSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C574A25C()
{
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___rollingLabelsView) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___ratingsLabel) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___lineTwoStackView) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView_usingTwoLineLayout) = 0;
  *(v0 + OBJC_IVAR___MUAppleRatingRowSubtitleView_isContentUpdateInProgress) = 1;
  sub_1C584FD00();
  __break(1u);
}

void sub_1C574A304()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1C5749730();
    [v5 setHidden_];

    [*&v4[OBJC_IVAR___MUAppleRatingRowSubtitleView____lazy_storage___percentLabel] setAttributedText_];
  }
}

id TransitLineMarker.__allocating_init(transitLine:locationHint:)(uint64_t a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine] = a1;
  v8 = &v7[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id TransitLineMarker.init(transitLine:locationHint:)(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine] = a1;
  v8 = &v3[OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint];
  *v8 = a2;
  v8[1] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id TransitLineMarker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TransitLineMarker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id TransitLineMarker.mapItemIdentifier()()
{
  result = [*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) identifier];
  if (result)
  {
    v2 = result;
    if (([result hasCoordinate] & 1) != 0 || ((v3 = fabs(*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint)), fabs(*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint + 8)) <= 180.0) ? (v4 = v3 > 90.0) : (v4 = 1), v4))
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

      return v5;
    }

    else
    {
      v6 = [v2 muid];
      v8 = GEOLocationCoordinate2DMake(v6, v7);
      v10 = [objc_allocWithZone(MEMORY[0x1E69A21C0]) initWithMUID:v6 resultProviderID:0 coordinate:{v8, v9}];
      if (v10)
      {
        v11 = v10;
        v12 = [objc_allocWithZone(MEMORY[0x1E696F280]) initWithGEOMapItemIdentifier_];

        return v12;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

Swift::String_optional __swiftcall TransitLineMarker.labelText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine);
  v2 = [v1 name];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v7 = [v1 system];
    if (!v7 || (v3 = [v7 name], swift_unknownObjectRelease(), !v3))
    {
      v4 = 0;
      v6 = 0;
      goto LABEL_7;
    }
  }

  v4 = sub_1C584F660();
  v6 = v5;

LABEL_7:
  v8 = v4;
  v9 = v6;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

id TransitLineMarker.artwork()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) artwork];

  return v1;
}

void type metadata accessor for CLLocationCoordinate2D()
{
  if (!qword_1EC170CF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC170CF8);
    }
  }
}

uint64_t UIOffset.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C694A590](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C694A590](*&v3);
}

uint64_t UIOffset.hashValue.getter(double a1, double a2)
{
  sub_1C584FEA0();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1C694A590](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1C694A590](*&v5);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AB3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C584FEA0();
  UIOffset.hash(into:)(v1, v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AB98()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C584FEA0();
  UIOffset.hash(into:)(v1, v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C574ABEC(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C694A590](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x1C694A590](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x1C694A590](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x1C694A590](*&v9);
}

uint64_t sub_1C574AC84(void (*a1)(_BYTE *, double, double, double, double), double a2, double a3, double a4, double a5)
{
  sub_1C584FEA0();
  a1(v11, a2, a3, a4, a5);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AD14(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, double, double, double, double))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  sub_1C584FEA0();
  a3(v10, v5, v6, v7, v8);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AD9C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, double, double, double, double))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  sub_1C584FEA0();
  a4(v11, v6, v7, v8, v9);
  return sub_1C584FEF0();
}

uint64_t sub_1C574AE98(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C574B084()
{
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF40();

  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  v2 = v1;
  return v1;
}

id sub_1C574B134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF40();

  v4 = *(v3 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  *a2 = v4;

  return v4;
}

void sub_1C574B1F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1C574B224(v2);
}

void sub_1C574B224(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu;
  v5 = *(v1 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
    sub_1C584EF30();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C574B3EC();
  v6 = v5;
  v7 = a1;
  v8 = sub_1C584FAC0();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1C574B3AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu);
  *(v1 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu) = v2;
  v4 = v2;
}

unint64_t sub_1C574B3EC()
{
  result = qword_1EC16DE20;
  if (!qword_1EC16DE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16DE20);
  }

  return result;
}

uint64_t sub_1C574B438()
{
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF40();

  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider);
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider + 8);
  sub_1C5633060(v1);
  return v1;
}

uint64_t sub_1C574B4F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF40();

  v4 = *(v3 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider);
  v5 = *(v3 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C574F7EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C5633060(v4);
}

uint64_t sub_1C574B5F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C574F7B8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v9);
  sub_1C5633060(v3);
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF30();
  sub_1C5632FA8(v6);
}

uint64_t sub_1C574B778(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF40();

  v4 = *(v2 + *a2);
}

uint64_t sub_1C574B830@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF40();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1C574B908(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF30();
}

id sub_1C574B9C4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C574E79C(a1);

  return v4;
}

void sub_1C574BA04(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v88 = sub_1C584EEC0();
  v4 = *(v88 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v88, v6);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C584EE90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v84 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v80 - v16;
  v86 = type metadata accessor for PlaceActionBarItem(0);
  v82 = *(v86 - 8);
  v18 = *(v82 + 64);
  v20 = MEMORY[0x1EEE9AC00](v86, v19);
  v81 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v83 = &v80 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v80 - v27;
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v87 = &v80 - v31;
  MEMORY[0x1C6949550](v30);
  swift_getKeyPath();
  v89[0] = v2;
  sub_1C574F490(&qword_1EC16D110, type metadata accessor for PlaceActionBarController);
  sub_1C584EF40();

  v85 = v2;
  v32 = *(v2 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__idsByItems);
  if (*(v32 + 16))
  {

    v33 = sub_1C574C780(v17);
    if (v34)
    {
      sub_1C574F5C4(*(v32 + 56) + *(v82 + 72) * v33, v28, type metadata accessor for PlaceActionBarItem);
      (*(v10 + 8))(v17, v9);

      v35 = v28;
      v36 = v87;
      sub_1C574F55C(v35, v87, type metadata accessor for PlaceActionBarItem);
      v37 = v36 + *(v86 + 20);
      v38 = type metadata accessor for PlaceActionBarLayoutItem(0);
      v39 = v37 + *(v38 + 20);
      v40 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
      if (!*(v39 + 16))
      {
        v42 = *v39;
        v41 = *(v39 + 8);
        v43 = qword_1EC17B030;
        v44 = *v39;
        if (v43 != -1)
        {
          swift_once();
        }

        v45 = sub_1C584F2C0();
        __swift_project_value_buffer(v45, qword_1EC17B038);
        v46 = v44;
        v47 = sub_1C584F2A0();
        v48 = sub_1C584F990();
        sub_1C574F2F0(v42, v41, 0);
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          *(v49 + 4) = v46;
          *v50 = v42;
          v51 = v46;
          _os_log_impl(&dword_1C5620000, v47, v48, "Calling action dispatcher for action %@", v49, 0xCu);
          sub_1C5625230(v50, &unk_1EC16E670, &qword_1C586A030);
          v52 = v50;
          v36 = v87;
          MEMORY[0x1C694B7A0](v52, -1, -1);
          MEMORY[0x1C694B7A0](v49, -1, -1);
        }

        v40 = &OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
        v53 = *(*(v85 + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController_configuration) + OBJC_IVAR___MUPlaceActionBarConfiguration_actionDispatcher);
        MUPlaceActionDispatcher.performAction(for:environment:completion:)(v46, v80, 0, 0);

        sub_1C574F2F0(v42, v41, 0);
      }

      if (qword_1EC17B030 != -1)
      {
        swift_once();
      }

      v54 = sub_1C584F2C0();
      __swift_project_value_buffer(v54, qword_1EC17B038);
      v55 = v83;
      sub_1C574F5C4(v36, v83, type metadata accessor for PlaceActionBarItem);
      v56 = sub_1C584F2A0();
      v57 = sub_1C584F990();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v58 = 136315138;
        v88 = v38;
        v89[0] = v59;
        v60 = v37;
        v61 = v40;
        sub_1C574F5C4(v55, v81, type metadata accessor for PlaceActionBarItem);
        v62 = sub_1C584F680();
        v64 = v63;
        sub_1C574F62C(v55, type metadata accessor for PlaceActionBarItem);
        v65 = sub_1C5649518(v62, v64, v89);

        *(v58 + 4) = v65;
        v40 = v61;
        v37 = v60;
        v38 = v88;
        _os_log_impl(&dword_1C5620000, v56, v57, "Calling native delegate for item %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        v66 = v59;
        v36 = v87;
        MEMORY[0x1C694B7A0](v66, -1, -1);
        MEMORY[0x1C694B7A0](v58, -1, -1);
      }

      else
      {

        sub_1C574F62C(v55, type metadata accessor for PlaceActionBarItem);
      }

      v77 = *(v85 + v40[420]) + OBJC_IVAR___MUPlaceActionBarConfiguration_nativeItemDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v78 = *(v77 + 8);
        ObjectType = swift_getObjectType();
        (*(v78 + 8))(0, 0xE000000000000000, *(v37 + *(v38 + 32)), *(v37 + *(v38 + 32) + 8), 2, ObjectType, v78);
        swift_unknownObjectRelease();
      }

      sub_1C574F62C(v36, type metadata accessor for PlaceActionBarItem);
      return;
    }
  }

  (*(v10 + 8))(v17, v9);
  if (qword_1EC17B030 != -1)
  {
    swift_once();
  }

  v67 = sub_1C584F2C0();
  __swift_project_value_buffer(v67, qword_1EC17B038);
  v68 = v88;
  (*(v4 + 16))(v8, a1, v88);
  v69 = sub_1C584F2A0();
  v70 = sub_1C584F9B0();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89[0] = v72;
    *v71 = 136315138;
    MEMORY[0x1C6949550]();
    v73 = sub_1C584F680();
    v75 = v74;
    (*(v4 + 8))(v8, v68);
    v76 = sub_1C5649518(v73, v75, v89);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_1C5620000, v69, v70, "Could not find action item for model %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x1C694B7A0](v72, -1, -1);
    MEMORY[0x1C694B7A0](v71, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v8, v68);
  }
}

uint64_t sub_1C574C3F4()
{
  v0 = sub_1C584F2C0();
  __swift_allocate_value_buffer(v0, qword_1EC17B038);
  __swift_project_value_buffer(v0, qword_1EC17B038);
  return sub_1C584F2B0();
}

size_t sub_1C574C474(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D70, &qword_1C5878B18);
  v10 = *(sub_1C584EEC0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1C584EEC0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C574C64C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D58, &unk_1C5878DF0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D60, &qword_1C5878B00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1C574C780(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C584EE90();
  sub_1C574F490(&unk_1EC16D8A0, MEMORY[0x1E69AE068]);
  v5 = sub_1C584F5E0();

  return sub_1C574C818(a1, v5);
}

unint64_t sub_1C574C818(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1C584EE90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_1C574F490(&qword_1EC16D898, MEMORY[0x1E69AE068]);
      v17 = sub_1C584F620();
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

uint64_t sub_1C574C9D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PlaceActionBarItem(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C584EE90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D68, &unk_1C5878B08);
  v50 = a2;
  result = sub_1C584FD40();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_1C574F55C(v33 + v34 * v30, v54, type metadata accessor for PlaceActionBarItem);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_1C574F5C4(v35 + v34 * v30, v54, type metadata accessor for PlaceActionBarItem);
      }

      v36 = *(v18 + 40);
      sub_1C574F490(&unk_1EC16D8A0, MEMORY[0x1E69AE068]);
      result = sub_1C584F5E0();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_1C574F55C(v54, *(v18 + 56) + v34 * v26, type metadata accessor for PlaceActionBarItem);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

char *sub_1C574CE78()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceActionBarItem(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1C584EE90();
  v44 = *(v40 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v40, v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D68, &unk_1C5878B08);
  v9 = *v0;
  v10 = sub_1C584FD30();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v43 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v36 = v44 + 32;
    v37 = v44 + 16;
    v38 = v9;
    v21 = v44;
    v22 = v11;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = *(v21 + 72) * v26;
        v29 = v39;
        v28 = v40;
        (*(v21 + 16))(v39, *(v9 + 48) + v27, v40);
        v30 = *(v9 + 56);
        v31 = v41;
        v32 = *(v42 + 72) * v26;
        sub_1C574F5C4(v30 + v32, v41, type metadata accessor for PlaceActionBarItem);
        (*(v21 + 32))(*(v22 + 48) + v27, v29, v28);
        v33 = v31;
        v9 = v38;
        result = sub_1C574F55C(v33, *(v22 + 56) + v32, type metadata accessor for PlaceActionBarItem);
        v19 = v45;
      }

      while (v45);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v34;
        v11 = v43;
        goto LABEL_18;
      }

      v25 = *(v35 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v45 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

unint64_t sub_1C574D19C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D78, &unk_1C5878B20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D68, &unk_1C5878B08);
    v9 = sub_1C584FD50();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1C56466CC(v11, v7, &qword_1EC170D78, &unk_1C5878B20);
      result = sub_1C574C780(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1C584EE90();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = type metadata accessor for PlaceActionBarItem(0);
      result = sub_1C574F55C(&v7[v10], v18 + *(*(v19 - 8) + 72) * v15, type metadata accessor for PlaceActionBarItem);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C574D3B8(uint64_t a1)
{
  v157 = type metadata accessor for PlaceActionBarItem(0);
  v155 = *(v157 - 8);
  v2 = *(v155 + 64);
  v4 = MEMORY[0x1EEE9AC00](v157, v3);
  v166 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v172 = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v156 = &v136 - v11;
  v165 = sub_1C584EEC0();
  v159 = *(v165 - 8);
  v12 = *(v159 + 64);
  v14 = MEMORY[0x1EEE9AC00](v165, v13);
  v167 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v136 - v17;
  v19 = sub_1C584EE90();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v171 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v145 = &v136 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v169 = (&v136 - v29);
  v30 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v31 = *(v30 - 1);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v146 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v158 = &v136 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v144 = &v136 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v143 = &v136 - v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v136 - v46;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = sub_1C574D19C(MEMORY[0x1E69E7CC0]);
  v51 = *(a1 + 16);
  if (!v51)
  {
    return v48;
  }

  v170 = v18;
  v52 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v154 = (v20 + 104);
  v142 = *MEMORY[0x1E69AE058];
  v161 = (v159 + 32);
  v150 = (v20 + 16);
  v141 = *MEMORY[0x1E69AE040];
  v152 = (v159 + 16);
  v139 = v20;
  v149 = (v20 + 8);
  v148 = (v159 + 8);
  v168 = MEMORY[0x1E69E7CC0];
  v53 = *(v31 + 72);
  *&v50 = 136315394;
  v140 = v50;
  v162 = v19;
  v151 = v30;
  v54 = v158;
  v153 = (v159 + 48);
  v147 = v53;
  while (1)
  {
    sub_1C574F5C4(v52, v47, type metadata accessor for PlaceActionBarLayoutItem);
    v55 = &v47[v30[5]];
    if (v55[16])
    {
      sub_1C574F62C(v47, type metadata accessor for PlaceActionBarLayoutItem);
      goto LABEL_4;
    }

    v56 = *v55;
    v163 = *(v55 + 1);
    v57 = *((*MEMORY[0x1E69E7D40] & *v56) + 0x50);
    v164 = v56;
    v58 = v56;
    v57(&v177);
    v176 = v177;
    v175 = 8;
    sub_1C56441DC();
    sub_1C584F730();
    sub_1C584F730();
    if (v174 == v173)
    {
      if (qword_1EC17B030 != -1)
      {
        swift_once();
      }

      v59 = sub_1C584F2C0();
      __swift_project_value_buffer(v59, qword_1EC17B038);
      v60 = v143;
      sub_1C574F5C4(v47, v143, type metadata accessor for PlaceActionBarLayoutItem);
      v61 = v144;
      sub_1C574F5C4(v47, v144, type metadata accessor for PlaceActionBarLayoutItem);
      v62 = sub_1C584F2A0();
      v63 = sub_1C584F990();
      if (os_log_type_enabled(v62, v63))
      {
        LODWORD(v138) = v63;
        v160 = v49;
        v64 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v174 = v137;
        *v64 = v140;
        v65 = (v60 + v30[6]);
        v66 = v30;
        v67 = *v65;
        v68 = v65[1];

        sub_1C574F62C(v60, type metadata accessor for PlaceActionBarLayoutItem);
        v69 = sub_1C5649518(v67, v68, &v174);

        *(v64 + 4) = v69;
        *(v64 + 12) = 2080;
        v70 = (v61 + v66[7]);
        if (v70[1])
        {
          v71 = *v70;
          v72 = v70[1];
        }

        else
        {
          v72 = 0xE500000000000000;
          v71 = 0x3E6C696E3CLL;
        }

        sub_1C574F62C(v61, type metadata accessor for PlaceActionBarLayoutItem);
        v88 = sub_1C5649518(v71, v72, &v174);

        *(v64 + 14) = v88;
        _os_log_impl(&dword_1C5620000, v62, v138, "building directions action with symbol name: %s, title: %s", v64, 0x16u);
        v89 = v137;
        swift_arrayDestroy();
        MEMORY[0x1C694B7A0](v89, -1, -1);
        MEMORY[0x1C694B7A0](v64, -1, -1);

        v19 = v162;
        v30 = v151;
        v49 = v160;
      }

      else
      {

        sub_1C574F62C(v61, type metadata accessor for PlaceActionBarLayoutItem);
        sub_1C574F62C(v60, type metadata accessor for PlaceActionBarLayoutItem);
      }

      v90 = &v47[v30[6]];
      v91 = *v90;
      v92 = *(v90 + 1);
      v93 = &v47[v30[7]];
      v94 = *v93;
      v95 = *(v93 + 1);
      v96 = v169;
      *v169 = v91;
      v96[1] = v92;
      v96[2] = v94;
      v96[3] = v95;
      (*v154)();
    }

    else
    {
      v160 = v49;
      v73 = v146;
      if (qword_1EC17B030 != -1)
      {
        swift_once();
      }

      v74 = sub_1C584F2C0();
      __swift_project_value_buffer(v74, qword_1EC17B038);
      sub_1C574F5C4(v47, v54, type metadata accessor for PlaceActionBarLayoutItem);
      sub_1C574F5C4(v47, v73, type metadata accessor for PlaceActionBarLayoutItem);
      v75 = sub_1C584F2A0();
      v76 = sub_1C584F990();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v174 = v138;
        *v77 = v140;
        v78 = (v54 + v30[6]);
        v79 = v30;
        v80 = *v78;
        v81 = v78[1];

        sub_1C574F62C(v54, type metadata accessor for PlaceActionBarLayoutItem);
        v82 = sub_1C5649518(v80, v81, &v174);

        *(v77 + 4) = v82;
        *(v77 + 12) = 2080;
        v83 = v79[7];
        v84 = v146;
        v85 = &v146[v83];
        if (v85[1])
        {
          v86 = *v85;
          v87 = v85[1];
        }

        else
        {
          v87 = 0xE500000000000000;
          v86 = 0x3E6C696E3CLL;
        }

        sub_1C574F62C(v84, type metadata accessor for PlaceActionBarLayoutItem);
        v97 = sub_1C5649518(v86, v87, &v174);

        *(v77 + 14) = v97;
        _os_log_impl(&dword_1C5620000, v75, v76, "building custom action with symbol name: %s, title: %s", v77, 0x16u);
        v98 = v138;
        swift_arrayDestroy();
        MEMORY[0x1C694B7A0](v98, -1, -1);
        MEMORY[0x1C694B7A0](v77, -1, -1);

        v19 = v162;
        v30 = v151;
      }

      else
      {

        sub_1C574F62C(v73, type metadata accessor for PlaceActionBarLayoutItem);
        sub_1C574F62C(v54, type metadata accessor for PlaceActionBarLayoutItem);
      }

      v99 = &v47[v30[6]];
      v100 = *v99;
      v101 = *(v99 + 1);
      v102 = &v47[v30[7]];
      v103 = *v102;
      v104 = *(v102 + 1);
      v105 = &v47[v30[9]];
      v106 = *v105;
      v107 = *(v105 + 1);
      v108 = v169;
      *v169 = v100;
      v108[1] = v101;
      v108[2] = v103;
      v108[3] = v104;
      v108[4] = v106;
      v108[5] = v107;
      (*v154)();

      v49 = v160;
    }

    v109 = v153;

    v110 = v156;
    sub_1C56466CC(v47, v156, &unk_1EC170510, qword_1C5877770);
    v111 = *v109;
    v112 = v165;
    if ((*v109)(v110, 1, v165) == 1)
    {
      (*v150)(v145, v169, v19);
      v113 = v170;
      v30 = v151;
      sub_1C584EEB0();
      if (v111(v110, 1, v112) != 1)
      {
        sub_1C5625230(v110, &unk_1EC170510, qword_1C5877770);
      }
    }

    else
    {
      v113 = v170;
      (*v161)(v170, v110, v112);
    }

    v114 = *v152;
    v115 = v172;
    (*v152)(v172, v113, v112);
    sub_1C574F5C4(v47, v115 + *(v157 + 20), type metadata accessor for PlaceActionBarLayoutItem);
    v114(v167, v113, v112);
    v116 = v168;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_1C574C474(0, v116[2] + 1, 1, v116);
    }

    v19 = v162;
    v118 = v116[2];
    v117 = v116[3];
    if (v118 >= v117 >> 1)
    {
      v116 = sub_1C574C474(v117 > 1, v118 + 1, 1, v116);
    }

    v116[2] = v118 + 1;
    v119 = (*(v159 + 32))(v116 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v118, v167, v112);
    v120 = v171;
    MEMORY[0x1C6949550](v119);
    sub_1C574F5C4(v172, v166, type metadata accessor for PlaceActionBarItem);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v174 = v49;
    v122 = sub_1C574C780(v120);
    v124 = v49[2];
    v125 = (v123 & 1) == 0;
    v126 = __OFADD__(v124, v125);
    v127 = v124 + v125;
    if (v126)
    {
      break;
    }

    v128 = v123;
    if (v49[3] >= v127)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v134 = v122;
        sub_1C574CE78();
        v122 = v134;
      }
    }

    else
    {
      sub_1C574C9D8(v127, isUniquelyReferenced_nonNull_native);
      v122 = sub_1C574C780(v171);
      if ((v128 & 1) != (v129 & 1))
      {
        goto LABEL_48;
      }
    }

    v49 = v174;
    v168 = v116;
    if (v128)
    {
      sub_1C574F4F8(v166, v174[7] + *(v155 + 72) * v122);
    }

    else
    {
      v174[(v122 >> 6) + 8] |= 1 << v122;
      v130 = v122;
      (*(v139 + 16))(v49[6] + *(v139 + 72) * v122, v171, v19);
      sub_1C574F55C(v166, v49[7] + *(v155 + 72) * v130, type metadata accessor for PlaceActionBarItem);
      v131 = v49[2];
      v126 = __OFADD__(v131, 1);
      v132 = v131 + 1;
      if (v126)
      {
        goto LABEL_47;
      }

      v49[2] = v132;
    }

    sub_1C574F2F0(v164, v163, 0);
    v133 = *v149;
    (*v149)(v171, v19);
    sub_1C574F62C(v172, type metadata accessor for PlaceActionBarItem);
    (*v148)(v170, v165);
    v133(v169, v19);
    sub_1C574F62C(v47, type metadata accessor for PlaceActionBarLayoutItem);
    v54 = v158;
    v53 = v147;
LABEL_4:
    v52 += v53;
    if (!--v51)
    {
      return v168;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

void sub_1C574E2FC(uint64_t a1)
{
  v2 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = &v8[*(v5 + 20)];
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_1C574F5C4(v12, v8, type metadata accessor for PlaceActionBarLayoutItem);
      v18 = *v11;
      v17 = *(v11 + 1);
      v19 = v11[16];
      sub_1C5716310(*v11, v17, v11[16]);
      v20 = sub_1C574F62C(v8, type metadata accessor for PlaceActionBarLayoutItem);
      if (v19)
      {
        if (v19 == 1)
        {
          MEMORY[0x1C6949DF0](v20);
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v21 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1C584F7A0();
          }

          sub_1C584F7E0();
          v9 = v24;
          goto LABEL_5;
        }

        v14 = v18;
        v15 = v17;
        v16 = 2;
      }

      else
      {
        v14 = v18;
        v15 = v17;
        v16 = 0;
      }

      sub_1C574F2F0(v14, v15, v16);
LABEL_5:
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  if (v9 >> 62)
  {
    if (!sub_1C584FB90())
    {
      goto LABEL_18;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:

    return;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C694A320](0, v9);
    goto LABEL_18;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v9 + 32);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t (*sub_1C574E534(uint64_t a1))(uint64_t, uint64_t)
{
  v2 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = &v8[*(v5 + 20)];
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C574F5C4(v11, v8, type metadata accessor for PlaceActionBarLayoutItem);
      v18 = *v10;
      v17 = *(v10 + 1);
      v19 = v10[16];
      sub_1C5716310(*v10, v17, v10[16]);
      sub_1C574F62C(v8, type metadata accessor for PlaceActionBarLayoutItem);
      if (v19)
      {
        if (v19 != 1)
        {
          v20 = swift_allocObject();
          *(v20 + 16) = v18;
          *(v20 + 24) = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1C574C64C(0, v13[2] + 1, 1, v13);
          }

          v22 = v13[2];
          v21 = v13[3];
          if (v22 >= v21 >> 1)
          {
            v13 = sub_1C574C64C((v21 > 1), v22 + 1, 1, v13);
          }

          v13[2] = v22 + 1;
          v23 = &v13[2 * v22];
          v23[4] = sub_1C574F68C;
          v23[5] = v20;
          goto LABEL_5;
        }

        v14 = v18;
        v15 = v17;
        v16 = 1;
      }

      else
      {
        v14 = v18;
        v15 = v17;
        v16 = 0;
      }

      sub_1C574F2F0(v14, v15, v16);
LABEL_5:
      v11 += v12;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_15:
  if (v13[2])
  {
    v25 = v13[4];
    v24 = v13[5];

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    return sub_1C574F6C0;
  }

  else
  {

    return 0;
  }
}

id sub_1C574E79C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for PlaceActionBarItem(0);
  v141 = *(v4 - 8);
  v5 = *(v141 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v145 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v139 = &v125 - v10;
  v148 = sub_1C584EE90();
  v11 = *(v148 - 8);
  v12 = v11[8];
  v14 = MEMORY[0x1EEE9AC00](v148, v13);
  v147 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v142 = &v125 - v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D50, &unk_1C5878AE0);
  v18 = *(*(v140 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v140, v19);
  v144 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v138 = &v125 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v28 = &v125 - v27;
  v29 = type metadata accessor for PlaceActionBarLayoutItem(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu;
  *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenu] = 0;
  v35 = &v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider];
  *v35 = 0;
  v35[1] = 0;
  v128 = v35;
  sub_1C584EF70();
  *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController_configuration] = a1;
  v36 = a1;
  v37 = sub_1C574D19C(MEMORY[0x1E69E7CC0]);
  v38 = &v36[OBJC_IVAR___MUPlaceActionBarConfiguration_layout];
  sub_1C56466CC(&v36[OBJC_IVAR___MUPlaceActionBarConfiguration_layout], v28, &qword_1EC16FE18, &unk_1C5877850);
  v39 = (*(v30 + 48))(v28, 1, v29);
  v143 = v11;
  v130 = v2;
  if (v39 == 1)
  {
    sub_1C5625230(v28, &qword_1EC16FE18, &unk_1C5877850);
    *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__primaryViewModels] = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v126 = v38;
  sub_1C574F55C(v28, v34, type metadata accessor for PlaceActionBarLayoutItem);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170A50, &unk_1C5878AF0);
  v40 = *(v30 + 72);
  v41 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C5867900;
  sub_1C574F5C4(v34, v42 + v41, type metadata accessor for PlaceActionBarLayoutItem);
  v43 = sub_1C574D3B8(v42);
  v45 = v44;
  swift_setDeallocating();
  sub_1C574F62C(v42 + v41, type metadata accessor for PlaceActionBarLayoutItem);
  swift_deallocClassInstance();
  *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__primaryViewModels] = v43;
  v46 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 64);
  v50 = (v47 + 63) >> 6;
  v137 = v11 + 2;
  v131 = (v11 + 1);
  v125 = v43;

  v135 = v45;

  v51 = 0;
  v133 = v45 + 64;
  v134 = v34;
  v132 = v50;
LABEL_8:
  if (v49)
  {
    v146 = v37;
    goto LABEL_14;
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v52 >= v50)
    {

      sub_1C574F62C(v34, type metadata accessor for PlaceActionBarLayoutItem);

      v2 = v130;
      v11 = v143;
      v38 = v126;
LABEL_25:
      v77 = *&v38[*(type metadata accessor for PlaceActionBarLayout(0) + 20)];

      v79 = sub_1C574D3B8(v78);
      v81 = v80;
      v134 = v77;

      *&v2[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__secondaryViewModels] = v79;
      v82 = v81 + 64;
      v83 = 1 << *(v81 + 32);
      v84 = -1;
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      v85 = v84 & *(v81 + 64);
      v86 = (v83 + 63) >> 6;
      v142 = (v11 + 2);
      v135 = (v11 + 1);
      v133 = v79;

      v138 = v81;

      v87 = 0;
      v136 = v86;
      v137 = (v81 + 64);
      v88 = v144;
LABEL_30:
      if (!v85)
      {
        while (1)
        {
          v89 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            break;
          }

          if (v89 >= v86)
          {

            sub_1C574E2FC(v112);
            v114 = v113;

            v115 = v130;
            v116 = v37;
            v117 = v127;

            *&v115[v117] = v114;

            v119 = sub_1C574E534(v118);
            v121 = v120;

            v122 = v128;
            v123 = v128[1];
            sub_1C5632FA8(*v128);
            *v122 = v119;
            v122[1] = v121;
            *&v115[OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__idsByItems] = v116;
            v149.receiver = v115;
            v149.super_class = ObjectType;
            return objc_msgSendSuper2(&v149, sel_init);
          }

          v85 = *(v82 + 8 * v89);
          ++v87;
          if (v85)
          {
            v146 = v37;
            v87 = v89;
            goto LABEL_36;
          }
        }

        __break(1u);
        break;
      }

      v146 = v37;
LABEL_36:
      v90 = __clz(__rbit64(v85)) | (v87 << 6);
      v91 = v138;
      v92 = *(v138 + 48);
      v139 = v11[9];
      v93 = v11[2];
      v94 = v148;
      v93(v88, v92 + v139 * v90, v148);
      v95 = *(v141 + 72);
      v96 = *(v91 + 56) + v95 * v90;
      v97 = *(v140 + 48);
      sub_1C574F5C4(v96, v88 + v97, type metadata accessor for PlaceActionBarItem);
      v98 = v147;
      v93(v147, v88, v94);
      sub_1C574F5C4(v88 + v97, v145, type metadata accessor for PlaceActionBarItem);
      v99 = v146;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v99;
      v101 = sub_1C574C780(v98);
      v103 = v99[2];
      v104 = (v102 & 1) == 0;
      v69 = __OFADD__(v103, v104);
      v105 = v103 + v104;
      if (v69)
      {
        goto LABEL_49;
      }

      v106 = v102;
      if (v99[3] >= v105)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_41;
        }

        v111 = v101;
        sub_1C574CE78();
        v101 = v111;
        v37 = v150;
        if (v106)
        {
          goto LABEL_28;
        }

LABEL_42:
        v37[(v101 >> 6) + 8] |= 1 << v101;
        v108 = v101;
        v93(v37[6] + v101 * v139, v147, v148);
        sub_1C574F55C(v145, v37[7] + v108 * v95, type metadata accessor for PlaceActionBarItem);
        v109 = v37[2];
        v69 = __OFADD__(v109, 1);
        v110 = v109 + 1;
        if (v69)
        {
          goto LABEL_51;
        }

        v37[2] = v110;
      }

      else
      {
        sub_1C574C9D8(v105, isUniquelyReferenced_nonNull_native);
        v101 = sub_1C574C780(v147);
        if ((v106 & 1) != (v107 & 1))
        {
          goto LABEL_53;
        }

LABEL_41:
        v37 = v150;
        if ((v106 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_28:
        sub_1C574F4F8(v145, v37[7] + v101 * v95);
      }

      v85 &= v85 - 1;
      (*v135)(v147, v148);
      sub_1C5625230(v144, &qword_1EC170D50, &unk_1C5878AE0);
      v11 = v143;
      v86 = v136;
      v82 = v137;
      goto LABEL_30;
    }

    v49 = *(v46 + 8 * v52);
    ++v51;
    if (v49)
    {
      v146 = v37;
      v51 = v52;
LABEL_14:
      v53 = __clz(__rbit64(v49)) | (v51 << 6);
      v54 = v135;
      v55 = v135[6];
      v136 = v143[9];
      v56 = v143[2];
      v57 = v138;
      v58 = v148;
      v56(v138, v55 + v136 * v53, v148);
      v59 = v54[7];
      v60 = *(v141 + 72);
      v61 = *(v140 + 48);
      sub_1C574F5C4(v59 + v60 * v53, v57 + v61, type metadata accessor for PlaceActionBarItem);
      v62 = v142;
      v56(v142, v57, v58);
      sub_1C574F5C4(v57 + v61, v139, type metadata accessor for PlaceActionBarItem);
      v63 = v146;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v150 = v63;
      v65 = sub_1C574C780(v62);
      v67 = v63[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_50;
      }

      v71 = v66;
      if (v63[3] >= v70)
      {
        if (v64)
        {
          goto LABEL_19;
        }

        v76 = v65;
        sub_1C574CE78();
        v65 = v76;
        v37 = v150;
        if (v71)
        {
          goto LABEL_6;
        }

LABEL_20:
        v37[(v65 >> 6) + 8] |= 1 << v65;
        v73 = v65;
        v56(v37[6] + v65 * v136, v142, v148);
        sub_1C574F55C(v139, v37[7] + v73 * v60, type metadata accessor for PlaceActionBarItem);
        v74 = v37[2];
        v69 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (!v69)
        {
          v37[2] = v75;
          goto LABEL_7;
        }

        goto LABEL_52;
      }

      sub_1C574C9D8(v70, v64);
      v65 = sub_1C574C780(v142);
      if ((v71 & 1) != (v72 & 1))
      {
        goto LABEL_53;
      }

LABEL_19:
      v37 = v150;
      if ((v71 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_6:
      sub_1C574F4F8(v139, v37[7] + v65 * v60);
LABEL_7:
      v49 &= v49 - 1;
      (*v131)(v142, v148);
      sub_1C5625230(v138, &qword_1EC170D50, &unk_1C5878AE0);
      v46 = v133;
      v34 = v134;
      v50 = v132;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

void sub_1C574F2F0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

uint64_t sub_1C574F320()
{
  result = sub_1C584EF80();
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

uint64_t sub_1C574F40C()
{
  result = sub_1C584EEC0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlaceActionBarLayoutItem(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C574F490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C574F4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceActionBarItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C574F55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C574F5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C574F62C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C574F68C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C574F6C4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC6MapsUI24PlaceActionBarController__moreMenuProvider);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1C5633060(v1);
  return sub_1C5632FA8(v4);
}

uint64_t sub_1C574F71C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a2;
  v3(&v6, a1, &v7);
  return v6;
}

uint64_t sub_1C574F75C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t WatchPlaceRatingRowViewModel.displayStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_1C574F80C(v2, v3, v4, v5);
}

uint64_t sub_1C574F80C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t WatchPlaceRatingRowViewModel.symbol.getter()
{
  if (*(v0 + 24))
  {
    result = 0x6C69662E72617473;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *(v0 + 24);
  return result;
}

id static WatchPlaceRatingRowViewModel.viewModel(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 percentage];
  v5 = v4;
  result = [a1 numberOfRatingsUsedForScore];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = result;
  }

  return result;
}

void static WatchPlaceRatingRowViewModel.overallRatingViewModel(for:mapItem:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (![a1 supportsAppleRatings])
  {
    if ([a2 _hasUserRatingScore])
    {
      v12 = [a2 _reviewsAttribution];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 providerName];
        if (v14)
        {
          v15 = v14;
          v16 = sub_1C584F660();
          v18 = v17;

          [a2 _normalizedUserRatingScore];
          v20 = v19;
          v21 = [a2 _sampleSizeForUserRatingScore];

          *a3 = v20;
          *(a3 + 8) = v16;
          *(a3 + 16) = v18;
          *(a3 + 24) = 1;
          *(a3 + 32) = v21;
          return;
        }
      }
    }

    goto LABEL_13;
  }

  v5 = [a2 _geoMapItem];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = [v5 _overallAppleRating];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = xmmword_1C5878B30;
    return;
  }

  v7 = [a2 _geoMapItem];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [v7 _overallAppleRating];
  swift_unknownObjectRelease();
  if (v8)
  {
    [v8 percentage];
    v10 = v9;
    v11 = [v8 numberOfRatingsUsedForScore];

    if ((v11 & 0x80000000) == 0)
    {
      *a3 = v10;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = v11;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

uint64_t (*static WatchPlaceRatingRowViewModel.percentageNumberFormatter.modify())()
{
  if (qword_1EC18ED50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1C574FBBC(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  v9 = sub_1C584ECE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v15 setNumberStyle_];
  [v15 *a3];
  sub_1C584EC20();
  v16 = sub_1C584EC10();
  (*(v10 + 8))(v14, v9);
  [v15 setLocale_];

  *a5 = v15;
}

id sub_1C574FD24(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_1C574FDB0(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static WatchPlaceRatingRowViewModel.starRatingNumberFormatter.modify())()
{
  if (qword_1EC18ED60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::String __swiftcall WatchPlaceRatingRowViewModel.valueAsString()()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (qword_1EC18ED60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_1EC18ED68[0];
    v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v4 = v2;
    v5 = [v3 initWithDouble_];
    v6 = [v4 stringFromNumber_];
  }

  else
  {
    if (qword_1EC18ED50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_1EC18ED58;
    v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v4 = v7;
    v5 = [v8 initWithDouble_];
    v6 = [v4 stringFromNumber_];
  }

  v9 = v6;

  if (v9)
  {
    v10 = sub_1C584F660();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::String __swiftcall WatchPlaceRatingRowViewModel.numPeopleAsString()()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = [v2 stringFromCount_];
    v5 = sub_1C584F660();
    v7 = v6;

    v2 = v5;
    v3 = v7;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall WatchPlaceRatingRowViewModel.ratingAndPeopleString()()
{
  v19 = *v0;
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 4);
  v4 = [objc_opt_self() watchRatingAndUserScoreFormatString];
  sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C5867990;
  v6 = WatchPlaceRatingRowViewModel.valueAsString()();
  v7 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C563D3B0();
  *(v5 + 64) = v8;
  *(v5 + 32) = v6;
  v9 = objc_opt_self();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = [v9 stringFromCount_];
    v12 = sub_1C584F660();
    v14 = v13;

    *(v5 + 96) = v7;
    *(v5 + 104) = v8;
    *(v5 + 72) = v12;
    *(v5 + 80) = v14;
    v15 = sub_1C584F670();
    v17 = v16;

    v9 = v15;
    v10 = v17;
  }

  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1C5750230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5750278(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C57502E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5750330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

id MUPlaceActionBarType.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUPlaceActionBarType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MUPlaceActionBarType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUPlaceActionBarType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MUPlaceActionBarTypeAdd.added.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUPlaceActionBarTypeAdd.added.setter(char a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MUPlaceActionBarTypeFavorite.favorited.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUPlaceActionBarTypeFavorite.favorited.setter(char a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C5750884(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C584F630();

  return v5;
}

uint64_t MUPlaceActionBarTypeFavorite.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170D98, &qword_1C5878C68);
  v2 = sub_1C584F680();

  MEMORY[0x1C6949D90](0x7469726F76616620, 0xEC000000203A6465);
  v3 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v1 + v3))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1C6949D90](v4, v5);

  return v2;
}

uint64_t MUPlaceActionBarTypeRate.rated.getter()
{
  v1 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUPlaceActionBarTypeRate.rated.setter(char a1)
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C5750BFC(char a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  v5[v6] = 0;
  swift_beginAccess();
  v5[v6] = a1;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C5750C7C(char a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  v2[v6] = 0;
  swift_beginAccess();
  v2[v6] = a1;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1C5750CFC(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4)
{
  ObjectType = swift_getObjectType();
  v8 = *a4;
  a1[v8] = 0;
  swift_beginAccess();
  a1[v8] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1C5750DB4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = sub_1C584F680();
  MEMORY[0x1C6949D90](a3, 0xE800000000000000);
  v9 = *a4;
  swift_beginAccess();
  if (*(v4 + v9))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v4 + v9))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1C6949D90](v10, v11);

  return v13;
}

uint64_t MUPlaceActionBarTypeDirections.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170DC0, &qword_1C5878C78);
  v2 = sub_1C584F680();

  v10 = v2;
  MEMORY[0x1C6949D90](0x74696C61646F6D20, 0xEB00000000203A79);
  v3 = (v0 + OBJC_IVAR___MUPlaceActionBarTypeDirections_modality);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  MEMORY[0x1C6949D90](v4, v5);

  MEMORY[0x1C6949D90](0x203A617465202CLL, 0xE700000000000000);
  v6 = (v1 + OBJC_IVAR___MUPlaceActionBarTypeDirections_eta);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1C6949D90](v7, v8);

  return v10;
}

id sub_1C57512F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_1C584F630();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1C5751388(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1C57513E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C584F660();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C5751470(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

id sub_1C5751540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[*a5];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[*a6];
  *v15 = a1;
  *(v15 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1C57515F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[*a5];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[*a6];
  *v15 = a1;
  *(v15 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  v17.receiver = v6;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1C57516B0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  ObjectType = swift_getObjectType();
  v11 = sub_1C584F660();
  v13 = v12;
  if (a4)
  {
    a4 = sub_1C584F660();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = &a1[*a5];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a1[*a6];
  *v17 = v11;
  v17[1] = v13;
  swift_beginAccess();
  *v16 = a4;
  v16[1] = v15;
  v19.receiver = a1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t MUPlaceActionBarTypeCustom.description.getter()
{
  v1 = v0;
  sub_1C584FC50();
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170DD8, &qword_1C5878C80);
  v2 = sub_1C584F680();

  v10 = v2;
  MEMORY[0x1C6949D90](0x4E6C6F626D797320, 0xED0000203A656D61);
  v3 = (v0 + OBJC_IVAR___MUPlaceActionBarTypeCustom_symbolName);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];

  MEMORY[0x1C6949D90](v4, v5);

  MEMORY[0x1C6949D90](0x203A74786574202CLL, 0xE800000000000000);
  v6 = (v1 + OBJC_IVAR___MUPlaceActionBarTypeCustom_text);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x1C6949D90](v7, v8);

  return v10;
}