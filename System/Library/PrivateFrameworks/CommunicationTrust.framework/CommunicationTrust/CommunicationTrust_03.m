uint64_t sub_1B9896D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[9] = v9;
  v10 = *(v9 + 64);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = v5[2];

  return MEMORY[0x1EEE6DFA0](sub_1B9896EC4, 0);
}

uint64_t sub_1B9896EC4()
{
  v13 = v0[11];
  v16 = v0[10];
  v15 = v0[9];
  v17 = v0[8];
  v1 = v0[7];
  v11 = v0[6];
  v12 = v0[5];
  v14 = v0[3];
  v0[2] = v0;
  sub_1B98F5FE8();
  swift_getAssociatedConformanceWitness();
  sub_1B98F5DD8();
  v2 = *(v15 + 8);
  v0[12] = v2;
  v0[13] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v16, v17);
  v3 = *(MEMORY[0x1E69E8938] + 4);
  v4 = swift_task_alloc();
  v18[14] = v4;
  *v4 = v18[2];
  v4[1] = sub_1B989702C;
  v5 = v18[11];
  v6 = v18[7];
  v7 = v18[6];
  v8 = v18[5];
  v9 = v18[4];

  return MEMORY[0x1EEE6DE58](v5, v9, v8, v7);
}

uint64_t sub_1B989702C()
{
  v11 = *v1;
  v2 = *(*v1 + 112);
  *(v11 + 16) = *v1;
  v12 = (v11 + 16);
  *(v11 + 120) = v0;

  if (v0)
  {
    v3 = *(v11 + 104);
    (*(v11 + 96))(*(v11 + 88), *(v11 + 64));
    v4 = *v12;

    return MEMORY[0x1EEE6DFA0](sub_1B98971FC, 0);
  }

  else
  {
    v5 = *(v11 + 104);
    v9 = *(v11 + 88);
    v10 = *(v11 + 80);
    v6 = *(v11 + 64);
    (*(v11 + 96))();

    v7 = *(*v12 + 8);

    return v7();
  }
}

uint64_t sub_1B98971FC()
{
  v1 = v0[11];
  v7 = v0[10];
  v0[2] = v0;

  v2 = v0;
  v3 = *(v0[2] + 8);
  v4 = v0[2];
  v5 = v2[15];

  return v3();
}

uint64_t sub_1B9897378(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9897484;

  return sub_1B9893098(a1, v6, v7, v8, v9, v10, v11 & 1, v12);
}

uint64_t sub_1B9897484()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98975AC(uint64_t a1)
{
  v3 = sub_1B98F5988();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_1B989775C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9897874(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B9897A7C()
{
  v2 = qword_1EBBD5998;
  if (!qword_1EBBD5998)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5998);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9897AF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5600, &qword_1B98FB540);
  (*(*(v1 - 8) + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59A0, &unk_1B98FB548);
  (*(*(v2 - 8) + 8))(a1 + 8);
  return a1;
}

uint64_t sub_1B9897BA8(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

void *sub_1B9897BD4(const void *a1, void *a2)
{
  v6 = sub_1B98F5988();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B9897CFC()
{
  v2 = qword_1EBBD59A8;
  if (!qword_1EBBD59A8)
  {
    sub_1B98F5DC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD59A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9897D7C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B9897F7C(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_1B989FF34(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v4 + 32))(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v6 & 1;
}

uint64_t sub_1B9898018(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_1B989FF34(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v4 + 40))(a1, v3);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v6;
}

uint64_t sub_1B98980B0(uint64_t a1, uint64_t a2)
{
  v366 = a1;
  v352 = a2;
  v367 = sub_1B98AE7B4;
  v370 = sub_1B98AE778;
  v371 = sub_1B98B1474;
  v376 = sub_1B98B1374;
  v380 = sub_1B98B149C;
  v382 = sub_1B98B1464;
  v384 = sub_1B98B146C;
  v386 = sub_1B98B1480;
  v388 = sub_1B98B148C;
  v390 = sub_1B98B1494;
  v393 = sub_1B98B14A8;
  v305 = sub_1B98B14B4;
  v306 = sub_1B98B14E0;
  v307 = sub_1B98B150C;
  v308 = sub_1B98B1538;
  v309 = sub_1B98B1564;
  v310 = sub_1B98B1590;
  v311 = sub_1B98B15BC;
  v312 = sub_1B98B15E8;
  v313 = sub_1B98B19D4;
  v314 = sub_1B98B19CC;
  v315 = sub_1B98B1ADC;
  v316 = sub_1B98B19DC;
  v317 = sub_1B98B1B04;
  v318 = sub_1B98B1ACC;
  v319 = sub_1B98B1AD4;
  v320 = sub_1B98B1AE8;
  v321 = sub_1B98B1AF4;
  v322 = sub_1B98B1AFC;
  v323 = sub_1B98B1B10;
  v324 = sub_1B98B16D0;
  v325 = sub_1B98B16C8;
  v326 = sub_1B98B1750;
  v327 = sub_1B98B16D8;
  v328 = sub_1B98B1778;
  v329 = sub_1B98B1740;
  v330 = sub_1B98B1748;
  v331 = sub_1B98B175C;
  v332 = sub_1B98B1768;
  v333 = sub_1B98B1770;
  v334 = sub_1B98B1784;
  v335 = sub_1B98B1B1C;
  v453 = 0;
  v452 = 0;
  v451 = 0;
  v450 = 0;
  v449 = 0;
  v433 = 0;
  v432 = 0;
  v431 = 0;
  v430[0] = 0;
  v430[1] = 0;
  __len = 40;
  __c = 0;
  memset(v426, 0, sizeof(v426));
  v424 = 0;
  v415 = 0;
  v416 = 0;
  memset(v413, 0, sizeof(v413));
  v406 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90);
  v338 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3);
  v339 = v141 - v338;
  v340 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v141 - v338, v5);
  v341 = v141 - v340;
  v347 = 0;
  v342 = type metadata accessor for BlockedHandle();
  v343 = (*(*(v342 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v342, v6);
  v344 = v141 - v343;
  v345 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v141 - v343, v8);
  v346 = v141 - v345;
  v453 = v141 - v345;
  v348 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B8, &qword_1B98FB5B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v347, v9);
  v349 = v141 - v348;
  v350 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v141 - v348);
  v351 = v141 - v350;
  v363 = sub_1B98F5138();
  v361 = *(v363 - 8);
  v362 = v363 - 8;
  v356 = v361[8];
  v353 = (v356 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v366, v352);
  v354 = v141 - v353;
  v355 = (v356 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v357 = v141 - v355;
  v358 = (v356 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v141 - v358;
  v359 = v141 - v358;
  v452 = v16;
  v360 = *v18;
  v451 = v360;
  v450 = v19;
  v20 = sub_1B98F1E6C();
  v364 = v361[2];
  v365 = v361 + 2;
  v364(v17, v20, v363);

  sub_1B98F54D8();
  v378 = 7;
  v368 = swift_allocObject();
  *(v368 + 16) = v366;

  v377 = 32;
  v21 = swift_allocObject();
  v22 = v368;
  v379 = v21;
  *(v21 + 16) = v367;
  *(v21 + 24) = v22;

  v23 = sub_1B98F5118();
  v24 = v369;
  v397 = v23;
  v398 = sub_1B98F5BD8();
  v374 = 17;
  v383 = swift_allocObject();
  v373 = 32;
  *(v383 + 16) = 32;
  v385 = swift_allocObject();
  v375 = 8;
  *(v385 + 16) = 8;
  v25 = swift_allocObject();
  v372 = v25;
  *(v25 + 16) = v370;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  v27 = v372;
  v387 = v26;
  *(v26 + 16) = v371;
  *(v26 + 24) = v27;
  v389 = swift_allocObject();
  *(v389 + 16) = v373;
  v391 = swift_allocObject();
  *(v391 + 16) = v375;
  v28 = swift_allocObject();
  v29 = v379;
  v381 = v28;
  *(v28 + 16) = v376;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v381;
  v394 = v30;
  *(v30 + 16) = v380;
  *(v30 + 24) = v31;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v392 = sub_1B98F5F98();
  v395 = v32;

  v33 = v383;
  v34 = v395;
  *v395 = v382;
  v34[1] = v33;

  v35 = v385;
  v36 = v395;
  v395[2] = v384;
  v36[3] = v35;

  v37 = v387;
  v38 = v395;
  v395[4] = v386;
  v38[5] = v37;

  v39 = v389;
  v40 = v395;
  v395[6] = v388;
  v40[7] = v39;

  v41 = v391;
  v42 = v395;
  v395[8] = v390;
  v42[9] = v41;

  v43 = v394;
  v44 = v395;
  v395[10] = v393;
  v44[11] = v43;
  sub_1B9851B38();

  if (os_log_type_enabled(v397, v398))
  {
    v296 = sub_1B98F5C28();
    v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v297 = sub_1B985263C(0);
    v298 = sub_1B985263C(2);
    v300 = &v403;
    v403 = v296;
    v301 = &v402;
    v402 = v297;
    v302 = &v401;
    v401 = v298;
    v299 = 2;
    sub_1B9852690(2, &v403);
    sub_1B9852690(v299, v300);
    v45 = v304;
    v399 = v382;
    v400 = v383;
    sub_1B98526A4(&v399, v300, v301, v302);
    v303 = v45;
    if (v45)
    {

      __break(1u);
    }

    else
    {
      v399 = v384;
      v400 = v385;
      sub_1B98526A4(&v399, &v403, &v402, &v401);
      v292 = 0;
      v399 = v386;
      v400 = v387;
      sub_1B98526A4(&v399, &v403, &v402, &v401);
      v291 = 0;
      v399 = v388;
      v400 = v389;
      sub_1B98526A4(&v399, &v403, &v402, &v401);
      v290 = 0;
      v399 = v390;
      v400 = v391;
      sub_1B98526A4(&v399, &v403, &v402, &v401);
      v289 = 0;
      v399 = v393;
      v400 = v394;
      sub_1B98526A4(&v399, &v403, &v402, &v401);
      v288 = 0;
      _os_log_impl(&dword_1B982F000, v397, v398, "%s: Calculating trust scores for handles: %s synchronously", v296, 0x16u);
      sub_1B985281C(v297);
      sub_1B985281C(v298);
      sub_1B98F5C08();

      v293 = v288;
    }
  }

  else
  {

    v293 = v304;
  }

  v286 = v293;
  MEMORY[0x1E69E5920](v397);
  v255 = v361[1];
  v256 = v361 + 1;
  v255(v359, v363);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59C8, &qword_1B98FB5D0);
  v46 = sub_1B98F5458();
  v272 = &v449;
  v449 = v46;
  v257 = sub_1B98A01C0();
  v258 = v47;
  v273 = 32;
  v279 = 7;
  v48 = swift_allocObject();
  v49 = v258;
  v50 = v305;
  *(v48 + 16) = v257;
  *(v48 + 24) = v49;
  v259 = v448;
  v448[0] = v50;
  v448[1] = v48;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D0, &qword_1B98FB5D8);
  sub_1B98F5908();
  v261 = sub_1B98A0D84();
  v260 = v51;
  v52 = swift_allocObject();
  v53 = v260;
  v54 = v306;
  *(v52 + 16) = v261;
  *(v52 + 24) = v53;
  v446 = v54;
  v447 = v52;
  sub_1B98F5908();
  v263 = sub_1B98A2B00();
  v262 = v55;
  v56 = swift_allocObject();
  v57 = v262;
  v58 = v307;
  *(v56 + 16) = v263;
  *(v56 + 24) = v57;
  v444 = v58;
  v445 = v56;
  sub_1B98F5908();
  v265 = sub_1B98A497C();
  v264 = v59;
  v60 = swift_allocObject();
  v61 = v264;
  v62 = v308;
  *(v60 + 16) = v265;
  *(v60 + 24) = v61;
  v442 = v62;
  v443 = v60;
  sub_1B98F5908();
  v267 = sub_1B98A9B14();
  v266 = v63;
  v64 = swift_allocObject();
  v65 = v266;
  v66 = v309;
  *(v64 + 16) = v267;
  *(v64 + 24) = v65;
  v440 = v66;
  v441 = v64;
  sub_1B98F5908();
  v269 = sub_1B98AB990();
  v268 = v67;
  v68 = swift_allocObject();
  v69 = v268;
  v70 = v310;
  *(v68 + 16) = v269;
  *(v68 + 24) = v69;
  v438 = v70;
  v439 = v68;
  sub_1B98F5908();
  v271 = sub_1B98A67F8();
  v270 = v71;
  v72 = swift_allocObject();
  v73 = v270;
  v74 = v311;
  *(v72 + 16) = v271;
  *(v72 + 24) = v73;
  v436 = v74;
  v437 = v72;
  sub_1B98F5908();
  v275 = sub_1B98A9164();
  v274 = v75;
  v76 = swift_allocObject();
  v77 = v274;
  v78 = v312;
  *(v76 + 16) = v275;
  *(v76 + 24) = v77;
  v434 = v78;
  v435 = v76;
  sub_1B98F5908();
  v278 = 24;
  v277 = swift_allocObject();
  v276 = v277 + 16;
  v433 = v277 + 16;
  sub_1B98F54D8();
  *(v277 + 16) = v366;
  v282 = sub_1B9853574();
  v281 = &type metadata for CommunicationTrustScore;
  v432 = sub_1B98F5448();
  v283 = swift_allocObject();
  v280 = v283 + 16;
  v431 = v283 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
  sub_1B98F5F98();
  *(v283 + 16) = sub_1B98F54A8();
  v284 = v449;
  sub_1B98F54D8();
  v429 = v284;
  sub_1B98B1614();
  sub_1B98F5B88();
  for (i = v286; ; i = v227)
  {
    v252 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59E8, &qword_1B98FB5E8);
    sub_1B98F5DE8();
    v253 = v427;
    v254 = v428;
    if (v427)
    {
      v250 = v253;
      v251 = v254;
      v247 = v254;
      v246 = v253;
      v79 = swift_allocObject();
      v80 = v247;
      v81 = v335;
      *(v79 + 16) = v246;
      *(v79 + 24) = v80;
      v248 = v81;
      v249 = v79;
    }

    else
    {
      v248 = 0;
      v249 = 0;
    }

    v244 = v249;
    v245 = v248;
    if (!v248)
    {
      v113 = v354;
      sub_1B98B169C(v430);
      v114 = sub_1B98F1E6C();
      v364(v113, v114, v363);

      v169 = 32;
      v170 = 7;
      v115 = swift_allocObject();
      v116 = v277;
      v171 = v115;
      *(v115 + 16) = v324;
      *(v115 + 24) = v116;

      v181 = sub_1B98F5118();
      v182 = sub_1B98F5BD8();
      v167 = 17;
      v173 = swift_allocObject();
      v166 = 32;
      *(v173 + 16) = 32;
      v174 = swift_allocObject();
      v168 = 8;
      *(v174 + 16) = 8;
      v117 = swift_allocObject();
      v118 = v369;
      v165 = v117;
      *(v117 + 16) = v325;
      *(v117 + 24) = v118;
      v119 = swift_allocObject();
      v120 = v165;
      v175 = v119;
      *(v119 + 16) = v326;
      *(v119 + 24) = v120;
      v176 = swift_allocObject();
      *(v176 + 16) = v166;
      v177 = swift_allocObject();
      *(v177 + 16) = v168;
      v121 = swift_allocObject();
      v122 = v171;
      v172 = v121;
      *(v121 + 16) = v327;
      *(v121 + 24) = v122;
      v123 = swift_allocObject();
      v124 = v172;
      v179 = v123;
      *(v123 + 16) = v328;
      *(v123 + 24) = v124;
      v178 = sub_1B98F5F98();
      v180 = v125;

      v126 = v173;
      v127 = v180;
      *v180 = v329;
      v127[1] = v126;

      v128 = v174;
      v129 = v180;
      v180[2] = v330;
      v129[3] = v128;

      v130 = v175;
      v131 = v180;
      v180[4] = v331;
      v131[5] = v130;

      v132 = v176;
      v133 = v180;
      v180[6] = v332;
      v133[7] = v132;

      v134 = v177;
      v135 = v180;
      v180[8] = v333;
      v135[9] = v134;

      v136 = v179;
      v137 = v180;
      v180[10] = v334;
      v137[11] = v136;
      sub_1B9851B38();

      if (os_log_type_enabled(v181, v182))
      {
        v157 = sub_1B98F5C28();
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v158 = sub_1B985263C(0);
        v159 = sub_1B985263C(2);
        v161 = &v421;
        v421 = v157;
        v162 = &v420;
        v420 = v158;
        v163 = &v419;
        v419 = v159;
        v160 = 2;
        sub_1B9852690(2, &v421);
        sub_1B9852690(v160, v161);
        v138 = v252;
        v417 = v329;
        v418 = v173;
        sub_1B98526A4(&v417, v161, v162, v163);
        v164 = v138;
        if (v138)
        {

          __break(1u);
        }

        else
        {
          v417 = v330;
          v418 = v174;
          sub_1B98526A4(&v417, &v421, &v420, &v419);
          v154 = 0;
          v417 = v331;
          v418 = v175;
          sub_1B98526A4(&v417, &v421, &v420, &v419);
          v153 = 0;
          v417 = v332;
          v418 = v176;
          sub_1B98526A4(&v417, &v421, &v420, &v419);
          v152 = 0;
          v417 = v333;
          v418 = v177;
          sub_1B98526A4(&v417, &v421, &v420, &v419);
          v151 = 0;
          v417 = v334;
          v418 = v179;
          sub_1B98526A4(&v417, &v421, &v420, &v419);
          v150 = 0;
          _os_log_impl(&dword_1B982F000, v181, v182, "%s: Marking remaining handles as unknown %s", v157, 0x16u);
          sub_1B985281C(v158);
          sub_1B985281C(v159);
          sub_1B98F5C08();

          v155 = v150;
        }
      }

      else
      {

        v155 = v252;
      }

      v148 = v155;
      MEMORY[0x1E69E5920](v181);
      v255(v354, v363);
      v145 = &v425;
      swift_beginAccess();
      v146 = *(v277 + 16);
      sub_1B98F54D8();
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
      v147 = &v455;
      sub_1B98F5498();
      memcpy(v426, v147, sizeof(v426));
      for (j = v148; ; j = v144)
      {
        v144 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
        sub_1B98F5558();
        sub_1B98732E4(v339, v341);
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
        if ((*(*(v139 - 8) + 48))(v341, 1) == 1)
        {
          break;
        }

        v424 = v346;
        sub_1B9832680(v341, v346);
        sub_1B9833334(v346, v344);
        v143 = &v422;
        v422 = 4;
        v423 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
        sub_1B983A3AC(v346);
      }

      sub_1B987349C(v426);
      v142 = *(v283 + 16);
      sub_1B98F54D8();

      sub_1B98B1790(&v432);

      sub_1B98B17BC(&v449);
      v186 = v142;
      v187 = v144;
      return v186;
    }

    v242 = v245;
    v243 = v244;
    v82 = v252;
    v234 = v244;
    v233 = v245;
    v415 = v245;
    v416 = v244;

    v235 = *(v277 + 16);
    sub_1B98F54D8();
    v414 = v360;
    v83 = v233(v235, &v414);
    v236 = v82;
    v237 = v83;
    v238 = v84;
    v239 = v234;
    v240 = v235;
    v241 = v82;
    if (v82)
    {
      break;
    }

    v229 = v238;
    v230 = v237;

    sub_1B98F54D8();
    v432 = v230;

    v85 = *(v277 + 16);
    *(v277 + 16) = v229;

    v231 = &v454;
    sub_1B98F5498();
    memcpy(v413, v231, sizeof(v413));
    for (k = v236; ; k = v227)
    {
      v227 = k;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F0, &qword_1B98FB5F8);
      sub_1B98F5558();
      sub_1B98B17E8(v349, v351);
      v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F8, &qword_1B98FB600);
      if ((*(*(v228 - 8) + 48))(v351, 1) == 1)
      {
        break;
      }

      v225 = *&v351[*(v228 + 48)];
      sub_1B9832680(v351, v346);
      v406 = v225;
      sub_1B9833334(v346, v344);
      v226 = &v404;
      v404 = v225;
      v405 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v346);
    }

    sub_1B98B198C(v413);
    v222 = *(v277 + 16);
    sub_1B98F54D8();
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v223 = MEMORY[0x1BFADD4D0](v222, v342, v86, v282);

    v224 = v234;
    if (v223)
    {
      v87 = v357;
      v203 = v224;
      v88 = sub_1B98F1E6C();
      v364(v87, v88, v363);

      v208 = 32;
      v209 = 7;
      v89 = swift_allocObject();
      v90 = v283;
      v210 = v89;
      *(v89 + 16) = v313;
      *(v89 + 24) = v90;

      v220 = sub_1B98F5118();
      v221 = sub_1B98F5BD8();
      v206 = 17;
      v212 = swift_allocObject();
      v205 = 32;
      *(v212 + 16) = 32;
      v213 = swift_allocObject();
      v207 = 8;
      *(v213 + 16) = 8;
      v91 = swift_allocObject();
      v92 = v369;
      v204 = v91;
      *(v91 + 16) = v314;
      *(v91 + 24) = v92;
      v93 = swift_allocObject();
      v94 = v204;
      v214 = v93;
      *(v93 + 16) = v315;
      *(v93 + 24) = v94;
      v215 = swift_allocObject();
      *(v215 + 16) = v205;
      v216 = swift_allocObject();
      *(v216 + 16) = v207;
      v95 = swift_allocObject();
      v96 = v210;
      v211 = v95;
      *(v95 + 16) = v316;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v211;
      v218 = v97;
      *(v97 + 16) = v317;
      *(v97 + 24) = v98;
      v217 = sub_1B98F5F98();
      v219 = v99;

      v100 = v212;
      v101 = v219;
      *v219 = v318;
      v101[1] = v100;

      v102 = v213;
      v103 = v219;
      v219[2] = v319;
      v103[3] = v102;

      v104 = v214;
      v105 = v219;
      v219[4] = v320;
      v105[5] = v104;

      v106 = v215;
      v107 = v219;
      v219[6] = v321;
      v107[7] = v106;

      v108 = v216;
      v109 = v219;
      v219[8] = v322;
      v109[9] = v108;

      v110 = v218;
      v111 = v219;
      v219[10] = v323;
      v111[11] = v110;
      sub_1B9851B38();

      if (os_log_type_enabled(v220, v221))
      {
        v195 = sub_1B98F5C28();
        v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
        v196 = sub_1B985263C(0);
        v197 = sub_1B985263C(2);
        v199 = &v411;
        v411 = v195;
        v200 = &v410;
        v410 = v196;
        v201 = &v409;
        v409 = v197;
        v198 = 2;
        sub_1B9852690(2, &v411);
        sub_1B9852690(v198, v199);
        v112 = v227;
        v407 = v318;
        v408 = v212;
        sub_1B98526A4(&v407, v199, v200, v201);
        v202 = v112;
        if (v112)
        {

          __break(1u);
        }

        else
        {
          v407 = v319;
          v408 = v213;
          sub_1B98526A4(&v407, &v411, &v410, &v409);
          v192 = 0;
          v407 = v320;
          v408 = v214;
          sub_1B98526A4(&v407, &v411, &v410, &v409);
          v191 = 0;
          v407 = v321;
          v408 = v215;
          sub_1B98526A4(&v407, &v411, &v410, &v409);
          v190 = 0;
          v407 = v322;
          v408 = v216;
          sub_1B98526A4(&v407, &v411, &v410, &v409);
          v189 = 0;
          v407 = v323;
          v408 = v218;
          sub_1B98526A4(&v407, &v411, &v410, &v409);
          v188 = 0;
          _os_log_impl(&dword_1B982F000, v220, v221, "%s: No remaining handles, returning trustScores %s", v195, 0x16u);
          sub_1B985281C(v196);
          sub_1B985281C(v197);
          sub_1B98F5C08();

          v193 = v188;
        }
      }

      else
      {

        v193 = v227;
      }

      v185 = v193;
      MEMORY[0x1E69E5920](v220);
      v255(v357, v363);
      v183 = &v412;
      swift_beginAccess();
      v184 = *(v283 + 16);
      sub_1B98F54D8();
      swift_endAccess();

      sub_1B98B169C(v430);

      sub_1B98B1790(&v432);

      sub_1B98B17BC(&v449);
      v186 = v184;
      v187 = v185;
      return v186;
    }
  }

  v141[1] = v241;
  v141[0] = v239;

  sub_1B98B169C(v430);

  sub_1B98B1790(&v432);

  sub_1B98B17BC(&v449);
  return v294;
}

