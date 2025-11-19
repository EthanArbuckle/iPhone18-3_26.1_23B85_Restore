id sub_1B09257F4(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 persistentID];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

uint64_t sub_1B09258B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result & 1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t *sub_1B09258D0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  v13[3] = a2;
  v13[2] = a3;
  v13[1] = a4 + 16;
  v15 = __dst[3];
  sub_1B074E7A8(&v15, v13);
  v12 = v15;
  sub_1B092A698(__dst, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071CBBC();
  v6 = sub_1B0E44F58();
  sub_1B092A758(__dst);

  result = sub_1B039E440(&v12);
  *a5 = v6;
  return result;
}

uint64_t sub_1B0925A50@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v378 = a6;
  v462 = a1;
  v461 = a2;
  v458 = a3;
  v459 = a4;
  v460 = a5;
  v380 = sub_1B074E050;
  v381 = sub_1B0394C30;
  v382 = sub_1B0394C24;
  v383 = sub_1B074DFFC;
  v384 = sub_1B039BA88;
  v385 = sub_1B039BB94;
  v386 = sub_1B0394C24;
  v387 = sub_1B039BBA0;
  v388 = sub_1B039BC08;
  v389 = 0x786F626C69616DLL;
  v390 = sub_1B06BA324;
  v391 = sub_1B074E0E4;
  v392 = sub_1B039BCF8;
  v393 = sub_1B092A7AC;
  v394 = sub_1B039BCF8;
  v395 = sub_1B092A7A4;
  v396 = sub_1B070B324;
  v397 = sub_1B0398F5C;
  v398 = sub_1B0398F5C;
  v399 = sub_1B0399178;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0398F5C;
  v402 = sub_1B039BA94;
  v403 = sub_1B0398F5C;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0399178;
  v406 = sub_1B0398F5C;
  v407 = sub_1B0398F5C;
  v408 = sub_1B03991EC;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0398F5C;
  v411 = sub_1B03993BC;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B039BCEC;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B039BCEC;
  v418 = sub_1B0398F5C;
  v419 = sub_1B0398F5C;
  v420 = sub_1B070B4B4;
  v421 = sub_1B074E050;
  v422 = sub_1B0394C24;
  v423 = sub_1B074DFFC;
  v424 = sub_1B039BA88;
  v425 = sub_1B0394C24;
  v426 = sub_1B039BBA0;
  v427 = sub_1B039BC08;
  v428 = sub_1B06BA324;
  v429 = sub_1B074E0E4;
  v430 = sub_1B039BCF8;
  v431 = sub_1B092A7A4;
  v432 = sub_1B070B324;
  v433 = sub_1B0398F5C;
  v434 = sub_1B0398F5C;
  v435 = sub_1B0399178;
  v436 = sub_1B0398F5C;
  v437 = sub_1B0398F5C;
  v438 = sub_1B039BA94;
  v439 = sub_1B0398F5C;
  v440 = sub_1B0398F5C;
  v441 = sub_1B0399178;
  v442 = sub_1B0398F5C;
  v443 = sub_1B0398F5C;
  v444 = sub_1B03991EC;
  v445 = sub_1B0398F5C;
  v446 = sub_1B0398F5C;
  v447 = sub_1B03993BC;
  v448 = sub_1B0398F5C;
  v449 = sub_1B0398F5C;
  v450 = sub_1B039BCEC;
  v451 = sub_1B0398F5C;
  v452 = sub_1B0398F5C;
  v453 = sub_1B070B4B4;
  v498 = 0;
  v497 = 0;
  v496 = 0;
  v495 = 0;
  v494 = 0;
  v474 = 0;
  v454 = 0;
  v455 = _s6LoggerVMa_1();
  v456 = (*(*(v455 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v457 = v192 - v456;
  v463 = sub_1B0E439A8();
  v464 = *(v463 - 8);
  v465 = v463 - 8;
  v466 = (*(v464 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v462);
  v467 = v192 - v466;
  v468 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v469 = v192 - v468;
  v470 = *v8;
  v498 = v470;
  v497 = v9;
  v496 = v10;
  v495 = v11;
  v494 = v12;
  v471 = *(v9 + 32);
  MEMORY[0x1E69E5928](v471);
  MEMORY[0x1E69E5928](v470);
  v472 = v499;
  sub_1B091EEC4(v471, v470, v499);
  memcpy(__dst, v472, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v502, __dst, sizeof(v502));
    v485 = sub_1B0917A3C();
    v377 = v485;
    if ((v485 & 0x100000000) != 0)
    {
      (*(v464 + 16))(v469, v458, v463);

      sub_1B074B69C(v459 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v457);
      v14 = (v457 + *(v455 + 20));
      v313 = *v14;
      v314 = *(v14 + 1);
      v315 = *(v14 + 1);
      v316 = *(v14 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v457);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v312 = 36;
      v333 = 7;
      v15 = swift_allocObject();
      v16 = v314;
      v17 = v315;
      v18 = v316;
      v318 = v15;
      *(v15 + 16) = v313;
      *(v15 + 20) = v16;
      *(v15 + 24) = v17;
      *(v15 + 32) = v18;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = swift_allocObject();
      v20 = v314;
      v21 = v315;
      v22 = v316;
      v311 = v19;
      *(v19 + 16) = v313;
      *(v19 + 20) = v20;
      *(v19 + 24) = v21;
      *(v19 + 32) = v22;

      v332 = 32;
      v23 = swift_allocObject();
      v24 = v311;
      v323 = v23;
      *(v23 + 16) = v380;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      v25 = swift_allocObject();
      v26 = v314;
      v27 = v315;
      v28 = v316;
      v326 = v25;
      *(v25 + 16) = v313;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      MEMORY[0x1E69E5928](v470);
      v336 = 24;
      v29 = swift_allocObject();
      v30 = v461;
      v328 = v29;
      *(v29 + 16) = v470;
      sub_1B092A698(v30, &v484);
      v334 = swift_allocObject();
      memcpy((v334 + 16), v461, 0x28uLL);
      v364 = sub_1B0E43988();
      v365 = sub_1B0E458E8();
      v330 = 17;
      v337 = swift_allocObject();
      v320 = 16;
      *(v337 + 16) = 16;
      v338 = swift_allocObject();
      v322 = 4;
      *(v338 + 16) = 4;
      v31 = swift_allocObject();
      v317 = v31;
      *(v31 + 16) = v381;
      *(v31 + 24) = 0;
      v32 = swift_allocObject();
      v33 = v317;
      v339 = v32;
      *(v32 + 16) = v382;
      *(v32 + 24) = v33;
      v340 = swift_allocObject();
      *(v340 + 16) = 0;
      v341 = swift_allocObject();
      *(v341 + 16) = 1;
      v34 = swift_allocObject();
      v35 = v318;
      v319 = v34;
      *(v34 + 16) = v383;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v319;
      v342 = v36;
      *(v36 + 16) = v384;
      *(v36 + 24) = v37;
      v343 = swift_allocObject();
      *(v343 + 16) = v320;
      v344 = swift_allocObject();
      *(v344 + 16) = v322;
      v38 = swift_allocObject();
      v321 = v38;
      *(v38 + 16) = v385;
      *(v38 + 24) = 0;
      v39 = swift_allocObject();
      v40 = v321;
      v345 = v39;
      *(v39 + 16) = v386;
      *(v39 + 24) = v40;
      v346 = swift_allocObject();
      *(v346 + 16) = 0;
      v347 = swift_allocObject();
      *(v347 + 16) = v322;
      v41 = swift_allocObject();
      v42 = v323;
      v324 = v41;
      *(v41 + 16) = v387;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v324;
      v348 = v43;
      *(v43 + 16) = v388;
      *(v43 + 24) = v44;
      v349 = swift_allocObject();
      *(v349 + 16) = 112;
      v350 = swift_allocObject();
      v331 = 8;
      *(v350 + 16) = 8;
      v325 = swift_allocObject();
      *(v325 + 16) = v389;
      v45 = swift_allocObject();
      v46 = v325;
      v351 = v45;
      *(v45 + 16) = v390;
      *(v45 + 24) = v46;
      v352 = swift_allocObject();
      *(v352 + 16) = 37;
      v353 = swift_allocObject();
      *(v353 + 16) = v331;
      v47 = swift_allocObject();
      v48 = v326;
      v327 = v47;
      *(v47 + 16) = v391;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v327;
      v354 = v49;
      *(v49 + 16) = v392;
      *(v49 + 24) = v50;
      v355 = swift_allocObject();
      *(v355 + 16) = 32;
      v356 = swift_allocObject();
      *(v356 + 16) = v331;
      v51 = swift_allocObject();
      v52 = v328;
      v329 = v51;
      *(v51 + 16) = v393;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v329;
      v357 = v53;
      *(v53 + 16) = v394;
      *(v53 + 24) = v54;
      v358 = swift_allocObject();
      *(v358 + 16) = 64;
      v359 = swift_allocObject();
      *(v359 + 16) = v331;
      v55 = swift_allocObject();
      v56 = v334;
      v335 = v55;
      *(v55 + 16) = v395;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v335;
      v361 = v57;
      *(v57 + 16) = v396;
      *(v57 + 24) = v58;
      v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v360 = sub_1B0E46A48();
      v362 = v59;

      v60 = v337;
      v61 = v362;
      *v362 = v397;
      v61[1] = v60;

      v62 = v338;
      v63 = v362;
      v362[2] = v398;
      v63[3] = v62;

      v64 = v339;
      v65 = v362;
      v362[4] = v399;
      v65[5] = v64;

      v66 = v340;
      v67 = v362;
      v362[6] = v400;
      v67[7] = v66;

      v68 = v341;
      v69 = v362;
      v362[8] = v401;
      v69[9] = v68;

      v70 = v342;
      v71 = v362;
      v362[10] = v402;
      v71[11] = v70;

      v72 = v343;
      v73 = v362;
      v362[12] = v403;
      v73[13] = v72;

      v74 = v344;
      v75 = v362;
      v362[14] = v404;
      v75[15] = v74;

      v76 = v345;
      v77 = v362;
      v362[16] = v405;
      v77[17] = v76;

      v78 = v346;
      v79 = v362;
      v362[18] = v406;
      v79[19] = v78;

      v80 = v347;
      v81 = v362;
      v362[20] = v407;
      v81[21] = v80;

      v82 = v348;
      v83 = v362;
      v362[22] = v408;
      v83[23] = v82;

      v84 = v349;
      v85 = v362;
      v362[24] = v409;
      v85[25] = v84;

      v86 = v350;
      v87 = v362;
      v362[26] = v410;
      v87[27] = v86;

      v88 = v351;
      v89 = v362;
      v362[28] = v411;
      v89[29] = v88;

      v90 = v352;
      v91 = v362;
      v362[30] = v412;
      v91[31] = v90;

      v92 = v353;
      v93 = v362;
      v362[32] = v413;
      v93[33] = v92;

      v94 = v354;
      v95 = v362;
      v362[34] = v414;
      v95[35] = v94;

      v96 = v355;
      v97 = v362;
      v362[36] = v415;
      v97[37] = v96;

      v98 = v356;
      v99 = v362;
      v362[38] = v416;
      v99[39] = v98;

      v100 = v357;
      v101 = v362;
      v362[40] = v417;
      v101[41] = v100;

      v102 = v358;
      v103 = v362;
      v362[42] = v418;
      v103[43] = v102;

      v104 = v359;
      v105 = v362;
      v362[44] = v419;
      v105[45] = v104;

      v106 = v361;
      v107 = v362;
      v362[46] = v420;
      v107[47] = v106;
      sub_1B0394964();

      if (os_log_type_enabled(v364, v365))
      {
        v304 = sub_1B0E45D78();
        v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v305 = sub_1B03949A8(1);
        v306 = sub_1B03949A8(2);
        v307 = &v481;
        v481 = v304;
        v308 = &v480;
        v480 = v305;
        v309 = &v479;
        v479 = v306;
        sub_1B0394A48(3, &v481);
        sub_1B0394A48(8, v307);
        v108 = v379;
        v477 = v397;
        v478 = v337;
        sub_1B03949FC(&v477, v307, v308, v309);
        v310 = v108;
        if (v108)
        {

          __break(1u);
        }

        else
        {
          v477 = v398;
          v478 = v338;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v301 = 0;
          v477 = v399;
          v478 = v339;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v300 = 0;
          v477 = v400;
          v478 = v340;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v299 = 0;
          v477 = v401;
          v478 = v341;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v298 = 0;
          v477 = v402;
          v478 = v342;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v297 = 0;
          v477 = v403;
          v478 = v343;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v296 = 0;
          v477 = v404;
          v478 = v344;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v295 = 0;
          v477 = v405;
          v478 = v345;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v294 = 0;
          v477 = v406;
          v478 = v346;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v293 = 0;
          v477 = v407;
          v478 = v347;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v292 = 0;
          v477 = v408;
          v478 = v348;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v291 = 0;
          v477 = v409;
          v478 = v349;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v290 = 0;
          v477 = v410;
          v478 = v350;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v289 = 0;
          v477 = v411;
          v478 = v351;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v288 = 0;
          v477 = v412;
          v478 = v352;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v287 = 0;
          v477 = v413;
          v478 = v353;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v286 = 0;
          v477 = v414;
          v478 = v354;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v285 = 0;
          v477 = v415;
          v478 = v355;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v284 = 0;
          v477 = v416;
          v478 = v356;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v283 = 0;
          v477 = v417;
          v478 = v357;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v282 = 0;
          v477 = v418;
          v478 = v358;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v281 = 0;
          v477 = v419;
          v478 = v359;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v280 = 0;
          v477 = v420;
          v478 = v361;
          sub_1B03949FC(&v477, &v481, &v480, &v479);
          v279 = 0;
          _os_log_impl(&dword_1B0389000, v364, v365, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Invalid source UID '%s' in move/copy action %@", v304, 0x3Fu);
          sub_1B03998A8(v305);
          sub_1B03998A8(v306);
          sub_1B0E45D58();

          v302 = v279;
        }
      }

      else
      {

        v302 = v379;
      }

      v278 = v302;
      MEMORY[0x1E69E5920](v364);
      (*(v464 + 8))(v469, v463);
      v275 = *(v461 + 4);
      MEMORY[0x1E69E5928](v275);
      v277 = [v275 persistentID];
      MEMORY[0x1E69E5920](v275);
      v276 = &v482;
      swift_beginAccess();
      sub_1B07B7528(v470, v277);
      swift_endAccess();
      MEMORY[0x1E69E5920](v277);
      memset(v483, 0, sizeof(v483));
      memcpy(v378, v483, 0x40uLL);
      sub_1B08283D8(v502);
      result = v278;
      v375 = v278;
    }

    else
    {
      v376 = v377;
      v367 = v377;
      v474 = v377;
      v366 = *v461;
      v368 = *(v461 + 1);
      v369 = *(v461 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v374 = v502;
      sub_1B0828300(v502, &v473);
      v370 = v500;
      sub_1B0827070(v374, v366 & 1, v367, v368, v369, v500);
      v371 = v475;
      v373 = 64;
      memcpy(v475, v370, sizeof(v475));
      v372 = v476;
      memcpy(v476, v475, sizeof(v476));
      memcpy(v378, v476, 0x40uLL);
      sub_1B08283D8(v374);
      result = v379;
      v375 = v379;
    }
  }

  else
  {
    (*(v464 + 16))(v467, v458, v463);

    sub_1B074B69C(v459 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v457);
    v109 = (v457 + *(v455 + 20));
    v228 = *v109;
    v229 = *(v109 + 1);
    v230 = *(v109 + 1);
    v231 = *(v109 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v457);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v227 = 36;
    v246 = 7;
    v110 = swift_allocObject();
    v111 = v229;
    v112 = v230;
    v113 = v231;
    v233 = v110;
    *(v110 + 16) = v228;
    *(v110 + 20) = v111;
    *(v110 + 24) = v112;
    *(v110 + 32) = v113;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v114 = swift_allocObject();
    v115 = v229;
    v116 = v230;
    v117 = v231;
    v226 = v114;
    *(v114 + 16) = v228;
    *(v114 + 20) = v115;
    *(v114 + 24) = v116;
    *(v114 + 32) = v117;

    v245 = 32;
    v118 = swift_allocObject();
    v119 = v226;
    v238 = v118;
    *(v118 + 16) = v421;
    *(v118 + 24) = v119;
    sub_1B0394868();
    sub_1B0394868();

    v120 = swift_allocObject();
    v121 = v229;
    v122 = v230;
    v123 = v231;
    v241 = v120;
    *(v120 + 16) = v228;
    *(v120 + 20) = v121;
    *(v120 + 24) = v122;
    *(v120 + 32) = v123;

    sub_1B092A698(v461, &v493);
    v247 = swift_allocObject();
    memcpy((v247 + 16), v461, 0x28uLL);
    v273 = sub_1B0E43988();
    v274 = sub_1B0E458E8();
    v243 = 17;
    v249 = swift_allocObject();
    v235 = 16;
    *(v249 + 16) = 16;
    v250 = swift_allocObject();
    v237 = 4;
    *(v250 + 16) = 4;
    v124 = swift_allocObject();
    v232 = v124;
    *(v124 + 16) = v381;
    *(v124 + 24) = 0;
    v125 = swift_allocObject();
    v126 = v232;
    v251 = v125;
    *(v125 + 16) = v422;
    *(v125 + 24) = v126;
    v252 = swift_allocObject();
    *(v252 + 16) = 0;
    v253 = swift_allocObject();
    *(v253 + 16) = 1;
    v127 = swift_allocObject();
    v128 = v233;
    v234 = v127;
    *(v127 + 16) = v423;
    *(v127 + 24) = v128;
    v129 = swift_allocObject();
    v130 = v234;
    v254 = v129;
    *(v129 + 16) = v424;
    *(v129 + 24) = v130;
    v255 = swift_allocObject();
    *(v255 + 16) = v235;
    v256 = swift_allocObject();
    *(v256 + 16) = v237;
    v131 = swift_allocObject();
    v236 = v131;
    *(v131 + 16) = v385;
    *(v131 + 24) = 0;
    v132 = swift_allocObject();
    v133 = v236;
    v257 = v132;
    *(v132 + 16) = v425;
    *(v132 + 24) = v133;
    v258 = swift_allocObject();
    *(v258 + 16) = 0;
    v259 = swift_allocObject();
    *(v259 + 16) = v237;
    v134 = swift_allocObject();
    v135 = v238;
    v239 = v134;
    *(v134 + 16) = v426;
    *(v134 + 24) = v135;
    v136 = swift_allocObject();
    v137 = v239;
    v260 = v136;
    *(v136 + 16) = v427;
    *(v136 + 24) = v137;
    v261 = swift_allocObject();
    *(v261 + 16) = 112;
    v262 = swift_allocObject();
    v244 = 8;
    *(v262 + 16) = 8;
    v240 = swift_allocObject();
    *(v240 + 16) = v389;
    v138 = swift_allocObject();
    v139 = v240;
    v263 = v138;
    *(v138 + 16) = v428;
    *(v138 + 24) = v139;
    v264 = swift_allocObject();
    *(v264 + 16) = 37;
    v265 = swift_allocObject();
    *(v265 + 16) = v244;
    v140 = swift_allocObject();
    v141 = v241;
    v242 = v140;
    *(v140 + 16) = v429;
    *(v140 + 24) = v141;
    v142 = swift_allocObject();
    v143 = v242;
    v266 = v142;
    *(v142 + 16) = v430;
    *(v142 + 24) = v143;
    v267 = swift_allocObject();
    *(v267 + 16) = 64;
    v268 = swift_allocObject();
    *(v268 + 16) = v244;
    v144 = swift_allocObject();
    v145 = v247;
    v248 = v144;
    *(v144 + 16) = v431;
    *(v144 + 24) = v145;
    v146 = swift_allocObject();
    v147 = v248;
    v270 = v146;
    *(v146 + 16) = v432;
    *(v146 + 24) = v147;
    v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v269 = sub_1B0E46A48();
    v271 = v148;

    v149 = v249;
    v150 = v271;
    *v271 = v433;
    v150[1] = v149;

    v151 = v250;
    v152 = v271;
    v271[2] = v434;
    v152[3] = v151;

    v153 = v251;
    v154 = v271;
    v271[4] = v435;
    v154[5] = v153;

    v155 = v252;
    v156 = v271;
    v271[6] = v436;
    v156[7] = v155;

    v157 = v253;
    v158 = v271;
    v271[8] = v437;
    v158[9] = v157;

    v159 = v254;
    v160 = v271;
    v271[10] = v438;
    v160[11] = v159;

    v161 = v255;
    v162 = v271;
    v271[12] = v439;
    v162[13] = v161;

    v163 = v256;
    v164 = v271;
    v271[14] = v440;
    v164[15] = v163;

    v165 = v257;
    v166 = v271;
    v271[16] = v441;
    v166[17] = v165;

    v167 = v258;
    v168 = v271;
    v271[18] = v442;
    v168[19] = v167;

    v169 = v259;
    v170 = v271;
    v271[20] = v443;
    v170[21] = v169;

    v171 = v260;
    v172 = v271;
    v271[22] = v444;
    v172[23] = v171;

    v173 = v261;
    v174 = v271;
    v271[24] = v445;
    v174[25] = v173;

    v175 = v262;
    v176 = v271;
    v271[26] = v446;
    v176[27] = v175;

    v177 = v263;
    v178 = v271;
    v271[28] = v447;
    v178[29] = v177;

    v179 = v264;
    v180 = v271;
    v271[30] = v448;
    v180[31] = v179;

    v181 = v265;
    v182 = v271;
    v271[32] = v449;
    v182[33] = v181;

    v183 = v266;
    v184 = v271;
    v271[34] = v450;
    v184[35] = v183;

    v185 = v267;
    v186 = v271;
    v271[36] = v451;
    v186[37] = v185;

    v187 = v268;
    v188 = v271;
    v271[38] = v452;
    v188[39] = v187;

    v189 = v270;
    v190 = v271;
    v271[40] = v453;
    v190[41] = v189;
    sub_1B0394964();

    if (os_log_type_enabled(v273, v274))
    {
      v219 = sub_1B0E45D78();
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v218 = 1;
      v220 = sub_1B03949A8(1);
      v221 = sub_1B03949A8(v218);
      v222 = &v490;
      v490 = v219;
      v223 = &v489;
      v489 = v220;
      v224 = &v488;
      v488 = v221;
      sub_1B0394A48(3, &v490);
      sub_1B0394A48(7, v222);
      v191 = v379;
      v486 = v433;
      v487 = v249;
      sub_1B03949FC(&v486, v222, v223, v224);
      v225 = v191;
      if (v191)
      {

        __break(1u);
      }

      else
      {
        v486 = v434;
        v487 = v250;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v215 = 0;
        v486 = v435;
        v487 = v251;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v214 = 0;
        v486 = v436;
        v487 = v252;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v213 = 0;
        v486 = v437;
        v487 = v253;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v212 = 0;
        v486 = v438;
        v487 = v254;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v211 = 0;
        v486 = v439;
        v487 = v255;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v210 = 0;
        v486 = v440;
        v487 = v256;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v209 = 0;
        v486 = v441;
        v487 = v257;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v208 = 0;
        v486 = v442;
        v487 = v258;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v207 = 0;
        v486 = v443;
        v487 = v259;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v206 = 0;
        v486 = v444;
        v487 = v260;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v205 = 0;
        v486 = v445;
        v487 = v261;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v204 = 0;
        v486 = v446;
        v487 = v262;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v203 = 0;
        v486 = v447;
        v487 = v263;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v202 = 0;
        v486 = v448;
        v487 = v264;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v201 = 0;
        v486 = v449;
        v487 = v265;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v200 = 0;
        v486 = v450;
        v487 = v266;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v199 = 0;
        v486 = v451;
        v487 = v267;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v198 = 0;
        v486 = v452;
        v487 = v268;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v197 = 0;
        v486 = v453;
        v487 = v270;
        sub_1B03949FC(&v486, &v490, &v489, &v488);
        v196 = 0;
        _os_log_impl(&dword_1B0389000, v273, v274, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to create MoveReference for item in move/copy action %@", v219, 0x35u);
        v195 = 1;
        sub_1B03998A8(v220);
        sub_1B03998A8(v221);
        sub_1B0E45D58();

        v216 = v196;
      }
    }

    else
    {

      v216 = v379;
    }

    v194 = v216;
    MEMORY[0x1E69E5920](v273);
    (*(v464 + 8))(v467, v463);
    v192[0] = *(v461 + 4);
    MEMORY[0x1E69E5928](v192[0]);
    v193 = [v192[0] persistentID];
    MEMORY[0x1E69E5920](v192[0]);
    v192[1] = &v491;
    swift_beginAccess();
    sub_1B07B7528(v470, v193);
    swift_endAccess();
    MEMORY[0x1E69E5920](v193);
    memset(v492, 0, sizeof(v492));
    memcpy(v378, v492, 0x40uLL);
    return v194;
  }

  return result;
}

id sub_1B0928A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  MEMORY[0x1E69E5928](v2);
  v3 = [v2 persistentID];
  MEMORY[0x1E69E5920](v2);
  return v3;
}

uint64_t sub_1B0928AA8(void *a1)
{
  v8 = [a1 sourceRemoteID];
  if (v8)
  {
    v4 = sub_1B0E44AD8();
    v5 = v1;
    MEMORY[0x1E69E5920](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v9 = v6;
  v10 = v7;
  if (v7)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = sub_1B0E44838();
    v12 = v2;
  }

  return v11;
}

uint64_t *sub_1B0928BB4(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = 0;
  v9 = 0;
  v7 = 0;
  v12[3] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12[2] = swift_projectBox();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  sub_1B071C0F8();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C40, &qword_1B0E9B030);
    sub_1B0E46518();
    v2 = v10;
    if (!v10)
    {
      break;
    }

    v9 = v10;
    v8 = sub_1B0917A3C();
    if ((v8 & 0x100000000) == 0)
    {
      v7 = v8;
      v5 = v8;
      swift_beginAccess();
      MessageIdentifierSet.insert(_:)(v6, &v5, v3);
      swift_endAccess();
    }

    MEMORY[0x1E69E5920](v2);
  }

  return sub_1B039E440(v12);
}

uint64_t sub_1B0928D98(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

unint64_t sub_1B0928DEC()
{
  v2 = qword_1EB6DB120;
  if (!qword_1EB6DB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E35D0, &qword_1B0EA0980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0928EA4()
{
  v2 = qword_1EB6DB110;
  if (!qword_1EB6DB110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E35D0, &qword_1B0EA0980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0928F2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B091B008();
}

uint64_t sub_1B0928F6C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_1B03B2000(v4, v5);
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  v6 = *(a1 + 56);
  MEMORY[0x1E69E5928](v6);
  *(a2 + 56) = v6;
  v7 = *(a1 + 64);
  MEMORY[0x1E69E5928](v7);
  *(a2 + 64) = v7;
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  v8 = *(a1 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 88) = v8;
  v10 = *(a1 + 96);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 96) = v10;
  *(a2 + 104) = *(a1 + 104);
  return result;
}

uint64_t sub_1B0929098(void *a1)
{
  v6 = *(_s6LoggerVMa_1() - 8);
  v2 = (*(v6 + 80) + 124) & ~*(v6 + 80);
  v3 = v1 + ((v2 + *(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  LODWORD(v7) = *v3;
  BYTE4(v7) = *(v3 + 4) & 1;

  return sub_1B091B848(a1, v1 + 16, v1 + v2, v7);
}

uint64_t block_copy_helper_226(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B09291C8(void *a1)
{
  v1 = a1[1];

  sub_1B0391D50(a1[3], a1[4]);
  MEMORY[0x1E69E5920](a1[7]);
  MEMORY[0x1E69E5920](a1[8]);
  v2 = a1[11];

  v3 = a1[12];

  return a1;
}

uint64_t sub_1B0929244(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  sub_1B03B2000(v5, v6);
  result = a2;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1B09292C4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  *(a2 + 8) = v2;

  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = v4;
  sub_1B0391D50(v5, v6);
  return a2;
}

void *sub_1B0929338(void *a1)
{
  v1 = a1[1];

  sub_1B0391D50(a1[3], a1[4]);
  return a1;
}

unint64_t sub_1B092937C()
{
  v2 = qword_1EB6DB780;
  if (!qword_1EB6DB780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E31A8, &qword_1B0EA09A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB780);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0929404(uint64_t a1, uint64_t a2, char a3)
{
  v11 = *(_s6LoggerVMa_1() - 8);
  v4 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v5 = (v4 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v3 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B091EB8C(a1, a2, a3 & 1, v3[2], v3[3], v3[4], v3 + v4, *(v3 + v5), *(v3 + v5 + 8));
}

unint64_t sub_1B09294F4()
{
  v2 = qword_1EB6DA550;
  if (!qword_1EB6DA550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E31B8, &qword_1B0EA09A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092957C()
{
  v2 = qword_1EB6E31C8;
  if (!qword_1EB6E31C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E31C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B09295F8()
{
  v2 = qword_1EB6DBFC0;
  if (!qword_1EB6DBFC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B092967C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = *(_s6LoggerVMa_1() - 8);
  v3 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v4 = (v3 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + v4);
  v6 = *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B092083C(a1, v2 + v3, v5, v6, a2);
}

uint64_t *sub_1B092973C@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *(_s6LoggerVMa_1() - 8);
  v3 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v4 = (v3 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v2 + v4);
  v6 = *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B09258D0(a1, v2 + v3, v5, v6, a2);
}

unint64_t sub_1B09297FC()
{
  v2 = qword_1EB6DA470;
  if (!qword_1EB6DA470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31D8, &qword_1B0EA09C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929884()
{
  v2 = qword_1EB6DB128;
  if (!qword_1EB6DB128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E35D0, &qword_1B0EA0980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB128);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B092990C(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[6];

  v5 = a1[8];

  v6 = a1[10];

  v7 = a1[12];

  return a1;
}

unint64_t sub_1B0929980()
{
  v2 = qword_1EB6DA4E8;
  if (!qword_1EB6DA4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31E0, &qword_1B0EA09C8);
    sub_1B0929A18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929A18()
{
  v2 = qword_1EB6DA4D0;
  if (!qword_1EB6DA4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E31E8, &qword_1B0EA09D0);
    sub_1B0929AC0();
    sub_1B0928DEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929AC0()
{
  v2 = qword_1EB6DA4C0;
  if (!qword_1EB6DA4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31F8, &qword_1B0EA09D8);
    sub_1B0929B58();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929B58()
{
  v2 = qword_1EB6DA480;
  if (!qword_1EB6DA480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E31D8, &qword_1B0EA09C0);
    sub_1B0929BF0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929BF0()
{
  v2 = qword_1EB6DA3B8;
  if (!qword_1EB6DA3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3200, &qword_1B0EA09E0);
    sub_1B0929C88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B0929C88()
{
  v2 = qword_1EB6DA4B8;
  if (!qword_1EB6DA4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3210, &qword_1B0EA09E8);
    sub_1B08754BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0929D20(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v3;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);

  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);

  *(a2 + 88) = v8;
  *(a2 + 96) = v9;
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);

  *(a2 + 104) = v10;
  *(a2 + 112) = v11;
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);

  *(a2 + 120) = v12;
  *(a2 + 128) = v13;
  v15 = *(a1 + 136);
  v16 = *(a1 + 144);

  *(a2 + 136) = v15;
  *(a2 + 144) = v16;
  v18 = *(a1 + 152);
  v19 = *(a1 + 160);

  result = a2;
  *(a2 + 152) = v18;
  *(a2 + 160) = v19;
  return result;
}

unint64_t sub_1B0929EB0()
{
  v2 = qword_1EB6DA380;
  if (!qword_1EB6DA380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E3218, &qword_1B0EA09F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA380);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B0929F38(void *a1)
{
  v1 = a1[6];

  v2 = a1[8];

  v3 = a1[10];

  v4 = a1[12];

  v5 = a1[14];

  v6 = a1[16];

  v7 = a1[18];

  v8 = a1[20];

  return a1;
}

uint64_t sub_1B0929FE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 108))
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

uint64_t sub_1B092A100(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 104) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B092A364()
{
  v2 = qword_1EB6E3220;
  if (!qword_1EB6E3220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E35C0, qword_1B0EA0DD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A404()
{
  v2 = qword_1EB6DBFB0;
  if (!qword_1EB6DBFB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A498()
{
  v2 = qword_1EB6DBFB8;
  if (!qword_1EB6DBFB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBFB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A52C()
{
  v2 = qword_1EB6E3230;
  if (!qword_1EB6E3230)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A5A8()
{
  v2 = qword_1EB6DE1D0;
  if (!qword_1EB6DE1D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE1D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B092A620()
{
  v2 = qword_1EB6DE200;
  if (!qword_1EB6DE200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B092A698(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  MEMORY[0x1E69E5928](v6);
  result = a2;
  *(a2 + 32) = v6;
  return result;
}

void *sub_1B092A758(void *a1)
{
  v1 = a1[1];

  v2 = a1[3];

  MEMORY[0x1E69E5920](a1[4]);
  return a1;
}

uint64_t sub_1B092A7BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B0E42E68();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B0925854(v3, a1);
}

unint64_t sub_1B092A830()
{
  v2 = qword_1EB6E3250;
  if (!qword_1EB6E3250)
  {
    sub_1B0E42E68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B092A8B0()
{

  sub_1B0E42C38();
  v3 = v0;

  if ((v3 & 0xF000000000000000) == 0xF000000000000000)
  {
    return 0;
  }

  else
  {
    return OpaquePersistedMessageIdentifier.init(rawValue:)();
  }
}

uint64_t sub_1B092AA44()
{
  v3 = 0;
  v4 = 0;
  sub_1B0E42C68();
  v2 = sub_1B0E42C48();

  v3 = v2;
  sub_1B0E42C18();
  v1 = sub_1B0E42C08();

  v4 = v1;
  sub_1B0E42C28();
  sub_1B092AADC(&v3);
  return v2;
}

uint64_t *sub_1B092AADC(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

uint64_t sub_1B092AB14@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{

  sub_1B03B2000(a1, a2);
  sub_1B0E42BF8();
  sub_1B0391D50(a1, a2);

  return (*(*(a3 - 8) + 56))(a4, 0, 1);
}

void sub_1B092AC94(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a1;
  v17 = a2;
  v15 = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  sub_1B09896FC(a1, a2, a3, a4, a5, a6, a7);
  sub_1B0989BEC(a1, a2, a3, a4, a5, a6, a7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0989D8C();
  sub_1B0E45028();

  sub_1B039E440(v14);
  sub_1B08CF7DC();
}

uint64_t (*sub_1B092AE20(uint64_t a1, int a2, int a3))(uint64_t a1, uint64_t a2, uint64_t a3)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = swift_allocObject();
  result = sub_1B0989E14;
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 36) = a3;
  return result;
}

uint64_t sub_1B092AED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v29 = a1;
  v27 = a2;
  v28 = a3;
  v26 = a4;
  v24 = a5;
  v25 = a6;
  v23 = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v17 = a7;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33E0, &qword_1B0EA1CB0);
  sub_1B09B21DC(a5, a6, sub_1B0993FA0, v16, v8, &v22);

  return v22;
}

id sub_1B092B058@<X0>(unsigned int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v13 = *(a5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v13);
  v6 = sub_1B092B158();
  v15 = sub_1B07CD4F8(a1, a2, a3, a4, v13, v6, v7);

  MEMORY[0x1E69E5920](v13);
  result = v15;
  *a6 = v15;
  return result;
}

uint64_t sub_1B092B218(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5, void (*a6)(void), uint64_t a7)
{
  v252 = a1;
  v253 = a2;
  v234 = a3;
  v254 = a4;
  v235 = a5;
  v236 = a6;
  v237 = a7;
  v249 = 0;
  v181 = sub_1B074E050;
  v182 = sub_1B03F7AE0;
  v183 = sub_1B0394C30;
  v184 = sub_1B0394C24;
  v185 = sub_1B074DFFC;
  v186 = sub_1B039BA88;
  v187 = sub_1B039BB94;
  v188 = sub_1B0394C24;
  v189 = sub_1B039BBA0;
  v190 = sub_1B039BC08;
  v191 = sub_1B06BA324;
  v192 = sub_1B074E0E4;
  v193 = sub_1B039BCF8;
  v194 = sub_1B07AB020;
  v195 = sub_1B039BC08;
  v196 = sub_1B0398F5C;
  v197 = sub_1B0398F5C;
  v198 = sub_1B0399178;
  v199 = sub_1B0398F5C;
  v200 = sub_1B0398F5C;
  v201 = sub_1B039BA94;
  v202 = sub_1B0398F5C;
  v203 = sub_1B0398F5C;
  v204 = sub_1B0399178;
  v205 = sub_1B0398F5C;
  v206 = sub_1B0398F5C;
  v207 = sub_1B03991EC;
  v208 = sub_1B0398F5C;
  v209 = sub_1B0398F5C;
  v210 = sub_1B03993BC;
  v211 = sub_1B0398F5C;
  v212 = sub_1B0398F5C;
  v213 = sub_1B039BCEC;
  v214 = sub_1B0398F5C;
  v215 = sub_1B0398F5C;
  v216 = sub_1B03991EC;
  v278 = 0;
  v277 = 0;
  v275 = 0;
  v276 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v270 = 0;
  v271 = 0;
  v269 = 0;
  v279 = 0;
  v217 = 0;
  v260 = 0;
  v232 = 0;
  v218 = type metadata accessor for InProgressMessageDownload.Completed();
  v219 = *(v218 - 8);
  v220 = v218 - 8;
  v221 = (*(v219 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v222 = v111 - v221;
  v279 = v111 - v221;
  v223 = sub_1B0E439A8();
  v224 = *(v223 - 8);
  v225 = v223 - 8;
  v226 = (*(v224 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v232);
  v227 = v111 - v226;
  v228 = (*(*(type metadata accessor for MessagesBeingDownloaded.PopResult() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v232);
  v229 = v111 - v228;
  v230 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v231 = (v111 - v230);
  v278 = v111 - v230;
  v233 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v232);
  v247 = v111 - v233;
  v238 = _s6LoggerVMa_1();
  v244 = *(*(v238 - 8) + 64);
  v239 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v252);
  v240 = v111 - v239;
  v241 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v242 = v111 - v241;
  v243 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v245 = v111 - v243;
  v246 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v248 = v111 - v246;
  v277 = v111 - v246;
  v275 = v13;
  v276 = v14;
  v274 = v15 & 1;
  v273 = v16;
  v272 = v17;
  v270 = v18;
  v271 = v19;
  v269 = v7;
  sub_1B0394784(v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v247, v252, v253, v248);
  v250 = v7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  v251 = &v268;
  swift_beginAccess();
  v255 = *v250;
  v256 = *(v250 + 8);
  v257 = *(v250 + 16);
  v258 = *(v250 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v259 = sub_1B092D7D0(v252, v253, v254, v255, v256, v257, v258);

  if (v259)
  {
    v177 = &v261;
    swift_beginAccess();
    v178 = *(v180 + 64);

    swift_endAccess();
    v179 = sub_1B08B4670(v252, v253, v254, v248);

    if (v179)
    {
      v176 = v179;
      v175 = v179;
      v260 = v179;
      sub_1B092D904(v252);
    }
  }

  v21 = v180;
  v169 = &v267;
  swift_beginAccess();
  v173 = *(v21 + 64);

  swift_endAccess();
  v170 = sub_1B092AE20(v252, v253, v254);
  v172 = v22;

  v171 = *(v180 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

  sub_1B08B12BC(v252, v253, v254, v234 & 1, v235, v170, v172, v171, v231, v248);

  sub_1B0989E28(v231, v229);
  v174 = (*(v219 + 48))(v229, 2, v218);
  if (v174)
  {
    if (v174 == 1)
    {
      (*(v224 + 16))(v227, v248, v223);
      sub_1B074B69C(v248, v245);
      sub_1B074B69C(v245, v242);
      sub_1B074E41C(v245, v240);
      v23 = (v242 + *(v238 + 20));
      v121 = *v23;
      v122 = *(v23 + 1);
      v123 = *(v23 + 1);
      v124 = *(v23 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v242);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v120 = 36;
      v140 = 7;
      v24 = swift_allocObject();
      v25 = v122;
      v26 = v123;
      v27 = v124;
      v127 = v24;
      *(v24 + 16) = v121;
      *(v24 + 20) = v25;
      *(v24 + 24) = v26;
      *(v24 + 32) = v27;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = swift_allocObject();
      v29 = v122;
      v30 = v123;
      v31 = v124;
      v119 = v28;
      *(v28 + 16) = v121;
      *(v28 + 20) = v29;
      *(v28 + 24) = v30;
      *(v28 + 32) = v31;

      v139 = 32;
      v32 = swift_allocObject();
      v33 = v119;
      v131 = v32;
      *(v32 + 16) = v181;
      *(v32 + 24) = v33;
      sub_1B0394868();
      sub_1B0394868();

      v34 = swift_allocObject();
      v35 = v122;
      v36 = v123;
      v37 = v124;
      v38 = v34;
      v39 = v240;
      v135 = v38;
      *(v38 + 16) = v121;
      *(v38 + 20) = v35;
      *(v38 + 24) = v36;
      *(v38 + 32) = v37;
      sub_1B074B764(v39);
      v125 = swift_allocObject();
      *(v125 + 16) = v254;

      v40 = swift_allocObject();
      v41 = v125;
      v141 = v40;
      *(v40 + 16) = v182;
      *(v40 + 24) = v41;

      v167 = sub_1B0E43988();
      v168 = sub_1B0E458E8();
      v137 = 17;
      v143 = swift_allocObject();
      v129 = 16;
      *(v143 + 16) = 16;
      v144 = swift_allocObject();
      v138 = 4;
      *(v144 + 16) = 4;
      v42 = swift_allocObject();
      v126 = v42;
      *(v42 + 16) = v183;
      *(v42 + 24) = 0;
      v43 = swift_allocObject();
      v44 = v126;
      v145 = v43;
      *(v43 + 16) = v184;
      *(v43 + 24) = v44;
      v146 = swift_allocObject();
      *(v146 + 16) = 0;
      v147 = swift_allocObject();
      *(v147 + 16) = 1;
      v45 = swift_allocObject();
      v46 = v127;
      v128 = v45;
      *(v45 + 16) = v185;
      *(v45 + 24) = v46;
      v47 = swift_allocObject();
      v48 = v128;
      v148 = v47;
      *(v47 + 16) = v186;
      *(v47 + 24) = v48;
      v149 = swift_allocObject();
      *(v149 + 16) = v129;
      v150 = swift_allocObject();
      *(v150 + 16) = v138;
      v49 = swift_allocObject();
      v130 = v49;
      *(v49 + 16) = v187;
      *(v49 + 24) = 0;
      v50 = swift_allocObject();
      v51 = v130;
      v151 = v50;
      *(v50 + 16) = v188;
      *(v50 + 24) = v51;
      v152 = swift_allocObject();
      *(v152 + 16) = 0;
      v153 = swift_allocObject();
      *(v153 + 16) = v138;
      v52 = swift_allocObject();
      v53 = v131;
      v132 = v52;
      *(v52 + 16) = v189;
      *(v52 + 24) = v53;
      v54 = swift_allocObject();
      v55 = v132;
      v154 = v54;
      *(v54 + 16) = v190;
      *(v54 + 24) = v55;
      v155 = swift_allocObject();
      *(v155 + 16) = 112;
      v156 = swift_allocObject();
      v134 = 8;
      *(v156 + 16) = 8;
      v133 = swift_allocObject();
      *(v133 + 16) = 0x786F626C69616DLL;
      v56 = swift_allocObject();
      v57 = v133;
      v157 = v56;
      *(v56 + 16) = v191;
      *(v56 + 24) = v57;
      v158 = swift_allocObject();
      *(v158 + 16) = 37;
      v159 = swift_allocObject();
      *(v159 + 16) = v134;
      v58 = swift_allocObject();
      v59 = v135;
      v136 = v58;
      *(v58 + 16) = v192;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v136;
      v160 = v60;
      *(v60 + 16) = v193;
      *(v60 + 24) = v61;
      v161 = swift_allocObject();
      *(v161 + 16) = 0;
      v162 = swift_allocObject();
      *(v162 + 16) = v138;
      v62 = swift_allocObject();
      v63 = v141;
      v142 = v62;
      *(v62 + 16) = v194;
      *(v62 + 24) = v63;
      v64 = swift_allocObject();
      v65 = v142;
      v164 = v64;
      *(v64 + 16) = v195;
      *(v64 + 24) = v65;
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v163 = sub_1B0E46A48();
      v165 = v66;

      v67 = v143;
      v68 = v165;
      *v165 = v196;
      v68[1] = v67;

      v69 = v144;
      v70 = v165;
      v165[2] = v197;
      v70[3] = v69;

      v71 = v145;
      v72 = v165;
      v165[4] = v198;
      v72[5] = v71;

      v73 = v146;
      v74 = v165;
      v165[6] = v199;
      v74[7] = v73;

      v75 = v147;
      v76 = v165;
      v165[8] = v200;
      v76[9] = v75;

      v77 = v148;
      v78 = v165;
      v165[10] = v201;
      v78[11] = v77;

      v79 = v149;
      v80 = v165;
      v165[12] = v202;
      v80[13] = v79;

      v81 = v150;
      v82 = v165;
      v165[14] = v203;
      v82[15] = v81;

      v83 = v151;
      v84 = v165;
      v165[16] = v204;
      v84[17] = v83;

      v85 = v152;
      v86 = v165;
      v165[18] = v205;
      v86[19] = v85;

      v87 = v153;
      v88 = v165;
      v165[20] = v206;
      v88[21] = v87;

      v89 = v154;
      v90 = v165;
      v165[22] = v207;
      v90[23] = v89;

      v91 = v155;
      v92 = v165;
      v165[24] = v208;
      v92[25] = v91;

      v93 = v156;
      v94 = v165;
      v165[26] = v209;
      v94[27] = v93;

      v95 = v157;
      v96 = v165;
      v165[28] = v210;
      v96[29] = v95;

      v97 = v158;
      v98 = v165;
      v165[30] = v211;
      v98[31] = v97;

      v99 = v159;
      v100 = v165;
      v165[32] = v212;
      v100[33] = v99;

      v101 = v160;
      v102 = v165;
      v165[34] = v213;
      v102[35] = v101;

      v103 = v161;
      v104 = v165;
      v165[36] = v214;
      v104[37] = v103;

      v105 = v162;
      v106 = v165;
      v165[38] = v215;
      v106[39] = v105;

      v107 = v164;
      v108 = v165;
      v165[40] = v216;
      v108[41] = v107;
      sub_1B0394964();

      if (os_log_type_enabled(v167, v168))
      {
        v109 = v217;
        v112 = sub_1B0E45D78();
        v111[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v113 = sub_1B03949A8(0);
        v114 = sub_1B03949A8(1);
        v115 = &v266;
        v266 = v112;
        v116 = &v265;
        v265 = v113;
        v117 = &v264;
        v264 = v114;
        sub_1B0394A48(3, &v266);
        sub_1B0394A48(7, v115);
        v262 = v196;
        v263 = v143;
        sub_1B03949FC(&v262, v115, v116, v117);
        v118 = v109;
        if (v109)
        {

          __break(1u);
        }

        else
        {
          v262 = v197;
          v263 = v144;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[18] = 0;
          v262 = v198;
          v263 = v145;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[17] = 0;
          v262 = v199;
          v263 = v146;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[16] = 0;
          v262 = v200;
          v263 = v147;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[15] = 0;
          v262 = v201;
          v263 = v148;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[14] = 0;
          v262 = v202;
          v263 = v149;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[13] = 0;
          v262 = v203;
          v263 = v150;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[12] = 0;
          v262 = v204;
          v263 = v151;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[11] = 0;
          v262 = v205;
          v263 = v152;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[10] = 0;
          v262 = v206;
          v263 = v153;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[9] = 0;
          v262 = v207;
          v263 = v154;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[8] = 0;
          v262 = v208;
          v263 = v155;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[7] = 0;
          v262 = v209;
          v263 = v156;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[6] = 0;
          v262 = v210;
          v263 = v157;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[5] = 0;
          v262 = v211;
          v263 = v158;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[4] = 0;
          v262 = v212;
          v263 = v159;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[3] = 0;
          v262 = v213;
          v263 = v160;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[2] = 0;
          v262 = v214;
          v263 = v161;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[1] = 0;
          v262 = v215;
          v263 = v162;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          v111[0] = 0;
          v262 = v216;
          v263 = v164;
          sub_1B03949FC(&v262, &v266, &v265, &v264);
          _os_log_impl(&dword_1B0389000, v167, v168, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for UID %u, but no such message in-progress.", v112, 0x31u);
          sub_1B03998A8(v113);
          sub_1B03998A8(v114);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v167);
      (*(v224 + 8))(v227, v223);
      sub_1B09343F0(v252, v253, v254, v234 & 1, v248);

      v236(v235);
    }
  }

  else
  {
    sub_1B07B02D8(v229, v222);
    v279 = v222;
    sub_1B0935A80(v252, v253, v222, 1, v236, v237, v248);
    sub_1B08BED00(v222);
  }

  sub_1B098A548(v231);
  return sub_1B074B764(v248);
}

uint64_t sub_1B092D7D0(uint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v13 = a2;
  v11 = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10[0] = a7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0989D8C();
  v8 = sub_1B0E45028();

  sub_1B039E440(v10);
  return v8 & 1;
}

uint64_t sub_1B092D904(uint64_t a1)
{
  v965 = MEMORY[0x1EEE9AC00](a1);
  v966 = v2;
  v963 = v3;
  v760 = v1;
  v964 = 0;
  v761 = sub_1B0938030;
  v762 = sub_1B074E050;
  v763 = sub_1B07AAFA4;
  v764 = sub_1B0394C30;
  v765 = sub_1B0394C24;
  v766 = sub_1B074DFFC;
  v767 = sub_1B039BA88;
  v768 = sub_1B039BB94;
  v769 = sub_1B0394C24;
  v770 = sub_1B039BBA0;
  v771 = sub_1B039BC08;
  v772 = 0x786F626C69616DLL;
  v773 = sub_1B06BA324;
  v774 = sub_1B074E0E4;
  v775 = sub_1B039BCF8;
  v776 = sub_1B07AB020;
  v777 = sub_1B039BC08;
  v778 = sub_1B0398F5C;
  v779 = sub_1B0398F5C;
  v780 = sub_1B0399178;
  v781 = sub_1B0398F5C;
  v782 = sub_1B0398F5C;
  v783 = sub_1B039BA94;
  v784 = sub_1B0398F5C;
  v785 = sub_1B0398F5C;
  v786 = sub_1B0399178;
  v787 = sub_1B0398F5C;
  v788 = sub_1B0398F5C;
  v789 = sub_1B03991EC;
  v790 = sub_1B0398F5C;
  v791 = sub_1B0398F5C;
  v792 = sub_1B03993BC;
  v793 = sub_1B0398F5C;
  v794 = sub_1B0398F5C;
  v795 = sub_1B039BCEC;
  v796 = sub_1B0398F5C;
  v797 = sub_1B0398F5C;
  v798 = sub_1B03991EC;
  v799 = sub_1B074E050;
  v800 = sub_1B07AAFA4;
  v801 = sub_1B0394C24;
  v802 = sub_1B074DFFC;
  v803 = sub_1B039BA88;
  v804 = sub_1B0394C24;
  v805 = sub_1B039BBA0;
  v806 = sub_1B039BC08;
  v807 = sub_1B06BA324;
  v808 = sub_1B074E0E4;
  v809 = sub_1B039BCF8;
  v810 = sub_1B07AB020;
  v811 = sub_1B039BC08;
  v812 = sub_1B0398F5C;
  v813 = sub_1B0398F5C;
  v814 = sub_1B0399178;
  v815 = sub_1B0398F5C;
  v816 = sub_1B0398F5C;
  v817 = sub_1B039BA94;
  v818 = sub_1B0398F5C;
  v819 = sub_1B0398F5C;
  v820 = sub_1B0399178;
  v821 = sub_1B0398F5C;
  v822 = sub_1B0398F5C;
  v823 = sub_1B03991EC;
  v824 = sub_1B0398F5C;
  v825 = sub_1B0398F5C;
  v826 = sub_1B03993BC;
  v827 = sub_1B0398F5C;
  v828 = sub_1B0398F5C;
  v829 = sub_1B039BCEC;
  v830 = sub_1B0398F5C;
  v831 = sub_1B0398F5C;
  v832 = sub_1B03991EC;
  v833 = sub_1B074E050;
  v834 = sub_1B07AAFA4;
  v835 = sub_1B0394C24;
  v836 = sub_1B074DFFC;
  v837 = sub_1B039BA88;
  v838 = sub_1B0394C24;
  v839 = sub_1B039BBA0;
  v840 = sub_1B039BC08;
  v841 = sub_1B06BA324;
  v842 = sub_1B074E0E4;
  v843 = sub_1B039BCF8;
  v844 = sub_1B07AB020;
  v845 = sub_1B039BC08;
  v846 = sub_1B07B07A0;
  v847 = sub_1B03B0DF8;
  v848 = sub_1B0398F5C;
  v849 = sub_1B0398F5C;
  v850 = sub_1B0399178;
  v851 = sub_1B0398F5C;
  v852 = sub_1B0398F5C;
  v853 = sub_1B039BA94;
  v854 = sub_1B0398F5C;
  v855 = sub_1B0398F5C;
  v856 = sub_1B0399178;
  v857 = sub_1B0398F5C;
  v858 = sub_1B0398F5C;
  v859 = sub_1B03991EC;
  v860 = sub_1B0398F5C;
  v861 = sub_1B0398F5C;
  v862 = sub_1B03993BC;
  v863 = sub_1B0398F5C;
  v864 = sub_1B0398F5C;
  v865 = sub_1B039BCEC;
  v866 = sub_1B0398F5C;
  v867 = sub_1B0398F5C;
  v868 = sub_1B03991EC;
  v869 = sub_1B0398F5C;
  v870 = sub_1B0398F5C;
  v871 = sub_1B0399260;
  v872 = sub_1B074E050;
  v873 = sub_1B07AAFA4;
  v874 = sub_1B0394C24;
  v875 = sub_1B074DFFC;
  v876 = sub_1B039BA88;
  v877 = sub_1B0394C24;
  v878 = sub_1B039BBA0;
  v879 = sub_1B039BC08;
  v880 = sub_1B06BA324;
  v881 = sub_1B074E0E4;
  v882 = sub_1B039BCF8;
  v883 = sub_1B07AB020;
  v884 = sub_1B039BC08;
  v885 = sub_1B0398F5C;
  v886 = sub_1B0398F5C;
  v887 = sub_1B0399178;
  v888 = sub_1B0398F5C;
  v889 = sub_1B0398F5C;
  v890 = sub_1B039BA94;
  v891 = sub_1B0398F5C;
  v892 = sub_1B0398F5C;
  v893 = sub_1B0399178;
  v894 = sub_1B0398F5C;
  v895 = sub_1B0398F5C;
  v896 = sub_1B03991EC;
  v897 = sub_1B0398F5C;
  v898 = sub_1B0398F5C;
  v899 = sub_1B03993BC;
  v900 = sub_1B0398F5C;
  v901 = sub_1B0398F5C;
  v902 = sub_1B039BCEC;
  v903 = sub_1B0398F5C;
  v904 = sub_1B0398F5C;
  v905 = sub_1B03991EC;
  v906 = sub_1B098FE40;
  v907 = sub_1B098FE40;
  v908 = sub_1B098FE40;
  v1019 = 0;
  v1018 = 0;
  v1017 = 0;
  v1016 = 0;
  v1014 = 0;
  v1015 = 0;
  v1013 = 0;
  v1012 = 0;
  v909 = 0;
  v1005[0] = 0;
  v1005[1] = 0;
  v999 = 0;
  v1000 = 0;
  v993[0] = 0;
  v993[1] = 0;
  v987 = 0;
  v988 = 0;
  v981[0] = 0;
  v981[1] = 0;
  v975 = 0;
  v976 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
  v910 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v911 = v397 - v910;
  v950 = 0;
  v912 = sub_1B0E439A8();
  v913 = *(v912 - 8);
  v914 = v912 - 8;
  v915 = (*(v913 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v950);
  v916 = v397 - v915;
  v917 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v918 = v397 - v917;
  v919 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v920 = v397 - v919;
  v921 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v922 = v397 - v921;
  v923 = type metadata accessor for Message(v11);
  v924 = *(v923 - 8);
  v925 = v923 - 8;
  v926 = (*(v924 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v950);
  v927 = v397 - v926;
  v1019 = v397 - v926;
  v12 = type metadata accessor for InProgressMessageDownload.Result();
  v928 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v929 = v397 - v928;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  v930 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v931 = v397 - v930;
  v932 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v950);
  v933 = v397 - v932;
  v934 = sub_1B0E443C8();
  v936 = *(v934 - 8);
  v935 = v934 - 8;
  v937 = v936;
  v938 = *(v936 + 64);
  v939 = (v938 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v934);
  v940 = v397 - v939;
  v941 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v397 - v939);
  v942 = v397 - v941;
  v1018 = v397 - v941;
  v943 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v950);
  v944 = (v397 - v943);
  v945 = type metadata accessor for InProgressMessageDownload.Completed();
  v946 = *(v945 - 8);
  v947 = v945 - 8;
  v948 = (*(v946 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v950);
  v949 = (v397 - v948);
  v1017 = v397 - v948;
  v951 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v950);
  v961 = v397 - v951;
  v952 = _s6LoggerVMa_1();
  v958 = *(*(v952 - 8) + 64);
  v953 = (v958 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v965);
  v954 = v397 - v953;
  v955 = (v958 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v956 = v397 - v955;
  v957 = (v958 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v959 = v397 - v957;
  v960 = (v958 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v962 = v397 - v960;
  v1016 = v397 - v960;
  v1014 = v18;
  v1015 = v19;
  v1013 = v20;
  v1012 = v1;
  sub_1B0394784(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B91DC(v961, v965, v966, v962);
  v967 = *(v963 + 16);
  v968 = &v1011;
  swift_beginAccess();
  v969 = v1020;
  sub_1B0937E20(v965, v966, v967, v1020);
  swift_endAccess();
  memcpy(__dst, v969, sizeof(__dst));
  if (__dst[3])
  {
    memcpy(v1022, __dst, sizeof(v1022));
    v758 = *(v760 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

    v759 = 1;
    sub_1B076CC6C(v761);

    if ((*(v946 + 48))(v944, v759, v945) == 1)
    {
      v218 = v918;
      sub_1B08BE984(v944);
      (*(v913 + 16))(v218, v962, v912);
      sub_1B074B69C(v962, v959);
      sub_1B074B69C(v959, v956);
      sub_1B074E41C(v959, v954);
      v219 = (v956 + *(v952 + 20));
      v503 = *v219;
      v504 = *(v219 + 1);
      v505 = *(v219 + 1);
      v506 = *(v219 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v956);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v502 = 36;
      v521 = 7;
      v220 = swift_allocObject();
      v221 = v504;
      v222 = v505;
      v223 = v506;
      v508 = v220;
      *(v220 + 16) = v503;
      *(v220 + 20) = v221;
      *(v220 + 24) = v222;
      *(v220 + 32) = v223;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v224 = swift_allocObject();
      v225 = v504;
      v226 = v505;
      v227 = v506;
      v501 = v224;
      *(v224 + 16) = v503;
      *(v224 + 20) = v225;
      *(v224 + 24) = v226;
      *(v224 + 32) = v227;

      v520 = 32;
      v228 = swift_allocObject();
      v229 = v501;
      v512 = v228;
      *(v228 + 16) = v762;
      *(v228 + 24) = v229;
      sub_1B0394868();
      sub_1B0394868();

      v230 = swift_allocObject();
      v231 = v504;
      v232 = v505;
      v233 = v506;
      v234 = v230;
      v235 = v954;
      v516 = v234;
      *(v234 + 16) = v503;
      *(v234 + 20) = v231;
      *(v234 + 24) = v232;
      *(v234 + 32) = v233;
      sub_1B074B764(v235);

      v236 = swift_allocObject();
      v237 = v963;
      v522 = v236;
      *(v236 + 16) = v763;
      *(v236 + 24) = v237;

      v548 = sub_1B0E43988();
      v549 = sub_1B0E458E8();
      v518 = 17;
      v524 = swift_allocObject();
      v510 = 16;
      *(v524 + 16) = 16;
      v525 = swift_allocObject();
      v519 = 4;
      *(v525 + 16) = 4;
      v238 = swift_allocObject();
      v507 = v238;
      *(v238 + 16) = v764;
      *(v238 + 24) = 0;
      v239 = swift_allocObject();
      v240 = v507;
      v526 = v239;
      *(v239 + 16) = v765;
      *(v239 + 24) = v240;
      v527 = swift_allocObject();
      *(v527 + 16) = 0;
      v528 = swift_allocObject();
      *(v528 + 16) = 1;
      v241 = swift_allocObject();
      v242 = v508;
      v509 = v241;
      *(v241 + 16) = v766;
      *(v241 + 24) = v242;
      v243 = swift_allocObject();
      v244 = v509;
      v529 = v243;
      *(v243 + 16) = v767;
      *(v243 + 24) = v244;
      v530 = swift_allocObject();
      *(v530 + 16) = v510;
      v531 = swift_allocObject();
      *(v531 + 16) = v519;
      v245 = swift_allocObject();
      v511 = v245;
      *(v245 + 16) = v768;
      *(v245 + 24) = 0;
      v246 = swift_allocObject();
      v247 = v511;
      v532 = v246;
      *(v246 + 16) = v769;
      *(v246 + 24) = v247;
      v533 = swift_allocObject();
      *(v533 + 16) = 0;
      v534 = swift_allocObject();
      *(v534 + 16) = v519;
      v248 = swift_allocObject();
      v249 = v512;
      v513 = v248;
      *(v248 + 16) = v770;
      *(v248 + 24) = v249;
      v250 = swift_allocObject();
      v251 = v513;
      v535 = v250;
      *(v250 + 16) = v771;
      *(v250 + 24) = v251;
      v536 = swift_allocObject();
      *(v536 + 16) = 112;
      v537 = swift_allocObject();
      v515 = 8;
      *(v537 + 16) = 8;
      v514 = swift_allocObject();
      *(v514 + 16) = v772;
      v252 = swift_allocObject();
      v253 = v514;
      v538 = v252;
      *(v252 + 16) = v773;
      *(v252 + 24) = v253;
      v539 = swift_allocObject();
      *(v539 + 16) = 37;
      v540 = swift_allocObject();
      *(v540 + 16) = v515;
      v254 = swift_allocObject();
      v255 = v516;
      v517 = v254;
      *(v254 + 16) = v774;
      *(v254 + 24) = v255;
      v256 = swift_allocObject();
      v257 = v517;
      v541 = v256;
      *(v256 + 16) = v775;
      *(v256 + 24) = v257;
      v542 = swift_allocObject();
      *(v542 + 16) = 0;
      v543 = swift_allocObject();
      *(v543 + 16) = v519;
      v258 = swift_allocObject();
      v259 = v522;
      v523 = v258;
      *(v258 + 16) = v776;
      *(v258 + 24) = v259;
      v260 = swift_allocObject();
      v261 = v523;
      v545 = v260;
      *(v260 + 16) = v777;
      *(v260 + 24) = v261;
      v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v544 = sub_1B0E46A48();
      v546 = v262;

      v263 = v524;
      v264 = v546;
      *v546 = v778;
      v264[1] = v263;

      v265 = v525;
      v266 = v546;
      v546[2] = v779;
      v266[3] = v265;

      v267 = v526;
      v268 = v546;
      v546[4] = v780;
      v268[5] = v267;

      v269 = v527;
      v270 = v546;
      v546[6] = v781;
      v270[7] = v269;

      v271 = v528;
      v272 = v546;
      v546[8] = v782;
      v272[9] = v271;

      v273 = v529;
      v274 = v546;
      v546[10] = v783;
      v274[11] = v273;

      v275 = v530;
      v276 = v546;
      v546[12] = v784;
      v276[13] = v275;

      v277 = v531;
      v278 = v546;
      v546[14] = v785;
      v278[15] = v277;

      v279 = v532;
      v280 = v546;
      v546[16] = v786;
      v280[17] = v279;

      v281 = v533;
      v282 = v546;
      v546[18] = v787;
      v282[19] = v281;

      v283 = v534;
      v284 = v546;
      v546[20] = v788;
      v284[21] = v283;

      v285 = v535;
      v286 = v546;
      v546[22] = v789;
      v286[23] = v285;

      v287 = v536;
      v288 = v546;
      v546[24] = v790;
      v288[25] = v287;

      v289 = v537;
      v290 = v546;
      v546[26] = v791;
      v290[27] = v289;

      v291 = v538;
      v292 = v546;
      v546[28] = v792;
      v292[29] = v291;

      v293 = v539;
      v294 = v546;
      v546[30] = v793;
      v294[31] = v293;

      v295 = v540;
      v296 = v546;
      v546[32] = v794;
      v296[33] = v295;

      v297 = v541;
      v298 = v546;
      v546[34] = v795;
      v298[35] = v297;

      v299 = v542;
      v300 = v546;
      v546[36] = v796;
      v300[37] = v299;

      v301 = v543;
      v302 = v546;
      v546[38] = v797;
      v302[39] = v301;

      v303 = v545;
      v304 = v546;
      v546[40] = v798;
      v304[41] = v303;
      sub_1B0394964();

      if (os_log_type_enabled(v548, v549))
      {
        v305 = v909;
        v494 = sub_1B0E45D78();
        v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v495 = sub_1B03949A8(0);
        v496 = sub_1B03949A8(1);
        v497 = &v998;
        v998 = v494;
        v498 = &v997;
        v997 = v495;
        v499 = &v996;
        v996 = v496;
        sub_1B0394A48(3, &v998);
        sub_1B0394A48(7, v497);
        v994 = v778;
        v995 = v524;
        sub_1B03949FC(&v994, v497, v498, v499);
        v500 = v305;
        if (v305)
        {

          __break(1u);
        }

        else
        {
          v994 = v779;
          v995 = v525;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v491 = 0;
          v994 = v780;
          v995 = v526;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v490 = 0;
          v994 = v781;
          v995 = v527;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v489 = 0;
          v994 = v782;
          v995 = v528;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v488 = 0;
          v994 = v783;
          v995 = v529;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v487 = 0;
          v994 = v784;
          v995 = v530;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v486 = 0;
          v994 = v785;
          v995 = v531;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v485 = 0;
          v994 = v786;
          v995 = v532;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v484 = 0;
          v994 = v787;
          v995 = v533;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v483 = 0;
          v994 = v788;
          v995 = v534;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v482 = 0;
          v994 = v789;
          v995 = v535;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v481 = 0;
          v994 = v790;
          v995 = v536;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v480 = 0;
          v994 = v791;
          v995 = v537;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v479 = 0;
          v994 = v792;
          v995 = v538;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v478 = 0;
          v994 = v793;
          v995 = v539;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v477 = 0;
          v994 = v794;
          v995 = v540;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v476 = 0;
          v994 = v795;
          v995 = v541;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v475 = 0;
          v994 = v796;
          v995 = v542;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v474 = 0;
          v994 = v797;
          v995 = v543;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v473 = 0;
          v994 = v798;
          v995 = v545;
          sub_1B03949FC(&v994, &v998, &v997, &v996);
          v472 = 0;
          _os_log_impl(&dword_1B0389000, v548, v549, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u), but no message data found.", v494, 0x31u);
          sub_1B03998A8(v495);
          sub_1B03998A8(v496);
          sub_1B0E45D58();

          v492 = v472;
        }
      }

      else
      {
        v306 = v909;

        v492 = v306;
      }

      v470 = v492;
      MEMORY[0x1E69E5920](v548);
      (*(v913 + 8))(v918, v912);
      v1025 = v1022[7];
      sub_1B074E7A8(&v1025, &v1004);
      v1003 = v1025;
      v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
      sub_1B098FD6C();
      sub_1B0E45798();
      for (i = v470; ; i = v466)
      {
        v466 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
        sub_1B0E46518();
        v467 = v1001;
        v468 = v1002;
        if (v1001)
        {
          v464 = v467;
          v465 = v468;
          v461 = v468;
          v460 = v467;
          v307 = swift_allocObject();
          v308 = v461;
          v309 = v906;
          *(v307 + 16) = v460;
          *(v307 + 24) = v308;
          v462 = v309;
          v463 = v307;
        }

        else
        {
          v462 = 0;
          v463 = 0;
        }

        v458 = v463;
        v459 = v462;
        if (!v462)
        {
          break;
        }

        v456 = v459;
        v457 = v458;
        v455 = v458;
        v454 = v459;
        v999 = v459;
        v1000 = v458;

        (*(v924 + 56))(v911, 1, 1, v923);
        v454(v911);
        sub_1B07AF920(v911);
      }

      sub_1B039E440(v1005);
      sub_1B098FDF4(v1022);
      return sub_1B074B764(v962);
    }

    else
    {
      sub_1B07B02D8(v944, v949);
      v757 = *(v760 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

      sub_1B0798464(v757, v962, v929);

      sub_1B07AEE78(v929, v931);
      sub_1B07AF3D4(v929);
      v22 = type metadata accessor for InProgressMessageDownload.EMLX();
      if ((*(*(v22 - 8) + 48))(v931, 1) == 1)
      {
        sub_1B07AF3D4(v931);
        (*(v936 + 56))(v933, 1, 1, v934);
      }

      else
      {
        (*(v936 + 16))(v933, v931, v934);
        sub_1B07AF320(v931);
        (*(v936 + 56))(v933, 0, 1, v934);
      }

      if ((*(v936 + 48))(v933, 1, v934) == 1)
      {
        v126 = v920;
        sub_1B075B1E0(v933);
        (*(v913 + 16))(v126, v962, v912);
        sub_1B074B69C(v962, v959);
        sub_1B074B69C(v959, v956);
        sub_1B074E41C(v959, v954);
        v127 = (v956 + *(v952 + 20));
        v599 = *v127;
        v600 = *(v127 + 1);
        v601 = *(v127 + 1);
        v602 = *(v127 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v956);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v598 = 36;
        v617 = 7;
        v128 = swift_allocObject();
        v129 = v600;
        v130 = v601;
        v131 = v602;
        v604 = v128;
        *(v128 + 16) = v599;
        *(v128 + 20) = v129;
        *(v128 + 24) = v130;
        *(v128 + 32) = v131;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v132 = swift_allocObject();
        v133 = v600;
        v134 = v601;
        v135 = v602;
        v597 = v132;
        *(v132 + 16) = v599;
        *(v132 + 20) = v133;
        *(v132 + 24) = v134;
        *(v132 + 32) = v135;

        v616 = 32;
        v136 = swift_allocObject();
        v137 = v597;
        v608 = v136;
        *(v136 + 16) = v799;
        *(v136 + 24) = v137;
        sub_1B0394868();
        sub_1B0394868();

        v138 = swift_allocObject();
        v139 = v600;
        v140 = v601;
        v141 = v602;
        v142 = v138;
        v143 = v954;
        v612 = v142;
        *(v142 + 16) = v599;
        *(v142 + 20) = v139;
        *(v142 + 24) = v140;
        *(v142 + 32) = v141;
        sub_1B074B764(v143);

        v144 = swift_allocObject();
        v145 = v963;
        v618 = v144;
        *(v144 + 16) = v800;
        *(v144 + 24) = v145;

        v644 = sub_1B0E43988();
        v645 = sub_1B0E458E8();
        v614 = 17;
        v620 = swift_allocObject();
        v606 = 16;
        *(v620 + 16) = 16;
        v621 = swift_allocObject();
        v615 = 4;
        *(v621 + 16) = 4;
        v146 = swift_allocObject();
        v603 = v146;
        *(v146 + 16) = v764;
        *(v146 + 24) = 0;
        v147 = swift_allocObject();
        v148 = v603;
        v622 = v147;
        *(v147 + 16) = v801;
        *(v147 + 24) = v148;
        v623 = swift_allocObject();
        *(v623 + 16) = 0;
        v624 = swift_allocObject();
        *(v624 + 16) = 1;
        v149 = swift_allocObject();
        v150 = v604;
        v605 = v149;
        *(v149 + 16) = v802;
        *(v149 + 24) = v150;
        v151 = swift_allocObject();
        v152 = v605;
        v625 = v151;
        *(v151 + 16) = v803;
        *(v151 + 24) = v152;
        v626 = swift_allocObject();
        *(v626 + 16) = v606;
        v627 = swift_allocObject();
        *(v627 + 16) = v615;
        v153 = swift_allocObject();
        v607 = v153;
        *(v153 + 16) = v768;
        *(v153 + 24) = 0;
        v154 = swift_allocObject();
        v155 = v607;
        v628 = v154;
        *(v154 + 16) = v804;
        *(v154 + 24) = v155;
        v629 = swift_allocObject();
        *(v629 + 16) = 0;
        v630 = swift_allocObject();
        *(v630 + 16) = v615;
        v156 = swift_allocObject();
        v157 = v608;
        v609 = v156;
        *(v156 + 16) = v805;
        *(v156 + 24) = v157;
        v158 = swift_allocObject();
        v159 = v609;
        v631 = v158;
        *(v158 + 16) = v806;
        *(v158 + 24) = v159;
        v632 = swift_allocObject();
        *(v632 + 16) = 112;
        v633 = swift_allocObject();
        v611 = 8;
        *(v633 + 16) = 8;
        v610 = swift_allocObject();
        *(v610 + 16) = v772;
        v160 = swift_allocObject();
        v161 = v610;
        v634 = v160;
        *(v160 + 16) = v807;
        *(v160 + 24) = v161;
        v635 = swift_allocObject();
        *(v635 + 16) = 37;
        v636 = swift_allocObject();
        *(v636 + 16) = v611;
        v162 = swift_allocObject();
        v163 = v612;
        v613 = v162;
        *(v162 + 16) = v808;
        *(v162 + 24) = v163;
        v164 = swift_allocObject();
        v165 = v613;
        v637 = v164;
        *(v164 + 16) = v809;
        *(v164 + 24) = v165;
        v638 = swift_allocObject();
        *(v638 + 16) = 0;
        v639 = swift_allocObject();
        *(v639 + 16) = v615;
        v166 = swift_allocObject();
        v167 = v618;
        v619 = v166;
        *(v166 + 16) = v810;
        *(v166 + 24) = v167;
        v168 = swift_allocObject();
        v169 = v619;
        v641 = v168;
        *(v168 + 16) = v811;
        *(v168 + 24) = v169;
        v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v640 = sub_1B0E46A48();
        v642 = v170;

        v171 = v620;
        v172 = v642;
        *v642 = v812;
        v172[1] = v171;

        v173 = v621;
        v174 = v642;
        v642[2] = v813;
        v174[3] = v173;

        v175 = v622;
        v176 = v642;
        v642[4] = v814;
        v176[5] = v175;

        v177 = v623;
        v178 = v642;
        v642[6] = v815;
        v178[7] = v177;

        v179 = v624;
        v180 = v642;
        v642[8] = v816;
        v180[9] = v179;

        v181 = v625;
        v182 = v642;
        v642[10] = v817;
        v182[11] = v181;

        v183 = v626;
        v184 = v642;
        v642[12] = v818;
        v184[13] = v183;

        v185 = v627;
        v186 = v642;
        v642[14] = v819;
        v186[15] = v185;

        v187 = v628;
        v188 = v642;
        v642[16] = v820;
        v188[17] = v187;

        v189 = v629;
        v190 = v642;
        v642[18] = v821;
        v190[19] = v189;

        v191 = v630;
        v192 = v642;
        v642[20] = v822;
        v192[21] = v191;

        v193 = v631;
        v194 = v642;
        v642[22] = v823;
        v194[23] = v193;

        v195 = v632;
        v196 = v642;
        v642[24] = v824;
        v196[25] = v195;

        v197 = v633;
        v198 = v642;
        v642[26] = v825;
        v198[27] = v197;

        v199 = v634;
        v200 = v642;
        v642[28] = v826;
        v200[29] = v199;

        v201 = v635;
        v202 = v642;
        v642[30] = v827;
        v202[31] = v201;

        v203 = v636;
        v204 = v642;
        v642[32] = v828;
        v204[33] = v203;

        v205 = v637;
        v206 = v642;
        v642[34] = v829;
        v206[35] = v205;

        v207 = v638;
        v208 = v642;
        v642[36] = v830;
        v208[37] = v207;

        v209 = v639;
        v210 = v642;
        v642[38] = v831;
        v210[39] = v209;

        v211 = v641;
        v212 = v642;
        v642[40] = v832;
        v212[41] = v211;
        sub_1B0394964();

        if (os_log_type_enabled(v644, v645))
        {
          v213 = v909;
          v590 = sub_1B0E45D78();
          v589 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v591 = sub_1B03949A8(0);
          v592 = sub_1B03949A8(1);
          v593 = &v986;
          v986 = v590;
          v594 = &v985;
          v985 = v591;
          v595 = &v984;
          v984 = v592;
          sub_1B0394A48(3, &v986);
          sub_1B0394A48(7, v593);
          v982 = v812;
          v983 = v620;
          sub_1B03949FC(&v982, v593, v594, v595);
          v596 = v213;
          if (v213)
          {

            __break(1u);
          }

          else
          {
            v982 = v813;
            v983 = v621;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v587 = 0;
            v982 = v814;
            v983 = v622;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v586 = 0;
            v982 = v815;
            v983 = v623;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v585 = 0;
            v982 = v816;
            v983 = v624;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v584 = 0;
            v982 = v817;
            v983 = v625;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v583 = 0;
            v982 = v818;
            v983 = v626;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v582 = 0;
            v982 = v819;
            v983 = v627;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v581 = 0;
            v982 = v820;
            v983 = v628;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v580 = 0;
            v982 = v821;
            v983 = v629;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v579 = 0;
            v982 = v822;
            v983 = v630;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v578 = 0;
            v982 = v823;
            v983 = v631;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v577 = 0;
            v982 = v824;
            v983 = v632;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v576 = 0;
            v982 = v825;
            v983 = v633;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v575 = 0;
            v982 = v826;
            v983 = v634;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v574 = 0;
            v982 = v827;
            v983 = v635;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v573 = 0;
            v982 = v828;
            v983 = v636;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v572 = 0;
            v982 = v829;
            v983 = v637;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v571 = 0;
            v982 = v830;
            v983 = v638;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v570 = 0;
            v982 = v831;
            v983 = v639;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v569 = 0;
            v982 = v832;
            v983 = v641;
            sub_1B03949FC(&v982, &v986, &v985, &v984);
            v568 = 0;
            _os_log_impl(&dword_1B0389000, v644, v645, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u), but no message data found.", v590, 0x31u);
            sub_1B03998A8(v591);
            sub_1B03998A8(v592);
            sub_1B0E45D58();

            v588 = v568;
          }
        }

        else
        {
          v214 = v909;

          v588 = v214;
        }

        v566 = v588;
        MEMORY[0x1E69E5920](v644);
        (*(v913 + 8))(v920, v912);
        v1024 = v1022[7];
        sub_1B074E7A8(&v1024, &v992);
        v991 = v1024;
        v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
        sub_1B098FD6C();
        sub_1B0E45798();
        for (j = v566; ; j = v562)
        {
          v562 = j;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
          sub_1B0E46518();
          v563 = v989;
          v564 = v990;
          if (v989)
          {
            v560 = v563;
            v561 = v564;
            v557 = v564;
            v556 = v563;
            v215 = swift_allocObject();
            v216 = v557;
            v217 = v907;
            *(v215 + 16) = v556;
            *(v215 + 24) = v216;
            v558 = v217;
            v559 = v215;
          }

          else
          {
            v558 = 0;
            v559 = 0;
          }

          v554 = v559;
          v555 = v558;
          if (!v558)
          {
            break;
          }

          v552 = v555;
          v553 = v554;
          v551 = v554;
          v550 = v555;
          v987 = v555;
          v988 = v554;

          (*(v924 + 56))(v911, 1, 1, v923);
          v550(v911);
          sub_1B07AF920(v911);
        }

        sub_1B039E440(v993);
        sub_1B08BED00(v949);
        sub_1B098FDF4(v1022);
        return sub_1B074B764(v962);
      }

      else
      {
        v23 = v922;
        v704 = v937;
        v707 = *(v936 + 32);
        v706 = v936 + 32;
        v707(v942, v933, v934);
        v703 = *(v936 + 16);
        v702 = v936 + 16;
        v703(v940, v942, v934);
        Message.init(_:)(v940, v927);
        (*(v913 + 16))(v23, v962, v912);
        sub_1B074B69C(v962, v959);
        sub_1B074B69C(v959, v956);
        sub_1B074E41C(v959, v954);
        v24 = (v956 + *(v952 + 20));
        v698 = *v24;
        v699 = *(v24 + 1);
        v700 = *(v24 + 1);
        v701 = *(v24 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v956);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v697 = 36;
        v724 = 7;
        v25 = swift_allocObject();
        v26 = v699;
        v27 = v700;
        v28 = v701;
        v709 = v25;
        *(v25 + 16) = v698;
        *(v25 + 20) = v26;
        *(v25 + 24) = v27;
        *(v25 + 32) = v28;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v29 = swift_allocObject();
        v30 = v699;
        v31 = v700;
        v32 = v701;
        v696 = v29;
        *(v29 + 16) = v698;
        *(v29 + 20) = v30;
        *(v29 + 24) = v31;
        *(v29 + 32) = v32;

        v723 = 32;
        v33 = swift_allocObject();
        v34 = v696;
        v713 = v33;
        *(v33 + 16) = v833;
        *(v33 + 24) = v34;
        sub_1B0394868();
        sub_1B0394868();

        v35 = swift_allocObject();
        v36 = v699;
        v37 = v700;
        v38 = v701;
        v39 = v35;
        v40 = v954;
        v716 = v39;
        *(v39 + 16) = v698;
        *(v39 + 20) = v36;
        *(v39 + 24) = v37;
        *(v39 + 32) = v38;
        sub_1B074B764(v40);

        v41 = swift_allocObject();
        v42 = v963;
        v719 = v41;
        *(v41 + 16) = v834;
        *(v41 + 24) = v42;

        v703(v940, v942, v934);
        v705 = (*(v704 + 80) + 16) & ~*(v704 + 80);
        v725 = swift_allocObject();
        v707((v725 + v705), v940, v934);
        sub_1B07575C4();

        v755 = sub_1B0E43988();
        v756 = sub_1B0E45908();
        v721 = 17;
        v728 = swift_allocObject();
        v711 = 16;
        *(v728 + 16) = 16;
        v729 = swift_allocObject();
        v718 = 4;
        *(v729 + 16) = 4;
        v43 = swift_allocObject();
        v708 = v43;
        *(v43 + 16) = v764;
        *(v43 + 24) = 0;
        v44 = swift_allocObject();
        v45 = v708;
        v730 = v44;
        *(v44 + 16) = v835;
        *(v44 + 24) = v45;
        v731 = swift_allocObject();
        *(v731 + 16) = 0;
        v732 = swift_allocObject();
        *(v732 + 16) = 1;
        v46 = swift_allocObject();
        v47 = v709;
        v710 = v46;
        *(v46 + 16) = v836;
        *(v46 + 24) = v47;
        v48 = swift_allocObject();
        v49 = v710;
        v733 = v48;
        *(v48 + 16) = v837;
        *(v48 + 24) = v49;
        v734 = swift_allocObject();
        *(v734 + 16) = v711;
        v735 = swift_allocObject();
        *(v735 + 16) = v718;
        v50 = swift_allocObject();
        v712 = v50;
        *(v50 + 16) = v768;
        *(v50 + 24) = 0;
        v51 = swift_allocObject();
        v52 = v712;
        v736 = v51;
        *(v51 + 16) = v838;
        *(v51 + 24) = v52;
        v737 = swift_allocObject();
        *(v737 + 16) = 0;
        v738 = swift_allocObject();
        *(v738 + 16) = v718;
        v53 = swift_allocObject();
        v54 = v713;
        v714 = v53;
        *(v53 + 16) = v839;
        *(v53 + 24) = v54;
        v55 = swift_allocObject();
        v56 = v714;
        v739 = v55;
        *(v55 + 16) = v840;
        *(v55 + 24) = v56;
        v740 = swift_allocObject();
        *(v740 + 16) = 112;
        v741 = swift_allocObject();
        v722 = 8;
        *(v741 + 16) = 8;
        v727 = 24;
        v715 = swift_allocObject();
        *(v715 + 16) = v772;
        v57 = swift_allocObject();
        v58 = v715;
        v742 = v57;
        *(v57 + 16) = v841;
        *(v57 + 24) = v58;
        v743 = swift_allocObject();
        *(v743 + 16) = 37;
        v744 = swift_allocObject();
        *(v744 + 16) = v722;
        v59 = swift_allocObject();
        v60 = v716;
        v717 = v59;
        *(v59 + 16) = v842;
        *(v59 + 24) = v60;
        v61 = swift_allocObject();
        v62 = v717;
        v745 = v61;
        *(v61 + 16) = v843;
        *(v61 + 24) = v62;
        v746 = swift_allocObject();
        *(v746 + 16) = 0;
        v747 = swift_allocObject();
        *(v747 + 16) = v718;
        v63 = swift_allocObject();
        v64 = v719;
        v720 = v63;
        *(v63 + 16) = v844;
        *(v63 + 24) = v64;
        v65 = swift_allocObject();
        v66 = v720;
        v748 = v65;
        *(v65 + 16) = v845;
        *(v65 + 24) = v66;
        v749 = swift_allocObject();
        *(v749 + 16) = 0;
        v750 = swift_allocObject();
        *(v750 + 16) = v722;
        v67 = swift_allocObject();
        v68 = v725;
        v726 = v67;
        *(v67 + 16) = v846;
        *(v67 + 24) = v68;
        v69 = swift_allocObject();
        v70 = v726;
        v752 = v69;
        *(v69 + 16) = v847;
        *(v69 + 24) = v70;
        v754 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v751 = sub_1B0E46A48();
        v753 = v71;

        v72 = v728;
        v73 = v753;
        *v753 = v848;
        v73[1] = v72;

        v74 = v729;
        v75 = v753;
        v753[2] = v849;
        v75[3] = v74;

        v76 = v730;
        v77 = v753;
        v753[4] = v850;
        v77[5] = v76;

        v78 = v731;
        v79 = v753;
        v753[6] = v851;
        v79[7] = v78;

        v80 = v732;
        v81 = v753;
        v753[8] = v852;
        v81[9] = v80;

        v82 = v733;
        v83 = v753;
        v753[10] = v853;
        v83[11] = v82;

        v84 = v734;
        v85 = v753;
        v753[12] = v854;
        v85[13] = v84;

        v86 = v735;
        v87 = v753;
        v753[14] = v855;
        v87[15] = v86;

        v88 = v736;
        v89 = v753;
        v753[16] = v856;
        v89[17] = v88;

        v90 = v737;
        v91 = v753;
        v753[18] = v857;
        v91[19] = v90;

        v92 = v738;
        v93 = v753;
        v753[20] = v858;
        v93[21] = v92;

        v94 = v739;
        v95 = v753;
        v753[22] = v859;
        v95[23] = v94;

        v96 = v740;
        v97 = v753;
        v753[24] = v860;
        v97[25] = v96;

        v98 = v741;
        v99 = v753;
        v753[26] = v861;
        v99[27] = v98;

        v100 = v742;
        v101 = v753;
        v753[28] = v862;
        v101[29] = v100;

        v102 = v743;
        v103 = v753;
        v753[30] = v863;
        v103[31] = v102;

        v104 = v744;
        v105 = v753;
        v753[32] = v864;
        v105[33] = v104;

        v106 = v745;
        v107 = v753;
        v753[34] = v865;
        v107[35] = v106;

        v108 = v746;
        v109 = v753;
        v753[36] = v866;
        v109[37] = v108;

        v110 = v747;
        v111 = v753;
        v753[38] = v867;
        v111[39] = v110;

        v112 = v748;
        v113 = v753;
        v753[40] = v868;
        v113[41] = v112;

        v114 = v749;
        v115 = v753;
        v753[42] = v869;
        v115[43] = v114;

        v116 = v750;
        v117 = v753;
        v753[44] = v870;
        v117[45] = v116;

        v118 = v752;
        v119 = v753;
        v753[46] = v871;
        v119[47] = v118;
        sub_1B0394964();

        if (os_log_type_enabled(v755, v756))
        {
          v120 = v909;
          v689 = sub_1B0E45D78();
          v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v690 = sub_1B03949A8(0);
          v691 = sub_1B03949A8(1);
          v692 = &v974;
          v974 = v689;
          v693 = &v973;
          v973 = v690;
          v694 = &v972;
          v972 = v691;
          sub_1B0394A48(3, &v974);
          sub_1B0394A48(8, v692);
          v970 = v848;
          v971 = v728;
          sub_1B03949FC(&v970, v692, v693, v694);
          v695 = v120;
          if (v120)
          {

            __break(1u);
          }

          else
          {
            v970 = v849;
            v971 = v729;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v686 = 0;
            v970 = v850;
            v971 = v730;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v685 = 0;
            v970 = v851;
            v971 = v731;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v684 = 0;
            v970 = v852;
            v971 = v732;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v683 = 0;
            v970 = v853;
            v971 = v733;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v682 = 0;
            v970 = v854;
            v971 = v734;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v681 = 0;
            v970 = v855;
            v971 = v735;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v680 = 0;
            v970 = v856;
            v971 = v736;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v679 = 0;
            v970 = v857;
            v971 = v737;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v678 = 0;
            v970 = v858;
            v971 = v738;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v677 = 0;
            v970 = v859;
            v971 = v739;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v676 = 0;
            v970 = v860;
            v971 = v740;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v675 = 0;
            v970 = v861;
            v971 = v741;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v674 = 0;
            v970 = v862;
            v971 = v742;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v673 = 0;
            v970 = v863;
            v971 = v743;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v672 = 0;
            v970 = v864;
            v971 = v744;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v671 = 0;
            v970 = v865;
            v971 = v745;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v670 = 0;
            v970 = v866;
            v971 = v746;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v669 = 0;
            v970 = v867;
            v971 = v747;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v668 = 0;
            v970 = v868;
            v971 = v748;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v667 = 0;
            v970 = v869;
            v971 = v749;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v666 = 0;
            v970 = v870;
            v971 = v750;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v665 = 0;
            v970 = v871;
            v971 = v752;
            sub_1B03949FC(&v970, &v974, &v973, &v972);
            v664 = 0;
            _os_log_impl(&dword_1B0389000, v755, v756, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u) with %{iec-bytes}ld.", v689, 0x3Bu);
            sub_1B03998A8(v690);
            sub_1B03998A8(v691);
            sub_1B0E45D58();

            v687 = v664;
          }
        }

        else
        {
          v121 = v909;

          v687 = v121;
        }

        v662 = v687;
        MEMORY[0x1E69E5920](v755);
        (*(v913 + 8))(v922, v912);
        v1023 = v1022[7];
        sub_1B074E7A8(&v1023, &v980);
        v979 = v1023;
        v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C8, &qword_1B0EA10D0);
        sub_1B098FD6C();
        sub_1B0E45798();
        for (k = v662; ; k = v658)
        {
          v658 = k;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32D8, &qword_1B0EA10D8);
          sub_1B0E46518();
          v659 = v977;
          v660 = v978;
          if (v977)
          {
            v656 = v659;
            v657 = v660;
            v653 = v660;
            v652 = v659;
            v122 = swift_allocObject();
            v123 = v653;
            v124 = v908;
            *(v122 + 16) = v652;
            *(v122 + 24) = v123;
            v654 = v124;
            v655 = v122;
          }

          else
          {
            v654 = 0;
            v655 = 0;
          }

          v650 = v655;
          v651 = v654;
          if (!v654)
          {
            break;
          }

          v648 = v651;
          v649 = v650;
          v647 = v650;
          v646 = v651;
          v975 = v651;
          v976 = v650;

          (*(v924 + 16))(v911, v927, v923);
          (*(v924 + 56))(v911, 0, 1, v923);
          v646(v911);
          sub_1B07AF920(v911);
        }

        sub_1B039E440(v981);
        (*(v924 + 8))(v927, v923);
        (*(v936 + 8))(v942, v934);
        sub_1B08BED00(v949);
        sub_1B098FDF4(v1022);
        return sub_1B074B764(v962);
      }
    }
  }

  else
  {
    (*(v913 + 16))(v916, v962, v912);
    sub_1B074B69C(v962, v959);
    sub_1B074B69C(v959, v956);
    sub_1B074E41C(v959, v954);
    v310 = (v956 + *(v952 + 20));
    v407 = *v310;
    v408 = *(v310 + 1);
    v409 = *(v310 + 1);
    v410 = *(v310 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v956);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v406 = 36;
    v425 = 7;
    v311 = swift_allocObject();
    v312 = v408;
    v313 = v409;
    v314 = v410;
    v412 = v311;
    *(v311 + 16) = v407;
    *(v311 + 20) = v312;
    *(v311 + 24) = v313;
    *(v311 + 32) = v314;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v315 = swift_allocObject();
    v316 = v408;
    v317 = v409;
    v318 = v410;
    v405 = v315;
    *(v315 + 16) = v407;
    *(v315 + 20) = v316;
    *(v315 + 24) = v317;
    *(v315 + 32) = v318;

    v424 = 32;
    v319 = swift_allocObject();
    v320 = v405;
    v416 = v319;
    *(v319 + 16) = v872;
    *(v319 + 24) = v320;
    sub_1B0394868();
    sub_1B0394868();

    v321 = swift_allocObject();
    v322 = v408;
    v323 = v409;
    v324 = v410;
    v325 = v321;
    v326 = v954;
    v420 = v325;
    *(v325 + 16) = v407;
    *(v325 + 20) = v322;
    *(v325 + 24) = v323;
    *(v325 + 32) = v324;
    sub_1B074B764(v326);

    v327 = swift_allocObject();
    v328 = v963;
    v426 = v327;
    *(v327 + 16) = v873;
    *(v327 + 24) = v328;

    v452 = sub_1B0E43988();
    v453 = sub_1B0E458E8();
    v422 = 17;
    v428 = swift_allocObject();
    v414 = 16;
    *(v428 + 16) = 16;
    v429 = swift_allocObject();
    v423 = 4;
    *(v429 + 16) = 4;
    v329 = swift_allocObject();
    v411 = v329;
    *(v329 + 16) = v764;
    *(v329 + 24) = 0;
    v330 = swift_allocObject();
    v331 = v411;
    v430 = v330;
    *(v330 + 16) = v874;
    *(v330 + 24) = v331;
    v431 = swift_allocObject();
    *(v431 + 16) = 0;
    v432 = swift_allocObject();
    *(v432 + 16) = 1;
    v332 = swift_allocObject();
    v333 = v412;
    v413 = v332;
    *(v332 + 16) = v875;
    *(v332 + 24) = v333;
    v334 = swift_allocObject();
    v335 = v413;
    v433 = v334;
    *(v334 + 16) = v876;
    *(v334 + 24) = v335;
    v434 = swift_allocObject();
    *(v434 + 16) = v414;
    v435 = swift_allocObject();
    *(v435 + 16) = v423;
    v336 = swift_allocObject();
    v415 = v336;
    *(v336 + 16) = v768;
    *(v336 + 24) = 0;
    v337 = swift_allocObject();
    v338 = v415;
    v436 = v337;
    *(v337 + 16) = v877;
    *(v337 + 24) = v338;
    v437 = swift_allocObject();
    *(v437 + 16) = 0;
    v438 = swift_allocObject();
    *(v438 + 16) = v423;
    v339 = swift_allocObject();
    v340 = v416;
    v417 = v339;
    *(v339 + 16) = v878;
    *(v339 + 24) = v340;
    v341 = swift_allocObject();
    v342 = v417;
    v439 = v341;
    *(v341 + 16) = v879;
    *(v341 + 24) = v342;
    v440 = swift_allocObject();
    *(v440 + 16) = 112;
    v441 = swift_allocObject();
    v419 = 8;
    *(v441 + 16) = 8;
    v418 = swift_allocObject();
    *(v418 + 16) = v772;
    v343 = swift_allocObject();
    v344 = v418;
    v442 = v343;
    *(v343 + 16) = v880;
    *(v343 + 24) = v344;
    v443 = swift_allocObject();
    *(v443 + 16) = 37;
    v444 = swift_allocObject();
    *(v444 + 16) = v419;
    v345 = swift_allocObject();
    v346 = v420;
    v421 = v345;
    *(v345 + 16) = v881;
    *(v345 + 24) = v346;
    v347 = swift_allocObject();
    v348 = v421;
    v445 = v347;
    *(v347 + 16) = v882;
    *(v347 + 24) = v348;
    v446 = swift_allocObject();
    *(v446 + 16) = 0;
    v447 = swift_allocObject();
    *(v447 + 16) = v423;
    v349 = swift_allocObject();
    v350 = v426;
    v427 = v349;
    *(v349 + 16) = v883;
    *(v349 + 24) = v350;
    v351 = swift_allocObject();
    v352 = v427;
    v449 = v351;
    *(v351 + 16) = v884;
    *(v351 + 24) = v352;
    v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v448 = sub_1B0E46A48();
    v450 = v353;

    v354 = v428;
    v355 = v450;
    *v450 = v885;
    v355[1] = v354;

    v356 = v429;
    v357 = v450;
    v450[2] = v886;
    v357[3] = v356;

    v358 = v430;
    v359 = v450;
    v450[4] = v887;
    v359[5] = v358;

    v360 = v431;
    v361 = v450;
    v450[6] = v888;
    v361[7] = v360;

    v362 = v432;
    v363 = v450;
    v450[8] = v889;
    v363[9] = v362;

    v364 = v433;
    v365 = v450;
    v450[10] = v890;
    v365[11] = v364;

    v366 = v434;
    v367 = v450;
    v450[12] = v891;
    v367[13] = v366;

    v368 = v435;
    v369 = v450;
    v450[14] = v892;
    v369[15] = v368;

    v370 = v436;
    v371 = v450;
    v450[16] = v893;
    v371[17] = v370;

    v372 = v437;
    v373 = v450;
    v450[18] = v894;
    v373[19] = v372;

    v374 = v438;
    v375 = v450;
    v450[20] = v895;
    v375[21] = v374;

    v376 = v439;
    v377 = v450;
    v450[22] = v896;
    v377[23] = v376;

    v378 = v440;
    v379 = v450;
    v450[24] = v897;
    v379[25] = v378;

    v380 = v441;
    v381 = v450;
    v450[26] = v898;
    v381[27] = v380;

    v382 = v442;
    v383 = v450;
    v450[28] = v899;
    v383[29] = v382;

    v384 = v443;
    v385 = v450;
    v450[30] = v900;
    v385[31] = v384;

    v386 = v444;
    v387 = v450;
    v450[32] = v901;
    v387[33] = v386;

    v388 = v445;
    v389 = v450;
    v450[34] = v902;
    v389[35] = v388;

    v390 = v446;
    v391 = v450;
    v450[36] = v903;
    v391[37] = v390;

    v392 = v447;
    v393 = v450;
    v450[38] = v904;
    v393[39] = v392;

    v394 = v449;
    v395 = v450;
    v450[40] = v905;
    v395[41] = v394;
    sub_1B0394964();

    if (os_log_type_enabled(v452, v453))
    {
      v396 = v909;
      v398 = sub_1B0E45D78();
      v397[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v399 = sub_1B03949A8(0);
      v400 = sub_1B03949A8(1);
      v401 = &v1010;
      v1010 = v398;
      v402 = &v1009;
      v1009 = v399;
      v403 = &v1008;
      v1008 = v400;
      sub_1B0394A48(3, &v1010);
      sub_1B0394A48(7, v401);
      v1006 = v885;
      v1007 = v428;
      sub_1B03949FC(&v1006, v401, v402, v403);
      v404 = v396;
      if (v396)
      {

        __break(1u);
      }

      else
      {
        v1006 = v886;
        v1007 = v429;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[18] = 0;
        v1006 = v887;
        v1007 = v430;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[17] = 0;
        v1006 = v888;
        v1007 = v431;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[16] = 0;
        v1006 = v889;
        v1007 = v432;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[15] = 0;
        v1006 = v890;
        v1007 = v433;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[14] = 0;
        v1006 = v891;
        v1007 = v434;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[13] = 0;
        v1006 = v892;
        v1007 = v435;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[12] = 0;
        v1006 = v893;
        v1007 = v436;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[11] = 0;
        v1006 = v894;
        v1007 = v437;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[10] = 0;
        v1006 = v895;
        v1007 = v438;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[9] = 0;
        v1006 = v896;
        v1007 = v439;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[8] = 0;
        v1006 = v897;
        v1007 = v440;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[7] = 0;
        v1006 = v898;
        v1007 = v441;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[6] = 0;
        v1006 = v899;
        v1007 = v442;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[5] = 0;
        v1006 = v900;
        v1007 = v443;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[4] = 0;
        v1006 = v901;
        v1007 = v444;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[3] = 0;
        v1006 = v902;
        v1007 = v445;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[2] = 0;
        v1006 = v903;
        v1007 = v446;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[1] = 0;
        v1006 = v904;
        v1007 = v447;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        v397[0] = 0;
        v1006 = v905;
        v1007 = v449;
        sub_1B03949FC(&v1006, &v1010, &v1009, &v1008);
        _os_log_impl(&dword_1B0389000, v452, v453, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did complete download for watch (UID %u), but no such request.", v398, 0x31u);
        sub_1B03998A8(v399);
        sub_1B03998A8(v400);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v452);
    (*(v913 + 8))(v916, v912);
    return sub_1B074B764(v962);
  }
}

void *sub_1B09343F0(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v21 = a1;
  v20 = a2;
  v26 = a3;
  v18 = a4;
  v17 = a5;
  v19 = sub_1B098FE4C;
  v13[61] = sub_1B039BBE8;
  v13[62] = sub_1B0394C30;
  v13[63] = sub_1B0394C24;
  v13[64] = sub_1B039BA2C;
  v13[65] = sub_1B039BA88;
  v13[66] = sub_1B039BB94;
  v13[67] = sub_1B0394C24;
  v13[68] = sub_1B039BBA0;
  v13[69] = sub_1B039BC08;
  v13[70] = sub_1B07135E4;
  v13[71] = sub_1B070B324;
  v13[72] = sub_1B0398F5C;
  v13[73] = sub_1B0398F5C;
  v13[74] = sub_1B0399178;
  v13[75] = sub_1B0398F5C;
  v13[76] = sub_1B0398F5C;
  v13[77] = sub_1B039BA94;
  v13[78] = sub_1B0398F5C;
  v13[79] = sub_1B0398F5C;
  v13[80] = sub_1B0399178;
  v13[81] = sub_1B0398F5C;
  v13[82] = sub_1B0398F5C;
  v13[83] = sub_1B03991EC;
  v13[84] = sub_1B0398F5C;
  v13[85] = sub_1B0398F5C;
  v13[86] = sub_1B070B4B4;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v13[87] = 0;
  v14 = _s6LoggerVMa();
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = v13 - v15;
  v22 = sub_1B0E439A8();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v21);
  v27 = v13 - v25;
  v36 = v6;
  v37 = v7;
  v35 = v26;
  v34 = v8 & 1;
  v33 = v9;
  v32 = v5;
  v29[16] = v8 & 1;
  v30 = v26;
  sub_1B09B21DC(v6, v7, v10, v29, MEMORY[0x1E69E7CA8] + 8, v11);
  v28 = 0;
  return sub_1B09408A4(v21, v20, v26, v17);
}

uint64_t sub_1B0935A80(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v116 = a1;
  v121 = a2;
  v117 = a3;
  v119 = a4;
  v105 = a5;
  v106 = a6;
  v107 = a7;
  v122 = sub_1B098FE7C;
  v43 = sub_1B099027C;
  v44 = sub_1B039BBE8;
  v45 = sub_1B0874D38;
  v46 = sub_1B0394C30;
  v47 = sub_1B0394C24;
  v48 = sub_1B039BA2C;
  v49 = sub_1B039BA88;
  v50 = sub_1B039BB94;
  v51 = sub_1B0394C24;
  v52 = sub_1B039BBA0;
  v53 = sub_1B039BC08;
  v54 = sub_1B03FB49C;
  v55 = sub_1B039BCF8;
  v56 = sub_1B07135E4;
  v57 = sub_1B070B324;
  v58 = sub_1B0398F5C;
  v59 = sub_1B0398F5C;
  v60 = sub_1B0399178;
  v61 = sub_1B0398F5C;
  v62 = sub_1B0398F5C;
  v63 = sub_1B039BA94;
  v64 = sub_1B0398F5C;
  v65 = sub_1B0398F5C;
  v66 = sub_1B0399178;
  v67 = sub_1B0398F5C;
  v68 = sub_1B0398F5C;
  v69 = sub_1B03991EC;
  v70 = sub_1B0398F5C;
  v71 = sub_1B0398F5C;
  v72 = sub_1B039BCEC;
  v73 = sub_1B0398F5C;
  v74 = sub_1B0398F5C;
  v75 = sub_1B070B4B4;
  v145 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  v141 = 0;
  v139 = 0;
  v140 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v94 = 0;
  v76 = _s6LoggerVMa();
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v78 = &v32[-v77];
  v79 = sub_1B0E439A8();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v83 = &v32[-v82];
  v84 = sub_1B0E44238();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v88 = &v32[-v87];
  v89 = sub_1B0E44288();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v32[-v92];
  v95 = *(_s6LoggerVMa_1() - 8);
  v96 = v95;
  v97 = *(v95 + 64);
  v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v99 = &v32[-v98];
  v8 = type metadata accessor for InProgressMessageDownload.Completed();
  v100 = *(v8 - 8);
  v101 = v100;
  v102 = *(v100 + 64);
  v103 = (v102 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v32[-v103];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
  v108 = *(v123 - 8);
  v109 = v108;
  v110 = *(v108 + 64);
  v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v116);
  v112 = &v32[-v111];
  v113 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v120 = &v32[-v113];
  v114 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v115 = &v32[-v114];
  v145 = &v32[-v114];
  v143 = v13;
  v144 = v14;
  v142 = v15;
  v118 = 1;
  v141 = v16 & 1;
  v139 = v17;
  v140 = v18;
  v138 = v19;
  v137 = v7;

  v126 = v117;
  v127 = v119 & v118;
  v128 = v7;
  sub_1B09B21DC(v116, v121, v122, v125, v123, v120);
  v124 = 0;

  sub_1B098FEB0(v120, v115);
  v41 = *(v42 + 96);
  MEMORY[0x1E69E5928](v41);
  sub_1B0990044(v115, v112);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07AFC78(v117, v104);
  sub_1B074B69C(v107, v99);

  v33 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v34 = (v33 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 12 + *(v101 + 80)) & ~*(v101 + 80);
  v37 = (v36 + v102 + *(v96 + 80)) & ~*(v96 + 80);
  v38 = (v37 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_1B098FEB0(v112, (v39 + v33));
  v20 = v35;
  v21 = v116;
  v22 = v121;
  v23 = v36;
  v24 = v39;
  v25 = v104;
  *(v39 + v34) = v42;
  v26 = v24 + v20;
  *v26 = v21;
  *(v26 + 8) = v22;
  sub_1B07B02D8(v25, (v24 + v23));
  sub_1B074E41C(v99, v39 + v37);
  v27 = v106;
  v28 = v43;
  v29 = v39;
  v30 = (v39 + v38);
  *v30 = v105;
  v30[1] = v27;
  v134 = v28;
  v135 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v130 = 1107296256;
  v131 = 0;
  v132 = sub_1B038C908;
  v133 = &block_descriptor_16;
  v40 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v93, v88, v40);
  (*(v85 + 8))(v88, v84);
  (*(v90 + 8))(v93, v89);
  _Block_release(v40);

  MEMORY[0x1E69E5920](v41);
  return sub_1B099045C(v115);
}

void *sub_1B0937E20@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v9 = 0;
  v18 = a1;
  v19 = a2;
  v17 = a3;
  v16 = v4;
  v7 = *(v4 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14[0] = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32C0, &unk_1B0EA10C0);
  sub_1B0990574();
  sub_1B0E456F8();

  sub_1B039E440(v14);
  if (v15)
  {
    memset(v12, 0, sizeof(v12));
    memcpy(v13, v12, sizeof(v13));
  }

  else
  {
    v9 = v14[1];
    sub_1B0E45308();
    memcpy(__dst, v8, sizeof(__dst));
    memcpy(v11, __dst, sizeof(v11));
    memcpy(v13, v11, sizeof(v13));
  }

  return memcpy(a4, v13, 0x40uLL);
}

uint64_t sub_1B0938180(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v21 = a2;
  v29 = 0;
  v28 = 0;
  v22 = 0;
  v23 = (*(*(type metadata accessor for InProgressMessageDownload.EMLX() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v24 = &v6 - v23;
  v29 = v2;
  v28 = v3;
  if (*(v25 + *(type metadata accessor for MailboxPersistenceHelper.DownloadResult() + 24)))
  {
    v26 = 0;
    v27 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_1B07AF800(v25, v24);
    v16 = *(v21 + 104);

    v17 = sub_1B08C4040(v16);
    v18 = v4;

    sub_1B07AF320(v24);
    if (v18)
    {
      v14 = v17;
      v15 = v18;
      v11 = v18;
      v10 = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v12 = v10;
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v9 = v13;
    v8 = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = v8;
    v27 = v9;
    v19 = v8;
    v20 = v9;
  }

  v6 = v20;
  v7 = v19;
  sub_1B03B1198(&v26);
  return v7;
}

uint64_t sub_1B0938358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

  sub_1B0858C94(a3);
}

uint64_t sub_1B093840C(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a1;
  v82 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v72 = a6;
  v73 = a7;
  v74 = a8;
  v81 = sub_1B0993B1C;
  v80 = sub_1B0993B24;
  v47 = sub_1B0993B54;
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v104 = 0;
  v102 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v95 = 0;
  v96 = 0;
  v58 = 0;
  v48 = sub_1B0E44238();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v52 = &v33 - v51;
  v53 = sub_1B0E44288();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v33 - v56;
  v59 = *(_s6LoggerVMa_1() - 8);
  v60 = v59;
  v61 = *(v59 + 64);
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v33 - v62;
  v9 = type metadata accessor for InProgressMessageDownload.Completed();
  v64 = *(v9 - 8);
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v68 = (&v33 - v67);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0);
  v75 = *(v83 - 8);
  v76 = v75;
  v77 = *(v75 + 64);
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v82);
  v79 = &v33 - v78;
  v106 = a1;
  v105 = v10;
  v103 = v11;
  v104 = v12;
  v102 = v13;
  v101 = v14;
  v99 = v15;
  v100 = v16;

  v86 = v81;
  v87 = v82;
  sub_1B039A570(v80, v85, v83, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v84, &v97);

  v38 = v97;
  v45 = v98;
  v95 = v97;
  v96 = v98;
  v44 = *(v82 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v44);
  sub_1B0990044(v46, v79);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07AFC78(v71, v68);
  sub_1B074B69C(v72, v63);

  v34 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v35 = (v34 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 19) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v37 + 16 + *(v65 + 80)) & ~*(v65 + 80);
  v40 = (v39 + v66 + *(v60 + 80)) & ~*(v60 + 80);
  v41 = (v40 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_1B098FEB0(v79, (v42 + v34));
  v17 = v36;
  v18 = v69;
  v19 = v70;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = v42;
  v24 = v45;
  v25 = v68;
  *(v42 + v35) = v82;
  v26 = v23 + v17;
  *v26 = v18;
  *(v26 + 8) = v19;
  v27 = (v23 + v20);
  *v27 = v21;
  v27[1] = v24;
  sub_1B07B02D8(v25, (v23 + v22));
  sub_1B074E41C(v63, v42 + v40);
  v28 = v74;
  v29 = v47;
  v30 = v42;
  v31 = (v42 + v41);
  *v31 = v73;
  v31[1] = v28;
  v93 = v29;
  v94 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v89 = 1107296256;
  v90 = 0;
  v91 = sub_1B038C908;
  v92 = &block_descriptor_5675;
  v43 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v57, v52, v43);
  (*(v49 + 8))(v52, v48);
  (*(v54 + 8))(v57, v53);
  _Block_release(v43);

  MEMORY[0x1E69E5920](v44);
}

uint64_t sub_1B0938C9C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B0938CE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t a8, void (*a9)(void), uint64_t a10)
{
  v223 = a8;
  v222 = a7;
  v221 = a6;
  v220 = a5;
  v219 = a4;
  v218 = a3;
  v228 = a2;
  v225 = a1;
  v224 = a10;
  v206 = a10;
  v229 = a9;
  v207 = a9;
  v215 = 0;
  v251 = 0;
  v250 = 0;
  v249 = 0;
  v248 = 0;
  v247 = 0;
  v246 = 0;
  v245 = 0;
  v244 = 0;
  v243 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v208 = 0;
  v239 = 0;
  v209 = _s6LoggerVMa();
  v10 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v210 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1B0E439A8();
  v212 = *(v211 - 8);
  v213 = v212;
  v12 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v211 - 8);
  v214 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32E0, &qword_1B0EA10E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v215);
  v233 = &v95 - v216;
  v217 = &v95 - v216;
  v232 = type metadata accessor for MailboxPersistenceHelper.DownloadResult();
  v226 = *(v232 - 8);
  v231 = v226;
  v227 = *(v226 + 64);
  v14 = MEMORY[0x1EEE9AC00](v225);
  v230 = &v95 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = v230;
  v250 = v14;
  v249 = v228;
  v247 = v15;
  v248 = v16;
  v245 = v17;
  v246 = v18;
  v244 = v19;
  v243 = v20;
  v241 = v229;
  v242 = v21;
  sub_1B0990044(v14, v22);
  if ((*(v231 + 48))(v233, 1, v232) == 1)
  {
    sub_1B099045C(v217);
    v205 = v208;
  }

  else
  {
    v23 = v228;
    v24 = v208;
    sub_1B0993DBC(v217, v230);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v202 = &v95;
    v25 = MEMORY[0x1EEE9AC00](v218);
    v26 = v220;
    v27 = v221;
    v28 = v222;
    *(&v95 - 6) = v29;
    *(&v95 - 5) = v26;
    *(&v95 - 4) = v27;
    *(&v95 - 3) = v28;
    *(&v95 - 2) = v23;
    sub_1B09B21DC(v25, v30, sub_1B0993E90, (&v95 - 8), MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
    v203 = v24;
    v204 = v24;
    if (v24)
    {
      v32 = v214;
      v140 = v204;
      v155 = 0;
      v135 = 0;

      v33 = v140;
      v239 = v140;
      (*(v213 + 16))(v32, v223, v211);

      sub_1B0394784(v228 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v210);
      v34 = (v210 + *(v209 + 20));
      v136 = *v34;
      v137 = *(v34 + 1);
      sub_1B039480C(v210);

      v139 = 24;
      v169 = 7;
      v35 = swift_allocObject();
      v36 = v137;
      v149 = v35;
      *(v35 + 16) = v136;
      *(v35 + 20) = v36;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v37 = swift_allocObject();
      v38 = v137;
      v138 = v37;
      *(v37 + 16) = v136;
      *(v37 + 20) = v38;

      v168 = 32;
      v39 = swift_allocObject();
      v40 = v138;
      v162 = v39;
      *(v39 + 16) = sub_1B039BBE8;
      *(v39 + 24) = v40;
      sub_1B0394868();
      sub_1B0394868();

      v41 = v140;
      v170 = swift_allocObject();
      *(v170 + 16) = v140;
      v192 = sub_1B0E43988();
      v141 = v192;
      v191 = sub_1B0E458E8();
      v142 = v191;
      v165 = 17;
      v173 = swift_allocObject();
      v143 = v173;
      v152 = 16;
      *(v173 + 16) = 16;
      v174 = swift_allocObject();
      v144 = v174;
      v160 = 4;
      *(v174 + 16) = 4;
      v42 = swift_allocObject();
      v43 = v155;
      v145 = v42;
      *(v42 + 16) = sub_1B0394C30;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v145;
      v175 = v44;
      v146 = v44;
      *(v44 + 16) = sub_1B0394C24;
      *(v44 + 24) = v45;
      v176 = swift_allocObject();
      v147 = v176;
      v158 = 0;
      *(v176 + 16) = 0;
      v177 = swift_allocObject();
      v148 = v177;
      *(v177 + 16) = 1;
      v46 = swift_allocObject();
      v47 = v149;
      v150 = v46;
      *(v46 + 16) = sub_1B039BA2C;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v150;
      v178 = v48;
      v151 = v48;
      *(v48 + 16) = sub_1B039BA88;
      *(v48 + 24) = v49;
      v179 = swift_allocObject();
      v153 = v179;
      *(v179 + 16) = v152;
      v180 = swift_allocObject();
      v154 = v180;
      *(v180 + 16) = v160;
      v50 = swift_allocObject();
      v51 = v155;
      v156 = v50;
      *(v50 + 16) = sub_1B039BB94;
      *(v50 + 24) = v51;
      v52 = swift_allocObject();
      v53 = v156;
      v181 = v52;
      v157 = v52;
      *(v52 + 16) = sub_1B0394C24;
      *(v52 + 24) = v53;
      v182 = swift_allocObject();
      v159 = v182;
      *(v182 + 16) = v158;
      v183 = swift_allocObject();
      v161 = v183;
      *(v183 + 16) = v160;
      v54 = swift_allocObject();
      v55 = v162;
      v163 = v54;
      *(v54 + 16) = sub_1B039BBA0;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v163;
      v184 = v56;
      v164 = v56;
      *(v56 + 16) = sub_1B039BC08;
      *(v56 + 24) = v57;
      v185 = swift_allocObject();
      v166 = v185;
      *(v185 + 16) = 64;
      v186 = swift_allocObject();
      v167 = v186;
      *(v186 + 16) = 8;
      v58 = swift_allocObject();
      v59 = v170;
      v171 = v58;
      *(v58 + 16) = sub_1B07135E4;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v171;
      v189 = v60;
      v172 = v60;
      *(v60 + 16) = sub_1B070B324;
      *(v60 + 24) = v61;
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v187 = sub_1B0E46A48();
      v188 = v62;

      v63 = v173;
      v64 = v188;
      *v188 = sub_1B0398F5C;
      v64[1] = v63;

      v65 = v174;
      v66 = v188;
      v188[2] = sub_1B0398F5C;
      v66[3] = v65;

      v67 = v175;
      v68 = v188;
      v188[4] = sub_1B0399178;
      v68[5] = v67;

      v69 = v176;
      v70 = v188;
      v188[6] = sub_1B0398F5C;
      v70[7] = v69;

      v71 = v177;
      v72 = v188;
      v188[8] = sub_1B0398F5C;
      v72[9] = v71;

      v73 = v178;
      v74 = v188;
      v188[10] = sub_1B039BA94;
      v74[11] = v73;

      v75 = v179;
      v76 = v188;
      v188[12] = sub_1B0398F5C;
      v76[13] = v75;

      v77 = v180;
      v78 = v188;
      v188[14] = sub_1B0398F5C;
      v78[15] = v77;

      v79 = v181;
      v80 = v188;
      v188[16] = sub_1B0399178;
      v80[17] = v79;

      v81 = v182;
      v82 = v188;
      v188[18] = sub_1B0398F5C;
      v82[19] = v81;

      v83 = v183;
      v84 = v188;
      v188[20] = sub_1B0398F5C;
      v84[21] = v83;

      v85 = v184;
      v86 = v188;
      v188[22] = sub_1B03991EC;
      v86[23] = v85;

      v87 = v185;
      v88 = v188;
      v188[24] = sub_1B0398F5C;
      v88[25] = v87;

      v89 = v186;
      v90 = v188;
      v188[26] = sub_1B0398F5C;
      v90[27] = v89;

      v91 = v188;
      v92 = v189;
      v188[28] = sub_1B070B4B4;
      v91[29] = v92;
      sub_1B0394964();

      if (os_log_type_enabled(v192, v191))
      {
        v93 = v135;
        v129 = sub_1B0E45D78();
        v126 = v129;
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v130 = sub_1B03949A8(1);
        v128 = v130;
        v131 = sub_1B03949A8(0);
        v238 = v129;
        v237 = v130;
        v236 = v131;
        v132 = &v238;
        sub_1B0394A48(2, &v238);
        sub_1B0394A48(5, v132);
        v234 = sub_1B0398F5C;
        v235 = v143;
        sub_1B03949FC(&v234, v132, &v237, &v236);
        v133 = v93;
        v134 = v93;
        if (v93)
        {
          v124 = 0;

          __break(1u);
        }

        else
        {
          v234 = sub_1B0398F5C;
          v235 = v144;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v122 = 0;
          v123 = 0;
          v234 = sub_1B0399178;
          v235 = v146;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v120 = 0;
          v121 = 0;
          v234 = sub_1B0398F5C;
          v235 = v147;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v118 = 0;
          v119 = 0;
          v234 = sub_1B0398F5C;
          v235 = v148;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v116 = 0;
          v117 = 0;
          v234 = sub_1B039BA94;
          v235 = v151;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v114 = 0;
          v115 = 0;
          v234 = sub_1B0398F5C;
          v235 = v153;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v112 = 0;
          v113 = 0;
          v234 = sub_1B0398F5C;
          v235 = v154;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v110 = 0;
          v111 = 0;
          v234 = sub_1B0399178;
          v235 = v157;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v108 = 0;
          v109 = 0;
          v234 = sub_1B0398F5C;
          v235 = v159;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v106 = 0;
          v107 = 0;
          v234 = sub_1B0398F5C;
          v235 = v161;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v104 = 0;
          v105 = 0;
          v234 = sub_1B03991EC;
          v235 = v164;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v102 = 0;
          v103 = 0;
          v234 = sub_1B0398F5C;
          v235 = v166;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v100 = 0;
          v101 = 0;
          v234 = sub_1B0398F5C;
          v235 = v167;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v98 = 0;
          v99 = 0;
          v234 = sub_1B070B4B4;
          v235 = v172;
          sub_1B03949FC(&v234, &v238, &v237, &v236);
          v96 = 0;
          v97 = 0;
          _os_log_impl(&dword_1B0389000, v141, v142, "[%.*hhx-%.*X] Failed to persist complete download: %@", v126, 0x21u);
          sub_1B03998A8(v128);
          sub_1B03998A8(v131);
          sub_1B0E45D58();

          v125 = v96;
        }
      }

      else
      {
        v94 = v135;

        v125 = v94;
      }

      v95 = v125;

      (*(v213 + 8))(v214, v211);
      v201 = v95;
    }

    else
    {

      v201 = v203;
    }

    v200 = v201;
    sub_1B0993EC8(v230);
    v205 = v200;
  }

  sub_1B093A9A8(v218, v219, *v222, v222, v223);
  v199 = *(v222 + *(type metadata accessor for InProgressMessageDownload.Completed() + 32));
  if (v199 == 2)
  {
    v196 = 0;
    v197 = 1;
  }

  else
  {
    v198 = HIDWORD(v199);
    v196 = HIDWORD(v199);
    v197 = 0;
  }

  result = v196;
  v195 = v196;
  if ((v197 & 1) == 0)
  {
    v194 = v195;
    v193 = v195;
    v240 = v195;

    v207(v193);
  }

  return result;
}

uint64_t sub_1B093A8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v13 = a7 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard;
  swift_beginAccess();
  sub_1B0863D8C(a3, a4, a5, a6, a2, v13);
  return swift_endAccess();
}

void *sub_1B093A9A8(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (sub_1B0999758(a3, a1, a2))
  {
    return sub_1B093AA74(a1);
  }

  else
  {
    return sub_1B09408A4(a1, a2, a3, a5);
  }
}

uint64_t sub_1B093AA74(uint64_t a1)
{
  v1404 = MEMORY[0x1EEE9AC00](a1);
  v1405 = v2;
  v1406 = v3;
  v1392 = v4;
  v1393 = v5;
  v1310 = v1;
  v1394 = 0;
  v1311 = sub_1B03F7AE0;
  v1312 = sub_1B07AB020;
  v1313 = sub_1B039BC08;
  v1314 = sub_1B0398F5C;
  v1315 = sub_1B0398F5C;
  v1316 = sub_1B03991EC;
  v1317 = sub_1B074E050;
  v1318 = sub_1B09907C8;
  v1319 = sub_1B03F7AE0;
  v1320 = sub_1B0394C30;
  v1321 = sub_1B0394C24;
  v1322 = sub_1B074DFFC;
  v1323 = sub_1B039BA88;
  v1324 = sub_1B039BB94;
  v1325 = sub_1B0394C24;
  v1326 = sub_1B039BBA0;
  v1327 = sub_1B039BC08;
  v1328 = sub_1B06BA324;
  v1329 = sub_1B074E0E4;
  v1330 = sub_1B039BCF8;
  v1331 = sub_1B09907D0;
  v1332 = sub_1B039BC08;
  v1333 = sub_1B07AB020;
  v1334 = sub_1B039BC08;
  v1335 = sub_1B07B07A0;
  v1336 = sub_1B03B0DF8;
  v1337 = sub_1B0398F5C;
  v1338 = sub_1B0398F5C;
  v1339 = sub_1B0399178;
  v1340 = sub_1B0398F5C;
  v1341 = sub_1B0398F5C;
  v1342 = sub_1B039BA94;
  v1343 = sub_1B0398F5C;
  v1344 = sub_1B0398F5C;
  v1345 = sub_1B0399178;
  v1346 = sub_1B0398F5C;
  v1347 = sub_1B0398F5C;
  v1348 = sub_1B03991EC;
  v1349 = sub_1B0398F5C;
  v1350 = sub_1B0398F5C;
  v1351 = sub_1B03993BC;
  v1352 = sub_1B0398F5C;
  v1353 = sub_1B0398F5C;
  v1354 = sub_1B039BCEC;
  v1355 = sub_1B0398F5C;
  v1356 = sub_1B0398F5C;
  v1357 = sub_1B03991EC;
  v1358 = sub_1B0398F5C;
  v1359 = sub_1B0398F5C;
  v1360 = sub_1B03991EC;
  v1361 = sub_1B0398F5C;
  v1362 = sub_1B0398F5C;
  v1363 = sub_1B0399260;
  v1364 = sub_1B03F7AE0;
  v1365 = sub_1B07AB020;
  v1366 = sub_1B039BC08;
  v1367 = sub_1B0398F5C;
  v1368 = sub_1B0398F5C;
  v1369 = sub_1B03991EC;
  v1442 = 0;
  v1440 = 0;
  v1441 = 0;
  v1439 = 0;
  v1438 = 0;
  v1437 = 0;
  v1436 = 0;
  v1434 = 0;
  v1370 = 0;
  v1422 = 0;
  v1423 = 0;
  v1421 = 0;
  v1420[0] = 0;
  v1420[1] = 0;
  v1389 = 0;
  v1371 = _s6LoggerVMa_1();
  v1372 = (*(*(v1371 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](0);
  v1373 = v350 - v1372;
  v1374 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v1375 = v350 - v1374;
  v1376 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v1377 = v350 - v1376;
  v1378 = sub_1B0E439A8();
  v1379 = *(v1378 - 8);
  v1380 = v1378 - 8;
  v1381 = (*(v1379 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1378);
  v1382 = v350 - v1381;
  v1383 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v350 - v1381);
  v1384 = v350 - v1383;
  v1385 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v350 - v1383);
  v1386 = v350 - v1385;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  v1387 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v1388 = v350 - v1387;
  v1390 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1389);
  v1391 = v350 - v1390;
  v1395 = sub_1B0E443C8();
  v1397 = *(v1395 - 8);
  v1396 = v1395 - 8;
  v1398 = v1397;
  v1400 = *(v1397 + 64);
  v1399 = (v1400 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v1404);
  v1401 = v350 - v1399;
  v1402 = (v1400 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v1403 = v350 - v1402;
  v1442 = v350 - v1402;
  v1440 = v14;
  v1441 = v15;
  v1439 = v16;
  v1438 = v17;
  v1437 = v18;
  v1436 = v1;
  v1407 = &v1435;
  swift_beginAccess();
  v1408 = sub_1B09460C0(v1404, v1405, 1, v1406);
  swift_endAccess();
  v1434 = v1408;
  v1433[1] = v1408;
  v1409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v1410 = sub_1B0990678();
  if (sub_1B0E45748())
  {
    (*(v1379 + 16))(v1382, v1393, v1378);
    v362 = 7;
    v359 = swift_allocObject();
    *(v359 + 16) = v1406;

    v361 = 32;
    v336 = swift_allocObject();
    v337 = v359;
    v363 = v336;
    *(v336 + 16) = v1311;
    *(v336 + 24) = v337;

    v371 = sub_1B0E43988();
    v372 = sub_1B0E458E8();
    v360 = 17;
    v365 = swift_allocObject();
    *(v365 + 16) = 0;
    v366 = swift_allocObject();
    *(v366 + 16) = 4;
    v338 = swift_allocObject();
    v339 = v363;
    v364 = v338;
    *(v338 + 16) = v1312;
    *(v338 + 24) = v339;
    v340 = swift_allocObject();
    v341 = v364;
    v368 = v340;
    *(v340 + 16) = v1313;
    *(v340 + 24) = v341;
    v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v367 = sub_1B0E46A48();
    v369 = v342;

    v343 = v365;
    v344 = v369;
    *v369 = v1314;
    v344[1] = v343;

    v345 = v366;
    v346 = v369;
    v369[2] = v1315;
    v346[3] = v345;

    v347 = v368;
    v348 = v369;
    v369[4] = v1316;
    v348[5] = v347;
    sub_1B0394964();

    if (os_log_type_enabled(v371, v372))
    {
      v349 = v1370;
      v352 = sub_1B0E45D78();
      v350[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v351 = 0;
      v353 = sub_1B03949A8(0);
      v354 = sub_1B03949A8(v351);
      v355 = v1433;
      v1433[0] = v352;
      v356 = &v1432;
      v1432 = v353;
      v357 = &v1431;
      v1431 = v354;
      sub_1B0394A48(0, v1433);
      sub_1B0394A48(1, v355);
      v1429 = v1314;
      v1430 = v365;
      sub_1B03949FC(&v1429, v355, v356, v357);
      v358 = v349;
      if (v349)
      {

        __break(1u);
      }

      else
      {
        v1429 = v1315;
        v1430 = v366;
        sub_1B03949FC(&v1429, v1433, &v1432, &v1431);
        v350[2] = 0;
        v1429 = v1316;
        v1430 = v368;
        sub_1B03949FC(&v1429, v1433, &v1432, &v1431);
        _os_log_impl(&dword_1B0389000, v371, v372, "“Reply workaround” did not find any user-initiated requests matching UID %u.", v352, 8u);
        v350[1] = 0;
        sub_1B03998A8(v353);
        sub_1B03998A8(v354);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v371);
    (*(v1379 + 8))(v1382, v1378);
  }

  else
  {
    v1309 = *(v1310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

    sub_1B0798550(v1309, v1393, v1388);

    v19 = type metadata accessor for InProgressMessageDownload.EMLX();
    if ((*(*(v19 - 8) + 48))(v1388, 1) == 1)
    {
      sub_1B07AF3D4(v1388);
      (*(v1397 + 56))(v1391, 1, 1, v1395);
    }

    else
    {
      (*(v1397 + 16))(v1391, v1388, v1395);
      sub_1B07AF320(v1388);
      (*(v1397 + 56))(v1391, 0, 1, v1395);
    }

    if ((*(v1397 + 48))(v1391, 1, v1395) == 1)
    {
      sub_1B075B1E0(v1391);
LABEL_21:
      (*(v1379 + 16))(v1384, v1393, v1378);
      v387 = 7;
      v384 = swift_allocObject();
      *(v384 + 16) = v1406;

      v386 = 32;
      v322 = swift_allocObject();
      v323 = v384;
      v388 = v322;
      *(v322 + 16) = v1364;
      *(v322 + 24) = v323;

      v396 = sub_1B0E43988();
      v397 = sub_1B0E458E8();
      v385 = 17;
      v390 = swift_allocObject();
      *(v390 + 16) = 0;
      v391 = swift_allocObject();
      *(v391 + 16) = 4;
      v324 = swift_allocObject();
      v325 = v388;
      v389 = v324;
      *(v324 + 16) = v1365;
      *(v324 + 24) = v325;
      v326 = swift_allocObject();
      v327 = v389;
      v393 = v326;
      *(v326 + 16) = v1366;
      *(v326 + 24) = v327;
      v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v392 = sub_1B0E46A48();
      v394 = v328;

      v329 = v390;
      v330 = v394;
      *v394 = v1367;
      v330[1] = v329;

      v331 = v391;
      v332 = v394;
      v394[2] = v1368;
      v332[3] = v331;

      v333 = v393;
      v334 = v394;
      v394[4] = v1369;
      v334[5] = v333;
      sub_1B0394964();

      if (os_log_type_enabled(v396, v397))
      {
        v335 = v1370;
        v377 = sub_1B0E45D78();
        v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v376 = 0;
        v378 = sub_1B03949A8(0);
        v379 = sub_1B03949A8(v376);
        v380 = &v1428;
        v1428 = v377;
        v381 = &v1427;
        v1427 = v378;
        v382 = &v1426;
        v1426 = v379;
        sub_1B0394A48(0, &v1428);
        sub_1B0394A48(1, v380);
        v1424 = v1367;
        v1425 = v390;
        sub_1B03949FC(&v1424, v380, v381, v382);
        v383 = v335;
        if (v335)
        {

          __break(1u);
        }

        else
        {
          v1424 = v1368;
          v1425 = v391;
          sub_1B03949FC(&v1424, &v1428, &v1427, &v1426);
          v374 = 0;
          v1424 = v1369;
          v1425 = v393;
          sub_1B03949FC(&v1424, &v1428, &v1427, &v1426);
          _os_log_impl(&dword_1B0389000, v396, v397, "Unable to assemble EMLX for “reply workaround” for UID %u.", v377, 8u);
          v373 = 0;
          sub_1B03998A8(v378);
          sub_1B03998A8(v379);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v396);
      (*(v1379 + 8))(v1384, v1378);
    }

    v20 = v1401;
    v1301 = *(v1397 + 32);
    v1302 = v1397 + 32;
    v1301(v1403, v1391, v1395);
    v1303 = *(v1397 + 16);
    v1304 = v1397 + 16;
    v1303(v20, v1403, v1395);
    v1305 = sub_1B0E44338();
    v1308 = NWCreateNSDataFromDispatchData();
    MEMORY[0x1E69E5920](v1305);
    v1306 = *(v1397 + 8);
    v1307 = v1397 + 8;
    v1306(v1401, v1395);
    if (v1308)
    {
      v1300 = v1308;
      v1295 = v1308;
      v1296 = sub_1B0E42F38();
      v1297 = v21;
      MEMORY[0x1E69E5920](v1295);
      v1298 = v1296;
      v1299 = v1297;
    }

    else
    {
      v1298 = 0;
      v1299 = 0xF000000000000000;
    }

    v1293 = v1299;
    v1294 = v1298;
    if ((v1299 & 0xF000000000000000) == 0xF000000000000000)
    {
      v1306(v1403, v1395);
      goto LABEL_21;
    }

    v1291 = v1294;
    v1292 = v1293;
    v1287 = v1293;
    v1288 = v1294;
    v1422 = v1294;
    v1423 = v1293;
    sub_1B03B2000(v1294, v1293);
    v1289 = sub_1B0E42F18();
    v1421 = v1289;
    sub_1B0391D50(v1288, v1287);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v1419[9] = v1408;
    sub_1B0E45798();
    for (i = v1370; ; i = v400)
    {
      v1283 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
      v1284 = &v1417;
      sub_1B0E46518();
      v1285 = v1418;
      v1286 = 72;
      memcpy(v1418, v1284, sizeof(v1418));
      memcpy(v1419, v1418, 0x48uLL);
      if (!v1419[3])
      {
        break;
      }

      v1224 = v1419;
      v1225 = __dst;
      v1226 = 72;
      memcpy(__dst, v1419, 0x48uLL);
      (*(v1379 + 16))(v1386, v1393, v1378);
      sub_1B074B69C(v1393, v1377);
      sub_1B074B69C(v1377, v1375);
      sub_1B074E41C(v1377, v1373);
      v22 = (v1375 + *(v1371 + 20));
      v1220 = *v22;
      v1221 = *(v22 + 1);
      v1222 = *(v22 + 1);
      v1223 = *(v22 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1375);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1219 = 36;
      v1248 = 7;
      v23 = swift_allocObject();
      v24 = v1221;
      v25 = v1222;
      v26 = v1223;
      v1231 = v23;
      *(v23 + 16) = v1220;
      *(v23 + 20) = v24;
      *(v23 + 24) = v25;
      *(v23 + 32) = v26;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v27 = swift_allocObject();
      v28 = v1221;
      v29 = v1222;
      v30 = v1223;
      v1218 = v27;
      *(v27 + 16) = v1220;
      *(v27 + 20) = v28;
      *(v27 + 24) = v29;
      *(v27 + 32) = v30;

      v1247 = 32;
      v31 = swift_allocObject();
      v32 = v1218;
      v1235 = v31;
      *(v31 + 16) = v1317;
      *(v31 + 24) = v32;
      sub_1B0394868();
      sub_1B0394868();

      v33 = swift_allocObject();
      v34 = v1221;
      v35 = v1222;
      v36 = v1223;
      v37 = v33;
      v38 = v1373;
      v1238 = v37;
      *(v37 + 16) = v1220;
      *(v37 + 20) = v34;
      *(v37 + 24) = v35;
      *(v37 + 32) = v36;
      sub_1B074B764(v38);
      sub_1B0990700(v1224, &v1416);
      v1227 = swift_allocObject();
      memcpy((v1227 + 16), v1225, v1226);

      v39 = swift_allocObject();
      v40 = v1227;
      v1240 = v39;
      *(v39 + 16) = v1318;
      *(v39 + 24) = v40;

      v1228 = swift_allocObject();
      *(v1228 + 16) = v1406;

      v41 = swift_allocObject();
      v42 = v1228;
      v1243 = v41;
      *(v41 + 16) = v1319;
      *(v41 + 24) = v42;

      v1303(v1401, v1403, v1395);
      v1229 = (*(v1398 + 80) + 16) & ~*(v1398 + 80);
      v1249 = swift_allocObject();
      v1301((v1249 + v1229), v1401, v1395);
      sub_1B07575C4();

      v1281 = sub_1B0E43988();
      v1282 = sub_1B0E45908();
      v1245 = 17;
      v1251 = swift_allocObject();
      v1233 = 16;
      *(v1251 + 16) = 16;
      v1252 = swift_allocObject();
      v1242 = 4;
      *(v1252 + 16) = 4;
      v43 = swift_allocObject();
      v1230 = v43;
      *(v43 + 16) = v1320;
      *(v43 + 24) = 0;
      v44 = swift_allocObject();
      v45 = v1230;
      v1253 = v44;
      *(v44 + 16) = v1321;
      *(v44 + 24) = v45;
      v1254 = swift_allocObject();
      *(v1254 + 16) = 0;
      v1255 = swift_allocObject();
      *(v1255 + 16) = 1;
      v46 = swift_allocObject();
      v47 = v1231;
      v1232 = v46;
      *(v46 + 16) = v1322;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v1232;
      v1256 = v48;
      *(v48 + 16) = v1323;
      *(v48 + 24) = v49;
      v1257 = swift_allocObject();
      *(v1257 + 16) = v1233;
      v1258 = swift_allocObject();
      *(v1258 + 16) = v1242;
      v50 = swift_allocObject();
      v1234 = v50;
      *(v50 + 16) = v1324;
      *(v50 + 24) = 0;
      v51 = swift_allocObject();
      v52 = v1234;
      v1259 = v51;
      *(v51 + 16) = v1325;
      *(v51 + 24) = v52;
      v1260 = swift_allocObject();
      *(v1260 + 16) = 0;
      v1261 = swift_allocObject();
      *(v1261 + 16) = v1242;
      v53 = swift_allocObject();
      v54 = v1235;
      v1236 = v53;
      *(v53 + 16) = v1326;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v1236;
      v1262 = v55;
      *(v55 + 16) = v1327;
      *(v55 + 24) = v56;
      v1263 = swift_allocObject();
      *(v1263 + 16) = 112;
      v1264 = swift_allocObject();
      v1246 = 8;
      *(v1264 + 16) = 8;
      v1237 = swift_allocObject();
      *(v1237 + 16) = 0x786F626C69616DLL;
      v57 = swift_allocObject();
      v58 = v1237;
      v1265 = v57;
      *(v57 + 16) = v1328;
      *(v57 + 24) = v58;
      v1266 = swift_allocObject();
      *(v1266 + 16) = 37;
      v1267 = swift_allocObject();
      *(v1267 + 16) = v1246;
      v59 = swift_allocObject();
      v60 = v1238;
      v1239 = v59;
      *(v59 + 16) = v1329;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v1239;
      v1268 = v61;
      *(v61 + 16) = v1330;
      *(v61 + 24) = v62;
      v1269 = swift_allocObject();
      *(v1269 + 16) = 2;
      v1270 = swift_allocObject();
      *(v1270 + 16) = v1242;
      v63 = swift_allocObject();
      v64 = v1240;
      v1241 = v63;
      *(v63 + 16) = v1331;
      *(v63 + 24) = v64;
      v65 = swift_allocObject();
      v66 = v1241;
      v1271 = v65;
      *(v65 + 16) = v1332;
      *(v65 + 24) = v66;
      v1272 = swift_allocObject();
      *(v1272 + 16) = 0;
      v1273 = swift_allocObject();
      *(v1273 + 16) = v1242;
      v67 = swift_allocObject();
      v68 = v1243;
      v1244 = v67;
      *(v67 + 16) = v1333;
      *(v67 + 24) = v68;
      v69 = swift_allocObject();
      v70 = v1244;
      v1274 = v69;
      *(v69 + 16) = v1334;
      *(v69 + 24) = v70;
      v1275 = swift_allocObject();
      *(v1275 + 16) = 0;
      v1276 = swift_allocObject();
      *(v1276 + 16) = v1246;
      v71 = swift_allocObject();
      v72 = v1249;
      v1250 = v71;
      *(v71 + 16) = v1335;
      *(v71 + 24) = v72;
      v73 = swift_allocObject();
      v74 = v1250;
      v1278 = v73;
      *(v73 + 16) = v1336;
      *(v73 + 24) = v74;
      v1280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1277 = sub_1B0E46A48();
      v1279 = v75;

      v76 = v1251;
      v77 = v1279;
      *v1279 = v1337;
      v77[1] = v76;

      v78 = v1252;
      v79 = v1279;
      v1279[2] = v1338;
      v79[3] = v78;

      v80 = v1253;
      v81 = v1279;
      v1279[4] = v1339;
      v81[5] = v80;

      v82 = v1254;
      v83 = v1279;
      v1279[6] = v1340;
      v83[7] = v82;

      v84 = v1255;
      v85 = v1279;
      v1279[8] = v1341;
      v85[9] = v84;

      v86 = v1256;
      v87 = v1279;
      v1279[10] = v1342;
      v87[11] = v86;

      v88 = v1257;
      v89 = v1279;
      v1279[12] = v1343;
      v89[13] = v88;

      v90 = v1258;
      v91 = v1279;
      v1279[14] = v1344;
      v91[15] = v90;

      v92 = v1259;
      v93 = v1279;
      v1279[16] = v1345;
      v93[17] = v92;

      v94 = v1260;
      v95 = v1279;
      v1279[18] = v1346;
      v95[19] = v94;

      v96 = v1261;
      v97 = v1279;
      v1279[20] = v1347;
      v97[21] = v96;

      v98 = v1262;
      v99 = v1279;
      v1279[22] = v1348;
      v99[23] = v98;

      v100 = v1263;
      v101 = v1279;
      v1279[24] = v1349;
      v101[25] = v100;

      v102 = v1264;
      v103 = v1279;
      v1279[26] = v1350;
      v103[27] = v102;

      v104 = v1265;
      v105 = v1279;
      v1279[28] = v1351;
      v105[29] = v104;

      v106 = v1266;
      v107 = v1279;
      v1279[30] = v1352;
      v107[31] = v106;

      v108 = v1267;
      v109 = v1279;
      v1279[32] = v1353;
      v109[33] = v108;

      v110 = v1268;
      v111 = v1279;
      v1279[34] = v1354;
      v111[35] = v110;

      v112 = v1269;
      v113 = v1279;
      v1279[36] = v1355;
      v113[37] = v112;

      v114 = v1270;
      v115 = v1279;
      v1279[38] = v1356;
      v115[39] = v114;

      v116 = v1271;
      v117 = v1279;
      v1279[40] = v1357;
      v117[41] = v116;

      v118 = v1272;
      v119 = v1279;
      v1279[42] = v1358;
      v119[43] = v118;

      v120 = v1273;
      v121 = v1279;
      v1279[44] = v1359;
      v121[45] = v120;

      v122 = v1274;
      v123 = v1279;
      v1279[46] = v1360;
      v123[47] = v122;

      v124 = v1275;
      v125 = v1279;
      v1279[48] = v1361;
      v125[49] = v124;

      v126 = v1276;
      v127 = v1279;
      v1279[50] = v1362;
      v127[51] = v126;

      v128 = v1278;
      v129 = v1279;
      v1279[52] = v1363;
      v129[53] = v128;
      sub_1B0394964();

      if (os_log_type_enabled(v1281, v1282))
      {
        v130 = v1258;
        v131 = v1257;
        v132 = v1256;
        v133 = v1255;
        v134 = v1254;
        v135 = v1253;
        v136 = v1252;
        v137 = v1283;
        v1184 = sub_1B0E45D78();
        v1183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1185 = sub_1B03949A8(0);
        v1186 = sub_1B03949A8(1);
        v1187 = &v1415;
        v1415 = v1184;
        v1188 = &v1414;
        v1414 = v1185;
        v1189 = &v1413;
        v1413 = v1186;
        sub_1B0394A48(3, &v1415);
        sub_1B0394A48(9, v1187);
        v1411 = v1337;
        v1412 = v1251;
        sub_1B03949FC(&v1411, v1187, v1188, v1189);
        v1190 = v137;
        v1191 = v1251;
        v1192 = v136;
        v1193 = v135;
        v1194 = v134;
        v1195 = v133;
        v1196 = v132;
        v1197 = v131;
        v1198 = v130;
        v1199 = v1259;
        v1200 = v1260;
        v1201 = v1261;
        v1202 = v1262;
        v1203 = v1263;
        v1204 = v1264;
        v1205 = v1265;
        v1206 = v1266;
        v1207 = v1267;
        v1208 = v1268;
        v1209 = v1269;
        v1210 = v1270;
        v1211 = v1271;
        v1212 = v1272;
        v1213 = v1273;
        v1214 = v1274;
        v1215 = v1275;
        v1216 = v1276;
        v1217 = v1278;
        if (v137)
        {
          v1155 = v1191;
          v1156 = v1192;
          v1157 = v1193;
          v1158 = v1194;
          v1159 = v1195;
          v1160 = v1196;
          v1161 = v1197;
          v1162 = v1198;
          v1163 = v1199;
          v1164 = v1200;
          v1165 = v1201;
          v1166 = v1202;
          v1167 = v1203;
          v1168 = v1204;
          v1169 = v1205;
          v1170 = v1206;
          v1171 = v1207;
          v1172 = v1208;
          v1173 = v1209;
          v1174 = v1210;
          v1175 = v1211;
          v1176 = v1212;
          v1177 = v1213;
          v1178 = v1214;
          v1179 = v1215;
          v1180 = v1216;
          v1181 = v1217;
          v426 = v1217;
          v425 = v1216;
          v424 = v1215;
          v423 = v1214;
          v422 = v1213;
          v421 = v1212;
          v420 = v1211;
          v419 = v1210;
          v418 = v1209;
          v417 = v1208;
          v416 = v1207;
          v415 = v1206;
          v414 = v1205;
          v413 = v1204;
          v412 = v1203;
          v411 = v1202;
          v410 = v1201;
          v409 = v1200;
          v408 = v1199;
          v407 = v1198;
          v406 = v1197;
          v405 = v1196;
          v404 = v1195;
          v403 = v1194;
          v402 = v1193;
          v401 = v1192;

          __break(1u);
        }

        else
        {
          v139 = v1258;
          v140 = v1257;
          v141 = v1256;
          v142 = v1255;
          v143 = v1254;
          v144 = v1253;
          v145 = v1252;
          v1411 = v1338;
          v1412 = v1252;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v1127 = 0;
          v1128 = v1251;
          v1129 = v145;
          v1130 = v144;
          v1131 = v143;
          v1132 = v142;
          v1133 = v141;
          v1134 = v140;
          v1135 = v139;
          v1136 = v1259;
          v1137 = v1260;
          v1138 = v1261;
          v1139 = v1262;
          v1140 = v1263;
          v1141 = v1264;
          v1142 = v1265;
          v1143 = v1266;
          v1144 = v1267;
          v1145 = v1268;
          v1146 = v1269;
          v1147 = v1270;
          v1148 = v1271;
          v1149 = v1272;
          v1150 = v1273;
          v1151 = v1274;
          v1152 = v1275;
          v1153 = v1276;
          v1154 = v1278;
          v146 = v1258;
          v147 = v1257;
          v148 = v1256;
          v149 = v1255;
          v150 = v1254;
          v151 = v1253;
          v152 = v1252;
          v1411 = v1339;
          v1412 = v1253;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v1099 = 0;
          v1100 = v1251;
          v1101 = v152;
          v1102 = v151;
          v1103 = v150;
          v1104 = v149;
          v1105 = v148;
          v1106 = v147;
          v1107 = v146;
          v1108 = v1259;
          v1109 = v1260;
          v1110 = v1261;
          v1111 = v1262;
          v1112 = v1263;
          v1113 = v1264;
          v1114 = v1265;
          v1115 = v1266;
          v1116 = v1267;
          v1117 = v1268;
          v1118 = v1269;
          v1119 = v1270;
          v1120 = v1271;
          v1121 = v1272;
          v1122 = v1273;
          v1123 = v1274;
          v1124 = v1275;
          v1125 = v1276;
          v1126 = v1278;
          v153 = v1258;
          v154 = v1257;
          v155 = v1256;
          v156 = v1255;
          v157 = v1254;
          v158 = v1253;
          v159 = v1252;
          v1411 = v1340;
          v1412 = v1254;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v1071 = 0;
          v1072 = v1251;
          v1073 = v159;
          v1074 = v158;
          v1075 = v157;
          v1076 = v156;
          v1077 = v155;
          v1078 = v154;
          v1079 = v153;
          v1080 = v1259;
          v1081 = v1260;
          v1082 = v1261;
          v1083 = v1262;
          v1084 = v1263;
          v1085 = v1264;
          v1086 = v1265;
          v1087 = v1266;
          v1088 = v1267;
          v1089 = v1268;
          v1090 = v1269;
          v1091 = v1270;
          v1092 = v1271;
          v1093 = v1272;
          v1094 = v1273;
          v1095 = v1274;
          v1096 = v1275;
          v1097 = v1276;
          v1098 = v1278;
          v160 = v1258;
          v161 = v1257;
          v162 = v1256;
          v163 = v1255;
          v164 = v1254;
          v165 = v1253;
          v166 = v1252;
          v1411 = v1341;
          v1412 = v1255;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v1043 = 0;
          v1044 = v1251;
          v1045 = v166;
          v1046 = v165;
          v1047 = v164;
          v1048 = v163;
          v1049 = v162;
          v1050 = v161;
          v1051 = v160;
          v1052 = v1259;
          v1053 = v1260;
          v1054 = v1261;
          v1055 = v1262;
          v1056 = v1263;
          v1057 = v1264;
          v1058 = v1265;
          v1059 = v1266;
          v1060 = v1267;
          v1061 = v1268;
          v1062 = v1269;
          v1063 = v1270;
          v1064 = v1271;
          v1065 = v1272;
          v1066 = v1273;
          v1067 = v1274;
          v1068 = v1275;
          v1069 = v1276;
          v1070 = v1278;
          v167 = v1258;
          v168 = v1257;
          v169 = v1256;
          v170 = v1255;
          v171 = v1254;
          v172 = v1253;
          v173 = v1252;
          v1411 = v1342;
          v1412 = v1256;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v1015 = 0;
          v1016 = v1251;
          v1017 = v173;
          v1018 = v172;
          v1019 = v171;
          v1020 = v170;
          v1021 = v169;
          v1022 = v168;
          v1023 = v167;
          v1024 = v1259;
          v1025 = v1260;
          v1026 = v1261;
          v1027 = v1262;
          v1028 = v1263;
          v1029 = v1264;
          v1030 = v1265;
          v1031 = v1266;
          v1032 = v1267;
          v1033 = v1268;
          v1034 = v1269;
          v1035 = v1270;
          v1036 = v1271;
          v1037 = v1272;
          v1038 = v1273;
          v1039 = v1274;
          v1040 = v1275;
          v1041 = v1276;
          v1042 = v1278;
          v174 = v1258;
          v175 = v1257;
          v176 = v1256;
          v177 = v1255;
          v178 = v1254;
          v179 = v1253;
          v180 = v1252;
          v1411 = v1343;
          v1412 = v1257;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v987 = 0;
          v988 = v1251;
          v989 = v180;
          v990 = v179;
          v991 = v178;
          v992 = v177;
          v993 = v176;
          v994 = v175;
          v995 = v174;
          v996 = v1259;
          v997 = v1260;
          v998 = v1261;
          v999 = v1262;
          v1000 = v1263;
          v1001 = v1264;
          v1002 = v1265;
          v1003 = v1266;
          v1004 = v1267;
          v1005 = v1268;
          v1006 = v1269;
          v1007 = v1270;
          v1008 = v1271;
          v1009 = v1272;
          v1010 = v1273;
          v1011 = v1274;
          v1012 = v1275;
          v1013 = v1276;
          v1014 = v1278;
          v181 = v1258;
          v182 = v1257;
          v183 = v1256;
          v184 = v1255;
          v185 = v1254;
          v186 = v1253;
          v187 = v1252;
          v1411 = v1344;
          v1412 = v1258;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v959 = 0;
          v960 = v1251;
          v961 = v187;
          v962 = v186;
          v963 = v185;
          v964 = v184;
          v965 = v183;
          v966 = v182;
          v967 = v181;
          v968 = v1259;
          v969 = v1260;
          v970 = v1261;
          v971 = v1262;
          v972 = v1263;
          v973 = v1264;
          v974 = v1265;
          v975 = v1266;
          v976 = v1267;
          v977 = v1268;
          v978 = v1269;
          v979 = v1270;
          v980 = v1271;
          v981 = v1272;
          v982 = v1273;
          v983 = v1274;
          v984 = v1275;
          v985 = v1276;
          v986 = v1278;
          v188 = v1258;
          v189 = v1257;
          v190 = v1256;
          v191 = v1255;
          v192 = v1254;
          v193 = v1253;
          v194 = v1252;
          v1411 = v1345;
          v1412 = v1259;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v931 = 0;
          v932 = v1251;
          v933 = v194;
          v934 = v193;
          v935 = v192;
          v936 = v191;
          v937 = v190;
          v938 = v189;
          v939 = v188;
          v940 = v1259;
          v941 = v1260;
          v942 = v1261;
          v943 = v1262;
          v944 = v1263;
          v945 = v1264;
          v946 = v1265;
          v947 = v1266;
          v948 = v1267;
          v949 = v1268;
          v950 = v1269;
          v951 = v1270;
          v952 = v1271;
          v953 = v1272;
          v954 = v1273;
          v955 = v1274;
          v956 = v1275;
          v957 = v1276;
          v958 = v1278;
          v195 = v1258;
          v196 = v1257;
          v197 = v1256;
          v198 = v1255;
          v199 = v1254;
          v200 = v1253;
          v201 = v1252;
          v1411 = v1346;
          v1412 = v1260;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v903 = 0;
          v904 = v1251;
          v905 = v201;
          v906 = v200;
          v907 = v199;
          v908 = v198;
          v909 = v197;
          v910 = v196;
          v911 = v195;
          v912 = v1259;
          v913 = v1260;
          v914 = v1261;
          v915 = v1262;
          v916 = v1263;
          v917 = v1264;
          v918 = v1265;
          v919 = v1266;
          v920 = v1267;
          v921 = v1268;
          v922 = v1269;
          v923 = v1270;
          v924 = v1271;
          v925 = v1272;
          v926 = v1273;
          v927 = v1274;
          v928 = v1275;
          v929 = v1276;
          v930 = v1278;
          v202 = v1258;
          v203 = v1257;
          v204 = v1256;
          v205 = v1255;
          v206 = v1254;
          v207 = v1253;
          v208 = v1252;
          v1411 = v1347;
          v1412 = v1261;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v875 = 0;
          v876 = v1251;
          v877 = v208;
          v878 = v207;
          v879 = v206;
          v880 = v205;
          v881 = v204;
          v882 = v203;
          v883 = v202;
          v884 = v1259;
          v885 = v1260;
          v886 = v1261;
          v887 = v1262;
          v888 = v1263;
          v889 = v1264;
          v890 = v1265;
          v891 = v1266;
          v892 = v1267;
          v893 = v1268;
          v894 = v1269;
          v895 = v1270;
          v896 = v1271;
          v897 = v1272;
          v898 = v1273;
          v899 = v1274;
          v900 = v1275;
          v901 = v1276;
          v902 = v1278;
          v209 = v1258;
          v210 = v1257;
          v211 = v1256;
          v212 = v1255;
          v213 = v1254;
          v214 = v1253;
          v215 = v1252;
          v1411 = v1348;
          v1412 = v1262;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v847 = 0;
          v848 = v1251;
          v849 = v215;
          v850 = v214;
          v851 = v213;
          v852 = v212;
          v853 = v211;
          v854 = v210;
          v855 = v209;
          v856 = v1259;
          v857 = v1260;
          v858 = v1261;
          v859 = v1262;
          v860 = v1263;
          v861 = v1264;
          v862 = v1265;
          v863 = v1266;
          v864 = v1267;
          v865 = v1268;
          v866 = v1269;
          v867 = v1270;
          v868 = v1271;
          v869 = v1272;
          v870 = v1273;
          v871 = v1274;
          v872 = v1275;
          v873 = v1276;
          v874 = v1278;
          v216 = v1258;
          v217 = v1257;
          v218 = v1256;
          v219 = v1255;
          v220 = v1254;
          v221 = v1253;
          v222 = v1252;
          v1411 = v1349;
          v1412 = v1263;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v819 = 0;
          v820 = v1251;
          v821 = v222;
          v822 = v221;
          v823 = v220;
          v824 = v219;
          v825 = v218;
          v826 = v217;
          v827 = v216;
          v828 = v1259;
          v829 = v1260;
          v830 = v1261;
          v831 = v1262;
          v832 = v1263;
          v833 = v1264;
          v834 = v1265;
          v835 = v1266;
          v836 = v1267;
          v837 = v1268;
          v838 = v1269;
          v839 = v1270;
          v840 = v1271;
          v841 = v1272;
          v842 = v1273;
          v843 = v1274;
          v844 = v1275;
          v845 = v1276;
          v846 = v1278;
          v223 = v1258;
          v224 = v1257;
          v225 = v1256;
          v226 = v1255;
          v227 = v1254;
          v228 = v1253;
          v229 = v1252;
          v1411 = v1350;
          v1412 = v1264;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v791 = 0;
          v792 = v1251;
          v793 = v229;
          v794 = v228;
          v795 = v227;
          v796 = v226;
          v797 = v225;
          v798 = v224;
          v799 = v223;
          v800 = v1259;
          v801 = v1260;
          v802 = v1261;
          v803 = v1262;
          v804 = v1263;
          v805 = v1264;
          v806 = v1265;
          v807 = v1266;
          v808 = v1267;
          v809 = v1268;
          v810 = v1269;
          v811 = v1270;
          v812 = v1271;
          v813 = v1272;
          v814 = v1273;
          v815 = v1274;
          v816 = v1275;
          v817 = v1276;
          v818 = v1278;
          v230 = v1258;
          v231 = v1257;
          v232 = v1256;
          v233 = v1255;
          v234 = v1254;
          v235 = v1253;
          v236 = v1252;
          v1411 = v1351;
          v1412 = v1265;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v763 = 0;
          v764 = v1251;
          v765 = v236;
          v766 = v235;
          v767 = v234;
          v768 = v233;
          v769 = v232;
          v770 = v231;
          v771 = v230;
          v772 = v1259;
          v773 = v1260;
          v774 = v1261;
          v775 = v1262;
          v776 = v1263;
          v777 = v1264;
          v778 = v1265;
          v779 = v1266;
          v780 = v1267;
          v781 = v1268;
          v782 = v1269;
          v783 = v1270;
          v784 = v1271;
          v785 = v1272;
          v786 = v1273;
          v787 = v1274;
          v788 = v1275;
          v789 = v1276;
          v790 = v1278;
          v237 = v1258;
          v238 = v1257;
          v239 = v1256;
          v240 = v1255;
          v241 = v1254;
          v242 = v1253;
          v243 = v1252;
          v1411 = v1352;
          v1412 = v1266;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v735 = 0;
          v736 = v1251;
          v737 = v243;
          v738 = v242;
          v739 = v241;
          v740 = v240;
          v741 = v239;
          v742 = v238;
          v743 = v237;
          v744 = v1259;
          v745 = v1260;
          v746 = v1261;
          v747 = v1262;
          v748 = v1263;
          v749 = v1264;
          v750 = v1265;
          v751 = v1266;
          v752 = v1267;
          v753 = v1268;
          v754 = v1269;
          v755 = v1270;
          v756 = v1271;
          v757 = v1272;
          v758 = v1273;
          v759 = v1274;
          v760 = v1275;
          v761 = v1276;
          v762 = v1278;
          v244 = v1258;
          v245 = v1257;
          v246 = v1256;
          v247 = v1255;
          v248 = v1254;
          v249 = v1253;
          v250 = v1252;
          v1411 = v1353;
          v1412 = v1267;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v707 = 0;
          v708 = v1251;
          v709 = v250;
          v710 = v249;
          v711 = v248;
          v712 = v247;
          v713 = v246;
          v714 = v245;
          v715 = v244;
          v716 = v1259;
          v717 = v1260;
          v718 = v1261;
          v719 = v1262;
          v720 = v1263;
          v721 = v1264;
          v722 = v1265;
          v723 = v1266;
          v724 = v1267;
          v725 = v1268;
          v726 = v1269;
          v727 = v1270;
          v728 = v1271;
          v729 = v1272;
          v730 = v1273;
          v731 = v1274;
          v732 = v1275;
          v733 = v1276;
          v734 = v1278;
          v251 = v1258;
          v252 = v1257;
          v253 = v1256;
          v254 = v1255;
          v255 = v1254;
          v256 = v1253;
          v257 = v1252;
          v1411 = v1354;
          v1412 = v1268;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v679 = 0;
          v680 = v1251;
          v681 = v257;
          v682 = v256;
          v683 = v255;
          v684 = v254;
          v685 = v253;
          v686 = v252;
          v687 = v251;
          v688 = v1259;
          v689 = v1260;
          v690 = v1261;
          v691 = v1262;
          v692 = v1263;
          v693 = v1264;
          v694 = v1265;
          v695 = v1266;
          v696 = v1267;
          v697 = v1268;
          v698 = v1269;
          v699 = v1270;
          v700 = v1271;
          v701 = v1272;
          v702 = v1273;
          v703 = v1274;
          v704 = v1275;
          v705 = v1276;
          v706 = v1278;
          v258 = v1258;
          v259 = v1257;
          v260 = v1256;
          v261 = v1255;
          v262 = v1254;
          v263 = v1253;
          v264 = v1252;
          v1411 = v1355;
          v1412 = v1269;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v651 = 0;
          v652 = v1251;
          v653 = v264;
          v654 = v263;
          v655 = v262;
          v656 = v261;
          v657 = v260;
          v658 = v259;
          v659 = v258;
          v660 = v1259;
          v661 = v1260;
          v662 = v1261;
          v663 = v1262;
          v664 = v1263;
          v665 = v1264;
          v666 = v1265;
          v667 = v1266;
          v668 = v1267;
          v669 = v1268;
          v670 = v1269;
          v671 = v1270;
          v672 = v1271;
          v673 = v1272;
          v674 = v1273;
          v675 = v1274;
          v676 = v1275;
          v677 = v1276;
          v678 = v1278;
          v265 = v1258;
          v266 = v1257;
          v267 = v1256;
          v268 = v1255;
          v269 = v1254;
          v270 = v1253;
          v271 = v1252;
          v1411 = v1356;
          v1412 = v1270;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v623 = 0;
          v624 = v1251;
          v625 = v271;
          v626 = v270;
          v627 = v269;
          v628 = v268;
          v629 = v267;
          v630 = v266;
          v631 = v265;
          v632 = v1259;
          v633 = v1260;
          v634 = v1261;
          v635 = v1262;
          v636 = v1263;
          v637 = v1264;
          v638 = v1265;
          v639 = v1266;
          v640 = v1267;
          v641 = v1268;
          v642 = v1269;
          v643 = v1270;
          v644 = v1271;
          v645 = v1272;
          v646 = v1273;
          v647 = v1274;
          v648 = v1275;
          v649 = v1276;
          v650 = v1278;
          v272 = v1258;
          v273 = v1257;
          v274 = v1256;
          v275 = v1255;
          v276 = v1254;
          v277 = v1253;
          v278 = v1252;
          v1411 = v1357;
          v1412 = v1271;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v595 = 0;
          v596 = v1251;
          v597 = v278;
          v598 = v277;
          v599 = v276;
          v600 = v275;
          v601 = v274;
          v602 = v273;
          v603 = v272;
          v604 = v1259;
          v605 = v1260;
          v606 = v1261;
          v607 = v1262;
          v608 = v1263;
          v609 = v1264;
          v610 = v1265;
          v611 = v1266;
          v612 = v1267;
          v613 = v1268;
          v614 = v1269;
          v615 = v1270;
          v616 = v1271;
          v617 = v1272;
          v618 = v1273;
          v619 = v1274;
          v620 = v1275;
          v621 = v1276;
          v622 = v1278;
          v279 = v1258;
          v280 = v1257;
          v281 = v1256;
          v282 = v1255;
          v283 = v1254;
          v284 = v1253;
          v285 = v1252;
          v1411 = v1358;
          v1412 = v1272;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v567 = 0;
          v568 = v1251;
          v569 = v285;
          v570 = v284;
          v571 = v283;
          v572 = v282;
          v573 = v281;
          v574 = v280;
          v575 = v279;
          v576 = v1259;
          v577 = v1260;
          v578 = v1261;
          v579 = v1262;
          v580 = v1263;
          v581 = v1264;
          v582 = v1265;
          v583 = v1266;
          v584 = v1267;
          v585 = v1268;
          v586 = v1269;
          v587 = v1270;
          v588 = v1271;
          v589 = v1272;
          v590 = v1273;
          v591 = v1274;
          v592 = v1275;
          v593 = v1276;
          v594 = v1278;
          v286 = v1258;
          v287 = v1257;
          v288 = v1256;
          v289 = v1255;
          v290 = v1254;
          v291 = v1253;
          v292 = v1252;
          v1411 = v1359;
          v1412 = v1273;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v539 = 0;
          v540 = v1251;
          v541 = v292;
          v542 = v291;
          v543 = v290;
          v544 = v289;
          v545 = v288;
          v546 = v287;
          v547 = v286;
          v548 = v1259;
          v549 = v1260;
          v550 = v1261;
          v551 = v1262;
          v552 = v1263;
          v553 = v1264;
          v554 = v1265;
          v555 = v1266;
          v556 = v1267;
          v557 = v1268;
          v558 = v1269;
          v559 = v1270;
          v560 = v1271;
          v561 = v1272;
          v562 = v1273;
          v563 = v1274;
          v564 = v1275;
          v565 = v1276;
          v566 = v1278;
          v293 = v1258;
          v294 = v1257;
          v295 = v1256;
          v296 = v1255;
          v297 = v1254;
          v298 = v1253;
          v299 = v1252;
          v1411 = v1360;
          v1412 = v1274;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v511 = 0;
          v512 = v1251;
          v513 = v299;
          v514 = v298;
          v515 = v297;
          v516 = v296;
          v517 = v295;
          v518 = v294;
          v519 = v293;
          v520 = v1259;
          v521 = v1260;
          v522 = v1261;
          v523 = v1262;
          v524 = v1263;
          v525 = v1264;
          v526 = v1265;
          v527 = v1266;
          v528 = v1267;
          v529 = v1268;
          v530 = v1269;
          v531 = v1270;
          v532 = v1271;
          v533 = v1272;
          v534 = v1273;
          v535 = v1274;
          v536 = v1275;
          v537 = v1276;
          v538 = v1278;
          v300 = v1258;
          v301 = v1257;
          v302 = v1256;
          v303 = v1255;
          v304 = v1254;
          v305 = v1253;
          v306 = v1252;
          v1411 = v1361;
          v1412 = v1275;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v483 = 0;
          v484 = v1251;
          v485 = v306;
          v486 = v305;
          v487 = v304;
          v488 = v303;
          v489 = v302;
          v490 = v301;
          v491 = v300;
          v492 = v1259;
          v493 = v1260;
          v494 = v1261;
          v495 = v1262;
          v496 = v1263;
          v497 = v1264;
          v498 = v1265;
          v499 = v1266;
          v500 = v1267;
          v501 = v1268;
          v502 = v1269;
          v503 = v1270;
          v504 = v1271;
          v505 = v1272;
          v506 = v1273;
          v507 = v1274;
          v508 = v1275;
          v509 = v1276;
          v510 = v1278;
          v307 = v1258;
          v308 = v1257;
          v309 = v1256;
          v310 = v1255;
          v311 = v1254;
          v312 = v1253;
          v313 = v1252;
          v1411 = v1362;
          v1412 = v1276;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v455 = 0;
          v456 = v1251;
          v457 = v313;
          v458 = v312;
          v459 = v311;
          v460 = v310;
          v461 = v309;
          v462 = v308;
          v463 = v307;
          v464 = v1259;
          v465 = v1260;
          v466 = v1261;
          v467 = v1262;
          v468 = v1263;
          v469 = v1264;
          v470 = v1265;
          v471 = v1266;
          v472 = v1267;
          v473 = v1268;
          v474 = v1269;
          v475 = v1270;
          v476 = v1271;
          v477 = v1272;
          v478 = v1273;
          v479 = v1274;
          v480 = v1275;
          v481 = v1276;
          v482 = v1278;
          v314 = v1258;
          v315 = v1257;
          v316 = v1256;
          v317 = v1255;
          v318 = v1254;
          v319 = v1253;
          v320 = v1252;
          v1411 = v1363;
          v1412 = v1278;
          sub_1B03949FC(&v1411, &v1415, &v1414, &v1413);
          v427 = 0;
          v428 = v1251;
          v429 = v320;
          v430 = v319;
          v431 = v318;
          v432 = v317;
          v433 = v316;
          v434 = v315;
          v435 = v314;
          v436 = v1259;
          v437 = v1260;
          v438 = v1261;
          v439 = v1262;
          v440 = v1263;
          v441 = v1264;
          v442 = v1265;
          v443 = v1266;
          v444 = v1267;
          v445 = v1268;
          v446 = v1269;
          v447 = v1270;
          v448 = v1271;
          v449 = v1272;
          v450 = v1273;
          v451 = v1274;
          v452 = v1275;
          v453 = v1276;
          v454 = v1278;
          _os_log_impl(&dword_1B0389000, v1281, v1282, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completing “reply workaround” request %{public}u for UID %u (%{iec-bytes}ld).", v1184, 0x41u);
          sub_1B03998A8(v1185);
          sub_1B03998A8(v1186);
          sub_1B0E45D58();

          v1182 = v427;
        }
      }

      else
      {
        v138 = v1283;

        v1182 = v138;
      }

      v400 = v1182;
      MEMORY[0x1E69E5920](v1281);
      (*(v1379 + 8))(v1386, v1378);
      v399 = v1419;
      v398 = v1419[8];
      MEMORY[0x1E69E5928](v1419[8]);
      [v398 finishWithResult_];
      MEMORY[0x1E69E5920](v398);
      sub_1B09907DC(v399);
    }

    sub_1B039E440(v1420);
    MEMORY[0x1E69E5920](v1289);
    sub_1B0391D50(v1288, v1287);
    v1306(v1403, v1395);
  }
}

void *sub_1B09408A4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v134 = a4;
  v145 = a3;
  v144 = a2;
  v143 = a1;
  v170 = 0;
  v135 = 0;
  v169 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v133 = 0;
  v160 = 0;
  v159 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v136 = sub_1B0E439A8();
  v137 = *(v136 - 8);
  v138 = v137;
  v139 = *(v137 + 64);
  v140 = &v41 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = MEMORY[0x1EEE9AC00](v143);
  v170 = v5;
  v168 = v6;
  v167 = v7;
  v166 = v4;
  v141 = v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  v142 = &v165;
  swift_beginAccess();
  v146 = *v141;
  v147 = *(v141 + 8);
  v148 = *(v141 + 16);
  v149 = *(v141 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v150 = sub_1B0975B38(v143, v144, v145, v146, v147, v148, v149);

  if ((v150 & 1) == 0)
  {
    return v133;
  }

  v8 = v133;
  v129 = &v41;
  MEMORY[0x1EEE9AC00](&v41);
  v130 = &v41 - 4;
  *(&v41 - 4) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3300, &qword_1B0EA10F8);
  sub_1B09B21DC(v143, v144, sub_1B0990830, v130, v10, v161);
  v131 = v8;
  v132 = v8;
  if (v8)
  {
    v42 = 0;
    v43 = 0;

    v125 = v42;
    v126 = v42;
    v127 = 1;
    v128 = v43;
  }

  else
  {
    v125 = v161[0];
    v126 = v161[1];
    v127 = v161[2];
    v128 = 0;
  }

  v121 = v128;
  v124 = v127;
  v123 = v126;
  v122 = v125;
  sub_1B0820818(v125, v126, v127);
  v162 = v122;
  v163 = v123;
  v164 = v124;
  v160 = 0;
  sub_1B0820818(v122, v123, v124);
  if (v124 == 1)
  {
    v118 = 2;
  }

  else
  {
    v119 = v123;
    v120 = v124;
    v116 = v124;
    v117 = v123;
    sub_1B07F200C(v123);
    sub_1B07F2124(v117);

    v118 = v117;
  }

  v115 = v118;
  if (v118 == 2)
  {
    v113 = 0;
  }

  else
  {
    v114 = v115;
    v112 = v114;
    if (v114 >= 2)
    {
      v111 = v112;

      v11 = sub_1B0975E70(v143);
      v160 = v11 & 1;
      v113 = v11;
    }

    else
    {
      sub_1B07F2124(v112);
      v113 = 0;
    }
  }

  v110 = v113;
  v159 = 0;
  if (v124 == 1)
  {
    v106 = 0;
  }

  else
  {
    v107 = v122;
    v108 = v123;
    v109 = v124;
    v104 = v124;
    v103 = v123;
    v151 = v122;
    v152 = v123;
    v153 = v124;
    v105 = sub_1B097D874(v143);
    v159 = v105 & 1;
    sub_1B07F2124(v103);

    v106 = v105;
  }

  v102 = v106;
  if (v110)
  {
    v101 = 0;
  }

  else
  {
    v101 = v102 ^ 1;
  }

  if (v101)
  {
    (*(v138 + 16))(v140, v134, v136);
    v86 = 7;
    v70 = swift_allocObject();
    *(v70 + 16) = v145;

    v81 = 32;
    v85 = 32;
    v12 = swift_allocObject();
    v13 = v70;
    v78 = v12;
    *(v12 + 16) = sub_1B03F7AE0;
    *(v12 + 24) = v13;

    v71 = v162;
    v72 = v163;
    v73 = v164;
    sub_1B0820818(v162, v163, v164);
    v14 = swift_allocObject();
    v15 = v72;
    v16 = v73;
    v87 = v14;
    v14[2] = v71;
    v14[3] = v15;
    v14[4] = v16;
    v100 = sub_1B0E43988();
    v74 = v100;
    v99 = sub_1B0E458E8();
    v75 = v99;
    v82 = 17;
    v90 = swift_allocObject();
    v76 = v90;
    *(v90 + 16) = 0;
    v91 = swift_allocObject();
    v77 = v91;
    *(v91 + 16) = 4;
    v17 = swift_allocObject();
    v18 = v78;
    v79 = v17;
    *(v17 + 16) = sub_1B07AB020;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v79;
    v92 = v19;
    v80 = v19;
    *(v19 + 16) = sub_1B039BC08;
    *(v19 + 24) = v20;
    v93 = swift_allocObject();
    v83 = v93;
    *(v93 + 16) = v81;
    v94 = swift_allocObject();
    v84 = v94;
    *(v94 + 16) = 8;
    v21 = swift_allocObject();
    v22 = v87;
    v88 = v21;
    *(v21 + 16) = sub_1B09908C4;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v88;
    v97 = v23;
    v89 = v23;
    *(v23 + 16) = sub_1B039BCF8;
    *(v23 + 24) = v24;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v95 = sub_1B0E46A48();
    v96 = v25;

    v26 = v90;
    v27 = v96;
    *v96 = sub_1B0398F5C;
    v27[1] = v26;

    v28 = v91;
    v29 = v96;
    v96[2] = sub_1B0398F5C;
    v29[3] = v28;

    v30 = v92;
    v31 = v96;
    v96[4] = sub_1B03991EC;
    v31[5] = v30;

    v32 = v93;
    v33 = v96;
    v96[6] = sub_1B0398F5C;
    v33[7] = v32;

    v34 = v94;
    v35 = v96;
    v96[8] = sub_1B0398F5C;
    v35[9] = v34;

    v36 = v96;
    v37 = v97;
    v96[10] = sub_1B039BCEC;
    v36[11] = v37;
    sub_1B0394964();

    if (os_log_type_enabled(v100, v99))
    {
      v38 = v121;
      v63 = sub_1B0E45D78();
      v60 = v63;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v64 = sub_1B03949A8(0);
      v62 = v64;
      v65 = sub_1B03949A8(1);
      v158 = v63;
      v157 = v64;
      v156 = v65;
      v66 = 2;
      v67 = &v158;
      sub_1B0394A48(2, &v158);
      sub_1B0394A48(v66, v67);
      v154 = sub_1B0398F5C;
      v155 = v76;
      sub_1B03949FC(&v154, v67, &v157, &v156);
      v68 = v38;
      v69 = v38;
      if (v38)
      {
        v58 = 0;

        __break(1u);
      }

      else
      {
        v154 = sub_1B0398F5C;
        v155 = v77;
        sub_1B03949FC(&v154, &v158, &v157, &v156);
        v56 = 0;
        v57 = 0;
        v154 = sub_1B03991EC;
        v155 = v80;
        sub_1B03949FC(&v154, &v158, &v157, &v156);
        v54 = 0;
        v55 = 0;
        v154 = sub_1B0398F5C;
        v155 = v83;
        sub_1B03949FC(&v154, &v158, &v157, &v156);
        v52 = 0;
        v53 = 0;
        v154 = sub_1B0398F5C;
        v155 = v84;
        sub_1B03949FC(&v154, &v158, &v157, &v156);
        v50 = 0;
        v51 = 0;
        v154 = sub_1B039BCEC;
        v155 = v89;
        sub_1B03949FC(&v154, &v158, &v157, &v156);
        v48 = 0;
        v49 = 0;
        _os_log_impl(&dword_1B0389000, v74, v75, "Did not find any user-initiated requests matching UID %u. Missing parts: %s", v60, 0x12u);
        sub_1B03998A8(v62);
        sub_1B03998A8(v65);
        sub_1B0E45D58();

        v59 = v48;
      }
    }

    else
    {
      v39 = v121;

      v59 = v39;
    }

    v46 = v59;

    (*(v138 + 8))(v140, v136);
    v47 = v46;
  }

  else
  {
    v47 = v121;
  }

  v44 = v47;
  sub_1B0990858(&v162);
  return v44;
}

BOOL sub_1B0941AA0(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (a3)
  {
    return sub_1B0815120(a4);
  }

  else
  {
    return sub_1B08155A8(a4);
  }
}

uint64_t sub_1B0941B24(uint64_t a1, int a2, char a3, unsigned int a4, uint64_t a5)
{
  sub_1B0941C6C(a1, a2, a4);
  swift_beginAccess();
  v6 = *(v8 + 64);

  swift_endAccess();
  sub_1B08BE008(a4, a1, a2);

  sub_1B09343F0(a1, a2, a4, a3 & 1, a5);
  swift_beginAccess();
  sub_1B0943D8C(a4, a1, a2, a5);
  return swift_endAccess();
}

void *sub_1B0941C6C(uint64_t a1, int a2, int a3)
{
  v252 = a3;
  v250 = a2;
  v249 = a1;
  v251 = 0;
  v269 = 0;
  v243 = 0;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v264 = 0;
  v238 = 0;
  v262 = 0;
  v239 = sub_1B0E439A8();
  v240 = *(v239 - 8);
  v241 = v240;
  v4 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](0);
  v242 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = _s6LoggerVMa();
  v245 = *(*(v244 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v249);
  v247 = (v245 + 15) & 0xFFFFFFFFFFFFFFF0;
  v246 = v102 - v247;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v248 = v102 - v247;
  v268 = v7;
  v269 = v8;
  v267 = v9;
  v266 = v3;
  v253 = &v265;
  swift_beginAccess();
  v255 = sub_1B09460C0(v249, v250, v251, v252);
  v254 = v255;
  swift_endAccess();
  v264 = v255;
  v263 = v255;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  sub_1B0990678();
  if (sub_1B0E45748())
  {

    return v238;
  }

  else
  {
    v10 = v237;
    v11 = v238;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v234 = v102;
    v12 = MEMORY[0x1EEE9AC00](v249);
    v13 = v252;
    v102[-6] = v10;
    LODWORD(v102[-5]) = v13;
    v102[-4] = v12;
    LODWORD(v102[-3]) = v14;
    v102[-2] = v15;
    sub_1B09B21DC(v12, v14, sub_1B09908D4, &v102[-8], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
    v235 = v11;
    v236 = v11;
    if (v11)
    {
      v17 = v242;
      v161 = v236;
      v176 = 0;
      v155 = 0;

      v18 = v161;
      v262 = v161;
      v156 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
      sub_1B0394784(v237 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v248);
      (*(v241 + 16))(v17, v248, v239);
      sub_1B039480C(v248);

      sub_1B0394784(v237 + *v156, v246);
      v19 = (v246 + *(v244 + 20));
      v157 = *v19;
      v158 = *(v19 + 1);
      sub_1B039480C(v246);

      v187 = 24;
      v201 = 7;
      v20 = swift_allocObject();
      v21 = v158;
      v170 = v20;
      *(v20 + 16) = v157;
      *(v20 + 20) = v21;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v22 = swift_allocObject();
      v23 = v158;
      v159 = v22;
      *(v22 + 16) = v157;
      *(v22 + 20) = v23;

      v200 = 32;
      v24 = swift_allocObject();
      v25 = v159;
      v183 = v24;
      *(v24 + 16) = sub_1B039BBE8;
      *(v24 + 24) = v25;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v26 = swift_allocObject();
      v27 = v250;
      v160 = v26;
      *(v26 + 16) = v249;
      *(v26 + 24) = v27;

      v28 = swift_allocObject();
      v29 = v160;
      v193 = v28;
      *(v28 + 16) = sub_1B07C8FC0;
      *(v28 + 24) = v29;

      v30 = v161;
      v202 = swift_allocObject();
      *(v202 + 16) = v161;
      v230 = sub_1B0E43988();
      v162 = v230;
      v229 = sub_1B0E458E8();
      v163 = v229;
      v196 = 17;
      v205 = swift_allocObject();
      v164 = v205;
      v173 = 16;
      *(v205 + 16) = 16;
      v206 = swift_allocObject();
      v165 = v206;
      v181 = 4;
      *(v206 + 16) = 4;
      v31 = swift_allocObject();
      v32 = v176;
      v166 = v31;
      *(v31 + 16) = sub_1B0394C30;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v166;
      v207 = v33;
      v167 = v33;
      *(v33 + 16) = sub_1B0394C24;
      *(v33 + 24) = v34;
      v208 = swift_allocObject();
      v168 = v208;
      v179 = 0;
      *(v208 + 16) = 0;
      v209 = swift_allocObject();
      v169 = v209;
      *(v209 + 16) = 1;
      v35 = swift_allocObject();
      v36 = v170;
      v171 = v35;
      *(v35 + 16) = sub_1B039BA2C;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v171;
      v210 = v37;
      v172 = v37;
      *(v37 + 16) = sub_1B039BA88;
      *(v37 + 24) = v38;
      v211 = swift_allocObject();
      v174 = v211;
      *(v211 + 16) = v173;
      v212 = swift_allocObject();
      v175 = v212;
      *(v212 + 16) = v181;
      v39 = swift_allocObject();
      v40 = v176;
      v177 = v39;
      *(v39 + 16) = sub_1B039BB94;
      *(v39 + 24) = v40;
      v41 = swift_allocObject();
      v42 = v177;
      v213 = v41;
      v178 = v41;
      *(v41 + 16) = sub_1B0394C24;
      *(v41 + 24) = v42;
      v214 = swift_allocObject();
      v180 = v214;
      *(v214 + 16) = v179;
      v215 = swift_allocObject();
      v182 = v215;
      *(v215 + 16) = v181;
      v43 = swift_allocObject();
      v44 = v183;
      v184 = v43;
      *(v43 + 16) = sub_1B039BBA0;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v184;
      v216 = v45;
      v185 = v45;
      *(v45 + 16) = sub_1B039BC08;
      *(v45 + 24) = v46;
      v217 = swift_allocObject();
      v186 = v217;
      *(v217 + 16) = 112;
      v218 = swift_allocObject();
      v188 = v218;
      v198 = 8;
      *(v218 + 16) = 8;
      v189 = swift_allocObject();
      *(v189 + 16) = 0x786F626C69616DLL;
      v47 = swift_allocObject();
      v48 = v189;
      v219 = v47;
      v190 = v47;
      *(v47 + 16) = sub_1B06BA324;
      *(v47 + 24) = v48;
      v220 = swift_allocObject();
      v191 = v220;
      *(v220 + 16) = 37;
      v221 = swift_allocObject();
      v192 = v221;
      *(v221 + 16) = v198;
      v49 = swift_allocObject();
      v50 = v193;
      v194 = v49;
      *(v49 + 16) = sub_1B06E395C;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v194;
      v222 = v51;
      v195 = v51;
      *(v51 + 16) = sub_1B039BCF8;
      *(v51 + 24) = v52;
      v223 = swift_allocObject();
      v197 = v223;
      *(v223 + 16) = 64;
      v224 = swift_allocObject();
      v199 = v224;
      *(v224 + 16) = v198;
      v53 = swift_allocObject();
      v54 = v202;
      v203 = v53;
      *(v53 + 16) = sub_1B07135E4;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v203;
      v227 = v55;
      v204 = v55;
      *(v55 + 16) = sub_1B070B324;
      *(v55 + 24) = v56;
      v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v225 = sub_1B0E46A48();
      v226 = v57;

      v58 = v205;
      v59 = v226;
      *v226 = sub_1B0398F5C;
      v59[1] = v58;

      v60 = v206;
      v61 = v226;
      v226[2] = sub_1B0398F5C;
      v61[3] = v60;

      v62 = v207;
      v63 = v226;
      v226[4] = sub_1B0399178;
      v63[5] = v62;

      v64 = v208;
      v65 = v226;
      v226[6] = sub_1B0398F5C;
      v65[7] = v64;

      v66 = v209;
      v67 = v226;
      v226[8] = sub_1B0398F5C;
      v67[9] = v66;

      v68 = v210;
      v69 = v226;
      v226[10] = sub_1B039BA94;
      v69[11] = v68;

      v70 = v211;
      v71 = v226;
      v226[12] = sub_1B0398F5C;
      v71[13] = v70;

      v72 = v212;
      v73 = v226;
      v226[14] = sub_1B0398F5C;
      v73[15] = v72;

      v74 = v213;
      v75 = v226;
      v226[16] = sub_1B0399178;
      v75[17] = v74;

      v76 = v214;
      v77 = v226;
      v226[18] = sub_1B0398F5C;
      v77[19] = v76;

      v78 = v215;
      v79 = v226;
      v226[20] = sub_1B0398F5C;
      v79[21] = v78;

      v80 = v216;
      v81 = v226;
      v226[22] = sub_1B03991EC;
      v81[23] = v80;

      v82 = v217;
      v83 = v226;
      v226[24] = sub_1B0398F5C;
      v83[25] = v82;

      v84 = v218;
      v85 = v226;
      v226[26] = sub_1B0398F5C;
      v85[27] = v84;

      v86 = v219;
      v87 = v226;
      v226[28] = sub_1B03993BC;
      v87[29] = v86;

      v88 = v220;
      v89 = v226;
      v226[30] = sub_1B0398F5C;
      v89[31] = v88;

      v90 = v221;
      v91 = v226;
      v226[32] = sub_1B0398F5C;
      v91[33] = v90;

      v92 = v222;
      v93 = v226;
      v226[34] = sub_1B039BCEC;
      v93[35] = v92;

      v94 = v223;
      v95 = v226;
      v226[36] = sub_1B0398F5C;
      v95[37] = v94;

      v96 = v224;
      v97 = v226;
      v226[38] = sub_1B0398F5C;
      v97[39] = v96;

      v98 = v226;
      v99 = v227;
      v226[40] = sub_1B070B4B4;
      v98[41] = v99;
      sub_1B0394964();

      if (os_log_type_enabled(v230, v229))
      {
        v100 = v155;
        v149 = sub_1B0E45D78();
        v145 = v149;
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v147 = 1;
        v150 = sub_1B03949A8(1);
        v148 = v150;
        v151 = sub_1B03949A8(v147);
        v261 = v149;
        v260 = v150;
        v259 = v151;
        v152 = &v261;
        sub_1B0394A48(3, &v261);
        sub_1B0394A48(7, v152);
        v257 = sub_1B0398F5C;
        v258 = v164;
        sub_1B03949FC(&v257, v152, &v260, &v259);
        v153 = v100;
        v154 = v100;
        if (v100)
        {
          v143 = 0;

          __break(1u);
        }

        else
        {
          v257 = sub_1B0398F5C;
          v258 = v165;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v141 = 0;
          v142 = 0;
          v257 = sub_1B0399178;
          v258 = v167;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v139 = 0;
          v140 = 0;
          v257 = sub_1B0398F5C;
          v258 = v168;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v137 = 0;
          v138 = 0;
          v257 = sub_1B0398F5C;
          v258 = v169;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v135 = 0;
          v136 = 0;
          v257 = sub_1B039BA94;
          v258 = v172;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v133 = 0;
          v134 = 0;
          v257 = sub_1B0398F5C;
          v258 = v174;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v131 = 0;
          v132 = 0;
          v257 = sub_1B0398F5C;
          v258 = v175;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v129 = 0;
          v130 = 0;
          v257 = sub_1B0399178;
          v258 = v178;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v127 = 0;
          v128 = 0;
          v257 = sub_1B0398F5C;
          v258 = v180;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v125 = 0;
          v126 = 0;
          v257 = sub_1B0398F5C;
          v258 = v182;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v123 = 0;
          v124 = 0;
          v257 = sub_1B03991EC;
          v258 = v185;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v121 = 0;
          v122 = 0;
          v257 = sub_1B0398F5C;
          v258 = v186;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v119 = 0;
          v120 = 0;
          v257 = sub_1B0398F5C;
          v258 = v188;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v117 = 0;
          v118 = 0;
          v257 = sub_1B03993BC;
          v258 = v190;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v115 = 0;
          v116 = 0;
          v257 = sub_1B0398F5C;
          v258 = v191;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v113 = 0;
          v114 = 0;
          v257 = sub_1B0398F5C;
          v258 = v192;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v111 = 0;
          v112 = 0;
          v257 = sub_1B039BCEC;
          v258 = v195;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v109 = 0;
          v110 = 0;
          v257 = sub_1B0398F5C;
          v258 = v197;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v107 = 0;
          v108 = 0;
          v257 = sub_1B0398F5C;
          v258 = v199;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v105 = 0;
          v106 = 0;
          v257 = sub_1B070B4B4;
          v258 = v204;
          sub_1B03949FC(&v257, &v261, &v260, &v259);
          v103 = 0;
          v104 = 0;
          _os_log_impl(&dword_1B0389000, v162, v163, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to complete cross-account transfer downloads: %@", v145, 0x35u);
          v102[1] = 1;
          sub_1B03998A8(v148);
          sub_1B03998A8(v151);
          sub_1B0E45D58();

          v144 = v103;
        }
      }

      else
      {
        v101 = v155;

        v144 = v101;
      }

      v102[0] = v144;

      (*(v241 + 8))(v242, v239);
      v233 = v102[0];
    }

    else
    {

      v233 = v235;
    }

    v231 = v233;

    return v231;
  }
}

uint64_t sub_1B0943D8C(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v419 = &v455;
  v423 = a4;
  v422 = a3;
  v425 = a2;
  v424 = a1;
  v492 = 0;
  v491 = 0;
  v421 = 0;
  v490 = 0;
  v489 = 0;
  v488 = 0;
  v487[1] = 0;
  v487[0] = 0;
  v436 = 0;
  v474[1] = 0;
  v474[0] = 0;
  v426 = sub_1B0E439A8();
  v427 = *(v426 - 8);
  v428 = v427;
  v429 = *(v427 + 64);
  v5 = MEMORY[0x1EEE9AC00](v424);
  v431 = (v429 + 15) & 0xFFFFFFFFFFFFFFF0;
  v430 = v118 - v431;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v432 = v118 - v431;
  v492 = v6;
  v490 = v7;
  v491 = v8;
  v489 = v9;
  v488 = v4;
  v433 = *(v4 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v486 = v433;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
  v434 = v435;
  sub_1B0990678();
  sub_1B0E45798();
  for (i = v436; ; i = v306)
  {
    v418 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
    sub_1B0E46518();
    v476 = v419[25];
    v10 = v419[26];
    v11 = v419[27];
    v12 = v419[28];
    v480 = v475;
    v479 = v12;
    v478 = v11;
    v477 = v10;
    v481 = v476;
    v485 = v475;
    v484 = v12;
    v483 = v11;
    v482 = v10;
    if (!*(&v10 + 1))
    {
      break;
    }

    v493 = v481;
    v497 = v485;
    v496 = v484;
    v495 = v483;
    v494 = v482;
    v416 = *(&v482 + 1);
    v415 = v483;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v417 = static MailboxName.== infix(_:_:)(v416, v415, v425, v422);

    sub_1B0990700(&v481, v446);
    if (v417)
    {
      v439 = DWORD1(v483);
      v438 = v424;
      sub_1B0714E4C();
      v414 = sub_1B0E45ED8();
    }

    else
    {
      v414 = 0;
    }

    v413 = v414;
    sub_1B09907DC(&v481);
    if (v413)
    {
      v13 = v432;
      v381 = v485;
      v14 = v485;
      sub_1B0990DA0();
      v392 = 0;
      v379 = swift_allocError();
      v386 = 2;
      *v15 = 2;
      v380 = sub_1B0E42CC8();

      [v381 finishWithError_];
      (*(v428 + 16))(v13, v423, v426);
      sub_1B0990700(&v481, &v445);
      v398 = 7;
      v16 = swift_allocObject();
      v382 = v16;
      *(v16 + 16) = v493;
      v17 = v494;
      v18 = v495;
      v19 = v496;
      *(v16 + 80) = v497;
      *(v16 + 64) = v19;
      *(v16 + 48) = v18;
      *(v16 + 32) = v17;

      v397 = 32;
      v20 = swift_allocObject();
      v21 = v382;
      v389 = v20;
      *(v20 + 16) = sub_1B09907C8;
      *(v20 + 24) = v21;

      v383 = swift_allocObject();
      *(v383 + 16) = v424;

      v22 = swift_allocObject();
      v23 = v383;
      v399 = v22;
      *(v22 + 16) = sub_1B03F7AE0;
      *(v22 + 24) = v23;

      v412 = sub_1B0E43988();
      v384 = v412;
      v411 = sub_1B0E458E8();
      v385 = v411;
      v393 = 17;
      v402 = swift_allocObject();
      v387 = v402;
      *(v402 + 16) = v386;
      v403 = swift_allocObject();
      v388 = v403;
      v395 = 4;
      *(v403 + 16) = 4;
      v24 = swift_allocObject();
      v25 = v389;
      v390 = v24;
      *(v24 + 16) = sub_1B09907D0;
      *(v24 + 24) = v25;
      v26 = swift_allocObject();
      v27 = v390;
      v404 = v26;
      v391 = v26;
      *(v26 + 16) = sub_1B039BC08;
      *(v26 + 24) = v27;
      v405 = swift_allocObject();
      v394 = v405;
      *(v405 + 16) = v392;
      v406 = swift_allocObject();
      v396 = v406;
      *(v406 + 16) = v395;
      v28 = swift_allocObject();
      v29 = v399;
      v400 = v28;
      *(v28 + 16) = sub_1B07AB020;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v400;
      v409 = v30;
      v401 = v30;
      *(v30 + 16) = sub_1B039BC08;
      *(v30 + 24) = v31;
      v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v407 = sub_1B0E46A48();
      v408 = v32;

      v33 = v402;
      v34 = v408;
      *v408 = sub_1B0398F5C;
      v34[1] = v33;

      v35 = v403;
      v36 = v408;
      v408[2] = sub_1B0398F5C;
      v36[3] = v35;

      v37 = v404;
      v38 = v408;
      v408[4] = sub_1B03991EC;
      v38[5] = v37;

      v39 = v405;
      v40 = v408;
      v408[6] = sub_1B0398F5C;
      v40[7] = v39;

      v41 = v406;
      v42 = v408;
      v408[8] = sub_1B0398F5C;
      v42[9] = v41;

      v43 = v408;
      v44 = v409;
      v408[10] = sub_1B03991EC;
      v43[11] = v44;
      sub_1B0394964();

      if (os_log_type_enabled(v412, v411))
      {
        v45 = v418;
        v367 = sub_1B0E45D78();
        v363 = v367;
        v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v365 = 0;
        v368 = sub_1B03949A8(0);
        v366 = v368;
        v369 = sub_1B03949A8(v365);
        v444 = v367;
        v443 = v368;
        v442 = v369;
        v370 = &v444;
        sub_1B0394A48(0, &v444);
        sub_1B0394A48(2, v370);
        v440 = sub_1B0398F5C;
        v441 = v387;
        sub_1B03949FC(&v440, v370, &v443, &v442);
        v371 = v45;
        v372 = v387;
        v373 = v388;
        v374 = v391;
        v375 = v394;
        v376 = v396;
        v377 = v401;
        v378 = v45;
        if (v45)
        {
          v355 = v372;
          v356 = v373;
          v357 = v374;
          v358 = v375;
          v359 = v376;
          v360 = v377;
          v361 = 0;
          v313 = v377;
          v312 = v376;
          v311 = v375;
          v310 = v374;
          v309 = v373;

          __break(1u);
        }

        else
        {
          v440 = sub_1B0398F5C;
          v441 = v388;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v347 = 0;
          v348 = v387;
          v349 = v388;
          v350 = v391;
          v351 = v394;
          v352 = v396;
          v353 = v401;
          v354 = 0;
          v440 = sub_1B03991EC;
          v441 = v391;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v339 = 0;
          v340 = v387;
          v341 = v388;
          v342 = v391;
          v343 = v394;
          v344 = v396;
          v345 = v401;
          v346 = 0;
          v440 = sub_1B0398F5C;
          v441 = v394;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v331 = 0;
          v332 = v387;
          v333 = v388;
          v334 = v391;
          v335 = v394;
          v336 = v396;
          v337 = v401;
          v338 = 0;
          v440 = sub_1B0398F5C;
          v441 = v396;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v323 = 0;
          v324 = v387;
          v325 = v388;
          v326 = v391;
          v327 = v394;
          v328 = v396;
          v329 = v401;
          v330 = 0;
          v440 = sub_1B03991EC;
          v441 = v401;
          sub_1B03949FC(&v440, &v444, &v443, &v442);
          v315 = 0;
          v316 = v387;
          v317 = v388;
          v318 = v391;
          v319 = v394;
          v320 = v396;
          v321 = v401;
          v322 = 0;
          _os_log_impl(&dword_1B0389000, v384, v385, "Failing request %{public}u for UID %u.", v363, 0xEu);
          v314 = 0;
          sub_1B03998A8(v366);
          sub_1B03998A8(v369);
          sub_1B0E45D58();

          v362 = v315;
        }
      }

      else
      {
        v46 = v418;

        v362 = v46;
      }

      v307 = v362;

      (*(v428 + 8))(v432, v426);
      v308 = v307;
    }

    else
    {
      v308 = v418;
    }

    v306 = v308;
    sub_1B09907DC(&v481);
  }

  v47 = v418;
  sub_1B039E440(v487);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v302 = v118;
  MEMORY[0x1EEE9AC00](v118);
  v48 = v422;
  v49 = v424;
  v303 = &v118[-4];
  v118[-2] = v50;
  LODWORD(v118[-1]) = v48;
  HIDWORD(v118[-1]) = v49;
  v304 = sub_1B0990940();
  sub_1B09909C8();
  sub_1B0E45898();
  v305 = v47;
  if (v47)
  {

    __break(1u);
  }

  else
  {

    v298 = *(v420 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v473 = v298;
    v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3308, &qword_1B0EA1100);
    v299 = v300;
    sub_1B0990A50();
    sub_1B0E45798();
    for (j = v305; ; j = v119)
    {
      v297 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3310, qword_1B0EA1108);
      sub_1B0E46518();
      v51 = *v419;
      v52 = v419[1];
      v53 = v419[2];
      v460 = v419[3];
      v459 = v53;
      v458 = v52;
      v457 = v51;
      v54 = v419[4];
      v55 = v419[5];
      v56 = v419[6];
      v464 = v456;
      v463 = v56;
      v462 = v55;
      v461 = v54;
      v468 = v460;
      v467 = v459;
      v466 = v458;
      v465 = v457;
      v472 = v456;
      v471 = v56;
      v470 = v55;
      v469 = v54;
      if (!*(&v458 + 1))
      {
        break;
      }

      v501 = v468;
      v500 = v467;
      v499 = v466;
      v498 = v465;
      v505 = v472;
      v504 = v471;
      v503 = v470;
      v502 = v469;
      v295 = *(&v466 + 1);
      v294 = v467;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v296 = static MailboxName.== infix(_:_:)(v295, v294, v425, v422);

      sub_1B0990C1C(&v465, &v454);
      if (v296)
      {
        v446[19] = DWORD1(v467);
        v446[18] = v424;
        sub_1B0714E4C();
        v293 = sub_1B0E45ED8();
      }

      else
      {
        v293 = 0;
      }

      v292 = v293;
      sub_1B0990D34(&v465);
      if (v292)
      {
        v57 = v430;
        v249 = v472;
        v58 = v472;
        sub_1B0990DA0();
        v263 = 0;
        v247 = swift_allocError();
        v257 = 2;
        *v59 = 2;
        v248 = sub_1B0E42CC8();

        [v249 finishWithError_];
        (*(v428 + 16))(v57, v423, v426);
        v252 = &v465;
        sub_1B0990C1C(&v465, &v453);
        v253 = 136;
        v274 = 7;
        v60 = swift_allocObject();
        v250 = v60;
        v61 = v498;
        v62 = v499;
        v63 = v500;
        *(v60 + 64) = v501;
        *(v60 + 48) = v63;
        *(v60 + 32) = v62;
        *(v60 + 16) = v61;
        v64 = v502;
        v65 = v503;
        v66 = v504;
        *(v60 + 128) = v505;
        *(v60 + 112) = v66;
        *(v60 + 96) = v65;
        *(v60 + 80) = v64;

        v273 = 32;
        v67 = swift_allocObject();
        v68 = v250;
        v260 = v67;
        *(v67 + 16) = sub_1B09907C8;
        *(v67 + 24) = v68;

        v251 = swift_allocObject();
        *(v251 + 16) = v424;

        v69 = swift_allocObject();
        v70 = v251;
        v267 = v69;
        *(v69 + 16) = sub_1B03F7AE0;
        *(v69 + 24) = v70;

        sub_1B0990C1C(v252, &v452);
        v71 = swift_allocObject();
        v254 = v71;
        v72 = v498;
        v73 = v499;
        v74 = v500;
        *(v71 + 64) = v501;
        *(v71 + 48) = v74;
        *(v71 + 32) = v73;
        *(v71 + 16) = v72;
        v75 = v502;
        v76 = v503;
        v77 = v504;
        *(v71 + 128) = v505;
        *(v71 + 112) = v77;
        *(v71 + 96) = v76;
        *(v71 + 80) = v75;

        v78 = swift_allocObject();
        v79 = v254;
        v275 = v78;
        *(v78 + 16) = sub_1B0990E1C;
        *(v78 + 24) = v79;

        v291 = sub_1B0E43988();
        v255 = v291;
        v290 = sub_1B0E458E8();
        v256 = v290;
        v270 = 17;
        v278 = swift_allocObject();
        v258 = v278;
        *(v278 + 16) = v257;
        v279 = swift_allocObject();
        v259 = v279;
        v265 = 4;
        *(v279 + 16) = 4;
        v80 = swift_allocObject();
        v81 = v260;
        v261 = v80;
        *(v80 + 16) = sub_1B09907D0;
        *(v80 + 24) = v81;
        v82 = swift_allocObject();
        v83 = v261;
        v280 = v82;
        v262 = v82;
        *(v82 + 16) = sub_1B039BC08;
        *(v82 + 24) = v83;
        v281 = swift_allocObject();
        v264 = v281;
        *(v281 + 16) = v263;
        v282 = swift_allocObject();
        v266 = v282;
        *(v282 + 16) = v265;
        v84 = swift_allocObject();
        v85 = v267;
        v268 = v84;
        *(v84 + 16) = sub_1B07AB020;
        *(v84 + 24) = v85;
        v86 = swift_allocObject();
        v87 = v268;
        v283 = v86;
        v269 = v86;
        *(v86 + 16) = sub_1B039BC08;
        *(v86 + 24) = v87;
        v284 = swift_allocObject();
        v271 = v284;
        *(v284 + 16) = 34;
        v285 = swift_allocObject();
        v272 = v285;
        *(v285 + 16) = 8;
        v88 = swift_allocObject();
        v89 = v275;
        v276 = v88;
        *(v88 + 16) = sub_1B07AD0A4;
        *(v88 + 24) = v89;
        v90 = swift_allocObject();
        v91 = v276;
        v288 = v90;
        v277 = v90;
        *(v90 + 16) = sub_1B039BCF8;
        *(v90 + 24) = v91;
        v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v286 = sub_1B0E46A48();
        v287 = v92;

        v93 = v278;
        v94 = v287;
        *v287 = sub_1B0398F5C;
        v94[1] = v93;

        v95 = v279;
        v96 = v287;
        v287[2] = sub_1B0398F5C;
        v96[3] = v95;

        v97 = v280;
        v98 = v287;
        v287[4] = sub_1B03991EC;
        v98[5] = v97;

        v99 = v281;
        v100 = v287;
        v287[6] = sub_1B0398F5C;
        v100[7] = v99;

        v101 = v282;
        v102 = v287;
        v287[8] = sub_1B0398F5C;
        v102[9] = v101;

        v103 = v283;
        v104 = v287;
        v287[10] = sub_1B03991EC;
        v104[11] = v103;

        v105 = v284;
        v106 = v287;
        v287[12] = sub_1B0398F5C;
        v106[13] = v105;

        v107 = v285;
        v108 = v287;
        v287[14] = sub_1B0398F5C;
        v108[15] = v107;

        v109 = v287;
        v110 = v288;
        v287[16] = sub_1B039BCEC;
        v109[17] = v110;
        sub_1B0394964();

        if (os_log_type_enabled(v291, v290))
        {
          v111 = v297;
          v232 = sub_1B0E45D78();
          v229 = v232;
          v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v233 = sub_1B03949A8(0);
          v231 = v233;
          v234 = sub_1B03949A8(1);
          v451 = v232;
          v450 = v233;
          v449 = v234;
          v235 = &v451;
          sub_1B0394A48(2, &v451);
          sub_1B0394A48(3, v235);
          v447 = sub_1B0398F5C;
          v448 = v258;
          sub_1B03949FC(&v447, v235, &v450, &v449);
          v236 = v111;
          v237 = v258;
          v238 = v259;
          v239 = v262;
          v240 = v264;
          v241 = v266;
          v242 = v269;
          v243 = v271;
          v244 = v272;
          v245 = v277;
          v246 = v111;
          if (v111)
          {
            v218 = v237;
            v219 = v238;
            v220 = v239;
            v221 = v240;
            v222 = v241;
            v223 = v242;
            v224 = v243;
            v225 = v244;
            v226 = v245;
            v227 = 0;
            v129 = v245;
            v128 = v244;
            v127 = v243;
            v126 = v242;
            v125 = v241;
            v124 = v240;
            v123 = v239;
            v122 = v238;

            __break(1u);
          }

          else
          {
            v447 = sub_1B0398F5C;
            v448 = v259;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v207 = 0;
            v208 = v258;
            v209 = v259;
            v210 = v262;
            v211 = v264;
            v212 = v266;
            v213 = v269;
            v214 = v271;
            v215 = v272;
            v216 = v277;
            v217 = 0;
            v447 = sub_1B03991EC;
            v448 = v262;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v196 = 0;
            v197 = v258;
            v198 = v259;
            v199 = v262;
            v200 = v264;
            v201 = v266;
            v202 = v269;
            v203 = v271;
            v204 = v272;
            v205 = v277;
            v206 = 0;
            v447 = sub_1B0398F5C;
            v448 = v264;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v185 = 0;
            v186 = v258;
            v187 = v259;
            v188 = v262;
            v189 = v264;
            v190 = v266;
            v191 = v269;
            v192 = v271;
            v193 = v272;
            v194 = v277;
            v195 = 0;
            v447 = sub_1B0398F5C;
            v448 = v266;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v174 = 0;
            v175 = v258;
            v176 = v259;
            v177 = v262;
            v178 = v264;
            v179 = v266;
            v180 = v269;
            v181 = v271;
            v182 = v272;
            v183 = v277;
            v184 = 0;
            v447 = sub_1B03991EC;
            v448 = v269;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v163 = 0;
            v164 = v258;
            v165 = v259;
            v166 = v262;
            v167 = v264;
            v168 = v266;
            v169 = v269;
            v170 = v271;
            v171 = v272;
            v172 = v277;
            v173 = 0;
            v447 = sub_1B0398F5C;
            v448 = v271;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v152 = 0;
            v153 = v258;
            v154 = v259;
            v155 = v262;
            v156 = v264;
            v157 = v266;
            v158 = v269;
            v159 = v271;
            v160 = v272;
            v161 = v277;
            v162 = 0;
            v447 = sub_1B0398F5C;
            v448 = v272;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v141 = 0;
            v142 = v258;
            v143 = v259;
            v144 = v262;
            v145 = v264;
            v146 = v266;
            v147 = v269;
            v148 = v271;
            v149 = v272;
            v150 = v277;
            v151 = 0;
            v447 = sub_1B039BCEC;
            v448 = v277;
            sub_1B03949FC(&v447, &v451, &v450, &v449);
            v130 = 0;
            v131 = v258;
            v132 = v259;
            v133 = v262;
            v134 = v264;
            v135 = v266;
            v136 = v269;
            v137 = v271;
            v138 = v272;
            v139 = v277;
            v140 = 0;
            _os_log_impl(&dword_1B0389000, v255, v256, "Failing request %{public}u for UID %u part '[%{public}s]'.", v229, 0x18u);
            sub_1B03998A8(v231);
            sub_1B03998A8(v234);
            sub_1B0E45D58();

            v228 = v130;
          }
        }

        else
        {
          v112 = v297;

          v228 = v112;
        }

        v120 = v228;

        (*(v428 + 8))(v430, v426);
        v121 = v120;
      }

      else
      {
        v121 = v297;
      }

      v119 = v121;
      sub_1B0990D34(&v465);
    }

    v113 = v297;
    sub_1B039E440(v474);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v118[0] = v118;
    MEMORY[0x1EEE9AC00](v118);
    v114 = v422;
    v115 = v424;
    v118[1] = &v118[-4];
    v118[-2] = v116;
    LODWORD(v118[-1]) = v114;
    HIDWORD(v118[-1]) = v115;
    v118[2] = sub_1B0990B0C();
    sub_1B0990B94();
    sub_1B0E45898();
    if (!v113)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B09460C0(uint64_t a1, int a2, int a3, int a4)
{
  v23 = a4;
  v24 = a2;
  v25 = a1;
  v47[1] = 0;
  v27 = 0;
  v39 = 0;
  v26 = a3;
  v50 = a1;
  v51 = a2;
  v49 = a3 & 1;
  v48 = a4;
  v47[0] = sub_1B0E46A48();
  for (i = 0; ; i = v12)
  {
    v4 = i;
    v15 = *(v22 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v45[0] = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v5 = v25;
    v6 = v24;
    v17 = &v10 - 6;
    *(&v10 - 8) = v7;
    *(&v10 - 3) = v5;
    *(&v10 - 4) = v6;
    *(&v10 - 12) = v8 & 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    v16 = v18;
    sub_1B0990678();
    sub_1B0E456F8();
    v20 = v4;
    v21 = v19;
    if (v4)
    {
      break;
    }

    sub_1B039E440(v45);
    v14 = v45[1];
    if (v46)
    {
      v11 = v47[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(v47);
      return v11;
    }

    v13 = v14;
    v12 = v20;
    v39 = v14;
    sub_1B0E45308();
    v40 = v34;
    v44 = v38;
    v43 = v37;
    v42 = v36;
    v41 = v35;
    v29 = v34;
    v33 = v38;
    v32 = v37;
    v31 = v36;
    v30 = v35;
    sub_1B0E452E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B094633C(uint64_t a1)
{
  v784 = MEMORY[0x1EEE9AC00](a1);
  v780 = v2;
  v782 = v3;
  v787 = v4;
  v785 = v5;
  v786 = v6;
  v778 = v7;
  v728 = v1;
  v779 = 0;
  v729 = sub_1B039BBE8;
  v730 = sub_1B09907C8;
  v731 = sub_1B0991328;
  v732 = sub_1B0394C30;
  v733 = sub_1B0394C24;
  v734 = sub_1B039BA2C;
  v735 = sub_1B039BA88;
  v736 = sub_1B039BB94;
  v737 = sub_1B0394C24;
  v738 = sub_1B039BBA0;
  v739 = sub_1B039BC08;
  v740 = sub_1B09907D0;
  v741 = sub_1B039BC08;
  v742 = sub_1B07AB020;
  v743 = sub_1B039BC08;
  v744 = sub_1B08A9978;
  v745 = sub_1B03B0DF8;
  v746 = sub_1B0398F5C;
  v747 = sub_1B0398F5C;
  v748 = sub_1B0399178;
  v749 = sub_1B0398F5C;
  v750 = sub_1B0398F5C;
  v751 = sub_1B039BA94;
  v752 = sub_1B0398F5C;
  v753 = sub_1B0398F5C;
  v754 = sub_1B0399178;
  v755 = sub_1B0398F5C;
  v756 = sub_1B0398F5C;
  v757 = sub_1B03991EC;
  v758 = sub_1B0398F5C;
  v759 = sub_1B0398F5C;
  v760 = sub_1B03991EC;
  v761 = sub_1B0398F5C;
  v762 = sub_1B0398F5C;
  v763 = sub_1B03991EC;
  v764 = sub_1B0398F5C;
  v765 = sub_1B0398F5C;
  v766 = sub_1B0399260;
  v812 = 0;
  v811 = 0;
  v810 = 0;
  v809 = 0;
  v807 = 0;
  v808 = 0;
  v806 = 0;
  v803 = 0;
  v804 = 0;
  v802[0] = 0;
  v802[1] = 0;
  v772 = 0;
  v767 = sub_1B0E439A8();
  v768 = *(v767 - 8);
  v769 = v767 - 8;
  v770 = (*(v768 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v771 = &v145 - v770;
  v773 = _s6LoggerVMa();
  v774 = (*(*(v773 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v772);
  v775 = &v145 - v774;
  v776 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v777 = &v145 - v776;
  v781 = (*(*(_s6LoggerVMa_1() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v784);
  v788 = &v145 - v781;
  v812 = v10;
  v811 = v11;
  v810 = v12;
  v809 = v13;
  v807 = v14;
  v808 = v15;
  v806 = v16;
  v783 = &v805;
  swift_beginAccess();
  v790 = *(v782 + 64);

  swift_endAccess();
  sub_1B074B69C(v784 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v788);
  v789 = sub_1B08AE484(v787, v785, v786, v788);
  v791 = v17;
  sub_1B074B764(v788);

  if ((v791 & 0xF000000000000000) == 0xF000000000000000)
  {
    result = v728;
    v725 = v728;
  }

  else
  {
    v726 = v789;
    v727 = v791;
    v721 = v791;
    v722 = v789;
    v803 = v789;
    v804 = v791;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v801[9] = v778;
    v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F0, &qword_1B0EA10E8);
    sub_1B0990678();
    sub_1B0E45798();
    for (i = v728; ; i = v149)
    {
      v717 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E32F8, &qword_1B0EA10F0);
      v718 = &v799;
      sub_1B0E46518();
      v719 = v800;
      v720 = 72;
      memcpy(v800, v718, sizeof(v800));
      memcpy(v801, v800, 0x48uLL);
      if (!v801[3])
      {
        break;
      }

      v19 = v771;
      v669 = v801;
      v671 = __dst;
      v672 = 72;
      memcpy(__dst, v801, sizeof(__dst));
      v663 = &OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger;
      sub_1B0394784(v782 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v777);
      (*(v768 + 16))(v19, v777, v767);
      sub_1B039480C(v777);

      sub_1B0394784(v782 + *v663, v775);
      v20 = (v775 + *(v773 + 20));
      v665 = *v20;
      v666 = *(v20 + 1);
      sub_1B039480C(v775);

      v664 = 24;
      v688 = 7;
      v21 = swift_allocObject();
      v22 = v666;
      v675 = v21;
      *(v21 + 16) = v665;
      *(v21 + 20) = v22;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v23 = swift_allocObject();
      v24 = v666;
      v667 = v23;
      *(v23 + 16) = v665;
      *(v23 + 20) = v24;

      v687 = 32;
      v25 = swift_allocObject();
      v26 = v667;
      v679 = v25;
      *(v25 + 16) = v729;
      *(v25 + 24) = v26;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B0990700(v669, &v798);
      v670 = 88;
      v668 = swift_allocObject();
      memcpy((v668 + 16), v671, v672);

      v27 = swift_allocObject();
      v28 = v668;
      v681 = v27;
      *(v27 + 16) = v730;
      *(v27 + 24) = v28;

      sub_1B0990700(v669, &v797);
      v673 = swift_allocObject();
      memcpy((v673 + 16), v671, v672);

      v29 = swift_allocObject();
      v30 = v673;
      v684 = v29;
      *(v29 + 16) = v731;
      *(v29 + 24) = v30;

      sub_1B03B2000(v722, v721);
      v31 = swift_allocObject();
      v32 = v721;
      v689 = v31;
      *(v31 + 16) = v722;
      *(v31 + 24) = v32;
      sub_1B07575C4();

      v715 = sub_1B0E43988();
      v716 = sub_1B0E45908();
      v686 = 17;
      v691 = swift_allocObject();
      v677 = 16;
      *(v691 + 16) = 16;
      v692 = swift_allocObject();
      v683 = 4;
      *(v692 + 16) = 4;
      v33 = swift_allocObject();
      v674 = v33;
      *(v33 + 16) = v732;
      *(v33 + 24) = 0;
      v34 = swift_allocObject();
      v35 = v674;
      v693 = v34;
      *(v34 + 16) = v733;
      *(v34 + 24) = v35;
      v694 = swift_allocObject();
      *(v694 + 16) = 0;
      v695 = swift_allocObject();
      *(v695 + 16) = 1;
      v36 = swift_allocObject();
      v37 = v675;
      v676 = v36;
      *(v36 + 16) = v734;
      *(v36 + 24) = v37;
      v38 = swift_allocObject();
      v39 = v676;
      v696 = v38;
      *(v38 + 16) = v735;
      *(v38 + 24) = v39;
      v697 = swift_allocObject();
      *(v697 + 16) = v677;
      v698 = swift_allocObject();
      *(v698 + 16) = v683;
      v40 = swift_allocObject();
      v678 = v40;
      *(v40 + 16) = v736;
      *(v40 + 24) = 0;
      v41 = swift_allocObject();
      v42 = v678;
      v699 = v41;
      *(v41 + 16) = v737;
      *(v41 + 24) = v42;
      v700 = swift_allocObject();
      *(v700 + 16) = 0;
      v701 = swift_allocObject();
      *(v701 + 16) = v683;
      v43 = swift_allocObject();
      v44 = v679;
      v680 = v43;
      *(v43 + 16) = v738;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v680;
      v702 = v45;
      *(v45 + 16) = v739;
      *(v45 + 24) = v46;
      v703 = swift_allocObject();
      *(v703 + 16) = 2;
      v704 = swift_allocObject();
      *(v704 + 16) = v683;
      v47 = swift_allocObject();
      v48 = v681;
      v682 = v47;
      *(v47 + 16) = v740;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v682;
      v705 = v49;
      *(v49 + 16) = v741;
      *(v49 + 24) = v50;
      v706 = swift_allocObject();
      *(v706 + 16) = 0;
      v707 = swift_allocObject();
      *(v707 + 16) = v683;
      v51 = swift_allocObject();
      v52 = v684;
      v685 = v51;
      *(v51 + 16) = v742;
      *(v51 + 24) = v52;
      v53 = swift_allocObject();
      v54 = v685;
      v708 = v53;
      *(v53 + 16) = v743;
      *(v53 + 24) = v54;
      v709 = swift_allocObject();
      *(v709 + 16) = 0;
      v710 = swift_allocObject();
      *(v710 + 16) = 8;
      v55 = swift_allocObject();
      v56 = v689;
      v690 = v55;
      *(v55 + 16) = v744;
      *(v55 + 24) = v56;
      v57 = swift_allocObject();
      v58 = v690;
      v712 = v57;
      *(v57 + 16) = v745;
      *(v57 + 24) = v58;
      v714 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v711 = sub_1B0E46A48();
      v713 = v59;

      v60 = v691;
      v61 = v713;
      *v713 = v746;
      v61[1] = v60;

      v62 = v692;
      v63 = v713;
      v713[2] = v747;
      v63[3] = v62;

      v64 = v693;
      v65 = v713;
      v713[4] = v748;
      v65[5] = v64;

      v66 = v694;
      v67 = v713;
      v713[6] = v749;
      v67[7] = v66;

      v68 = v695;
      v69 = v713;
      v713[8] = v750;
      v69[9] = v68;

      v70 = v696;
      v71 = v713;
      v713[10] = v751;
      v71[11] = v70;

      v72 = v697;
      v73 = v713;
      v713[12] = v752;
      v73[13] = v72;

      v74 = v698;
      v75 = v713;
      v713[14] = v753;
      v75[15] = v74;

      v76 = v699;
      v77 = v713;
      v713[16] = v754;
      v77[17] = v76;

      v78 = v700;
      v79 = v713;
      v713[18] = v755;
      v79[19] = v78;

      v80 = v701;
      v81 = v713;
      v713[20] = v756;
      v81[21] = v80;

      v82 = v702;
      v83 = v713;
      v713[22] = v757;
      v83[23] = v82;

      v84 = v703;
      v85 = v713;
      v713[24] = v758;
      v85[25] = v84;

      v86 = v704;
      v87 = v713;
      v713[26] = v759;
      v87[27] = v86;

      v88 = v705;
      v89 = v713;
      v713[28] = v760;
      v89[29] = v88;

      v90 = v706;
      v91 = v713;
      v713[30] = v761;
      v91[31] = v90;

      v92 = v707;
      v93 = v713;
      v713[32] = v762;
      v93[33] = v92;

      v94 = v708;
      v95 = v713;
      v713[34] = v763;
      v95[35] = v94;

      v96 = v709;
      v97 = v713;
      v713[36] = v764;
      v97[37] = v96;

      v98 = v710;
      v99 = v713;
      v713[38] = v765;
      v99[39] = v98;

      v100 = v712;
      v101 = v713;
      v713[40] = v766;
      v101[41] = v100;
      sub_1B0394964();

      if (os_log_type_enabled(v715, v716))
      {
        v102 = v692;
        v103 = v691;
        v635 = sub_1B0E45D78();
        v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v634 = 0;
        v636 = sub_1B03949A8(0);
        v637 = sub_1B03949A8(v634);
        v638 = &v796;
        v796 = v635;
        v639 = &v795;
        v795 = v636;
        v640 = &v794;
        v794 = v637;
        sub_1B0394A48(0, &v796);
        sub_1B0394A48(7, v638);
        v104 = v717;
        v792 = v746;
        v793 = v103;
        sub_1B03949FC(&v792, v638, v639, v640);
        v641 = v104;
        v642 = v103;
        v643 = v102;
        v644 = v693;
        v645 = v694;
        v646 = v695;
        v647 = v696;
        v648 = v697;
        v649 = v698;
        v650 = v699;
        v651 = v700;
        v652 = v701;
        v653 = v702;
        v654 = v703;
        v655 = v704;
        v656 = v705;
        v657 = v706;
        v658 = v707;
        v659 = v708;
        v660 = v709;
        v661 = v710;
        v662 = v712;
        if (v104)
        {
          v611 = v642;
          v612 = v643;
          v613 = v644;
          v614 = v645;
          v615 = v646;
          v616 = v647;
          v617 = v648;
          v618 = v649;
          v619 = v650;
          v620 = v651;
          v621 = v652;
          v622 = v653;
          v623 = v654;
          v624 = v655;
          v625 = v656;
          v626 = v657;
          v627 = v658;
          v628 = v659;
          v629 = v660;
          v630 = v661;
          v631 = v662;
          v169 = v662;
          v168 = v661;
          v167 = v660;
          v166 = v659;
          v165 = v658;
          v164 = v657;
          v163 = v656;
          v162 = v655;
          v161 = v654;
          v160 = v653;
          v159 = v652;
          v158 = v651;
          v157 = v650;
          v156 = v649;
          v155 = v648;
          v154 = v647;
          v153 = v646;
          v152 = v645;
          v151 = v644;
          v150 = v643;

          __break(1u);
        }

        else
        {
          v105 = v692;
          v106 = v691;
          v792 = v747;
          v793 = v692;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v589 = 0;
          v590 = v106;
          v591 = v105;
          v592 = v693;
          v593 = v694;
          v594 = v695;
          v595 = v696;
          v596 = v697;
          v597 = v698;
          v598 = v699;
          v599 = v700;
          v600 = v701;
          v601 = v702;
          v602 = v703;
          v603 = v704;
          v604 = v705;
          v605 = v706;
          v606 = v707;
          v607 = v708;
          v608 = v709;
          v609 = v710;
          v610 = v712;
          v107 = v692;
          v108 = v691;
          v792 = v748;
          v793 = v693;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v567 = 0;
          v568 = v108;
          v569 = v107;
          v570 = v693;
          v571 = v694;
          v572 = v695;
          v573 = v696;
          v574 = v697;
          v575 = v698;
          v576 = v699;
          v577 = v700;
          v578 = v701;
          v579 = v702;
          v580 = v703;
          v581 = v704;
          v582 = v705;
          v583 = v706;
          v584 = v707;
          v585 = v708;
          v586 = v709;
          v587 = v710;
          v588 = v712;
          v109 = v692;
          v110 = v691;
          v792 = v749;
          v793 = v694;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v545 = 0;
          v546 = v110;
          v547 = v109;
          v548 = v693;
          v549 = v694;
          v550 = v695;
          v551 = v696;
          v552 = v697;
          v553 = v698;
          v554 = v699;
          v555 = v700;
          v556 = v701;
          v557 = v702;
          v558 = v703;
          v559 = v704;
          v560 = v705;
          v561 = v706;
          v562 = v707;
          v563 = v708;
          v564 = v709;
          v565 = v710;
          v566 = v712;
          v111 = v692;
          v112 = v691;
          v792 = v750;
          v793 = v695;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v523 = 0;
          v524 = v112;
          v525 = v111;
          v526 = v693;
          v527 = v694;
          v528 = v695;
          v529 = v696;
          v530 = v697;
          v531 = v698;
          v532 = v699;
          v533 = v700;
          v534 = v701;
          v535 = v702;
          v536 = v703;
          v537 = v704;
          v538 = v705;
          v539 = v706;
          v540 = v707;
          v541 = v708;
          v542 = v709;
          v543 = v710;
          v544 = v712;
          v113 = v692;
          v114 = v691;
          v792 = v751;
          v793 = v696;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v501 = 0;
          v502 = v114;
          v503 = v113;
          v504 = v693;
          v505 = v694;
          v506 = v695;
          v507 = v696;
          v508 = v697;
          v509 = v698;
          v510 = v699;
          v511 = v700;
          v512 = v701;
          v513 = v702;
          v514 = v703;
          v515 = v704;
          v516 = v705;
          v517 = v706;
          v518 = v707;
          v519 = v708;
          v520 = v709;
          v521 = v710;
          v522 = v712;
          v115 = v692;
          v116 = v691;
          v792 = v752;
          v793 = v697;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v479 = 0;
          v480 = v116;
          v481 = v115;
          v482 = v693;
          v483 = v694;
          v484 = v695;
          v485 = v696;
          v486 = v697;
          v487 = v698;
          v488 = v699;
          v489 = v700;
          v490 = v701;
          v491 = v702;
          v492 = v703;
          v493 = v704;
          v494 = v705;
          v495 = v706;
          v496 = v707;
          v497 = v708;
          v498 = v709;
          v499 = v710;
          v500 = v712;
          v117 = v692;
          v118 = v691;
          v792 = v753;
          v793 = v698;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v457 = 0;
          v458 = v118;
          v459 = v117;
          v460 = v693;
          v461 = v694;
          v462 = v695;
          v463 = v696;
          v464 = v697;
          v465 = v698;
          v466 = v699;
          v467 = v700;
          v468 = v701;
          v469 = v702;
          v470 = v703;
          v471 = v704;
          v472 = v705;
          v473 = v706;
          v474 = v707;
          v475 = v708;
          v476 = v709;
          v477 = v710;
          v478 = v712;
          v119 = v692;
          v120 = v691;
          v792 = v754;
          v793 = v699;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v435 = 0;
          v436 = v120;
          v437 = v119;
          v438 = v693;
          v439 = v694;
          v440 = v695;
          v441 = v696;
          v442 = v697;
          v443 = v698;
          v444 = v699;
          v445 = v700;
          v446 = v701;
          v447 = v702;
          v448 = v703;
          v449 = v704;
          v450 = v705;
          v451 = v706;
          v452 = v707;
          v453 = v708;
          v454 = v709;
          v455 = v710;
          v456 = v712;
          v121 = v692;
          v122 = v691;
          v792 = v755;
          v793 = v700;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v413 = 0;
          v414 = v122;
          v415 = v121;
          v416 = v693;
          v417 = v694;
          v418 = v695;
          v419 = v696;
          v420 = v697;
          v421 = v698;
          v422 = v699;
          v423 = v700;
          v424 = v701;
          v425 = v702;
          v426 = v703;
          v427 = v704;
          v428 = v705;
          v429 = v706;
          v430 = v707;
          v431 = v708;
          v432 = v709;
          v433 = v710;
          v434 = v712;
          v123 = v692;
          v124 = v691;
          v792 = v756;
          v793 = v701;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v391 = 0;
          v392 = v124;
          v393 = v123;
          v394 = v693;
          v395 = v694;
          v396 = v695;
          v397 = v696;
          v398 = v697;
          v399 = v698;
          v400 = v699;
          v401 = v700;
          v402 = v701;
          v403 = v702;
          v404 = v703;
          v405 = v704;
          v406 = v705;
          v407 = v706;
          v408 = v707;
          v409 = v708;
          v410 = v709;
          v411 = v710;
          v412 = v712;
          v125 = v692;
          v126 = v691;
          v792 = v757;
          v793 = v702;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v369 = 0;
          v370 = v126;
          v371 = v125;
          v372 = v693;
          v373 = v694;
          v374 = v695;
          v375 = v696;
          v376 = v697;
          v377 = v698;
          v378 = v699;
          v379 = v700;
          v380 = v701;
          v381 = v702;
          v382 = v703;
          v383 = v704;
          v384 = v705;
          v385 = v706;
          v386 = v707;
          v387 = v708;
          v388 = v709;
          v389 = v710;
          v390 = v712;
          v127 = v692;
          v128 = v691;
          v792 = v758;
          v793 = v703;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v347 = 0;
          v348 = v128;
          v349 = v127;
          v350 = v693;
          v351 = v694;
          v352 = v695;
          v353 = v696;
          v354 = v697;
          v355 = v698;
          v356 = v699;
          v357 = v700;
          v358 = v701;
          v359 = v702;
          v360 = v703;
          v361 = v704;
          v362 = v705;
          v363 = v706;
          v364 = v707;
          v365 = v708;
          v366 = v709;
          v367 = v710;
          v368 = v712;
          v129 = v692;
          v130 = v691;
          v792 = v759;
          v793 = v704;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v325 = 0;
          v326 = v130;
          v327 = v129;
          v328 = v693;
          v329 = v694;
          v330 = v695;
          v331 = v696;
          v332 = v697;
          v333 = v698;
          v334 = v699;
          v335 = v700;
          v336 = v701;
          v337 = v702;
          v338 = v703;
          v339 = v704;
          v340 = v705;
          v341 = v706;
          v342 = v707;
          v343 = v708;
          v344 = v709;
          v345 = v710;
          v346 = v712;
          v131 = v692;
          v132 = v691;
          v792 = v760;
          v793 = v705;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v303 = 0;
          v304 = v132;
          v305 = v131;
          v306 = v693;
          v307 = v694;
          v308 = v695;
          v309 = v696;
          v310 = v697;
          v311 = v698;
          v312 = v699;
          v313 = v700;
          v314 = v701;
          v315 = v702;
          v316 = v703;
          v317 = v704;
          v318 = v705;
          v319 = v706;
          v320 = v707;
          v321 = v708;
          v322 = v709;
          v323 = v710;
          v324 = v712;
          v133 = v692;
          v134 = v691;
          v792 = v761;
          v793 = v706;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v281 = 0;
          v282 = v134;
          v283 = v133;
          v284 = v693;
          v285 = v694;
          v286 = v695;
          v287 = v696;
          v288 = v697;
          v289 = v698;
          v290 = v699;
          v291 = v700;
          v292 = v701;
          v293 = v702;
          v294 = v703;
          v295 = v704;
          v296 = v705;
          v297 = v706;
          v298 = v707;
          v299 = v708;
          v300 = v709;
          v301 = v710;
          v302 = v712;
          v135 = v692;
          v136 = v691;
          v792 = v762;
          v793 = v707;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v259 = 0;
          v260 = v136;
          v261 = v135;
          v262 = v693;
          v263 = v694;
          v264 = v695;
          v265 = v696;
          v266 = v697;
          v267 = v698;
          v268 = v699;
          v269 = v700;
          v270 = v701;
          v271 = v702;
          v272 = v703;
          v273 = v704;
          v274 = v705;
          v275 = v706;
          v276 = v707;
          v277 = v708;
          v278 = v709;
          v279 = v710;
          v280 = v712;
          v137 = v692;
          v138 = v691;
          v792 = v763;
          v793 = v708;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v237 = 0;
          v238 = v138;
          v239 = v137;
          v240 = v693;
          v241 = v694;
          v242 = v695;
          v243 = v696;
          v244 = v697;
          v245 = v698;
          v246 = v699;
          v247 = v700;
          v248 = v701;
          v249 = v702;
          v250 = v703;
          v251 = v704;
          v252 = v705;
          v253 = v706;
          v254 = v707;
          v255 = v708;
          v256 = v709;
          v257 = v710;
          v258 = v712;
          v139 = v692;
          v140 = v691;
          v792 = v764;
          v793 = v709;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v215 = 0;
          v216 = v140;
          v217 = v139;
          v218 = v693;
          v219 = v694;
          v220 = v695;
          v221 = v696;
          v222 = v697;
          v223 = v698;
          v224 = v699;
          v225 = v700;
          v226 = v701;
          v227 = v702;
          v228 = v703;
          v229 = v704;
          v230 = v705;
          v231 = v706;
          v232 = v707;
          v233 = v708;
          v234 = v709;
          v235 = v710;
          v236 = v712;
          v141 = v692;
          v142 = v691;
          v792 = v765;
          v793 = v710;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v193 = 0;
          v194 = v142;
          v195 = v141;
          v196 = v693;
          v197 = v694;
          v198 = v695;
          v199 = v696;
          v200 = v697;
          v201 = v698;
          v202 = v699;
          v203 = v700;
          v204 = v701;
          v205 = v702;
          v206 = v703;
          v207 = v704;
          v208 = v705;
          v209 = v706;
          v210 = v707;
          v211 = v708;
          v212 = v709;
          v213 = v710;
          v214 = v712;
          v143 = v692;
          v144 = v691;
          v792 = v766;
          v793 = v712;
          sub_1B03949FC(&v792, &v796, &v795, &v794);
          v171 = 0;
          v172 = v144;
          v173 = v143;
          v174 = v693;
          v175 = v694;
          v176 = v695;
          v177 = v696;
          v178 = v697;
          v179 = v698;
          v180 = v699;
          v181 = v700;
          v182 = v701;
          v183 = v702;
          v184 = v703;
          v185 = v704;
          v186 = v705;
          v187 = v706;
          v188 = v707;
          v189 = v708;
          v190 = v709;
          v191 = v710;
          v192 = v712;
          _os_log_impl(&dword_1B0389000, v715, v716, "[%.*hhx-%.*X] Completing user-initiated download request %{public}u for UID %u (%{iec-bytes}ld).", v635, 0x2Du);
          v170 = 0;
          sub_1B03998A8(v636);
          sub_1B03998A8(v637);
          sub_1B0E45D58();

          v632 = v171;
        }
      }

      else
      {

        v632 = v717;
      }

      v149 = v632;
      MEMORY[0x1E69E5920](v715);
      (*(v768 + 8))(v771, v767);
      v148 = v801;
      v147 = v801[8];
      MEMORY[0x1E69E5928](v801[8]);
      sub_1B03B2000(v722, v721);
      v146 = sub_1B0E42F18();
      [v147 finishWithResult_];
      MEMORY[0x1E69E5920](v146);
      sub_1B0391D50(v722, v721);
      MEMORY[0x1E69E5920](v147);
      sub_1B09907DC(v148);
    }

    sub_1B039E440(v802);
    sub_1B0391D50(v722, v721);
    result = v717;
    v725 = v717;
  }

  return result;
}