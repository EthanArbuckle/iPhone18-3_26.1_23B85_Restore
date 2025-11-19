void sub_218E3FFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_218E40014(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_218E3FFAC(255, &qword_27CC129A8, sub_218E3E52C, &type metadata for SearchTagType, MEMORY[0x277D83B48]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218E400B8()
{
  result = qword_27CC129D8;
  if (!qword_27CC129D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC129D8);
  }

  return result;
}

unint64_t sub_218E40188()
{
  result = qword_27CC129E0;
  if (!qword_27CC129E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC129E0);
  }

  return result;
}

unint64_t sub_218E401E0()
{
  result = qword_27CC129E8;
  if (!qword_27CC129E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC129E8);
  }

  return result;
}

unint64_t sub_218E40238()
{
  result = qword_27CC129F0;
  if (!qword_27CC129F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC129F0);
  }

  return result;
}

uint64_t dispatch thunk of StreamingArticleResults.expand(location:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

uint64_t sub_218E40304()
{
  sub_21896FA3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - v6;
  v8 = type metadata accessor for WebLinkRouteModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  sub_218FEB4D0(0, 0, v0, &off_282A4B978, v10);
  v11 = v0[13];
  type metadata accessor for WebLinkViewControllerType(0);
  v12 = swift_allocBox();
  sub_218E40AD8(v10, v13, type metadata accessor for WebLinkRouteModel);
  swift_storeEnumTagMultiPayload();
  v27[1] = v12;
  v14 = sub_219BDFA44();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = v11;
  sub_2187B14CC(v33, &v28, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v29 + 1))
  {
    sub_21875F93C(&v28, v30);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v16 = qword_280ED32D8;
    v15 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    sub_2188202A8(v15);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_2187448D0(&v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v16 = qword_280ED32D8;
    v15 = qword_280ED32E0;
    v17 = qword_280ED32E8;

    sub_2188202A8(v15);
  }

  v27[3] = v12 | 0xB000000000000000;
  v29 = 0u;
  v28 = 0u;
  sub_218E40AD8(v7, v5, sub_21896FA3C);
  sub_2187B14CC(v35, v30, &qword_280EE33A0, &qword_280EE33B0);
  v18 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v19 = (v3 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
  v27[0] = v7;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  sub_2189B4EAC(v5, v21 + v18);
  v22 = v21 + v19;
  v23 = v30[1];
  *v22 = v30[0];
  *(v22 + 16) = v23;
  *(v22 + 32) = v31;
  v24 = (v21 + v20);
  v25 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v24 = 0;
  v24[1] = 0;
  *v25 = v16;
  v25[1] = v15;
  v25[2] = v17;

  sub_2188202A8(v15);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v15);
  sub_2187448D0(v33, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v35, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218E40B40(v27[0], sub_21896FA3C);
  sub_218E40B40(v10, type metadata accessor for WebLinkRouteModel);
  sub_2187448D0(&v28, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218E409B8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_218E40A08(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  result = sub_219BDD154();
  if (a1 == 1)
  {

    sub_219BE3494();
  }

  return result;
}

uint64_t sub_218E40AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E40B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218E40BA4(void (*a1)(void, void), uint64_t a2, uint64_t a3)
{
  v469 = a1;
  v442 = a2;
  v4 = type metadata accessor for CustomItemRouteModel();
  MEMORY[0x28223BE20](v4 - 8);
  v459 = &v425[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v437 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v437);
  v458 = &v425[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for WebEmbedRouteModel();
  MEMORY[0x28223BE20](v7 - 8);
  v438 = &v425[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_219BDD664();
  v461 = *(v9 - 8);
  v462 = v9;
  MEMORY[0x28223BE20](v9);
  v460 = &v425[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21896FA3C();
  v468 = *(v11 - 8);
  v12 = *(v468 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v446 = &v425[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v457 = &v425[-v14];
  MEMORY[0x28223BE20](v15);
  v445 = &v425[-v16];
  MEMORY[0x28223BE20](v17);
  v448 = &v425[-v18];
  MEMORY[0x28223BE20](v19);
  v444 = &v425[-v20];
  MEMORY[0x28223BE20](v21);
  v456 = &v425[-v22];
  MEMORY[0x28223BE20](v23);
  v443 = &v425[-v24];
  MEMORY[0x28223BE20](v25);
  v455 = &v425[-v26];
  MEMORY[0x28223BE20](v27);
  v447 = &v425[-v28];
  MEMORY[0x28223BE20](v29);
  v466 = &v425[-v30];
  MEMORY[0x28223BE20](v31);
  v429 = &v425[-v32];
  MEMORY[0x28223BE20](v33);
  v432 = &v425[-v34];
  MEMORY[0x28223BE20](v35);
  v428 = &v425[-v36];
  MEMORY[0x28223BE20](v37);
  v431 = &v425[-v38];
  MEMORY[0x28223BE20](v39);
  v430 = &v425[-v40];
  MEMORY[0x28223BE20](v41);
  v434 = &v425[-v42];
  MEMORY[0x28223BE20](v43);
  v441 = &v425[-v44];
  MEMORY[0x28223BE20](v45);
  v454 = &v425[-v46];
  MEMORY[0x28223BE20](v47);
  v439 = &v425[-v48];
  MEMORY[0x28223BE20](v49);
  v452 = &v425[-v50];
  MEMORY[0x28223BE20](v51);
  v436 = &v425[-v52];
  MEMORY[0x28223BE20](v53);
  v451 = &v425[-v54];
  MEMORY[0x28223BE20](v55);
  v440 = &v425[-v56];
  MEMORY[0x28223BE20](v57);
  v465 = &v425[-v58];
  MEMORY[0x28223BE20](v59);
  v433 = &v425[-v60];
  MEMORY[0x28223BE20](v61);
  v449 = &v425[-v62];
  v63 = sub_219BE8C14();
  v435 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v65 = &v425[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v453 = sub_219BE9414();
  v464 = *(v453 - 8);
  MEMORY[0x28223BE20](v453);
  v67 = &v425[-((v66 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v68);
  v450 = &v425[-v69];
  v70 = sub_219BDD944();
  MEMORY[0x28223BE20](v70 - 8);
  v467 = &v425[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = type metadata accessor for TagFeedRouteModel();
  MEMORY[0x28223BE20](v72);
  v74 = &v425[-((v73 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = *a3;
  v75 = *(a3 + 8);
  v77 = *(a3 + 24);
  *&v463 = *(a3 + 16);
  *(&v463 + 1) = v77;
  v78 = *(a3 + 32);
  sub_218E483CC(v469, v74, type metadata accessor for TagFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v180 = v459;
        sub_21896FA98(v74, v459, type metadata accessor for CustomItemRouteModel);
        v181 = v470[14];
        v182 = sub_219BDB954();
        v183 = swift_allocBox();
        (*(*(v182 - 8) + 16))(v184, v180, v182);
        v470 = v183;
        v185 = v183 | 0x6000000000000000;
        v186 = sub_219BDFA44();
        v187 = v448;
        (*(*(v186 - 8) + 56))(v448, 1, 1, v186);
        *&v480 = 0;
        v478 = 0u;
        v479 = 0u;
        v473 = 0;
        v471 = 0u;
        v472 = 0u;
        v476[0] = v181;
        sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (*(&v485 + 1))
        {
          sub_2186CB1F0(&v484, &v487);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v189 = qword_280ED32D8;
          v188 = qword_280ED32E0;
          v190 = qword_280ED32E8;

          v469 = v188;
          sub_2188202A8(v188);
          __swift_destroy_boxed_opaque_existential_1(&v487);
        }

        else
        {
          sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v189 = qword_280ED32D8;
          v262 = qword_280ED32E0;
          v190 = qword_280ED32E8;

          v469 = v262;
          sub_2188202A8(v262);
        }

        *&v474 = v185;
        v484 = 0u;
        v485 = 0u;
        v263 = v445;
        sub_218E483CC(v187, v445, sub_21896FA3C);
        sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v264 = (*(v468 + 80) + 24) & ~*(v468 + 80);
        v265 = (v12 + v264 + 7) & 0xFFFFFFFFFFFFFFF8;
        v266 = (v265 + 47) & 0xFFFFFFFFFFFFFFF8;
        v267 = swift_allocObject();
        *(v267 + 16) = 0;
        sub_21896FA98(v263, v267 + v264, sub_21896FA3C);
        v268 = v267 + v265;
        v269 = v488;
        *v268 = v487;
        *(v268 + 16) = v269;
        *(v268 + 32) = v489;
        v270 = (v267 + v266);
        v271 = (v267 + ((v266 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v270 = 0;
        v270[1] = 0;
        v272 = v469;
        *v271 = v189;
        v271[1] = v272;
        v271[2] = v190;

        sub_2188202A8(v272);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v272);
        sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218E48434(v187, sub_21896FA3C);
        sub_218E48434(v459, type metadata accessor for CustomItemRouteModel);
        sub_218806FD0(&v484);
      }

      if (EnumCaseMultiPayload != 10)
      {
        v228 = v470;
        v229 = v470[14];
        v230 = v470[8];
        v231 = sub_219BDFA44();
        v232 = v451;
        (*(*(v231 - 8) + 56))(v451, 1, 1, v231);
        sub_218718690((v228 + 9), &v478);
        v473 = 0;
        v471 = 0u;
        v472 = 0u;
        v476[0] = v229;
        sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (*(&v485 + 1))
        {
          sub_2186CB1F0(&v484, &v487);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v234 = qword_280ED32D8;
          v233 = qword_280ED32E0;
          v235 = qword_280ED32E8;

          v470 = v233;
          sub_2188202A8(v233);
          __swift_destroy_boxed_opaque_existential_1(&v487);
        }

        else
        {
          sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v234 = qword_280ED32D8;
          v347 = qword_280ED32E0;
          v235 = qword_280ED32E8;

          v470 = v347;
          sub_2188202A8(v347);
        }

        *&v474 = 0xF000000000000050;
        *(&v485 + 1) = sub_219BDD274();
        *&v484 = v230;
        v348 = v230;
        v349 = v436;
        sub_218E483CC(v232, v436, sub_21896FA3C);
        sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v350 = (*(v468 + 80) + 24) & ~*(v468 + 80);
        v351 = (v12 + v350 + 7) & 0xFFFFFFFFFFFFFFF8;
        v352 = (v351 + 47) & 0xFFFFFFFFFFFFFFF8;
        v353 = swift_allocObject();
        *(v353 + 16) = v348;
        sub_21896FA98(v349, v353 + v350, sub_21896FA3C);
        v354 = v353 + v351;
        v355 = v488;
        *v354 = v487;
        *(v354 + 16) = v355;
        *(v354 + 32) = v489;
        v356 = (v353 + v352);
        v357 = (v353 + ((v352 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v356 = 0;
        v356[1] = 0;
        v358 = v470;
        *v357 = v234;
        v357[1] = v358;
        v357[2] = v235;
        swift_retain_n();

        sub_2188202A8(v358);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        v359 = v451;
        sub_219BEB464();

        sub_2187FABEC(v358);
        sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218E48434(v359, sub_21896FA3C);
        return sub_218806FD0(&v484);
      }

      v119 = *v74;
      v120 = v470;
      v121 = v470[14];
      v122 = swift_allocObject();
      *(v122 + 16) = v119;
      v469 = v122;
      v123 = v122 | 0x7000000000000004;
      v124 = v120[8];
      v125 = sub_219BDFA44();
      v126 = v457;
      (*(*(v125 - 8) + 56))(v457, 1, 1, v125);
      sub_218718690((v120 + 9), &v478);
      v473 = 0;
      v471 = 0u;
      v472 = 0u;
      v476[0] = v121;
      sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v467 = v119;
      if (*(&v485 + 1))
      {
        sub_2186CB1F0(&v484, &v487);
        v127 = qword_280ED32D0;

        if (v127 != -1)
        {
          swift_once();
        }

        v129 = qword_280ED32D8;
        v128 = qword_280ED32E0;
        v130 = qword_280ED32E8;

        v470 = v128;
        sub_2188202A8(v128);
        __swift_destroy_boxed_opaque_existential_1(&v487);
      }

      else
      {

        sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v129 = qword_280ED32D8;
        v311 = qword_280ED32E0;
        v130 = qword_280ED32E8;

        v470 = v311;
        sub_2188202A8(v311);
      }

      *&v474 = v123;
      *(&v485 + 1) = sub_219BDD274();
      *&v484 = v124;
      v312 = v446;
      sub_218E483CC(v126, v446, sub_21896FA3C);
      sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v313 = v124;
      v314 = (*(v468 + 80) + 24) & ~*(v468 + 80);
      v315 = (v12 + v314 + 7) & 0xFFFFFFFFFFFFFFF8;
      v316 = (v315 + 47) & 0xFFFFFFFFFFFFFFF8;
      v317 = swift_allocObject();
      *(v317 + 16) = v313;
      sub_21896FA98(v312, v317 + v314, sub_21896FA3C);
      v318 = v317 + v315;
      v319 = v488;
      *v318 = v487;
      *(v318 + 16) = v319;
      *(v318 + 32) = v489;
      v320 = (v317 + v316);
      v321 = (v317 + ((v316 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v320 = 0;
      v320[1] = 0;
      v322 = v470;
      *v321 = v129;
      v321[1] = v322;
      v321[2] = v130;
      swift_retain_n();

      sub_2188202A8(v322);
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v322);

      sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v361 = sub_21896FA3C;
      v362 = v457;
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v160 = v438;
        sub_21896FA98(v74, v438, type metadata accessor for WebEmbedRouteModel);
        __swift_project_boxed_opaque_existential_1(v470 + 3, v470[6]);
        sub_2186CFDE4(0, &qword_280EE5700);
        result = sub_219BE1E34();
        if (*(&v472 + 1))
        {
          sub_2186CB1F0(&v471, &v478);
          __swift_project_boxed_opaque_existential_1(&v478, *(&v479 + 1));
          sub_219BE6DC4();
          sub_218E48434(v160, type metadata accessor for WebEmbedRouteModel);
          return __swift_destroy_boxed_opaque_existential_1(&v478);
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v92 = v78;
        v94 = *v74;
        v93 = *(v74 + 1);
        v95 = *(v74 + 2);
        v96 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        *&v478 = v94;
        *(&v478 + 1) = v93;
        *&v479 = v96;
        *(&v479 + 1) = MEMORY[0x277D84F90];
        LOBYTE(v480) = 1;
        *(&v480 + 1) = v471;
        DWORD1(v480) = *(&v471 + 3);
        *(&v480 + 1) = v95;
        *&v481 = v76;
        v97 = v75;
        *(&v481 + 1) = v75;
        v98 = v463;
        v482 = v463;
        v483 = v92;
        v99 = v470;
        v100 = v470[14];
        v101 = swift_allocObject();
        v102 = v481;
        *(v101 + 48) = v480;
        *(v101 + 64) = v102;
        *(v101 + 80) = v482;
        *(v101 + 96) = v483;
        v103 = v479;
        *(v101 + 16) = v478;
        *(v101 + 32) = v103;
        v467 = (v101 | 0x2000000000000006);
        v469 = v99[8];
        v104 = sub_219BDFA44();
        (*(*(v104 - 8) + 56))(v466, 1, 1, v104);
        sub_218718690((v99 + 9), &v487);
        v486 = 0;
        v484 = 0u;
        v485 = 0u;
        v477 = v100;
        sub_2187B171C(&v484, &v474, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (v475)
        {
          sub_2186CB1F0(&v474, v476);
          sub_21897010C(v76, v97, v98, *(&v98 + 1), v92);
          sub_218B5A004(&v478, &v471);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v106 = qword_280ED32D8;
          v105 = qword_280ED32E0;
          v107 = qword_280ED32E8;

          v470 = v105;
          v465 = v107;
          sub_2188202A8(v105);
          __swift_destroy_boxed_opaque_existential_1(v476);
        }

        else
        {
          sub_21897010C(v76, v97, v98, *(&v98 + 1), v92);
          sub_218B5A004(&v478, &v471);
          sub_2187B1CC0(&v474, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v106 = qword_280ED32D8;
          v286 = qword_280ED32E0;
          v287 = qword_280ED32E8;

          v470 = v286;
          v465 = v287;
          sub_2188202A8(v286);
        }

        *&v474 = v467;
        v476[3] = sub_219BDD274();
        v288 = v469;
        v476[0] = v469;
        v289 = v447;
        sub_218E483CC(v466, v447, sub_21896FA3C);
        sub_2187B171C(&v487, &v471, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v290 = (*(v468 + 80) + 24) & ~*(v468 + 80);
        v291 = (v12 + v290 + 7) & 0xFFFFFFFFFFFFFFF8;
        v292 = (v291 + 47) & 0xFFFFFFFFFFFFFFF8;
        v293 = swift_allocObject();
        *(v293 + 16) = v288;
        sub_21896FA98(v289, v293 + v290, sub_21896FA3C);
        v294 = v293 + v291;
        v295 = v472;
        *v294 = v471;
        *(v294 + 16) = v295;
        *(v294 + 32) = v473;
        v296 = (v293 + v292);
        v297 = (v293 + ((v292 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v296 = 0;
        v296[1] = 0;
        v298 = v470;
        *v297 = v106;
        v297[1] = v298;
        v297[2] = v465;
        swift_retain_n();

        sub_2188202A8(v298);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v298);
        sub_218B5A060(&v478);
        sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218E48434(v466, sub_21896FA3C);
        v360 = v476;
        goto LABEL_103;
      }

      v203 = v458;
      sub_21896FA98(v74, v458, type metadata accessor for PuzzleModel);
      v204 = v470;
      v205 = v470[14];
      v206 = swift_allocBox();
      sub_218E483CC(v203, v207, type metadata accessor for PuzzleModel);
      v469 = v206;
      v208 = v206 | 0xE000000000000006;
      v209 = v204[8];
      v210 = sub_219BDFA44();
      v211 = v455;
      (*(*(v210 - 8) + 56))(v455, 1, 1, v210);
      sub_218718690((v204 + 9), &v478);
      v473 = 0;
      v471 = 0u;
      v472 = 0u;
      v476[0] = v205;
      sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v485 + 1))
      {
        sub_2186CB1F0(&v484, &v487);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v213 = qword_280ED32D8;
        v212 = qword_280ED32E0;
        v214 = qword_280ED32E8;

        v470 = v212;
        sub_2188202A8(v212);
        __swift_destroy_boxed_opaque_existential_1(&v487);
      }

      else
      {
        sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v213 = qword_280ED32D8;
        v335 = qword_280ED32E0;
        v214 = qword_280ED32E8;

        v470 = v335;
        sub_2188202A8(v335);
      }

      *&v474 = v208;
      *(&v485 + 1) = sub_219BDD274();
      *&v484 = v209;
      v336 = v209;
      v337 = v443;
      sub_218E483CC(v211, v443, sub_21896FA3C);
      sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v338 = (*(v468 + 80) + 24) & ~*(v468 + 80);
      v339 = (v12 + v338 + 7) & 0xFFFFFFFFFFFFFFF8;
      v340 = (v339 + 47) & 0xFFFFFFFFFFFFFFF8;
      v341 = swift_allocObject();
      *(v341 + 16) = v336;
      sub_21896FA98(v337, v341 + v338, sub_21896FA3C);
      v342 = v341 + v339;
      v343 = v488;
      *v342 = v487;
      *(v342 + 16) = v343;
      *(v342 + 32) = v489;
      v344 = (v341 + v340);
      v345 = (v341 + ((v340 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v344 = 0;
      v344[1] = 0;
      v346 = v470;
      *v345 = v213;
      v345[1] = v346;
      v345[2] = v214;
      swift_retain_n();

      sub_2188202A8(v346);
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v346);
      sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218E48434(v455, sub_21896FA3C);
      v361 = type metadata accessor for PuzzleModel;
      v362 = v458;
    }

LABEL_104:
    sub_218E48434(v362, v361);
LABEL_105:
    sub_218806FD0(&v484);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v162 = *v74;
      v466 = v470[14];
      v163 = objc_allocWithZone(type metadata accessor for FeedViewContext());
      v427 = v76;
      v164 = v75;
      v165 = v463;
      sub_21897010C(v76, v75, v463, *(&v463 + 1), v78);
      v467 = [v163 init];
      v166 = v78;
      v167 = swift_allocObject();
      v469 = v162;
      v168 = [v162 identifier];
      v169 = sub_219BF5414();
      v171 = v170;

      *(v167 + 16) = v169;
      *(v167 + 24) = v171;
      *(v167 + 32) = v467;
      *(v167 + 40) = 0;
      *(v167 + 48) = 1;
      *(v167 + 56) = 5;
      *(v167 + 64) = v427;
      *(v167 + 72) = v164;
      *(v167 + 80) = v165;
      *(v167 + 96) = v166;
      v467 = v167;
      v172 = v167 | 0x2000000000000006;
      v173 = v470;
      v174 = v470[8];
      v175 = sub_219BDFA44();
      v176 = v454;
      (*(*(v175 - 8) + 56))(v454, 1, 1, v175);
      sub_218718690((v173 + 9), &v478);
      v473 = 0;
      v471 = 0u;
      v472 = 0u;
      v476[0] = v466;
      sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v485 + 1))
      {
        sub_2186CB1F0(&v484, &v487);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v178 = qword_280ED32D8;
        v177 = qword_280ED32E0;
        v179 = qword_280ED32E8;

        v470 = v177;
        sub_2188202A8(v177);
        __swift_destroy_boxed_opaque_existential_1(&v487);
      }

      else
      {
        sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v178 = qword_280ED32D8;
        v251 = qword_280ED32E0;
        v179 = qword_280ED32E8;

        v470 = v251;
        sub_2188202A8(v251);
      }

      *&v474 = v172;
      *(&v485 + 1) = sub_219BDD274();
      *&v484 = v174;
      v252 = v441;
      sub_218E483CC(v176, v441, sub_21896FA3C);
      sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v253 = (*(v468 + 80) + 24) & ~*(v468 + 80);
      v254 = (v12 + v253 + 7) & 0xFFFFFFFFFFFFFFF8;
      v255 = (v254 + 47) & 0xFFFFFFFFFFFFFFF8;
      v256 = swift_allocObject();
      *(v256 + 16) = v174;
      sub_21896FA98(v252, v256 + v253, sub_21896FA3C);
      v257 = v256 + v254;
      v258 = v488;
      *v257 = v487;
      *(v257 + 16) = v258;
      *(v257 + 32) = v489;
      v259 = (v256 + v255);
      v260 = (v256 + ((v255 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v259 = 0;
      v259[1] = 0;
      v261 = v470;
      *v260 = v178;
      v260[1] = v261;
      v260[2] = v179;
      swift_retain_n();

      sub_2188202A8(v261);
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      swift_unknownObjectRelease();

      sub_2187FABEC(v261);
      sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218E48434(v454, sub_21896FA3C);
      goto LABEL_105;
    }

    if (EnumCaseMultiPayload != 4)
    {
      v215 = v75;
      v216 = v470;
      (*(v461 + 32))(v460, v74, v462);
      v217 = [sub_219BDD654() isPuzzleHub];
      swift_unknownObjectRelease();
      if (v217)
      {
        v218 = v216[14];
        v219 = swift_allocObject();
        v220 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        *(v219 + 24) = 0;
        *(v219 + 32) = 0;
        *(v219 + 16) = v220;
        *(v219 + 40) = 1;
        v469 = v219;
        v221 = v219 | 0xE000000000000002;
        v222 = v216[8];
        v223 = sub_219BDFA44();
        v224 = v434;
        (*(*(v223 - 8) + 56))(v434, 1, 1, v223);
        sub_218718690((v216 + 9), &v478);
        v473 = 0;
        v471 = 0u;
        v472 = 0u;
        v476[0] = v218;
        sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (*(&v485 + 1))
        {
          sub_2186CB1F0(&v484, &v487);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v226 = qword_280ED32D8;
          v225 = qword_280ED32E0;
          v227 = qword_280ED32E8;

          v470 = v225;
          sub_2188202A8(v225);
          __swift_destroy_boxed_opaque_existential_1(&v487);
        }

        else
        {
          sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v226 = qword_280ED32D8;
          v389 = qword_280ED32E0;
          v227 = qword_280ED32E8;

          v470 = v389;
          sub_2188202A8(v389);
        }

        *&v474 = v221;
        *(&v485 + 1) = sub_219BDD274();
        *&v484 = v222;
        v390 = v222;
        v391 = v430;
        sub_218E483CC(v224, v430, sub_21896FA3C);
        sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v392 = (*(v468 + 80) + 24) & ~*(v468 + 80);
        v393 = (v12 + v392 + 7) & 0xFFFFFFFFFFFFFFF8;
        v394 = (v393 + 47) & 0xFFFFFFFFFFFFFFF8;
        v395 = swift_allocObject();
        *(v395 + 16) = v390;
        sub_21896FA98(v391, v395 + v392, sub_21896FA3C);
        v396 = v395 + v393;
        v397 = v488;
        *v396 = v487;
        *(v396 + 16) = v397;
        *(v396 + 32) = v489;
        v398 = (v395 + v394);
        v399 = (v395 + ((v394 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v398 = 0;
        v398[1] = 0;
        v400 = v470;
        *v399 = v226;
        v399[1] = v400;
        v399[2] = v227;
        swift_retain_n();

        sub_2188202A8(v400);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v400);
        sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218E48434(v434, sub_21896FA3C);
        (*(v461 + 8))(v460, v462);
      }

      else
      {
        v236 = [sub_219BDD654() isPuzzleType];
        swift_unknownObjectRelease();
        v469 = v216[14];
        v237 = sub_219BDD654();
        v238 = objc_allocWithZone(type metadata accessor for FeedViewContext());
        if (v236)
        {
          v239 = [v238 init];
          v240 = swift_allocObject();
          v241 = [v237 identifier];
          v242 = sub_219BF5414();
          v244 = v243;

          swift_unknownObjectRelease();
          *(v240 + 16) = v242;
          *(v240 + 24) = v244;
          *(v240 + 32) = v239;
          *(v240 + 40) = 0;
          *(v240 + 48) = 1;
          *(v240 + 56) = 10;
          *(v240 + 64) = 0u;
          *(v240 + 80) = 0u;
          *(v240 + 96) = -1;
          v245 = v216[8];
          v246 = sub_219BDFA44();
          v247 = v431;
          (*(*(v246 - 8) + 56))(v431, 1, 1, v246);
          sub_218718690((v216 + 9), &v478);
          v473 = 0;
          v471 = 0u;
          v472 = 0u;
          v476[0] = v469;
          sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (*(&v485 + 1))
          {
            sub_2186CB1F0(&v484, &v487);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v249 = qword_280ED32D8;
            v248 = qword_280ED32E0;
            v250 = qword_280ED32E8;

            v469 = v250;
            v470 = v248;
            sub_2188202A8(v248);
            __swift_destroy_boxed_opaque_existential_1(&v487);
          }

          else
          {
            sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
            if (qword_280ED32D0 != -1)
            {
              swift_once();
            }

            v249 = qword_280ED32D8;
            v401 = qword_280ED32E0;
            v402 = qword_280ED32E8;

            v469 = v402;
            v470 = v401;
            sub_2188202A8(v401);
          }

          *&v474 = v240 | 0x2000000000000006;
          *(&v485 + 1) = sub_219BDD274();
          *&v484 = v245;
          v403 = v428;
          sub_218E483CC(v247, v428, sub_21896FA3C);
          sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v404 = (*(v468 + 80) + 24) & ~*(v468 + 80);
          v405 = (v12 + v404 + 7) & 0xFFFFFFFFFFFFFFF8;
          v406 = (v405 + 47) & 0xFFFFFFFFFFFFFFF8;
          v407 = swift_allocObject();
          *(v407 + 16) = v245;
          sub_21896FA98(v403, v407 + v404, sub_21896FA3C);
          v408 = v407 + v405;
          v409 = v488;
          *v408 = v487;
          *(v408 + 16) = v409;
          *(v408 + 32) = v489;
          v410 = (v407 + v406);
          v411 = (v407 + ((v406 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v410 = 0;
          v410[1] = 0;
          v413 = v469;
          v412 = v470;
          *v411 = v249;
          v411[1] = v412;
          v411[2] = v413;
          swift_retain_n();

          sub_2188202A8(v412);
          sub_2186CF94C();
          sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
          sub_219BEB464();

          sub_2187FABEC(v412);
          sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_218E48434(v431, sub_21896FA3C);
          (*(v461 + 8))(v460, v462);
          goto LABEL_102;
        }

        v374 = v238;
        v426 = v78;
        sub_21897010C(v76, v215, v463, *(&v463 + 1), v78);
        v467 = [v374 init];
        v375 = swift_allocObject();
        v376 = [v237 identifier];
        v377 = v215;
        v378 = sub_219BF5414();
        v380 = v379;

        swift_unknownObjectRelease();
        *(v375 + 16) = v378;
        *(v375 + 24) = v380;
        *(v375 + 32) = v467;
        *(v375 + 40) = 0;
        *(v375 + 48) = 1;
        *(v375 + 56) = 0;
        *(v375 + 64) = v76;
        v381 = v463;
        *(v375 + 72) = v377;
        *(v375 + 80) = v381;
        *(v375 + 96) = v426;
        v467 = v375;
        v382 = v375 | 0x2000000000000006;
        v383 = v216[8];
        v384 = sub_219BDFA44();
        v385 = v432;
        (*(*(v384 - 8) + 56))(v432, 1, 1, v384);
        sub_218718690((v216 + 9), &v478);
        v473 = 0;
        v471 = 0u;
        v472 = 0u;
        v476[0] = v469;
        sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (*(&v485 + 1))
        {
          sub_2186CB1F0(&v484, &v487);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v387 = qword_280ED32D8;
          v386 = qword_280ED32E0;
          v388 = qword_280ED32E8;

          v470 = v386;
          sub_2188202A8(v386);
          __swift_destroy_boxed_opaque_existential_1(&v487);
        }

        else
        {
          sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
          if (qword_280ED32D0 != -1)
          {
            swift_once();
          }

          v387 = qword_280ED32D8;
          v414 = qword_280ED32E0;
          v388 = qword_280ED32E8;

          v470 = v414;
          sub_2188202A8(v414);
        }

        *&v474 = v382;
        *(&v485 + 1) = sub_219BDD274();
        *&v484 = v383;
        v415 = v429;
        sub_218E483CC(v385, v429, sub_21896FA3C);
        sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v416 = (*(v468 + 80) + 24) & ~*(v468 + 80);
        v417 = (v12 + v416 + 7) & 0xFFFFFFFFFFFFFFF8;
        v418 = (v417 + 47) & 0xFFFFFFFFFFFFFFF8;
        v419 = swift_allocObject();
        *(v419 + 16) = v383;
        sub_21896FA98(v415, v419 + v416, sub_21896FA3C);
        v420 = v419 + v417;
        v421 = v488;
        *v420 = v487;
        *(v420 + 16) = v421;
        *(v420 + 32) = v489;
        v422 = (v419 + v418);
        v423 = (v419 + ((v418 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v422 = 0;
        v422[1] = 0;
        v424 = v470;
        *v423 = v387;
        v423[1] = v424;
        v423[2] = v388;
        swift_retain_n();

        sub_2188202A8(v424);
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        sub_219BEB464();

        sub_2187FABEC(v424);
        sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218E48434(v432, sub_21896FA3C);
        (*(v461 + 8))(v460, v462);
      }

      goto LABEL_105;
    }

    v108 = *v74;
    v109 = v470;
    v110 = v470[14];
    v111 = swift_allocObject();
    *(v111 + 16) = v108;
    *(v111 + 24) = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
    *(v111 + 32) = 2;
    v469 = v111;
    v112 = v111 | 0x7000000000000000;
    v113 = v109[8];
    v114 = sub_219BDFA44();
    v115 = v456;
    (*(*(v114 - 8) + 56))(v456, 1, 1, v114);
    sub_218718690((v109 + 9), &v478);
    v473 = 0;
    v471 = 0u;
    v472 = 0u;
    v476[0] = v110;
    sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v485 + 1))
    {
      sub_2186CB1F0(&v484, &v487);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v117 = qword_280ED32D8;
      v116 = qword_280ED32E0;
      v118 = qword_280ED32E8;

      v470 = v116;
      sub_2188202A8(v116);
      __swift_destroy_boxed_opaque_existential_1(&v487);
    }

    else
    {
      sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v117 = qword_280ED32D8;
      v299 = qword_280ED32E0;
      v118 = qword_280ED32E8;

      v470 = v299;
      sub_2188202A8(v299);
    }

    *&v474 = v112;
    *(&v485 + 1) = sub_219BDD274();
    *&v484 = v113;
    v300 = v113;
    v301 = v444;
    sub_218E483CC(v115, v444, sub_21896FA3C);
    sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v302 = (*(v468 + 80) + 24) & ~*(v468 + 80);
    v303 = (v12 + v302 + 7) & 0xFFFFFFFFFFFFFFF8;
    v304 = (v303 + 47) & 0xFFFFFFFFFFFFFFF8;
    v305 = swift_allocObject();
    *(v305 + 16) = v300;
    sub_21896FA98(v301, v305 + v302, sub_21896FA3C);
    v306 = v305 + v303;
    v307 = v488;
    *v306 = v487;
    *(v306 + 16) = v307;
    *(v306 + 32) = v489;
    v308 = (v305 + v304);
    v309 = (v305 + ((v304 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v308 = 0;
    v308[1] = 0;
    v310 = v470;
    *v309 = v117;
    v309[1] = v310;
    v309[2] = v118;
    swift_retain_n();

    sub_2188202A8(v310);
    sub_2186CF94C();
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v310);
    sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v361 = sub_21896FA3C;
    v362 = v456;
    goto LABEL_104;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v80 = *v74;
      v81 = *(v74 + 1);
      v83 = *(v74 + 2);
      v82 = *(v74 + 3);
      v84 = *(v74 + 4);
      v85 = v74[40];
      v86 = v470;
      v460 = v470[14];
      v87 = swift_allocObject();
      LOBYTE(v477) = v85;
      *(v87 + 16) = v80;
      *(v87 + 24) = v81;
      *(v87 + 32) = v83;
      *(v87 + 40) = v82;
      *(v87 + 48) = v84;
      *(v87 + 56) = v85;
      *(v87 + 63) = 0;
      *(v87 + 61) = 0;
      *(v87 + 57) = 0;
      *(v87 + 64) = MEMORY[0x277D84F90];
      v461 = v87 | 0x5000000000000000;
      v462 = v86[8];
      v88 = sub_219BDFA44();
      (*(*(v88 - 8) + 56))(v465, 1, 1, v88);
      sub_218718690((v86 + 9), &v478);
      v473 = 0;
      v471 = 0u;
      v472 = 0u;
      v476[0] = v460;
      sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v469 = v80;
      v466 = v83;
      v467 = v81;
      *(&v463 + 1) = v84;
      v464 = v82;
      LODWORD(v463) = v85;
      if (*(&v485 + 1))
      {
        sub_2186CB1F0(&v484, &v487);
        sub_21896FE24(v80, v81, v83, v82, v84, v85);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v90 = qword_280ED32D8;
        v89 = qword_280ED32E0;
        v91 = qword_280ED32E8;

        v470 = v89;
        v460 = v91;
        sub_2188202A8(v89);
        __swift_destroy_boxed_opaque_existential_1(&v487);
      }

      else
      {
        sub_21896FE24(v80, v81, v83, v82, v84, v85);
        sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v90 = qword_280ED32D8;
        v273 = qword_280ED32E0;
        v274 = qword_280ED32E8;

        v470 = v273;
        v460 = v274;
        sub_2188202A8(v273);
      }

      *&v474 = v461;
      *(&v485 + 1) = sub_219BDD274();
      v275 = v462;
      *&v484 = v462;
      v276 = v440;
      sub_218E483CC(v465, v440, sub_21896FA3C);
      sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v277 = (*(v468 + 80) + 24) & ~*(v468 + 80);
      v278 = (v12 + v277 + 7) & 0xFFFFFFFFFFFFFFF8;
      v279 = (v278 + 47) & 0xFFFFFFFFFFFFFFF8;
      v280 = swift_allocObject();
      *(v280 + 16) = v275;
      sub_21896FA98(v276, v280 + v277, sub_21896FA3C);
      v281 = v280 + v278;
      v282 = v488;
      *v281 = v487;
      *(v281 + 16) = v282;
      *(v281 + 32) = v489;
      v283 = (v280 + v279);
      v284 = (v280 + ((v279 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v283 = 0;
      v283[1] = 0;
      v285 = v470;
      *v284 = v90;
      v284[1] = v285;
      v284[2] = v460;
      swift_retain_n();

      sub_2188202A8(v285);
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      sub_219BEB464();

      sub_2187FABEC(v285);
      sub_21896FDCC(v469, v467, v466, v464, *(&v463 + 1), v463);
      sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218E48434(v465, sub_21896FA3C);
LABEL_102:
      v360 = &v484;
LABEL_103:
      sub_218806FD0(v360);
    }

    v191 = *v74;
    v192 = v470;
    v193 = v470[14];
    v194 = swift_allocObject();
    *(v194 + 16) = v191;
    v469 = v194;
    v195 = v194 | 0xA000000000000000;
    v196 = v192[8];
    v197 = sub_219BDFA44();
    v198 = v452;
    (*(*(v197 - 8) + 56))(v452, 1, 1, v197);
    sub_218718690((v192 + 9), &v478);
    v473 = 0;
    v471 = 0u;
    v472 = 0u;
    v476[0] = v193;
    sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v467 = v191;
    if (*(&v485 + 1))
    {
      sub_2186CB1F0(&v484, &v487);
      v199 = qword_280ED32D0;
      swift_unknownObjectRetain();
      if (v199 != -1)
      {
        swift_once();
      }

      v201 = qword_280ED32D8;
      v200 = qword_280ED32E0;
      v202 = qword_280ED32E8;

      v470 = v200;
      sub_2188202A8(v200);
      __swift_destroy_boxed_opaque_existential_1(&v487);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v201 = qword_280ED32D8;
      v323 = qword_280ED32E0;
      v202 = qword_280ED32E8;

      v470 = v323;
      sub_2188202A8(v323);
    }

    *&v474 = v195;
    *(&v485 + 1) = sub_219BDD274();
    *&v484 = v196;
    v324 = v439;
    sub_218E483CC(v198, v439, sub_21896FA3C);
    sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v325 = v196;
    v326 = (*(v468 + 80) + 24) & ~*(v468 + 80);
    v327 = (v12 + v326 + 7) & 0xFFFFFFFFFFFFFFF8;
    v328 = (v327 + 47) & 0xFFFFFFFFFFFFFFF8;
    v329 = swift_allocObject();
    *(v329 + 16) = v325;
    sub_21896FA98(v324, v329 + v326, sub_21896FA3C);
    v330 = v329 + v327;
    v331 = v488;
    *v330 = v487;
    *(v330 + 16) = v331;
    *(v330 + 32) = v489;
    v332 = (v329 + v328);
    v333 = (v329 + ((v328 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v332 = 0;
    v332[1] = 0;
    v334 = v470;
    *v333 = v201;
    v333[1] = v334;
    v333[2] = v202;
    swift_retain_n();

    sub_2188202A8(v334);
    sub_2186CF94C();
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v334);
    swift_unknownObjectRelease();
    sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v361 = sub_21896FA3C;
    v362 = v452;
    goto LABEL_104;
  }

  v131 = v470;
  sub_21896FA98(v74, v467, MEMORY[0x277D2FB40]);
  (*(v435 + 16))(v65, v442, v63);
  v132 = v450;
  sub_219BE9424();
  v133 = v464;
  v134 = v453;
  (*(v464 + 104))(v67, *MEMORY[0x277D6E598], v453);
  sub_2186F7DF8(&unk_280EE44E0, MEMORY[0x277D6E5A8]);
  v135 = sub_219BF53A4();
  v138 = *(v133 + 8);
  v136 = v133 + 8;
  v137 = v138;
  v138(v67, v134);
  if ((v135 & 1) == 0)
  {
    v139 = sub_219BE8BF4();
    if (v139)
    {
      v140 = v139;
      sub_218C1A2CC(&v478);
      v141 = v478;
      if ((~v478 & 0xF000000000000007) != 0)
      {
        sub_219BE6474();

        v137(v132, v453);
        sub_218E48434(v467, MEMORY[0x277D2FB40]);
        return sub_218970170(v141);
      }
    }
  }

  v469 = v137;
  v464 = v136;
  v142 = v131[14];
  sub_2187B2C48();
  v144 = v143;
  v145 = swift_allocBox();
  v147 = v146;
  v148 = *(v144 + 48);
  sub_2187B2DA0();
  v150 = *(v149 + 48);
  sub_218E483CC(v467, v147, MEMORY[0x277D2FB40]);
  v151 = MEMORY[0x277D84F90];
  *(v147 + v150) = MEMORY[0x277D84F90];
  *(v147 + v148) = v151;
  v466 = v145;
  v152 = v145 | 2;
  v153 = v131[8];
  v154 = sub_219BDFA44();
  v155 = v449;
  (*(*(v154 - 8) + 56))(v449, 1, 1, v154);
  sub_218718690((v131 + 9), &v478);
  v473 = 0;
  v471 = 0u;
  v472 = 0u;
  v476[0] = v142;
  sub_2187B171C(&v471, &v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v485 + 1))
  {
    sub_2186CB1F0(&v484, &v487);
    *&v484 = v152;
    v156 = sub_2194DA78C(&v487);
    v470 = v157;
    v159 = v158;
    __swift_destroy_boxed_opaque_existential_1(&v487);
  }

  else
  {
    sub_2187B1CC0(&v484, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v156 = qword_280ED32D8;
    v363 = qword_280ED32E0;
    v159 = qword_280ED32E8;

    v470 = v363;
    sub_2188202A8(v363);
  }

  *&v474 = v152;
  *(&v485 + 1) = sub_219BDD274();
  *&v484 = v153;
  v364 = v433;
  sub_218E483CC(v155, v433, sub_21896FA3C);
  sub_2187B171C(&v478, &v487, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v365 = (*(v468 + 80) + 24) & ~*(v468 + 80);
  v366 = (v12 + v365 + 7) & 0xFFFFFFFFFFFFFFF8;
  v367 = (v366 + 47) & 0xFFFFFFFFFFFFFFF8;
  v368 = swift_allocObject();
  *(v368 + 16) = v153;
  sub_21896FA98(v364, v368 + v365, sub_21896FA3C);
  v369 = v368 + v366;
  v370 = v488;
  *v369 = v487;
  *(v369 + 16) = v370;
  *(v369 + 32) = v489;
  v371 = (v368 + v367);
  v372 = (v368 + ((v367 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v371 = 0;
  v371[1] = 0;
  v373 = v470;
  *v372 = v156;
  v372[1] = v373;
  v372[2] = v159;
  swift_retain_n();

  sub_2188202A8(v373);
  sub_2186CF94C();
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v373);
  sub_2187B1CC0(&v471, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(&v478, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218E48434(v449, sub_21896FA3C);
  v469(v450, v453);
  sub_218E48434(v467, MEMORY[0x277D2FB40]);
  sub_218806FD0(&v484);
}

uint64_t sub_218E457F8(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v2);
  v216 = &v201 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_219BDD664();
  v217 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v218 = &v201 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896F9B8();
  v204 = v5;
  MEMORY[0x28223BE20](v5);
  v203 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsActivity2.Article(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v206 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v207 = &v201 - v10;
  sub_21896FA3C();
  v223 = *(v11 - 8);
  v12 = *(v223 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v201 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v215 = &v201 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v212 = &v201 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v213 = &v201 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v201 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v214 = &v201 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v208 = &v201 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v211 = &v201 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v205 = &v201 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v209 = &v201 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v201 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v220 = &v201 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v210 = &v201 - v39;
  MEMORY[0x28223BE20](v38);
  v222 = &v201 - v40;
  v41 = sub_219BDD944();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v201 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v202 = &v201 - v46;
  MEMORY[0x28223BE20](v45);
  v221 = &v201 - v47;
  v48 = type metadata accessor for TagFeedRouteModel();
  MEMORY[0x28223BE20](v48);
  v50 = &v201 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E483CC(a1, v50, type metadata accessor for TagFeedRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v53 = *v50;
          v215 = *(v50 + 1);
          v52 = v215;
          v54 = *(v50 + 3);
          v221 = *(v50 + 2);
          v222 = v53;
          v55 = *(v50 + 4);
          v56 = v50[40];
          v57 = v224;
          v218 = *(v224 + 112);
          v219 = v54;
          v58 = swift_allocObject();
          LOBYTE(v227) = v56;
          *(v58 + 16) = v53;
          *(v58 + 24) = v52;
          v59 = v221;
          *(v58 + 32) = v221;
          *(v58 + 40) = v54;
          *(v58 + 48) = v55;
          *(v58 + 56) = v56;
          *(v58 + 63) = 0;
          *(v58 + 61) = 0;
          *(v58 + 57) = 0;
          *(v58 + 64) = MEMORY[0x277D84F90];
          v216 = v58 | 0x5000000000000000;
          v217 = *(v57 + 64);
          v60 = sub_219BDFA44();
          (*(*(v60 - 8) + 56))(v220, 1, 1, v60);
          sub_218718690(v57 + 72, &v234);
          v226[0] = v218;
          sub_219BDC8D4();
          v61 = v215;
          v224 = v55;
          LODWORD(v218) = v56;
          sub_21896FE24(v222, v215, v59, v219, v55, v56);
          sub_219BDC8B4();
          if (qword_280EE9210 != -1)
          {
            swift_once();
          }

          sub_219BDC8C4();

          v231 = v216;
          v233 = sub_219BDD274();
          v62 = v217;
          v232[0] = v217;
          v63 = v220;
          sub_218E483CC(v220, v35, sub_21896FA3C);
          sub_2187B171C(&v234, &v228, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v64 = (*(v223 + 80) + 24) & ~*(v223 + 80);
          v65 = (v12 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
          v66 = swift_allocObject();
          *(v66 + 16) = v62;
          sub_21896FA98(v35, v66 + v64, sub_21896FA3C);
          v67 = v66 + v65;
          v68 = v229;
          *v67 = v228;
          *(v67 + 16) = v68;
          *(v67 + 32) = v230;
          v69 = (v66 + ((v65 + 47) & 0xFFFFFFFFFFFFFFF8));
          *v69 = 0;
          v69[1] = 0;
          sub_2186CF94C();
          sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
          swift_retain_n();
          v70 = v225;
          v71 = sub_219BEB454();

          sub_21896FDCC(v222, v61, v221, v219, v224, v218);
          sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          v72 = v63;
          goto LABEL_25;
        }

LABEL_27:
        sub_218E48434(v50, type metadata accessor for TagFeedRouteModel);
        return 0;
      }

      v109 = v221;
      sub_21896FA98(v50, v221, MEMORY[0x277D2FB40]);
      v110 = v224;
      v111 = *(v224 + 112);
      sub_2187B2C48();
      v113 = v112;
      v220 = swift_allocBox();
      v115 = v114;
      v116 = *(v113 + 48);
      sub_2187B2DA0();
      v219 = v117;
      v118 = *(v117 + 48);
      sub_218E483CC(v109, v115, MEMORY[0x277D2FB40]);
      v119 = MEMORY[0x277D84F90];
      *(v115 + v118) = MEMORY[0x277D84F90];
      *(v115 + v116) = v119;
      v120 = *(v110 + 64);
      v121 = sub_219BDFA44();
      (*(*(v121 - 8) + 56))(v222, 1, 1, v121);
      sub_218718690(v110 + 72, &v234);
      v226[0] = v111;
      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      v122 = sub_219BDC8C4();

      v123 = v222;
      if (v122)
      {
        v124 = v207;
        sub_218E483CC(v115, v207, type metadata accessor for NewsActivity2.Article);
        v125 = v206;
        sub_218E483CC(v124, v206, type metadata accessor for NewsActivity2.Article);

        sub_21896FA98(v125, v44, MEMORY[0x277D2FB40]);
        sub_218E48434(v124, type metadata accessor for NewsActivity2.Article);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v126 = swift_projectBox();
          v127 = v203;
          sub_218E483CC(v126, v203, sub_21896F9B8);
          v128 = v202;
          sub_21896FA98(v127 + *(v204 + 48), v202, MEMORY[0x277D2FB40]);
          __swift_destroy_boxed_opaque_existential_1(v127);

          sub_2186C66AC();
          v129 = sub_219BF6F44();
          sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
          v130 = swift_allocObject();
          *(v130 + 16) = xmmword_219C09BA0;
          v131 = sub_219BDD8C4();
          v133 = v132;
          *(v130 + 56) = MEMORY[0x277D837D0];
          *(v130 + 64) = sub_2186FC3BC();
          *(v130 + 32) = v131;
          *(v130 + 40) = v133;
          sub_219BF6214();
          sub_219BE5314();

          v134 = MEMORY[0x277D2FB40];
          sub_218E48434(v128, MEMORY[0x277D2FB40]);
          sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_218E48434(v123, sub_21896FA3C);
          sub_218E48434(v221, v134);

          return 0;
        }

        sub_218E48434(v44, MEMORY[0x277D2FB40]);
      }

      v231 = v220 | 2;
      v233 = sub_219BDD274();
      v232[0] = v120;
      v171 = v210;
      sub_218E483CC(v123, v210, sub_21896FA3C);
      sub_2187B171C(&v234, &v228, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v172 = (*(v223 + 80) + 24) & ~*(v223 + 80);
      v173 = (v12 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
      v174 = swift_allocObject();
      *(v174 + 16) = v120;
      sub_21896FA98(v171, v174 + v172, sub_21896FA3C);
      v175 = v174 + v173;
      v176 = v229;
      *v175 = v228;
      *(v175 + 16) = v176;
      *(v175 + 32) = v230;
      v177 = (v174 + ((v173 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v177 = 0;
      v177[1] = 0;
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      swift_retain_n();
      v178 = v225;
      v179 = sub_219BEB454();
      if (v178)
      {

        sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        sub_218E48434(v123, sub_21896FA3C);
        sub_218E48434(v221, MEMORY[0x277D2FB40]);
        sub_218806FD0(v232);

        return 0;
      }

      v71 = v179;

      sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218E48434(v123, sub_21896FA3C);
      sub_218E48434(v221, MEMORY[0x277D2FB40]);
      sub_218806FD0(v232);
LABEL_49:

      return v71;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload != 4)
    {
      (*(v217 + 32))(v218, v50, v219);
      v75 = sub_219BDD654();
      v76 = v224;
      v77 = [v75 isPuzzleHub];
      swift_unknownObjectRelease();
      v78 = *(v76 + 112);
      if (v77)
      {
        v79 = swift_allocObject();
        v80 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
        *(v79 + 24) = 0;
        *(v79 + 32) = 0;
        *(v79 + 16) = v80;
        *(v79 + 40) = 1;
        v81 = *(v76 + 64);
        v82 = sub_219BDFA44();
        v83 = v209;
        (*(*(v82 - 8) + 56))(v209, 1, 1, v82);
        sub_218718690(v76 + 72, &v234);
        v226[0] = v78;
        sub_219BDC8D4();
        sub_219BDC8B4();
        if (qword_280EE9210 != -1)
        {
          swift_once();
        }

        sub_219BDC8C4();

        v231 = v79 | 0xE000000000000002;
        v233 = sub_219BDD274();
        v232[0] = v81;
        v84 = v205;
        sub_218E483CC(v83, v205, sub_21896FA3C);
        sub_2187B171C(&v234, &v228, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
        v85 = (*(v223 + 80) + 24) & ~*(v223 + 80);
        v86 = (v12 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
        v87 = swift_allocObject();
        *(v87 + 16) = v81;
        sub_21896FA98(v84, v87 + v85, sub_21896FA3C);
        v88 = v87 + v86;
        v89 = v229;
        *v88 = v228;
        *(v88 + 16) = v89;
        *(v88 + 32) = v230;
        v90 = (v87 + ((v86 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v90 = 0;
        v90[1] = 0;
        sub_2186CF94C();
        sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
        swift_retain_n();
        v91 = v225;
        v92 = sub_219BEB454();
        v93 = (v217 + 8);
        if (v91)
        {

          sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_218E48434(v83, sub_21896FA3C);
          (*v93)(v218, v219);
          sub_218806FD0(v232);
        }

        else
        {
          v180 = v92;

          sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
          sub_218E48434(v83, sub_21896FA3C);
          (*v93)(v218, v219);
          sub_218806FD0(v232);
        }

        return 0;
      }

      v151 = sub_219BDD654();
      v152 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
      v153 = swift_allocObject();
      v154 = [v151 identifier];
      v155 = sub_219BF5414();
      v157 = v156;

      swift_unknownObjectRelease();
      *(v153 + 16) = v155;
      *(v153 + 24) = v157;
      *(v153 + 32) = v152;
      *(v153 + 40) = 0;
      *(v153 + 48) = 1;
      *(v153 + 56) = 0u;
      *(v153 + 72) = 0u;
      *(v153 + 88) = 0;
      *(v153 + 96) = -1;
      v158 = *(v76 + 64);
      v159 = sub_219BDFA44();
      v160 = v211;
      (*(*(v159 - 8) + 56))(v211, 1, 1, v159);
      sub_218718690(v76 + 72, &v234);
      v226[0] = v78;
      sub_219BDC8D4();
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v231 = v153 | 0x2000000000000006;
      v233 = sub_219BDD274();
      v232[0] = v158;
      v161 = v208;
      sub_218E483CC(v160, v208, sub_21896FA3C);
      sub_2187B171C(&v234, &v228, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v162 = (*(v223 + 80) + 24) & ~*(v223 + 80);
      v163 = (v12 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
      v164 = swift_allocObject();
      *(v164 + 16) = v158;
      sub_21896FA98(v161, v164 + v162, sub_21896FA3C);
      v165 = v164 + v163;
      v166 = v229;
      *v165 = v228;
      *(v165 + 16) = v166;
      *(v165 + 32) = v230;
      v167 = (v164 + ((v163 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v167 = 0;
      v167[1] = 0;
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      swift_retain_n();
      v168 = v225;
      v169 = sub_219BEB454();
      if (v168)
      {

        sub_218806FD0(v232);

        v170 = 0;
      }

      else
      {
        v170 = v169;

        sub_218806FD0(v232);
      }

      sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218E48434(v211, sub_21896FA3C);
      (*(v217 + 8))(v218, v219);
      return v170;
    }

    return v225;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v94 = *v50;
      v95 = v224;
      v96 = *(v224 + 112);
      v97 = swift_allocObject();
      *(v97 + 16) = v94;
      v98 = *(v95 + 64);
      v99 = sub_219BDFA44();
      v100 = v213;
      (*(*(v99 - 8) + 56))(v213, 1, 1, v99);
      sub_218718690(v95 + 72, &v234);
      v226[0] = v96;
      sub_219BDC8D4();

      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v231 = v97 | 0x7000000000000004;
      v233 = sub_219BDD274();
      v232[0] = v98;
      v101 = v212;
      sub_218E483CC(v100, v212, sub_21896FA3C);
      sub_2187B171C(&v234, &v228, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v102 = (*(v223 + 80) + 24) & ~*(v223 + 80);
      v103 = (v12 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      *(v104 + 16) = v98;
      sub_21896FA98(v101, v104 + v102, sub_21896FA3C);
      v105 = v104 + v103;
      v106 = v229;
      *v105 = v228;
      *(v105 + 16) = v106;
      *(v105 + 32) = v230;
      v107 = (v104 + ((v103 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v107 = 0;
      v107[1] = 0;
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      swift_retain_n();
      v70 = v225;
      v71 = sub_219BEB454();

      sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v72 = v100;
LABEL_25:
      sub_218E48434(v72, sub_21896FA3C);
      sub_218806FD0(v232);
      if (v70)
      {

        return 0;
      }

      goto LABEL_49;
    }

    return v225;
  }

  if (EnumCaseMultiPayload == 6)
  {
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 7)
  {
    v135 = v216;
    sub_21896FA98(v50, v216, type metadata accessor for PuzzleModel);
    v136 = v224;
    v137 = *(v224 + 112);
    v138 = swift_allocBox();
    sub_218E483CC(v135, v139, type metadata accessor for PuzzleModel);
    v222 = v138;
    v140 = *(v136 + 64);
    v141 = sub_219BDFA44();
    v142 = v214;
    (*(*(v141 - 8) + 56))(v214, 1, 1, v141);
    *&v236 = 0;
    v234 = 0u;
    v235 = 0u;
    v226[0] = v137;
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_280EE9210 != -1)
    {
      swift_once();
    }

    sub_219BDC8C4();

    v231 = v138 | 0xE000000000000006;
    v233 = sub_219BDD274();
    v232[0] = v140;
    sub_218E483CC(v142, v22, sub_21896FA3C);
    sub_2187B171C(&v234, &v228, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v143 = (*(v223 + 80) + 24) & ~*(v223 + 80);
    v144 = (v12 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
    v145 = swift_allocObject();
    *(v145 + 16) = v140;
    sub_21896FA98(v22, v145 + v143, sub_21896FA3C);
    v146 = v145 + v144;
    v147 = v229;
    *v146 = v228;
    *(v146 + 16) = v147;
    *(v146 + 32) = v230;
    v148 = (v145 + ((v144 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v148 = 0;
    v148[1] = 0;
    sub_2186CF94C();
    sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
    swift_retain_n();
    v149 = v225;
    v150 = sub_219BEB454();
    if (v149)
    {

      sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218E48434(v142, sub_21896FA3C);
      sub_218E48434(v135, type metadata accessor for PuzzleModel);
      sub_218806FD0(v232);

      return 0;
    }

    v71 = v150;

    sub_2187B1CC0(&v234, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218E48434(v142, sub_21896FA3C);
    sub_218E48434(v135, type metadata accessor for PuzzleModel);
    sub_218806FD0(v232);
    goto LABEL_49;
  }

  v73 = *(v50 + 2);
  v74 = v215;
  switch(v73)
  {
    case 0:
    case 8:
      v181 = *v50;
      v182 = *(v50 + 1);
      v183 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
      *&v234 = v181;
      *(&v234 + 1) = v182;
      *&v235 = v183;
      *(&v235 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v236) = 1;
      *(&v236 + 1) = v228;
      DWORD1(v236) = *(&v228 + 3);
      *(&v236 + 1) = v73;
      v237 = 0u;
      v238 = 0u;
      v239 = -1;
      v184 = v224;
      v185 = *(v224 + 112);
      v186 = swift_allocObject();
      v187 = v237;
      *(v186 + 48) = v236;
      *(v186 + 64) = v187;
      *(v186 + 80) = v238;
      *(v186 + 96) = v239;
      v188 = v235;
      *(v186 + 16) = v234;
      *(v186 + 32) = v188;
      v189 = v186 | 0x2000000000000006;
      v190 = *(v184 + 64);
      v191 = sub_219BDFA44();
      (*(*(v191 - 8) + 56))(v74, 1, 1, v191);
      sub_218718690(v184 + 72, v232);
      v231 = v185;
      sub_219BDC8D4();
      sub_218B5A004(&v234, &v228);
      sub_219BDC8B4();
      if (qword_280EE9210 != -1)
      {
        swift_once();
      }

      sub_219BDC8C4();

      v227 = v189;
      v226[3] = sub_219BDD274();
      v226[0] = v190;
      v192 = v201;
      sub_218E483CC(v74, v201, sub_21896FA3C);
      sub_2187B171C(v232, &v228, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v193 = (*(v223 + 80) + 24) & ~*(v223 + 80);
      v194 = (v12 + v193 + 7) & 0xFFFFFFFFFFFFFFF8;
      v195 = swift_allocObject();
      *(v195 + 16) = v190;
      sub_21896FA98(v192, v195 + v193, sub_21896FA3C);
      v196 = v195 + v194;
      v197 = v229;
      *v196 = v228;
      *(v196 + 16) = v197;
      *(v196 + 32) = v230;
      v198 = (v195 + ((v194 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v198 = 0;
      v198[1] = 0;
      sub_2186CF94C();
      sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
      swift_retain_n();
      v199 = v225;
      v200 = sub_219BEB454();

      sub_218806FD0(v226);
      if (v199)
      {

        sub_218B5A060(&v234);
        v200 = 0;
      }

      else
      {

        sub_218B5A060(&v234);
      }

      sub_2187B1CC0(v232, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218E48434(v74, sub_21896FA3C);
      result = v200;
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:

      return 0;
    default:
      result = sub_219BF7514();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_218E47870(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v34 = a3;
  v33 = a2;
  v35 = a4;
  sub_21896FA3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = *(v4 + 112);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v35;
  v35.n128_u64[0] = v14;
  v15 = v14 | 0xD000000000000000;
  v16 = *(v4 + 64);
  v17 = sub_219BDFA44();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_218718690(v4 + 72, v44);
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  v41 = v13;
  sub_2187B171C(v42, &v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v38)
  {
    sub_2186CB1F0(&v37, v39);
    v18 = qword_280ED32D0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v20 = qword_280ED32E0;
    v21 = qword_280ED32E8;

    sub_2188202A8(v20);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {

    sub_2187B1CC0(&v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v20 = qword_280ED32E0;
    v21 = qword_280ED32E8;

    sub_2188202A8(v20);
  }

  v36 = v15;
  v38 = sub_219BDD274();
  *&v37 = v16;
  sub_218E483CC(v12, v10, sub_21896FA3C);
  sub_2187B171C(v44, v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v22 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v12;
  v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  sub_21896FA98(v10, v25 + v22, sub_21896FA3C);
  v26 = v25 + v23;
  v27 = v39[1];
  *v26 = v39[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v40;
  v28 = (v25 + v24);
  v29 = (v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v28 = 0;
  v28[1] = 0;
  *v29 = v19;
  v29[1] = v20;
  v29[2] = v21;
  swift_retain_n();

  sub_2188202A8(v20);
  sub_2186CF94C();
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v20);
  sub_2187B1CC0(v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218E48434(v32, sub_21896FA3C);
  sub_218806FD0(&v37);
}

uint64_t sub_218E47E10(uint64_t a1, char a2)
{
  sub_21896FA3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = *(v2 + 112);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1 | 0x8000000000000000;
  *(v13 + 32) = 0;
  v32 = v13;
  v14 = v13 | 0xD000000000000000;
  v15 = *(v2 + 64);
  v16 = sub_219BDFA44();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_218718690(v2 + 72, v41);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = v12;
  sub_2187B171C(v39, &v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v35)
  {
    sub_2186CB1F0(&v34, v36);
    v17 = qword_280ED32D0;

    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v18 = qword_280ED32E0;
    v20 = qword_280ED32E8;

    sub_2188202A8(v18);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {

    sub_2187B1CC0(&v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v19 = qword_280ED32D8;
    v18 = qword_280ED32E0;
    v20 = qword_280ED32E8;

    sub_2188202A8(v18);
  }

  v33 = v14;
  v35 = sub_219BDD274();
  *&v34 = v15;
  sub_218E483CC(v11, v9, sub_21896FA3C);
  sub_2187B171C(v41, v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v11;
  v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v15;
  sub_21896FA98(v9, v24 + v21, sub_21896FA3C);
  v25 = v24 + v22;
  v26 = v36[1];
  *v25 = v36[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v37;
  v27 = (v24 + v23);
  v28 = (v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v27 = 0;
  v27[1] = 0;
  *v28 = v19;
  v28[1] = v18;
  v28[2] = v20;
  swift_retain_n();

  sub_2188202A8(v18);
  sub_2186CF94C();
  sub_2186F7DF8(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v18);
  sub_2187B1CC0(v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218E48434(v31, sub_21896FA3C);
  sub_218806FD0(&v34);
}

uint64_t sub_218E483CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E48434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for RecipeBoxRefreshBlueprintModifier()
{
  result = qword_27CC129F8;
  if (!qword_27CC129F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218E48508()
{
  result = type metadata accessor for RecipeBoxRefreshResult();
  if (v1 <= 0x3F)
  {
    result = sub_218E4858C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_218E4858C()
{
  result = qword_280EB75D0;
  if (!qword_280EB75D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EB75D0);
  }

  return result;
}

uint64_t sub_218E485F0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v137 = a3;
  v138 = a2;
  v126 = sub_219BE6DF4();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E49C28(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v135 = *(v5 - 8);
  v136 = v5;
  MEMORY[0x28223BE20](v5);
  v134 = (v122 - v6);
  sub_218E49B5C();
  MEMORY[0x28223BE20](v7 - 8);
  v122[1] = v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v127);
  v130 = v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for RecipeBoxSectionDescriptor();
  v10 = MEMORY[0x28223BE20](v146);
  v140 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v131 = v122 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v133 = v122 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v122 - v16;
  sub_218953B70();
  v148 = v18;
  v142 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v147 = v122 - v22;
  sub_218953C5C();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v128 = v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v122 - v28;
  sub_218E49D1C();
  v31 = v30 - 8;
  MEMORY[0x28223BE20](v30);
  v33 = v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897ED8C(0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v139 = v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v141 = v122 - v37;
  v123 = v25;
  v38 = *(v25 + 16);
  v129 = a1;
  v38(v29, a1, v24);
  sub_218E49ACC(&qword_27CC12A30, sub_218953C5C);
  sub_219BF56A4();
  v39 = *(v31 + 44);
  sub_218E49ACC(&qword_27CC0B158, sub_218953C5C);
  sub_219BF5E84();
  if (*&v33[v39] == v149[0])
  {
LABEL_5:
    sub_218E49EF0(v33, sub_218E49D1C);
    v45 = 1;
    v46 = v141;
    v47 = v148;
  }

  else
  {
    v144 = (v142 + 16);
    v145 = (v142 + 32);
    v143 = (v142 + 8);
    v40 = v147;
    while (1)
    {
      v41 = sub_219BF5EC4();
      v42 = v148;
      (*v144)(v40);
      v41(v149, 0);
      sub_219BF5E94();
      v43 = v24;
      v44 = *v145;
      (*v145)(v21, v40, v42);
      sub_219BE6934();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      (*v143)(v21, v148);
      sub_218E49EF0(v17, type metadata accessor for RecipeBoxSectionDescriptor);
      sub_219BF5E84();
      v24 = v43;
      if (*&v33[v39] == v149[0])
      {
        goto LABEL_5;
      }
    }

    sub_218E49EF0(v33, sub_218E49D1C);
    sub_218E49EF0(v17, type metadata accessor for RecipeBoxSectionDescriptor);
    v46 = v141;
    v47 = v148;
    v44(v141, v21, v148);
    v45 = 0;
    v24 = v43;
  }

  v48 = v142;
  (*(v142 + 56))(v46, v45, 1, v47);
  v49 = v139;
  sub_218E49E88(v46, v139, sub_21897ED8C);
  v50 = (*(v48 + 48))(v49, 1, v47);
  v51 = v140;
  if (v50 == 1)
  {
    v52 = sub_21897ED8C;
    v53 = v49;
LABEL_32:
    sub_218E49EF0(v53, v52);
    sub_218E49DB0();
    v84 = swift_allocError();
    v86 = v134;
    v85 = v135;
    *v134 = v84;
    v87 = v136;
    (*(v85 + 104))(v86, *MEMORY[0x277D6DF68], v136);
    v138(v86);
    (*(v85 + 8))(v86, v87);
    return sub_218E49EF0(v46, sub_21897ED8C);
  }

  v54 = v131;
  sub_219BE6934();
  (*(v48 + 8))(v49, v47);
  v55 = v133;
  sub_218E49E04(v54, v133, type metadata accessor for RecipeBoxSectionDescriptor);
  sub_218E49E88(v55, v51, type metadata accessor for RecipeBoxSectionDescriptor);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_218E49EF0(v55, type metadata accessor for RecipeBoxSectionDescriptor);
    v53 = v51;
    v52 = type metadata accessor for RecipeBoxSectionDescriptor;
    goto LABEL_32;
  }

  v56 = v130;
  sub_218E49E04(v51, v130, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  v149[0] = *(v56 + *(v127 + 24));

  sub_2191ED69C(v57);
  v58 = v149[0];
  if (v149[0] >> 62)
  {
    goto LABEL_37;
  }

  v59 = *((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v145 = v24;
  if (v59)
  {
LABEL_12:
    v60 = 0;
    v144 = (v58 & 0xC000000000000001);
    v142 = v58 & 0xFFFFFFFFFFFFFF8;
    v147 = MEMORY[0x277D84F98];
    v143 = v58;
    while (1)
    {
      if (v144)
      {
        v63 = MEMORY[0x21CECE0F0](v60, v58);
      }

      else
      {
        if (v60 >= *(v142 + 16))
        {
          goto LABEL_36;
        }

        v63 = *(v58 + 8 * v60 + 32);
      }

      v64 = v63;
      v65 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v59 = sub_219BF7214();
        v145 = v24;
        if (!v59)
        {
          break;
        }

        goto LABEL_12;
      }

      v66 = [v63 identifier];
      v67 = sub_219BF5414();
      v24 = v68;

      v69 = v64;
      v58 = v147;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149[0] = v58;
      v72 = sub_21870F700(v67, v24);
      v73 = *(v58 + 16);
      v74 = (v71 & 1) == 0;
      v75 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        goto LABEL_34;
      }

      v76 = v71;
      if (*(v58 + 24) >= v75)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v71)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v58 = v149;
          sub_2194931B8();
          if (v76)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        sub_2194829C0(v75, isUniquelyReferenced_nonNull_native);
        v58 = v149[0];
        v77 = sub_21870F700(v67, v24);
        if ((v76 & 1) != (v78 & 1))
        {
LABEL_59:
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v72 = v77;
        if (v76)
        {
LABEL_13:

          v147 = v149[0];
          v61 = *(v149[0] + 56);
          v62 = *(v61 + 8 * v72);
          *(v61 + 8 * v72) = v69;

          goto LABEL_14;
        }
      }

      v79 = v149[0];
      *(v149[0] + 8 * (v72 >> 6) + 64) |= 1 << v72;
      v80 = (*(v79 + 6) + 16 * v72);
      *v80 = v67;
      v80[1] = v24;
      *(*(v79 + 7) + 8 * v72) = v69;

      v81 = *(v79 + 2);
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_35;
      }

      v147 = v79;
      *(v79 + 2) = v83;
LABEL_14:
      ++v60;
      v24 = v145;
      v58 = v143;
      if (v65 == v59)
      {
        goto LABEL_39;
      }
    }
  }

  v147 = MEMORY[0x277D84F98];
LABEL_39:

  v90 = *(v132 + 16);
  v91 = MEMORY[0x277D84F90];
  v149[0] = MEMORY[0x277D84F90];
  v92 = *(v90 + 16);
  if (!v92)
  {
    goto LABEL_53;
  }

  v93 = 0;
  v94 = v90 + 40;
  v95 = v147;
  do
  {
    v96 = (v94 + 16 * v93);
    v97 = v93;
    while (1)
    {
      if (v97 >= v92)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v93 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_58;
      }

      if (*(v95 + 2))
      {
        break;
      }

LABEL_42:
      ++v97;
      v96 += 2;
      if (v93 == v92)
      {
        v24 = v145;
        goto LABEL_53;
      }
    }

    v99 = *(v96 - 1);
    v98 = *v96;

    v100 = sub_21870F700(v99, v98);
    if ((v101 & 1) == 0)
    {

      v95 = v147;
      goto LABEL_42;
    }

    v102 = *(*(v147 + 7) + 8 * v100);

    MEMORY[0x21CECC690](v103);
    if (*((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    v89 = sub_219BF5A54();
    v91 = v149[0];
    v24 = v145;
    v95 = v147;
  }

  while (v93 != v92);
LABEL_53:
  MEMORY[0x28223BE20](v89);
  v120 = v91;
  v121 = v132;
  v104 = sub_218F8DE60(sub_218E49E6C, v119);

  v105 = sub_218E49ACC(&qword_27CC12A18, sub_218953B70);
  v106 = sub_218E49ACC(&qword_27CC12A20, sub_218953B70);
  MEMORY[0x21CEB9170](v104, v148, v105, v106);
  type metadata accessor for RecipeBoxModel(0);
  v107 = sub_218E49ACC(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
  v108 = sub_218E49ACC(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
  sub_219BEB2D4();
  v109 = sub_21917BCEC();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for RecipeBoxFeedServiceConfig();
  sub_218E49ACC(&qword_280EBA8B0, type metadata accessor for RecipeBoxFeedServiceConfig);
  v110 = sub_219BEEFC4();

  v111 = 0;
  if (v110)
  {
    v111 = sub_219BEDC74();
  }

  else
  {
    v149[1] = 0;
    v149[2] = 0;
  }

  v149[0] = v110;
  v149[3] = v111;
  v112 = v128;
  sub_219BEB2C4();
  sub_21885AB78(v109);
  v113 = v125;
  v114 = v24;
  v115 = v124;
  v116 = v126;
  (*(v125 + 104))(v124, *MEMORY[0x277D6D868], v126);
  v117 = sub_218E49ACC(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor);
  v120 = v107;
  v121 = v108;
  v119[0] = v108;
  v119[1] = v117;
  v118 = v134;
  sub_219BE85E4();
  (*(v113 + 8))(v115, v116);
  v138(v118);
  (*(v135 + 8))(v118, v136);
  (*(v123 + 8))(v112, v114);
  sub_218E49EF0(v130, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  sub_218E49EF0(v133, type metadata accessor for RecipeBoxSectionDescriptor);
  sub_218E49EF0(v141, sub_21897ED8C);
}

uint64_t sub_218E49650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v6 = type metadata accessor for RecipeBoxFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipeListRecipeBoxFeedGroup();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for RecipeBoxSectionDescriptor();
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70();
  v19 = v18;
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218E49EF0(v17, type metadata accessor for RecipeBoxSectionDescriptor);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v29 = *(v19 - 8);
    (*(v29 + 16))(a4, a1, v19);
    return (*(v29 + 56))(a4, 0, 1, v19);
  }

  sub_218E49E04(v17, v14, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  v21 = *v14;
  v22 = *(v14 + 1);
  v23 = *(v9 + 20);
  v24 = sub_219BED8D4();
  (*(*(v24 - 8) + 16))(&v12[v23], &v14[v23], v24);
  *v12 = v21;
  *(v12 + 1) = v22;
  v25 = *(v9 + 24);
  v32 = a4;
  *&v12[v25] = v33;
  refreshed = type metadata accessor for RecipeBoxRefreshBlueprintModifier();
  v27 = v34;
  __swift_project_boxed_opaque_existential_1((v34 + *(refreshed + 20)), *(v34 + *(refreshed + 20) + 24));
  sub_218E49E88(v12, v8, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  v28 = *(type metadata accessor for RecipeBoxRefreshResult() + 28);

  a4 = v32;

  sub_2199D0AE0(v8, v27 + v28, a4);
  sub_218E49EF0(v8, type metadata accessor for RecipeBoxFeedGroup);
  sub_218E49EF0(v12, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  sub_218E49EF0(v14, type metadata accessor for RecipeListRecipeBoxFeedGroup);
  v29 = *(v19 - 8);
  return (*(v29 + 56))(a4, 0, 1, v19);
}

uint64_t sub_218E499D0(uint64_t a1)
{
  v2 = sub_218E49ACC(&qword_27CC12A40, type metadata accessor for RecipeBoxRefreshBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_218E49ACC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218E49B5C()
{
  if (!qword_27CC12A10)
  {
    sub_218953B70();
    sub_218E49ACC(&qword_27CC12A18, sub_218953B70);
    sub_218E49ACC(&qword_27CC12A20, sub_218953B70);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12A10);
    }
  }
}

void sub_218E49C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor();
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218E49ACC(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    v8[3] = sub_218E49ACC(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218E49D1C()
{
  if (!qword_27CC12A28)
  {
    sub_218953C5C();
    sub_218E49ACC(&qword_27CC0B158, sub_218953C5C);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12A28);
    }
  }
}

unint64_t sub_218E49DB0()
{
  result = qword_27CC12A38;
  if (!qword_27CC12A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12A38);
  }

  return result;
}

uint64_t sub_218E49E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E49E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E49EF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E49F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioPlaylistFeedGroupKnobs();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872FA60();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = type metadata accessor for AudioPlaylistFeedGroupConfig();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E4A2F8(a1, v20, type metadata accessor for AudioPlaylistFeedGroupConfig);
  v21 = *(v12 + 32);
  v21(v17, v20, v11);
  (*(v12 + 16))(v15, v17, v11);
  sub_218E4A2F8(a2, v9, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  v22 = v9;
  v23 = v6;
  sub_218E4A360(v22, v6);
  sub_218718690(v27 + 16, v28);
  type metadata accessor for ArticleListAudioPlaylistFeedGroupEmitter();
  v24 = swift_allocObject();
  v21((v24 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_config), v15, v11);
  sub_218E4A360(v23, v24 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_knobs);
  sub_2186CB1F0(v28, v24 + OBJC_IVAR____TtC7NewsUI240ArticleListAudioPlaylistFeedGroupEmitter_formatService);
  *&v28[0] = v24;
  sub_218E4A3C4();
  swift_allocObject();
  sub_218E4A458(&qword_27CC12A50, type metadata accessor for ArticleListAudioPlaylistFeedGroupEmitter);
  v25 = sub_219BEDF84();
  (*(v12 + 8))(v17, v11);
  return v25;
}

uint64_t sub_218E4A2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E4A360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E4A3C4()
{
  if (!qword_27CC12A48)
  {
    type metadata accessor for AudioPlaylistFeedServiceConfig();
    sub_218E4A458(&qword_280EAD5D0, type metadata accessor for AudioPlaylistFeedServiceConfig);
    v0 = sub_219BEDFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12A48);
    }
  }
}

uint64_t sub_218E4A458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E4A4A0(void *a1)
{
  v2 = type metadata accessor for NavigationBarBackgroundImageProvider.Model(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [sub_219BF6394() asSportsEvent];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  v6 = a1;
  swift_unknownObjectRetain();
  sub_218A79640(v6, v5, v4);
  type metadata accessor for NavigationBarBackgroundImageProvider(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC7NewsUI236NavigationBarBackgroundImageProvider_cache;
  sub_218E4A5D0();
  swift_allocObject();
  v9 = sub_219BE2D94();
  swift_unknownObjectRelease();
  *(v7 + v8) = v9;
  sub_218E4A6DC(v4, v7 + OBJC_IVAR____TtC7NewsUI236NavigationBarBackgroundImageProvider_model);
  return v7;
}

void sub_218E4A5D0()
{
  if (!qword_27CC12A58)
  {
    sub_2189EB4C0();
    sub_218E4A688();
    v0 = sub_219BE2DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12A58);
    }
  }
}

unint64_t sub_218E4A63C()
{
  result = qword_280E8DA68;
  if (!qword_280E8DA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DA68);
  }

  return result;
}

unint64_t sub_218E4A688()
{
  result = qword_27CC12A60;
  if (!qword_27CC12A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12A60);
  }

  return result;
}

uint64_t sub_218E4A6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationBarBackgroundImageProvider.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_218E4A754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_218E4A79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218E4A7F8()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    v7[0] = v0[2];
    sub_2186D0BA8();
    sub_2189DD328();

    v3 = sub_219BF5324();
    v5 = v4;
  }

  else
  {
    v5 = 0xE500000000000000;
    v3 = 0x3E6C696E3CLL;
  }

  sub_219BF7314();

  strcpy(v7, "{searchString=");
  MEMORY[0x21CECC330](v1, v2);
  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219CFBCE0);
  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](125, 0xE100000000000000);
  return v7[0];
}

uint64_t sub_218E4A938(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_219BF78F4(), result = 0, (v5 & 1) != 0))
  {
    result = (v2 | v3) == 0;
    if (v2 && v3 != 0)
    {

      return sub_219417FCC(v2, v3);
    }
  }

  return result;
}

uint64_t type metadata accessor for NewspaperMagazineFeedGroupConfigData()
{
  result = qword_280E9AE50;
  if (!qword_280E9AE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E4AA3C()
{
  sub_2186DEE0C();
  if (v0 <= 0x3F)
  {
    sub_2186D0C48(319, &qword_280E8EFE0, &type metadata for NewspaperMagazineFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2186D0C48(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_218E4C384(319, &qword_280E903B0, MEMORY[0x277D339D0]);
        if (v3 <= 0x3F)
        {
          sub_219BEF554();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_218E4ABCC(uint64_t a1)
{
  v2 = sub_218E4C690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E4AC08(uint64_t a1)
{
  v2 = sub_218E4C690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E4AC44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_218E4C6E4(0, &qword_280E8C858, sub_218E4C690, &type metadata for NewspaperMagazineFeedGroupConfigData.Channel.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E4C690();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_219BF76F4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_218E4ADF4(void *a1)
{
  sub_218E4C6E4(0, &qword_27CC12A80, sub_218E4C690, &type metadata for NewspaperMagazineFeedGroupConfigData.Channel.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E4C690();
  sub_219BF7B44();
  sub_219BF77F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218E4AF5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = sub_219BEF554();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v70 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for NewspaperMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v74);
  v75 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E4C384(0, &qword_280E91380, MEMORY[0x277D32648]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v69 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v45 - v8;
  sub_218E4C384(0, &qword_280E903B0, MEMORY[0x277D339D0]);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = &v45 - v10;
  sub_2186DEE0C();
  v12 = v11;
  v73 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E4C6E4(0, &qword_280E8C860, sub_218E4C3D8, &type metadata for NewspaperMagazineFeedGroupConfigData.CodingKeys, MEMORY[0x277D844C8]);
  v16 = v15;
  v77 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E4C3D8();
  v19 = v79;
  sub_219BF7B34();
  if (!v19)
  {
    v20 = v76;
    LOBYTE(v93) = 1;
    sub_2186DECA4(&qword_280E8FD68, sub_2186DEE0C);
    sub_219BF7734();
    LOBYTE(v90) = 3;
    sub_219BF7674();
    v64 = v93;
    v63 = v94;
    sub_219BF26F4();
    LOBYTE(v90) = 4;
    sub_2186DECA4(&qword_280E903B8, MEMORY[0x277D339D0]);
    sub_219BF7674();
    LOBYTE(v90) = 5;
    v67 = v12;
    v79 = v14;
    v21 = v16;
    sub_219BF7674();
    v58 = v99;
    LOBYTE(v90) = 6;
    sub_219BF7674();
    v46 = v98;
    LOBYTE(v90) = 7;
    sub_2186DECA4(&unk_280E91390, MEMORY[0x277D32648]);
    v22 = v68;
    sub_219BF7674();
    LOBYTE(v90) = 8;
    sub_219BF7674();
    v62 = v97;
    LOBYTE(v90) = 9;
    sub_219BF7674();
    v61 = v96;
    sub_2186D0C48(0, &qword_280E8EFE0, &type metadata for NewspaperMagazineFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    LOBYTE(v90) = 2;
    sub_218E4C5AC(&qword_280E8EFD8, sub_218E4C42C);
    sub_219BF7674();
    v55 = v92;
    LOBYTE(v88) = 11;
    sub_219BF7674();
    v60 = v90;
    v59 = v91;
    LOBYTE(v86) = 12;
    sub_219BF7674();
    v57 = v88;
    v56 = v89;
    LOBYTE(v84) = 13;
    sub_219BF7674();
    v54 = v86;
    v53 = v87;
    LOBYTE(v82) = 14;
    sub_219BF7674();
    v52 = v84;
    v51 = v85;
    LOBYTE(v80) = 15;
    sub_219BF7674();
    v50 = v82;
    v49 = v83;
    v95 = 16;
    v66 = v21;
    v23 = v67;
    v65 = v18;
    sub_219BF7674();
    v48 = v80;
    v47 = v81;
    v24 = v74;
    v25 = v75;
    v75[*(v74 + 56)] = 12;
    *v25 = 0x657061707377656ELL;
    *(v25 + 1) = 0xE900000000000072;
    (*(v73 + 16))(&v25[v24[5]], v79, v23);
    v26 = &v25[v24[7]];
    v27 = v63;
    *v26 = v64;
    *(v26 + 1) = v27;
    sub_218E4C480(v78, &v25[v24[8]], &qword_280E903B0, MEMORY[0x277D339D0]);
    v25[v24[9]] = v58 & 1;
    v25[v24[10]] = (v46 == 2) | v46 & 1;
    v28 = v20;
    v29 = v69;
    sub_218E4C480(v20, v69, &qword_280E91380, MEMORY[0x277D32648]);
    v30 = v71;
    v31 = *(v71 + 48);
    if (v31(v29, 1, v22) == 1)
    {
      v32 = v70;
      (*(v30 + 104))(v70, *MEMORY[0x277D32628], v22);
      v33 = v31(v29, 1, v22);
      v34 = v32;
      v23 = v67;
      if (v33 != 1)
      {
        sub_218E4C4EC(v29, &qword_280E91380, MEMORY[0x277D32648]);
      }
    }

    else
    {
      v34 = v70;
      (*(v30 + 32))(v70, v29, v22);
    }

    v35 = v74;
    v36 = v75;
    (*(v30 + 32))(&v75[*(v74 + 44)], v34, v22);
    *(v36 + v35[12]) = v62 & 1;
    *(v36 + v35[13]) = v61 & 1;
    if (v55)
    {
      v37 = v55;
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    sub_218E4C4EC(v28, &qword_280E91380, MEMORY[0x277D32648]);
    sub_218E4C4EC(v78, &qword_280E903B0, MEMORY[0x277D339D0]);
    (*(v73 + 8))(v79, v23);
    (*(v77 + 8))(v65, v66);
    *(v36 + v35[6]) = v37;
    v38 = 2;
    if (!v59)
    {
      v38 = v60;
    }

    *(v36 + v35[15]) = v38;
    v39 = 5;
    if (!v56)
    {
      v39 = v57;
    }

    *(v36 + v35[16]) = v39;
    v40 = v54;
    if (v53)
    {
      v40 = 1;
    }

    *(v36 + v35[17]) = v40;
    v41 = v52;
    if (v51)
    {
      v41 = 1;
    }

    *(v36 + v35[18]) = v41;
    v42 = 3;
    if (!v49)
    {
      v42 = v50;
    }

    *(v36 + v35[19]) = v42;
    v43 = 4;
    if (!v47)
    {
      v43 = v48;
    }

    *(v36 + v35[20]) = v43;
    sub_218E4C548(v36, v72);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_218E4BB38(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x736C656E6E616863;
      break;
    case 3:
      result = 0x62755370756F7267;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 13:
    case 14:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 1684957547;
      break;
    case 11:
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218E4BCFC(void *a1)
{
  v3 = v1;
  sub_218E4C6E4(0, &qword_27CC12A68, sub_218E4C3D8, &type metadata for NewspaperMagazineFeedGroupConfigData.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E4C3D8();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v10 = type metadata accessor for NewspaperMagazineFeedGroupConfigData();
    LOBYTE(v14) = 1;
    sub_2186DEE0C();
    sub_2186DECA4(&qword_280E8FD70, sub_2186DEE0C);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_2186D0C48(0, &qword_280E8EFE0, &type metadata for NewspaperMagazineFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    sub_218E4C5AC(&qword_27CC12A70, sub_218E4C63C);
    sub_219BF7834();
    LOBYTE(v14) = 3;
    sub_219BF7794();
    LOBYTE(v14) = 4;
    sub_219BF26F4();
    sub_2186DECA4(&unk_280E903C0, MEMORY[0x277D339D0]);
    sub_219BF77E4();
    LOBYTE(v14) = 5;
    sub_219BF7804();
    LOBYTE(v14) = 6;
    sub_219BF7804();
    LOBYTE(v14) = 7;
    sub_219BEF554();
    sub_2186DECA4(&qword_280E913A0, MEMORY[0x277D32648]);
    sub_219BF7834();
    LOBYTE(v14) = 8;
    sub_219BF7804();
    LOBYTE(v14) = 9;
    sub_219BF7804();
    LOBYTE(v14) = *(v3 + *(v10 + 56));
    v13 = 10;
    sub_218CD67F4();
    sub_219BF7834();
    LOBYTE(v14) = 11;
    sub_219BF7824();
    LOBYTE(v14) = 12;
    sub_219BF7824();
    LOBYTE(v14) = 13;
    sub_219BF7824();
    LOBYTE(v14) = 14;
    sub_219BF7824();
    LOBYTE(v14) = 15;
    sub_219BF7824();
    LOBYTE(v14) = 16;
    sub_219BF7824();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E4C2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218E4CABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218E4C2DC(uint64_t a1)
{
  v2 = sub_218E4C3D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E4C318(uint64_t a1)
{
  v2 = sub_218E4C3D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218E4C384(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_218E4C3D8()
{
  result = qword_280E9AEA8;
  if (!qword_280E9AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AEA8);
  }

  return result;
}

unint64_t sub_218E4C42C()
{
  result = qword_280E9AE78;
  if (!qword_280E9AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AE78);
  }

  return result;
}

uint64_t sub_218E4C480(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218E4C384(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218E4C4EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218E4C384(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E4C548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperMagazineFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E4C5AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2186D0C48(255, &qword_280E8EFE0, &type metadata for NewspaperMagazineFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218E4C63C()
{
  result = qword_27CC12A78;
  if (!qword_27CC12A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12A78);
  }

  return result;
}

unint64_t sub_218E4C690()
{
  result = qword_280E9AE90;
  if (!qword_280E9AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AE90);
  }

  return result;
}

void sub_218E4C6E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NewspaperMagazineFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewspaperMagazineFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218E4C8B0()
{
  result = qword_27CC12A88;
  if (!qword_27CC12A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12A88);
  }

  return result;
}

unint64_t sub_218E4C908()
{
  result = qword_27CC12A90;
  if (!qword_27CC12A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12A90);
  }

  return result;
}

unint64_t sub_218E4C960()
{
  result = qword_280E9AE80;
  if (!qword_280E9AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AE80);
  }

  return result;
}

unint64_t sub_218E4C9B8()
{
  result = qword_280E9AE88;
  if (!qword_280E9AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AE88);
  }

  return result;
}

unint64_t sub_218E4CA10()
{
  result = qword_280E9AE98;
  if (!qword_280E9AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AE98);
  }

  return result;
}

unint64_t sub_218E4CA68()
{
  result = qword_280E9AEA0;
  if (!qword_280E9AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AEA0);
  }

  return result;
}

uint64_t sub_218E4CABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CD7EE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x62755370756F7267 && a2 == 0xED0000656C746974 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0850 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CF0870 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CF0890 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CF08B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF08D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF08F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0910 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0930 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t type metadata accessor for SeeMoreButton()
{
  result = qword_280EDD8C0;
  if (!qword_280EDD8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_218E4D0BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[qword_280EDD8E0] = 0x4024000000000000;
  v11 = qword_280EDD8D8;
  sub_218ABA298(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *&v5[v11] = [objc_allocWithZone(v12) init];
  v13 = qword_280EDD8D0;
  v18 = 0;
  sub_218ABA298(0, &qword_280EE3A58, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *&v5[v13] = sub_219BEA604();
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setContentHorizontalAlignment_];
  v15 = *&v14[qword_280EDD8D8];
  sub_219BEA854();

  return v14;
}

void sub_218E4D25C(uint64_t a1)
{
  *(a1 + qword_280EDD8E0) = 0x4024000000000000;
  v2 = qword_280EDD8D8;
  sub_218ABA298(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *(a1 + v2) = [objc_allocWithZone(v3) init];
  v4 = qword_280EDD8D0;
  sub_218ABA298(0, &qword_280EE3A58, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *(a1 + v4) = sub_219BEA604();
  sub_219BF7514();
  __break(1u);
}

id sub_218E4D374()
{
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = [v0 titleLabel];
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v1)
  {
    v7 = v1;
    [v1 frame];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
  }

  v24 = v3;
  v12 = [v0 imageView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  if (v12)
  {
    v16 = v12;
    [v12 frame];
    v2 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v20;
  }

  v26.origin.x = v2;
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  v21 = -CGRectGetWidth(v26) - *&v0[qword_280EDD8E0];
  v27.origin.x = v2;
  v27.origin.y = v13;
  v27.size.width = v14;
  v27.size.height = v15;
  [v0 setTitleEdgeInsets_];
  v28.origin.x = v24;
  v28.origin.y = v4;
  v28.size.width = v5;
  v28.size.height = v6;
  Width = CGRectGetWidth(v28);
  v29.origin.x = v24;
  v29.origin.y = v4;
  v29.size.width = v5;
  v29.size.height = v6;
  return [v0 setImageEdgeInsets_];
}

void sub_218E4D52C(void *a1)
{
  v1 = a1;
  sub_218E4D374();
}

uint64_t sub_218E4D574()
{
}

uint64_t sub_218E4D5B4(uint64_t a1)
{
}

void sub_218E4D608()
{
  v0 = sub_219BEA814();
}

id sub_218E4D648()
{
  v1 = *v0;
  sub_219BEA624();
  return [v1 setEnabled_];
}

void sub_218E4D6A0()
{
  sub_218E4D72C(&qword_27CC12AA0);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_218E4D72C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SeeMoreButton();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E4D798()
{
  v0 = sub_219BF1904();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v4 = sub_219BF18D4();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_218E4D894@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_219BED8D4();
  v17 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E4E11C(0, &qword_27CC12AA8, MEMORY[0x277D844C8]);
  v21 = v6;
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ForYouAudioFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E4E008();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v9;
  v13 = v19;
  v12 = v20;
  v23 = 0;
  *v11 = sub_219BF76F4();
  v11[1] = v14;
  v22 = 1;
  sub_218E4E180(&unk_280E92630, MEMORY[0x277D31C50]);
  sub_219BF7734();
  (*(v13 + 8))(v8, v21);
  (*(v17 + 32))(v11 + *(v16 + 20), v5, v12);
  sub_218E4E05C(v11, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218E4E0C0(v11);
}

uint64_t sub_218E4DBE0(void *a1)
{
  sub_218E4E11C(0, &qword_280E8C5F8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E4E008();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for ForYouAudioFeedGroup();
    v9[14] = 1;
    sub_219BED8D4();
    sub_218E4E180(&qword_280E92640, MEMORY[0x277D31C50]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E4DDA8(uint64_t a1)
{
  v2 = sub_218E4E180(&qword_280ECEB48, type metadata accessor for ForYouAudioFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218E4DE2C(void *a1)
{
  a1[1] = sub_218E4E180(&qword_280ECEB48, type metadata accessor for ForYouAudioFeedGroup);
  a1[2] = sub_218E4E180(&qword_280ECEB20, type metadata accessor for ForYouAudioFeedGroup);
  result = sub_218E4E180(&qword_280ECEB30, type metadata accessor for ForYouAudioFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218E4DFB0(uint64_t a1)
{
  result = sub_218E4E180(&qword_280ECEB18, type metadata accessor for ForYouAudioFeedGroup);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_218E4E008()
{
  result = qword_280ECEB60;
  if (!qword_280ECEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECEB60);
  }

  return result;
}

uint64_t sub_218E4E05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouAudioFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E4E0C0(uint64_t a1)
{
  v2 = type metadata accessor for ForYouAudioFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218E4E11C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E4E008();
    v7 = a3(a1, &type metadata for ForYouAudioFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218E4E180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E4E1D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x724774616D726F66;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xEB0000000070756FLL;
  }

  if (*a2)
  {
    v5 = 0x724774616D726F66;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xEB0000000070756FLL;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218E4E28C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218E4E31C()
{
  sub_219BF5524();
}

uint64_t sub_218E4E398()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218E4E424@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

void sub_218E4E484(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x724774616D726F66;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEB0000000070756FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218E4E4D0()
{
  if (*v0)
  {
    return 0x724774616D726F66;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_218E4E518@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_218E4E57C(uint64_t a1)
{
  v2 = sub_218E4E008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E4E5B8(uint64_t a1)
{
  v2 = sub_218E4E008();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218E4E5F8()
{
  result = qword_27CC12AB0;
  if (!qword_27CC12AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12AB0);
  }

  return result;
}

unint64_t sub_218E4E650()
{
  result = qword_280ECEB50;
  if (!qword_280ECEB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECEB50);
  }

  return result;
}

unint64_t sub_218E4E6A8()
{
  result = qword_280ECEB58;
  if (!qword_280ECEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECEB58);
  }

  return result;
}

id sub_218E4E720()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI212SavedService_readingList] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_218E4E8D4(unint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5)
{
  v34 = a3;
  result = swift_getObjectType();
  if (a2)
  {
    sub_218A510F8();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C09BA0;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000030, 0x8000000219CFBE10);
    v39 = a1;
    sub_218A450F0();
    sub_219BF7484();
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_219BF7A74();
  }

  v10 = result;
  if (a1 >> 62)
  {
    result = sub_219BF7214();
    v11 = result;
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_218C35DE8(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v13 = 0;
    v12 = v39;
    v14 = a1;
    v32 = v10;
    v33 = a1 & 0xC000000000000001;
    v15 = a1;
    v16 = v11;
    do
    {
      if (v33)
      {
        v17 = MEMORY[0x21CECE0F0](v13, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v13 + 32);
      }

      v18 = [*(v17 + 16) articleID];
      v19 = sub_219BF5414();
      v21 = v20;

      v35 = v19;
      v36 = v21;
      MEMORY[0x28223BE20](v22);
      v31[2] = &v35;
      LOBYTE(v19) = sub_2186D128C(sub_2186D1338, v31, v34);

      if (v19)
      {
        v23 = v17;
      }

      else
      {
        v23 = v17 | 0x8000000000000000;
      }

      v39 = v12;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_218C35DE8((v24 > 1), v25 + 1, 1);
        v12 = v39;
      }

      ++v13;
      *(v12 + 16) = v25 + 1;
      *(v12 + 8 * v25 + 32) = v23;
      v14 = v15;
    }

    while (v16 != v13);
    v10 = v32;
  }

  v26 = *&a5[OBJC_IVAR____TtC7NewsUI212SavedService_observers];
  if (v26 >> 62)
  {
    result = sub_219BF7214();
    v27 = result;
    if (!result)
    {
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
    }
  }

  if (v27 >= 1)
  {

    v28 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v28, v26);
      }

      else
      {
      }

      ++v28;
      v37 = v10;
      v38 = &off_282A4C1D8;
      v35 = a5;
      v29 = *__swift_project_boxed_opaque_existential_1(&v35, v10);
      v30 = a5;
      sub_218E4ED80(v29, v12);

      __swift_destroy_boxed_opaque_existential_1(&v35);
    }

    while (v27 != v28);
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_218E4ECFC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI212SavedService_readingList);
  v3 = [a1 articleID];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = [v2 isArticleOnReadingList_];

  return v4;
}

uint64_t sub_218E4ED80(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_218E4ED80(a1, a2, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218E4EDF0(uint64_t a1, uint64_t a2)
{
  v11 = MEMORY[0x277D84F90];

  sub_2191ED3E8(v5);

  sub_2191ED3E8(v6);
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI212SavedService_headlineService], *&v2[OBJC_IVAR____TtC7NewsUI212SavedService_headlineService + 24]);
  v7 = *MEMORY[0x277D30B90];
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v2;

  v9 = v2;
  sub_218B6434C(v11, v7, sub_218E4EF00, v8);
}

uint64_t sub_218E4EF1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218E4EF78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_218E4EFFC(uint64_t a1)
{
  v13 = a1;
  v14 = sub_219BDF604();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDF5F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF7C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDDE84();
  sub_219BDF7B4();
  sub_218E4F8CC(&qword_280EE8680, MEMORY[0x277D2DD68]);
  sub_219BDCCC4();
  (*(v9 + 8))(v11, v8);
  (*(v1 + 104))(v3, *MEMORY[0x277D2DC58], v14);
  sub_219BDF5E4();
  sub_218E4F8CC(&unk_280EE8728, MEMORY[0x277D2DC48]);
  sub_219BDCCC4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E4F2E4()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_219BE1134();
  sub_219BE6784();
  sub_218E4F8CC(&qword_27CC12AF0, MEMORY[0x277D2EF58]);
  sub_219BDCC64();
  v7 = *(v1 + 8);
  v7(v6, v0);
  sub_219BE6784();
  sub_219BE67A4();
  sub_219BDBBF4();
  v7(v4, v0);
  sub_219BDCC74();
  return (v7)(v6, v0);
}

uint64_t sub_218E4F4CC(uint64_t a1)
{
  v3 = sub_219BDDE94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  result = sub_219BE0BD4();
  if (result)
  {
    (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v8 = swift_allocObject();
    (*(v4 + 32))(v8 + v7, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_219BDD154();
  }

  return result;
}

uint64_t sub_218E4F638()
{
  v1 = sub_219BE67B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1((*v0 + 24), *(*v0 + 48));
  result = sub_219BE0BD4();
  if (result)
  {
    sub_219BDDE74();
    (*(v2 + 16))(v5, v7, v1);
    v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v10 = swift_allocObject();
    (*(v2 + 32))(v10 + v9, v5, v1);
    sub_219BDD154();

    return (*(v2 + 8))(v7, v1);
  }

  return result;
}

uint64_t sub_218E4F844(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_218E4F8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E4F914()
{
  v1 = v0;
  sub_218747F00(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - v5;
  v6 = sub_219BE22F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747F00(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22A4();
  (*(v7 + 8))(v9, v6);
  sub_219BDB804();
  v14 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
  v15 = sub_219BF53D4();

  v16 = [v14 initWithString_];

  if (!v16)
  {
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  v17 = v11;
  v50 = v10;
  if ([v16 fc_isNewsURL])
  {
    (*(v11 + 8))(v13, v50);

    return 0;
  }

  v18 = v50;
  v19 = swift_allocBox();
  (*(v11 + 16))(v20, v13, v18);
  v46 = v19;
  v21 = v19 | 0x1000000000000000;
  v22 = sub_218DB24B0();
  v23 = *(v1 + 24);
  if (v22)
  {
    v24 = sub_219BDFA44();
    v25 = v49;
    (*(*(v24 - 8) + 56))();
    memset(v59, 0, sizeof(v59));
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    v56 = v23;
    sub_2187B15C0(v57, &v52, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v45 = v17;
    if (*(&v53 + 1))
    {
      sub_21875F93C(&v52, v54);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v27 = qword_280ED32D8;
      v26 = qword_280ED32E0;
      v28 = qword_280ED32E8;

      v44 = v26;
      v43 = v28;
      sub_2188202A8(v26);
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    else
    {
      sub_218744E6C(&v52, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v27 = qword_280ED32D8;
      v29 = qword_280ED32E0;
      v30 = qword_280ED32E8;

      v44 = v29;
      v43 = v30;
      sub_2188202A8(v29);
    }

    v51 = v21;
    v53 = 0u;
    v52 = 0u;
    v31 = v48;
    sub_2187B15C0(v25, v48, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747F00);
    sub_2187B15C0(v59, v54, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v32 = (*(v47 + 80) + 24) & ~*(v47 + 80);
    v33 = (v3 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 47) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    sub_2189B4EAC(v31, v35 + v32);
    v36 = v35 + v33;
    v37 = v54[1];
    *v36 = v54[0];
    *(v36 + 16) = v37;
    *(v36 + 32) = v55;
    v38 = (v35 + v34);
    v39 = (v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v38 = 0;
    v38[1] = 0;
    v40 = v44;
    *v39 = v27;
    v39[1] = v40;
    v39[2] = v43;

    sub_2188202A8(v40);
    sub_2186CF94C();
    sub_218E505E0(&qword_280EE5A90, 255, sub_2186CF94C);
    sub_219BEB464();

    sub_2187FABEC(v40);
    sub_218744E6C(v57, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744E6C(v59, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218744E6C(v25, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747F00);
    (*(v45 + 8))(v13, v50);
    sub_218744E6C(&v52, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    v59[0] = v23;
    *&v57[0] = v19 | 0x1000000000000000;
    sub_2186CF94C();
    sub_218E505E0(&qword_280EE5A90, 255, sub_2186CF94C);

    sub_219BEB484();

    (*(v11 + 8))(v13, v50);
  }

  return 1;
}

uint64_t sub_218E505E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E50628(void *a1)
{
  sub_218747F00(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218E5071C()
{
  sub_218747F64(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v29[0] = *(v1 - 8);
  v2 = *(v29[0] + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - v5;
  v7 = MEMORY[0x277D34098];
  sub_218747F64(0, &qword_280E8FFE0, MEMORY[0x277D34098]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = *(v0 + 16);
  type metadata accessor for FollowingNotificationsPrewarm();
  v12 = swift_allocBox();
  v14 = v13;
  v15 = sub_219BF3BD4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_218E50DBC(v10, v14, &qword_280E8FFE0, v7);
  swift_storeEnumTagMultiPayload();
  v29[1] = v12;
  v16 = sub_219BDFA44();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = v11;
  sub_2187B14CC(v35, &v30, &unk_280EE7DB0, &qword_280EE7DC0);
  if (*(&v31 + 1))
  {
    sub_21875F93C(&v30, v32);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    sub_2188202A8(v17);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_2187448D0(&v30, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    sub_2188202A8(v17);
  }

  v29[3] = v12 | 0x3000000000000004;
  v31 = 0u;
  v30 = 0u;
  sub_2189B4E2C(v6, v3);
  sub_2187B14CC(v37, v32, &qword_280EE33A0, &qword_280EE33B0);
  v20 = (*(v29[0] + 80) + 24) & ~*(v29[0] + 80);
  v21 = (v2 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  sub_218E50DBC(v3, v23 + v20, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v24 = v23 + v21;
  v25 = v32[1];
  *v24 = v32[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v33;
  v26 = (v23 + v22);
  v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = 0;
  v26[1] = 0;
  *v27 = v18;
  v27[1] = v17;
  v27[2] = v19;

  sub_2188202A8(v17);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v17);
  sub_2187448D0(v35, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v37, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v6);
  sub_2187448D0(&v30, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t sub_218E50DBC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218747F64(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_218E50E28(void *a1)
{
  sub_218747F64(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

id sub_218E50F08(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = &v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation];
  v10 = *&v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation];
  v9 = *&v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation + 8];
  v11 = v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation + 16];
  if (v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation + 17] == 1)
  {
    v41 = ObjectType;
    *v46 = v6;
    *&v46[8] = v5;
    v46[16] = v7;

    sub_218E528E4(v46, v10, &v47);
    v42 = v11;
    if (v48)
    {
      v59[8] = v55;
      v59[9] = v56;
      v59[10] = v57;
      LOBYTE(v59[11]) = v58;
      v59[4] = v51;
      v59[5] = v52;
      v59[6] = v53;
      v59[7] = v54;
      v59[0] = v47;
      v59[1] = v48;
      v59[2] = v49;
      v59[3] = v50;
    }

    else
    {
      v14 = *(v10 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = v10 + 32;
        while (1)
        {
          *v46 = v15;
          sub_218C04EF0(v16, &v46[8]);
          v43[8] = *&v46[128];
          v43[9] = *&v46[144];
          v44 = *&v46[160];
          v45 = v46[176];
          v43[4] = *&v46[64];
          v43[5] = *&v46[80];
          v43[6] = *&v46[96];
          v43[7] = *&v46[112];
          v43[0] = *v46;
          v43[1] = *&v46[16];
          v43[2] = *&v46[32];
          v43[3] = *&v46[48];
          if (v46[176] == 2 && v44 == 0)
          {
            break;
          }

          ++v15;
          sub_218E543A4(v43, sub_218E54158);
          v16 += 176;
          if (v14 == v15)
          {
            goto LABEL_15;
          }
        }

        *(&v59[7] + 8) = *&v46[120];
        *(&v59[8] + 8) = *&v46[136];
        *(&v59[9] + 8) = *&v46[152];
        *(&v59[10] + 1) = *&v46[161];
        *(&v59[3] + 8) = *&v46[56];
        *(&v59[4] + 8) = *&v46[72];
        *(&v59[5] + 8) = *&v46[88];
        *(&v59[6] + 8) = *&v46[104];
        *(v59 + 8) = *&v46[8];
        *(&v59[1] + 8) = *&v46[24];
        *(&v59[2] + 8) = *&v46[40];
        *&v59[0] = *&v43[0];
      }

      else
      {
LABEL_15:
        memset(v59, 0, 177);
      }

      if (!*&v59[1])
      {
        sub_218E542A8(v10, v9, v42, 1);
        return sub_218E541BC(v59);
      }
    }

    v40 = *&v59[0];
    v60[8] = *(&v59[8] + 8);
    *v61 = *(&v59[9] + 8);
    *&v61[9] = *(&v59[10] + 1);
    v60[4] = *(&v59[4] + 8);
    v60[5] = *(&v59[5] + 8);
    v60[6] = *(&v59[6] + 8);
    v60[7] = *(&v59[7] + 8);
    v60[0] = *(v59 + 8);
    v60[1] = *(&v59[1] + 8);
    v60[2] = *(&v59[2] + 8);
    v60[3] = *(&v59[3] + 8);
    v47 = *(v59 + 8);

    sub_219BE3274();

    v12 = *&v59[0];
    if (*&v59[0])
    {
      v39 = *(&v59[0] + 1);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_sectionViewControllerFactory], *&v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_sectionViewControllerFactory + 24]);
      v12 = sub_218A514B4(v60);
      v39 = v17;
    }

    v18 = *&v61[8];
    v19 = *&v61[16];
    v20 = v61[24];
    if (v7)
    {
      sub_218AB7B18(v6, v5, v7);
      sub_218C04F4C(v18, v19, v20);
      v21 = v6;
      v22 = v5;
      v23 = v7;
    }

    else
    {
      if (v61[24] == 2 && *&v61[8] == 0)
      {
        type metadata accessor for MagazineCatalogViewController();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {

          sub_218E542A8(v10, v9, v42, 1);
          sub_21896755C(v6, v5, 0);
          sub_218A518E8(0, 0, 2);
LABEL_33:

          return sub_218BBF734(v60);
        }

        v25 = (v24 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_presentation);
        v26 = *(v24 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_presentation + 8);
        if (v26 == 1)
        {
          v27 = *(*(v24 + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler) + 40);
          v28 = swift_getObjectType();
          v38 = *(v27 + 32);
          sub_218AB7B18(v6, v5, 0);
          sub_218AB7B18(v6, v5, 0);
          v29 = v12;
          v38(v6, v5, v28, v27);
        }

        else
        {
          v36 = *v25;
          *v25 = v6;
          v25[1] = v5;
          sub_218AB7B18(v6, v5, 0);
          sub_218AB7B18(v6, v5, 0);
          sub_218AB7B18(v6, v5, 0);
          v37 = v12;
          sub_2188398B4(v36, v26);
        }

        sub_21896755C(v6, v5, 0);
        sub_218A518E8(0, 0, 2);
        sub_21896755C(v6, v5, 0);
LABEL_28:
        sub_218E52BD0(v40, v12, v39);
        sub_218C04EF0(v60, v59);
        sub_218E542C8();
        sub_219BE2114();
        sub_218744C90(v59, &qword_280EDA340);
        result = [v2 view];
        if (result)
        {
          v30 = result;
          [result setNeedsLayout];

          result = [v2 view];
          if (result)
          {
            v31 = result;
            sub_218E542A8(v10, v9, v42, 1);
            [v31 layoutIfNeeded];

            if (sub_218E52CBC())
            {
              v33 = sub_218E544F4(&qword_280EAC420, v32, type metadata accessor for MagazineSectionsViewController);
              v34 = MEMORY[0x21CEBCBD0](v41, v33);
              if (v34)
              {
                v35 = v34;
                swift_getObjectType();
                sub_219BE9114();
              }
            }

            goto LABEL_33;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }

      sub_218AB7B18(v6, v5, 0);
      sub_218C04F4C(v18, v19, v20);
      v21 = v6;
      v22 = v5;
      v23 = 0;
    }

    sub_21896755C(v21, v22, v23);
    sub_218A518E8(v18, v19, v20);
    goto LABEL_28;
  }

  *v8 = v6;
  *(v8 + 1) = v5;
  v8[16] = v7;
  v8[17] = 0;
  sub_218AB7B18(v6, v5, v7);

  return sub_218E542A8(v10, v9, v11, 0);
}

void sub_218E51750()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v26.receiver = v0;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v3 = sub_219BF53D4();
  [v1 setFocusGroupIdentifier_];

  sub_219BE6BF4();
  v4 = [v1 traitCollection];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;

  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  v8 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_styler], *&v1[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_styler + 24]);
  v10 = sub_218E544F4(&qword_280EAC420, v9, type metadata accessor for MagazineSectionsViewController);
  v11 = MEMORY[0x21CEBCBD0](ObjectType, v10);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  v13 = *v8;
  v14 = [v11 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = *(*__swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  [v15 setBackgroundColor_];

LABEL_5:
  sub_218E51BA0();
  sub_219BE8384();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE2104();

  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_219BE1A04();
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_218E54488(0, &qword_280E8BD50, sub_2187C4338, MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09BA0;
  v18 = sub_219BEBA34();
  v19 = MEMORY[0x277D74C50];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  *(swift_allocObject() + 16) = ObjectType;
  sub_219BF6604();
  swift_unknownObjectRelease();

  if (sub_219BED0C4())
  {
    sub_219BE2CF4();
    v20 = v25[0];
    v22 = sub_218E544F4(&qword_280EAC410, v21, type metadata accessor for MagazineSectionsViewController);
    sub_219BE8894();
    v23 = sub_219BE88A4();
    v23(v1, v22);
    sub_2188050C0();
    v24 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v20 action:sel_bannerTapped];
    [*(v20 + qword_280EABEF0) addGestureRecognizer_];
  }
}

void sub_218E51BA0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE80A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_218E544F4(&qword_280EAC420, v6, type metadata accessor for MagazineSectionsViewController);
  v8 = MEMORY[0x21CEBCBD0](ObjectType, v7);
  if (v8)
  {
    v9 = v8;
    if ([v0 view])
    {
      sub_219BE9274();
      [objc_allocWithZone(sub_219BEA2A4()) init];
      (*(v3 + 104))(v5, *MEMORY[0x277D6DDE0], v2);
      v10 = sub_219BE9264();
      sub_2194583A4(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_218E51D48(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if (v2)
    {
      v7 = *(result + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_barCompressionManager);
      sub_218E544F4(&qword_280EAC418, v5, type metadata accessor for MagazineSectionsViewController);
      v8 = v2;
      v9 = v7;
      v10 = v6;
      sub_219BE7A64();
    }

    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_218E5453C;
    *(v13 + 24) = v12;
    aBlock[4] = sub_218807D50;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218807CE4;
    aBlock[3] = &block_descriptor_63;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    v16 = v6;

    [v11 performWithoutAnimation_];

    _Block_release(v14);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_218E51F68()
{
  type metadata accessor for MagazineSectionsViewController();
  sub_218E544F4(&qword_280EAC420, v0, type metadata accessor for MagazineSectionsViewController);
  sub_219BE5E44();
  return sub_219BF65F4();
}

void sub_218E51FF8(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController];
  if (v3)
  {
    v4 = v3;
    if ([v4 isEditing])
    {
      sub_218E544F4(&qword_280EAC420, v5, type metadata accessor for MagazineSectionsViewController);
      sub_219BE5E44();
      v8 = [a1 traitCollection];
      sub_218E544F4(&qword_280EAC418, v6, type metadata accessor for MagazineSectionsViewController);
      sub_219BE6504();

      goto LABEL_6;
    }
  }

  sub_218E544F4(&qword_280EAC420, a2, type metadata accessor for MagazineSectionsViewController);
  sub_219BE5E44();
  v8 = [a1 traitCollection];
  sub_218E544F4(&qword_280EAC418, v7, type metadata accessor for MagazineSectionsViewController);
  sub_219BE6504();
LABEL_6:
}

id sub_218E5221C()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_viewWillLayoutSubviews);
  sub_219BE6B94();
  v19 = v0;
  v1 = [v0 childViewControllers];
  sub_2186C6148(0, &qword_280E8E480);
  v2 = sub_219BF5924();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_15:
  v3 = sub_219BF7214();
  if (!v3)
  {
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    result = [v5 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    result = [v19 view];
    if (!result)
    {
      goto LABEL_18;
    }

    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v9 setFrame_];
    if (v7 == v3)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_218E52450(char a1)
{
  v2 = v1;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  sub_219BE1D04();
  v4 = (*(*&v2[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_eventHandler] + 32) + OBJC_IVAR____TtC7NewsUI226MagazineSectionsInteractor_magazinesBadgingCoordinator);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_218BB503C();
}

void sub_218E5252C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  v4 = [v1 traitCollection];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;

  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor_];

  v8 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_styler], *&v1[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_styler + 24]);
  v10 = sub_218E544F4(&qword_280EAC420, v9, type metadata accessor for MagazineSectionsViewController);
  v11 = MEMORY[0x21CEBCBD0](ObjectType, v10);
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = *v8;
  v14 = [v11 view];
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = *(*__swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
  [v15 setBackgroundColor_];
}

uint64_t get_enum_tag_for_layout_string_7NewsUI225MagazineSectionConfigKindOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218E527C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
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

uint64_t sub_218E5280C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

unint64_t sub_218E52890()
{
  result = qword_280EAC428;
  if (!qword_280EAC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC428);
  }

  return result;
}

double sub_218E528E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
LABEL_35:
    *(a3 + 176) = 0;
    result = 0.0;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = a2 + 32;
  v8 = *(a1 + 16);
  while (1)
  {
    *&v22[0] = v4;
    sub_218C04EF0(v7, v22 + 8);
    *&v21[128] = v22[8];
    *&v21[144] = v22[9];
    *&v21[160] = v22[10];
    v21[176] = v23;
    *&v21[64] = v22[4];
    *&v21[80] = v22[5];
    *&v21[96] = v22[6];
    *&v21[112] = v22[7];
    *v21 = v22[0];
    *&v21[16] = v22[1];
    *&v21[32] = v22[2];
    *&v21[48] = v22[3];
    if (!v8)
    {
      if (!v23 && (__PAIR128__(v6, v5) == *&v21[160] || (sub_219BF78F4() & 1) != 0))
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }

    if (v8 == 1)
    {
      break;
    }

    if (v5 > 1)
    {
      if (v5 ^ 2 | v6)
      {
        if (v5 ^ 3 | v6)
        {
          if (v23 != 2 || *&v21[160] != 4)
          {
            goto LABEL_4;
          }
        }

        else if (v23 != 2 || *&v21[160] != 3)
        {
          goto LABEL_4;
        }
      }

      else if (v23 != 2 || *&v21[160] != 2)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
    }

    if (v5 | v6)
    {
      if (v23 != 2 || *&v21[160] != 1)
      {
        goto LABEL_4;
      }

LABEL_33:
      if (!*&v21[168])
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }

    if (v23 == 2 && *&v21[160] == 0)
    {
      goto LABEL_37;
    }

LABEL_4:
    ++v4;
    sub_218E543A4(v21, sub_218E54158);
    v7 += 176;
    if (v3 == v4)
    {
      goto LABEL_35;
    }
  }

  if (v23 != 1)
  {
    goto LABEL_4;
  }

  v9 = [*&v21[160] identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  if (v5 != v10 || v6 != v12)
  {
    v13 = sub_219BF78F4();

    if (v13)
    {
      goto LABEL_37;
    }

    goto LABEL_4;
  }

LABEL_37:
  v30 = *&v21[136];
  v31[0] = *&v21[152];
  *(v31 + 9) = *&v21[161];
  v28 = *&v21[72];
  v29 = *&v21[88];
  v24 = *&v21[8];
  v25 = *&v21[24];
  v26 = *&v21[40];
  v27 = *&v21[56];
  v15 = *&v21[104];
  *(a3 + 120) = *&v21[120];
  v16 = v31[0];
  *(a3 + 136) = v30;
  *(a3 + 152) = v16;
  *(a3 + 161) = *(v31 + 9);
  v17 = v26;
  *(a3 + 56) = v27;
  v18 = v29;
  *(a3 + 72) = v28;
  *(a3 + 88) = v18;
  *(a3 + 104) = v15;
  result = *&v24;
  v19 = v25;
  *(a3 + 8) = v24;
  *(a3 + 24) = v19;
  *a3 = *v21;
  *(a3 + 40) = v17;
  return result;
}

void sub_218E52BD0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentSection);
  v8 = *(v3 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentSection + 8);
  if (v8)
  {
    v9 = a2;
    if (v8 != a2)
    {
      v10 = v8;
      sub_218E53A6C(a2, a3, v8);
    }
  }

  else
  {
    v11 = a2;
    sub_218E53A6C(a2, a3, 0);
  }

  sub_219BE3254();
  v12 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
}

uint64_t sub_218E52CBC()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    if (UIAccessibilityFocusedElement(*MEMORY[0x277D76498]))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v2 = 0u;
      v3 = 0u;
    }

    v4[0] = v2;
    v4[1] = v3;
    if (*(&v3 + 1))
    {
      sub_219BF1424();
      if (swift_dynamicCast())
      {

        return 0;
      }
    }

    else
    {
      sub_218744C90(v4, &qword_280E8B4F0);
    }
  }

  return 1;
}

void sub_218E52D90(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation;
  if (*(a1 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_presentation + 17))
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 184);
      v4 = *(a2 + 192);
      if (*(a2 + 200))
      {
        if (*(a2 + 200) == 1)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

LABEL_15:
      *a3 = v5;
      *(a3 + 8) = v4;
      *(a3 + 16) = 0;

      return;
    }

    goto LABEL_14;
  }

  v6 = *(v3 + 16);
  if (v6 == 255)
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 184);
      v4 = *(a2 + 192);
      if (*(a2 + 200))
      {
        if (*(a2 + 200) == 1)
        {
LABEL_13:
          v10 = [v5 identifier];
          v11 = sub_219BF5414();
          v13 = v12;

          sub_218A518E8(v5, v4, 1);
          *a3 = v11;
          *(a3 + 8) = v13;
          *(a3 + 16) = 1;
          return;
        }

LABEL_18:
        if (v5 <= 1)
        {
          if (!(v5 | v4))
          {
            *a3 = 0;
            *(a3 + 8) = 0;
LABEL_28:
            v14 = 2;
            goto LABEL_29;
          }

          v15 = xmmword_219C14CF0;
        }

        else if (v5 ^ 2 | v4)
        {
          if (v5 ^ 3 | v4)
          {
            v15 = xmmword_219C3FE50;
          }

          else
          {
            v15 = xmmword_219C1E930;
          }
        }

        else
        {
          v15 = xmmword_219C1D060;
        }

        *a3 = v15;
        goto LABEL_28;
      }

      goto LABEL_15;
    }

LABEL_14:
    *a3 = 0;
    *(a3 + 8) = 0;
    v14 = -1;
LABEL_29:
    *(a3 + 16) = v14;
    return;
  }

  v7 = *v3;
  v8 = *(v3 + 8);
  *a3 = *v3;
  *(a3 + 8) = v8;
  *(a3 + 16) = v6;

  sub_218E5446C(v7, v8, v6);
}

uint64_t sub_218E52F60()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v10 = sub_219BF01B4();
    v11 = __swift_project_value_buffer(v10, qword_280F61940);
    v7[3] = v10;
    v7[4] = sub_218E544F4(&qword_280E91000, 255, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v15 = sub_219BF54E4();
    v17 = v16;

    v7[5] = v15;
    v7[6] = v17;
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC80], v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
    sub_219BE6BD4();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_218E532E4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECB0], v0);
    sub_219BE6BD4();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_218E534EC()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;

    *v7 = sub_219BF1554();
    v7[1] = v10;
    v11 = sub_219BE5AA4();
    v12 = MEMORY[0x277D6D2E8];
    v7[5] = v11;
    v7[6] = v12;
    __swift_allocate_boxed_opaque_existential_1(v7 + 2);
    sub_219BE5A94();
    v7[7] = sub_219BF1534();
    v7[8] = v13;
    (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
    (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
    sub_219BE6BD4();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_218E53738@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_scrollViewProxyManager);
  v3 = *MEMORY[0x277D6DA18];
  v4 = sub_219BE74B4();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
}

id sub_218E537CC()
{
  swift_getObjectType();
  if (sub_219BED0C4())
  {
    return 0;
  }

  sub_218E544F4(&qword_280EAC418, v1, type metadata accessor for MagazineSectionsViewController);
  v3 = sub_219BE64F4();
  if (!v3)
  {
    return [objc_allocWithZone(sub_219BEA3E4()) init];
  }

  v4 = v3;
  v5 = [v3 navigationBar];

  if (!v5)
  {
    return [objc_allocWithZone(sub_219BEA3E4()) init];
  }

  v6 = [v0 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 1)
  {
    v8 = [objc_allocWithZone(sub_219BEA3E4()) init];

    return v8;
  }

  else
  {
    v9 = [v0 navigationItem];
    sub_219BE8384();
    sub_219BE20E4();

    sub_2186C6148(0, &qword_280E8DA80);
    sub_219BF6D44();
    v10 = objc_allocWithZone(sub_219BEA4D4());
    return sub_219BEA4C4();
  }
}

uint64_t sub_218E53988()
{
  swift_getObjectType();

  return sub_219BE64F4();
}

void sub_218E539C8()
{
  swift_getObjectType();

  JUMPOUT(0x21CEBD270);
}

void sub_218E53A04()
{
  swift_getObjectType();

  JUMPOUT(0x21CEBD280);
}

void sub_218E53A6C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v41 = a2;
  v7 = sub_219BE74B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v11 = a3;
    [v11 willMoveToParentViewController_];
    v12 = [v11 view];
    if (!v12)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v13 = v12;
    [v12 removeFromSuperview];

    [v11 removeFromParentViewController];
    sub_219BE8384();
    sub_219BE20E4();

    v14 = v44[0];
    if (v44[0])
    {
      sub_219BE83B4();
    }
  }

  if (!a1)
  {
    sub_219BE6BB4();
    return;
  }

  swift_getObjectType();
  v15 = a1;
  [v4 addChildViewController_];
  v16 = [v4 view];
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v15 view];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  [v17 addSubview_];

  [v15 didMoveToParentViewController_];
  v20 = [v15 view];
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v4 view];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v21 setFrame_];
  v32 = [v15 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v33 = v32;
  [v32 setAutoresizingMask_];

  v34 = &v4[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController];
  v35 = *&v4[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController];
  v36 = v41;
  *v34 = a1;
  *(v34 + 1) = v36;
  v37 = v15;

  sub_219BE5E04();
  if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D6DA10])
  {
    (*(v8 + 96))(v10, v7);
    v38 = *v10;
    sub_219BE83A4();
  }

  else
  {
    (*(v8 + 8))(v10, v7);
  }

  sub_2186CFDE4(0, &unk_280EE4778);
  v39 = v37;
  sub_219BF6584();

  if (v43)
  {
    sub_2186CB1F0(&v42, v44);
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    sub_219BE8C34();
    sub_219BE6BB4();

    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_218E543A4(&v42, sub_218E54404);
    sub_219BE6BB4();
  }
}

char *sub_218E53EE4()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController];
  }

  else
  {
    v2 = v0;
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

uint64_t sub_218E53F2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController);
  if (!v1)
  {
    return 1;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    return 1;
  }

  v2 = v1;
  v3 = sub_219BE6D24();

  return v3 & 1;
}

uint64_t sub_218E53FB4()
{
  sub_219BE2CF4();
  v0 = sub_219BE8854();

  return v0 & 1;
}

double sub_218E54004()
{
  sub_219BE2CF4();
  sub_219BE8864();
  v1 = v0;

  return v1;
}

void sub_218E5405C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController);
  if (v1)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v2 = v1;
      sub_219BE6D44();
    }
  }
}

void sub_218E54158()
{
  if (!qword_27CC12B68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12B68);
    }
  }
}

uint64_t sub_218E541BC(uint64_t a1)
{
  sub_218E54488(0, &qword_280E8E8E8, sub_218E54248, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218E54248()
{
  if (!qword_280E8E8F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E8F0);
    }
  }
}

uint64_t sub_218E542A8(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_218E542B4(a1, a2, a3);
  }
}

uint64_t sub_218E542B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21896755C(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_218E542C8()
{
  result = qword_280EDA330;
  if (!qword_280EDA330)
  {
    sub_2186DEEA0(255, &qword_280EDA340);
    sub_218E54350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDA330);
  }

  return result;
}

unint64_t sub_218E54350()
{
  result = qword_280EDA348[0];
  if (!qword_280EDA348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDA348);
  }

  return result;
}

uint64_t sub_218E543A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218E54404()
{
  if (!qword_27CC12B70)
  {
    sub_2186CFDE4(255, &unk_280EE4778);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC12B70);
    }
  }
}

uint64_t sub_218E5446C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_218AB7B18(a1, a2, a3);
  }

  return a1;
}

void sub_218E54488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218E544F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218E54544()
{
  v1 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *(v0 + v1) = sub_219BE6C04();
  v2 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_scrollViewProxyManager;
  sub_219BE83D4();
  swift_allocObject();
  *(v0 + v2) = sub_219BE83C4();
  v3 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_viewControllerCache;
  sub_218BA47A4();
  swift_allocObject();
  *(v0 + v3) = sub_219BE3284();
  v4 = OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_eventManager;
  sub_218E54674();
  swift_allocObject();
  *(v0 + v4) = sub_219BE1D34();
  v5 = (v0 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentSection);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = (v0 + OBJC_IVAR____TtC7NewsUI230MagazineSectionsViewController_currentViewController);
  *v6 = 0;
  v6[1] = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_218E54674()
{
  if (!qword_280EE7DE8)
  {
    sub_218BA4888();
    v0 = sub_219BE1D44();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7DE8);
    }
  }
}

uint64_t sub_218E546D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v35 = a1;
  sub_218C3F834();
  v34 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF584();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF2A4();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEF974();
  v32 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SearchMoreLayoutModel();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3EBC8();
  sub_219BE75E4();
  (*(v14 + 32))(v16, v19, v13);
  v31 = *(v4 + 80);
  ObjectType = swift_getObjectType();
  sub_219BEF574();
  v20 = swift_allocObject();
  swift_weakInit();
  v22 = v33;
  v21 = v34;
  (*(v6 + 16))(v33, v35, v34);
  v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v6 + 32))(v24 + v23, v22, v21);

  v25 = v29;
  sub_219BEECD4();

  (*(v38 + 8))(v25, v39);

  v26 = sub_219BEF294();
  (*(v36 + 8))(v12, v37);
  (*(v14 + 8))(v16, v32);
  return v26;
}

uint64_t sub_218E54ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF0894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D32F88])
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v8 = sub_219BF13B4();
  v9 = *(v8 - 8);
  if ((*(v9 + 88))(v7, v8) != *MEMORY[0x277D33338])
  {
    return (*(v9 + 8))(v7, v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21901AA40(a3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218E54D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218E54DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_218E546D0(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_218E54DF4(uint64_t a1)
{
  sub_218C3F834();
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_218E54ACC(a1, v4, v5);
}

uint64_t sub_218E54E8C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81210(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_219BF7884();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (*v12 > v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_219BF5A34();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_218E59D5C(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_218E54FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a2;
  v5 = type metadata accessor for SportsTopicClusteringRequest();
  v6 = v5 - 8;
  v26 = *(v5 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C0B8C0;
  v9 = sub_219BF03A4();
  v10 = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v11;
  *(v8 + 32) = v9;
  v12 = *(a1 + *(v6 + 32));
  *(v8 + 96) = sub_2186C6148(0, &qword_280E8E860);
  *(v8 + 104) = sub_218D06EBC();
  *(v8 + 72) = v12;
  v13 = *(a1 + *(v6 + 36));
  *(v8 + 136) = v10;
  *(v8 + 144) = v11;
  *(v8 + 112) = v13;
  v14 = v12;
  sub_219BF6214();
  sub_219BE5314();

  v27 = v23;
  v28 = a1;
  v29 = v22;
  v30 = v24;
  v31 = v25;
  sub_219BE3204();
  v15 = sub_219BE2E54();
  sub_219BE2F74();

  sub_218E59B14(a1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v17 = swift_allocObject();
  sub_218E59B78(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = sub_219BE2E54();
  v19 = sub_219BE2FD4();

  return v19;
}

uint64_t sub_218E55270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SportsTopicClusteringRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a1;
  v23 = a2;
  sub_219BE3204();
  sub_218E59B14(a2, &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_218E59B78(&v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v14 + v13);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v15 = sub_219BE2E54();
  type metadata accessor for SportsTopicClusteringService();
  v16 = sub_219BE2F84();

  return v16;
}

uint64_t sub_218E55424@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  sub_218E59C4C(v3);
}

uint64_t sub_218E55468()
{
  type metadata accessor for SportsTopicClusteringRequest();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218E55594(uint64_t a1)
{
  v3 = sub_219BF03B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x277D32C90])
  {
    (*(v4 + 96))(v6, v3);
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v8 = sub_219BF1C34();

    return v8;
  }

  else if (v7 == *MEMORY[0x277D32C88])
  {
    (*(v4 + 96))(v6, v3);
    v10 = *v6;
    if (*v6 >> 62)
    {
      sub_2186D6710(0, &qword_280E8E680);

      v14 = sub_219BF7534();
      swift_bridgeObjectRelease_n();
      v10 = v14;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;

      sub_219BF7924();
      sub_2186D6710(0, &qword_280E8E680);
      if (swift_dynamicCastMetatype() || (v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_6:
      }

      else
      {
        v13 = v11 + 32;
        while (1)
        {
          v15[1] = &unk_282B5B328;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v13 += 8;
          if (!--v12)
          {
            goto LABEL_6;
          }
        }

        v10 = v11 | 1;
      }
    }

    v15[0] = v10;
    sub_218E5B618();
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    result = sub_219BF78E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_218E55894(id *a1)
{
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*a1 expirationData];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  if (![v6 hasGlobalExpireUtcTime])
  {

LABEL_5:
    v9 = 1;
    return v9 & 1;
  }

  [v7 globalExpireUtcTime];
  sub_219BDBC74();
  sub_218E5B244();
  v8 = sub_219BF5334();

  (*(v3 + 8))(v5, v2);
  v9 = v8 ^ 1;
  return v9 & 1;
}

void sub_218E559F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF02F4();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDC04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = sub_219BEE6F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsTopicClusteringRequest();
  v16 = *(v53 + 48);
  v17 = sub_219BEFBD4();
  v18 = *(*(v17 - 8) + 16);
  v55 = a2;
  v18(v15, a2 + v16, v17);
  v19 = *MEMORY[0x277D320E8];
  v60 = v13;
  v61 = v12;
  (*(v13 + 104))(v15, v19, v12);
  v73 = *(a1 + 16);
  v59 = v15;
  if (v73)
  {
    v20 = 0;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v72 = v22;
    v62 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    *&v71 = a1 + v62;
    v23 = *(v21 + 56);
    v70 = (v21 - 8);
    v63 = (v21 + 16);
    v67 = MEMORY[0x277D84F90];
    v24 = v68;
    v25 = v21;
    v26 = v23;
    v64 = v25;
    v65 = v6;
    v69 = v23;
    v22(v11, v71, v6);
    while (1)
    {
      v27 = [sub_219BEDBE4() hasThumbnail];
      swift_unknownObjectRelease();
      if (v27)
      {
        v28 = [sub_219BEDBE4() topics];
        swift_unknownObjectRelease();
        if (v28)
        {
          sub_2186C6148(0, &unk_280E8E4E8);
          v29 = sub_219BF5924();

          v30 = v29 >> 62 ? sub_219BF7214() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v31 = 0;
          do
          {
            if (v30 == v31)
            {
              v6 = v65;
              (*v70)(v11, v65);

              v24 = v68;
              v26 = v69;
              goto LABEL_4;
            }

            if ((v29 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x21CECE0F0](v31, v29);
            }

            else
            {
              if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v32 = *(v29 + 8 * v31 + 32);
            }

            v33 = v32;
            if (__OFADD__(v31, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              return;
            }

            v34 = [v32 isManagedTopicWinner];

            ++v31;
          }

          while ((v34 & 1) == 0);

          v35 = *v63;
          v6 = v65;
          (*v63)(v66, v11, v65);
          v36 = v67;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C34908(0, v36[2] + 1, 1);
            v36 = v74;
          }

          v39 = v36[2];
          v38 = v36[3];
          if (v39 >= v38 >> 1)
          {
            sub_218C34908(v38 > 1, v39 + 1, 1);
            v36 = v74;
          }

          v36[2] = v39 + 1;
          v67 = v36;
          v26 = v69;
          v35(v36 + v62 + v39 * v69, v66, v6);
          v24 = v68;
        }

        else
        {
          (*v70)(v11, v6);
          v26 = v69;
        }
      }

      else
      {
        (*v70)(v11, v6);
      }

LABEL_4:
      if (++v20 == v73)
      {
        break;
      }

      v72(v11, v71 + v26 * v20, v6);
    }
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
    v24 = v68;
  }

  v40 = *(v55 + *(v53 + 36));
  sub_2186F20D4();
  v72 = v41;
  v42 = swift_allocObject();
  v71 = xmmword_219C09EC0;
  *(v42 + 16) = xmmword_219C09EC0;
  v43 = MEMORY[0x277D83B88];
  v44 = MEMORY[0x277D83C10];
  *(v42 + 56) = MEMORY[0x277D83B88];
  *(v42 + 64) = v44;
  *(v42 + 32) = v73;
  v45 = v67[2];
  *(v42 + 96) = v43;
  *(v42 + 104) = v44;
  *(v42 + 72) = v45;
  sub_219BF6214();
  v73 = v40;
  sub_219BE5314();

  __swift_project_boxed_opaque_existential_1((v54 + 96), *(v54 + 120));
  sub_218F019FC(v24);
  v46 = v59;
  v47 = v56;
  sub_219BEFFD4();

  (*(v57 + 8))(v24, v58);
  if (v47)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v71;
    *(v48 + 56) = MEMORY[0x277D83B88];
    *(v48 + 64) = MEMORY[0x277D83C10];
    *(v48 + 32) = v45;
    v74 = v47;
    v49 = v47;
    sub_2186CFDE4(0, &qword_280E8B580);
    v50 = sub_219BF5484();
    v52 = v51;
    *(v48 + 96) = MEMORY[0x277D837D0];
    *(v48 + 104) = sub_2186FC3BC();
    *(v48 + 72) = v50;
    *(v48 + 80) = v52;
    sub_219BF6214();
    sub_219BE5314();

    swift_willThrow();
  }

  (*(v60 + 8))(v46, v61);
}

uint64_t sub_218E56180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SportsTopicClusteringRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  if (a1)
  {
    v19[1] = a1;
    v19[2] = a2;
    v19[3] = a3;
    sub_21870F2E8(0, &qword_280EE6D08);
    swift_allocObject();

    return sub_219BE3014();
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v19[-2] = a4;
    v19[-1] = a5;
    sub_218E5B108(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, sub_2186D6710);
    sub_219BE3204();
    sub_218E59B14(a5, v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    sub_218E59B78(v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
    v17 = sub_219BE2E54();
    type metadata accessor for SportsTopicClusteringService();
    v18 = sub_219BE2F84();

    return v18;
  }
}

uint64_t sub_218E563C4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *))
{
  v4 = *a1;
  v11 = a3;
  v9 = sub_218D24B64(MEMORY[0x277D84F98], a4, v10, v4);
  sub_218E5B108(0, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, sub_2186C6148);
  sub_219BE3204();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v9;

  v6 = sub_219BE2E54();
  v7 = sub_219BE2F74();

  return v7;
}

char *sub_218E564EC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v130 = a4;
  v129 = *a4;
  v7 = type metadata accessor for SportsTopicClusteringRequest();
  v126 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v127 = v8;
  v128 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEDC04();
  v10 = *(v9 - 8);
  v154 = v9;
  v155 = v10;
  MEMORY[0x28223BE20](v9);
  v153 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEE6F4();
  v145 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v138 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v152 = &v120 - v15;
  v16 = sub_219BDBD34();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v120 - v21;
  v131 = *a1;
  v23 = a1[2];
  sub_219BDBD24();
  sub_219BDBC34();
  v24 = *(v17 + 8);
  v141 = v16;
  v142 = v24;
  v143 = v17 + 8;
  v24(v20, v16);
  v25 = *(a3 + v7[14]);
  v149 = a2;
  result = [*(a2 + 136) mutedTagIDs];
  if (!result)
  {
    goto LABEL_50;
  }

  v27 = result;
  v28 = sub_219BF5924();

  v29 = sub_218E5AD64(v23, v25, v28);

  v30 = *(a3 + v7[9]);
  sub_2186F20D4();
  v148 = v31;
  v32 = swift_allocObject();
  v150 = xmmword_219C09EC0;
  *(v32 + 16) = xmmword_219C09EC0;
  v144 = v29;
  if (v23 >> 62)
  {
    v33 = sub_219BF7214();
    v29 = v144;
  }

  else
  {
    v33 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D83B88];
  v35 = MEMORY[0x277D83C10];
  *(v32 + 56) = MEMORY[0x277D83B88];
  *(v32 + 64) = v35;
  *(v32 + 32) = v33;
  if (v29 >> 62)
  {
    v101 = sub_219BF7214();
    v35 = MEMORY[0x277D83C10];
    v34 = MEMORY[0x277D83B88];
    v36 = v101;
    v29 = v144;
  }

  else
  {
    v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v32 + 96) = v34;
  *(v32 + 104) = v35;
  *(v32 + 72) = v36;
  sub_219BF6214();
  sub_219BE5314();

  if (*(a3 + v7[25]) == 1)
  {
    MEMORY[0x28223BE20](v37);
    *(&v120 - 2) = v22;

    v38 = v151;
    v39 = sub_2195EB2AC(sub_218E5B224, (&v120 - 4), v29);
    v151 = v38;
  }

  else
  {

    v39 = v29;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v150;
  v41 = MEMORY[0x277D83B88];
  *(v40 + 56) = MEMORY[0x277D83B88];
  v42 = MEMORY[0x277D83C10];
  *(v40 + 64) = MEMORY[0x277D83C10];
  *(v40 + 32) = v36;
  v146 = v22;
  if (v39 >> 62)
  {
    v102 = v40;
    v103 = sub_219BF7214();
    v42 = MEMORY[0x277D83C10];
    v41 = MEMORY[0x277D83B88];
    v43 = v103;
    v40 = v102;
  }

  else
  {
    v43 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v152;
  *(v40 + 96) = v41;
  *(v40 + 104) = v42;
  *(v40 + 72) = v43;
  sub_219BF6214();
  v139 = v30;
  sub_219BE5314();

  v137 = v7;
  v45 = v7[12];
  v46 = sub_219BEFBD4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 16);
  v140 = a3;
  v136 = v48;
  v135 = v47 + 16;
  v48(v44, a3 + v45, v46);
  v49 = v145;
  v50 = *(v145 + 104);
  v133 = *MEMORY[0x277D320E8];
  v147 = v12;
  v134 = v145 + 104;
  v132 = v50;
  v50(v44);
  __swift_project_boxed_opaque_existential_1((v149 + 96), *(v149 + 120));
  v157 = v39;
  sub_218E5B108(0, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, sub_2186C6148);
  sub_218BACAC0();
  v51 = v151;
  v52 = sub_219BF56E4();

  if (v52 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60);
  }

  v53 = v152;
  v54 = sub_219BF0004();
  v55 = v51;
  if (v51)
  {
    v57 = *(v49 + 8);
    v56 = v49 + 8;
    v57(v53, v147);

    v58 = v146;
    v59 = v141;
LABEL_28:
    v142(v58, v59);
    return v56;
  }

  v60 = v54;
  v125 = v46;

  sub_218E559F4(v60, v140);
  v61 = v147;
  v63 = v62;
  v123 = v60;
  v64 = swift_allocObject();
  v124 = xmmword_219C09BA0;
  *(v64 + 16) = xmmword_219C09BA0;
  v65 = *(v63 + 16);
  *(v64 + 56) = MEMORY[0x277D83B88];
  *(v64 + 64) = MEMORY[0x277D83C10];
  *(v64 + 32) = v65;
  sub_219BF6214();
  sub_219BE5314();

  v66 = MEMORY[0x277D84F90];
  v122 = v63;
  if (v65)
  {
    v121 = 0;
    v156 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v65, 0);
    v66 = v156;
    v151 = *(v155 + 16);
    v67 = v63 + ((*(v155 + 80) + 32) & ~*(v155 + 80));
    *&v150 = *(v155 + 72);
    v155 += 16;
    v68 = (v155 - 8);
    do
    {
      v70 = v153;
      v69 = v154;
      v151(v153, v67, v154);
      v71 = sub_219BEDBA4();
      v73 = v72;
      (*v68)(v70, v69);
      v156 = v66;
      v75 = *(v66 + 16);
      v74 = *(v66 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_21870B65C((v74 > 1), v75 + 1, 1);
        v66 = v156;
      }

      *(v66 + 16) = v75 + 1;
      v76 = v66 + 16 * v75;
      *(v76 + 32) = v71;
      *(v76 + 40) = v73;
      v67 += v150;
      --v65;
    }

    while (v65);
    v61 = v147;
    v55 = v121;
  }

  v56 = sub_218845F78(v66);

  v157 = v56;
  v77 = sub_218E5A4FC(v144, &v157);

  v78 = swift_allocObject();
  *(v78 + 16) = v124;
  v79 = v138;
  if (v77 >> 62)
  {
    v80 = sub_219BF7214();
  }

  else
  {
    v80 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v78 + 56) = MEMORY[0x277D83B88];
  *(v78 + 64) = MEMORY[0x277D83C10];
  *(v78 + 32) = v80;
  sub_219BF6214();
  sub_219BE5314();

  v136(v79, v140 + v137[13], v125);
  v132(v79, v133, v61);
  __swift_project_boxed_opaque_existential_1((v149 + 96), *(v149 + 120));
  if (v77 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60);
  }

  v81 = sub_219BF0004();
  if (v55)
  {
    v82 = *(v145 + 8);
    v83 = v147;
    v82(v152, v147);

    v82(v79, v83);

    v59 = v141;
    v58 = v146;
    goto LABEL_28;
  }

  v155 = v81;

  MEMORY[0x28223BE20](v84);
  v85 = v140;
  *(&v120 - 2) = v149;
  *(&v120 - 1) = v85;
  v86 = v131;

  v87 = sub_2195EB294(sub_218E5B084, &v120 - 4, v86);
  v88 = v87;
  if (v87 >> 62)
  {
    v89 = sub_219BF7214();
    v90 = v146;
    if (v89)
    {
      goto LABEL_32;
    }

LABEL_47:

    v92 = MEMORY[0x277D84F90];
LABEL_48:
    v104 = sub_218845F78(v92);

    MEMORY[0x28223BE20](v105);
    v106 = v140;
    *(&v120 - 4) = v140;
    *(&v120 - 3) = v104;
    *(&v120 - 2) = v90;
    v107 = sub_218D24CA8(MEMORY[0x277D84F98], sub_218E5B0A4, (&v120 - 6), v155);

    MEMORY[0x28223BE20](v108);
    *(&v120 - 6) = v107;
    *(&v120 - 5) = v106;
    v109 = v149;
    *(&v120 - 4) = &v157;
    *(&v120 - 3) = v109;
    *(&v120 - 2) = v138;
    v110 = sub_218F8E3CC(sub_218E5B0C4, (&v120 - 8), v131);
    v121 = v55;

    MEMORY[0x28223BE20](v111);
    *(&v120 - 4) = v130;
    *(&v120 - 3) = &v157;
    *(&v120 - 2) = v106;
    sub_218E5B108(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
    sub_219BE3204();
    v112 = v128;
    sub_218E59B14(v106, v128);
    v113 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v114 = (v127 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
    v116 = swift_allocObject();
    sub_218E59B78(v112, v116 + v113);
    *(v116 + v114) = v110;
    *(v116 + v115) = v122;
    *(v116 + ((v115 + 15) & 0xFFFFFFFFFFFFFFF8)) = v123;
    v117 = sub_219BE2E54();
    v56 = sub_219BE2F84();

    v118 = *(v145 + 8);
    v119 = v147;
    v118(v152, v147);
    v118(v138, v119);

    v142(v146, v141);
    return v56;
  }

  v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v90 = v146;
  if (!v89)
  {
    goto LABEL_47;
  }

LABEL_32:
  v154 = 0;
  v156 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v89 & ~(v89 >> 63), 0);
  if ((v89 & 0x8000000000000000) == 0)
  {
    v91 = 0;
    v92 = v156;
    do
    {
      if ((v88 & 0xC000000000000001) != 0)
      {
        v93 = MEMORY[0x21CECE0F0](v91, v88);
      }

      else
      {
        v93 = *(v88 + 8 * v91 + 32);
        swift_unknownObjectRetain();
      }

      v94 = [v93 identifier];
      v95 = sub_219BF5414();
      v97 = v96;
      swift_unknownObjectRelease();

      v156 = v92;
      v99 = *(v92 + 16);
      v98 = *(v92 + 24);
      if (v99 >= v98 >> 1)
      {
        sub_21870B65C((v98 > 1), v99 + 1, 1);
        v92 = v156;
      }

      ++v91;
      *(v92 + 16) = v99 + 1;
      v100 = v92 + 16 * v99;
      *(v100 + 32) = v95;
      *(v100 + 40) = v97;
    }

    while (v89 != v91);

    v90 = v146;
    v55 = v154;
    goto LABEL_48;
  }

  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_218E575D4(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = [*a1 groupingEligibility];
  if ((v5 - 1) < 3)
  {
    v6 = *(a3 + *(type metadata accessor for SportsTopicClusteringRequest() + 116));
    v7 = [v4 identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    v15[0] = v8;
    v15[1] = v10;
    MEMORY[0x28223BE20](v11);
    v14[2] = v15;
    LOBYTE(v7) = sub_2186D128C(sub_2186D1338, v14, v6);

    v12 = v7 ^ 1;
    return v12 & 1;
  }

  if (!v5)
  {
    v12 = 0;
    return v12 & 1;
  }

  type metadata accessor for FCTagEligibilityForGrouping(0);
  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_218E57710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_219BEDBE4();
  v11 = [v10 topics];
  if (!v11)
  {
    return swift_unknownObjectRelease();
  }

  v12 = v11;
  sub_2186C6148(0, &unk_280E8E4E8);
  v13 = sub_219BF5924();

  v14 = sub_218E57850(a3, v10, v13);
  v16[2] = a4;
  v16[3] = MEMORY[0x28223BE20](v14);
  v16[4] = a5;
  v16[5] = a1;
  v16[6] = a2;
  sub_219249504(sub_218E5B430, v16, v13);

  return swift_unknownObjectRelease();
}

unint64_t sub_218E57850(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = sub_219BDBD34();
  v60 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v59 = &v50 - v13;
  if (*(a1 + *(type metadata accessor for SportsTopicClusteringRequest() + 100)) == 1 && ([a2 respondsToSelector_] & 1) != 0 && (v14 = objc_msgSend(a2, sel_expirationData)) != 0)
  {
    isUniquelyReferenced_nonNull_native = v14;
    v16 = sub_218E57D90(v14);
    v17 = v16;
    if (v16 >> 62)
    {
LABEL_39:
      v18 = sub_219BF7214();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = a3;
    v53 = isUniquelyReferenced_nonNull_native;
    v51 = v9;
    if (v18)
    {
      v19 = 0;
      v57 = v17 & 0xFFFFFFFFFFFFFF8;
      v58 = v17 & 0xC000000000000001;
      v61 = (v60 + 32);
      v54 = v60 + 40;
      v20 = MEMORY[0x277D84F98];
      v55 = v18;
      v56 = v17;
      while (1)
      {
        if (v58)
        {
          v22 = MEMORY[0x21CECE0F0](v19, v17);
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v19 >= *(v57 + 16))
          {
            goto LABEL_36;
          }

          v22 = *(v17 + 8 * v19 + 32);
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        v62 = v23;
        v24 = v22;
        v25 = [v22 tagID];
        v9 = sub_219BF5414();
        v17 = v26;

        v63 = v24;
        v27 = [v24 expireTime];
        v28 = v59;
        sub_219BDBCA4();

        v29 = *v61;
        a3 = v12;
        v30 = v28;
        v31 = v6;
        (*v61)(v12, v30, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v20;
        v12 = sub_21870F700(v9, v17);
        v33 = v20[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_37;
        }

        v36 = v32;
        if (v20[3] >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v32)
            {
              goto LABEL_8;
            }
          }

          else
          {
            sub_219491E54();
            if (v36)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
          sub_219480C64(v35, isUniquelyReferenced_nonNull_native);
          v37 = sub_21870F700(v9, v17);
          if ((v36 & 1) != (v38 & 1))
          {
            result = sub_219BF79A4();
            __break(1u);
            return result;
          }

          v12 = v37;
          if (v36)
          {
LABEL_8:

            v20 = v64;
            v21 = v64[7] + *(v60 + 72) * v12;
            v12 = a3;
            v6 = v31;
            (*(v60 + 40))(v21, a3, v31);

            goto LABEL_9;
          }
        }

        v20 = v64;
        v64[(v12 >> 6) + 8] |= 1 << v12;
        v39 = (v20[6] + 16 * v12);
        *v39 = v9;
        v39[1] = v17;
        v40 = v20[7] + *(v60 + 72) * v12;
        v12 = a3;
        v6 = v31;
        v29(v40, a3, v31);

        v41 = v20[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_38;
        }

        v20[2] = v43;
LABEL_9:
        ++v19;
        v17 = v56;
        if (v62 == v55)
        {
          goto LABEL_31;
        }
      }
    }

    v20 = MEMORY[0x277D84F98];
LABEL_31:

    v46 = v53;
    if ([v53 hasGlobalExpireUtcTime])
    {
      [v46 globalExpireUtcTime];
      v47 = v51;
      v48 = sub_219BDBC74();
      MEMORY[0x28223BE20](v48);
      *(&v50 - 2) = v20;
      *(&v50 - 1) = v47;
      v49 = sub_218D24DC8(MEMORY[0x277D84F98], sub_218E5B454, (&v50 - 4), v52);

      (*(v60 + 8))(v47, v6);
      return v49;
    }

    else
    {
    }

    return v20;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];

    return sub_2194AF4E8(v44);
  }
}

uint64_t sub_218E57D90(void *a1)
{
  v1 = [a1 tagsExpirationLists];
  if (v1)
  {
    v2 = v1;
    sub_2186C6148(0, &qword_27CC12B78);
    sub_219BF5914();
  }

  return MEMORY[0x277D84F90];
}

id sub_218E57EA0(uint64_t a1, id *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E5B470(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v23 - v14;
  result = [*a2 tagID];
  if (result)
  {
    v17 = result;
    v23[3] = v4;
    v23[1] = a1;
    v18 = sub_219BF5414();
    v20 = v19;

    if (*(a3 + 16) && (v21 = sub_21870F700(v18, v20), (v22 & 1) != 0))
    {
      (*(v10 + 16))(v12, *(a3 + 56) + *(v10 + 72) * v21, v9);
      (*(v10 + 32))(v15, v12, v9);
    }

    else
    {
      (*(v10 + 16))(v15, a4, v9);
    }

    (*(v10 + 56))(v15, 0, 1, v9);
    return sub_2199D586C(v15, v18, v20);
  }

  return result;
}

id sub_218E580D8(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v50 = a5;
  v45 = a4;
  v11 = sub_219BEDC04();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBD34();
  v44 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = *a1;
  result = [*a1 tagID];
  if (result)
  {
    v21 = result;
    v43 = a6;
    v51 = v6;
    v22 = sub_219BF5414();
    v24 = v23;

    v46 = v22;
    v25 = v22;
    v26 = v24;
    if ((sub_2188537B8(v25, v24, a2) & 1) == 0 || [v19 isManagedTopic] && (objc_msgSend(v19, sel_isManagedTopicWinner) & 1) == 0)
    {
    }

    if (*(a3 + 16) && (v27 = sub_21870F700(v46, v24), (v28 & 1) != 0) && (v29 = v44, (*(v44 + 16))(v16, *(a3 + 56) + *(v44 + 72) * v27, v13), (*(v29 + 32))(v18, v16, v13), sub_218E5B244(), v30 = sub_219BF5334(), (*(v29 + 8))(v18, v13), (v30 & 1) == 0))
    {
    }

    else
    {
      v31 = v50;
      v32 = *v50;
      if (*(*v50 + 16))
      {
        v33 = sub_21870F700(v46, v24);
        v35 = v48;
        v34 = v49;
        v36 = v47;
        if (v37)
        {
          v38 = *(*(v32 + 56) + 8 * v33);
        }

        else
        {
          v38 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
        v35 = v48;
        v34 = v49;
        v36 = v47;
      }

      (*(v35 + 16))(v36, v43, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_2191F9164(0, v38[2] + 1, 1, v38);
      }

      v40 = v38[2];
      v39 = v38[3];
      if (v40 >= v39 >> 1)
      {
        v38 = sub_2191F9164(v39 > 1, v40 + 1, 1, v38);
      }

      v38[2] = v40 + 1;
      (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v36, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v31;
      *v31 = 0x8000000000000000;
      sub_21948D194(v38, v46, v26, isUniquelyReferenced_nonNull_native);

      *v31 = v52;
    }
  }

  return result;
}

uint64_t sub_218E584D4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v76 = a5;
  v75 = a6;
  v10 = sub_219BEDC04();
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  MEMORY[0x28223BE20](v10);
  v78 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF02F4();
  v73 = *(v13 - 8);
  v74 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = [*a1 identifier];
  v18 = sub_219BF5414();
  v20 = v19;

  if (!*(a2 + 16))
  {

    goto LABEL_6;
  }

  v21 = sub_21870F700(v18, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_6:
    type metadata accessor for SportsTopicClusteringRequest();
    sub_2186F20D4();
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_219C09BA0;
    v45 = [v16 identifier];
    v46 = sub_219BF5414();
    v48 = v47;

    *(v44 + 56) = MEMORY[0x277D837D0];
    *(v44 + 64) = sub_2186FC3BC();
    *(v44 + 32) = v46;
    *(v44 + 40) = v48;
    sub_219BF6214();
    sub_219BE5314();

    v49 = v75;
    *v75 = 0;
    v49[1] = 0;
    v49[2] = 0;
    return result;
  }

  v72 = v16;
  v24 = *(*(a2 + 56) + 8 * v21);
  swift_bridgeObjectRetain_n();
  v25 = v77;
  v26 = sub_218E5A740(v24, a3);
  v77 = v24;

  v81 = v26;
  sub_218E5B470(0, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
  sub_218E5B3A8();
  v27 = sub_219BF56E4();
  v70 = v25;

  __swift_project_boxed_opaque_existential_1((a4 + 96), *(a4 + 120));
  v69 = a3;
  type metadata accessor for SportsTopicClusteringRequest();
  sub_218F01C2C(v15);
  v71 = v27;
  v28 = v70;
  v29 = sub_219BEFFD4();
  if (v28)
  {
    (*(v73 + 8))(v15, v74);

    sub_2186F20D4();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C0B8C0;
    v31 = [v72 identifier];
    v32 = sub_219BF5414();
    v34 = v33;

    v35 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v36 = sub_2186FC3BC();
    *(v30 + 64) = v36;
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    v37 = *(v71 + 16);

    v38 = MEMORY[0x277D83C10];
    *(v30 + 96) = MEMORY[0x277D83B88];
    *(v30 + 104) = v38;
    *(v30 + 72) = v37;
    v81 = v28;
    v39 = v28;
    sub_2186CFDE4(0, &qword_280E8B580);
    v40 = sub_219BF5484();
    *(v30 + 136) = v35;
    *(v30 + 144) = v36;
    *(v30 + 112) = v40;
    *(v30 + 120) = v41;
    sub_219BF6214();
    sub_219BE5314();

    v43 = v75;
    *v75 = 0;
    v43[1] = 0;
    v43[2] = 0;
  }

  else
  {
    v50 = v29;
    (*(v73 + 8))(v15, v74);

    sub_219BEF864();

    v51 = MEMORY[0x277D84F90];
    v52 = sub_219BEF824();
    v53 = v52;
    v54 = *(v50 + 16);
    v55 = v72;
    if (v54)
    {
      v71 = v52;
      v74 = 0;
      v81 = v51;
      sub_21870B65C(0, v54, 0);
      v51 = v81;
      v56 = *(v80 + 16);
      v57 = *(v80 + 80);
      v73 = v50;
      v58 = v50 + ((v57 + 32) & ~v57);
      v76 = *(v80 + 72);
      v77 = v56;
      v80 += 16;
      v59 = (v80 - 8);
      do
      {
        v61 = v78;
        v60 = v79;
        v77(v78, v58, v79);
        v62 = sub_219BEDBA4();
        v64 = v63;
        (*v59)(v61, v60);
        v81 = v51;
        v66 = *(v51 + 16);
        v65 = *(v51 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_21870B65C((v65 > 1), v66 + 1, 1);
          v51 = v81;
        }

        *(v51 + 16) = v66 + 1;
        v67 = v51 + 16 * v66;
        *(v67 + 32) = v62;
        *(v67 + 40) = v64;
        v58 += v76;
        --v54;
      }

      while (v54);
      v68 = v75;
      v55 = v72;
      v50 = v73;
      v53 = v71;
    }

    else
    {
      v68 = v75;
    }

    sub_218DDBE70(v51);

    *v68 = v55;
    v68[1] = v50;
    v68[2] = v53;
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_218E58B44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BEDBA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_218E58B80(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v7);
  v8 = *a2;
  v9 = *(*a2 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_5:
    v13 = type metadata accessor for SportsTopicClusteringRequest();
    v14 = MEMORY[0x21CEC9610](v10, *(a3 + *(v13 + 32)), v7, v6);

    return v14;
  }

  v15[6] = v3;
  v10 = sub_21947D1C0(v9, 0);
  v11 = sub_2194ABD64(v15, v10 + 4, v9, v8);

  result = sub_21892DE98();
  if (v11 == v9)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_218E58CAC(unint64_t *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a4;
  v93 = a6;
  v94 = a5;
  v98 = a3;
  v95 = a2;
  v105 = sub_219BEDC04();
  v90 = *(v105 - 8);
  v7 = MEMORY[0x28223BE20](v105);
  v103 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_27;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    do
    {
      v11 = 0;
      v100 = v9 & 0xFFFFFFFFFFFFFF8;
      *&v101 = v9 & 0xC000000000000001;
      v12 = MEMORY[0x277D84F98];
      v99 = v9;
      while (v101)
      {
        v13 = MEMORY[0x21CECE0F0](v11, v9);
        v14 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          goto LABEL_23;
        }

LABEL_9:
        v102 = v14;
        v15 = [v13 identifier];
        v16 = sub_219BF5414();
        v18 = v17;

        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104[0] = v12;
        v9 = v12;
        v20 = sub_21870F700(v16, v18);
        v22 = v12;
        v23 = v20;
        v24 = v12[2];
        v25 = (v21 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_25;
        }

        v27 = v21;
        if (v22[3] >= v26)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v21)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v9 = v104;
            sub_2194902C8();
            if (v27)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_21947DE18(v26, isUniquelyReferenced_nonNull_native);
          v9 = v104[0];
          v28 = sub_21870F700(v16, v18);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_65;
          }

          v23 = v28;
          if (v27)
          {
LABEL_4:

            v12 = v104[0];
            *(*(v104[0] + 56) + 8 * v23) = v13;
            swift_unknownObjectRelease();
            v7 = swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v12 = v104[0];
        *(v104[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v30 = (v12[6] + 16 * v23);
        *v30 = v16;
        v30[1] = v18;
        *(v12[7] + 8 * v23) = v13;
        v7 = swift_unknownObjectRelease();
        v31 = v12[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v12[2] = v33;
LABEL_5:
        ++v11;
        v9 = v99;
        if (v102 == v10)
        {
          goto LABEL_29;
        }
      }

      if (v11 >= *(v100 + 16))
      {
        goto LABEL_24;
      }

      v13 = *(v9 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      v14 = (v11 + 1);
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_9;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v7 = sub_219BF7214();
      v10 = v7;
    }

    while (v7);
  }

  v12 = MEMORY[0x277D84F98];
LABEL_29:
  MEMORY[0x28223BE20](v7);
  v102 = v12;
  v35 = v97;
  v34 = v98;
  *(&v89 - 4) = v12;
  *(&v89 - 3) = v34;
  v36 = v96;
  *(&v89 - 2) = v95;
  v37 = sub_218F8E5AC(sub_218E5B29C, (&v89 - 6), v35);
  v99 = v36;
  v38 = type metadata accessor for SportsTopicClusteringRequest();
  v39 = *(v34 + *(v38 + 36));
  sub_2186F20D4();
  v100 = v40;
  v41 = swift_allocObject();
  v101 = xmmword_219C09EC0;
  *(v41 + 16) = xmmword_219C09EC0;
  v42 = *(v37 + 2);
  v43 = MEMORY[0x277D83B88];
  v44 = MEMORY[0x277D83C10];
  *(v41 + 56) = MEMORY[0x277D83B88];
  *(v41 + 64) = v44;
  *(v41 + 32) = v42;
  v45 = *(v35 + 16);
  *(v41 + 96) = v43;
  *(v41 + 104) = v44;
  *(v41 + 72) = v45;
  sub_219BF6214();
  sub_219BE5314();

  v96 = v37;
  v46 = sub_218E5B2BC(v34, v37);
  v97 = v38;
  v47 = *(v34 + *(v38 + 112));
  v48 = sub_219A79734(v47, v46);
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v95 = v46;
  if ((v53 & 1) == 0)
  {

LABEL_31:
    sub_218B66E9C(v48, v50, v52, v54);
    v56 = v55;
    goto LABEL_38;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();

  v57 = swift_dynamicCastClass();
  if (!v57)
  {
    swift_unknownObjectRelease();
    v57 = MEMORY[0x277D84F90];
  }

  v58 = *(v57 + 16);

  if (__OFSUB__(v54 >> 1, v52))
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v58 != (v54 >> 1) - v52)
  {
LABEL_63:
    swift_unknownObjectRelease();
    v43 = MEMORY[0x277D83B88];
    v44 = MEMORY[0x277D83C10];
    goto LABEL_31;
  }

  v56 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v43 = MEMORY[0x277D83B88];
  v44 = MEMORY[0x277D83C10];
  if (v56)
  {
    goto LABEL_39;
  }

  v56 = MEMORY[0x277D84F90];
LABEL_38:
  swift_unknownObjectRelease();
LABEL_39:
  v59 = MEMORY[0x277D84F90];
  v60 = swift_allocObject();
  *(v60 + 16) = v101;
  v91 = v56;
  v61 = *(v56 + 16);
  *(v60 + 56) = v43;
  *(v60 + 64) = v44;
  *(v60 + 32) = v61;
  *(v60 + 96) = v43;
  *(v60 + 104) = v44;
  *(v60 + 72) = v47;
  sub_219BF6214();
  v92 = v39;
  sub_219BE5314();

  v104[0] = v59;
  v62 = *(v94 + 16);
  if (v62)
  {
    v63 = *(v90 + 16);
    v64 = v94 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v65 = *(v90 + 72);
    v66 = (v90 + 8);
    *&v101 = MEMORY[0x277D84F90];
    v63(v103, v64, v105);
    while (1)
    {
      v67 = sub_219BEDBA4();
      if (!v102[2])
      {
        break;
      }

      v69 = sub_21870F700(v67, v68);
      v71 = v70;

      if ((v71 & 1) == 0)
      {
        goto LABEL_42;
      }

      v72 = *(v102[7] + 8 * v69);
      swift_unknownObjectRetain();
      v73 = v103;
      v74 = sub_219BEDBC4();
      [v72 setScoreProfile_];

      v75 = (*v66)(v73, v105);
      MEMORY[0x21CECC690](v75);
      if (*((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      *&v101 = v104[0];
LABEL_43:
      v64 += v65;
      if (!--v62)
      {
        goto LABEL_51;
      }

      v63(v103, v64, v105);
    }

LABEL_42:
    (*v66)(v103, v105);
    goto LABEL_43;
  }

  *&v101 = v59;
LABEL_51:
  sub_2186D6710(0, &qword_280E8E260);
  v76 = sub_219BF5904();
  v77 = FCPromoteOneHeadlineIgnoringProminence();

  if (v77)
  {

    v78 = sub_219BF5924();

    sub_219BEF864();

    v79 = sub_219BEF824();
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_219C09BA0;
    v81 = v91;
    v82 = MEMORY[0x277D83C10];
    if (v78 >> 62)
    {
      v83 = sub_219BF7214();
    }

    else
    {
      v83 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v80 + 56) = MEMORY[0x277D83B88];
    *(v80 + 64) = v82;
    *(v80 + 32) = v83;

    sub_219BF6214();
    sub_219BE5314();

    if (v78 >> 62)
    {
      v84 = sub_219BF7214();
    }

    else
    {
      v84 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v84)
    {

      v85 = v78;
      v86 = v79;
    }

    else
    {
      v85 = 0;
      v86 = 0;
    }

    v104[0] = v85;
    v104[1] = v86;
    v104[2] = v81;
    sub_21870F2E8(0, &qword_280EE6D10);
    swift_allocObject();
    v87 = sub_219BE3014();

    return v87;
  }

  else
  {
    __break(1u);
LABEL_65:
    result = sub_219BF79A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_218E5959C(uint64_t *a1, void **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a3 + *(type metadata accessor for SportsTopicClusteringRequest() + 40));
  v6 = [v4 feedIDForBin_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_219BF5414();
    v10 = v9;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    sub_21948D1C0(v4, v8, v10, isUniquelyReferenced_nonNull_native);

    *a1 = v20;
  }

  else
  {
    sub_2186F20D4();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D83B88];
    v15 = MEMORY[0x277D83C10];
    *(v13 + 16) = xmmword_219C09EC0;
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = v5;
    v16 = [v4 identifier];
    v17 = sub_219BF5414();
    v19 = v18;

    *(v13 + 96) = MEMORY[0x277D837D0];
    *(v13 + 104) = sub_2186FC3BC();
    *(v13 + 72) = v17;
    *(v13 + 80) = v19;
    sub_219BF6214();
    sub_219BE5314();
  }

  return result;
}

uint64_t sub_218E59728(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v4 = *(a2 + 16);
  if (v4 && (v9[6] = v2, v5 = sub_21947D1C0(v4, 0), v6 = sub_2194B7E3C(v9, v5 + 4, v4, a2), , result = sub_21892DE98(), v6 != v4))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for SportsTopicClusteringRequest();
    v8 = sub_219BF2794();

    return v8;
  }

  return result;
}

uint64_t sub_218E5986C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v26 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];

  v8 = sub_218E5AA78(v7, a2, &v27);

  type metadata accessor for SportsTopicClusteringRequest();
  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0B8C0;
  if (v8 >> 62)
  {
    v23 = v9;
    v10 = sub_219BF7214();
    v9 = v23;
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D83B88];
  v12 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v12;
  *(v9 + 32) = v10;
  v13 = *(v7 + 16);
  *(v9 + 96) = v11;
  *(v9 + 104) = v12;
  *(v9 + 72) = v13;
  v14 = v9;
  v15 = [v6 identifier];
  v16 = sub_219BF5414();
  v18 = v17;

  v14[17] = MEMORY[0x277D837D0];
  v14[18] = sub_2186FC3BC();
  v14[14] = v16;
  v14[15] = v18;
  sub_219BF6214();
  sub_219BE5314();

  if (v8 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_5;
    }

LABEL_7:

    v6 = 0;
    v8 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_5:
  __swift_project_boxed_opaque_existential_1((v25 + 96), *(v25 + 120));
  sub_219BEFFC4();
  v20 = v19;
  v21 = v26;

  swift_unknownObjectRetain();
LABEL_8:
  *a4 = v6;
  a4[1] = v8;
  a4[2] = v20;
  a4[3] = v21;
}

uint64_t sub_218E59AA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_218E59B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsTopicClusteringRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E59B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsTopicClusteringRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E59BDC()
{
  type metadata accessor for SportsTopicClusteringRequest();

  return sub_218E55468();
}

uint64_t sub_218E59C4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_218E59CB4(unint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SportsTopicClusteringRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_218E564EC(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218E59D5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_218C81048(v8);
      v8 = result;
    }

    v85 = (v8 + 16);
    v86 = *(v8 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v8 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_218E5A2F8((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v16 > v17;
        ++v14;
        v16 = v17;
        if ((((v13 <= v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 > v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 > v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *(v22 + 2);
            v25 = *(v22 + 3);
            v26 = *v22;
            v27 = v23[1];
            *v22 = *v23;
            v22[1] = v27;
            *v23 = v26;
            *(v23 + 2) = v24;
            *(v23 + 3) = v25;
          }

          ++v21;
          v19 -= 32;
          v11 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v39 = *(v8 + 24);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_2191F6B60((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v40;
    v41 = v8 + 32;
    v42 = (v8 + 32 + 16 * v5);
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 32);
          v44 = *(v8 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v8 + 16 * v40);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v41 + 16 * v5);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v8 + 16 * v40);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v41 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v41 + 16 * (v5 - 1));
        v81 = *v80;
        v82 = (v41 + 16 * v5);
        v83 = v82[1];
        sub_218E5A2F8((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v8 + 16);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove((v41 + 16 * v5), v82 + 2, 16 * (v84 - 1 - v5));
        *(v8 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v41 + 16 * v40;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v8 + 16 * v40);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v41 + 16 * v5);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 16);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(v34 - 16) > v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 24);
    v36 = *v34;
    v37 = *(v34 - 16);
    *v34 = *(v34 - 32);
    *(v34 + 16) = v37;
    *(v34 - 16) = v32;
    *(v34 - 8) = v35;
    *(v34 - 32) = v36;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}