uint64_t sub_1B989A4E4(uint64_t a1, char *a2)
{
  *(v3 + 520) = v2;
  *(v3 + 512) = a1;
  *(v3 + 432) = v3;
  *(v3 + 440) = 0;
  *(v3 + 752) = 0;
  *(v3 + 448) = 0;
  *(v3 + 456) = 0;
  *(v3 + 464) = 0;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0;
  *(v3 + 352) = 0;
  *(v3 + 360) = 0;
  memset((v3 + 96), 0, 0x28uLL);
  *(v3 + 496) = 0;
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  memset((v3 + 136), 0, 0x28uLL);
  *(v3 + 504) = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  *(v3 + 528) = swift_task_alloc();
  *(v3 + 536) = swift_task_alloc();
  v4 = type metadata accessor for BlockedHandle();
  *(v3 + 544) = v4;
  v10 = *(*(v4 - 8) + 64);
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B8, &qword_1B98FB5B8) - 8) + 64);
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 576) = swift_task_alloc();
  v5 = sub_1B98F5138();
  *(v3 + 584) = v5;
  v12 = *(v5 - 8);
  *(v3 + 592) = v12;
  v13 = *(v12 + 64);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  *(v3 + 440) = a1;
  v6 = *a2;
  *(v3 + 410) = *a2;
  *(v3 + 752) = v6;
  *(v3 + 448) = v2;
  v7 = *(v3 + 432);

  return MEMORY[0x1EEE6DFA0](sub_1B989A7CC, 0);
}

uint64_t sub_1B989A7CC()
{
  v207 = v0;
  v1 = v0[79];
  v169 = v0[74];
  v170 = v0[73];
  v174 = v0[65];
  v172 = v0[64];
  v0[54] = v0;
  v2 = sub_1B98F1E6C();
  v171 = *(v169 + 16);
  v0[80] = v171;
  v0[81] = (v169 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v171(v1, v2, v170);

  sub_1B98F54D8();
  v173 = swift_allocObject();
  *(v173 + 16) = v172;

  v176 = swift_allocObject();
  *(v176 + 16) = sub_1B98B1B50;
  *(v176 + 24) = v173;

  v185 = sub_1B98F5118();
  v186 = sub_1B98F5BD8();
  v178 = swift_allocObject();
  *(v178 + 16) = 32;
  v179 = swift_allocObject();
  *(v179 + 16) = 8;
  v175 = swift_allocObject();
  *(v175 + 16) = sub_1B98B1B48;
  *(v175 + 24) = v174;
  v180 = swift_allocObject();
  *(v180 + 16) = sub_1B98B1BD0;
  *(v180 + 24) = v175;
  v181 = swift_allocObject();
  *(v181 + 16) = 32;
  v182 = swift_allocObject();
  *(v182 + 16) = 8;
  v177 = swift_allocObject();
  *(v177 + 16) = sub_1B98B1B58;
  *(v177 + 24) = v176;
  v183 = swift_allocObject();
  *(v183 + 16) = sub_1B98B1BF8;
  *(v183 + 24) = v177;
  v0[82] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v184 = v3;

  *v184 = sub_1B98B1BC0;
  v184[1] = v178;

  v184[2] = sub_1B98B1BC8;
  v184[3] = v179;

  v184[4] = sub_1B98B1BDC;
  v184[5] = v180;

  v184[6] = sub_1B98B1BE8;
  v184[7] = v181;

  v184[8] = sub_1B98B1BF0;
  v184[9] = v182;

  v184[10] = sub_1B98B1C04;
  v184[11] = v183;
  sub_1B9851B38();

  if (os_log_type_enabled(v185, v186))
  {
    buf = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v166 = sub_1B985263C(0);
    v167 = sub_1B985263C(2);
    v202 = buf;
    v203 = v166;
    v204 = v167;
    sub_1B9852690(2, &v202);
    sub_1B9852690(2, &v202);
    v205 = sub_1B98B1BC0;
    v206 = v178;
    sub_1B98526A4(&v205, &v202, &v203, &v204);
    v205 = sub_1B98B1BC8;
    v206 = v179;
    sub_1B98526A4(&v205, &v202, &v203, &v204);
    v205 = sub_1B98B1BDC;
    v206 = v180;
    sub_1B98526A4(&v205, &v202, &v203, &v204);
    v205 = sub_1B98B1BE8;
    v206 = v181;
    sub_1B98526A4(&v205, &v202, &v203, &v204);
    v205 = sub_1B98B1BF0;
    v206 = v182;
    sub_1B98526A4(&v205, &v202, &v203, &v204);
    v205 = sub_1B98B1C04;
    v206 = v183;
    sub_1B98526A4(&v205, &v202, &v203, &v204);
    _os_log_impl(&dword_1B982F000, v185, v186, "%s: Calculating trust scores for handles: %s", buf, 0x16u);
    sub_1B985281C(v166);
    sub_1B985281C(v167);
    sub_1B98F5C08();
  }

  else
  {
  }

  v147 = *(v168 + 632);
  v4 = *(v168 + 624);
  v149 = *(v168 + 584);
  v152 = *(v168 + 520);
  v150 = *(v168 + 512);
  v146 = *(v168 + 592);
  MEMORY[0x1E69E5920](v185);
  v148 = *(v146 + 8);
  *(v168 + 664) = v148;
  *(v168 + 672) = (v146 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v148(v147, v149);
  v5 = sub_1B98F1E6C();
  v171(v4, v5, v149);

  sub_1B98F54D8();
  v151 = swift_allocObject();
  *(v151 + 16) = v150;

  v154 = swift_allocObject();
  *(v154 + 16) = sub_1B98B1C18;
  *(v154 + 24) = v151;

  oslog = sub_1B98F5118();
  v164 = sub_1B98F5BD8();
  v156 = swift_allocObject();
  *(v156 + 16) = 32;
  v157 = swift_allocObject();
  *(v157 + 16) = 8;
  v153 = swift_allocObject();
  *(v153 + 16) = sub_1B98B1C10;
  *(v153 + 24) = v152;
  v158 = swift_allocObject();
  *(v158 + 16) = sub_1B98B1C98;
  *(v158 + 24) = v153;
  v159 = swift_allocObject();
  *(v159 + 16) = 32;
  v160 = swift_allocObject();
  *(v160 + 16) = 8;
  v155 = swift_allocObject();
  *(v155 + 16) = sub_1B98B1C20;
  *(v155 + 24) = v154;
  v161 = swift_allocObject();
  *(v161 + 16) = sub_1B98B1CC0;
  *(v161 + 24) = v155;
  sub_1B98F5F98();
  v162 = v6;

  *v162 = sub_1B98B1C88;
  v162[1] = v156;

  v162[2] = sub_1B98B1C90;
  v162[3] = v157;

  v162[4] = sub_1B98B1CA4;
  v162[5] = v158;

  v162[6] = sub_1B98B1CB0;
  v162[7] = v159;

  v162[8] = sub_1B98B1CB8;
  v162[9] = v160;

  v162[10] = sub_1B98B1CCC;
  v162[11] = v161;
  sub_1B9851B38();

  if (os_log_type_enabled(oslog, v164))
  {
    v143 = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v144 = sub_1B985263C(0);
    v145 = sub_1B985263C(2);
    v197 = v143;
    v198 = v144;
    v199 = v145;
    sub_1B9852690(2, &v197);
    sub_1B9852690(2, &v197);
    v200 = sub_1B98B1C88;
    v201 = v156;
    sub_1B98526A4(&v200, &v197, &v198, &v199);
    v200 = sub_1B98B1C90;
    v201 = v157;
    sub_1B98526A4(&v200, &v197, &v198, &v199);
    v200 = sub_1B98B1CA4;
    v201 = v158;
    sub_1B98526A4(&v200, &v197, &v198, &v199);
    v200 = sub_1B98B1CB0;
    v201 = v159;
    sub_1B98526A4(&v200, &v197, &v198, &v199);
    v200 = sub_1B98B1CB8;
    v201 = v160;
    sub_1B98526A4(&v200, &v197, &v198, &v199);
    v200 = sub_1B98B1CCC;
    v201 = v161;
    sub_1B98526A4(&v200, &v197, &v198, &v199);
    _os_log_impl(&dword_1B982F000, oslog, v164, "sync %s: Calculating trust scores for handles: %s synchronously", v143, 0x16u);
    sub_1B985281C(v144);
    sub_1B985281C(v145);
    sub_1B98F5C08();
  }

  else
  {
  }

  v126 = *(v168 + 624);
  v7 = *(v168 + 616);
  v127 = *(v168 + 584);
  v130 = *(v168 + 520);
  v128 = *(v168 + 512);
  MEMORY[0x1E69E5920](oslog);
  v148(v126, v127);
  v8 = sub_1B98F1E6C();
  v171(v7, v8, v127);

  sub_1B98F54D8();
  v129 = swift_allocObject();
  *(v129 + 16) = v128;

  v132 = swift_allocObject();
  *(v132 + 16) = sub_1B98B1CE0;
  *(v132 + 24) = v129;

  log = sub_1B98F5118();
  v142 = sub_1B98F5BD8();
  v134 = swift_allocObject();
  *(v134 + 16) = 32;
  v135 = swift_allocObject();
  *(v135 + 16) = 8;
  v131 = swift_allocObject();
  *(v131 + 16) = sub_1B98B1CD8;
  *(v131 + 24) = v130;
  v136 = swift_allocObject();
  *(v136 + 16) = sub_1B98B1D60;
  *(v136 + 24) = v131;
  v137 = swift_allocObject();
  *(v137 + 16) = 32;
  v138 = swift_allocObject();
  *(v138 + 16) = 8;
  v133 = swift_allocObject();
  *(v133 + 16) = sub_1B98B1CE8;
  *(v133 + 24) = v132;
  v139 = swift_allocObject();
  *(v139 + 16) = sub_1B98B1D88;
  *(v139 + 24) = v133;
  sub_1B98F5F98();
  v140 = v9;

  *v140 = sub_1B98B1D50;
  v140[1] = v134;

  v140[2] = sub_1B98B1D58;
  v140[3] = v135;

  v140[4] = sub_1B98B1D6C;
  v140[5] = v136;

  v140[6] = sub_1B98B1D78;
  v140[7] = v137;

  v140[8] = sub_1B98B1D80;
  v140[9] = v138;

  v140[10] = sub_1B98B1D94;
  v140[11] = v139;
  sub_1B9851B38();

  if (os_log_type_enabled(log, v142))
  {
    v123 = sub_1B98F5C28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v124 = sub_1B985263C(0);
    v125 = sub_1B985263C(2);
    v192 = v123;
    v193 = v124;
    v194 = v125;
    sub_1B9852690(2, &v192);
    sub_1B9852690(2, &v192);
    v195 = sub_1B98B1D50;
    v196 = v134;
    sub_1B98526A4(&v195, &v192, &v193, &v194);
    v195 = sub_1B98B1D58;
    v196 = v135;
    sub_1B98526A4(&v195, &v192, &v193, &v194);
    v195 = sub_1B98B1D6C;
    v196 = v136;
    sub_1B98526A4(&v195, &v192, &v193, &v194);
    v195 = sub_1B98B1D78;
    v196 = v137;
    sub_1B98526A4(&v195, &v192, &v193, &v194);
    v195 = sub_1B98B1D80;
    v196 = v138;
    sub_1B98526A4(&v195, &v192, &v193, &v194);
    v195 = sub_1B98B1D94;
    v196 = v139;
    sub_1B98526A4(&v195, &v192, &v193, &v194);
    _os_log_impl(&dword_1B982F000, log, v142, "%s: Calculating trust scores for handles: %s", v123, 0x16u);
    sub_1B985281C(v124);
    sub_1B985281C(v125);
    sub_1B98F5C08();
  }

  else
  {
  }

  v90 = *(v168 + 616);
  v91 = *(v168 + 584);
  v118 = *(v168 + 544);
  v112 = *(v168 + 520);
  v117 = *(v168 + 512);
  MEMORY[0x1E69E5920](log);
  v148(v90, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A08, &qword_1B98FB610);
  *(v168 + 456) = sub_1B98F5458();
  v92 = sub_1B98A01C0();
  v93 = v10;
  v94 = swift_allocObject();
  *(v94 + 16) = v92;
  *(v94 + 24) = v93;
  v11 = swift_allocObject();
  *(v11 + 16) = &unk_1B98FB620;
  *(v11 + 24) = v94;
  *(v168 + 224) = &unk_1B98FB630;
  *(v168 + 232) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A10, &qword_1B98FB638);
  sub_1B98F5908();
  v95 = sub_1B98A0D84();
  v96 = v12;
  v97 = swift_allocObject();
  *(v97 + 16) = v95;
  *(v97 + 24) = v96;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1B98FB640;
  *(v13 + 24) = v97;
  *(v168 + 240) = &unk_1B98FB648;
  *(v168 + 248) = v13;
  sub_1B98F5908();
  v98 = sub_1B98A2B00();
  v99 = v14;
  v100 = swift_allocObject();
  *(v100 + 16) = v98;
  *(v100 + 24) = v99;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1B98FB650;
  *(v15 + 24) = v100;
  *(v168 + 256) = &unk_1B98FB658;
  *(v168 + 264) = v15;
  sub_1B98F5908();
  v101 = sub_1B98A497C();
  v102 = v16;
  v103 = swift_allocObject();
  *(v103 + 16) = v101;
  *(v103 + 24) = v102;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1B98FB660;
  *(v17 + 24) = v103;
  *(v168 + 272) = &unk_1B98FB668;
  *(v168 + 280) = v17;
  sub_1B98F5908();
  v104 = sub_1B98A9B14();
  v105 = v18;
  v106 = swift_allocObject();
  *(v106 + 16) = v104;
  *(v106 + 24) = v105;
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1B98FB670;
  *(v19 + 24) = v106;
  *(v168 + 288) = &unk_1B98FB678;
  *(v168 + 296) = v19;
  sub_1B98F5908();
  v108 = sub_1B98AD70C();
  v107 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v108;
  *(v21 + 24) = v107;
  *(v168 + 304) = &unk_1B98FB680;
  *(v168 + 312) = v21;
  sub_1B98F5908();
  v109 = sub_1B98A67F8();
  v110 = v22;
  v111 = swift_allocObject();
  *(v111 + 16) = v109;
  *(v111 + 24) = v110;
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1B98FB688;
  *(v23 + 24) = v111;
  *(v168 + 320) = &unk_1B98FB690;
  *(v168 + 328) = v23;
  sub_1B98F5908();
  v113 = sub_1B98A9164();
  v114 = v24;
  v115 = swift_allocObject();
  *(v115 + 16) = v113;
  *(v115 + 24) = v114;
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1B98FB698;
  *(v25 + 24) = v115;
  *(v168 + 336) = &unk_1B98FB6A0;
  *(v168 + 344) = v25;
  sub_1B98F5908();
  v116 = swift_allocObject();
  *(v168 + 680) = v116;
  *(v168 + 464) = v116 + 16;
  sub_1B98F54D8();
  *(v116 + 16) = v117;
  *(v168 + 688) = sub_1B9853574();
  *(v168 + 472) = sub_1B98F5448();
  v119 = swift_allocObject();
  *(v168 + 696) = v119;
  *(v168 + 480) = v119 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
  sub_1B98F5F98();
  *(v119 + 16) = sub_1B98F54A8();
  v120 = *(v168 + 456);
  sub_1B98F54D8();
  *(v168 + 488) = v120;
  sub_1B98B3DB8();
  sub_1B98F5B88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A20, &qword_1B98FB6A8);
  sub_1B98F5DE8();
  v121 = *(v168 + 368);
  v122 = *(v168 + 376);
  if (v121)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v121;
    *(v26 + 24) = v122;
    v88 = &unk_1B98FB6B8;
    v89 = v26;
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  *(v168 + 704) = v89;
  if (v88)
  {
    v84 = *(v168 + 680);
    v85 = *(v168 + 410);
    *(v168 + 384) = v88;
    *(v168 + 392) = v89;

    v87 = *(v84 + 16);
    *(v168 + 712) = v87;
    sub_1B98F54D8();
    *(v168 + 409) = v85;
    v86 = (v88 + *v88);
    v27 = v88[1];
    v28 = swift_task_alloc();
    *(v168 + 720) = v28;
    *v28 = *(v168 + 432);
    v28[1] = sub_1B989D87C;

    return v86(v87, v168 + 409);
  }

  else
  {
    v69 = *(v168 + 680);
    v81 = *(v168 + 656);
    v67 = *(v168 + 648);
    v68 = *(v168 + 640);
    v30 = *(v168 + 600);
    v66 = *(v168 + 584);
    v70 = *(v168 + 520);
    sub_1B98B3E40((v168 + 352));
    v31 = sub_1B98F1E6C();
    v68(v30, v31, v66);

    v72 = swift_allocObject();
    *(v72 + 16) = sub_1B98B3E74;
    *(v72 + 24) = v69;

    v82 = sub_1B98F5118();
    v83 = sub_1B98F5BD8();
    v74 = swift_allocObject();
    *(v74 + 16) = 32;
    v75 = swift_allocObject();
    *(v75 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_1B98B3E6C;
    *(v71 + 24) = v70;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_1B98B3EF4;
    *(v76 + 24) = v71;
    v77 = swift_allocObject();
    *(v77 + 16) = 32;
    v78 = swift_allocObject();
    *(v78 + 16) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_1B98B3E7C;
    *(v73 + 24) = v72;
    v79 = swift_allocObject();
    *(v79 + 16) = sub_1B98B3F1C;
    *(v79 + 24) = v73;
    sub_1B98F5F98();
    v80 = v32;

    *v80 = sub_1B98B3EE4;
    v80[1] = v74;

    v80[2] = sub_1B98B3EEC;
    v80[3] = v75;

    v80[4] = sub_1B98B3F00;
    v80[5] = v76;

    v80[6] = sub_1B98B3F0C;
    v80[7] = v77;

    v80[8] = sub_1B98B3F14;
    v80[9] = v78;

    v80[10] = sub_1B98B3F28;
    v80[11] = v79;
    sub_1B9851B38();

    if (os_log_type_enabled(v82, v83))
    {
      v63 = sub_1B98F5C28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v64 = sub_1B985263C(0);
      v65 = sub_1B985263C(2);
      v187 = v63;
      v188 = v64;
      v189 = v65;
      sub_1B9852690(2, &v187);
      sub_1B9852690(2, &v187);
      v190 = sub_1B98B3EE4;
      v191 = v74;
      sub_1B98526A4(&v190, &v187, &v188, &v189);
      v190 = sub_1B98B3EEC;
      v191 = v75;
      sub_1B98526A4(&v190, &v187, &v188, &v189);
      v190 = sub_1B98B3F00;
      v191 = v76;
      sub_1B98526A4(&v190, &v187, &v188, &v189);
      v190 = sub_1B98B3F0C;
      v191 = v77;
      sub_1B98526A4(&v190, &v187, &v188, &v189);
      v190 = sub_1B98B3F14;
      v191 = v78;
      sub_1B98526A4(&v190, &v187, &v188, &v189);
      v190 = sub_1B98B3F28;
      v191 = v79;
      sub_1B98526A4(&v190, &v187, &v188, &v189);
      _os_log_impl(&dword_1B982F000, v82, v83, "%s: Marking remaining handles as unknown %s", v63, 0x16u);
      sub_1B985281C(v64);
      sub_1B985281C(v65);
      sub_1B98F5C08();
    }

    else
    {
    }

    v61 = *(v168 + 688);
    v57 = *(v168 + 672);
    v58 = *(v168 + 664);
    v55 = *(v168 + 600);
    v56 = *(v168 + 584);
    v60 = *(v168 + 544);
    v59 = (*(v168 + 680) + 16);
    MEMORY[0x1E69E5920](v82);
    v58(v55, v56);
    swift_beginAccess();
    v62 = *v59;
    sub_1B98F54D8();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B98F5498();
    memcpy((v168 + 96), (v168 + 16), 0x28uLL);
    while (1)
    {
      v54 = *(v168 + 536);
      v53 = *(v168 + 528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
      sub_1B98F5558();
      sub_1B98732E4(v53, v54);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
      if ((*(*(v33 - 8) + 48))(v54, 1) == 1)
      {
        break;
      }

      *(v168 + 496) = *(v168 + 560);
      v52 = *(v168 + 560);
      v51 = *(v168 + 552);
      v34 = *(v168 + 696) + 16;
      sub_1B9832680(*(v168 + 536), v52);
      sub_1B9833334(v52, v51);
      *(v168 + 400) = 4;
      *(v168 + 408) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v52);
    }

    v38 = *(v168 + 696);
    v39 = *(v168 + 680);
    sub_1B987349C((v168 + 96));
    v50 = *(v38 + 16);
    sub_1B98F54D8();

    sub_1B98B1790((v168 + 472));

    sub_1B98B3F34((v168 + 456));
    v35 = *(v168 + 632);
    v40 = *(v168 + 624);
    v41 = *(v168 + 616);
    v42 = *(v168 + 608);
    v43 = *(v168 + 600);
    v44 = *(v168 + 576);
    v45 = *(v168 + 568);
    v46 = *(v168 + 560);
    v47 = *(v168 + 552);
    v48 = *(v168 + 536);
    v49 = *(v168 + 528);

    v36 = *(*(v168 + 432) + 8);
    v37 = *(v168 + 432);

    return v36(v50);
  }
}

uint64_t sub_1B989D87C(uint64_t a1, uint64_t a2)
{
  v13 = *v3;
  v11 = *v3 + 16;
  v12 = v13 + 54;
  v5 = *(*v3 + 720);
  v13[54] = *v3;
  v13[91] = v2;
  v13[92] = a1;
  v13[93] = a2;

  if (v2)
  {
    v9 = *v12;
    v8 = sub_1B989F694;
  }

  else
  {
    v6 = *(v11 + 696);

    v7 = *v12;
    v8 = sub_1B989DA0C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0);
}

uint64_t sub_1B989DA0C()
{
  v136 = v0;
  v121 = v0[93];
  v123 = v0[92];
  v122 = v0[88];
  v125 = v0[86];
  v120 = v0[85];
  v124 = v0[68];
  v0[54] = v0;
  sub_1B98F54D8();
  v1 = v0[59];
  v0[59] = v123;

  v2 = *(v120 + 16);
  *(v120 + 16) = v121;

  sub_1B98F5498();
  memcpy(v0 + 17, v0 + 7, 0x28uLL);
  while (1)
  {
    v109 = *(v119 + 576);
    v108 = *(v119 + 568);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F0, &qword_1B98FB5F8);
    sub_1B98F5558();
    sub_1B98B17E8(v108, v109);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F8, &qword_1B98FB600);
    if ((*(*(v110 - 8) + 48))(v109, 1) == 1)
    {
      break;
    }

    v7 = *(v119 + 576);
    v107 = *(v119 + 560);
    v106 = *(v119 + 552);
    v8 = *(v119 + 696) + 16;
    v105 = *(v7 + *(v110 + 48));
    sub_1B9832680(v7, v107);
    *(v119 + 504) = v105;
    sub_1B9833334(v107, v106);
    *(v119 + 416) = v105;
    *(v119 + 424) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
    sub_1B98F55C8();
    sub_1B983A3AC(v107);
  }

  v102 = *(v119 + 688);
  v100 = *(v119 + 680);
  v101 = *(v119 + 544);
  sub_1B98B198C((v119 + 136));
  v103 = *(v100 + 16);
  sub_1B98F54D8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v104 = MEMORY[0x1BFADD4D0](v103, v101, v9, v102);

  if (v104)
  {
    v84 = *(v119 + 696);
    v96 = *(v119 + 656);
    v82 = *(v119 + 648);
    v83 = *(v119 + 640);
    v11 = *(v119 + 608);
    v81 = *(v119 + 584);
    v85 = *(v119 + 520);
    v12 = sub_1B98F1E6C();
    v83(v11, v12, v81);

    v87 = swift_allocObject();
    *(v87 + 16) = sub_1B98B3F68;
    *(v87 + 24) = v84;

    oslog = sub_1B98F5118();
    v98 = sub_1B98F5BD8();
    v89 = swift_allocObject();
    *(v89 + 16) = 32;
    v90 = swift_allocObject();
    *(v90 + 16) = 8;
    v86 = swift_allocObject();
    *(v86 + 16) = sub_1B98B3F60;
    *(v86 + 24) = v85;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1B98B3FE8;
    *(v91 + 24) = v86;
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v93 = swift_allocObject();
    *(v93 + 16) = 8;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_1B98B3F70;
    *(v88 + 24) = v87;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_1B98B4010;
    *(v94 + 24) = v88;
    sub_1B98F5F98();
    v95 = v13;

    *v95 = sub_1B98B3FD8;
    v95[1] = v89;

    v95[2] = sub_1B98B3FE0;
    v95[3] = v90;

    v95[4] = sub_1B98B3FF4;
    v95[5] = v91;

    v95[6] = sub_1B98B4000;
    v95[7] = v92;

    v95[8] = sub_1B98B4008;
    v95[9] = v93;

    v95[10] = sub_1B98B401C;
    v95[11] = v94;
    sub_1B9851B38();

    if (os_log_type_enabled(oslog, v98))
    {
      v14 = *(v119 + 728);
      buf = sub_1B98F5C28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v79 = sub_1B985263C(0);
      v80 = sub_1B985263C(2);
      v131 = buf;
      v132 = v79;
      v133 = v80;
      sub_1B9852690(2, &v131);
      sub_1B9852690(2, &v131);
      v134 = sub_1B98B3FD8;
      v135 = v89;
      sub_1B98526A4(&v134, &v131, &v132, &v133);
      if (v14)
      {
      }

      v134 = sub_1B98B3FE0;
      v135 = v90;
      sub_1B98526A4(&v134, &v131, &v132, &v133);
      v134 = sub_1B98B3FF4;
      v135 = v91;
      sub_1B98526A4(&v134, &v131, &v132, &v133);
      v134 = sub_1B98B4000;
      v135 = v92;
      sub_1B98526A4(&v134, &v131, &v132, &v133);
      v134 = sub_1B98B4008;
      v135 = v93;
      sub_1B98526A4(&v134, &v131, &v132, &v133);
      v134 = sub_1B98B401C;
      v135 = v94;
      sub_1B98526A4(&v134, &v131, &v132, &v133);
      _os_log_impl(&dword_1B982F000, oslog, v98, "%s: No remaining handles, returning trustScores %s", buf, 0x16u);
      sub_1B985281C(v79);
      sub_1B985281C(v80);
      sub_1B98F5C08();
    }

    else
    {
    }

    v74 = *(v119 + 696);
    v75 = *(v119 + 680);
    v71 = *(v119 + 672);
    v72 = *(v119 + 664);
    v69 = *(v119 + 608);
    v70 = *(v119 + 584);
    v73 = *(v119 + 704);
    MEMORY[0x1E69E5920](oslog);
    v72(v69, v70);
    swift_beginAccess();
    v76 = *(v74 + 16);
    sub_1B98F54D8();
    swift_endAccess();

    sub_1B98B3E40((v119 + 352));

    sub_1B98B1790((v119 + 472));

    sub_1B98B3F34((v119 + 456));
    v77 = v76;
  }

  else
  {
    v10 = *(v119 + 704);

    v99 = *(v119 + 728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A20, &qword_1B98FB6A8);
    sub_1B98F5DE8();
    v115 = *(v119 + 368);
    v116 = *(v119 + 376);
    if (v115)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v115;
      *(v3 + 24) = v116;
      v117 = &unk_1B98FB6B8;
      v118 = v3;
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    *(v119 + 704) = v118;
    if (v117)
    {
      v111 = *(v119 + 680);
      v112 = *(v119 + 410);
      *(v119 + 384) = v117;
      *(v119 + 392) = v118;

      v114 = *(v111 + 16);
      *(v119 + 712) = v114;
      sub_1B98F54D8();
      *(v119 + 409) = v112;
      v113 = (v117 + *v117);
      v4 = v117[1];
      v5 = swift_task_alloc();
      *(v119 + 720) = v5;
      *v5 = *(v119 + 432);
      v5[1] = sub_1B989D87C;

      return v113(v114, v119 + 409);
    }

    v54 = *(v119 + 680);
    v66 = *(v119 + 656);
    v52 = *(v119 + 648);
    v53 = *(v119 + 640);
    v15 = *(v119 + 600);
    v51 = *(v119 + 584);
    v55 = *(v119 + 520);
    sub_1B98B3E40((v119 + 352));
    v16 = sub_1B98F1E6C();
    v53(v15, v16, v51);

    v57 = swift_allocObject();
    *(v57 + 16) = sub_1B98B3E74;
    *(v57 + 24) = v54;

    log = sub_1B98F5118();
    v68 = sub_1B98F5BD8();
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1B98B3E6C;
    *(v56 + 24) = v55;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1B98B3EF4;
    *(v61 + 24) = v56;
    v62 = swift_allocObject();
    *(v62 + 16) = 32;
    v63 = swift_allocObject();
    *(v63 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1B98B3E7C;
    *(v58 + 24) = v57;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_1B98B3F1C;
    *(v64 + 24) = v58;
    sub_1B98F5F98();
    v65 = v17;

    *v65 = sub_1B98B3EE4;
    v65[1] = v59;

    v65[2] = sub_1B98B3EEC;
    v65[3] = v60;

    v65[4] = sub_1B98B3F00;
    v65[5] = v61;

    v65[6] = sub_1B98B3F0C;
    v65[7] = v62;

    v65[8] = sub_1B98B3F14;
    v65[9] = v63;

    v65[10] = sub_1B98B3F28;
    v65[11] = v64;
    sub_1B9851B38();

    if (os_log_type_enabled(log, v68))
    {
      v48 = sub_1B98F5C28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v49 = sub_1B985263C(0);
      v50 = sub_1B985263C(2);
      v126 = v48;
      v127 = v49;
      v128 = v50;
      sub_1B9852690(2, &v126);
      sub_1B9852690(2, &v126);
      v129 = sub_1B98B3EE4;
      v130 = v59;
      sub_1B98526A4(&v129, &v126, &v127, &v128);
      if (v99)
      {
      }

      v129 = sub_1B98B3EEC;
      v130 = v60;
      sub_1B98526A4(&v129, &v126, &v127, &v128);
      v129 = sub_1B98B3F00;
      v130 = v61;
      sub_1B98526A4(&v129, &v126, &v127, &v128);
      v129 = sub_1B98B3F0C;
      v130 = v62;
      sub_1B98526A4(&v129, &v126, &v127, &v128);
      v129 = sub_1B98B3F14;
      v130 = v63;
      sub_1B98526A4(&v129, &v126, &v127, &v128);
      v129 = sub_1B98B3F28;
      v130 = v64;
      sub_1B98526A4(&v129, &v126, &v127, &v128);
      _os_log_impl(&dword_1B982F000, log, v68, "%s: Marking remaining handles as unknown %s", v48, 0x16u);
      sub_1B985281C(v49);
      sub_1B985281C(v50);
      sub_1B98F5C08();
    }

    else
    {
    }

    v46 = *(v119 + 688);
    v42 = *(v119 + 672);
    v43 = *(v119 + 664);
    v40 = *(v119 + 600);
    v41 = *(v119 + 584);
    v45 = *(v119 + 544);
    v44 = (*(v119 + 680) + 16);
    MEMORY[0x1E69E5920](log);
    v43(v40, v41);
    swift_beginAccess();
    v47 = *v44;
    sub_1B98F54D8();
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B98F5498();
    memcpy((v119 + 96), (v119 + 16), 0x28uLL);
    while (1)
    {
      v39 = *(v119 + 536);
      v38 = *(v119 + 528);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
      sub_1B98F5558();
      sub_1B98732E4(v38, v39);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
      if ((*(*(v18 - 8) + 48))(v39, 1) == 1)
      {
        break;
      }

      *(v119 + 496) = *(v119 + 560);
      v37 = *(v119 + 560);
      v36 = *(v119 + 552);
      v19 = *(v119 + 696) + 16;
      sub_1B9832680(*(v119 + 536), v37);
      sub_1B9833334(v37, v36);
      *(v119 + 400) = 4;
      *(v119 + 408) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v37);
    }

    v33 = *(v119 + 696);
    v34 = *(v119 + 680);
    sub_1B987349C((v119 + 96));
    v35 = *(v33 + 16);
    sub_1B98F54D8();

    sub_1B98B1790((v119 + 472));

    sub_1B98B3F34((v119 + 456));
    v77 = v35;
  }

  v20 = *(v119 + 632);
  v23 = *(v119 + 624);
  v24 = *(v119 + 616);
  v25 = *(v119 + 608);
  v26 = *(v119 + 600);
  v27 = *(v119 + 576);
  v28 = *(v119 + 568);
  v29 = *(v119 + 560);
  v30 = *(v119 + 552);
  v31 = *(v119 + 536);
  v32 = *(v119 + 528);

  v21 = *(*(v119 + 432) + 8);
  v22 = *(v119 + 432);

  return v21(v77);
}

uint64_t sub_1B989F694()
{
  v1 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[85];
  v9 = v0[79];
  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[76];
  v13 = v0[75];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[69];
  v18 = v0[67];
  v19 = v0[66];
  v0[54] = v0;

  sub_1B98B3E40(v0 + 44);

  sub_1B98B1790(v0 + 59);

  sub_1B98B3F34(v0 + 57);

  v2 = *(*(v20 + 432) + 8);
  v3 = *(v20 + 432);
  v4 = *(v20 + 728);

  return v2();
}

uint64_t sub_1B989F84C()
{
  v13 = v0;
  sub_1B989FF34(v0 + 16, v10);
  v4 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9 = (*(v3 + 16))(v4);
  __swift_destroy_boxed_opaque_existential_1(v10);
  v7 = *(v5 + 56);
  v6 = *(v5 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 24))(v9, ObjectType);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1B989F940(uint64_t a1)
{
  v9 = 0;
  v10 = a1;
  sub_1B989FF34(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(a1, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B989F9CC(uint64_t a1)
{
  v9 = 0;
  v10 = a1;
  sub_1B989FF34(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 24))(a1, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B989FA58(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v19 = a1;
  v18 = a2 & 1;
  v16 = a3;
  v17 = a4;
  sub_1B98B4250(v4 + 128, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 8))(a1, a2 & 1, a3, a4, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1B989FB20()
{
  v8 = 0;
  sub_1B989FF34(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 16))(v3);
  type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v4 = sub_1B98F5AA8();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4 & 1;
}

uint64_t sub_1B989FBF8()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FC30()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FC68()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FCA0()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B989FCD8()
{
  v2 = *(v0 + 120);

  return v2;
}

void *sub_1B989FD24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v37 = a1;
  v35 = a2;
  v36 = a3;
  v33 = a4;
  v34 = a5;
  v31 = a6;
  v32 = a7;
  v29 = a8;
  v30 = a9;
  v28 = a10;
  v27 = a11;
  v26 = v11;
  sub_1B989FF34(a1, v25);
  sub_1B98B42BC(v25, (v11 + 16));

  v23 = a10;
  if (a10)
  {
    v24 = v23;
  }

  else
  {
    type metadata accessor for SensitiveContentDataSource();
    v24 = sub_1B988F578();
  }

  v21[15] = v24;
  swift_unknownObjectRetain();
  v21[7] = a2;
  v21[8] = a3;
  swift_unknownObjectRetain();
  v21[9] = a4;
  v21[10] = a5;
  swift_unknownObjectRetain();
  v21[11] = a6;
  v21[12] = a7;
  swift_unknownObjectRetain();
  v21[13] = a8;
  v21[14] = a9;
  sub_1B98B4250(a11, v22);
  sub_1B98B4324(v22, v21 + 16);
  __swift_destroy_boxed_opaque_existential_1(a11);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v21;
}

uint64_t sub_1B989FF34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B989FFA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[11];
  swift_unknownObjectRelease();
  v4 = v0[13];
  swift_unknownObjectRelease();
  v5 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  return v7;
}

uint64_t (*sub_1B98A01C0())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B43DC;
}

uint64_t sub_1B98A025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  v44 = a1;
  v43 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0u;
  v54 = 0u;
  v53 = 0;
  v34 = type metadata accessor for BlockedHandle();
  v35 = *(v34 - 8);
  v36 = v35;
  v37 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8, v34);
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = &v12 - v39;
  MEMORY[0x1EEE9AC00](&v12 - v39, v3);
  v40 = &v12 - v39;
  v64 = &v12 - v39;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v44, v41);
  v46 = &v12 - v45;
  v63 = v4;
  v62 = *v5;
  v47 = v6 + 16;
  v61 = v6 + 16;
  v48 = &v60;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v49 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v32 = v49;
    v23 = v49;
    v59 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v24 = sub_1B98F5F98();
    v28 = sub_1B9853574();
    v25 = v28;
    v58 = sub_1B98F54A8();
    v27 = sub_1B98A084C(v44);
    v26 = v27;
    v57 = v27;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v56 = v67;
    v55 = v66;
    v54 = v65;
    for (i = v33; ; i = v16)
    {
      v22 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v36 + 48))(v46, 1, v34) == 1)
      {
        break;
      }

      v16 = v22;
      sub_1B9832680(v46, v40);
      sub_1B9833334(v40, v38);
      v51 = 0;
      v52 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
      sub_1B983A3AC(v40);
    }

    v19 = v22;
    sub_1B9871430(&v54);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v17 = &v12;
    MEMORY[0x1EEE9AC00](&v12, v8);
    v18 = &v12 - 4;
    *(&v12 - 2) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v10 = v19;
    v11 = sub_1B98F5528();
    v20 = v10;
    v21 = v11;
    if (v10)
    {

      __break(1u);
    }

    else
    {
      v14 = v21;
      v15 = 0;

      v53 = v14;
      v13 = v58;
      sub_1B98F54D8();

      sub_1B98B1790(&v58);

      return v13;
    }
  }

  else
  {
    sub_1B98B568C();
    v30 = 0;
    v31 = swift_allocError();
    swift_willThrow();
    return v30;
  }

  return result;
}

uint64_t sub_1B98A084C(uint64_t a1)
{
  v30 = a1;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v34 = __b;
  v36 = 40;
  memset(__b, 0, sizeof(__b));
  v26 = 0;
  v31 = type metadata accessor for BlockedHandle();
  v18 = *(v31 - 8);
  v19 = v31 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31, v2);
  v21 = &v10 - v20;
  v22 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v20, v4);
  v23 = &v10 - v22;
  v24 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v22, v6);
  v25 = &v10 - v24;
  v44 = &v10 - v24;
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v31);
  v28 = &v10 - v27;
  v43 = v7;
  v42 = v1;
  v29 = sub_1B98F5F98();
  v33 = sub_1B9853574();
  v41 = sub_1B98F5A38();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v8 = sub_1B98F54D8();
  v35 = &v45;
  MEMORY[0x1BFADD440](v8, v31, v32, v33);
  memcpy(v34, v35, v36);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A30, &qword_1B98FB6C8);
    sub_1B98F54C8();
    if ((*(v18 + 48))(v28, 1, v31) == 1)
    {
      break;
    }

    sub_1B9832680(v28, v25);
    v15 = v37;
    sub_1B989FF34(v17 + 16, v37);
    v13 = v38;
    v14 = v39;
    __swift_project_boxed_opaque_existential_1(v15, v38);
    v16 = (*(v14 + 32))(v25, v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v16)
    {
      sub_1B9833334(v25, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
      sub_1B98F5A88();
      sub_1B983A3AC(v23);
    }

    sub_1B983A3AC(v25);
  }

  sub_1B98B4400(__b);
  v11 = &v41;
  v12 = v41;
  sub_1B98F54D8();
  sub_1B9868D78(v11);
  return v12;
}

uint64_t sub_1B98A0C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

uint64_t (*sub_1B98A0D84())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4440;
}

uint64_t sub_1B98A0E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v48 = a1;
  v47 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0;
  v37 = type metadata accessor for BlockedHandle();
  v38 = *(v37 - 8);
  v39 = v38;
  v41 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v37);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v3);
  v42 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v4);
  v44 = &v13 - v43;
  v72 = &v13 - v43;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v48, v45);
  v50 = &v13 - v49;
  v71 = v5;
  v70 = *v6;
  v51 = v7 + 16;
  v69 = v7 + 16;
  v52 = &v68;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v35 = v53;
    v26 = v53;
    v67 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v27 = sub_1B98F5F98();
    v31 = sub_1B9853574();
    v28 = v31;
    v66 = sub_1B98F54A8();
    v30 = sub_1B98A1528(v48);
    v29 = v30;
    v65 = v30;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v64 = v75;
    v63 = v74;
    v62 = v73;
    for (i = v36; ; i = v17)
    {
      v25 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v39 + 48))(v50, 1, v37) == 1)
      {
        break;
      }

      sub_1B9832680(v50, v44);
      sub_1B9833334(v44, v42);
      sub_1B98F55B8();
      v57 = v59;
      v58 = v60;
      v19 = (v60 & 1) != 0;
      v18 = v19;
      sub_1B983A3AC(v42);
      if (v18)
      {
        sub_1B9833334(v44, v40);
        v55 = 8;
        v56 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v17 = v25;
      sub_1B983A3AC(v44);
    }

    v22 = v25;
    sub_1B9871430(&v62);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v20 = &v13;
    MEMORY[0x1EEE9AC00](&v13, v9);
    v21 = &v13 - 4;
    *(&v13 - 2) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v11 = v22;
    v12 = sub_1B98F5528();
    v23 = v11;
    v24 = v12;
    if (v11)
    {

      __break(1u);
    }

    else
    {
      v15 = v24;
      v16 = 0;

      v61 = v15;
      v14 = v66;
      sub_1B98F54D8();

      sub_1B98B1790(&v66);

      return v14;
    }
  }

  else
  {
    sub_1B98B568C();
    v33 = 0;
    v34 = swift_allocError();
    swift_willThrow();
    return v33;
  }

  return result;
}

uint64_t sub_1B98A1528(uint64_t a1)
{
  v133 = a1;
  v134 = sub_1B98B446C;
  v137 = sub_1B98B4464;
  v138 = sub_1B98B44EC;
  v143 = sub_1B98B4474;
  v147 = sub_1B98B4514;
  v149 = sub_1B98B44DC;
  v151 = sub_1B98B44E4;
  v153 = sub_1B98B44F8;
  v155 = sub_1B98B4504;
  v157 = sub_1B98B450C;
  v160 = sub_1B98B4520;
  v111 = sub_1B98B4534;
  v112 = sub_1B98B452C;
  v113 = sub_1B98B45B4;
  v114 = sub_1B98B453C;
  v115 = sub_1B98B45DC;
  v116 = sub_1B98B45A4;
  v117 = sub_1B98B45AC;
  v118 = sub_1B98B45C0;
  v119 = sub_1B98B45CC;
  v120 = sub_1B98B45D4;
  v121 = sub_1B98B45E8;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v122 = 0;
  v130 = sub_1B98F5138();
  v128 = *(v130 - 8);
  v129 = v130 - 8;
  v124 = v128[8];
  v123 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v133, v1);
  v125 = v62 - v123;
  v126 = v123;
  v3 = MEMORY[0x1EEE9AC00](v2, v62 - v123);
  v4 = v62 - v126;
  v127 = v62 - v126;
  v178 = v3;
  v177 = v5;
  v6 = sub_1B98F1E6C();
  v131 = v128[2];
  v132 = v128 + 2;
  v131(v4, v6, v130);

  sub_1B98F54D8();
  v145 = 7;
  v135 = swift_allocObject();
  *(v135 + 16) = v133;

  v144 = 32;
  v7 = swift_allocObject();
  v8 = v135;
  v146 = v7;
  *(v7 + 16) = v134;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v136;
  v164 = v9;
  v165 = sub_1B98F5BD8();
  v141 = 17;
  v150 = swift_allocObject();
  v140 = 32;
  *(v150 + 16) = 32;
  v152 = swift_allocObject();
  v142 = 8;
  *(v152 + 16) = 8;
  v11 = swift_allocObject();
  v139 = v11;
  *(v11 + 16) = v137;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v139;
  v154 = v12;
  *(v12 + 16) = v138;
  *(v12 + 24) = v13;
  v156 = swift_allocObject();
  *(v156 + 16) = v140;
  v158 = swift_allocObject();
  *(v158 + 16) = v142;
  v14 = swift_allocObject();
  v15 = v146;
  v148 = v14;
  *(v14 + 16) = v143;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v148;
  v161 = v16;
  *(v16 + 16) = v147;
  *(v16 + 24) = v17;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v159 = sub_1B98F5F98();
  v162 = v18;

  v19 = v150;
  v20 = v162;
  *v162 = v149;
  v20[1] = v19;

  v21 = v152;
  v22 = v162;
  v162[2] = v151;
  v22[3] = v21;

  v23 = v154;
  v24 = v162;
  v162[4] = v153;
  v24[5] = v23;

  v25 = v156;
  v26 = v162;
  v162[6] = v155;
  v26[7] = v25;

  v27 = v158;
  v28 = v162;
  v162[8] = v157;
  v28[9] = v27;

  v29 = v161;
  v30 = v162;
  v162[10] = v160;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v164, v165))
  {
    v31 = v122;
    v103 = sub_1B98F5C28();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v104 = sub_1B985263C(0);
    v105 = sub_1B985263C(2);
    v107 = &v170;
    v170 = v103;
    v108 = &v169;
    v169 = v104;
    v109 = &v168;
    v168 = v105;
    v106 = 2;
    sub_1B9852690(2, &v170);
    sub_1B9852690(v106, v107);
    v166 = v149;
    v167 = v150;
    sub_1B98526A4(&v166, v107, v108, v109);
    v110 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v166 = v151;
      v167 = v152;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v100 = 0;
      v166 = v153;
      v167 = v154;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v99 = 0;
      v166 = v155;
      v167 = v156;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v98 = 0;
      v166 = v157;
      v167 = v158;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v97 = 0;
      v166 = v160;
      v167 = v161;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v96 = 0;
      _os_log_impl(&dword_1B982F000, v164, v165, "%s: Looking up contacts for handles %s", v103, 0x16u);
      sub_1B985281C(v104);
      sub_1B985281C(v105);
      sub_1B98F5C08();

      v101 = v96;
    }
  }

  else
  {
    v32 = v122;

    v101 = v32;
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v164);
  v72 = v128[1];
  v73 = v128 + 1;
  v72(v127, v130);
  v75 = *(v136 + 56);
  v74 = *(v136 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v74 + 16))(v133, ObjectType);
  v35 = v125;
  v76 = v34;
  v176 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v131(v35, v36, v130);

  sub_1B98F54D8();
  v83 = 7;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v82 = 32;
  v37 = swift_allocObject();
  v38 = v77;
  v84 = v37;
  *(v37 + 16) = v111;
  *(v37 + 24) = v38;

  v94 = sub_1B98F5118();
  v95 = sub_1B98F5BD8();
  v80 = 17;
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v136;
  v78 = v39;
  *(v39 + 16) = v112;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v78;
  v88 = v41;
  *(v41 + 16) = v113;
  *(v41 + 24) = v42;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v43 = swift_allocObject();
  v44 = v84;
  v85 = v43;
  *(v43 + 16) = v114;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v85;
  v92 = v45;
  *(v45 + 16) = v115;
  *(v45 + 24) = v46;
  v91 = sub_1B98F5F98();
  v93 = v47;

  v48 = v86;
  v49 = v93;
  *v93 = v116;
  v49[1] = v48;

  v50 = v87;
  v51 = v93;
  v93[2] = v117;
  v51[3] = v50;

  v52 = v88;
  v53 = v93;
  v93[4] = v118;
  v53[5] = v52;

  v54 = v89;
  v55 = v93;
  v93[6] = v119;
  v55[7] = v54;

  v56 = v90;
  v57 = v93;
  v93[8] = v120;
  v57[9] = v56;

  v58 = v92;
  v59 = v93;
  v93[10] = v121;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v94, v95))
  {
    v60 = v71;
    v63 = sub_1B98F5C28();
    v62[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v64 = sub_1B985263C(0);
    v65 = sub_1B985263C(2);
    v67 = &v175;
    v175 = v63;
    v68 = &v174;
    v174 = v64;
    v69 = &v173;
    v173 = v65;
    v66 = 2;
    sub_1B9852690(2, &v175);
    sub_1B9852690(v66, v67);
    v171 = v116;
    v172 = v86;
    sub_1B98526A4(&v171, v67, v68, v69);
    v70 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v171 = v117;
      v172 = v87;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[3] = 0;
      v171 = v118;
      v172 = v88;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[2] = 0;
      v171 = v119;
      v172 = v89;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[1] = 0;
      v171 = v120;
      v172 = v90;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[0] = 0;
      v171 = v121;
      v172 = v92;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      _os_log_impl(&dword_1B982F000, v94, v95, "%s: Contacts found %s", v63, 0x16u);
      sub_1B985281C(v64);
      sub_1B985281C(v65);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  v72(v125, v130);
  return v76;
}

uint64_t sub_1B98A29C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

uint64_t (*sub_1B98A2B00())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B45F4;
}

uint64_t sub_1B98A2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v48 = a1;
  v47 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0;
  v37 = type metadata accessor for BlockedHandle();
  v38 = *(v37 - 8);
  v39 = v38;
  v41 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v37);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v3);
  v42 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v4);
  v44 = &v13 - v43;
  v72 = &v13 - v43;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v48, v45);
  v50 = &v13 - v49;
  v71 = v5;
  v70 = *v6;
  v51 = v7 + 16;
  v69 = v7 + 16;
  v52 = &v68;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v35 = v53;
    v26 = v53;
    v67 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v27 = sub_1B98F5F98();
    v31 = sub_1B9853574();
    v28 = v31;
    v66 = sub_1B98F54A8();
    v30 = sub_1B98A32A4(v48);
    v29 = v30;
    v65 = v30;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v64 = v75;
    v63 = v74;
    v62 = v73;
    for (i = v36; ; i = v17)
    {
      v25 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v39 + 48))(v50, 1, v37) == 1)
      {
        break;
      }

      sub_1B9832680(v50, v44);
      sub_1B9833334(v44, v42);
      sub_1B98F55B8();
      v57 = v59;
      v58 = v60;
      v19 = (v60 & 1) != 0;
      v18 = v19;
      sub_1B983A3AC(v42);
      if (v18)
      {
        sub_1B9833334(v44, v40);
        v55 = 5;
        v56 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v17 = v25;
      sub_1B983A3AC(v44);
    }

    v22 = v25;
    sub_1B9871430(&v62);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v20 = &v13;
    MEMORY[0x1EEE9AC00](&v13, v9);
    v21 = &v13 - 4;
    *(&v13 - 2) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v11 = v22;
    v12 = sub_1B98F5528();
    v23 = v11;
    v24 = v12;
    if (v11)
    {

      __break(1u);
    }

    else
    {
      v15 = v24;
      v16 = 0;

      v61 = v15;
      v14 = v66;
      sub_1B98F54D8();

      sub_1B98B1790(&v66);

      return v14;
    }
  }

  else
  {
    sub_1B98B568C();
    v33 = 0;
    v34 = swift_allocError();
    swift_willThrow();
    return v33;
  }

  return result;
}

uint64_t sub_1B98A32A4(uint64_t a1)
{
  v130 = a1;
  v141 = sub_1B98B4620;
  v144 = sub_1B98B4618;
  v145 = sub_1B98B46A0;
  v150 = sub_1B98B4628;
  v154 = sub_1B98B46C8;
  v156 = sub_1B98B4690;
  v158 = sub_1B98B4698;
  v160 = sub_1B98B46AC;
  v162 = sub_1B98B46B8;
  v164 = sub_1B98B46C0;
  v167 = sub_1B98B46D4;
  v111 = sub_1B98B46E8;
  v112 = sub_1B98B46E0;
  v113 = sub_1B98B4768;
  v114 = sub_1B98B46F0;
  v115 = sub_1B98B4790;
  v116 = sub_1B98B4758;
  v117 = sub_1B98B4760;
  v118 = sub_1B98B4774;
  v119 = sub_1B98B4780;
  v120 = sub_1B98B4788;
  v121 = sub_1B98B479C;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v183 = 0;
  v122 = 0;
  v123 = 0;
  v137 = sub_1B98F5138();
  v135 = *(v137 - 8);
  v136 = v137 - 8;
  v125 = v135[8];
  v124 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0, v1);
  v126 = v62 - v124;
  v127 = v124;
  MEMORY[0x1EEE9AC00](v2, v62 - v124);
  v3 = v62 - v127;
  v128 = v62 - v127;
  v187 = v130;
  v186 = v4;
  v131 = type metadata accessor for BlockedHandle();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v133 = sub_1B9853574();
  v5 = sub_1B98F54D8();
  v134 = &v185;
  v185 = v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v140 = sub_1B98F5AE8();
  v184 = v140;
  v6 = sub_1B98F1E6C();
  v138 = v135[2];
  v139 = v135 + 2;
  v138(v3, v6, v137);

  sub_1B98F54D8();
  v152 = 7;
  v142 = swift_allocObject();
  *(v142 + 16) = v140;

  v151 = 32;
  v7 = swift_allocObject();
  v8 = v142;
  v153 = v7;
  *(v7 + 16) = v141;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v143;
  v171 = v9;
  v172 = sub_1B98F5BD8();
  v148 = 17;
  v157 = swift_allocObject();
  v147 = 32;
  *(v157 + 16) = 32;
  v159 = swift_allocObject();
  v149 = 8;
  *(v159 + 16) = 8;
  v11 = swift_allocObject();
  v146 = v11;
  *(v11 + 16) = v144;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v146;
  v161 = v12;
  *(v12 + 16) = v145;
  *(v12 + 24) = v13;
  v163 = swift_allocObject();
  *(v163 + 16) = v147;
  v165 = swift_allocObject();
  *(v165 + 16) = v149;
  v14 = swift_allocObject();
  v15 = v153;
  v155 = v14;
  *(v14 + 16) = v150;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v155;
  v168 = v16;
  *(v16 + 16) = v154;
  *(v16 + 24) = v17;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v166 = sub_1B98F5F98();
  v169 = v18;

  v19 = v157;
  v20 = v169;
  *v169 = v156;
  v20[1] = v19;

  v21 = v159;
  v22 = v169;
  v169[2] = v158;
  v22[3] = v21;

  v23 = v161;
  v24 = v169;
  v169[4] = v160;
  v24[5] = v23;

  v25 = v163;
  v26 = v169;
  v169[6] = v162;
  v26[7] = v25;

  v27 = v165;
  v28 = v169;
  v169[8] = v164;
  v28[9] = v27;

  v29 = v168;
  v30 = v169;
  v169[10] = v167;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v171, v172))
  {
    v31 = v122;
    v103 = sub_1B98F5C28();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v104 = sub_1B985263C(0);
    v105 = sub_1B985263C(2);
    v107 = &v177;
    v177 = v103;
    v108 = &v176;
    v176 = v104;
    v109 = &v175;
    v175 = v105;
    v106 = 2;
    sub_1B9852690(2, &v177);
    sub_1B9852690(v106, v107);
    v173 = v156;
    v174 = v157;
    sub_1B98526A4(&v173, v107, v108, v109);
    v110 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v173 = v158;
      v174 = v159;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v100 = 0;
      v173 = v160;
      v174 = v161;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v99 = 0;
      v173 = v162;
      v174 = v163;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v98 = 0;
      v173 = v164;
      v174 = v165;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v97 = 0;
      v173 = v167;
      v174 = v168;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v96 = 0;
      _os_log_impl(&dword_1B982F000, v171, v172, "%s: Looking up call history for handles %s", v103, 0x16u);
      sub_1B985281C(v104);
      sub_1B985281C(v105);
      sub_1B98F5C08();

      v101 = v96;
    }
  }

  else
  {
    v32 = v122;

    v101 = v32;
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v171);
  v72 = v135[1];
  v73 = v135 + 1;
  v72(v128, v137);
  v75 = *(v143 + 72);
  v74 = *(v143 + 80);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v74 + 8))(v140, ObjectType);
  v35 = v126;
  v76 = v34;
  v183 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v138(v35, v36, v137);

  sub_1B98F54D8();
  v83 = 7;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v82 = 32;
  v37 = swift_allocObject();
  v38 = v77;
  v84 = v37;
  *(v37 + 16) = v111;
  *(v37 + 24) = v38;

  v94 = sub_1B98F5118();
  v95 = sub_1B98F5BD8();
  v80 = 17;
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v143;
  v78 = v39;
  *(v39 + 16) = v112;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v78;
  v88 = v41;
  *(v41 + 16) = v113;
  *(v41 + 24) = v42;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v43 = swift_allocObject();
  v44 = v84;
  v85 = v43;
  *(v43 + 16) = v114;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v85;
  v92 = v45;
  *(v45 + 16) = v115;
  *(v45 + 24) = v46;
  v91 = sub_1B98F5F98();
  v93 = v47;

  v48 = v86;
  v49 = v93;
  *v93 = v116;
  v49[1] = v48;

  v50 = v87;
  v51 = v93;
  v93[2] = v117;
  v51[3] = v50;

  v52 = v88;
  v53 = v93;
  v93[4] = v118;
  v53[5] = v52;

  v54 = v89;
  v55 = v93;
  v93[6] = v119;
  v55[7] = v54;

  v56 = v90;
  v57 = v93;
  v93[8] = v120;
  v57[9] = v56;

  v58 = v92;
  v59 = v93;
  v93[10] = v121;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v94, v95))
  {
    v60 = v71;
    v63 = sub_1B98F5C28();
    v62[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v64 = sub_1B985263C(0);
    v65 = sub_1B985263C(2);
    v67 = &v182;
    v182 = v63;
    v68 = &v181;
    v181 = v64;
    v69 = &v180;
    v180 = v65;
    v66 = 2;
    sub_1B9852690(2, &v182);
    sub_1B9852690(v66, v67);
    v178 = v116;
    v179 = v86;
    sub_1B98526A4(&v178, v67, v68, v69);
    v70 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v178 = v117;
      v179 = v87;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[4] = 0;
      v178 = v118;
      v179 = v88;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[3] = 0;
      v178 = v119;
      v179 = v89;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[2] = 0;
      v178 = v120;
      v179 = v90;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[1] = 0;
      v178 = v121;
      v179 = v92;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      _os_log_impl(&dword_1B982F000, v94, v95, "%s: Call history found %s", v63, 0x16u);
      sub_1B985281C(v64);
      sub_1B985281C(v65);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  v72(v126, v137);

  return v76;
}

uint64_t sub_1B98A4840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

uint64_t (*sub_1B98A497C())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B47A8;
}

uint64_t sub_1B98A4A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v48 = a1;
  v47 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0;
  v37 = type metadata accessor for BlockedHandle();
  v38 = *(v37 - 8);
  v39 = v38;
  v41 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v37);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v3);
  v42 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v4);
  v44 = &v13 - v43;
  v72 = &v13 - v43;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v48, v45);
  v50 = &v13 - v49;
  v71 = v5;
  v70 = *v6;
  v51 = v7 + 16;
  v69 = v7 + 16;
  v52 = &v68;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v35 = v53;
    v26 = v53;
    v67 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v27 = sub_1B98F5F98();
    v31 = sub_1B9853574();
    v28 = v31;
    v66 = sub_1B98F54A8();
    v30 = sub_1B98A5120(v48);
    v29 = v30;
    v65 = v30;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v64 = v75;
    v63 = v74;
    v62 = v73;
    for (i = v36; ; i = v17)
    {
      v25 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v39 + 48))(v50, 1, v37) == 1)
      {
        break;
      }

      sub_1B9832680(v50, v44);
      sub_1B9833334(v44, v42);
      sub_1B98F55B8();
      v57 = v59;
      v58 = v60;
      v19 = (v60 & 1) != 0;
      v18 = v19;
      sub_1B983A3AC(v42);
      if (v18)
      {
        sub_1B9833334(v44, v40);
        v55 = 5;
        v56 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v17 = v25;
      sub_1B983A3AC(v44);
    }

    v22 = v25;
    sub_1B9871430(&v62);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v20 = &v13;
    MEMORY[0x1EEE9AC00](&v13, v9);
    v21 = &v13 - 4;
    *(&v13 - 2) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v11 = v22;
    v12 = sub_1B98F5528();
    v23 = v11;
    v24 = v12;
    if (v11)
    {

      __break(1u);
    }

    else
    {
      v15 = v24;
      v16 = 0;

      v61 = v15;
      v14 = v66;
      sub_1B98F54D8();

      sub_1B98B1790(&v66);

      return v14;
    }
  }

  else
  {
    sub_1B98B568C();
    v33 = 0;
    v34 = swift_allocError();
    swift_willThrow();
    return v33;
  }

  return result;
}

uint64_t sub_1B98A5120(uint64_t a1)
{
  v130 = a1;
  v141 = sub_1B98B47D4;
  v144 = sub_1B98B47CC;
  v145 = sub_1B98B4854;
  v150 = sub_1B98B47DC;
  v154 = sub_1B98B487C;
  v156 = sub_1B98B4844;
  v158 = sub_1B98B484C;
  v160 = sub_1B98B4860;
  v162 = sub_1B98B486C;
  v164 = sub_1B98B4874;
  v167 = sub_1B98B4888;
  v111 = sub_1B98B489C;
  v112 = sub_1B98B4894;
  v113 = sub_1B98B491C;
  v114 = sub_1B98B48A4;
  v115 = sub_1B98B4944;
  v116 = sub_1B98B490C;
  v117 = sub_1B98B4914;
  v118 = sub_1B98B4928;
  v119 = sub_1B98B4934;
  v120 = sub_1B98B493C;
  v121 = sub_1B98B4950;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v183 = 0;
  v122 = 0;
  v123 = 0;
  v137 = sub_1B98F5138();
  v135 = *(v137 - 8);
  v136 = v137 - 8;
  v125 = v135[8];
  v124 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0, v1);
  v126 = v62 - v124;
  v127 = v124;
  MEMORY[0x1EEE9AC00](v2, v62 - v124);
  v3 = v62 - v127;
  v128 = v62 - v127;
  v187 = v130;
  v186 = v4;
  v131 = type metadata accessor for BlockedHandle();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v133 = sub_1B9853574();
  v5 = sub_1B98F54D8();
  v134 = &v185;
  v185 = v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v140 = sub_1B98F5AE8();
  v184 = v140;
  v6 = sub_1B98F1E6C();
  v138 = v135[2];
  v139 = v135 + 2;
  v138(v3, v6, v137);

  sub_1B98F54D8();
  v152 = 7;
  v142 = swift_allocObject();
  *(v142 + 16) = v140;

  v151 = 32;
  v7 = swift_allocObject();
  v8 = v142;
  v153 = v7;
  *(v7 + 16) = v141;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v143;
  v171 = v9;
  v172 = sub_1B98F5BD8();
  v148 = 17;
  v157 = swift_allocObject();
  v147 = 32;
  *(v157 + 16) = 32;
  v159 = swift_allocObject();
  v149 = 8;
  *(v159 + 16) = 8;
  v11 = swift_allocObject();
  v146 = v11;
  *(v11 + 16) = v144;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v146;
  v161 = v12;
  *(v12 + 16) = v145;
  *(v12 + 24) = v13;
  v163 = swift_allocObject();
  *(v163 + 16) = v147;
  v165 = swift_allocObject();
  *(v165 + 16) = v149;
  v14 = swift_allocObject();
  v15 = v153;
  v155 = v14;
  *(v14 + 16) = v150;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v155;
  v168 = v16;
  *(v16 + 16) = v154;
  *(v16 + 24) = v17;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v166 = sub_1B98F5F98();
  v169 = v18;

  v19 = v157;
  v20 = v169;
  *v169 = v156;
  v20[1] = v19;

  v21 = v159;
  v22 = v169;
  v169[2] = v158;
  v22[3] = v21;

  v23 = v161;
  v24 = v169;
  v169[4] = v160;
  v24[5] = v23;

  v25 = v163;
  v26 = v169;
  v169[6] = v162;
  v26[7] = v25;

  v27 = v165;
  v28 = v169;
  v169[8] = v164;
  v28[9] = v27;

  v29 = v168;
  v30 = v169;
  v169[10] = v167;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v171, v172))
  {
    v31 = v122;
    v103 = sub_1B98F5C28();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v104 = sub_1B985263C(0);
    v105 = sub_1B985263C(2);
    v107 = &v177;
    v177 = v103;
    v108 = &v176;
    v176 = v104;
    v109 = &v175;
    v175 = v105;
    v106 = 2;
    sub_1B9852690(2, &v177);
    sub_1B9852690(v106, v107);
    v173 = v156;
    v174 = v157;
    sub_1B98526A4(&v173, v107, v108, v109);
    v110 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v173 = v158;
      v174 = v159;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v100 = 0;
      v173 = v160;
      v174 = v161;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v99 = 0;
      v173 = v162;
      v174 = v163;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v98 = 0;
      v173 = v164;
      v174 = v165;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v97 = 0;
      v173 = v167;
      v174 = v168;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v96 = 0;
      _os_log_impl(&dword_1B982F000, v171, v172, "%s: Looking up people suggester for handles %s", v103, 0x16u);
      sub_1B985281C(v104);
      sub_1B985281C(v105);
      sub_1B98F5C08();

      v101 = v96;
    }
  }

  else
  {
    v32 = v122;

    v101 = v32;
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v171);
  v72 = v135[1];
  v73 = v135 + 1;
  v72(v128, v137);
  v75 = *(v143 + 88);
  v74 = *(v143 + 96);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v74 + 8))(v140, ObjectType);
  v35 = v126;
  v76 = v34;
  v183 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v138(v35, v36, v137);

  sub_1B98F54D8();
  v83 = 7;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v82 = 32;
  v37 = swift_allocObject();
  v38 = v77;
  v84 = v37;
  *(v37 + 16) = v111;
  *(v37 + 24) = v38;

  v94 = sub_1B98F5118();
  v95 = sub_1B98F5BD8();
  v80 = 17;
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v143;
  v78 = v39;
  *(v39 + 16) = v112;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v78;
  v88 = v41;
  *(v41 + 16) = v113;
  *(v41 + 24) = v42;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v43 = swift_allocObject();
  v44 = v84;
  v85 = v43;
  *(v43 + 16) = v114;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v85;
  v92 = v45;
  *(v45 + 16) = v115;
  *(v45 + 24) = v46;
  v91 = sub_1B98F5F98();
  v93 = v47;

  v48 = v86;
  v49 = v93;
  *v93 = v116;
  v49[1] = v48;

  v50 = v87;
  v51 = v93;
  v93[2] = v117;
  v51[3] = v50;

  v52 = v88;
  v53 = v93;
  v93[4] = v118;
  v53[5] = v52;

  v54 = v89;
  v55 = v93;
  v93[6] = v119;
  v55[7] = v54;

  v56 = v90;
  v57 = v93;
  v93[8] = v120;
  v57[9] = v56;

  v58 = v92;
  v59 = v93;
  v93[10] = v121;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v94, v95))
  {
    v60 = v71;
    v63 = sub_1B98F5C28();
    v62[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v64 = sub_1B985263C(0);
    v65 = sub_1B985263C(2);
    v67 = &v182;
    v182 = v63;
    v68 = &v181;
    v181 = v64;
    v69 = &v180;
    v180 = v65;
    v66 = 2;
    sub_1B9852690(2, &v182);
    sub_1B9852690(v66, v67);
    v178 = v116;
    v179 = v86;
    sub_1B98526A4(&v178, v67, v68, v69);
    v70 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v178 = v117;
      v179 = v87;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[4] = 0;
      v178 = v118;
      v179 = v88;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[3] = 0;
      v178 = v119;
      v179 = v89;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[2] = 0;
      v178 = v120;
      v179 = v90;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[1] = 0;
      v178 = v121;
      v179 = v92;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      _os_log_impl(&dword_1B982F000, v94, v95, "%s: Interactions found %s", v63, 0x16u);
      sub_1B985281C(v64);
      sub_1B985281C(v65);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  v72(v126, v137);

  return v76;
}

uint64_t sub_1B98A66BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

uint64_t (*sub_1B98A67F8())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B495C;
}

uint64_t sub_1B98A6894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v44 = a2;
  v47 = a1;
  v46 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0;
  v36 = type metadata accessor for BlockedHandle();
  v37 = *(v36 - 8);
  v38 = v37;
  v40 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v36);
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = &v13 - v42;
  MEMORY[0x1EEE9AC00](&v13 - v42, v3);
  v41 = &v13 - v42;
  MEMORY[0x1EEE9AC00](&v13 - v42, v4);
  v43 = &v13 - v42;
  v73 = &v13 - v42;
  v48 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v47, v44);
  v49 = &v13 - v48;
  v72 = v5;
  v50 = *v6;
  v71 = v50;
  v51 = v7 + 16;
  v70 = v7 + 16;
  v52 = &v69;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v34 = v53;
    v25 = v53;
    v68 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v26 = sub_1B98F5F98();
    v30 = sub_1B9853574();
    v27 = v30;
    v67 = sub_1B98F54A8();
    v66 = v50;
    v29 = sub_1B98A6FC8(v47, &v66);
    v28 = v29;
    v65 = v29;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v64 = v76;
    v63 = v75;
    v62 = v74;
    for (i = v35; ; i = v16)
    {
      v24 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v38 + 48))(v49, 1, v36) == 1)
      {
        break;
      }

      sub_1B9832680(v49, v43);
      sub_1B9833334(v43, v41);
      sub_1B98F55B8();
      v57 = v59;
      v58 = v60;
      v18 = (v60 & 1) != 0;
      v17 = v18;
      sub_1B983A3AC(v41);
      if (v17)
      {
        sub_1B9833334(v43, v39);
        v55 = 1;
        v56 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v16 = v24;
      sub_1B983A3AC(v43);
    }

    v21 = v24;
    sub_1B9871430(&v62);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v19 = &v13;
    MEMORY[0x1EEE9AC00](&v13, v9);
    v20 = &v13 - 4;
    *(&v13 - 2) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v11 = v21;
    v12 = sub_1B98F5528();
    v22 = v11;
    v23 = v12;
    if (v11)
    {

      __break(1u);
    }

    else
    {
      v14 = v23;
      v15 = 0;

      v61 = v14;
      v13 = v67;
      sub_1B98F54D8();

      sub_1B98B1790(&v67);

      return v13;
    }
  }

  else
  {
    sub_1B98B568C();
    v32 = 0;
    v33 = swift_allocError();
    swift_willThrow();
    return v32;
  }

  return result;
}

uint64_t sub_1B98A6FC8(uint64_t a1, uint64_t a2)
{
  v232 = a1;
  v231 = a2;
  v198 = sub_1B98B49E8;
  v199 = sub_1B98B49E0;
  v200 = sub_1B98B4A68;
  v201 = sub_1B98B49F0;
  v202 = sub_1B98B4A90;
  v203 = sub_1B98B4A58;
  v204 = sub_1B98B4A60;
  v205 = sub_1B98B4A74;
  v206 = sub_1B98B4A80;
  v207 = sub_1B98B4A88;
  v208 = sub_1B98B4A9C;
  v209 = sub_1B98B4AB0;
  v210 = sub_1B98B4AA8;
  v211 = sub_1B98B4B30;
  v212 = sub_1B98B4AB8;
  v213 = sub_1B98B4B58;
  v214 = sub_1B98B4B20;
  v215 = sub_1B98B4B28;
  v216 = sub_1B98B4B3C;
  v217 = sub_1B98B4B48;
  v218 = sub_1B98B4B50;
  v219 = sub_1B98B4B64;
  v220 = sub_1B98B4980;
  v221 = sub_1B98B49A0;
  v222 = sub_1B98B4988;
  v223 = sub_1B98B49C8;
  v224 = sub_1B98B4990;
  v225 = sub_1B98B4998;
  v226 = sub_1B98B49AC;
  v227 = sub_1B98B49B8;
  v228 = sub_1B98B49C0;
  v229 = sub_1B98B49D4;
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v230 = 0;
  v258 = 0;
  v253 = 0;
  v233 = sub_1B98F5138();
  v234 = *(v233 - 8);
  v235 = v233 - 8;
  v236 = (*(v234 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v232, v231);
  v237 = v90 - v236;
  v238 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v239 = v90 - v238;
  v240 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v241 = v90 - v240;
  v266 = v9;
  v242 = *v10;
  v265 = v242;
  v264 = v2;
  if (v242 == 2)
  {
    v65 = v237;
    v66 = sub_1B98F1E6C();
    (*(v234 + 16))(v65, v66, v233);

    sub_1B98F54D8();
    v104 = 7;
    v105 = swift_allocObject();
    *(v105 + 16) = v232;
    v116 = sub_1B98F5118();
    v117 = sub_1B98F5BD8();
    v101 = 17;
    v107 = swift_allocObject();
    v100 = 32;
    *(v107 + 16) = 32;
    v108 = swift_allocObject();
    v102 = 8;
    *(v108 + 16) = 8;
    v103 = 32;
    v67 = swift_allocObject();
    v68 = v197;
    v99 = v67;
    *(v67 + 16) = v220;
    *(v67 + 24) = v68;
    v69 = swift_allocObject();
    v70 = v99;
    v109 = v69;
    *(v69 + 16) = v221;
    *(v69 + 24) = v70;
    v110 = swift_allocObject();
    *(v110 + 16) = v100;
    v111 = swift_allocObject();
    *(v111 + 16) = v102;
    v71 = swift_allocObject();
    v72 = v105;
    v106 = v71;
    *(v71 + 16) = v222;
    *(v71 + 24) = v72;
    v73 = swift_allocObject();
    v74 = v106;
    v113 = v73;
    *(v73 + 16) = v223;
    *(v73 + 24) = v74;
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v112 = sub_1B98F5F98();
    v114 = v75;

    v76 = v107;
    v77 = v114;
    *v114 = v224;
    v77[1] = v76;

    v78 = v108;
    v79 = v114;
    v114[2] = v225;
    v79[3] = v78;

    v80 = v109;
    v81 = v114;
    v114[4] = v226;
    v81[5] = v80;

    v82 = v110;
    v83 = v114;
    v114[6] = v227;
    v83[7] = v82;

    v84 = v111;
    v85 = v114;
    v114[8] = v228;
    v85[9] = v84;

    v86 = v113;
    v87 = v114;
    v114[10] = v229;
    v87[11] = v86;
    sub_1B9851B38();

    if (os_log_type_enabled(v116, v117))
    {
      v88 = v230;
      v91 = sub_1B98F5C28();
      v90[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v92 = sub_1B985263C(0);
      v93 = sub_1B985263C(2);
      v95 = &v263;
      v263 = v91;
      v96 = &v262;
      v262 = v92;
      v97 = &v261;
      v261 = v93;
      v94 = 2;
      sub_1B9852690(2, &v263);
      sub_1B9852690(v94, v95);
      v259 = v224;
      v260 = v107;
      sub_1B98526A4(&v259, v95, v96, v97);
      v98 = v88;
      if (v88)
      {

        __break(1u);
      }

      else
      {
        v259 = v225;
        v260 = v108;
        sub_1B98526A4(&v259, &v263, &v262, &v261);
        v90[6] = 0;
        v259 = v226;
        v260 = v109;
        sub_1B98526A4(&v259, &v263, &v262, &v261);
        v90[5] = 0;
        v259 = v227;
        v260 = v110;
        sub_1B98526A4(&v259, &v263, &v262, &v261);
        v90[4] = 0;
        v259 = v228;
        v260 = v111;
        sub_1B98526A4(&v259, &v263, &v262, &v261);
        v90[3] = 0;
        v259 = v229;
        v260 = v113;
        sub_1B98526A4(&v259, &v263, &v262, &v261);
        _os_log_impl(&dword_1B982F000, v116, v117, "%s: No service provided for handles %s. Considering all handles trusted", v91, 0x16u);
        sub_1B985281C(v92);
        sub_1B985281C(v93);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v116);
    (*(v234 + 8))(v237, v233);
    v90[0] = 0;
    v90[1] = type metadata accessor for BlockedHandle();
    v90[2] = sub_1B98F5F98();
    sub_1B9853574();
    return sub_1B98F5A38();
  }

  else
  {
    v196 = v242;
    v11 = v241;
    v173 = v242;
    v258 = v242 & 1;
    v12 = sub_1B98F1E6C();
    v174 = *(v234 + 16);
    v175 = v234 + 16;
    v174(v11, v12, v233);

    sub_1B98F54D8();
    v182 = 7;
    v176 = swift_allocObject();
    *(v176 + 16) = v232;

    v181 = 32;
    v13 = swift_allocObject();
    v14 = v176;
    v183 = v13;
    *(v13 + 16) = v198;
    *(v13 + 24) = v14;

    v194 = sub_1B98F5118();
    v195 = sub_1B98F5BD8();
    v179 = 17;
    v185 = swift_allocObject();
    v178 = 32;
    *(v185 + 16) = 32;
    v186 = swift_allocObject();
    v180 = 8;
    *(v186 + 16) = 8;
    v15 = swift_allocObject();
    v16 = v197;
    v177 = v15;
    *(v15 + 16) = v199;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v177;
    v187 = v17;
    *(v17 + 16) = v200;
    *(v17 + 24) = v18;
    v188 = swift_allocObject();
    *(v188 + 16) = v178;
    v189 = swift_allocObject();
    *(v189 + 16) = v180;
    v19 = swift_allocObject();
    v20 = v183;
    v184 = v19;
    *(v19 + 16) = v201;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v184;
    v191 = v21;
    *(v21 + 16) = v202;
    *(v21 + 24) = v22;
    v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v190 = sub_1B98F5F98();
    v192 = v23;

    v24 = v185;
    v25 = v192;
    *v192 = v203;
    v25[1] = v24;

    v26 = v186;
    v27 = v192;
    v192[2] = v204;
    v27[3] = v26;

    v28 = v187;
    v29 = v192;
    v192[4] = v205;
    v29[5] = v28;

    v30 = v188;
    v31 = v192;
    v192[6] = v206;
    v31[7] = v30;

    v32 = v189;
    v33 = v192;
    v192[8] = v207;
    v33[9] = v32;

    v34 = v191;
    v35 = v192;
    v192[10] = v208;
    v35[11] = v34;
    sub_1B9851B38();

    if (os_log_type_enabled(v194, v195))
    {
      v36 = v230;
      v165 = sub_1B98F5C28();
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v166 = sub_1B985263C(0);
      v167 = sub_1B985263C(2);
      v169 = &v247;
      v247 = v165;
      v170 = &v246;
      v246 = v166;
      v171 = &v245;
      v245 = v167;
      v168 = 2;
      sub_1B9852690(2, &v247);
      sub_1B9852690(v168, v169);
      v243 = v203;
      v244 = v185;
      sub_1B98526A4(&v243, v169, v170, v171);
      v172 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v243 = v204;
        v244 = v186;
        sub_1B98526A4(&v243, &v247, &v246, &v245);
        v162 = 0;
        v243 = v205;
        v244 = v187;
        sub_1B98526A4(&v243, &v247, &v246, &v245);
        v161 = 0;
        v243 = v206;
        v244 = v188;
        sub_1B98526A4(&v243, &v247, &v246, &v245);
        v160 = 0;
        v243 = v207;
        v244 = v189;
        sub_1B98526A4(&v243, &v247, &v246, &v245);
        v159 = 0;
        v243 = v208;
        v244 = v191;
        sub_1B98526A4(&v243, &v247, &v246, &v245);
        v158 = 0;
        _os_log_impl(&dword_1B982F000, v194, v195, "%s: Looking up server trust score for handles %s", v165, 0x16u);
        sub_1B985281C(v166);
        sub_1B985281C(v167);
        sub_1B98F5C08();

        v163 = v158;
      }
    }

    else
    {
      v37 = v230;

      v163 = v37;
    }

    v132 = v163;
    MEMORY[0x1E69E5920](v194);
    v133 = *(v234 + 8);
    v134 = v234 + 8;
    v133(v241, v233);
    v137 = v255;
    sub_1B98B4250(v197 + 128, v255);
    v135 = v256;
    v136 = v257;
    __swift_project_boxed_opaque_existential_1(v137, v256);
    v254 = v173 & 1;
    v38 = (*(v136 + 16))(v232, &v254, v135);
    v39 = v239;
    v138 = v38;
    v253 = v38;
    __swift_destroy_boxed_opaque_existential_1(v137);
    v40 = sub_1B98F1E6C();
    v174(v39, v40, v233);

    sub_1B98F54D8();
    v145 = 7;
    v139 = swift_allocObject();
    *(v139 + 16) = v138;

    v144 = 32;
    v41 = swift_allocObject();
    v42 = v139;
    v146 = v41;
    *(v41 + 16) = v209;
    *(v41 + 24) = v42;

    v156 = sub_1B98F5118();
    v157 = sub_1B98F5BD8();
    v142 = 17;
    v148 = swift_allocObject();
    v141 = 32;
    *(v148 + 16) = 32;
    v149 = swift_allocObject();
    v143 = 8;
    *(v149 + 16) = 8;
    v43 = swift_allocObject();
    v44 = v197;
    v140 = v43;
    *(v43 + 16) = v210;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v140;
    v150 = v45;
    *(v45 + 16) = v211;
    *(v45 + 24) = v46;
    v151 = swift_allocObject();
    *(v151 + 16) = v141;
    v152 = swift_allocObject();
    *(v152 + 16) = v143;
    v47 = swift_allocObject();
    v48 = v146;
    v147 = v47;
    *(v47 + 16) = v212;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v147;
    v154 = v49;
    *(v49 + 16) = v213;
    *(v49 + 24) = v50;
    v153 = sub_1B98F5F98();
    v155 = v51;

    v52 = v148;
    v53 = v155;
    *v155 = v214;
    v53[1] = v52;

    v54 = v149;
    v55 = v155;
    v155[2] = v215;
    v55[3] = v54;

    v56 = v150;
    v57 = v155;
    v155[4] = v216;
    v57[5] = v56;

    v58 = v151;
    v59 = v155;
    v155[6] = v217;
    v59[7] = v58;

    v60 = v152;
    v61 = v155;
    v155[8] = v218;
    v61[9] = v60;

    v62 = v154;
    v63 = v155;
    v155[10] = v219;
    v63[11] = v62;
    sub_1B9851B38();

    if (os_log_type_enabled(v156, v157))
    {
      v64 = v132;
      v124 = sub_1B98F5C28();
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v125 = sub_1B985263C(0);
      v126 = sub_1B985263C(2);
      v128 = &v252;
      v252 = v124;
      v129 = &v251;
      v251 = v125;
      v130 = &v250;
      v250 = v126;
      v127 = 2;
      sub_1B9852690(2, &v252);
      sub_1B9852690(v127, v128);
      v248 = v214;
      v249 = v148;
      sub_1B98526A4(&v248, v128, v129, v130);
      v131 = v64;
      if (v64)
      {

        __break(1u);
      }

      else
      {
        v248 = v215;
        v249 = v149;
        sub_1B98526A4(&v248, &v252, &v251, &v250);
        v122 = 0;
        v248 = v216;
        v249 = v150;
        sub_1B98526A4(&v248, &v252, &v251, &v250);
        v121 = 0;
        v248 = v217;
        v249 = v151;
        sub_1B98526A4(&v248, &v252, &v251, &v250);
        v120 = 0;
        v248 = v218;
        v249 = v152;
        sub_1B98526A4(&v248, &v252, &v251, &v250);
        v119 = 0;
        v248 = v219;
        v249 = v154;
        sub_1B98526A4(&v248, &v252, &v251, &v250);
        _os_log_impl(&dword_1B982F000, v156, v157, "%s: Found untrusted handles: %s", v124, 0x16u);
        sub_1B985281C(v125);
        sub_1B985281C(v126);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v156);
    v133(v239, v233);
    return v138;
  }
}

uint64_t sub_1B98A9028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

void *(*sub_1B98A9164())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4B70;
}

void *sub_1B98A9200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = &v77;
  v48 = a3;
  v47 = a2;
  v50 = a1;
  v49 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0u;
  v66 = 0u;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v41 = type metadata accessor for BlockedHandle();
  v43 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8, v41);
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = v18 - v45;
  MEMORY[0x1EEE9AC00](v18 - v45, v3);
  v44 = v18 - v45;
  MEMORY[0x1EEE9AC00](v18 - v45, v4);
  v46 = v18 - v45;
  v76 = v18 - v45;
  v51 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v50, v47);
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = v18 - v53;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v54 = v18 - v53;
  v75 = v7;
  v74 = *v8;
  v55 = v9 + 16;
  v73 = v9 + 16;
  v56 = &v72;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  v71 = Strong;
  v38 = Strong != 0;
  v37 = v38;
  sub_1B98B5850(&v71);
  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v33 = 0;
    v31 = sub_1B98F5F98();
    v34 = sub_1B9853574();
    v32 = v34;
    v70 = sub_1B98F54A8();
    sub_1B98F5F98();
    v69 = sub_1B98F5A38();
    sub_1B98F54D8();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B98F5498();
    v10 = *v39;
    v11 = v39[1];
    v68 = v78;
    v67 = v11;
    v66 = v10;
    for (i = v40; ; i = v20)
    {
      v29 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
      sub_1B98F5558();
      sub_1B98732E4(v52, v54);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
      if ((*(*(v30 - 8) + 48))(v54, 1) == 1)
      {
        break;
      }

      v15 = &v54[*(v30 + 48)];
      v23 = *v15;
      v22 = v23;
      v24 = v15[8];
      sub_1B9832680(v54, v46);
      v63 = v23;
      v64 = v24;
      if ((v24 & 1) == 0)
      {
        v21 = v22;
        v62 = v22;
        v61 = v22;
        v60 = *sub_1B98E70F4();
        sub_1B9873520();
        v16 = sub_1B98F60E8();
        if (v16)
        {
          sub_1B9833334(v46, v44);
          v58 = 1;
          v59 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
          sub_1B98F55C8();
          sub_1B9833334(v46, v42);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
          sub_1B98F5A88();
          sub_1B983A3AC(v44);
        }
      }

      v20 = v29;
      sub_1B983A3AC(v46);
    }

    v25 = v29;
    sub_1B987349C(&v66);
    v12 = v25;
    sub_1B98F54D8();
    v26 = v18;
    MEMORY[0x1EEE9AC00](v18, v13);
    v18[-2] = &v69;
    v14 = sub_1B98F5528();
    v27 = v12;
    v28 = v14;
    if (v12)
    {
      result = v26;
      __break(1u);
    }

    else
    {
      v18[2] = v28;
      v18[3] = 0;
      v65 = v28;
      v19 = v70;
      sub_1B98F54D8();
      sub_1B9868D78(&v69);
      sub_1B98B1790(&v70);
      return v19;
    }
  }

  else
  {
    sub_1B98B568C();
    v18[0] = 0;
    v18[1] = swift_allocError();
    swift_willThrow();
    return v18[0];
  }

  return result;
}

uint64_t sub_1B98A99B8(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a1;
  v10[1] = a2;
  v15 = a3;
  v24 = 0;
  v23 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v21 = v10 - v12;
  v24 = v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, v10 - v12);
  v6 = v14;
  v7 = v15;
  v8 = v21 + *(v16 + 48);
  *v8 = v13;
  v19 = 1;
  *(v8 + 8) = v6 & 1;
  v23 = v7;
  v18 = *v7;
  sub_1B98F54D8();
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8();

  v22 = v20 ^ v19;
  sub_1B98B5734(v21);
  return v22 & 1;
}

uint64_t (*sub_1B98A9B14())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4B94;
}

uint64_t sub_1B98A9BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v48 = a1;
  v47 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0;
  v37 = type metadata accessor for BlockedHandle();
  v38 = *(v37 - 8);
  v39 = v38;
  v41 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v37);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v3);
  v42 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v4);
  v44 = &v13 - v43;
  v72 = &v13 - v43;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v48, v45);
  v50 = &v13 - v49;
  v71 = v5;
  v70 = *v6;
  v51 = v7 + 16;
  v69 = v7 + 16;
  v52 = &v68;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v35 = v53;
    v26 = v53;
    v67 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v27 = sub_1B98F5F98();
    v31 = sub_1B9853574();
    v28 = v31;
    v66 = sub_1B98F54A8();
    v30 = sub_1B98AA2B8(v48);
    v29 = v30;
    v65 = v30;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v64 = v75;
    v63 = v74;
    v62 = v73;
    for (i = v36; ; i = v17)
    {
      v25 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v39 + 48))(v50, 1, v37) == 1)
      {
        break;
      }

      sub_1B9832680(v50, v44);
      sub_1B9833334(v44, v42);
      sub_1B98F55B8();
      v57 = v59;
      v58 = v60;
      v19 = (v60 & 1) != 0;
      v18 = v19;
      sub_1B983A3AC(v42);
      if (v18)
      {
        sub_1B9833334(v44, v40);
        v55 = 2;
        v56 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v17 = v25;
      sub_1B983A3AC(v44);
    }

    v22 = v25;
    sub_1B9871430(&v62);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v20 = &v13;
    MEMORY[0x1EEE9AC00](&v13, v9);
    v21 = &v13 - 4;
    *(&v13 - 2) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v11 = v22;
    v12 = sub_1B98F5528();
    v23 = v11;
    v24 = v12;
    if (v11)
    {

      __break(1u);
    }

    else
    {
      v15 = v24;
      v16 = 0;

      v61 = v15;
      v14 = v66;
      sub_1B98F54D8();

      sub_1B98B1790(&v66);

      return v14;
    }
  }

  else
  {
    sub_1B98B568C();
    v33 = 0;
    v34 = swift_allocError();
    swift_willThrow();
    return v33;
  }

  return result;
}

uint64_t sub_1B98AA2B8(uint64_t a1)
{
  v130 = a1;
  v141 = sub_1B98B4BC0;
  v144 = sub_1B98B4BB8;
  v145 = sub_1B98B4C40;
  v150 = sub_1B98B4BC8;
  v154 = sub_1B98B4C68;
  v156 = sub_1B98B4C30;
  v158 = sub_1B98B4C38;
  v160 = sub_1B98B4C4C;
  v162 = sub_1B98B4C58;
  v164 = sub_1B98B4C60;
  v167 = sub_1B98B4C74;
  v111 = sub_1B98B4C88;
  v112 = sub_1B98B4C80;
  v113 = sub_1B98B4D08;
  v114 = sub_1B98B4C90;
  v115 = sub_1B98B4D30;
  v116 = sub_1B98B4CF8;
  v117 = sub_1B98B4D00;
  v118 = sub_1B98B4D14;
  v119 = sub_1B98B4D20;
  v120 = sub_1B98B4D28;
  v121 = sub_1B98B4D3C;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v183 = 0;
  v122 = 0;
  v123 = 0;
  v137 = sub_1B98F5138();
  v135 = *(v137 - 8);
  v136 = v137 - 8;
  v125 = v135[8];
  v124 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0, v1);
  v126 = v62 - v124;
  v127 = v124;
  MEMORY[0x1EEE9AC00](v2, v62 - v124);
  v3 = v62 - v127;
  v128 = v62 - v127;
  v187 = v130;
  v186 = v4;
  v131 = type metadata accessor for BlockedHandle();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v133 = sub_1B9853574();
  v5 = sub_1B98F54D8();
  v134 = &v185;
  v185 = v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v140 = sub_1B98F5AE8();
  v184 = v140;
  v6 = sub_1B98F1E6C();
  v138 = v135[2];
  v139 = v135 + 2;
  v138(v3, v6, v137);

  sub_1B98F54D8();
  v152 = 7;
  v142 = swift_allocObject();
  *(v142 + 16) = v140;

  v151 = 32;
  v7 = swift_allocObject();
  v8 = v142;
  v153 = v7;
  *(v7 + 16) = v141;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v143;
  v171 = v9;
  v172 = sub_1B98F5BD8();
  v148 = 17;
  v157 = swift_allocObject();
  v147 = 32;
  *(v157 + 16) = 32;
  v159 = swift_allocObject();
  v149 = 8;
  *(v159 + 16) = 8;
  v11 = swift_allocObject();
  v146 = v11;
  *(v11 + 16) = v144;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v146;
  v161 = v12;
  *(v12 + 16) = v145;
  *(v12 + 24) = v13;
  v163 = swift_allocObject();
  *(v163 + 16) = v147;
  v165 = swift_allocObject();
  *(v165 + 16) = v149;
  v14 = swift_allocObject();
  v15 = v153;
  v155 = v14;
  *(v14 + 16) = v150;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v155;
  v168 = v16;
  *(v16 + 16) = v154;
  *(v16 + 24) = v17;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v166 = sub_1B98F5F98();
  v169 = v18;

  v19 = v157;
  v20 = v169;
  *v169 = v156;
  v20[1] = v19;

  v21 = v159;
  v22 = v169;
  v169[2] = v158;
  v22[3] = v21;

  v23 = v161;
  v24 = v169;
  v169[4] = v160;
  v24[5] = v23;

  v25 = v163;
  v26 = v169;
  v169[6] = v162;
  v26[7] = v25;

  v27 = v165;
  v28 = v169;
  v169[8] = v164;
  v28[9] = v27;

  v29 = v168;
  v30 = v169;
  v169[10] = v167;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v171, v172))
  {
    v31 = v122;
    v103 = sub_1B98F5C28();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v104 = sub_1B985263C(0);
    v105 = sub_1B985263C(2);
    v107 = &v177;
    v177 = v103;
    v108 = &v176;
    v176 = v104;
    v109 = &v175;
    v175 = v105;
    v106 = 2;
    sub_1B9852690(2, &v177);
    sub_1B9852690(v106, v107);
    v173 = v156;
    v174 = v157;
    sub_1B98526A4(&v173, v107, v108, v109);
    v110 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v173 = v158;
      v174 = v159;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v100 = 0;
      v173 = v160;
      v174 = v161;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v99 = 0;
      v173 = v162;
      v174 = v163;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v98 = 0;
      v173 = v164;
      v174 = v165;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v97 = 0;
      v173 = v167;
      v174 = v168;
      sub_1B98526A4(&v173, &v177, &v176, &v175);
      v96 = 0;
      _os_log_impl(&dword_1B982F000, v171, v172, "%s: Looking up call directory blocked entries for handles %s", v103, 0x16u);
      sub_1B985281C(v104);
      sub_1B985281C(v105);
      sub_1B98F5C08();

      v101 = v96;
    }
  }

  else
  {
    v32 = v122;

    v101 = v32;
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v171);
  v72 = v135[1];
  v73 = v135 + 1;
  v72(v128, v137);
  v75 = *(v143 + 104);
  v74 = *(v143 + 112);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v74 + 16))(v130, ObjectType);
  v35 = v126;
  v76 = v34;
  v183 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v138(v35, v36, v137);

  sub_1B98F54D8();
  v83 = 7;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v82 = 32;
  v37 = swift_allocObject();
  v38 = v77;
  v84 = v37;
  *(v37 + 16) = v111;
  *(v37 + 24) = v38;

  v94 = sub_1B98F5118();
  v95 = sub_1B98F5BD8();
  v80 = 17;
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v143;
  v78 = v39;
  *(v39 + 16) = v112;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v78;
  v88 = v41;
  *(v41 + 16) = v113;
  *(v41 + 24) = v42;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v43 = swift_allocObject();
  v44 = v84;
  v85 = v43;
  *(v43 + 16) = v114;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v85;
  v92 = v45;
  *(v45 + 16) = v115;
  *(v45 + 24) = v46;
  v91 = sub_1B98F5F98();
  v93 = v47;

  v48 = v86;
  v49 = v93;
  *v93 = v116;
  v49[1] = v48;

  v50 = v87;
  v51 = v93;
  v93[2] = v117;
  v51[3] = v50;

  v52 = v88;
  v53 = v93;
  v93[4] = v118;
  v53[5] = v52;

  v54 = v89;
  v55 = v93;
  v93[6] = v119;
  v55[7] = v54;

  v56 = v90;
  v57 = v93;
  v93[8] = v120;
  v57[9] = v56;

  v58 = v92;
  v59 = v93;
  v93[10] = v121;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v94, v95))
  {
    v60 = v71;
    v63 = sub_1B98F5C28();
    v62[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v64 = sub_1B985263C(0);
    v65 = sub_1B985263C(2);
    v67 = &v182;
    v182 = v63;
    v68 = &v181;
    v181 = v64;
    v69 = &v180;
    v180 = v65;
    v66 = 2;
    sub_1B9852690(2, &v182);
    sub_1B9852690(v66, v67);
    v178 = v116;
    v179 = v86;
    sub_1B98526A4(&v178, v67, v68, v69);
    v70 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v178 = v117;
      v179 = v87;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[4] = 0;
      v178 = v118;
      v179 = v88;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[3] = 0;
      v178 = v119;
      v179 = v89;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[2] = 0;
      v178 = v120;
      v179 = v90;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      v62[1] = 0;
      v178 = v121;
      v179 = v92;
      sub_1B98526A4(&v178, &v182, &v181, &v180);
      _os_log_impl(&dword_1B982F000, v94, v95, "%s: Call directory blocked entries found %s", v63, 0x16u);
      sub_1B985281C(v64);
      sub_1B985281C(v65);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  v72(v126, v137);

  return v76;
}

uint64_t sub_1B98AB854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

uint64_t (*sub_1B98AB990())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4D48;
}

uint64_t sub_1B98ABA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v48 = a1;
  v47 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0;
  v37 = type metadata accessor for BlockedHandle();
  v38 = *(v37 - 8);
  v39 = v38;
  v41 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8, v37);
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v3);
  v42 = &v13 - v43;
  MEMORY[0x1EEE9AC00](&v13 - v43, v4);
  v44 = &v13 - v43;
  v72 = &v13 - v43;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v48, v45);
  v50 = &v13 - v49;
  v71 = v5;
  v70 = *v6;
  v51 = v7 + 16;
  v69 = v7 + 16;
  v52 = &v68;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v53 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v35 = v53;
    v26 = v53;
    v67 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v27 = sub_1B98F5F98();
    v31 = sub_1B9853574();
    v28 = v31;
    v66 = sub_1B98F54A8();
    v30 = sub_1B98AC134(v48);
    v29 = v30;
    v65 = v30;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v64 = v75;
    v63 = v74;
    v62 = v73;
    for (i = v36; ; i = v17)
    {
      v25 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v39 + 48))(v50, 1, v37) == 1)
      {
        break;
      }

      sub_1B9832680(v50, v44);
      sub_1B9833334(v44, v42);
      sub_1B98F55B8();
      v57 = v59;
      v58 = v60;
      v19 = (v60 & 1) != 0;
      v18 = v19;
      sub_1B983A3AC(v42);
      if (v18)
      {
        sub_1B9833334(v44, v40);
        v55 = 6;
        v56 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v17 = v25;
      sub_1B983A3AC(v44);
    }

    v22 = v25;
    sub_1B9871430(&v62);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v20 = &v13;
    MEMORY[0x1EEE9AC00](&v13, v9);
    v21 = &v13 - 4;
    *(&v13 - 2) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v11 = v22;
    v12 = sub_1B98F5528();
    v23 = v11;
    v24 = v12;
    if (v11)
    {

      __break(1u);
    }

    else
    {
      v15 = v24;
      v16 = 0;

      v61 = v15;
      v14 = v66;
      sub_1B98F54D8();

      sub_1B98B1790(&v66);

      return v14;
    }
  }

  else
  {
    sub_1B98B568C();
    v33 = 0;
    v34 = swift_allocError();
    swift_willThrow();
    return v33;
  }

  return result;
}

uint64_t sub_1B98AC134(uint64_t a1)
{
  v133 = a1;
  v134 = sub_1B98B4D74;
  v137 = sub_1B98B4D6C;
  v138 = sub_1B98B4DF4;
  v143 = sub_1B98B4D7C;
  v147 = sub_1B98B4E1C;
  v149 = sub_1B98B4DE4;
  v151 = sub_1B98B4DEC;
  v153 = sub_1B98B4E00;
  v155 = sub_1B98B4E0C;
  v157 = sub_1B98B4E14;
  v160 = sub_1B98B4E28;
  v111 = sub_1B98B4E3C;
  v112 = sub_1B98B4E34;
  v113 = sub_1B98B4EBC;
  v114 = sub_1B98B4E44;
  v115 = sub_1B98B4EE4;
  v116 = sub_1B98B4EAC;
  v117 = sub_1B98B4EB4;
  v118 = sub_1B98B4EC8;
  v119 = sub_1B98B4ED4;
  v120 = sub_1B98B4EDC;
  v121 = sub_1B98B4EF0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v122 = 0;
  v130 = sub_1B98F5138();
  v128 = *(v130 - 8);
  v129 = v130 - 8;
  v124 = v128[8];
  v123 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v133, v1);
  v125 = v62 - v123;
  v126 = v123;
  v3 = MEMORY[0x1EEE9AC00](v2, v62 - v123);
  v4 = v62 - v126;
  v127 = v62 - v126;
  v178 = v3;
  v177 = v5;
  v6 = sub_1B98F1E6C();
  v131 = v128[2];
  v132 = v128 + 2;
  v131(v4, v6, v130);

  sub_1B98F54D8();
  v145 = 7;
  v135 = swift_allocObject();
  *(v135 + 16) = v133;

  v144 = 32;
  v7 = swift_allocObject();
  v8 = v135;
  v146 = v7;
  *(v7 + 16) = v134;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v136;
  v164 = v9;
  v165 = sub_1B98F5BD8();
  v141 = 17;
  v150 = swift_allocObject();
  v140 = 32;
  *(v150 + 16) = 32;
  v152 = swift_allocObject();
  v142 = 8;
  *(v152 + 16) = 8;
  v11 = swift_allocObject();
  v139 = v11;
  *(v11 + 16) = v137;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v139;
  v154 = v12;
  *(v12 + 16) = v138;
  *(v12 + 24) = v13;
  v156 = swift_allocObject();
  *(v156 + 16) = v140;
  v158 = swift_allocObject();
  *(v158 + 16) = v142;
  v14 = swift_allocObject();
  v15 = v146;
  v148 = v14;
  *(v14 + 16) = v143;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v148;
  v161 = v16;
  *(v16 + 16) = v147;
  *(v16 + 24) = v17;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v159 = sub_1B98F5F98();
  v162 = v18;

  v19 = v150;
  v20 = v162;
  *v162 = v149;
  v20[1] = v19;

  v21 = v152;
  v22 = v162;
  v162[2] = v151;
  v22[3] = v21;

  v23 = v154;
  v24 = v162;
  v162[4] = v153;
  v24[5] = v23;

  v25 = v156;
  v26 = v162;
  v162[6] = v155;
  v26[7] = v25;

  v27 = v158;
  v28 = v162;
  v162[8] = v157;
  v28[9] = v27;

  v29 = v161;
  v30 = v162;
  v162[10] = v160;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v164, v165))
  {
    v31 = v122;
    v103 = sub_1B98F5C28();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v104 = sub_1B985263C(0);
    v105 = sub_1B985263C(2);
    v107 = &v170;
    v170 = v103;
    v108 = &v169;
    v169 = v104;
    v109 = &v168;
    v168 = v105;
    v106 = 2;
    sub_1B9852690(2, &v170);
    sub_1B9852690(v106, v107);
    v166 = v149;
    v167 = v150;
    sub_1B98526A4(&v166, v107, v108, v109);
    v110 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v166 = v151;
      v167 = v152;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v100 = 0;
      v166 = v153;
      v167 = v154;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v99 = 0;
      v166 = v155;
      v167 = v156;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v98 = 0;
      v166 = v157;
      v167 = v158;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v97 = 0;
      v166 = v160;
      v167 = v161;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v96 = 0;
      _os_log_impl(&dword_1B982F000, v164, v165, "%s: Looking up call directory identification entries for handles %s", v103, 0x16u);
      sub_1B985281C(v104);
      sub_1B985281C(v105);
      sub_1B98F5C08();

      v101 = v96;
    }
  }

  else
  {
    v32 = v122;

    v101 = v32;
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v164);
  v72 = v128[1];
  v73 = v128 + 1;
  v72(v127, v130);
  v75 = *(v136 + 104);
  v74 = *(v136 + 112);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v74 + 8))(v133, ObjectType);
  v35 = v125;
  v76 = v34;
  v176 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v131(v35, v36, v130);

  sub_1B98F54D8();
  v83 = 7;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v82 = 32;
  v37 = swift_allocObject();
  v38 = v77;
  v84 = v37;
  *(v37 + 16) = v111;
  *(v37 + 24) = v38;

  v94 = sub_1B98F5118();
  v95 = sub_1B98F5BD8();
  v80 = 17;
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v136;
  v78 = v39;
  *(v39 + 16) = v112;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v78;
  v88 = v41;
  *(v41 + 16) = v113;
  *(v41 + 24) = v42;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v43 = swift_allocObject();
  v44 = v84;
  v85 = v43;
  *(v43 + 16) = v114;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v85;
  v92 = v45;
  *(v45 + 16) = v115;
  *(v45 + 24) = v46;
  v91 = sub_1B98F5F98();
  v93 = v47;

  v48 = v86;
  v49 = v93;
  *v93 = v116;
  v49[1] = v48;

  v50 = v87;
  v51 = v93;
  v93[2] = v117;
  v51[3] = v50;

  v52 = v88;
  v53 = v93;
  v93[4] = v118;
  v53[5] = v52;

  v54 = v89;
  v55 = v93;
  v93[6] = v119;
  v55[7] = v54;

  v56 = v90;
  v57 = v93;
  v93[8] = v120;
  v57[9] = v56;

  v58 = v92;
  v59 = v93;
  v93[10] = v121;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v94, v95))
  {
    v60 = v71;
    v63 = sub_1B98F5C28();
    v62[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v64 = sub_1B985263C(0);
    v65 = sub_1B985263C(2);
    v67 = &v175;
    v175 = v63;
    v68 = &v174;
    v174 = v64;
    v69 = &v173;
    v173 = v65;
    v66 = 2;
    sub_1B9852690(2, &v175);
    sub_1B9852690(v66, v67);
    v171 = v116;
    v172 = v86;
    sub_1B98526A4(&v171, v67, v68, v69);
    v70 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v171 = v117;
      v172 = v87;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[3] = 0;
      v171 = v118;
      v172 = v88;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[2] = 0;
      v171 = v119;
      v172 = v89;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[1] = 0;
      v171 = v120;
      v172 = v90;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v62[0] = 0;
      v171 = v121;
      v172 = v92;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      _os_log_impl(&dword_1B982F000, v94, v95, "%s: Call directory identification entries found %s", v63, 0x16u);
      sub_1B985281C(v64);
      sub_1B985281C(v65);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  v72(v125, v130);
  return v76;
}

uint64_t sub_1B98AD5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

void *sub_1B98AD70C()
{
  swift_allocObject();

  swift_weakInit();

  return &unk_1B98FB6D8;
}

uint64_t sub_1B98AD7A8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 216) = a3;
  *(v3 + 208) = a1;
  *(v3 + 152) = v3;
  *(v3 + 160) = 0;
  *(v3 + 304) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  memset((v3 + 56), 0, 0x28uLL);
  *(v3 + 200) = 0;
  v4 = type metadata accessor for BlockedHandle();
  *(v3 + 224) = v4;
  v8 = *(v4 - 8);
  *(v3 + 232) = v8;
  v9 = *(v8 + 64);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 160) = a1;
  *(v3 + 304) = *a2;
  *(v3 + 168) = a3 + 16;
  v6 = *(v3 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B98AD974, 0);
}

uint64_t sub_1B98AD974()
{
  v12 = v0[27];
  v0[19] = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[34] = Strong;
  swift_endAccess();
  if (Strong)
  {
    v10 = v11[28];
    v11[22] = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    sub_1B98F5F98();
    v11[35] = sub_1B9853574();
    v11[23] = sub_1B98F54A8();
    v1 = swift_task_alloc();
    v11[36] = v1;
    *v1 = v11[19];
    v1[1] = sub_1B98ADBDC;
    v2 = v11[26];

    return sub_1B98AE234(v2);
  }

  else
  {
    v6 = v11[33];
    v7 = v11[32];
    v8 = v11[31];
    v9 = v11[30];
    sub_1B98B568C();
    swift_allocError();
    swift_willThrow();

    v4 = *(v11[19] + 8);
    v5 = v11[19];

    return v4();
  }
}

uint64_t sub_1B98ADBDC(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 288);
  *(v6 + 152) = *v1;
  *(v6 + 296) = a1;

  v4 = *(v6 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1B98ADCF8, 0);
}

uint64_t sub_1B98ADCF8()
{
  v1 = v0[37];
  v27 = v0[35];
  v26 = v0[28];
  v0[19] = v0;
  v0[24] = v1;
  sub_1B98F54D8();
  sub_1B98F5A58();
  memcpy(v0 + 7, v0 + 2, 0x28uLL);
  while (1)
  {
    v23 = *(v25 + 264);
    v24 = *(v25 + 224);
    v22 = *(v25 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v22 + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v15 = *(v25 + 280);
    v13 = *(v25 + 256);
    v16 = *(v25 + 248);
    v14 = *(v25 + 224);
    sub_1B9832680(*(v25 + 264), v13);
    sub_1B9833334(v13, v16);
    v2 = *(v25 + 184);
    sub_1B98F55B8();
    v28 = *(v25 + 120);
    if (*(v25 + 128))
    {
      sub_1B983A3AC(*(v25 + 248));
      sub_1B9833334(*(v25 + 256), *(v25 + 240));
      *(v25 + 136) = 6;
      *(v25 + 144) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
    }

    else
    {
      sub_1B983A3AC(*(v25 + 248));
    }

    sub_1B983A3AC(*(v25 + 256));
  }

  v17 = *(v25 + 296);
  v20 = *(v25 + 280);
  v19 = *(v25 + 224);
  v18 = *(v25 + 208);
  sub_1B9871430((v25 + 56));
  sub_1B98F54D8();
  sub_1B98F54D8();
  *(swift_task_alloc() + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v21 = sub_1B98F5528();
  v6 = *(v25 + 296);
  v8 = *(v25 + 264);
  v9 = *(v25 + 256);
  v10 = *(v25 + 248);
  v11 = *(v25 + 240);
  v7 = *(v25 + 272);

  *(v25 + 200) = v21;
  v12 = *(v25 + 184);
  sub_1B98F54D8();

  sub_1B98B1790((v25 + 184));

  v3 = *(*(v25 + 152) + 8);
  v4 = *(v25 + 152);

  return v3(v12, v21);
}

uint64_t sub_1B98AE234(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[6] = 0;
  v2[3] = a1;
  v2[4] = v1;
  v3 = v2[2];
  return MEMORY[0x1EEE6DFA0](sub_1B98AE288, 0);
}

uint64_t sub_1B98AE288()
{
  v6 = v0[8];
  v7 = v0[7];
  v0[2] = v0;
  v9 = sub_1B98F55E8();
  v10 = v1;
  v0[9] = v1;

  sub_1B98F54D8();
  v11 = swift_task_alloc();
  v0[10] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  v2 = *(MEMORY[0x1E69E88D0] + 4);
  v3 = swift_task_alloc();
  *(v8 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  *v3 = *(v8 + 16);
  v3[1] = sub_1B98AE3F0;

  return MEMORY[0x1EEE6DDE0](v8 + 40, 0, 0, v9, v10, sub_1B98B50F8, v11, v4);
}

uint64_t sub_1B98AE3F0()
{
  v8 = *v0;
  v1 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v7 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 56);
  *(v8 + 16) = *v0;

  v2 = *(v8 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B98AE588, 0);
}

uint64_t sub_1B98AE588()
{
  v0[2] = v0;
  v0[6] = v0[5];
  v1 = *(v0[2] + 8);
  v2 = v0[2];
  return v1();
}

uint64_t sub_1B98AE5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v12 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v11, v3);
  v19 = &v10 - v12;
  v22 = &v10 - v12;
  v13 = *v5;
  v14 = *(v5 + 8);
  sub_1B9833334(v4, &v10 - v12);
  v6 = v14;
  v7 = v16;
  v8 = v19 + *(v15 + 48);
  *v8 = v13;
  v18 = 1;
  *(v8 + 8) = v6 & 1;
  v21 = v7;
  v17 = type metadata accessor for BlockedHandle();
  sub_1B9853574();
  v20 = sub_1B98F5AC8() ^ v18;
  sub_1B98B5734(v19);
  return v20 & 1;
}

uint64_t sub_1B98AE718(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AE780@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AE7BC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v5;
  }

  return result;
}

uint64_t sub_1B98AE83C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v7 = a1;
  a3(&v6, &v7);
  if (v3)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B98AE8B8(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AE918@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59B0(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AE96C(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AE9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59E8(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AEA20(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AEA80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AEAB4(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AEB14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AEB48(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AEBA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AEBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a3();
  v4 = *(v7 + 8);

  return v4(v6, v3);
}

uint64_t sub_1B98AECF0(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v8 = v4;
  *(v4 + 24) = a1;
  *(v4 + 16) = v4;
  v11 = *a2;
  v10 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v8 + 32) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1B98AEE14;

  return v10(v11, a3);
}

uint64_t sub_1B98AEE14(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 32);
  *(v5 + 16) = *v3;
  v10 = v5 + 16;
  v11 = v5 + 16;
  v12 = a1;

  if (v2)
  {
    v8 = *(*v11 + 8);
  }

  else
  {
    v7 = *(v10 + 8);
    *v7 = v12;
    v7[1] = a2;
    v8 = *(*v11 + 8);
  }

  return v8();
}

uint64_t sub_1B98AEFCC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 32) = v3;
  *(v3 + 40) = a1;
  v9 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v7 + 48) = v5;
  *v5 = *(v7 + 32);
  v5[1] = sub_1B98AF0F0;

  return v9(v7 + 16, v3 + 40, a2);
}

uint64_t sub_1B98AF0F0()
{
  v9 = *v1;
  v2 = *(*v1 + 48);
  v9[4] = *v1;
  v10 = v9 + 4;

  if (v0)
  {
    v8 = *(*v10 + 8);

    return v8(v3);
  }

  else
  {
    v4 = v9[2];
    v5 = v9[3];
    v6 = *(*v10 + 8);

    return v6(v4, v5);
  }
}

uint64_t sub_1B98AF298(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF2F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59B0(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AF34C(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF3AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59E8(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AF400()
{
  v8 = 0;
  sub_1B989FF34(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = (*(v2 + 16))(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4;
}

uint64_t sub_1B98AF488(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF4E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF51C(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF57C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF5B0(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF610@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF644(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF6A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF6D8(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF76C(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98AF7CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v126 = a1;
  v140 = a2;
  v136 = a3;
  v137 = sub_1B98B5504;
  v139 = sub_1B98B54FC;
  v141 = sub_1B98B5584;
  v146 = sub_1B98B550C;
  v150 = sub_1B98B55AC;
  v152 = sub_1B98B5574;
  v154 = sub_1B98B557C;
  v156 = sub_1B98B5590;
  v158 = sub_1B98B559C;
  v160 = sub_1B98B55A4;
  v163 = sub_1B98B55B8;
  v114 = sub_1B98B55CC;
  v115 = sub_1B98B55C4;
  v116 = sub_1B98B564C;
  v117 = sub_1B98B55D4;
  v118 = sub_1B98B5674;
  v119 = sub_1B98B563C;
  v120 = sub_1B98B5644;
  v121 = sub_1B98B5658;
  v122 = sub_1B98B5664;
  v123 = sub_1B98B566C;
  v124 = sub_1B98B5680;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v125 = 0;
  v133 = sub_1B98F5138();
  v131 = *(v133 - 8);
  v132 = v133 - 8;
  v127 = (v131[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v126, v140);
  v128 = v65 - v127;
  v129 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v65 - v129;
  v130 = v65 - v129;
  v183 = v6;
  v182 = v8;
  v181 = v9;
  v10 = sub_1B98F1E6C();
  v134 = v131[2];
  v135 = v131 + 2;
  v134(v7, v10, v133);

  sub_1B98F54D8();
  v148 = 7;
  v138 = swift_allocObject();
  *(v138 + 16) = v136;

  v147 = 32;
  v11 = swift_allocObject();
  v12 = v138;
  v149 = v11;
  *(v11 + 16) = v137;
  *(v11 + 24) = v12;

  v167 = sub_1B98F5118();
  v168 = sub_1B98F5BD8();
  v144 = 17;
  v153 = swift_allocObject();
  v143 = 32;
  *(v153 + 16) = 32;
  v155 = swift_allocObject();
  v145 = 8;
  *(v155 + 16) = 8;
  v13 = swift_allocObject();
  v14 = v140;
  v142 = v13;
  *(v13 + 16) = v139;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v142;
  v157 = v15;
  *(v15 + 16) = v141;
  *(v15 + 24) = v16;
  v159 = swift_allocObject();
  *(v159 + 16) = v143;
  v161 = swift_allocObject();
  *(v161 + 16) = v145;
  v17 = swift_allocObject();
  v18 = v149;
  v151 = v17;
  *(v17 + 16) = v146;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v151;
  v164 = v19;
  *(v19 + 16) = v150;
  *(v19 + 24) = v20;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v162 = sub_1B98F5F98();
  v165 = v21;

  v22 = v153;
  v23 = v165;
  *v165 = v152;
  v23[1] = v22;

  v24 = v155;
  v25 = v165;
  v165[2] = v154;
  v25[3] = v24;

  v26 = v157;
  v27 = v165;
  v165[4] = v156;
  v27[5] = v26;

  v28 = v159;
  v29 = v165;
  v165[6] = v158;
  v29[7] = v28;

  v30 = v161;
  v31 = v165;
  v165[8] = v160;
  v31[9] = v30;

  v32 = v164;
  v33 = v165;
  v165[10] = v163;
  v33[11] = v32;
  sub_1B9851B38();

  if (os_log_type_enabled(v167, v168))
  {
    v34 = v125;
    v106 = sub_1B98F5C28();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v107 = sub_1B985263C(0);
    v108 = sub_1B985263C(2);
    v110 = &v173;
    v173 = v106;
    v111 = &v172;
    v172 = v107;
    v112 = &v171;
    v171 = v108;
    v109 = 2;
    sub_1B9852690(2, &v173);
    sub_1B9852690(v109, v110);
    v169 = v152;
    v170 = v153;
    sub_1B98526A4(&v169, v110, v111, v112);
    v113 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v169 = v154;
      v170 = v155;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v103 = 0;
      v169 = v156;
      v170 = v157;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v102 = 0;
      v169 = v158;
      v170 = v159;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v101 = 0;
      v169 = v160;
      v170 = v161;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v100 = 0;
      v169 = v163;
      v170 = v164;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v99 = 0;
      _os_log_impl(&dword_1B982F000, v167, v168, "%s: Looking up call directory identification entries for handles %s", v106, 0x16u);
      sub_1B985281C(v107);
      sub_1B985281C(v108);
      sub_1B98F5C08();

      v104 = v99;
    }
  }

  else
  {
    v35 = v125;

    v104 = v35;
  }

  v74 = v104;
  MEMORY[0x1E69E5920](v167);
  v75 = v131[1];
  v76 = v131 + 1;
  v75(v130, v133);
  v78 = *(v140 + 104);
  v77 = *(v140 + 112);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v37 = (*(v77 + 8))(v136, ObjectType);
  v38 = v128;
  v79 = v37;
  v180 = v37;
  swift_unknownObjectRelease();
  v39 = sub_1B98F1E6C();
  v134(v38, v39, v133);

  sub_1B98F54D8();
  v86 = 7;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;

  v85 = 32;
  v40 = swift_allocObject();
  v41 = v80;
  v87 = v40;
  *(v40 + 16) = v114;
  *(v40 + 24) = v41;

  v97 = sub_1B98F5118();
  v98 = sub_1B98F5BD8();
  v83 = 17;
  v89 = swift_allocObject();
  v82 = 32;
  *(v89 + 16) = 32;
  v90 = swift_allocObject();
  v84 = 8;
  *(v90 + 16) = 8;
  v42 = swift_allocObject();
  v43 = v140;
  v81 = v42;
  *(v42 + 16) = v115;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v81;
  v91 = v44;
  *(v44 + 16) = v116;
  *(v44 + 24) = v45;
  v92 = swift_allocObject();
  *(v92 + 16) = v82;
  v93 = swift_allocObject();
  *(v93 + 16) = v84;
  v46 = swift_allocObject();
  v47 = v87;
  v88 = v46;
  *(v46 + 16) = v117;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v88;
  v95 = v48;
  *(v48 + 16) = v118;
  *(v48 + 24) = v49;
  v94 = sub_1B98F5F98();
  v96 = v50;

  v51 = v89;
  v52 = v96;
  *v96 = v119;
  v52[1] = v51;

  v53 = v90;
  v54 = v96;
  v96[2] = v120;
  v54[3] = v53;

  v55 = v91;
  v56 = v96;
  v96[4] = v121;
  v56[5] = v55;

  v57 = v92;
  v58 = v96;
  v96[6] = v122;
  v58[7] = v57;

  v59 = v93;
  v60 = v96;
  v96[8] = v123;
  v60[9] = v59;

  v61 = v95;
  v62 = v96;
  v96[10] = v124;
  v62[11] = v61;
  sub_1B9851B38();

  if (os_log_type_enabled(v97, v98))
  {
    v63 = v74;
    v66 = sub_1B98F5C28();
    v65[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v67 = sub_1B985263C(0);
    v68 = sub_1B985263C(2);
    v70 = &v178;
    v178 = v66;
    v71 = &v177;
    v177 = v67;
    v72 = &v176;
    v176 = v68;
    v69 = 2;
    sub_1B9852690(2, &v178);
    sub_1B9852690(v69, v70);
    v174 = v119;
    v175 = v89;
    sub_1B98526A4(&v174, v70, v71, v72);
    v73 = v63;
    if (v63)
    {

      __break(1u);
    }

    else
    {
      v174 = v120;
      v175 = v90;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v65[5] = 0;
      v174 = v121;
      v175 = v91;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v65[4] = 0;
      v174 = v122;
      v175 = v92;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v65[3] = 0;
      v174 = v123;
      v175 = v93;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v65[2] = 0;
      v174 = v124;
      v175 = v95;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      _os_log_impl(&dword_1B982F000, v97, v98, "%s: Call directory identification entries found %s", v66, 0x16u);
      sub_1B985281C(v67);
      sub_1B985281C(v68);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v97);
  v75(v128, v133);
  sub_1B98F54D8();
  v65[1] = &v179;
  v179 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A40, &qword_1B98FB848);
  sub_1B98F5968();
}

uint64_t sub_1B98B0D20(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B0D80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0DB4(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B0E14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0E48(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B0EA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0EDC(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B0F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0F70(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B0FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B1004(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B1064@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B1098(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B10F8(uint64_t a1)
{
  sub_1B98F54D8();
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v4 = sub_1B98F1B88(&v5, v1);
  sub_1B98B58A8(&v5);
  return v4;
}

uint64_t sub_1B98B1168(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B11C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B11FC(uint64_t *a1)
{
  v2 = *a1;

  return sub_1B98F5678();
}

uint64_t sub_1B98B125C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B1290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_1B98F5F38();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1B98B1374()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98B13DC()
{
  v2 = qword_1EBBD59C0;
  if (!qword_1EBBD59C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD59C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98B1614()
{
  v2 = qword_1EBBD59E0;
  if (!qword_1EBBD59E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD59D0, &qword_1B98FB5D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD59E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98B169C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98B16D8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t *sub_1B98B1790(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98B17BC(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

char *sub_1B98B17E8(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F8, &qword_1B98FB600);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B8, &qword_1B98FB5B8);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 32))(a2, a1);
    v5 = type metadata accessor for BlockedHandle();
    *&a2[v5[5]] = *&a1[v5[5]];
    *&a2[v5[6]] = *&a1[v5[6]];
    *&a2[v5[7]] = *&a1[v5[7]];
    *&a2[v5[8]] = *&a1[v5[8]];
    *&a2[*(v8 + 48)] = *&a1[*(v8 + 48)];
    (*(v9 + 56))();
  }

  return a2;
}

uint64_t *sub_1B98B198C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98734DC();
  return a1;
}

uint64_t sub_1B98B19DC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
  v1 = sub_1B98B1A44();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98B1A44()
{
  v2 = qword_1EBBD5A00;
  if (!qword_1EBBD5A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5420, &qword_1B98FA720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B1B58()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B1C20()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B1CE8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B1DA0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B1E90;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B1E90(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B1FC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B20C0;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B20C0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98B21E8(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B22D8;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B22D8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B2410(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B2508;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B2508()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98B2630(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B2720;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B2720(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B2858(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B2950;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B2950()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98B2A78(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B2B68;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B2B68(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B2CA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B2D98;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B2D98()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98B2EC0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B2FB0;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B2FB0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B30E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B31E0;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B31E0()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98B3308(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B3400;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B3400()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98B3528(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B3618;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B3618(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B3750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B3848;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B3848()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_1B98B3970(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B3A60;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B3A60(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B3B98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B3C90;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B3C90()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

unint64_t sub_1B98B3DB8()
{
  v2 = qword_1EBBD5A18;
  if (!qword_1EBBD5A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5A10, &qword_1B98FB638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A18);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98B3E40(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98B3E7C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t *sub_1B98B3F34(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_1B98B3F70()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
  v1 = sub_1B98B1A44();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4028(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B4118;

  return sub_1B98AEFCC(a1, a2, v8);
}

uint64_t sub_1B98B4118(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B4250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t *sub_1B98B42F8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

unint64_t sub_1B98B4360()
{
  v2 = qword_1EBBD5A28;
  if (!qword_1EBBD5A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A28);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98B4400(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_1B98734DC();
  return a1;
}

uint64_t sub_1B98B4474()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B453C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4628()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B46F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B47DC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B48A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B49F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4AB8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4BC8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4C90()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4D7C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4E44()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4EFC(uint64_t a1, _BYTE *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98B4FC0;

  return sub_1B98AD7A8(a1, a2, v7);
}

uint64_t sub_1B98B4FC0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3 = *(*v2 + 24);
  *(v6 + 16) = *v2;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2);
}

uint64_t sub_1B98B512C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B98B527C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1B98B5480()
{
  v2 = qword_1EBBD5A38;
  if (!qword_1EBBD5A38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B550C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B55D4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98B568C()
{
  v2 = qword_1EBBD5A48;
  if (!qword_1EBBD5A48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B5734(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  v7 = type metadata accessor for BlockedHandle();
  v2 = *(a1 + v7[5] + 8);

  v3 = *(a1 + v7[6]);

  v4 = *(a1 + v7[7]);

  v5 = *(a1 + v7[8] + 8);

  return a1;
}

uint64_t *sub_1B98B5850(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t *sub_1B98B58A8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *sub_1B98B59B0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

void *sub_1B98B59E8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B98B5A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[5] = a1;
  v5[6] = a2;
  sub_1B98B5B14(a3, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  swift_getKeyPath();
  sub_1B98F5238();

  v3 = __swift_destroy_boxed_opaque_existential_1(v5);
  nullsub_31(v3);
}

uint64_t sub_1B98B5B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B98B5B80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_1B98B5C58();
  a2[1] = v2;
}

uint64_t sub_1B98B5BE0(void *a1, uint64_t *a2)
{
  sub_1B9871EF0(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_1B98B5F4C(v4, v6);
}

uint64_t sub_1B98B5C58()
{
  v15 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0);
  v9 = &v2 - v3;
  v15 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v4 = &v14;
  v14 = v5;
  v11 = &unk_1B98FB850;
  KeyPath = swift_getKeyPath();
  sub_1B98B5DD8();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v12 = swift_getKeyPath();
  sub_1B98B5ECC();
  sub_1B98F5338();

  return v13;
}

unint64_t sub_1B98B5DD8()
{
  v2 = qword_1EBBD5A58;
  if (!qword_1EBBD5A58)
  {
    type metadata accessor for ManagedAllowedApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A58);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ManagedAllowedApp()
{
  v1 = qword_1EBBD5A80;
  if (!qword_1EBBD5A80)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B98B5ECC()
{
  v2 = qword_1EBBD5A60;
  if (!qword_1EBBD5A60)
  {
    type metadata accessor for ManagedAllowedApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B5F4C(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B61EC;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10, v12);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B5DD8();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B6148()
{
  swift_getKeyPath();
  sub_1B98B5ECC();
  sub_1B98F5358();
}

uint64_t sub_1B98B61EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B98B6148();
}

uint64_t (*sub_1B98B621C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B5C58();
  a1[1] = v2;
  return sub_1B98B6274;
}

uint64_t sub_1B98B6274(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B98B5F4C(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1B98F54D8();
  sub_1B98B5F4C(v4, v5);
  return sub_1B9868BFC(a1);
}

uint64_t sub_1B98B6318(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  sub_1B98B5B14(a2, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  type metadata accessor for ManagedHandle();
  sub_1B98B64C8();
  sub_1B98F5228();

  v2 = __swift_destroy_boxed_opaque_existential_1(v4);
  nullsub_31(v2);
}

uint64_t sub_1B98B6404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_1B98B6560();
}

uint64_t sub_1B98B6460(uint64_t *a1, uint64_t *a2)
{
  sub_1B98B80F4(a1, &v6);
  v4 = v6;
  v5 = *a2;

  sub_1B98B66F8(v4);
}

unint64_t sub_1B98B64C8()
{
  v2 = qword_1EBBD5A68;
  if (!qword_1EBBD5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
    sub_1B9870EA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B6560()
{
  v18 = 0;
  v12 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0);
  v9 = &v2 - v3;
  v18 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v4 = &v17;
  v17 = v5;
  v11 = &unk_1B98FB878;
  KeyPath = swift_getKeyPath();
  sub_1B98B5DD8();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v15 = swift_getKeyPath();
  v13 = type metadata accessor for ManagedHandle();
  v14 = sub_1B98B5ECC();
  sub_1B98B64C8();
  sub_1B98F5328();

  return v16;
}

uint64_t sub_1B98B66F8(uint64_t a1)
{
  v7 = a1;
  v10 = sub_1B98B6980;
  v18 = 0;
  v17 = 0;
  v3[0] = sub_1B98F4FE8();
  v5 = *(v3[0] - 8);
  v3[1] = v3[0] - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v3 - v4;
  v18 = MEMORY[0x1EEE9AC00](v7, v1);
  v17 = v8;
  (*(v5 + 16))(v3 - v4, v8 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v12 = &v16;
  v16 = v8;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v11 = &v13;
  v14 = v8;
  v15 = v7;
  sub_1B98B5DD8();
  sub_1B98F4FB8();

  (*(v5 + 8))(v6, v3[0]);
}

uint64_t sub_1B98B68DC()
{
  swift_getKeyPath();
  type metadata accessor for ManagedHandle();
  sub_1B98B5ECC();
  sub_1B98B64C8();
  sub_1B98F5348();
}

uint64_t sub_1B98B6980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B98B68DC();
}

uint64_t *(*sub_1B98B69AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98B6560();
  return sub_1B98B69FC;
}

uint64_t *sub_1B98B69FC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B98B66F8(*a1);
  }

  v4 = *a1;
  sub_1B98F54D8();
  sub_1B98B66F8(v4);
  return sub_1B98B80C8(a1);
}

uint64_t *sub_1B98B6A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1B98B6AC4(a1, a2, a3);
}

uint64_t *sub_1B98B6AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedAllowedApp();
  v9[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A70, &qword_1B98FB8A8);
  sub_1B98B5ECC();
  v9[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v9 + 2);
  sub_1B98F52E8();
  sub_1B98F4FD8();
  v3 = *v9;
  sub_1B98B5A48(a1, a2, (v9 + 2));
  v4 = *v9;
  sub_1B98B6318(a3, (v9 + 2));
  return v9;
}

uint64_t *sub_1B98B6C48(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1B98B6C94(a1);
}

uint64_t *sub_1B98B6C94(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for ManagedAllowedApp();
  v7[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A70, &qword_1B98FB8A8);
  sub_1B98B5ECC();
  v7[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_1B98F52E8();
  sub_1B98F4FD8();
  sub_1B98F54D8();
  v1 = *v7;
  sub_1B98B5A48(v5, v6, (v7 + 2));
  type metadata accessor for ManagedHandle();
  v2 = sub_1B98F5F98();
  v3 = *v7;
  sub_1B98B6318(v2, (v7 + 2));

  return v7;
}

uint64_t sub_1B98B6E38(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1B98F54D8();
  return sub_1B98B5F4C(v2, v3);
}

uint64_t sub_1B98B6E8C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B5B14(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_1B98B6EE0(uint64_t *a1)
{
  sub_1B98B5B14(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1B98B6F50(v4, (v1 + 16));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B98B7028@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B5B14(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_1B98B7084(uint64_t *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_1B98B5B14(a1, v5);
  sub_1B98B5B14(v5, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  sub_1B98B6F50(v4, (v1 + 16));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1B98B7120(void *a1))(uint64_t **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  sub_1B98B7028(v4);
  return sub_1B98B7194;
}

void sub_1B98B7194(uint64_t **a1, char a2)
{
  v3 = *a1;
  v2 = (*a1)[10];
  if (a2)
  {
    sub_1B98B5B14(v3, (v3 + 5));
    sub_1B98B7084(v3 + 5);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1B98B7084(v3);
  }

  free(v3);
}

uint64_t sub_1B98B720C()
{
  v3 = sub_1B98F5418();
  v2 = sub_1B98F5F98();
  sub_1B98F55E8();
  swift_getKeyPath();
  sub_1B98F5408();
  v1 = *(*(v3 - 8) + 72);
  sub_1B98F55E8();
  swift_getKeyPath();
  sub_1B98F5408();
  result = v2;
  sub_1B9851B38();
  return result;
}

uint64_t *sub_1B98B738C(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1B98B73D8(a1);
}

uint64_t *sub_1B98B73D8(uint64_t *a1)
{
  v10 = 0;
  v11 = a1;
  v1 = type metadata accessor for ManagedAllowedApp();
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A70, &qword_1B98FB8A8);
  v7[5] = v1;
  v7[6] = v1;
  v8 = sub_1B98B5ECC();
  v9 = v8;
  v6[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  sub_1B98F52E8();
  v2 = sub_1B98F4FD8();
  v3 = nullsub_31(v2);
  nullsub_31(v3);
  sub_1B98B5B14(a1, v7);
  sub_1B98B7084(v7);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1B98B74F8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar;
  v2 = sub_1B98F4FE8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B98B7564(void *a1)
{
  v8 = a1;
  v17 = 0;
  v15 = 0;
  v6 = *a1;
  v13 = sub_1B98F4FE8();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v1 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v8, v2);
  v12 = &v6 - v4;
  v17 = v3;
  v16 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
  v15 = v7;
  (*(v10 + 16))(&v6 - v4, v7 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v9 = &v14;
  v14 = v7;
  sub_1B98B5DD8();
  sub_1B98F4FC8();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1B98B76D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_1B98F4FE8();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v19, v20);
  v16 = v11 - v7;
  v32 = v6;
  v31 = *(v14 + *MEMORY[0x1E69E77B0] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v7, v17 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v24 = &v27;
  v27 = v17;
  sub_1B98B5DD8();
  v9 = v23;
  sub_1B98F4FB8();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t sub_1B98B78EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar;
  v1 = sub_1B98F4FE8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1B98B796C()
{
  v0 = *sub_1B98B78EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B98B79D0()
{
  type metadata accessor for ManagedAllowedApp();
  sub_1B98B7A24();
  return sub_1B98F5D08();
}

unint64_t sub_1B98B7A24()
{
  v2 = qword_1EBBD5A78;
  if (!qword_1EBBD5A78)
  {
    type metadata accessor for ManagedAllowedApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B7AC8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B98F5318();
}

uint64_t sub_1B98B7B38(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return sub_1B98F52F8() & 1;
}

void (*sub_1B98B7BEC(void *a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1B98B7120(v2);
  return sub_1B98B7C5C;
}

void sub_1B98B7C5C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98B7CF0()
{
  v1 = *v0;
  type metadata accessor for ManagedAllowedApp();
  sub_1B98B5ECC();
  return sub_1B98F5308();
}

uint64_t sub_1B98B7D58()
{
  v2 = sub_1B98F4FE8();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1B98B7E7C()
{
  v2 = qword_1EBBD5A90;
  if (!qword_1EBBD5A90)
  {
    sub_1B98F53A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98B7F14()
{
  v2 = qword_1EBBD5A98;
  if (!qword_1EBBD5A98)
  {
    type metadata accessor for ManagedAllowedApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98B7FDC()
{
  v2 = qword_1EBBD5AA0;
  if (!qword_1EBBD5AA0)
  {
    type metadata accessor for ManagedAllowedApp();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AA0);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t *sub_1B98B80C8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

void *sub_1B98B80F4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B98B8154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[5] = a1;
  v5[6] = a2;
  sub_1B98B8220(a3, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  swift_getKeyPath();
  sub_1B98F5238();

  v3 = __swift_destroy_boxed_opaque_existential_1(v5);
  nullsub_38(v3);
}

uint64_t sub_1B98B8220(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B98B828C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_1B98B8364();
  a2[1] = v2;
}

uint64_t sub_1B98B82EC(void *a1, uint64_t *a2)
{
  sub_1B9871EF0(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_1B98B85D8(v4, v6);
}

uint64_t sub_1B98B8364()
{
  v15 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0);
  v9 = &v2 - v3;
  v15 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v4 = &v14;
  v14 = v5;
  v11 = &unk_1B98FBAA0;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v12 = swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98F5338();

  return v13;
}

unint64_t sub_1B98B84E4()
{
  v2 = qword_1EBBD5AB0;
  if (!qword_1EBBD5AB0)
  {
    type metadata accessor for ManagedContact();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ManagedContact()
{
  v1 = qword_1EBBD5B08;
  if (!qword_1EBBD5B08)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B98B85D8(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B8878;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10, v12);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B87D4()
{
  swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98F5358();
}

uint64_t sub_1B98B8878()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B98B87D4();
}

uint64_t (*sub_1B98B88A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B8364();
  a1[1] = v2;
  return sub_1B98B8900;
}

uint64_t sub_1B98B8900(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B98B85D8(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1B98F54D8();
  sub_1B98B85D8(v4, v5);
  return sub_1B9868BFC(a1);
}

uint64_t sub_1B98B897C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B98B89CC(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1B98B8ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[5] = a1;
  v7[6] = a2;
  sub_1B98B8220(a3, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98B8C98();
  sub_1B98F5238();

  v4 = __swift_destroy_boxed_opaque_existential_1(v7);
  nullsub_38(v4);
  *a4 = 0;
}

uint64_t sub_1B98B8BC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_1B98B8D2C();
  a2[1] = v2;
}

uint64_t sub_1B98B8C24(void *a1, uint64_t *a2)
{
  sub_1B987D50C(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_1B98B8F44(v4, v6);
}

unint64_t sub_1B98B8C98()
{
  v2 = qword_1EBBD5AC0;
  if (!qword_1EBBD5AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B8D2C()
{
  v14 = 0;
  v8 = sub_1B98F4FE8();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v2[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v0);
  v7 = v2 - v2[0];
  v14 = v3;
  (*(v5 + 16))(v2 - v2[0], v3 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v2[1] = &v13;
  v13 = v3;
  v9 = &unk_1B98FBAC8;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v5 + 8))(v7, v8);
  v11 = swift_getKeyPath();
  v10 = sub_1B9870F24();
  sub_1B98B8EB0();
  sub_1B98F5338();

  return v12;
}

unint64_t sub_1B98B8EB0()
{
  v2 = qword_1EBBD5AC8;
  if (!qword_1EBBD5AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B8F44(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B91E8;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10, v12);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B9140()
{
  swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98B8C98();
  sub_1B98F5358();
}

uint64_t sub_1B98B91E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B98B9140();
}

uint64_t (*sub_1B98B9218(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B8D2C();
  a1[1] = v2;
  return sub_1B98B9270;
}

uint64_t sub_1B98B9270(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B98B8F44(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1B98F54D8();
  sub_1B98B8F44(v4, v5);
  return sub_1B985EE4C(a1);
}

uint64_t sub_1B98B92EC()
{
  swift_beginAccess();
  v2 = *(v0 + 17);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B98B933C(char a1)
{
  swift_beginAccess();
  *(v1 + 17) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1B98B942C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[5] = a1;
  v7[6] = a2;
  sub_1B98B8220(a3, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98B8C98();
  sub_1B98F5238();

  v4 = __swift_destroy_boxed_opaque_existential_1(v7);
  nullsub_38(v4);
  *a4 = 0;
}

uint64_t sub_1B98B9534@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;

  *a2 = sub_1B98B9608();
  a2[1] = v2;
}

uint64_t sub_1B98B9594(void *a1, uint64_t *a2)
{
  sub_1B987D50C(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  sub_1B98B978C(v4, v6);
}

uint64_t sub_1B98B9608()
{
  v14 = 0;
  v8 = sub_1B98F4FE8();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v2[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v0);
  v7 = v2 - v2[0];
  v14 = v3;
  (*(v5 + 16))(v2 - v2[0], v3 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v2[1] = &v13;
  v13 = v3;
  v9 = &unk_1B98FBAF8;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v5 + 8))(v7, v8);
  v11 = swift_getKeyPath();
  v10 = sub_1B9870F24();
  sub_1B98B8EB0();
  sub_1B98F5338();

  return v12;
}

uint64_t sub_1B98B978C(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B9A30;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10, v12);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B9988()
{
  swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98B8C98();
  sub_1B98F5358();
}

uint64_t sub_1B98B9A30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B98B9988();
}

uint64_t (*sub_1B98B9A60(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B9608();
  a1[1] = v2;
  return sub_1B98B9AB8;
}

uint64_t sub_1B98B9AB8(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_1B98B978C(*a1, a1[1]);
  }

  v4 = *a1;
  v5 = a1[1];
  sub_1B98F54D8();
  sub_1B98B978C(v4, v5);
  return sub_1B985EE4C(a1);
}

uint64_t sub_1B98B9B5C(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  sub_1B98B8220(a2, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  type metadata accessor for ManagedHandle();
  sub_1B98B64C8();
  sub_1B98F5228();

  v2 = __swift_destroy_boxed_opaque_existential_1(v4);
  nullsub_38(v2);
}

uint64_t sub_1B98B9C48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  *a2 = sub_1B98B9D0C();
}

uint64_t sub_1B98B9CA4(uint64_t *a1, uint64_t *a2)
{
  sub_1B98B80F4(a1, &v6);
  v4 = v6;
  v5 = *a2;

  sub_1B98B9EA4(v4);
}

uint64_t sub_1B98B9D0C()
{
  v18 = 0;
  v12 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v0);
  v9 = &v2 - v3;
  v18 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v4 = &v17;
  v17 = v5;
  v11 = &unk_1B98FBB20;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v15 = swift_getKeyPath();
  v13 = type metadata accessor for ManagedHandle();
  v14 = sub_1B9870F24();
  sub_1B98B64C8();
  sub_1B98F5328();

  return v16;
}

uint64_t sub_1B98B9EA4(uint64_t a1)
{
  v7 = a1;
  v10 = sub_1B98BA12C;
  v18 = 0;
  v17 = 0;
  v3[0] = sub_1B98F4FE8();
  v5 = *(v3[0] - 8);
  v3[1] = v3[0] - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v3 - v4;
  v18 = MEMORY[0x1EEE9AC00](v7, v1);
  v17 = v8;
  (*(v5 + 16))(v3 - v4, v8 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v12 = &v16;
  v16 = v8;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v11 = &v13;
  v14 = v8;
  v15 = v7;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v5 + 8))(v6, v3[0]);
}

uint64_t sub_1B98BA088()
{
  swift_getKeyPath();
  type metadata accessor for ManagedHandle();
  sub_1B9870F24();
  sub_1B98B64C8();
  sub_1B98F5348();
}

uint64_t sub_1B98BA12C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B98BA088();
}

uint64_t *(*sub_1B98BA158(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98B9D0C();
  return sub_1B98BA1A8;
}

uint64_t *sub_1B98BA1A8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1B98B9EA4(*a1);
  }

  v4 = *a1;
  sub_1B98F54D8();
  sub_1B98B9EA4(v4);
  return sub_1B98B80C8(a1);
}

uint64_t *sub_1B98BA214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1B98BA290(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t *sub_1B98BA290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ManagedContact();
  v20[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD0, &qword_1B98FBB50);
  sub_1B9870F24();
  v20[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v20 + 3);
  sub_1B98F52E8();
  v7 = v20;
  *(v20 + 16) = 1;
  *(v20 + 17) = 1;
  sub_1B98F4FD8();
  v8 = *v20;
  sub_1B98B8154(a1, a2, (v20 + 3));
  v9 = *v20;
  sub_1B98B8ABC(a3, a4, (v7 + 3), v7 + 16);
  v10 = *v20;
  sub_1B98B942C(a5, a6, (v7 + 3), v7 + 17);
  v11 = *v20;
  sub_1B98B9B5C(a7, (v20 + 3));
  return v20;
}

uint64_t *sub_1B98BA4D8(void *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1B98BA524(a1);
}

uint64_t *sub_1B98BA524(void *a1)
{
  memset(__b, 0, sizeof(__b));
  v12 = a1[1];
  v10 = a1[2];
  v13 = a1[3];
  v11 = a1[4];
  v14 = a1[5];
  __b[0] = *a1;
  v9 = __b[0];
  __b[1] = v12;
  __b[2] = v10;
  __b[3] = v13;
  __b[4] = v11;
  __b[5] = v14;
  type metadata accessor for ManagedContact();
  v15[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD0, &qword_1B98FBB50);
  sub_1B9870F24();
  v15[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v15 + 3);
  sub_1B98F52E8();
  v1 = v15;
  *(v15 + 16) = 1;
  *(v15 + 17) = 1;
  sub_1B98F4FD8();
  sub_1B98F54D8();
  v2 = *v15;
  sub_1B98B8154(v9, v12, (v15 + 3));
  sub_1B98F54D8();
  v3 = *v15;
  sub_1B98B8ABC(v10, v13, (v1 + 3), v1 + 16);
  sub_1B98F54D8();
  v4 = *v15;
  sub_1B98B942C(v11, v14, (v1 + 3), v1 + 17);
  type metadata accessor for ManagedHandle();
  v5 = sub_1B98F5F98();
  v6 = *v15;
  sub_1B98B9B5C(v5, (v15 + 3));

  return v15;
}

uint64_t sub_1B98BA7C0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_1B98F54D8();
  sub_1B98B8F44(v2, v3);
  sub_1B98F54D8();
  return sub_1B98B978C(v4, v5);
}

uint64_t sub_1B98BA848@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B8220(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98BA89C(uint64_t *a1)
{
  sub_1B98B8220(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1B98BA90C(v4, (v1 + 24));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B98BA9E4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B8220(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98BAA40(uint64_t *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_1B98B8220(a1, v5);
  sub_1B98B8220(v5, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1B98BA90C(v4, (v1 + 24));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1B98BAADC(void *a1))(uint64_t **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  sub_1B98BA9E4(v4);
  return sub_1B98BAB50;
}

void sub_1B98BAB50(uint64_t **a1, char a2)
{
  v3 = *a1;
  v2 = (*a1)[10];
  if (a2)
  {
    sub_1B98B8220(v3, (v3 + 5));
    sub_1B98BAA40(v3 + 5);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1B98BAA40(v3);
  }

  free(v3);
}

uint64_t sub_1B98BABC8()
{
  v90 = 0;
  v53 = 0;
  v47 = &v52;
  v52 = 0;
  v45 = sub_1B98F5418();
  v14 = *(v45 - 8);
  v15 = v45 - 8;
  v13[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v45);
  v44 = v13 - v13[0];
  v90 = v0;
  v27 = sub_1B98F5F98();
  v24 = v1;
  v28 = 1;
  v13[2] = sub_1B98F55E8();
  v13[1] = v2;
  v30 = &unk_1B98FBAA0;
  swift_getKeyPath();
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  sub_1B98F5408();
  v22 = *(v14 + 72);
  v29 = 1;
  v16 = v22;
  v18 = sub_1B98F55E8();
  v17 = v3;
  swift_getKeyPath();
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  sub_1B98F5408();
  v19 = 2 * v22;
  v21 = sub_1B98F55E8();
  v20 = v4;
  swift_getKeyPath();
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  sub_1B98F5408();
  v23 = 3 * v22;
  v26 = sub_1B98F55E8();
  v25 = v5;
  swift_getKeyPath();
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  sub_1B98F5408();
  v6 = v27;
  sub_1B9851B38();
  v48 = v6;
  v53 = v6;
  v52 = sub_1B98F5458();
  v43 = sub_1B98F55E8();
  v39 = v7;
  KeyPath = swift_getKeyPath();
  v41 = v51;
  memset(v51, 0, sizeof(v51));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD8, &qword_1B98FBB88);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AE0, &qword_1B98FBB90);
  v36 = sub_1B98F5F98();
  v34 = v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AE8, &qword_1B98FBB98);
  v33 = sub_1B98F5F98();
  v31 = v9;
  v10 = swift_getKeyPath();
  v11 = v33;
  *v31 = v10;
  sub_1B9851B38();
  *v34 = v11;
  sub_1B9851B38();
  v38 = sub_1B98F5428();
  v42 = v50;
  v50[3] = v37;
  v50[4] = sub_1B98BB1B0();
  v50[0] = v38;
  sub_1B98F5408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AF8, &qword_1B98FBBA0);
  sub_1B98F5908();
  v46 = v52;
  sub_1B98F54D8();
  v49 = sub_1B98F58C8();

  sub_1B98BB238(v47);

  return v49;
}