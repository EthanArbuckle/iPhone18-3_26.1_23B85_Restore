void *sub_1B0775DB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v358 = a4;
  v446 = a1;
  v448 = a2;
  v447 = a3;
  v359 = sub_1B074E050;
  v360 = sub_1B07AD09C;
  v361 = sub_1B0394C30;
  v362 = sub_1B0394C24;
  v363 = sub_1B074DFFC;
  v364 = sub_1B039BA88;
  v365 = sub_1B039BB94;
  v366 = sub_1B0394C24;
  v367 = sub_1B039BBA0;
  v368 = sub_1B039BC08;
  v369 = 0x786F626C69616DLL;
  v370 = sub_1B06BA324;
  v371 = sub_1B074E0E4;
  v372 = sub_1B039BCF8;
  v373 = sub_1B07AD0A4;
  v374 = sub_1B039BCF8;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0399178;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B039BA94;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0399178;
  v384 = sub_1B0398F5C;
  v385 = sub_1B0398F5C;
  v386 = sub_1B03991EC;
  v387 = sub_1B0398F5C;
  v388 = sub_1B0398F5C;
  v389 = sub_1B03993BC;
  v390 = sub_1B0398F5C;
  v391 = sub_1B0398F5C;
  v392 = sub_1B039BCEC;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0398F5C;
  v395 = sub_1B039BCEC;
  v396 = sub_1B074E050;
  v397 = sub_1B07AD09C;
  v398 = sub_1B0394C24;
  v399 = sub_1B074DFFC;
  v400 = sub_1B039BA88;
  v401 = sub_1B0394C24;
  v402 = sub_1B039BBA0;
  v403 = sub_1B039BC08;
  v404 = sub_1B06BA324;
  v405 = sub_1B074E0E4;
  v406 = sub_1B039BCF8;
  v407 = sub_1B07AD0A4;
  v408 = sub_1B039BCF8;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0399178;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B039BA94;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B0399178;
  v418 = sub_1B0398F5C;
  v419 = sub_1B0398F5C;
  v420 = sub_1B03991EC;
  v421 = sub_1B0398F5C;
  v422 = sub_1B0398F5C;
  v423 = sub_1B03993BC;
  v424 = sub_1B0398F5C;
  v425 = sub_1B0398F5C;
  v426 = sub_1B039BCEC;
  v427 = sub_1B0398F5C;
  v428 = sub_1B0398F5C;
  v429 = sub_1B039BCEC;
  v466 = 0;
  v465 = 0;
  v464 = 0;
  v430 = 0;
  v458 = 0;
  v438 = 0;
  v431 = _s6LoggerVMa_1();
  v432 = (*(*(v431 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v433 = &v194 - v432;
  v434 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v435 = &v194 - v434;
  v436 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v437 = &v194 - v436;
  v439 = sub_1B0E439A8();
  v440 = *(v439 - 8);
  v441 = v439 - 8;
  v442 = (*(v440 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v438);
  v443 = &v194 - v442;
  v444 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v445 = &v194 - v444;
  v450 = type metadata accessor for InProgressMessageDownload.Section();
  v449 = (*(*(v450 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v448);
  v451 = (&v194 - v449);
  v466 = v11;
  v465 = v10;
  v464 = v12;
  sub_1B0760600(v10, (&v194 - v449));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B07AC2FC(v451);
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v191 = *v451;
      v196 = v451[2];
      v197 = v451[4];
      v198 = v451[6];

LABEL_20:
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
      v194 = (v358 + *(v195 + 48));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v192 = v448;
      v193 = v194;
      *v358 = v446;
      sub_1B0760600(v192, v193);
      return (*(*(v195 - 8) + 56))(v358, 0, 1);
    }

    v357 = *v451;
    v458 = v357;
    if ((sub_1B0759C14() & 1) == 0)
    {
      (*(v440 + 16))(v445, v447, v439);
      sub_1B074B69C(v447, v437);
      sub_1B074B69C(v437, v435);
      sub_1B074E41C(v437, v433);
      v13 = (v435 + *(v431 + 20));
      v308 = *v13;
      v309 = *(v13 + 1);
      v310 = *(v13 + 1);
      v311 = *(v13 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v435);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v307 = 36;
      v328 = 7;
      v14 = swift_allocObject();
      v15 = v309;
      v16 = v310;
      v17 = v311;
      v314 = v14;
      *(v14 + 16) = v308;
      *(v14 + 20) = v15;
      *(v14 + 24) = v16;
      *(v14 + 32) = v17;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = swift_allocObject();
      v19 = v309;
      v20 = v310;
      v21 = v311;
      v306 = v18;
      *(v18 + 16) = v308;
      *(v18 + 20) = v19;
      *(v18 + 24) = v20;
      *(v18 + 32) = v21;

      v327 = 32;
      v22 = swift_allocObject();
      v23 = v306;
      v319 = v22;
      *(v22 + 16) = v359;
      *(v22 + 24) = v23;
      sub_1B0394868();
      sub_1B0394868();

      v24 = swift_allocObject();
      v25 = v309;
      v26 = v310;
      v27 = v311;
      v28 = v24;
      v29 = v433;
      v323 = v28;
      *(v28 + 16) = v308;
      *(v28 + 20) = v25;
      *(v28 + 24) = v26;
      *(v28 + 32) = v27;
      sub_1B074B764(v29);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v321 = 24;
      v312 = swift_allocObject();
      *(v312 + 16) = v446;

      v30 = swift_allocObject();
      v31 = v312;
      v329 = v30;
      *(v30 + 16) = v360;
      *(v30 + 24) = v31;

      v355 = sub_1B0E43988();
      v356 = sub_1B0E458E8();
      v325 = 17;
      v331 = swift_allocObject();
      v316 = 16;
      *(v331 + 16) = 16;
      v332 = swift_allocObject();
      v318 = 4;
      *(v332 + 16) = 4;
      v32 = swift_allocObject();
      v313 = v32;
      *(v32 + 16) = v361;
      *(v32 + 24) = 0;
      v33 = swift_allocObject();
      v34 = v313;
      v333 = v33;
      *(v33 + 16) = v362;
      *(v33 + 24) = v34;
      v334 = swift_allocObject();
      *(v334 + 16) = 0;
      v335 = swift_allocObject();
      *(v335 + 16) = 1;
      v35 = swift_allocObject();
      v36 = v314;
      v315 = v35;
      *(v35 + 16) = v363;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v315;
      v336 = v37;
      *(v37 + 16) = v364;
      *(v37 + 24) = v38;
      v337 = swift_allocObject();
      *(v337 + 16) = v316;
      v338 = swift_allocObject();
      *(v338 + 16) = v318;
      v39 = swift_allocObject();
      v317 = v39;
      *(v39 + 16) = v365;
      *(v39 + 24) = 0;
      v40 = swift_allocObject();
      v41 = v317;
      v339 = v40;
      *(v40 + 16) = v366;
      *(v40 + 24) = v41;
      v340 = swift_allocObject();
      *(v340 + 16) = 0;
      v341 = swift_allocObject();
      *(v341 + 16) = v318;
      v42 = swift_allocObject();
      v43 = v319;
      v320 = v42;
      *(v42 + 16) = v367;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v320;
      v342 = v44;
      *(v44 + 16) = v368;
      *(v44 + 24) = v45;
      v343 = swift_allocObject();
      *(v343 + 16) = 112;
      v344 = swift_allocObject();
      v326 = 8;
      *(v344 + 16) = 8;
      v322 = swift_allocObject();
      *(v322 + 16) = v369;
      v46 = swift_allocObject();
      v47 = v322;
      v345 = v46;
      *(v46 + 16) = v370;
      *(v46 + 24) = v47;
      v346 = swift_allocObject();
      *(v346 + 16) = 37;
      v347 = swift_allocObject();
      *(v347 + 16) = v326;
      v48 = swift_allocObject();
      v49 = v323;
      v324 = v48;
      *(v48 + 16) = v371;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v324;
      v348 = v50;
      *(v50 + 16) = v372;
      *(v50 + 24) = v51;
      v349 = swift_allocObject();
      *(v349 + 16) = 34;
      v350 = swift_allocObject();
      *(v350 + 16) = v326;
      v52 = swift_allocObject();
      v53 = v329;
      v330 = v52;
      *(v52 + 16) = v373;
      *(v52 + 24) = v53;
      v54 = swift_allocObject();
      v55 = v330;
      v352 = v54;
      *(v54 + 16) = v374;
      *(v54 + 24) = v55;
      v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v351 = sub_1B0E46A48();
      v353 = v56;

      v57 = v331;
      v58 = v353;
      *v353 = v375;
      v58[1] = v57;

      v59 = v332;
      v60 = v353;
      v353[2] = v376;
      v60[3] = v59;

      v61 = v333;
      v62 = v353;
      v353[4] = v377;
      v62[5] = v61;

      v63 = v334;
      v64 = v353;
      v353[6] = v378;
      v64[7] = v63;

      v65 = v335;
      v66 = v353;
      v353[8] = v379;
      v66[9] = v65;

      v67 = v336;
      v68 = v353;
      v353[10] = v380;
      v68[11] = v67;

      v69 = v337;
      v70 = v353;
      v353[12] = v381;
      v70[13] = v69;

      v71 = v338;
      v72 = v353;
      v353[14] = v382;
      v72[15] = v71;

      v73 = v339;
      v74 = v353;
      v353[16] = v383;
      v74[17] = v73;

      v75 = v340;
      v76 = v353;
      v353[18] = v384;
      v76[19] = v75;

      v77 = v341;
      v78 = v353;
      v353[20] = v385;
      v78[21] = v77;

      v79 = v342;
      v80 = v353;
      v353[22] = v386;
      v80[23] = v79;

      v81 = v343;
      v82 = v353;
      v353[24] = v387;
      v82[25] = v81;

      v83 = v344;
      v84 = v353;
      v353[26] = v388;
      v84[27] = v83;

      v85 = v345;
      v86 = v353;
      v353[28] = v389;
      v86[29] = v85;

      v87 = v346;
      v88 = v353;
      v353[30] = v390;
      v88[31] = v87;

      v89 = v347;
      v90 = v353;
      v353[32] = v391;
      v90[33] = v89;

      v91 = v348;
      v92 = v353;
      v353[34] = v392;
      v92[35] = v91;

      v93 = v349;
      v94 = v353;
      v353[36] = v393;
      v94[37] = v93;

      v95 = v350;
      v96 = v353;
      v353[38] = v394;
      v96[39] = v95;

      v97 = v352;
      v98 = v353;
      v353[40] = v395;
      v98[41] = v97;
      sub_1B0394964();

      if (os_log_type_enabled(v355, v356))
      {
        v99 = v430;
        v299 = sub_1B0E45D78();
        v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v300 = sub_1B03949A8(0);
        v301 = sub_1B03949A8(2);
        v302 = &v457;
        v457 = v299;
        v303 = &v456;
        v456 = v300;
        v304 = &v455;
        v455 = v301;
        sub_1B0394A48(3, &v457);
        sub_1B0394A48(7, v302);
        v453 = v375;
        v454 = v331;
        sub_1B03949FC(&v453, v302, v303, v304);
        v305 = v99;
        if (v99)
        {

          __break(1u);
        }

        else
        {
          v453 = v376;
          v454 = v332;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v297 = 0;
          v453 = v377;
          v454 = v333;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v296 = 0;
          v453 = v378;
          v454 = v334;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v295 = 0;
          v453 = v379;
          v454 = v335;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v294 = 0;
          v453 = v380;
          v454 = v336;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v293 = 0;
          v453 = v381;
          v454 = v337;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v292 = 0;
          v453 = v382;
          v454 = v338;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v291 = 0;
          v453 = v383;
          v454 = v339;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v290 = 0;
          v453 = v384;
          v454 = v340;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v289 = 0;
          v453 = v385;
          v454 = v341;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v288 = 0;
          v453 = v386;
          v454 = v342;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v287 = 0;
          v453 = v387;
          v454 = v343;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v286 = 0;
          v453 = v388;
          v454 = v344;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v285 = 0;
          v453 = v389;
          v454 = v345;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v284 = 0;
          v453 = v390;
          v454 = v346;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v283 = 0;
          v453 = v391;
          v454 = v347;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v282 = 0;
          v453 = v392;
          v454 = v348;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v281 = 0;
          v453 = v393;
          v454 = v349;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v280 = 0;
          v453 = v394;
          v454 = v350;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          v279 = 0;
          v453 = v395;
          v454 = v352;
          sub_1B03949FC(&v453, &v457, &v456, &v455);
          _os_log_impl(&dword_1B0389000, v355, v356, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did not receive all data for attachment section '[%{public}s]'. Failing.", v299, 0x35u);
          sub_1B03998A8(v300);
          sub_1B03998A8(v301);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v355);
      (*(v440 + 8))(v445, v439);
    }

    v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    v277 = (v358 + *(v278 + 48));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v100 = v448;
    v101 = v277;
    *v358 = v446;
    sub_1B0760600(v100, v101);
    (*(*(v278 - 8) + 56))(v358, 0, 1);
  }

  else
  {
    (*(v440 + 16))(v443, v447, v439);
    sub_1B074B69C(v447, v437);
    sub_1B074B69C(v437, v435);
    sub_1B074E41C(v437, v433);
    v103 = (v435 + *(v431 + 20));
    v228 = *v103;
    v229 = *(v103 + 1);
    v230 = *(v103 + 1);
    v231 = *(v103 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v435);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v227 = 36;
    v248 = 7;
    v104 = swift_allocObject();
    v105 = v229;
    v106 = v230;
    v107 = v231;
    v234 = v104;
    *(v104 + 16) = v228;
    *(v104 + 20) = v105;
    *(v104 + 24) = v106;
    *(v104 + 32) = v107;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v108 = swift_allocObject();
    v109 = v229;
    v110 = v230;
    v111 = v231;
    v226 = v108;
    *(v108 + 16) = v228;
    *(v108 + 20) = v109;
    *(v108 + 24) = v110;
    *(v108 + 32) = v111;

    v247 = 32;
    v112 = swift_allocObject();
    v113 = v226;
    v239 = v112;
    *(v112 + 16) = v396;
    *(v112 + 24) = v113;
    sub_1B0394868();
    sub_1B0394868();

    v114 = swift_allocObject();
    v115 = v229;
    v116 = v230;
    v117 = v231;
    v118 = v114;
    v119 = v433;
    v243 = v118;
    *(v118 + 16) = v228;
    *(v118 + 20) = v115;
    *(v118 + 24) = v116;
    *(v118 + 32) = v117;
    sub_1B074B764(v119);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v241 = 24;
    v232 = swift_allocObject();
    *(v232 + 16) = v446;

    v120 = swift_allocObject();
    v121 = v232;
    v249 = v120;
    *(v120 + 16) = v397;
    *(v120 + 24) = v121;

    v275 = sub_1B0E43988();
    v276 = sub_1B0E458E8();
    v245 = 17;
    v251 = swift_allocObject();
    v236 = 16;
    *(v251 + 16) = 16;
    v252 = swift_allocObject();
    v238 = 4;
    *(v252 + 16) = 4;
    v122 = swift_allocObject();
    v233 = v122;
    *(v122 + 16) = v361;
    *(v122 + 24) = 0;
    v123 = swift_allocObject();
    v124 = v233;
    v253 = v123;
    *(v123 + 16) = v398;
    *(v123 + 24) = v124;
    v254 = swift_allocObject();
    *(v254 + 16) = 0;
    v255 = swift_allocObject();
    *(v255 + 16) = 1;
    v125 = swift_allocObject();
    v126 = v234;
    v235 = v125;
    *(v125 + 16) = v399;
    *(v125 + 24) = v126;
    v127 = swift_allocObject();
    v128 = v235;
    v256 = v127;
    *(v127 + 16) = v400;
    *(v127 + 24) = v128;
    v257 = swift_allocObject();
    *(v257 + 16) = v236;
    v258 = swift_allocObject();
    *(v258 + 16) = v238;
    v129 = swift_allocObject();
    v237 = v129;
    *(v129 + 16) = v365;
    *(v129 + 24) = 0;
    v130 = swift_allocObject();
    v131 = v237;
    v259 = v130;
    *(v130 + 16) = v401;
    *(v130 + 24) = v131;
    v260 = swift_allocObject();
    *(v260 + 16) = 0;
    v261 = swift_allocObject();
    *(v261 + 16) = v238;
    v132 = swift_allocObject();
    v133 = v239;
    v240 = v132;
    *(v132 + 16) = v402;
    *(v132 + 24) = v133;
    v134 = swift_allocObject();
    v135 = v240;
    v262 = v134;
    *(v134 + 16) = v403;
    *(v134 + 24) = v135;
    v263 = swift_allocObject();
    *(v263 + 16) = 112;
    v264 = swift_allocObject();
    v246 = 8;
    *(v264 + 16) = 8;
    v242 = swift_allocObject();
    *(v242 + 16) = v369;
    v136 = swift_allocObject();
    v137 = v242;
    v265 = v136;
    *(v136 + 16) = v404;
    *(v136 + 24) = v137;
    v266 = swift_allocObject();
    *(v266 + 16) = 37;
    v267 = swift_allocObject();
    *(v267 + 16) = v246;
    v138 = swift_allocObject();
    v139 = v243;
    v244 = v138;
    *(v138 + 16) = v405;
    *(v138 + 24) = v139;
    v140 = swift_allocObject();
    v141 = v244;
    v268 = v140;
    *(v140 + 16) = v406;
    *(v140 + 24) = v141;
    v269 = swift_allocObject();
    *(v269 + 16) = 34;
    v270 = swift_allocObject();
    *(v270 + 16) = v246;
    v142 = swift_allocObject();
    v143 = v249;
    v250 = v142;
    *(v142 + 16) = v407;
    *(v142 + 24) = v143;
    v144 = swift_allocObject();
    v145 = v250;
    v272 = v144;
    *(v144 + 16) = v408;
    *(v144 + 24) = v145;
    v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v271 = sub_1B0E46A48();
    v273 = v146;

    v147 = v251;
    v148 = v273;
    *v273 = v409;
    v148[1] = v147;

    v149 = v252;
    v150 = v273;
    v273[2] = v410;
    v150[3] = v149;

    v151 = v253;
    v152 = v273;
    v273[4] = v411;
    v152[5] = v151;

    v153 = v254;
    v154 = v273;
    v273[6] = v412;
    v154[7] = v153;

    v155 = v255;
    v156 = v273;
    v273[8] = v413;
    v156[9] = v155;

    v157 = v256;
    v158 = v273;
    v273[10] = v414;
    v158[11] = v157;

    v159 = v257;
    v160 = v273;
    v273[12] = v415;
    v160[13] = v159;

    v161 = v258;
    v162 = v273;
    v273[14] = v416;
    v162[15] = v161;

    v163 = v259;
    v164 = v273;
    v273[16] = v417;
    v164[17] = v163;

    v165 = v260;
    v166 = v273;
    v273[18] = v418;
    v166[19] = v165;

    v167 = v261;
    v168 = v273;
    v273[20] = v419;
    v168[21] = v167;

    v169 = v262;
    v170 = v273;
    v273[22] = v420;
    v170[23] = v169;

    v171 = v263;
    v172 = v273;
    v273[24] = v421;
    v172[25] = v171;

    v173 = v264;
    v174 = v273;
    v273[26] = v422;
    v174[27] = v173;

    v175 = v265;
    v176 = v273;
    v273[28] = v423;
    v176[29] = v175;

    v177 = v266;
    v178 = v273;
    v273[30] = v424;
    v178[31] = v177;

    v179 = v267;
    v180 = v273;
    v273[32] = v425;
    v180[33] = v179;

    v181 = v268;
    v182 = v273;
    v273[34] = v426;
    v182[35] = v181;

    v183 = v269;
    v184 = v273;
    v273[36] = v427;
    v184[37] = v183;

    v185 = v270;
    v186 = v273;
    v273[38] = v428;
    v186[39] = v185;

    v187 = v272;
    v188 = v273;
    v273[40] = v429;
    v188[41] = v187;
    sub_1B0394964();

    if (os_log_type_enabled(v275, v276))
    {
      v189 = v430;
      v219 = sub_1B0E45D78();
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v220 = sub_1B03949A8(0);
      v221 = sub_1B03949A8(2);
      v222 = &v463;
      v463 = v219;
      v223 = &v462;
      v462 = v220;
      v224 = &v461;
      v461 = v221;
      sub_1B0394A48(3, &v463);
      sub_1B0394A48(7, v222);
      v459 = v409;
      v460 = v251;
      sub_1B03949FC(&v459, v222, v223, v224);
      v225 = v189;
      if (v189)
      {

        __break(1u);
      }

      else
      {
        v459 = v410;
        v460 = v252;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v217 = 0;
        v459 = v411;
        v460 = v253;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v216 = 0;
        v459 = v412;
        v460 = v254;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v215 = 0;
        v459 = v413;
        v460 = v255;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v214 = 0;
        v459 = v414;
        v460 = v256;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v213 = 0;
        v459 = v415;
        v460 = v257;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v212 = 0;
        v459 = v416;
        v460 = v258;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v211 = 0;
        v459 = v417;
        v460 = v259;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v210 = 0;
        v459 = v418;
        v460 = v260;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v209 = 0;
        v459 = v419;
        v460 = v261;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v208 = 0;
        v459 = v420;
        v460 = v262;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v207 = 0;
        v459 = v421;
        v460 = v263;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v206 = 0;
        v459 = v422;
        v460 = v264;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v205 = 0;
        v459 = v423;
        v460 = v265;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v204 = 0;
        v459 = v424;
        v460 = v266;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v203 = 0;
        v459 = v425;
        v460 = v267;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v202 = 0;
        v459 = v426;
        v460 = v268;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v201 = 0;
        v459 = v427;
        v460 = v269;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v200 = 0;
        v459 = v428;
        v460 = v270;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        v199 = 0;
        v459 = v429;
        v460 = v272;
        sub_1B03949FC(&v459, &v463, &v462, &v461);
        _os_log_impl(&dword_1B0389000, v275, v276, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did not receive all data for section '[%{public}s]'. Failing.", v219, 0x35u);
        sub_1B03998A8(v220);
        sub_1B03998A8(v221);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v275);
    (*(v440 + 8))(v443, v439);
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
    (*(*(v190 - 8) + 56))(v358, 1);
    return sub_1B07AE888(v451);
  }
}

uint64_t sub_1B0779AAC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v6 = *a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  return a2(v6, &a1[*(v2 + 48)]);
}

uint64_t sub_1B0779B28(uint64_t a1)
{
  v6 = a1;
  v11 = 0;
  v8 = type metadata accessor for InProgressMessageDownload.Section();
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (v4 - v7);
  v11 = MEMORY[0x1EEE9AC00](v6);
  sub_1B0760600(v11, (v4 - v7));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B07AC2FC(v9);
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v2 = *v9;
      v4[1] = v9[2];
      v4[2] = v9[4];
      v4[3] = v9[6];

LABEL_9:
      v5 = 1;
      return v5 & 1;
    }

    v1 = *v9;
  }

  else
  {
    sub_1B07AE888(v9);
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1B0779C84(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v42 = a1;
  v43 = a2;
  v32 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v40 = a8;
  v44 = a9;
  v41 = sub_1B07B4794;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v24 = 0;
  v33 = sub_1B0E443C8();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v23 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](0);
  v34 = v22 - v23;
  v25 = type metadata accessor for Message(v9);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v10 = v22 - v28;
  v29 = v22 - v28;
  v60 = v42;
  v61 = v11;
  v59 = v12;
  v58 = v13;
  v56 = v14;
  v57 = v15;
  v55 = v16;
  v54 = v17;
  v53 = v18;
  v19 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  (*(v30 + 16))(v34, v32 + *(v19 + 28), v33);
  Message.init(_:)(v34, v10);
  v20 = v35;

  v48 = v36;
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  Message.extractAttachments(lineEnding:writeAttachment:writeWithoutAttachments:cache:)(2u, v41, v47, v42, v43, v44);
  v45 = v20;
  v46 = v20;
  if (v20)
  {
    v22[1] = v46;
  }

  return (*(v26 + 8))(v29, v25);
}

void *sub_1B0779FD8(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v25 = a3;
  v26 = a4;
  v28 = a5;
  v17 = a6;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v18 = sub_1B0E443C8();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v14 - v21;
  v40 = MEMORY[0x1EEE9AC00](v23);
  v39 = a2;
  v37 = v7;
  v38 = v8;
  v36 = v9;
  v35 = v10;
  sub_1B07B47AC(v40, v34);
  v27 = &v41;
  sub_1B077A2F0(v23, &v41);
  v24 = *(a2 + 16);
  v29 = *v23;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = sub_1B077A6CC(v24, v29, v25, v26, v27, v28);

  if (v30)
  {
    v16 = v30;
    v15 = v30;
    v33 = v30;
    v42 = *v23;
    sub_1B074E7A8(&v42, &v32);

    v14 = v31;
    v31[0] = v42;
    v31[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20C8, &qword_1B0E9B550);
    sub_1B0E452E8();
    v11 = v23[9];
    v12 = v23[10];
    sub_1B0E44358();
    sub_1B0754C0C(v22, v28);
    (*(v19 + 8))(v22, v18);
    sub_1B0757864(v28);
  }

  return sub_1B0754BBC(&v41);
}

void *sub_1B077A2F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v30 = 0u;
  v31 = 0u;
  v39 = a1;
  memcpy(__dst, (a1 + 32), 0x21uLL);
  sub_1B07ACB48(__dst, v35);
  memcpy(v34, __dst, 0x21uLL);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20E0, &qword_1B0EDE9F0);
  sub_1B03F1A20(sub_1B077E718, 0, v2, MEMORY[0x1E69E73E0], &type metadata for Media.MediaType, v20, v36);
  sub_1B07ACDC4(v34);
  v32 = v36[0];
  v33 = v36[1];
  if (*(&v36[0] + 1))
  {
    v37 = v32;
    v38 = v33;
  }

  else
  {
    topLevel = *Media.TopLevelType.text.unsafeMutableAddressor();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3._countAndFlagsBits = sub_1B0E44838();
    v4 = Media.Subtype.init(stringLiteral:)(v3);
    v44 = Media.MediaType.init(topLevel:sub:)(topLevel, v4);
    *&v37 = v44.topLevel.stringValue._countAndFlagsBits;
    *(&v37 + 1) = v44.topLevel.stringValue._object;
    *&v38 = v44.sub.stringValue._countAndFlagsBits;
    *(&v38 + 1) = v44.sub.stringValue._object;
  }

  v13 = v37;
  v14 = v38;
  v30 = v37;
  v31 = v38;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = *(a1 + 24);
  v25 = v42;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20E8, &qword_1B0E9B570);
  sub_1B03F1A20(sub_1B077FAC8, 0, v5, MEMORY[0x1E69E73E0], &type metadata for BodyStructure.Encoding, v20, &v26);
  v23 = v26;
  v24 = v27;
  if (v27)
  {
    v28 = v23;
    v29 = v24;
  }

  else
  {
    v28 = static BodyStructure.Encoding.sevenBit.getter();
    v29 = v6;
  }

  v11 = v28;
  v12 = v29;
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = sub_1B0E450E8();
  sub_1B075A08C(v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16, v11, v12, v41, v9);
  memcpy(__b, v41, sizeof(__b));

  memcpy(v22, __b, sizeof(v22));
  sub_1B075CFDC(v22, v21);
  sub_1B07AD030(a1);
  sub_1B0754BBC(__b);
  return memcpy(a2, v22, 0x48uLL);
}

void *sub_1B077A6CC(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v612 = a1;
  v623 = a2;
  v622 = a3;
  v621 = a4;
  v492 = a5;
  v610 = a6;
  v7 = v6;
  v611 = v7;
  v493 = sub_1B074E050;
  v494 = sub_1B07AD09C;
  v495 = sub_1B03F7AE0;
  v496 = sub_1B0394C30;
  v497 = sub_1B0394C24;
  v498 = sub_1B074DFFC;
  v499 = sub_1B039BA88;
  v500 = sub_1B039BB94;
  v501 = sub_1B0394C24;
  v502 = sub_1B039BBA0;
  v503 = sub_1B039BC08;
  v504 = 0x786F626C69616DLL;
  v505 = sub_1B06BA324;
  v506 = sub_1B074E0E4;
  v507 = sub_1B039BCF8;
  v508 = sub_1B07AD0A4;
  v509 = sub_1B039BCF8;
  v510 = sub_1B07AD0B0;
  v511 = sub_1B039BCF8;
  v512 = sub_1B07AD0C4;
  v513 = sub_1B039BCF8;
  v514 = sub_1B07AD0D8;
  v515 = sub_1B03B0DF8;
  v516 = sub_1B07AB020;
  v517 = sub_1B039BC08;
  v518 = sub_1B0398F5C;
  v519 = sub_1B0398F5C;
  v520 = sub_1B0399178;
  v521 = sub_1B0398F5C;
  v522 = sub_1B0398F5C;
  v523 = sub_1B039BA94;
  v524 = sub_1B0398F5C;
  v525 = sub_1B0398F5C;
  v526 = sub_1B0399178;
  v527 = sub_1B0398F5C;
  v528 = sub_1B0398F5C;
  v529 = sub_1B03991EC;
  v530 = sub_1B0398F5C;
  v531 = sub_1B0398F5C;
  v532 = sub_1B03993BC;
  v533 = sub_1B0398F5C;
  v534 = sub_1B0398F5C;
  v535 = sub_1B039BCEC;
  v536 = sub_1B0398F5C;
  v537 = sub_1B0398F5C;
  v538 = sub_1B039BCEC;
  v539 = sub_1B0398F5C;
  v540 = sub_1B0398F5C;
  v541 = sub_1B039BCEC;
  v542 = sub_1B0398F5C;
  v543 = sub_1B0398F5C;
  v544 = sub_1B039BCEC;
  v545 = sub_1B0398F5C;
  v546 = sub_1B0398F5C;
  v547 = sub_1B0399260;
  v548 = sub_1B0398F5C;
  v549 = sub_1B0398F5C;
  v550 = sub_1B03991EC;
  v551 = sub_1B074E050;
  v552 = sub_1B07AD09C;
  v553 = sub_1B03F7AE0;
  v554 = sub_1B0394C24;
  v555 = sub_1B074DFFC;
  v556 = sub_1B039BA88;
  v557 = sub_1B0394C24;
  v558 = sub_1B039BBA0;
  v559 = sub_1B039BC08;
  v560 = sub_1B06BA324;
  v561 = sub_1B074E0E4;
  v562 = sub_1B039BCF8;
  v563 = sub_1B07AD0A4;
  v564 = sub_1B039BCF8;
  v565 = sub_1B07AD0B0;
  v566 = sub_1B039BCF8;
  v567 = sub_1B07AD0C4;
  v568 = sub_1B039BCF8;
  v569 = sub_1B07AB020;
  v570 = sub_1B039BC08;
  v571 = sub_1B0398F5C;
  v572 = sub_1B0398F5C;
  v573 = sub_1B0399178;
  v574 = sub_1B0398F5C;
  v575 = sub_1B0398F5C;
  v576 = sub_1B039BA94;
  v577 = sub_1B0398F5C;
  v578 = sub_1B0398F5C;
  v579 = sub_1B0399178;
  v580 = sub_1B0398F5C;
  v581 = sub_1B0398F5C;
  v582 = sub_1B03991EC;
  v583 = sub_1B0398F5C;
  v584 = sub_1B0398F5C;
  v585 = sub_1B03993BC;
  v586 = sub_1B0398F5C;
  v587 = sub_1B0398F5C;
  v588 = sub_1B039BCEC;
  v589 = sub_1B0398F5C;
  v590 = sub_1B0398F5C;
  v591 = sub_1B039BCEC;
  v592 = sub_1B0398F5C;
  v593 = sub_1B0398F5C;
  v594 = sub_1B039BCEC;
  v595 = sub_1B0398F5C;
  v596 = sub_1B0398F5C;
  v597 = sub_1B039BCEC;
  v598 = sub_1B0398F5C;
  v599 = sub_1B0398F5C;
  v600 = sub_1B03991EC;
  v651 = 0;
  v650 = 0;
  v648 = 0;
  v649 = 0;
  v647 = 0;
  v646 = 0;
  v645 = 0;
  v601 = 0;
  v637 = 0;
  v635 = 0;
  v602 = 0;
  v603 = _s6LoggerVMa_1();
  v604 = (*(*(v603 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](0);
  v605 = v290 - v604;
  v606 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v607 = v290 - v606;
  v608 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v609 = v290 - v608;
  v613 = sub_1B0E439A8();
  v614 = *(v613 - 8);
  v615 = v613 - 8;
  v617 = *(v614 + 64);
  v616 = (v617 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v612);
  v618 = v290 - v616;
  v619 = (v617 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v620 = v290 - v619;
  v651 = v14;
  v650 = v15;
  v648 = v16;
  v649 = v17;
  v647 = a5;
  v646 = v18;
  v645 = v19;
  v624 = sub_1B075A230();
  v625 = v20;
  v626 = v622(v623, v624);

  if (v626)
  {
    v491 = v626;
    v411 = v626;
    v637 = v626;
    _s26AttachmentDecoderAndWriterCMa();
    sub_1B075CFDC(v492, v636);
    MEMORY[0x1E69E5928](v411);
    v412 = sub_1B0754968(v492, v411);
    v635 = v412;
    (*(v614 + 16))(v620, v610, v613);
    sub_1B074B69C(v610, v609);
    sub_1B074B69C(v609, v607);
    sub_1B074E41C(v609, v605);
    v21 = (v607 + *(v603 + 20));
    v415 = *v21;
    v416 = *(v21 + 1);
    v417 = *(v21 + 1);
    v418 = *(v21 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v607);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v414 = 36;
    v450 = 7;
    v22 = swift_allocObject();
    v23 = v416;
    v24 = v417;
    v25 = v418;
    v427 = v22;
    *(v22 + 16) = v415;
    *(v22 + 20) = v23;
    *(v22 + 24) = v24;
    *(v22 + 32) = v25;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v26 = swift_allocObject();
    v27 = v416;
    v28 = v417;
    v29 = v418;
    v413 = v26;
    *(v26 + 16) = v415;
    *(v26 + 20) = v27;
    *(v26 + 24) = v28;
    *(v26 + 32) = v29;

    v449 = 32;
    v30 = swift_allocObject();
    v31 = v413;
    v431 = v30;
    *(v30 + 16) = v493;
    *(v30 + 24) = v31;
    sub_1B0394868();
    sub_1B0394868();

    v32 = swift_allocObject();
    v33 = v416;
    v34 = v417;
    v35 = v418;
    v36 = v32;
    v37 = v605;
    v435 = v36;
    *(v36 + 16) = v415;
    *(v36 + 20) = v33;
    *(v36 + 24) = v34;
    *(v36 + 32) = v35;
    sub_1B074B764(v37);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v433 = 24;
    v419 = swift_allocObject();
    *(v419 + 16) = v623;

    v38 = swift_allocObject();
    v39 = v419;
    v437 = v38;
    *(v38 + 16) = v494;
    *(v38 + 24) = v39;

    sub_1B075CFDC(v492, v634);
    sub_1B075CFDC(v492, v633);
    v421 = *v492;
    v422 = v492[1];
    v423 = v492[2];
    v424 = v492[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0754BBC(v492);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v420 = 48;
    v40 = swift_allocObject();
    v41 = v422;
    v42 = v423;
    v43 = v424;
    v439 = v40;
    v40[2] = v421;
    v40[3] = v41;
    v40[4] = v42;
    v40[5] = v43;
    v44 = swift_allocObject();
    v45 = v422;
    v46 = v423;
    v47 = v424;
    v48 = v44;
    v49 = v492;
    v442 = v48;
    v48[2] = v421;
    v48[3] = v45;
    v48[4] = v46;
    v48[5] = v47;
    sub_1B0754BBC(v49);
    sub_1B075CFDC(v492, v632);
    v445 = swift_allocObject();
    memcpy((v445 + 16), v492, 0x48uLL);
    sub_1B07575C4();

    v425 = swift_allocObject();
    *(v425 + 16) = v612;

    v50 = swift_allocObject();
    v51 = v425;
    v451 = v50;
    *(v50 + 16) = v495;
    *(v50 + 24) = v51;

    v489 = sub_1B0E43988();
    v490 = sub_1B0E458D8();
    v447 = 17;
    v453 = swift_allocObject();
    v429 = 16;
    *(v453 + 16) = 16;
    v454 = swift_allocObject();
    v448 = 4;
    *(v454 + 16) = 4;
    v52 = swift_allocObject();
    v426 = v52;
    *(v52 + 16) = v496;
    *(v52 + 24) = 0;
    v53 = swift_allocObject();
    v54 = v426;
    v455 = v53;
    *(v53 + 16) = v497;
    *(v53 + 24) = v54;
    v456 = swift_allocObject();
    *(v456 + 16) = 0;
    v457 = swift_allocObject();
    *(v457 + 16) = 1;
    v55 = swift_allocObject();
    v56 = v427;
    v428 = v55;
    *(v55 + 16) = v498;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v428;
    v458 = v57;
    *(v57 + 16) = v499;
    *(v57 + 24) = v58;
    v459 = swift_allocObject();
    *(v459 + 16) = v429;
    v460 = swift_allocObject();
    *(v460 + 16) = v448;
    v59 = swift_allocObject();
    v430 = v59;
    *(v59 + 16) = v500;
    *(v59 + 24) = 0;
    v60 = swift_allocObject();
    v61 = v430;
    v461 = v60;
    *(v60 + 16) = v501;
    *(v60 + 24) = v61;
    v462 = swift_allocObject();
    *(v462 + 16) = 0;
    v463 = swift_allocObject();
    *(v463 + 16) = v448;
    v62 = swift_allocObject();
    v63 = v431;
    v432 = v62;
    *(v62 + 16) = v502;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v432;
    v464 = v64;
    *(v64 + 16) = v503;
    *(v64 + 24) = v65;
    v465 = swift_allocObject();
    *(v465 + 16) = 112;
    v466 = swift_allocObject();
    v444 = 8;
    *(v466 + 16) = 8;
    v434 = swift_allocObject();
    *(v434 + 16) = v504;
    v66 = swift_allocObject();
    v67 = v434;
    v467 = v66;
    *(v66 + 16) = v505;
    *(v66 + 24) = v67;
    v468 = swift_allocObject();
    *(v468 + 16) = 37;
    v469 = swift_allocObject();
    *(v469 + 16) = v444;
    v68 = swift_allocObject();
    v69 = v435;
    v436 = v68;
    *(v68 + 16) = v506;
    *(v68 + 24) = v69;
    v70 = swift_allocObject();
    v71 = v436;
    v470 = v70;
    *(v70 + 16) = v507;
    *(v70 + 24) = v71;
    v471 = swift_allocObject();
    v441 = 34;
    *(v471 + 16) = 34;
    v472 = swift_allocObject();
    *(v472 + 16) = v444;
    v72 = swift_allocObject();
    v73 = v437;
    v438 = v72;
    *(v72 + 16) = v508;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    v75 = v438;
    v473 = v74;
    *(v74 + 16) = v509;
    *(v74 + 24) = v75;
    v474 = swift_allocObject();
    *(v474 + 16) = v441;
    v475 = swift_allocObject();
    *(v475 + 16) = v444;
    v76 = swift_allocObject();
    v77 = v439;
    v440 = v76;
    *(v76 + 16) = v510;
    *(v76 + 24) = v77;
    v78 = swift_allocObject();
    v79 = v440;
    v476 = v78;
    *(v78 + 16) = v511;
    *(v78 + 24) = v79;
    v477 = swift_allocObject();
    *(v477 + 16) = v441;
    v478 = swift_allocObject();
    *(v478 + 16) = v444;
    v80 = swift_allocObject();
    v81 = v442;
    v443 = v80;
    *(v80 + 16) = v512;
    *(v80 + 24) = v81;
    v82 = swift_allocObject();
    v83 = v443;
    v479 = v82;
    *(v82 + 16) = v513;
    *(v82 + 24) = v83;
    v480 = swift_allocObject();
    *(v480 + 16) = 0;
    v481 = swift_allocObject();
    *(v481 + 16) = v444;
    v84 = swift_allocObject();
    v85 = v445;
    v446 = v84;
    *(v84 + 16) = v514;
    *(v84 + 24) = v85;
    v86 = swift_allocObject();
    v87 = v446;
    v482 = v86;
    *(v86 + 16) = v515;
    *(v86 + 24) = v87;
    v483 = swift_allocObject();
    *(v483 + 16) = 0;
    v484 = swift_allocObject();
    *(v484 + 16) = v448;
    v88 = swift_allocObject();
    v89 = v451;
    v452 = v88;
    *(v88 + 16) = v516;
    *(v88 + 24) = v89;
    v90 = swift_allocObject();
    v91 = v452;
    v486 = v90;
    *(v90 + 16) = v517;
    *(v90 + 24) = v91;
    v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v485 = sub_1B0E46A48();
    v487 = v92;

    v93 = v453;
    v94 = v487;
    *v487 = v518;
    v94[1] = v93;

    v95 = v454;
    v96 = v487;
    v487[2] = v519;
    v96[3] = v95;

    v97 = v455;
    v98 = v487;
    v487[4] = v520;
    v98[5] = v97;

    v99 = v456;
    v100 = v487;
    v487[6] = v521;
    v100[7] = v99;

    v101 = v457;
    v102 = v487;
    v487[8] = v522;
    v102[9] = v101;

    v103 = v458;
    v104 = v487;
    v487[10] = v523;
    v104[11] = v103;

    v105 = v459;
    v106 = v487;
    v487[12] = v524;
    v106[13] = v105;

    v107 = v460;
    v108 = v487;
    v487[14] = v525;
    v108[15] = v107;

    v109 = v461;
    v110 = v487;
    v487[16] = v526;
    v110[17] = v109;

    v111 = v462;
    v112 = v487;
    v487[18] = v527;
    v112[19] = v111;

    v113 = v463;
    v114 = v487;
    v487[20] = v528;
    v114[21] = v113;

    v115 = v464;
    v116 = v487;
    v487[22] = v529;
    v116[23] = v115;

    v117 = v465;
    v118 = v487;
    v487[24] = v530;
    v118[25] = v117;

    v119 = v466;
    v120 = v487;
    v487[26] = v531;
    v120[27] = v119;

    v121 = v467;
    v122 = v487;
    v487[28] = v532;
    v122[29] = v121;

    v123 = v468;
    v124 = v487;
    v487[30] = v533;
    v124[31] = v123;

    v125 = v469;
    v126 = v487;
    v487[32] = v534;
    v126[33] = v125;

    v127 = v470;
    v128 = v487;
    v487[34] = v535;
    v128[35] = v127;

    v129 = v471;
    v130 = v487;
    v487[36] = v536;
    v130[37] = v129;

    v131 = v472;
    v132 = v487;
    v487[38] = v537;
    v132[39] = v131;

    v133 = v473;
    v134 = v487;
    v487[40] = v538;
    v134[41] = v133;

    v135 = v474;
    v136 = v487;
    v487[42] = v539;
    v136[43] = v135;

    v137 = v475;
    v138 = v487;
    v487[44] = v540;
    v138[45] = v137;

    v139 = v476;
    v140 = v487;
    v487[46] = v541;
    v140[47] = v139;

    v141 = v477;
    v142 = v487;
    v487[48] = v542;
    v142[49] = v141;

    v143 = v478;
    v144 = v487;
    v487[50] = v543;
    v144[51] = v143;

    v145 = v479;
    v146 = v487;
    v487[52] = v544;
    v146[53] = v145;

    v147 = v480;
    v148 = v487;
    v487[54] = v545;
    v148[55] = v147;

    v149 = v481;
    v150 = v487;
    v487[56] = v546;
    v150[57] = v149;

    v151 = v482;
    v152 = v487;
    v487[58] = v547;
    v152[59] = v151;

    v153 = v483;
    v154 = v487;
    v487[60] = v548;
    v154[61] = v153;

    v155 = v484;
    v156 = v487;
    v487[62] = v549;
    v156[63] = v155;

    v157 = v486;
    v158 = v487;
    v487[64] = v550;
    v158[65] = v157;
    sub_1B0394964();

    if (os_log_type_enabled(v489, v490))
    {
      v159 = v601;
      v404 = sub_1B0E45D78();
      v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v405 = sub_1B03949A8(0);
      v406 = sub_1B03949A8(4);
      v407 = &v631;
      v631 = v404;
      v408 = &v630;
      v630 = v405;
      v409 = &v629;
      v629 = v406;
      sub_1B0394A48(3, &v631);
      sub_1B0394A48(11, v407);
      v627 = v518;
      v628 = v453;
      sub_1B03949FC(&v627, v407, v408, v409);
      v410 = v159;
      if (v159)
      {

        __break(1u);
      }

      else
      {
        v627 = v519;
        v628 = v454;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v402 = 0;
        v627 = v520;
        v628 = v455;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v401 = 0;
        v627 = v521;
        v628 = v456;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v400 = 0;
        v627 = v522;
        v628 = v457;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v399 = 0;
        v627 = v523;
        v628 = v458;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v398 = 0;
        v627 = v524;
        v628 = v459;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v397 = 0;
        v627 = v525;
        v628 = v460;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v396 = 0;
        v627 = v526;
        v628 = v461;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v395 = 0;
        v627 = v527;
        v628 = v462;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v394 = 0;
        v627 = v528;
        v628 = v463;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v393 = 0;
        v627 = v529;
        v628 = v464;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v392 = 0;
        v627 = v530;
        v628 = v465;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v391 = 0;
        v627 = v531;
        v628 = v466;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v390 = 0;
        v627 = v532;
        v628 = v467;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v389 = 0;
        v627 = v533;
        v628 = v468;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v388 = 0;
        v627 = v534;
        v628 = v469;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v387 = 0;
        v627 = v535;
        v628 = v470;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v386 = 0;
        v627 = v536;
        v628 = v471;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v385 = 0;
        v627 = v537;
        v628 = v472;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v384 = 0;
        v627 = v538;
        v628 = v473;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v383 = 0;
        v627 = v539;
        v628 = v474;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v382 = 0;
        v627 = v540;
        v628 = v475;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v381 = 0;
        v627 = v541;
        v628 = v476;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v380 = 0;
        v627 = v542;
        v628 = v477;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v379 = 0;
        v627 = v543;
        v628 = v478;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v378 = 0;
        v627 = v544;
        v628 = v479;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v377 = 0;
        v627 = v545;
        v628 = v480;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v376 = 0;
        v627 = v546;
        v628 = v481;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v375 = 0;
        v627 = v547;
        v628 = v482;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v374 = 0;
        v627 = v548;
        v628 = v483;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v373 = 0;
        v627 = v549;
        v628 = v484;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        v372 = 0;
        v627 = v550;
        v628 = v486;
        sub_1B03949FC(&v627, &v631, &v630, &v629);
        _os_log_impl(&dword_1B0389000, v489, v490, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Did create attachment writer for attachment '[%{public}s]' %{public}s/%{public}s, byte count %{iec-bytes}ld, UID %u.", v404, 0x59u);
        sub_1B03998A8(v405);
        sub_1B03998A8(v406);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v489);
    (*(v614 + 8))(v620, v613);
    MEMORY[0x1E69E5920](v411);
    return v412;
  }

  else
  {
    (*(v614 + 16))(v618, v610, v613);
    sub_1B074B69C(v610, v609);
    sub_1B074B69C(v609, v607);
    sub_1B074E41C(v609, v605);
    v160 = (v607 + *(v603 + 20));
    v300 = *v160;
    v301 = *(v160 + 1);
    v302 = *(v160 + 1);
    v303 = *(v160 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v607);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v299 = 36;
    v333 = 7;
    v161 = swift_allocObject();
    v162 = v301;
    v163 = v302;
    v164 = v303;
    v312 = v161;
    *(v161 + 16) = v300;
    *(v161 + 20) = v162;
    *(v161 + 24) = v163;
    *(v161 + 32) = v164;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v165 = swift_allocObject();
    v166 = v301;
    v167 = v302;
    v168 = v303;
    v298 = v165;
    *(v165 + 16) = v300;
    *(v165 + 20) = v166;
    *(v165 + 24) = v167;
    *(v165 + 32) = v168;

    v332 = 32;
    v169 = swift_allocObject();
    v170 = v298;
    v316 = v169;
    *(v169 + 16) = v551;
    *(v169 + 24) = v170;
    sub_1B0394868();
    sub_1B0394868();

    v171 = swift_allocObject();
    v172 = v301;
    v173 = v302;
    v174 = v303;
    v175 = v171;
    v176 = v605;
    v320 = v175;
    *(v175 + 16) = v300;
    *(v175 + 20) = v172;
    *(v175 + 24) = v173;
    *(v175 + 32) = v174;
    sub_1B074B764(v176);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v318 = 24;
    v304 = swift_allocObject();
    *(v304 + 16) = v623;

    v177 = swift_allocObject();
    v178 = v304;
    v322 = v177;
    *(v177 + 16) = v552;
    *(v177 + 24) = v178;

    sub_1B075CFDC(v492, v644);
    sub_1B075CFDC(v492, v643);
    v306 = *v492;
    v307 = v492[1];
    v308 = v492[2];
    v309 = v492[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0754BBC(v492);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v305 = 48;
    v179 = swift_allocObject();
    v180 = v307;
    v181 = v308;
    v182 = v309;
    v324 = v179;
    v179[2] = v306;
    v179[3] = v180;
    v179[4] = v181;
    v179[5] = v182;
    v183 = swift_allocObject();
    v184 = v307;
    v185 = v308;
    v186 = v309;
    v187 = v183;
    v188 = v492;
    v328 = v187;
    v187[2] = v306;
    v187[3] = v184;
    v187[4] = v185;
    v187[5] = v186;
    sub_1B0754BBC(v188);
    v310 = swift_allocObject();
    *(v310 + 16) = v612;

    v189 = swift_allocObject();
    v190 = v310;
    v334 = v189;
    *(v189 + 16) = v553;
    *(v189 + 24) = v190;

    v369 = sub_1B0E43988();
    v370 = sub_1B0E458E8();
    v330 = 17;
    v336 = swift_allocObject();
    v314 = 16;
    *(v336 + 16) = 16;
    v337 = swift_allocObject();
    v331 = 4;
    *(v337 + 16) = 4;
    v191 = swift_allocObject();
    v311 = v191;
    *(v191 + 16) = v496;
    *(v191 + 24) = 0;
    v192 = swift_allocObject();
    v193 = v311;
    v338 = v192;
    *(v192 + 16) = v554;
    *(v192 + 24) = v193;
    v339 = swift_allocObject();
    *(v339 + 16) = 0;
    v340 = swift_allocObject();
    *(v340 + 16) = 1;
    v194 = swift_allocObject();
    v195 = v312;
    v313 = v194;
    *(v194 + 16) = v555;
    *(v194 + 24) = v195;
    v196 = swift_allocObject();
    v197 = v313;
    v341 = v196;
    *(v196 + 16) = v556;
    *(v196 + 24) = v197;
    v342 = swift_allocObject();
    *(v342 + 16) = v314;
    v343 = swift_allocObject();
    *(v343 + 16) = v331;
    v198 = swift_allocObject();
    v315 = v198;
    *(v198 + 16) = v500;
    *(v198 + 24) = 0;
    v199 = swift_allocObject();
    v200 = v315;
    v344 = v199;
    *(v199 + 16) = v557;
    *(v199 + 24) = v200;
    v345 = swift_allocObject();
    *(v345 + 16) = 0;
    v346 = swift_allocObject();
    *(v346 + 16) = v331;
    v201 = swift_allocObject();
    v202 = v316;
    v317 = v201;
    *(v201 + 16) = v558;
    *(v201 + 24) = v202;
    v203 = swift_allocObject();
    v204 = v317;
    v347 = v203;
    *(v203 + 16) = v559;
    *(v203 + 24) = v204;
    v348 = swift_allocObject();
    *(v348 + 16) = 112;
    v349 = swift_allocObject();
    v327 = 8;
    *(v349 + 16) = 8;
    v319 = swift_allocObject();
    *(v319 + 16) = v504;
    v205 = swift_allocObject();
    v206 = v319;
    v350 = v205;
    *(v205 + 16) = v560;
    *(v205 + 24) = v206;
    v351 = swift_allocObject();
    *(v351 + 16) = 37;
    v352 = swift_allocObject();
    *(v352 + 16) = v327;
    v207 = swift_allocObject();
    v208 = v320;
    v321 = v207;
    *(v207 + 16) = v561;
    *(v207 + 24) = v208;
    v209 = swift_allocObject();
    v210 = v321;
    v353 = v209;
    *(v209 + 16) = v562;
    *(v209 + 24) = v210;
    v354 = swift_allocObject();
    v326 = 34;
    *(v354 + 16) = 34;
    v355 = swift_allocObject();
    *(v355 + 16) = v327;
    v211 = swift_allocObject();
    v212 = v322;
    v323 = v211;
    *(v211 + 16) = v563;
    *(v211 + 24) = v212;
    v213 = swift_allocObject();
    v214 = v323;
    v356 = v213;
    *(v213 + 16) = v564;
    *(v213 + 24) = v214;
    v357 = swift_allocObject();
    *(v357 + 16) = v326;
    v358 = swift_allocObject();
    *(v358 + 16) = v327;
    v215 = swift_allocObject();
    v216 = v324;
    v325 = v215;
    *(v215 + 16) = v565;
    *(v215 + 24) = v216;
    v217 = swift_allocObject();
    v218 = v325;
    v359 = v217;
    *(v217 + 16) = v566;
    *(v217 + 24) = v218;
    v360 = swift_allocObject();
    *(v360 + 16) = v326;
    v361 = swift_allocObject();
    *(v361 + 16) = v327;
    v219 = swift_allocObject();
    v220 = v328;
    v329 = v219;
    *(v219 + 16) = v567;
    *(v219 + 24) = v220;
    v221 = swift_allocObject();
    v222 = v329;
    v362 = v221;
    *(v221 + 16) = v568;
    *(v221 + 24) = v222;
    v363 = swift_allocObject();
    *(v363 + 16) = 0;
    v364 = swift_allocObject();
    *(v364 + 16) = v331;
    v223 = swift_allocObject();
    v224 = v334;
    v335 = v223;
    *(v223 + 16) = v569;
    *(v223 + 24) = v224;
    v225 = swift_allocObject();
    v226 = v335;
    v366 = v225;
    *(v225 + 16) = v570;
    *(v225 + 24) = v226;
    v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v365 = sub_1B0E46A48();
    v367 = v227;

    v228 = v336;
    v229 = v367;
    *v367 = v571;
    v229[1] = v228;

    v230 = v337;
    v231 = v367;
    v367[2] = v572;
    v231[3] = v230;

    v232 = v338;
    v233 = v367;
    v367[4] = v573;
    v233[5] = v232;

    v234 = v339;
    v235 = v367;
    v367[6] = v574;
    v235[7] = v234;

    v236 = v340;
    v237 = v367;
    v367[8] = v575;
    v237[9] = v236;

    v238 = v341;
    v239 = v367;
    v367[10] = v576;
    v239[11] = v238;

    v240 = v342;
    v241 = v367;
    v367[12] = v577;
    v241[13] = v240;

    v242 = v343;
    v243 = v367;
    v367[14] = v578;
    v243[15] = v242;

    v244 = v344;
    v245 = v367;
    v367[16] = v579;
    v245[17] = v244;

    v246 = v345;
    v247 = v367;
    v367[18] = v580;
    v247[19] = v246;

    v248 = v346;
    v249 = v367;
    v367[20] = v581;
    v249[21] = v248;

    v250 = v347;
    v251 = v367;
    v367[22] = v582;
    v251[23] = v250;

    v252 = v348;
    v253 = v367;
    v367[24] = v583;
    v253[25] = v252;

    v254 = v349;
    v255 = v367;
    v367[26] = v584;
    v255[27] = v254;

    v256 = v350;
    v257 = v367;
    v367[28] = v585;
    v257[29] = v256;

    v258 = v351;
    v259 = v367;
    v367[30] = v586;
    v259[31] = v258;

    v260 = v352;
    v261 = v367;
    v367[32] = v587;
    v261[33] = v260;

    v262 = v353;
    v263 = v367;
    v367[34] = v588;
    v263[35] = v262;

    v264 = v354;
    v265 = v367;
    v367[36] = v589;
    v265[37] = v264;

    v266 = v355;
    v267 = v367;
    v367[38] = v590;
    v267[39] = v266;

    v268 = v356;
    v269 = v367;
    v367[40] = v591;
    v269[41] = v268;

    v270 = v357;
    v271 = v367;
    v367[42] = v592;
    v271[43] = v270;

    v272 = v358;
    v273 = v367;
    v367[44] = v593;
    v273[45] = v272;

    v274 = v359;
    v275 = v367;
    v367[46] = v594;
    v275[47] = v274;

    v276 = v360;
    v277 = v367;
    v367[48] = v595;
    v277[49] = v276;

    v278 = v361;
    v279 = v367;
    v367[50] = v596;
    v279[51] = v278;

    v280 = v362;
    v281 = v367;
    v367[52] = v597;
    v281[53] = v280;

    v282 = v363;
    v283 = v367;
    v367[54] = v598;
    v283[55] = v282;

    v284 = v364;
    v285 = v367;
    v367[56] = v599;
    v285[57] = v284;

    v286 = v366;
    v287 = v367;
    v367[58] = v600;
    v287[59] = v286;
    sub_1B0394964();

    if (os_log_type_enabled(v369, v370))
    {
      v288 = v601;
      v291 = sub_1B0E45D78();
      v290[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v292 = sub_1B03949A8(0);
      v293 = sub_1B03949A8(4);
      v294 = &v642;
      v642 = v291;
      v295 = &v641;
      v641 = v292;
      v296 = &v640;
      v640 = v293;
      sub_1B0394A48(3, &v642);
      sub_1B0394A48(10, v294);
      v638 = v571;
      v639 = v336;
      sub_1B03949FC(&v638, v294, v295, v296);
      v297 = v288;
      if (v288)
      {

        __break(1u);
      }

      else
      {
        v638 = v572;
        v639 = v337;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[27] = 0;
        v638 = v573;
        v639 = v338;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[26] = 0;
        v638 = v574;
        v639 = v339;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[25] = 0;
        v638 = v575;
        v639 = v340;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[24] = 0;
        v638 = v576;
        v639 = v341;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[23] = 0;
        v638 = v577;
        v639 = v342;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[22] = 0;
        v638 = v578;
        v639 = v343;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[21] = 0;
        v638 = v579;
        v639 = v344;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[20] = 0;
        v638 = v580;
        v639 = v345;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[19] = 0;
        v638 = v581;
        v639 = v346;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[18] = 0;
        v638 = v582;
        v639 = v347;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[17] = 0;
        v638 = v583;
        v639 = v348;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[16] = 0;
        v638 = v584;
        v639 = v349;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[15] = 0;
        v638 = v585;
        v639 = v350;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[14] = 0;
        v638 = v586;
        v639 = v351;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[13] = 0;
        v638 = v587;
        v639 = v352;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[12] = 0;
        v638 = v588;
        v639 = v353;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[11] = 0;
        v638 = v589;
        v639 = v354;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[10] = 0;
        v638 = v590;
        v639 = v355;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[9] = 0;
        v638 = v591;
        v639 = v356;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[8] = 0;
        v638 = v592;
        v639 = v357;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[7] = 0;
        v638 = v593;
        v639 = v358;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[6] = 0;
        v638 = v594;
        v639 = v359;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[5] = 0;
        v638 = v595;
        v639 = v360;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[4] = 0;
        v638 = v596;
        v639 = v361;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[3] = 0;
        v638 = v597;
        v639 = v362;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[2] = 0;
        v638 = v598;
        v639 = v363;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[1] = 0;
        v638 = v599;
        v639 = v364;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        v290[0] = 0;
        v638 = v600;
        v639 = v366;
        sub_1B03949FC(&v638, &v642, &v641, &v640);
        _os_log_impl(&dword_1B0389000, v369, v370, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to create file writer for attachment '[%{public}s]' %{public}s/%{public}s, UID %u.", v291, 0x4Fu);
        sub_1B03998A8(v292);
        sub_1B03998A8(v293);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v369);
    (*(v614 + 8))(v618, v613);
    return 0;
  }
}

uint64_t sub_1B077E63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = sub_1B0E44838();
  sub_1B0A6014C(a1, 0x20000, v4, v5, a2, a3, a4);
}

uint64_t sub_1B077E718@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x21uLL);
  sub_1B07B4718(__dst, v7);
  result = sub_1B077E780(__dst);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_1B077E780(void *__src)
{
  v134 = 0u;
  v135 = 0u;
  memcpy(__dst, __src, 0x21uLL);
  if (LOBYTE(__dst[4]))
  {
    switch(LOBYTE(__dst[4]))
    {
      case 1u:
        v21 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22._countAndFlagsBits = sub_1B0E44838();
        v90 = Media.TopLevelType.init(stringLiteral:)(v22);
        v23.stringValue._countAndFlagsBits = sub_1B07AAE14(v21, *(&v21 + 1));
        v23.stringValue._object = v24;
        v150 = Media.MediaType.init(topLevel:sub:)(v90, v23);
        *&v91 = v150.topLevel.stringValue._countAndFlagsBits;
        *(&v91 + 1) = v150.topLevel.stringValue._object;
        *&v92 = v150.sub.stringValue._countAndFlagsBits;
        *(&v92 + 1) = v150.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v91;
        v135 = v92;

        v132 = v91;
        break;
      case 2u:
        v25 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v26._countAndFlagsBits = sub_1B0E44838();
        v87 = Media.TopLevelType.init(stringLiteral:)(v26);
        v27.stringValue._countAndFlagsBits = sub_1B07AAE14(v25, *(&v25 + 1));
        v27.stringValue._object = v28;
        v151 = Media.MediaType.init(topLevel:sub:)(v87, v27);
        *&v88 = v151.topLevel.stringValue._countAndFlagsBits;
        *(&v88 + 1) = v151.topLevel.stringValue._object;
        *&v89 = v151.sub.stringValue._countAndFlagsBits;
        *(&v89 + 1) = v151.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v88;
        v135 = v89;

        v132 = v88;
        break;
      case 3u:
        v29 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v30._countAndFlagsBits = sub_1B0E44838();
        v84 = Media.TopLevelType.init(stringLiteral:)(v30);
        v31.stringValue._countAndFlagsBits = sub_1B07AAE14(v29, *(&v29 + 1));
        v31.stringValue._object = v32;
        v152 = Media.MediaType.init(topLevel:sub:)(v84, v31);
        *&v85 = v152.topLevel.stringValue._countAndFlagsBits;
        *(&v85 + 1) = v152.topLevel.stringValue._object;
        *&v86 = v152.sub.stringValue._countAndFlagsBits;
        *(&v86 + 1) = v152.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v85;
        v135 = v86;

        v132 = v85;
        break;
      case 4u:
        v33 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34._countAndFlagsBits = sub_1B0E44838();
        v81 = Media.TopLevelType.init(stringLiteral:)(v34);
        v35.stringValue._countAndFlagsBits = sub_1B07AAE14(v33, *(&v33 + 1));
        v35.stringValue._object = v36;
        v153 = Media.MediaType.init(topLevel:sub:)(v81, v35);
        *&v82 = v153.topLevel.stringValue._countAndFlagsBits;
        *(&v82 + 1) = v153.topLevel.stringValue._object;
        *&v83 = v153.sub.stringValue._countAndFlagsBits;
        *(&v83 + 1) = v153.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v82;
        v135 = v83;

        v132 = v82;
        break;
      case 5u:
        v37 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38._countAndFlagsBits = sub_1B0E44838();
        v78 = Media.TopLevelType.init(stringLiteral:)(v38);
        v39.stringValue._countAndFlagsBits = sub_1B07AAE14(v37, *(&v37 + 1));
        v39.stringValue._object = v40;
        v154 = Media.MediaType.init(topLevel:sub:)(v78, v39);
        *&v79 = v154.topLevel.stringValue._countAndFlagsBits;
        *(&v79 + 1) = v154.topLevel.stringValue._object;
        *&v80 = v154.sub.stringValue._countAndFlagsBits;
        *(&v80 + 1) = v154.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v79;
        v135 = v80;

        v132 = v79;
        break;
      case 6u:
        v41 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v42._countAndFlagsBits = sub_1B0E44838();
        v75 = Media.TopLevelType.init(stringLiteral:)(v42);
        v43.stringValue._countAndFlagsBits = sub_1B07AAE14(v41, *(&v41 + 1));
        v43.stringValue._object = v44;
        v155 = Media.MediaType.init(topLevel:sub:)(v75, v43);
        *&v76 = v155.topLevel.stringValue._countAndFlagsBits;
        *(&v76 + 1) = v155.topLevel.stringValue._object;
        *&v77 = v155.sub.stringValue._countAndFlagsBits;
        *(&v77 + 1) = v155.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v76;
        v135 = v77;

        v132 = v76;
        break;
      case 7u:
        v45 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v46._countAndFlagsBits = sub_1B0E44838();
        v72 = Media.TopLevelType.init(stringLiteral:)(v46);
        v47.stringValue._countAndFlagsBits = sub_1B07AAE14(v45, *(&v45 + 1));
        v47.stringValue._object = v48;
        v156 = Media.MediaType.init(topLevel:sub:)(v72, v47);
        *&v73 = v156.topLevel.stringValue._countAndFlagsBits;
        *(&v73 + 1) = v156.topLevel.stringValue._object;
        *&v74 = v156.sub.stringValue._countAndFlagsBits;
        *(&v74 + 1) = v156.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v73;
        v135 = v74;

        v132 = v73;
        break;
      case 8u:
        v49 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v50._countAndFlagsBits = sub_1B0E44838();
        v69 = Media.TopLevelType.init(stringLiteral:)(v50);
        v51.stringValue._countAndFlagsBits = sub_1B07AAE14(v49, *(&v49 + 1));
        v51.stringValue._object = v52;
        v157 = Media.MediaType.init(topLevel:sub:)(v69, v51);
        *&v70 = v157.topLevel.stringValue._countAndFlagsBits;
        *(&v70 + 1) = v157.topLevel.stringValue._object;
        *&v71 = v157.sub.stringValue._countAndFlagsBits;
        *(&v71 + 1) = v157.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v70;
        v135 = v71;

        v132 = v70;
        break;
      case 9u:
        v53 = *__dst;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v54._countAndFlagsBits = sub_1B0E44838();
        v66 = Media.TopLevelType.init(stringLiteral:)(v54);
        v55.stringValue._countAndFlagsBits = sub_1B07AAE14(v53, *(&v53 + 1));
        v55.stringValue._object = v56;
        v158 = Media.MediaType.init(topLevel:sub:)(v66, v55);
        *&v67 = v158.topLevel.stringValue._countAndFlagsBits;
        *(&v67 + 1) = v158.topLevel.stringValue._object;
        *&v68 = v158.sub.stringValue._countAndFlagsBits;
        *(&v68 + 1) = v158.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v67;
        v135 = v68;

        v132 = v67;
        break;
      default:
        v57 = *__dst;
        v61 = __dst[2];
        v63 = __dst[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v62 = Media.TopLevelType.init(_:)(v57);
        v58.stringValue._countAndFlagsBits = sub_1B07AAE14(v61, v63);
        v58.stringValue._object = v59;
        v159 = Media.MediaType.init(topLevel:sub:)(v62, v58);
        *&v64 = v159.topLevel.stringValue._countAndFlagsBits;
        *(&v64 + 1) = v159.topLevel.stringValue._object;
        *&v65 = v159.sub.stringValue._countAndFlagsBits;
        *(&v65 + 1) = v159.sub.stringValue._object;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v134 = v64;
        v135 = v65;

        v132 = v64;
        break;
    }
  }

  else
  {
    *&__dst[5] = *__dst;
    v137 = *__dst;
    if (__dst[1] == 1)
    {
      topLevel = *Media.TopLevelType.multipart.unsafeMutableAddressor();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub = *Media.Subtype.mixed.unsafeMutableAddressor();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v138 = Media.MediaType.init(topLevel:sub:)(topLevel, sub);
      *&v130 = v138.topLevel.stringValue._countAndFlagsBits;
      *(&v130 + 1) = v138.topLevel.stringValue._object;
      *&v131 = v138.sub.stringValue._countAndFlagsBits;
      *(&v131 + 1) = v138.sub.stringValue._object;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v134 = v130;
      v135 = v131;
      v132 = v130;
    }

    else
    {
      switch(*(&v137 + 1))
      {
        case 2:
          v125 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v1._countAndFlagsBits = sub_1B0E44838();
          v2 = Media.Subtype.init(stringLiteral:)(v1);
          v139 = Media.MediaType.init(topLevel:sub:)(v125, v2);
          *&v126 = v139.topLevel.stringValue._countAndFlagsBits;
          *(&v126 + 1) = v139.topLevel.stringValue._object;
          *&v127 = v139.sub.stringValue._countAndFlagsBits;
          *(&v127 + 1) = v139.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v126;
          v135 = v127;
          v132 = v126;
          break;
        case 3:
          v121 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v122 = *Media.Subtype.alternative.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v140 = Media.MediaType.init(topLevel:sub:)(v121, v122);
          *&v123 = v140.topLevel.stringValue._countAndFlagsBits;
          *(&v123 + 1) = v140.topLevel.stringValue._object;
          *&v124 = v140.sub.stringValue._countAndFlagsBits;
          *(&v124 + 1) = v140.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v123;
          v135 = v124;
          v132 = v123;
          break;
        case 4:
          v117 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v118 = *Media.Subtype.related.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v141 = Media.MediaType.init(topLevel:sub:)(v117, v118);
          *&v119 = v141.topLevel.stringValue._countAndFlagsBits;
          *(&v119 + 1) = v141.topLevel.stringValue._object;
          *&v120 = v141.sub.stringValue._countAndFlagsBits;
          *(&v120 + 1) = v141.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v119;
          v135 = v120;
          v132 = v119;
          break;
        case 5:
          v114 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v3._countAndFlagsBits = sub_1B0E44838();
          v4 = Media.Subtype.init(stringLiteral:)(v3);
          v142 = Media.MediaType.init(topLevel:sub:)(v114, v4);
          *&v115 = v142.topLevel.stringValue._countAndFlagsBits;
          *(&v115 + 1) = v142.topLevel.stringValue._object;
          *&v116 = v142.sub.stringValue._countAndFlagsBits;
          *(&v116 + 1) = v142.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v115;
          v135 = v116;
          v132 = v115;
          break;
        case 6:
          v111 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v5._countAndFlagsBits = sub_1B0E44838();
          v6 = Media.Subtype.init(stringLiteral:)(v5);
          v143 = Media.MediaType.init(topLevel:sub:)(v111, v6);
          *&v112 = v143.topLevel.stringValue._countAndFlagsBits;
          *(&v112 + 1) = v143.topLevel.stringValue._object;
          *&v113 = v143.sub.stringValue._countAndFlagsBits;
          *(&v113 + 1) = v143.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v112;
          v135 = v113;
          v132 = v112;
          break;
        case 7:
          v108 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v7._countAndFlagsBits = sub_1B0E44838();
          v8 = Media.Subtype.init(stringLiteral:)(v7);
          v144 = Media.MediaType.init(topLevel:sub:)(v108, v8);
          *&v109 = v144.topLevel.stringValue._countAndFlagsBits;
          *(&v109 + 1) = v144.topLevel.stringValue._object;
          *&v110 = v144.sub.stringValue._countAndFlagsBits;
          *(&v110 + 1) = v144.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v109;
          v135 = v110;
          v132 = v109;
          break;
        case 8:
          v105 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v9._countAndFlagsBits = sub_1B0E44838();
          v10 = Media.Subtype.init(stringLiteral:)(v9);
          v145 = Media.MediaType.init(topLevel:sub:)(v105, v10);
          *&v106 = v145.topLevel.stringValue._countAndFlagsBits;
          *(&v106 + 1) = v145.topLevel.stringValue._object;
          *&v107 = v145.sub.stringValue._countAndFlagsBits;
          *(&v107 + 1) = v145.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v106;
          v135 = v107;
          v132 = v106;
          break;
        case 9:
          v102 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v11._countAndFlagsBits = sub_1B0E44838();
          v12 = Media.Subtype.init(stringLiteral:)(v11);
          v146 = Media.MediaType.init(topLevel:sub:)(v102, v12);
          *&v103 = v146.topLevel.stringValue._countAndFlagsBits;
          *(&v103 + 1) = v146.topLevel.stringValue._object;
          *&v104 = v146.sub.stringValue._countAndFlagsBits;
          *(&v104 + 1) = v146.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v103;
          v135 = v104;
          v132 = v103;
          break;
        case 0xALL:
          v99 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v13._countAndFlagsBits = sub_1B0E44838();
          v14 = Media.Subtype.init(stringLiteral:)(v13);
          v147 = Media.MediaType.init(topLevel:sub:)(v99, v14);
          *&v100 = v147.topLevel.stringValue._countAndFlagsBits;
          *(&v100 + 1) = v147.topLevel.stringValue._object;
          *&v101 = v147.sub.stringValue._countAndFlagsBits;
          *(&v101 + 1) = v147.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v100;
          v135 = v101;
          v132 = v100;
          break;
        case 0xBLL:
          v96 = *Media.TopLevelType.multipart.unsafeMutableAddressor();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v15._countAndFlagsBits = sub_1B0E44838();
          v16 = Media.Subtype.init(stringLiteral:)(v15);
          v148 = Media.MediaType.init(topLevel:sub:)(v96, v16);
          *&v97 = v148.topLevel.stringValue._countAndFlagsBits;
          *(&v97 + 1) = v148.topLevel.stringValue._object;
          *&v98 = v148.sub.stringValue._countAndFlagsBits;
          *(&v98 + 1) = v148.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v97;
          v135 = v98;
          v132 = v97;
          break;
        default:
          v17 = v137;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v18._countAndFlagsBits = sub_1B0E44838();
          v93 = Media.TopLevelType.init(stringLiteral:)(v18);
          v19.stringValue._countAndFlagsBits = sub_1B07AAE14(v17, *(&v17 + 1));
          v19.stringValue._object = v20;
          v149 = Media.MediaType.init(topLevel:sub:)(v93, v19);
          *&v94 = v149.topLevel.stringValue._countAndFlagsBits;
          *(&v94 + 1) = v149.topLevel.stringValue._object;
          *&v95 = v149.sub.stringValue._countAndFlagsBits;
          *(&v95 + 1) = v149.sub.stringValue._object;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v134 = v94;
          v135 = v95;

          v132 = v94;
          break;
      }
    }
  }

  sub_1B07AD0E0(__src);
  sub_1B06FF6F0(&v134);
  return v132;
}

uint64_t sub_1B077FAC8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  result = BodyStructure.Encoding.init(_:)();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B077FB0C()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B077FB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4[2];
  v9 = v4[4];
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t sub_1B077FBE8()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B077FC20(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_1B077FC6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1B077FC8C(const void *a1, char *a2)
{
  v24 = a1;
  v21 = a2;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v33 = 0;
  v22 = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v5 - v22;
  v40 = MEMORY[0x1EEE9AC00](v24);
  v39 = v3;
  v38 = v2;
  sub_1B075DC38(v40, v37);
  v25 = __dst;
  memcpy(__dst, v24, 0xB1uLL);
  if (sub_1B075FACC(__dst) != 1)
  {
    v14 = __dst;
    v18 = 177;
    memcpy(v34, __dst, 0xB1uLL);
    v33 = __dst;
    v15 = (v20 + 24);
    v16 = &v32;
    swift_beginAccess();
    v17 = v35;
    memcpy(v35, v15, v18);
    sub_1B075DC38(v17, v31);
    swift_endAccess();
    v19 = v30;
    memcpy(v30, v17, v18);
    v13 = sub_1B075FACC(v19) == 1;
    v12 = v13;
    sub_1B075E728(v30);
    if (v12)
    {
      v11 = v34;
      sub_1B07169CC(v34, &v27);
      v7 = v28;
      v8 = 177;
      memcpy(v28, v11, 0xB1uLL);
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v28);
      v6 = (v20 + 24);
      v10 = &v26;
      swift_beginAccess();
      v9 = v29;
      memcpy(v29, v6, v8);
      memcpy(v6, v7, v8);
      sub_1B075E728(v9);
      swift_endAccess();
      sub_1B075E648(v11);
    }

    else
    {
      sub_1B075E648(v34);
    }
  }

  sub_1B075E87C(v21, v23);
  v5[0] = (v20 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v5[1] = &v36;
  swift_beginAccess();
  sub_1B075EA98(v23, v5[0]);
  return swift_endAccess();
}

uint64_t sub_1B077FF34(uint64_t a1, uint64_t a2)
{
  v413 = a1;
  v411 = a2;
  v412 = 0;
  v325 = sub_1B074E050;
  v326 = sub_1B07AAFA4;
  v327 = sub_1B0394C30;
  v328 = sub_1B0394C24;
  v329 = sub_1B074DFFC;
  v330 = sub_1B039BA88;
  v331 = sub_1B039BB94;
  v332 = sub_1B0394C24;
  v333 = sub_1B039BBA0;
  v334 = sub_1B039BC08;
  v335 = 0x786F626C69616DLL;
  v336 = sub_1B06BA324;
  v337 = sub_1B074E0E4;
  v338 = sub_1B039BCF8;
  v339 = sub_1B07AB020;
  v340 = sub_1B039BC08;
  v341 = sub_1B0398F5C;
  v342 = sub_1B0398F5C;
  v343 = sub_1B0399178;
  v344 = sub_1B0398F5C;
  v345 = sub_1B0398F5C;
  v346 = sub_1B039BA94;
  v347 = sub_1B0398F5C;
  v348 = sub_1B0398F5C;
  v349 = sub_1B0399178;
  v350 = sub_1B0398F5C;
  v351 = sub_1B0398F5C;
  v352 = sub_1B03991EC;
  v353 = sub_1B0398F5C;
  v354 = sub_1B0398F5C;
  v355 = sub_1B03993BC;
  v356 = sub_1B0398F5C;
  v357 = sub_1B0398F5C;
  v358 = sub_1B039BCEC;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0398F5C;
  v361 = sub_1B03991EC;
  v362 = sub_1B074E050;
  v363 = sub_1B07AAFA4;
  v364 = sub_1B0394C24;
  v365 = sub_1B074DFFC;
  v366 = sub_1B039BA88;
  v367 = sub_1B0394C24;
  v368 = sub_1B039BBA0;
  v369 = sub_1B039BC08;
  v370 = sub_1B06BA324;
  v371 = sub_1B074E0E4;
  v372 = sub_1B039BCF8;
  v373 = sub_1B07AB020;
  v374 = sub_1B039BC08;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B0399178;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B039BA94;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0399178;
  v384 = sub_1B0398F5C;
  v385 = sub_1B0398F5C;
  v386 = sub_1B03991EC;
  v387 = sub_1B0398F5C;
  v388 = sub_1B0398F5C;
  v389 = sub_1B03993BC;
  v390 = sub_1B0398F5C;
  v391 = sub_1B0398F5C;
  v392 = sub_1B039BCEC;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0398F5C;
  v395 = sub_1B03991EC;
  v438 = 0;
  v437 = 0;
  v436 = 0;
  v396 = 0;
  v419 = 0;
  v397 = _s6LoggerVMa_1();
  v398 = (*(*(v397 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v399 = v187 - v398;
  v400 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v401 = v187 - v400;
  v402 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v403 = v187 - v402;
  v404 = sub_1B0E439A8();
  v405 = *(v404 - 8);
  v406 = v404 - 8;
  v407 = (*(v405 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v404);
  v408 = v187 - v407;
  v409 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v187 - v407);
  v410 = v187 - v409;
  v414 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v413);
  v415 = v187 - v414;
  v416 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v420 = v187 - v416;
  v438 = v10;
  v437 = v11;
  v436 = v2;
  v417 = (v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v418 = &v435;
  swift_beginAccess();
  sub_1B075EE10(v417, v420);
  swift_endAccess();
  v421 = type metadata accessor for MessageHeader();
  v422 = *(v421 - 8);
  v423 = v421 - 8;
  v323 = (*(v422 + 48))(v420, 1) == 1;
  v322 = v323;
  sub_1B075F220(v420);
  if (v322)
  {
    (*(v405 + 16))(v410, v411, v404);
    sub_1B074B69C(v411, v403);
    sub_1B074B69C(v403, v401);
    sub_1B074E41C(v403, v399);
    v12 = (v401 + *(v397 + 20));
    v275 = *v12;
    v276 = *(v12 + 1);
    v277 = *(v12 + 1);
    v278 = *(v12 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v401);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v274 = 36;
    v293 = 7;
    v13 = swift_allocObject();
    v14 = v276;
    v15 = v277;
    v16 = v278;
    v280 = v13;
    *(v13 + 16) = v275;
    *(v13 + 20) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = v16;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_allocObject();
    v18 = v276;
    v19 = v277;
    v20 = v278;
    v273 = v17;
    *(v17 + 16) = v275;
    *(v17 + 20) = v18;
    *(v17 + 24) = v19;
    *(v17 + 32) = v20;

    v292 = 32;
    v21 = swift_allocObject();
    v22 = v273;
    v284 = v21;
    *(v21 + 16) = v362;
    *(v21 + 24) = v22;
    sub_1B0394868();
    sub_1B0394868();

    v23 = swift_allocObject();
    v24 = v276;
    v25 = v277;
    v26 = v278;
    v27 = v23;
    v28 = v399;
    v288 = v27;
    *(v27 + 16) = v275;
    *(v27 + 20) = v24;
    *(v27 + 24) = v25;
    *(v27 + 32) = v26;
    sub_1B074B764(v28);

    v29 = swift_allocObject();
    v30 = v324;
    v294 = v29;
    *(v29 + 16) = v363;
    *(v29 + 24) = v30;

    v320 = sub_1B0E43988();
    v321 = sub_1B0E458D8();
    v290 = 17;
    v296 = swift_allocObject();
    v282 = 16;
    *(v296 + 16) = 16;
    v297 = swift_allocObject();
    v291 = 4;
    *(v297 + 16) = 4;
    v31 = swift_allocObject();
    v279 = v31;
    *(v31 + 16) = v327;
    *(v31 + 24) = 0;
    v32 = swift_allocObject();
    v33 = v279;
    v298 = v32;
    *(v32 + 16) = v364;
    *(v32 + 24) = v33;
    v299 = swift_allocObject();
    *(v299 + 16) = 0;
    v300 = swift_allocObject();
    *(v300 + 16) = 1;
    v34 = swift_allocObject();
    v35 = v280;
    v281 = v34;
    *(v34 + 16) = v365;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v281;
    v301 = v36;
    *(v36 + 16) = v366;
    *(v36 + 24) = v37;
    v302 = swift_allocObject();
    *(v302 + 16) = v282;
    v303 = swift_allocObject();
    *(v303 + 16) = v291;
    v38 = swift_allocObject();
    v283 = v38;
    *(v38 + 16) = v331;
    *(v38 + 24) = 0;
    v39 = swift_allocObject();
    v40 = v283;
    v304 = v39;
    *(v39 + 16) = v367;
    *(v39 + 24) = v40;
    v305 = swift_allocObject();
    *(v305 + 16) = 0;
    v306 = swift_allocObject();
    *(v306 + 16) = v291;
    v41 = swift_allocObject();
    v42 = v284;
    v285 = v41;
    *(v41 + 16) = v368;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v285;
    v307 = v43;
    *(v43 + 16) = v369;
    *(v43 + 24) = v44;
    v308 = swift_allocObject();
    *(v308 + 16) = 112;
    v309 = swift_allocObject();
    v287 = 8;
    *(v309 + 16) = 8;
    v286 = swift_allocObject();
    *(v286 + 16) = v335;
    v45 = swift_allocObject();
    v46 = v286;
    v310 = v45;
    *(v45 + 16) = v370;
    *(v45 + 24) = v46;
    v311 = swift_allocObject();
    *(v311 + 16) = 37;
    v312 = swift_allocObject();
    *(v312 + 16) = v287;
    v47 = swift_allocObject();
    v48 = v288;
    v289 = v47;
    *(v47 + 16) = v371;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    v50 = v289;
    v313 = v49;
    *(v49 + 16) = v372;
    *(v49 + 24) = v50;
    v314 = swift_allocObject();
    *(v314 + 16) = 0;
    v315 = swift_allocObject();
    *(v315 + 16) = v291;
    v51 = swift_allocObject();
    v52 = v294;
    v295 = v51;
    *(v51 + 16) = v373;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v295;
    v317 = v53;
    *(v53 + 16) = v374;
    *(v53 + 24) = v54;
    v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v316 = sub_1B0E46A48();
    v318 = v55;

    v56 = v296;
    v57 = v318;
    *v318 = v375;
    v57[1] = v56;

    v58 = v297;
    v59 = v318;
    v318[2] = v376;
    v59[3] = v58;

    v60 = v298;
    v61 = v318;
    v318[4] = v377;
    v61[5] = v60;

    v62 = v299;
    v63 = v318;
    v318[6] = v378;
    v63[7] = v62;

    v64 = v300;
    v65 = v318;
    v318[8] = v379;
    v65[9] = v64;

    v66 = v301;
    v67 = v318;
    v318[10] = v380;
    v67[11] = v66;

    v68 = v302;
    v69 = v318;
    v318[12] = v381;
    v69[13] = v68;

    v70 = v303;
    v71 = v318;
    v318[14] = v382;
    v71[15] = v70;

    v72 = v304;
    v73 = v318;
    v318[16] = v383;
    v73[17] = v72;

    v74 = v305;
    v75 = v318;
    v318[18] = v384;
    v75[19] = v74;

    v76 = v306;
    v77 = v318;
    v318[20] = v385;
    v77[21] = v76;

    v78 = v307;
    v79 = v318;
    v318[22] = v386;
    v79[23] = v78;

    v80 = v308;
    v81 = v318;
    v318[24] = v387;
    v81[25] = v80;

    v82 = v309;
    v83 = v318;
    v318[26] = v388;
    v83[27] = v82;

    v84 = v310;
    v85 = v318;
    v318[28] = v389;
    v85[29] = v84;

    v86 = v311;
    v87 = v318;
    v318[30] = v390;
    v87[31] = v86;

    v88 = v312;
    v89 = v318;
    v318[32] = v391;
    v89[33] = v88;

    v90 = v313;
    v91 = v318;
    v318[34] = v392;
    v91[35] = v90;

    v92 = v314;
    v93 = v318;
    v318[36] = v393;
    v93[37] = v92;

    v94 = v315;
    v95 = v318;
    v318[38] = v394;
    v95[39] = v94;

    v96 = v317;
    v97 = v318;
    v318[40] = v395;
    v97[41] = v96;
    sub_1B0394964();

    if (os_log_type_enabled(v320, v321))
    {
      v98 = v396;
      v266 = sub_1B0E45D78();
      v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v267 = sub_1B03949A8(0);
      v268 = sub_1B03949A8(1);
      v269 = &v428;
      v428 = v266;
      v270 = &v427;
      v427 = v267;
      v271 = &v426;
      v426 = v268;
      sub_1B0394A48(3, &v428);
      sub_1B0394A48(7, v269);
      v424 = v375;
      v425 = v296;
      sub_1B03949FC(&v424, v269, v270, v271);
      v272 = v98;
      if (v98)
      {

        __break(1u);
      }

      else
      {
        v424 = v376;
        v425 = v297;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v264 = 0;
        v424 = v377;
        v425 = v298;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v263 = 0;
        v424 = v378;
        v425 = v299;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v262 = 0;
        v424 = v379;
        v425 = v300;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v261 = 0;
        v424 = v380;
        v425 = v301;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v260 = 0;
        v424 = v381;
        v425 = v302;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v259 = 0;
        v424 = v382;
        v425 = v303;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v258 = 0;
        v424 = v383;
        v425 = v304;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v257 = 0;
        v424 = v384;
        v425 = v305;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v256 = 0;
        v424 = v385;
        v425 = v306;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v255 = 0;
        v424 = v386;
        v425 = v307;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v254 = 0;
        v424 = v387;
        v425 = v308;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v253 = 0;
        v424 = v388;
        v425 = v309;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v252 = 0;
        v424 = v389;
        v425 = v310;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v251 = 0;
        v424 = v390;
        v425 = v311;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v250 = 0;
        v424 = v391;
        v425 = v312;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v249 = 0;
        v424 = v392;
        v425 = v313;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v248 = 0;
        v424 = v393;
        v425 = v314;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v247 = 0;
        v424 = v394;
        v425 = v315;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        v246 = 0;
        v424 = v395;
        v425 = v317;
        sub_1B03949FC(&v424, &v428, &v427, &v426);
        _os_log_impl(&dword_1B0389000, v320, v321, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Added message header for %u.", v266, 0x31u);
        sub_1B03998A8(v267);
        sub_1B03998A8(v268);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v320);
    (*(v405 + 8))(v410, v404);
    sub_1B075CC34(v413, v415);
    (*(v422 + 56))(v415, 0, 1, v421);
    v244 = (v324 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
    v245 = &v429;
    swift_beginAccess();
    sub_1B075F010(v415, v244);
    return swift_endAccess();
  }

  else
  {
    (*(v405 + 16))(v408, v411, v404);
    sub_1B074B69C(v411, v403);
    sub_1B074B69C(v403, v401);
    sub_1B074E41C(v403, v399);
    v100 = (v401 + *(v397 + 20));
    v197 = *v100;
    v198 = *(v100 + 1);
    v199 = *(v100 + 1);
    v200 = *(v100 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v401);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v196 = 36;
    v215 = 7;
    v101 = swift_allocObject();
    v102 = v198;
    v103 = v199;
    v104 = v200;
    v202 = v101;
    *(v101 + 16) = v197;
    *(v101 + 20) = v102;
    *(v101 + 24) = v103;
    *(v101 + 32) = v104;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v105 = swift_allocObject();
    v106 = v198;
    v107 = v199;
    v108 = v200;
    v195 = v105;
    *(v105 + 16) = v197;
    *(v105 + 20) = v106;
    *(v105 + 24) = v107;
    *(v105 + 32) = v108;

    v214 = 32;
    v109 = swift_allocObject();
    v110 = v195;
    v206 = v109;
    *(v109 + 16) = v325;
    *(v109 + 24) = v110;
    sub_1B0394868();
    sub_1B0394868();

    v111 = swift_allocObject();
    v112 = v198;
    v113 = v199;
    v114 = v200;
    v115 = v111;
    v116 = v399;
    v210 = v115;
    *(v115 + 16) = v197;
    *(v115 + 20) = v112;
    *(v115 + 24) = v113;
    *(v115 + 32) = v114;
    sub_1B074B764(v116);

    v117 = swift_allocObject();
    v118 = v324;
    v216 = v117;
    *(v117 + 16) = v326;
    *(v117 + 24) = v118;

    v242 = sub_1B0E43988();
    v243 = sub_1B0E458E8();
    v212 = 17;
    v218 = swift_allocObject();
    v204 = 16;
    *(v218 + 16) = 16;
    v219 = swift_allocObject();
    v213 = 4;
    *(v219 + 16) = 4;
    v119 = swift_allocObject();
    v201 = v119;
    *(v119 + 16) = v327;
    *(v119 + 24) = 0;
    v120 = swift_allocObject();
    v121 = v201;
    v220 = v120;
    *(v120 + 16) = v328;
    *(v120 + 24) = v121;
    v221 = swift_allocObject();
    *(v221 + 16) = 0;
    v222 = swift_allocObject();
    *(v222 + 16) = 1;
    v122 = swift_allocObject();
    v123 = v202;
    v203 = v122;
    *(v122 + 16) = v329;
    *(v122 + 24) = v123;
    v124 = swift_allocObject();
    v125 = v203;
    v223 = v124;
    *(v124 + 16) = v330;
    *(v124 + 24) = v125;
    v224 = swift_allocObject();
    *(v224 + 16) = v204;
    v225 = swift_allocObject();
    *(v225 + 16) = v213;
    v126 = swift_allocObject();
    v205 = v126;
    *(v126 + 16) = v331;
    *(v126 + 24) = 0;
    v127 = swift_allocObject();
    v128 = v205;
    v226 = v127;
    *(v127 + 16) = v332;
    *(v127 + 24) = v128;
    v227 = swift_allocObject();
    *(v227 + 16) = 0;
    v228 = swift_allocObject();
    *(v228 + 16) = v213;
    v129 = swift_allocObject();
    v130 = v206;
    v207 = v129;
    *(v129 + 16) = v333;
    *(v129 + 24) = v130;
    v131 = swift_allocObject();
    v132 = v207;
    v229 = v131;
    *(v131 + 16) = v334;
    *(v131 + 24) = v132;
    v230 = swift_allocObject();
    *(v230 + 16) = 112;
    v231 = swift_allocObject();
    v209 = 8;
    *(v231 + 16) = 8;
    v208 = swift_allocObject();
    *(v208 + 16) = v335;
    v133 = swift_allocObject();
    v134 = v208;
    v232 = v133;
    *(v133 + 16) = v336;
    *(v133 + 24) = v134;
    v233 = swift_allocObject();
    *(v233 + 16) = 37;
    v234 = swift_allocObject();
    *(v234 + 16) = v209;
    v135 = swift_allocObject();
    v136 = v210;
    v211 = v135;
    *(v135 + 16) = v337;
    *(v135 + 24) = v136;
    v137 = swift_allocObject();
    v138 = v211;
    v235 = v137;
    *(v137 + 16) = v338;
    *(v137 + 24) = v138;
    v236 = swift_allocObject();
    *(v236 + 16) = 0;
    v237 = swift_allocObject();
    *(v237 + 16) = v213;
    v139 = swift_allocObject();
    v140 = v216;
    v217 = v139;
    *(v139 + 16) = v339;
    *(v139 + 24) = v140;
    v141 = swift_allocObject();
    v142 = v217;
    v239 = v141;
    *(v141 + 16) = v340;
    *(v141 + 24) = v142;
    v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v238 = sub_1B0E46A48();
    v240 = v143;

    v144 = v218;
    v145 = v240;
    *v240 = v341;
    v145[1] = v144;

    v146 = v219;
    v147 = v240;
    v240[2] = v342;
    v147[3] = v146;

    v148 = v220;
    v149 = v240;
    v240[4] = v343;
    v149[5] = v148;

    v150 = v221;
    v151 = v240;
    v240[6] = v344;
    v151[7] = v150;

    v152 = v222;
    v153 = v240;
    v240[8] = v345;
    v153[9] = v152;

    v154 = v223;
    v155 = v240;
    v240[10] = v346;
    v155[11] = v154;

    v156 = v224;
    v157 = v240;
    v240[12] = v347;
    v157[13] = v156;

    v158 = v225;
    v159 = v240;
    v240[14] = v348;
    v159[15] = v158;

    v160 = v226;
    v161 = v240;
    v240[16] = v349;
    v161[17] = v160;

    v162 = v227;
    v163 = v240;
    v240[18] = v350;
    v163[19] = v162;

    v164 = v228;
    v165 = v240;
    v240[20] = v351;
    v165[21] = v164;

    v166 = v229;
    v167 = v240;
    v240[22] = v352;
    v167[23] = v166;

    v168 = v230;
    v169 = v240;
    v240[24] = v353;
    v169[25] = v168;

    v170 = v231;
    v171 = v240;
    v240[26] = v354;
    v171[27] = v170;

    v172 = v232;
    v173 = v240;
    v240[28] = v355;
    v173[29] = v172;

    v174 = v233;
    v175 = v240;
    v240[30] = v356;
    v175[31] = v174;

    v176 = v234;
    v177 = v240;
    v240[32] = v357;
    v177[33] = v176;

    v178 = v235;
    v179 = v240;
    v240[34] = v358;
    v179[35] = v178;

    v180 = v236;
    v181 = v240;
    v240[36] = v359;
    v181[37] = v180;

    v182 = v237;
    v183 = v240;
    v240[38] = v360;
    v183[39] = v182;

    v184 = v239;
    v185 = v240;
    v240[40] = v361;
    v185[41] = v184;
    sub_1B0394964();

    if (os_log_type_enabled(v242, v243))
    {
      v186 = v396;
      v188 = sub_1B0E45D78();
      v187[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v189 = sub_1B03949A8(0);
      v190 = sub_1B03949A8(1);
      v191 = &v434;
      v434 = v188;
      v192 = &v433;
      v433 = v189;
      v193 = &v432;
      v432 = v190;
      sub_1B0394A48(3, &v434);
      sub_1B0394A48(7, v191);
      v430 = v341;
      v431 = v218;
      sub_1B03949FC(&v430, v191, v192, v193);
      v194 = v186;
      if (v186)
      {

        __break(1u);
      }

      else
      {
        v430 = v342;
        v431 = v219;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[19] = 0;
        v430 = v343;
        v431 = v220;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[18] = 0;
        v430 = v344;
        v431 = v221;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[17] = 0;
        v430 = v345;
        v431 = v222;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[16] = 0;
        v430 = v346;
        v431 = v223;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[15] = 0;
        v430 = v347;
        v431 = v224;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[14] = 0;
        v430 = v348;
        v431 = v225;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[13] = 0;
        v430 = v349;
        v431 = v226;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[12] = 0;
        v430 = v350;
        v431 = v227;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[11] = 0;
        v430 = v351;
        v431 = v228;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[10] = 0;
        v430 = v352;
        v431 = v229;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[9] = 0;
        v430 = v353;
        v431 = v230;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[8] = 0;
        v430 = v354;
        v431 = v231;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[7] = 0;
        v430 = v355;
        v431 = v232;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[6] = 0;
        v430 = v356;
        v431 = v233;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[5] = 0;
        v430 = v357;
        v431 = v234;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[4] = 0;
        v430 = v358;
        v431 = v235;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[3] = 0;
        v430 = v359;
        v431 = v236;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[2] = 0;
        v430 = v360;
        v431 = v237;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        v187[1] = 0;
        v430 = v361;
        v431 = v239;
        sub_1B03949FC(&v430, &v434, &v433, &v432);
        _os_log_impl(&dword_1B0389000, v242, v243, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] InProgressMessageDownload already has new headers for %u.", v188, 0x31u);
        sub_1B03998A8(v189);
        sub_1B03998A8(v190);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v242);
    return (*(v405 + 8))(v408, v404);
  }
}

void *sub_1B0783B74@<X0>(void *a1@<X8>)
{
  v20 = v1;
  if (BodyStructure.isAttachment.getter())
  {
    v15 = sub_1B0783CF0();
    v16 = v2;
    if (v2)
    {
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = static BodyStructure.Encoding.sevenBit.getter();
      v18 = v3;
    }

    v11 = v17;
    v12 = v18;
    __src[0] = BodyStructure.mediaType.getter();
    __src[1] = v4;
    __src[2] = v5;
    __src[3] = v6;
    __src[4] = v11;
    __src[5] = v12;
    __src[6] = sub_1B0783E20();
    LOBYTE(__src[7]) = 1;
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    v19[0] = BodyStructure.mediaType.getter();
    v19[1] = v7;
    v19[2] = v8;
    v19[3] = v9;
    LOBYTE(v19[7]) = 0;
    memcpy(__dst, v19, sizeof(__dst));
  }

  return memcpy(a1, __dst, 0x39uLL);
}

uint64_t sub_1B0783CF0()
{
  v8 = v0;
  sub_1B07169CC(v0, v7);
  memcpy(__dst, v0, 0xB1uLL);
  if (sub_1B0717014(__dst) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
    memcpy(v11, v2, sizeof(v11));
    sub_1B0717020(v11);
    return 0;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
    memcpy(v10, v1, sizeof(v10));
    memcpy(v12, &v10[1], sizeof(v12));
    sub_1B0717138(v12, v6);
    v4 = v12[7];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0717224(v12);
    sub_1B071728C(v10);
    return v4;
  }
}

uint64_t sub_1B0783E20()
{
  v12 = v0;
  memcpy(__dst, v0, 0xB1uLL);
  if (sub_1B0717014(__dst) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
    memcpy(v15, v2, sizeof(v15));
    sub_1B07AD120(v15, v11);
    v16 = v15[0];
    sub_1B074E7A8(&v16, v10);
    v9 = v16;
    v8[22] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20F0, &qword_1B0E9B578);
    sub_1B07AD3B4();
    sub_1B0E44FD8();
    sub_1B039E440(&v9);
    v4 = v10[1];
    sub_1B0717020(v15);
    return v4;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(__dst);
    memcpy(v14, v1, sizeof(v14));
    sub_1B07AD43C(v14, v8);
    memcpy(v17, &v14[1], sizeof(v17));
    sub_1B0717138(v17, v7);
    v5 = v17[9];
    sub_1B0717224(v17);
    sub_1B071728C(v14);
    return v5;
  }
}

uint64_t sub_1B0783FE8(void *a1, const void *a2)
{
  v2 = memcpy(__dst, a2, sizeof(__dst));
  result = sub_1B0783E20(v2);
  if (__OFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

void *sub_1B0784064(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void), uint64_t a5, void *a6, uint64_t a7)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0uLL;
  v25 = 0;
  v36 = a1;
  v34 = a2;
  v35 = a3;
  v32 = a4;
  v33 = a5;
  v31 = a6;
  v30 = a7;
  v29 = v7;
  sub_1B0784344(a1);
  result = memcpy(__dst, v37, 0x39uLL);
  if (BYTE8(__dst[3]))
  {
    if (BYTE8(__dst[3]) == 1)
    {
      v9 = __dst[0];
      v10 = __dst[1];
      v11 = __dst[2];
      v13 = *&__dst[3];
      v27 = __dst[0];
      v28 = __dst[1];
      v26 = __dst[2];
      v25 = *&__dst[3];
      sub_1B075F8C8(a6);
      v12 = a1[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24[0] = v12;
      sub_1B07167A8();
      sub_1B0E44778();
      sub_1B039E440(v24);
      v14 = v24[1];
      v15 = v24[2];

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B075A08C(v9, *(&v9 + 1), v10, *(&v10 + 1), v14, v15, v11, *(&v11 + 1), v38, v13);
      sub_1B078EDE4(a1, a2, a3, a4, a5, v38, a7);
      sub_1B0754BBC(v38);
    }
  }

  else
  {
    v16 = __dst[0];
    sub_1B078794C(a1);
    return sub_1B07AD750(v16, *(&v16 + 1));
  }

  return result;
}

void *sub_1B0784344(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v395 = v3;
  v502 = v2;
  v501 = v4;
  v396 = v1;
  v397 = sub_1B074E050;
  v398 = sub_1B07ADC58;
  v399 = sub_1B07ADCBC;
  v400 = sub_1B0394C30;
  v401 = sub_1B0394C24;
  v402 = sub_1B074DFFC;
  v403 = sub_1B039BA88;
  v404 = sub_1B039BB94;
  v405 = sub_1B0394C24;
  v406 = sub_1B039BBA0;
  v407 = sub_1B039BC08;
  v408 = 0x786F626C69616DLL;
  v409 = sub_1B06BA324;
  v410 = sub_1B074E0E4;
  v411 = sub_1B039BCF8;
  v412 = sub_1B07AD0A4;
  v413 = sub_1B039BCF8;
  v414 = sub_1B07AB020;
  v415 = sub_1B039BC08;
  v416 = sub_1B0398F5C;
  v417 = sub_1B0398F5C;
  v418 = sub_1B0399178;
  v419 = sub_1B0398F5C;
  v420 = sub_1B0398F5C;
  v421 = sub_1B039BA94;
  v422 = sub_1B0398F5C;
  v423 = sub_1B0398F5C;
  v424 = sub_1B0399178;
  v425 = sub_1B0398F5C;
  v426 = sub_1B0398F5C;
  v427 = sub_1B03991EC;
  v428 = sub_1B0398F5C;
  v429 = sub_1B0398F5C;
  v430 = sub_1B03993BC;
  v431 = sub_1B0398F5C;
  v432 = sub_1B0398F5C;
  v433 = sub_1B039BCEC;
  v434 = sub_1B0398F5C;
  v435 = sub_1B0398F5C;
  v436 = sub_1B039BCEC;
  v437 = sub_1B0398F5C;
  v438 = sub_1B0398F5C;
  v439 = sub_1B03991EC;
  v440 = sub_1B074E050;
  v441 = sub_1B07ADC58;
  v442 = sub_1B07ADCBC;
  v443 = sub_1B0394C24;
  v444 = sub_1B074DFFC;
  v445 = sub_1B039BA88;
  v446 = sub_1B0394C24;
  v447 = sub_1B039BBA0;
  v448 = sub_1B039BC08;
  v449 = sub_1B06BA324;
  v450 = sub_1B074E0E4;
  v451 = sub_1B039BCF8;
  v452 = sub_1B07AD0A4;
  v453 = sub_1B039BCF8;
  v454 = sub_1B07AB020;
  v455 = sub_1B039BC08;
  v456 = sub_1B0398F5C;
  v457 = sub_1B0398F5C;
  v458 = sub_1B0399178;
  v459 = sub_1B0398F5C;
  v460 = sub_1B0398F5C;
  v461 = sub_1B039BA94;
  v462 = sub_1B0398F5C;
  v463 = sub_1B0398F5C;
  v464 = sub_1B0399178;
  v465 = sub_1B0398F5C;
  v466 = sub_1B0398F5C;
  v467 = sub_1B03991EC;
  v468 = sub_1B0398F5C;
  v469 = sub_1B0398F5C;
  v470 = sub_1B03993BC;
  v471 = sub_1B0398F5C;
  v472 = sub_1B0398F5C;
  v473 = sub_1B039BCEC;
  v474 = sub_1B0398F5C;
  v475 = sub_1B0398F5C;
  v476 = sub_1B039BCEC;
  v477 = sub_1B0398F5C;
  v478 = sub_1B0398F5C;
  v479 = sub_1B03991EC;
  v537 = 0;
  v536 = 0;
  v535 = 0;
  v480 = 0;
  v506 = 0;
  v481 = type metadata accessor for MessageSectionData(0);
  v482 = *(v481 - 8);
  v483 = v482;
  v484 = *(v482 + 64);
  v485 = (v484 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v486 = (v215 - v485);
  v487 = _s6LoggerVMa_1();
  v488 = (*(*(v487 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v506);
  v489 = v215 - v488;
  v490 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v491 = v215 - v490;
  v492 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v493 = v215 - v492;
  v494 = sub_1B0E439A8();
  v495 = *(v494 - 8);
  v496 = v494 - 8;
  v497 = (*(v495 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v506);
  v498 = v215 - v497;
  v499 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v500 = v215 - v499;
  v503 = type metadata accessor for MessageSectionData.Segment(v11);
  v504 = (*(*(v503 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v502);
  v505 = v215 - v504;
  v537 = v12;
  v536 = v13;
  v535 = v1;
  v508 = *(v12 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0E46A48();
  v507 = SectionSpecifier.Part.init(arrayLiteral:)(v14);
  v509 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v508, v507);

  if (v509)
  {
    memset(v510, 0, 32);
    v510[56] = 0;
    memcpy(__dst, v510, 0x39uLL);
  }

  else
  {
    v390 = (v396 + 24);
    v391 = &v532;
    swift_beginAccess();
    v392 = v534;
    v393 = 177;
    memcpy(v534, v390, 0xB1uLL);
    sub_1B075DC38(v534, v531);
    swift_endAccess();
    v394 = v530;
    memcpy(v530, v392, v393);
    if (sub_1B075FACC(v394) == 1)
    {
      sub_1B07AB12C(v502 + *(v481 + 28), v505);
      v15 = (v505 + *(v503 + 24));
      v386 = v528;
      v387 = 177;
      memcpy(v528, v15, 0xB1uLL);
      sub_1B07AB440(v528, v527);
      sub_1B07AB694(v505);
      v388 = v529;
      memcpy(v529, v386, v387);
      if (sub_1B07AB810(v388) == 1)
      {
        sub_1B075FEBC(v533);
      }

      else
      {
        v385 = v529;
        sub_1B075DC38(v529, v511);
        sub_1B075E728(v385);
        memcpy(v533, v385, 0xB1uLL);
      }

      if (sub_1B075FACC(v530) != 1)
      {
        sub_1B075E728(v530);
      }
    }

    else
    {
      v389 = v533;
      memcpy(v533, v530, 0xB1uLL);
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v533);
    }

    v382 = v525;
    v383 = 177;
    memcpy(v525, v533, 0xB1uLL);
    v384 = v526;
    memcpy(v526, v525, 0xB1uLL);
    if (sub_1B075FACC(v526) == 1)
    {
      (*(v495 + 16))(v498, v501, v494);
      sub_1B074B69C(v501, v493);
      sub_1B074B69C(v493, v491);
      sub_1B074E41C(v493, v489);
      v115 = (v491 + *(v487 + 20));
      v225 = *v115;
      v226 = *(v115 + 1);
      v227 = *(v115 + 1);
      v228 = *(v115 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v491);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v224 = 36;
      v250 = 7;
      v116 = swift_allocObject();
      v117 = v226;
      v118 = v227;
      v119 = v228;
      v235 = v116;
      *(v116 + 16) = v225;
      *(v116 + 20) = v117;
      *(v116 + 24) = v118;
      *(v116 + 32) = v119;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v120 = swift_allocObject();
      v121 = v226;
      v122 = v227;
      v123 = v228;
      v223 = v120;
      *(v120 + 16) = v225;
      *(v120 + 20) = v121;
      *(v120 + 24) = v122;
      *(v120 + 32) = v123;

      v249 = 32;
      v124 = swift_allocObject();
      v125 = v223;
      v239 = v124;
      *(v124 + 16) = v397;
      *(v124 + 24) = v125;
      sub_1B0394868();
      sub_1B0394868();

      v126 = swift_allocObject();
      v127 = v226;
      v128 = v227;
      v129 = v228;
      v130 = v126;
      v131 = v489;
      v242 = v130;
      *(v130 + 16) = v225;
      *(v130 + 20) = v127;
      *(v130 + 24) = v128;
      *(v130 + 32) = v129;
      sub_1B074B764(v131);
      sub_1B07AD790(v502, v486);
      v231 = *(v483 + 80);
      v229 = (v231 + 16) & ~v231;
      v230 = swift_allocObject();
      sub_1B07ADB58(v486, v230 + v229);

      v132 = swift_allocObject();
      v133 = v230;
      v245 = v132;
      *(v132 + 16) = v398;
      *(v132 + 24) = v133;

      sub_1B07AD790(v502, v486);
      v232 = (v231 + 16) & ~v231;
      v233 = swift_allocObject();
      sub_1B07ADB58(v486, v233 + v232);

      v134 = swift_allocObject();
      v135 = v233;
      v251 = v134;
      *(v134 + 16) = v399;
      *(v134 + 24) = v135;

      v281 = sub_1B0E43988();
      v282 = sub_1B0E458E8();
      v247 = 17;
      v254 = swift_allocObject();
      v237 = 16;
      *(v254 + 16) = 16;
      v255 = swift_allocObject();
      v248 = 4;
      *(v255 + 16) = 4;
      v136 = swift_allocObject();
      v234 = v136;
      *(v136 + 16) = v400;
      *(v136 + 24) = 0;
      v137 = swift_allocObject();
      v138 = v234;
      v256 = v137;
      *(v137 + 16) = v401;
      *(v137 + 24) = v138;
      v257 = swift_allocObject();
      *(v257 + 16) = 0;
      v258 = swift_allocObject();
      *(v258 + 16) = 1;
      v139 = swift_allocObject();
      v140 = v235;
      v236 = v139;
      *(v139 + 16) = v402;
      *(v139 + 24) = v140;
      v141 = swift_allocObject();
      v142 = v236;
      v259 = v141;
      *(v141 + 16) = v403;
      *(v141 + 24) = v142;
      v260 = swift_allocObject();
      *(v260 + 16) = v237;
      v261 = swift_allocObject();
      *(v261 + 16) = v248;
      v143 = swift_allocObject();
      v238 = v143;
      *(v143 + 16) = v404;
      *(v143 + 24) = 0;
      v144 = swift_allocObject();
      v145 = v238;
      v262 = v144;
      *(v144 + 16) = v405;
      *(v144 + 24) = v145;
      v263 = swift_allocObject();
      *(v263 + 16) = 0;
      v264 = swift_allocObject();
      *(v264 + 16) = v248;
      v146 = swift_allocObject();
      v147 = v239;
      v240 = v146;
      *(v146 + 16) = v406;
      *(v146 + 24) = v147;
      v148 = swift_allocObject();
      v149 = v240;
      v265 = v148;
      *(v148 + 16) = v407;
      *(v148 + 24) = v149;
      v266 = swift_allocObject();
      *(v266 + 16) = 112;
      v267 = swift_allocObject();
      v244 = 8;
      *(v267 + 16) = 8;
      v253 = 24;
      v241 = swift_allocObject();
      *(v241 + 16) = v408;
      v150 = swift_allocObject();
      v151 = v241;
      v268 = v150;
      *(v150 + 16) = v409;
      *(v150 + 24) = v151;
      v269 = swift_allocObject();
      *(v269 + 16) = 37;
      v270 = swift_allocObject();
      *(v270 + 16) = v244;
      v152 = swift_allocObject();
      v153 = v242;
      v243 = v152;
      *(v152 + 16) = v410;
      *(v152 + 24) = v153;
      v154 = swift_allocObject();
      v155 = v243;
      v271 = v154;
      *(v154 + 16) = v411;
      *(v154 + 24) = v155;
      v272 = swift_allocObject();
      *(v272 + 16) = 34;
      v273 = swift_allocObject();
      *(v273 + 16) = v244;
      v156 = swift_allocObject();
      v157 = v245;
      v246 = v156;
      *(v156 + 16) = v412;
      *(v156 + 24) = v157;
      v158 = swift_allocObject();
      v159 = v246;
      v274 = v158;
      *(v158 + 16) = v413;
      *(v158 + 24) = v159;
      v275 = swift_allocObject();
      *(v275 + 16) = 0;
      v276 = swift_allocObject();
      *(v276 + 16) = v248;
      v160 = swift_allocObject();
      v161 = v251;
      v252 = v160;
      *(v160 + 16) = v414;
      *(v160 + 24) = v161;
      v162 = swift_allocObject();
      v163 = v252;
      v278 = v162;
      *(v162 + 16) = v415;
      *(v162 + 24) = v163;
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v277 = sub_1B0E46A48();
      v279 = v164;

      v165 = v254;
      v166 = v279;
      *v279 = v416;
      v166[1] = v165;

      v167 = v255;
      v168 = v279;
      v279[2] = v417;
      v168[3] = v167;

      v169 = v256;
      v170 = v279;
      v279[4] = v418;
      v170[5] = v169;

      v171 = v257;
      v172 = v279;
      v279[6] = v419;
      v172[7] = v171;

      v173 = v258;
      v174 = v279;
      v279[8] = v420;
      v174[9] = v173;

      v175 = v259;
      v176 = v279;
      v279[10] = v421;
      v176[11] = v175;

      v177 = v260;
      v178 = v279;
      v279[12] = v422;
      v178[13] = v177;

      v179 = v261;
      v180 = v279;
      v279[14] = v423;
      v180[15] = v179;

      v181 = v262;
      v182 = v279;
      v279[16] = v424;
      v182[17] = v181;

      v183 = v263;
      v184 = v279;
      v279[18] = v425;
      v184[19] = v183;

      v185 = v264;
      v186 = v279;
      v279[20] = v426;
      v186[21] = v185;

      v187 = v265;
      v188 = v279;
      v279[22] = v427;
      v188[23] = v187;

      v189 = v266;
      v190 = v279;
      v279[24] = v428;
      v190[25] = v189;

      v191 = v267;
      v192 = v279;
      v279[26] = v429;
      v192[27] = v191;

      v193 = v268;
      v194 = v279;
      v279[28] = v430;
      v194[29] = v193;

      v195 = v269;
      v196 = v279;
      v279[30] = v431;
      v196[31] = v195;

      v197 = v270;
      v198 = v279;
      v279[32] = v432;
      v198[33] = v197;

      v199 = v271;
      v200 = v279;
      v279[34] = v433;
      v200[35] = v199;

      v201 = v272;
      v202 = v279;
      v279[36] = v434;
      v202[37] = v201;

      v203 = v273;
      v204 = v279;
      v279[38] = v435;
      v204[39] = v203;

      v205 = v274;
      v206 = v279;
      v279[40] = v436;
      v206[41] = v205;

      v207 = v275;
      v208 = v279;
      v279[42] = v437;
      v208[43] = v207;

      v209 = v276;
      v210 = v279;
      v279[44] = v438;
      v210[45] = v209;

      v211 = v278;
      v212 = v279;
      v279[46] = v439;
      v212[47] = v211;
      sub_1B0394964();

      if (os_log_type_enabled(v281, v282))
      {
        v213 = v480;
        v216 = sub_1B0E45D78();
        v215[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v217 = sub_1B03949A8(0);
        v218 = sub_1B03949A8(2);
        v219 = &v523;
        v523 = v216;
        v220 = &v522;
        v522 = v217;
        v221 = &v521;
        v521 = v218;
        sub_1B0394A48(3, &v523);
        sub_1B0394A48(8, v219);
        v519 = v416;
        v520 = v254;
        sub_1B03949FC(&v519, v219, v220, v221);
        v222 = v213;
        if (v213)
        {

          __break(1u);
        }

        else
        {
          v519 = v417;
          v520 = v255;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[21] = 0;
          v519 = v418;
          v520 = v256;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[20] = 0;
          v519 = v419;
          v520 = v257;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[19] = 0;
          v519 = v420;
          v520 = v258;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[18] = 0;
          v519 = v421;
          v520 = v259;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[17] = 0;
          v519 = v422;
          v520 = v260;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[16] = 0;
          v519 = v423;
          v520 = v261;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[15] = 0;
          v519 = v424;
          v520 = v262;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[14] = 0;
          v519 = v425;
          v520 = v263;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[13] = 0;
          v519 = v426;
          v520 = v264;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[12] = 0;
          v519 = v427;
          v520 = v265;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[11] = 0;
          v519 = v428;
          v520 = v266;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[10] = 0;
          v519 = v429;
          v520 = v267;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[9] = 0;
          v519 = v430;
          v520 = v268;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[8] = 0;
          v519 = v431;
          v520 = v269;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[7] = 0;
          v519 = v432;
          v520 = v270;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[6] = 0;
          v519 = v433;
          v520 = v271;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[5] = 0;
          v519 = v434;
          v520 = v272;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[4] = 0;
          v519 = v435;
          v520 = v273;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[3] = 0;
          v519 = v436;
          v520 = v274;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[2] = 0;
          v519 = v437;
          v520 = v275;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[1] = 0;
          v519 = v438;
          v520 = v276;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          v215[0] = 0;
          v519 = v439;
          v520 = v278;
          sub_1B03949FC(&v519, &v523, &v522, &v521);
          _os_log_impl(&dword_1B0389000, v281, v282, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Trying to insert data for section [%{public}s], UID %u, but we don’t have any BodyStructure.", v216, 0x3Bu);
          sub_1B03998A8(v217);
          sub_1B03998A8(v218);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v281);
      (*(v495 + 8))(v498, v494);
      memset(v524, 0, 56);
      v524[56] = 2;
      memcpy(__dst, v524, 0x39uLL);
    }

    else
    {
      v380 = 177;
      memcpy(v542, v526, sizeof(v542));
      v378 = v502[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v379 = v538;
      BodyStructure.find(_:)(v378, v538);

      v381 = v540;
      memcpy(v540, v379, v380);
      if (sub_1B075FACC(v381) == 1)
      {
        (*(v495 + 16))(v500, v501, v494);
        sub_1B074B69C(v501, v493);
        sub_1B074B69C(v493, v491);
        sub_1B074E41C(v493, v489);
        v16 = (v491 + *(v487 + 20));
        v316 = *v16;
        v317 = *(v16 + 1);
        v318 = *(v16 + 1);
        v319 = *(v16 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v491);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v315 = 36;
        v341 = 7;
        v17 = swift_allocObject();
        v18 = v317;
        v19 = v318;
        v20 = v319;
        v326 = v17;
        *(v17 + 16) = v316;
        *(v17 + 20) = v18;
        *(v17 + 24) = v19;
        *(v17 + 32) = v20;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v21 = swift_allocObject();
        v22 = v317;
        v23 = v318;
        v24 = v319;
        v314 = v21;
        *(v21 + 16) = v316;
        *(v21 + 20) = v22;
        *(v21 + 24) = v23;
        *(v21 + 32) = v24;

        v340 = 32;
        v25 = swift_allocObject();
        v26 = v314;
        v330 = v25;
        *(v25 + 16) = v440;
        *(v25 + 24) = v26;
        sub_1B0394868();
        sub_1B0394868();

        v27 = swift_allocObject();
        v28 = v317;
        v29 = v318;
        v30 = v319;
        v31 = v27;
        v32 = v489;
        v333 = v31;
        *(v31 + 16) = v316;
        *(v31 + 20) = v28;
        *(v31 + 24) = v29;
        *(v31 + 32) = v30;
        sub_1B074B764(v32);
        sub_1B07AD790(v502, v486);
        v322 = *(v483 + 80);
        v320 = (v322 + 16) & ~v322;
        v321 = swift_allocObject();
        sub_1B07ADB58(v486, v321 + v320);

        v33 = swift_allocObject();
        v34 = v321;
        v336 = v33;
        *(v33 + 16) = v441;
        *(v33 + 24) = v34;

        sub_1B07AD790(v502, v486);
        v323 = (v322 + 16) & ~v322;
        v324 = swift_allocObject();
        sub_1B07ADB58(v486, v324 + v323);

        v35 = swift_allocObject();
        v36 = v324;
        v342 = v35;
        *(v35 + 16) = v442;
        *(v35 + 24) = v36;

        v372 = sub_1B0E43988();
        v373 = sub_1B0E458E8();
        v338 = 17;
        v345 = swift_allocObject();
        v328 = 16;
        *(v345 + 16) = 16;
        v346 = swift_allocObject();
        v339 = 4;
        *(v346 + 16) = 4;
        v37 = swift_allocObject();
        v325 = v37;
        *(v37 + 16) = v400;
        *(v37 + 24) = 0;
        v38 = swift_allocObject();
        v39 = v325;
        v347 = v38;
        *(v38 + 16) = v443;
        *(v38 + 24) = v39;
        v348 = swift_allocObject();
        *(v348 + 16) = 0;
        v349 = swift_allocObject();
        *(v349 + 16) = 1;
        v40 = swift_allocObject();
        v41 = v326;
        v327 = v40;
        *(v40 + 16) = v444;
        *(v40 + 24) = v41;
        v42 = swift_allocObject();
        v43 = v327;
        v350 = v42;
        *(v42 + 16) = v445;
        *(v42 + 24) = v43;
        v351 = swift_allocObject();
        *(v351 + 16) = v328;
        v352 = swift_allocObject();
        *(v352 + 16) = v339;
        v44 = swift_allocObject();
        v329 = v44;
        *(v44 + 16) = v404;
        *(v44 + 24) = 0;
        v45 = swift_allocObject();
        v46 = v329;
        v353 = v45;
        *(v45 + 16) = v446;
        *(v45 + 24) = v46;
        v354 = swift_allocObject();
        *(v354 + 16) = 0;
        v355 = swift_allocObject();
        *(v355 + 16) = v339;
        v47 = swift_allocObject();
        v48 = v330;
        v331 = v47;
        *(v47 + 16) = v447;
        *(v47 + 24) = v48;
        v49 = swift_allocObject();
        v50 = v331;
        v356 = v49;
        *(v49 + 16) = v448;
        *(v49 + 24) = v50;
        v357 = swift_allocObject();
        *(v357 + 16) = 112;
        v358 = swift_allocObject();
        v335 = 8;
        *(v358 + 16) = 8;
        v344 = 24;
        v332 = swift_allocObject();
        *(v332 + 16) = v408;
        v51 = swift_allocObject();
        v52 = v332;
        v359 = v51;
        *(v51 + 16) = v449;
        *(v51 + 24) = v52;
        v360 = swift_allocObject();
        *(v360 + 16) = 37;
        v361 = swift_allocObject();
        *(v361 + 16) = v335;
        v53 = swift_allocObject();
        v54 = v333;
        v334 = v53;
        *(v53 + 16) = v450;
        *(v53 + 24) = v54;
        v55 = swift_allocObject();
        v56 = v334;
        v362 = v55;
        *(v55 + 16) = v451;
        *(v55 + 24) = v56;
        v363 = swift_allocObject();
        *(v363 + 16) = 34;
        v364 = swift_allocObject();
        *(v364 + 16) = v335;
        v57 = swift_allocObject();
        v58 = v336;
        v337 = v57;
        *(v57 + 16) = v452;
        *(v57 + 24) = v58;
        v59 = swift_allocObject();
        v60 = v337;
        v365 = v59;
        *(v59 + 16) = v453;
        *(v59 + 24) = v60;
        v366 = swift_allocObject();
        *(v366 + 16) = 0;
        v367 = swift_allocObject();
        *(v367 + 16) = v339;
        v61 = swift_allocObject();
        v62 = v342;
        v343 = v61;
        *(v61 + 16) = v454;
        *(v61 + 24) = v62;
        v63 = swift_allocObject();
        v64 = v343;
        v369 = v63;
        *(v63 + 16) = v455;
        *(v63 + 24) = v64;
        v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v368 = sub_1B0E46A48();
        v370 = v65;

        v66 = v345;
        v67 = v370;
        *v370 = v456;
        v67[1] = v66;

        v68 = v346;
        v69 = v370;
        v370[2] = v457;
        v69[3] = v68;

        v70 = v347;
        v71 = v370;
        v370[4] = v458;
        v71[5] = v70;

        v72 = v348;
        v73 = v370;
        v370[6] = v459;
        v73[7] = v72;

        v74 = v349;
        v75 = v370;
        v370[8] = v460;
        v75[9] = v74;

        v76 = v350;
        v77 = v370;
        v370[10] = v461;
        v77[11] = v76;

        v78 = v351;
        v79 = v370;
        v370[12] = v462;
        v79[13] = v78;

        v80 = v352;
        v81 = v370;
        v370[14] = v463;
        v81[15] = v80;

        v82 = v353;
        v83 = v370;
        v370[16] = v464;
        v83[17] = v82;

        v84 = v354;
        v85 = v370;
        v370[18] = v465;
        v85[19] = v84;

        v86 = v355;
        v87 = v370;
        v370[20] = v466;
        v87[21] = v86;

        v88 = v356;
        v89 = v370;
        v370[22] = v467;
        v89[23] = v88;

        v90 = v357;
        v91 = v370;
        v370[24] = v468;
        v91[25] = v90;

        v92 = v358;
        v93 = v370;
        v370[26] = v469;
        v93[27] = v92;

        v94 = v359;
        v95 = v370;
        v370[28] = v470;
        v95[29] = v94;

        v96 = v360;
        v97 = v370;
        v370[30] = v471;
        v97[31] = v96;

        v98 = v361;
        v99 = v370;
        v370[32] = v472;
        v99[33] = v98;

        v100 = v362;
        v101 = v370;
        v370[34] = v473;
        v101[35] = v100;

        v102 = v363;
        v103 = v370;
        v370[36] = v474;
        v103[37] = v102;

        v104 = v364;
        v105 = v370;
        v370[38] = v475;
        v105[39] = v104;

        v106 = v365;
        v107 = v370;
        v370[40] = v476;
        v107[41] = v106;

        v108 = v366;
        v109 = v370;
        v370[42] = v477;
        v109[43] = v108;

        v110 = v367;
        v111 = v370;
        v370[44] = v478;
        v111[45] = v110;

        v112 = v369;
        v113 = v370;
        v370[46] = v479;
        v113[47] = v112;
        sub_1B0394964();

        if (os_log_type_enabled(v372, v373))
        {
          v114 = v480;
          v307 = sub_1B0E45D78();
          v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v308 = sub_1B03949A8(0);
          v309 = sub_1B03949A8(2);
          v310 = &v517;
          v517 = v307;
          v311 = &v516;
          v516 = v308;
          v312 = &v515;
          v515 = v309;
          sub_1B0394A48(3, &v517);
          sub_1B0394A48(8, v310);
          v513 = v456;
          v514 = v345;
          sub_1B03949FC(&v513, v310, v311, v312);
          v313 = v114;
          if (v114)
          {

            __break(1u);
          }

          else
          {
            v513 = v457;
            v514 = v346;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v305 = 0;
            v513 = v458;
            v514 = v347;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v304 = 0;
            v513 = v459;
            v514 = v348;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v303 = 0;
            v513 = v460;
            v514 = v349;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v302 = 0;
            v513 = v461;
            v514 = v350;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v301 = 0;
            v513 = v462;
            v514 = v351;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v300 = 0;
            v513 = v463;
            v514 = v352;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v299 = 0;
            v513 = v464;
            v514 = v353;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v298 = 0;
            v513 = v465;
            v514 = v354;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v297 = 0;
            v513 = v466;
            v514 = v355;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v296 = 0;
            v513 = v467;
            v514 = v356;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v295 = 0;
            v513 = v468;
            v514 = v357;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v294 = 0;
            v513 = v469;
            v514 = v358;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v293 = 0;
            v513 = v470;
            v514 = v359;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v292 = 0;
            v513 = v471;
            v514 = v360;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v291 = 0;
            v513 = v472;
            v514 = v361;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v290 = 0;
            v513 = v473;
            v514 = v362;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v289 = 0;
            v513 = v474;
            v514 = v363;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v288 = 0;
            v513 = v475;
            v514 = v364;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v287 = 0;
            v513 = v476;
            v514 = v365;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v286 = 0;
            v513 = v477;
            v514 = v366;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v285 = 0;
            v513 = v478;
            v514 = v367;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            v284 = 0;
            v513 = v479;
            v514 = v369;
            sub_1B03949FC(&v513, &v517, &v516, &v515);
            _os_log_impl(&dword_1B0389000, v372, v373, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Trying to insert data for section [%{public}s], UID %u, but the BodyStructure for that message doesn’t have that part in it.", v307, 0x3Bu);
            sub_1B03998A8(v308);
            sub_1B03998A8(v309);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v372);
        (*(v495 + 8))(v500, v494);
        v283 = v518;
        memset(v518, 0, 56);
        v518[56] = 2;
        sub_1B075E648(v526);
        memcpy(__dst, v283, 0x39uLL);
      }

      else
      {
        v375 = v541;
        memcpy(v541, v540, 0xB1uLL);
        v374 = v539;
        sub_1B0783B74(v539);
        v376 = v512;
        v377 = 57;
        memcpy(v512, v374, 0x39uLL);
        sub_1B075E648(v375);
        sub_1B075E648(v526);
        memcpy(__dst, v376, v377);
      }
    }
  }

  return memcpy(v395, __dst, 0x39uLL);
}

uint64_t *sub_1B078794C(uint64_t a1)
{
  v1060 = MEMORY[0x1EEE9AC00](a1);
  v1059 = v2;
  v1055 = v3;
  v1056 = v4;
  v1057 = v5;
  v1058 = v6;
  v833 = v1;
  v834 = sub_1B074E050;
  v835 = sub_1B07ADC58;
  v836 = sub_1B07AAFA4;
  v837 = sub_1B0394C30;
  v838 = sub_1B0394C24;
  v839 = sub_1B074DFFC;
  v840 = sub_1B039BA88;
  v841 = sub_1B039BB94;
  v842 = sub_1B0394C24;
  v843 = sub_1B039BBA0;
  v844 = sub_1B039BC08;
  v845 = 0x786F626C69616DLL;
  v846 = sub_1B06BA324;
  v847 = sub_1B074E0E4;
  v848 = sub_1B039BCF8;
  v849 = sub_1B07AD0A4;
  v850 = sub_1B039BCF8;
  v851 = sub_1B07AB020;
  v852 = sub_1B039BC08;
  v853 = sub_1B0398F5C;
  v854 = sub_1B0398F5C;
  v855 = sub_1B0399178;
  v856 = sub_1B0398F5C;
  v857 = sub_1B0398F5C;
  v858 = sub_1B039BA94;
  v859 = sub_1B0398F5C;
  v860 = sub_1B0398F5C;
  v861 = sub_1B0399178;
  v862 = sub_1B0398F5C;
  v863 = sub_1B0398F5C;
  v864 = sub_1B03991EC;
  v865 = sub_1B0398F5C;
  v866 = sub_1B0398F5C;
  v867 = sub_1B03993BC;
  v868 = sub_1B0398F5C;
  v869 = sub_1B0398F5C;
  v870 = sub_1B039BCEC;
  v871 = sub_1B0398F5C;
  v872 = sub_1B0398F5C;
  v873 = sub_1B039BCEC;
  v874 = sub_1B0398F5C;
  v875 = sub_1B0398F5C;
  v876 = sub_1B03991EC;
  v877 = sub_1B074E050;
  v878 = sub_1B07AE75C;
  v879 = sub_1B07AAFA4;
  v880 = sub_1B0394C24;
  v881 = sub_1B074DFFC;
  v882 = sub_1B039BA88;
  v883 = sub_1B0394C24;
  v884 = sub_1B039BBA0;
  v885 = sub_1B039BC08;
  v886 = sub_1B06BA324;
  v887 = sub_1B074E0E4;
  v888 = sub_1B039BCF8;
  v889 = sub_1B07AD0A4;
  v890 = sub_1B039BCF8;
  v891 = sub_1B07AB020;
  v892 = sub_1B039BC08;
  v893 = sub_1B07AE7C0;
  v894 = sub_1B03B0DF8;
  v895 = sub_1B0398F5C;
  v896 = sub_1B0398F5C;
  v897 = sub_1B0399178;
  v898 = sub_1B0398F5C;
  v899 = sub_1B0398F5C;
  v900 = sub_1B039BA94;
  v901 = sub_1B0398F5C;
  v902 = sub_1B0398F5C;
  v903 = sub_1B0399178;
  v904 = sub_1B0398F5C;
  v905 = sub_1B0398F5C;
  v906 = sub_1B03991EC;
  v907 = sub_1B0398F5C;
  v908 = sub_1B0398F5C;
  v909 = sub_1B03993BC;
  v910 = sub_1B0398F5C;
  v911 = sub_1B0398F5C;
  v912 = sub_1B039BCEC;
  v913 = sub_1B0398F5C;
  v914 = sub_1B0398F5C;
  v915 = sub_1B039BCEC;
  v916 = sub_1B0398F5C;
  v917 = sub_1B0398F5C;
  v918 = sub_1B03991EC;
  v919 = sub_1B0398F5C;
  v920 = sub_1B0398F5C;
  v921 = sub_1B0399260;
  v922 = sub_1B074E050;
  v923 = sub_1B07ADC58;
  v924 = sub_1B07AAFA4;
  v925 = sub_1B0394C24;
  v926 = sub_1B074DFFC;
  v927 = sub_1B039BA88;
  v928 = sub_1B0394C24;
  v929 = sub_1B039BBA0;
  v930 = sub_1B039BC08;
  v931 = sub_1B06BA324;
  v932 = sub_1B074E0E4;
  v933 = sub_1B039BCF8;
  v934 = sub_1B07AE824;
  v935 = sub_1B03B0DF8;
  v936 = sub_1B07AD0A4;
  v937 = sub_1B039BCF8;
  v938 = sub_1B07AB020;
  v939 = sub_1B039BC08;
  v940 = sub_1B0398F5C;
  v941 = sub_1B0398F5C;
  v942 = sub_1B0399178;
  v943 = sub_1B0398F5C;
  v944 = sub_1B0398F5C;
  v945 = sub_1B039BA94;
  v946 = sub_1B0398F5C;
  v947 = sub_1B0398F5C;
  v948 = sub_1B0399178;
  v949 = sub_1B0398F5C;
  v950 = sub_1B0398F5C;
  v951 = sub_1B03991EC;
  v952 = sub_1B0398F5C;
  v953 = sub_1B0398F5C;
  v954 = sub_1B03993BC;
  v955 = sub_1B0398F5C;
  v956 = sub_1B0398F5C;
  v957 = sub_1B039BCEC;
  v958 = sub_1B0398F5C;
  v959 = sub_1B0398F5C;
  v960 = sub_1B0399260;
  v961 = sub_1B0398F5C;
  v962 = sub_1B0398F5C;
  v963 = sub_1B039BCEC;
  v964 = sub_1B0398F5C;
  v965 = sub_1B0398F5C;
  v966 = sub_1B03991EC;
  v967 = sub_1B074E050;
  v968 = sub_1B07ADC58;
  v969 = sub_1B07AAFA4;
  v970 = sub_1B0394C24;
  v971 = sub_1B074DFFC;
  v972 = sub_1B039BA88;
  v973 = sub_1B0394C24;
  v974 = sub_1B039BBA0;
  v975 = sub_1B039BC08;
  v976 = sub_1B06BA324;
  v977 = sub_1B074E0E4;
  v978 = sub_1B039BCF8;
  v979 = sub_1B07AD0A4;
  v980 = sub_1B039BCF8;
  v981 = sub_1B07AB020;
  v982 = sub_1B039BC08;
  v983 = sub_1B0398F5C;
  v984 = sub_1B0398F5C;
  v985 = sub_1B0399178;
  v986 = sub_1B0398F5C;
  v987 = sub_1B0398F5C;
  v988 = sub_1B039BA94;
  v989 = sub_1B0398F5C;
  v990 = sub_1B0398F5C;
  v991 = sub_1B0399178;
  v992 = sub_1B0398F5C;
  v993 = sub_1B0398F5C;
  v994 = sub_1B03991EC;
  v995 = sub_1B0398F5C;
  v996 = sub_1B0398F5C;
  v997 = sub_1B03993BC;
  v998 = sub_1B0398F5C;
  v999 = sub_1B0398F5C;
  v1000 = sub_1B039BCEC;
  v1001 = sub_1B0398F5C;
  v1002 = sub_1B0398F5C;
  v1003 = sub_1B039BCEC;
  v1004 = sub_1B0398F5C;
  v1005 = sub_1B0398F5C;
  v1006 = sub_1B03991EC;
  v1110 = 0;
  v1108 = 0;
  v1107 = 0;
  v1105 = 0u;
  v1106 = 0u;
  v1104 = 0;
  v1103 = 0;
  v1007 = 0;
  v1111 = 0;
  v1112 = 0;
  v1109 = 0;
  v1081 = 0;
  v1053 = 0;
  v1008 = *(type metadata accessor for MessageSectionData(0) - 8);
  v1009 = v1008;
  v1010 = *(v1008 + 64);
  v1011 = (v1010 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1012 = (v455 - v1011);
  v1013 = _s6LoggerVMa_1();
  v1014 = (*(*(v1013 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v1053);
  v1015 = v455 - v1014;
  v1016 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v1017 = v455 - v1016;
  v1018 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v1019 = v455 - v1018;
  v1020 = sub_1B0E439A8();
  v1021 = *(v1020 - 8);
  v1022 = v1020 - 8;
  v1023 = (*(v1021 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v1053);
  v1024 = v455 - v1023;
  v1025 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v1026 = v455 - v1025;
  v1027 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v1028 = v455 - v1027;
  v1029 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v1030 = v455 - v1029;
  v1031 = type metadata accessor for MessageSectionDataConcatenator.CreateResult();
  v1032 = (*(*(v1031 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1031);
  v1033 = v455 - v1032;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v1034 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v1035 = v455 - v1034;
  v1036 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v455 - v1034);
  v1037 = (v455 - v1036);
  v1038 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v455 - v1036);
  v1039 = (v455 - v1038);
  v1040 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20F8, &qword_1B0E9B580) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1053);
  v1041 = (v455 - v1040);
  v1042 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v1044 = *(v1042 - 8);
  v1043 = v1042 - 8;
  v1045 = v1044;
  v1046 = *(v1044 + 64);
  v1047 = (v1046 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = MEMORY[0x1EEE9AC00](v1042);
  v1048 = v455 - v1047;
  v1112 = v455 - v1047;
  v1049 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v1050 = v455 - v1049;
  v1111 = v455 - v1049;
  v1051 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v1052 = (v455 - v1051);
  v1110 = v455 - v1051;
  v1054 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2100, &qword_1B0E9B588) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1053);
  v1068 = (v455 - v1054);
  v1069 = type metadata accessor for MessageSectionDataConcatenator();
  v1066 = *(v1069 - 8);
  v1067 = v1069 - 8;
  v1061 = (*(v1066 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x1EEE9AC00](v1060);
  v1062 = v455 - v1061;
  v1109 = v455 - v1061;
  v1063 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v1064 = (v455 - v1063);
  v1108 = v455 - v1063;
  v1107 = v26;
  *&v1105 = v27;
  *(&v1105 + 1) = v28;
  *&v1106 = v29;
  *(&v1106 + 1) = v30;
  v1104 = v31;
  v1103 = v1;
  v1065 = *(v26 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07977D8(v1065, v1068);

  if ((*(v1066 + 48))(v1068, 1, v1069) == 1)
  {
    sub_1B07ADD20(v1068);
    v33 = sub_1B0791AC0(v1060);
    sub_1B08BFFF4(v33, v1060, v1059, v1055, v1056, v1057, v1033);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v1021 + 16))(v1030, v1058, v1020);
        sub_1B074B69C(v1058, v1019);
        sub_1B074B69C(v1019, v1017);
        sub_1B074E41C(v1019, v1015);
        v34 = (v1017 + *(v1013 + 20));
        v754 = *v34;
        v755 = *(v34 + 1);
        v756 = *(v34 + 1);
        v757 = *(v34 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1017);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v753 = 36;
        v776 = 7;
        v35 = swift_allocObject();
        v36 = v755;
        v37 = v756;
        v38 = v757;
        v761 = v35;
        *(v35 + 16) = v754;
        *(v35 + 20) = v36;
        *(v35 + 24) = v37;
        *(v35 + 32) = v38;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v39 = swift_allocObject();
        v40 = v755;
        v41 = v756;
        v42 = v757;
        v752 = v39;
        *(v39 + 16) = v754;
        *(v39 + 20) = v40;
        *(v39 + 24) = v41;
        *(v39 + 32) = v42;

        v775 = 32;
        v43 = swift_allocObject();
        v44 = v752;
        v765 = v43;
        *(v43 + 16) = v834;
        *(v43 + 24) = v44;
        sub_1B0394868();
        sub_1B0394868();

        v45 = swift_allocObject();
        v46 = v755;
        v47 = v756;
        v48 = v757;
        v49 = v45;
        v50 = v1015;
        v768 = v49;
        *(v49 + 16) = v754;
        *(v49 + 20) = v46;
        *(v49 + 24) = v47;
        *(v49 + 32) = v48;
        sub_1B074B764(v50);
        sub_1B07AD790(v1060, v1012);
        v758 = (*(v1009 + 80) + 16) & ~*(v1009 + 80);
        v759 = swift_allocObject();
        sub_1B07ADB58(v1012, v759 + v758);

        v51 = swift_allocObject();
        v52 = v759;
        v771 = v51;
        *(v51 + 16) = v835;
        *(v51 + 24) = v52;

        v53 = swift_allocObject();
        v54 = v833;
        v777 = v53;
        *(v53 + 16) = v836;
        *(v53 + 24) = v54;

        v807 = sub_1B0E43988();
        v808 = sub_1B0E458E8();
        v773 = 17;
        v780 = swift_allocObject();
        v763 = 16;
        *(v780 + 16) = 16;
        v781 = swift_allocObject();
        v774 = 4;
        *(v781 + 16) = 4;
        v55 = swift_allocObject();
        v760 = v55;
        *(v55 + 16) = v837;
        *(v55 + 24) = 0;
        v56 = swift_allocObject();
        v57 = v760;
        v782 = v56;
        *(v56 + 16) = v838;
        *(v56 + 24) = v57;
        v783 = swift_allocObject();
        *(v783 + 16) = 0;
        v784 = swift_allocObject();
        *(v784 + 16) = 1;
        v58 = swift_allocObject();
        v59 = v761;
        v762 = v58;
        *(v58 + 16) = v839;
        *(v58 + 24) = v59;
        v60 = swift_allocObject();
        v61 = v762;
        v785 = v60;
        *(v60 + 16) = v840;
        *(v60 + 24) = v61;
        v786 = swift_allocObject();
        *(v786 + 16) = v763;
        v787 = swift_allocObject();
        *(v787 + 16) = v774;
        v62 = swift_allocObject();
        v764 = v62;
        *(v62 + 16) = v841;
        *(v62 + 24) = 0;
        v63 = swift_allocObject();
        v64 = v764;
        v788 = v63;
        *(v63 + 16) = v842;
        *(v63 + 24) = v64;
        v789 = swift_allocObject();
        *(v789 + 16) = 0;
        v790 = swift_allocObject();
        *(v790 + 16) = v774;
        v65 = swift_allocObject();
        v66 = v765;
        v766 = v65;
        *(v65 + 16) = v843;
        *(v65 + 24) = v66;
        v67 = swift_allocObject();
        v68 = v766;
        v791 = v67;
        *(v67 + 16) = v844;
        *(v67 + 24) = v68;
        v792 = swift_allocObject();
        *(v792 + 16) = 112;
        v793 = swift_allocObject();
        v770 = 8;
        *(v793 + 16) = 8;
        v779 = 24;
        v767 = swift_allocObject();
        *(v767 + 16) = v845;
        v69 = swift_allocObject();
        v70 = v767;
        v794 = v69;
        *(v69 + 16) = v846;
        *(v69 + 24) = v70;
        v795 = swift_allocObject();
        *(v795 + 16) = 37;
        v796 = swift_allocObject();
        *(v796 + 16) = v770;
        v71 = swift_allocObject();
        v72 = v768;
        v769 = v71;
        *(v71 + 16) = v847;
        *(v71 + 24) = v72;
        v73 = swift_allocObject();
        v74 = v769;
        v797 = v73;
        *(v73 + 16) = v848;
        *(v73 + 24) = v74;
        v798 = swift_allocObject();
        *(v798 + 16) = 34;
        v799 = swift_allocObject();
        *(v799 + 16) = v770;
        v75 = swift_allocObject();
        v76 = v771;
        v772 = v75;
        *(v75 + 16) = v849;
        *(v75 + 24) = v76;
        v77 = swift_allocObject();
        v78 = v772;
        v800 = v77;
        *(v77 + 16) = v850;
        *(v77 + 24) = v78;
        v801 = swift_allocObject();
        *(v801 + 16) = 0;
        v802 = swift_allocObject();
        *(v802 + 16) = v774;
        v79 = swift_allocObject();
        v80 = v777;
        v778 = v79;
        *(v79 + 16) = v851;
        *(v79 + 24) = v80;
        v81 = swift_allocObject();
        v82 = v778;
        v804 = v81;
        *(v81 + 16) = v852;
        *(v81 + 24) = v82;
        v806 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v803 = sub_1B0E46A48();
        v805 = v83;

        v84 = v780;
        v85 = v805;
        *v805 = v853;
        v85[1] = v84;

        v86 = v781;
        v87 = v805;
        v805[2] = v854;
        v87[3] = v86;

        v88 = v782;
        v89 = v805;
        v805[4] = v855;
        v89[5] = v88;

        v90 = v783;
        v91 = v805;
        v805[6] = v856;
        v91[7] = v90;

        v92 = v784;
        v93 = v805;
        v805[8] = v857;
        v93[9] = v92;

        v94 = v785;
        v95 = v805;
        v805[10] = v858;
        v95[11] = v94;

        v96 = v786;
        v97 = v805;
        v805[12] = v859;
        v97[13] = v96;

        v98 = v787;
        v99 = v805;
        v805[14] = v860;
        v99[15] = v98;

        v100 = v788;
        v101 = v805;
        v805[16] = v861;
        v101[17] = v100;

        v102 = v789;
        v103 = v805;
        v805[18] = v862;
        v103[19] = v102;

        v104 = v790;
        v105 = v805;
        v805[20] = v863;
        v105[21] = v104;

        v106 = v791;
        v107 = v805;
        v805[22] = v864;
        v107[23] = v106;

        v108 = v792;
        v109 = v805;
        v805[24] = v865;
        v109[25] = v108;

        v110 = v793;
        v111 = v805;
        v805[26] = v866;
        v111[27] = v110;

        v112 = v794;
        v113 = v805;
        v805[28] = v867;
        v113[29] = v112;

        v114 = v795;
        v115 = v805;
        v805[30] = v868;
        v115[31] = v114;

        v116 = v796;
        v117 = v805;
        v805[32] = v869;
        v117[33] = v116;

        v118 = v797;
        v119 = v805;
        v805[34] = v870;
        v119[35] = v118;

        v120 = v798;
        v121 = v805;
        v805[36] = v871;
        v121[37] = v120;

        v122 = v799;
        v123 = v805;
        v805[38] = v872;
        v123[39] = v122;

        v124 = v800;
        v125 = v805;
        v805[40] = v873;
        v125[41] = v124;

        v126 = v801;
        v127 = v805;
        v805[42] = v874;
        v127[43] = v126;

        v128 = v802;
        v129 = v805;
        v805[44] = v875;
        v129[45] = v128;

        v130 = v804;
        v131 = v805;
        v805[46] = v876;
        v131[47] = v130;
        sub_1B0394964();

        if (os_log_type_enabled(v807, v808))
        {
          v132 = v1007;
          v745 = sub_1B0E45D78();
          v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v746 = sub_1B03949A8(0);
          v747 = sub_1B03949A8(2);
          v748 = &v1102;
          v1102 = v745;
          v749 = &v1101;
          v1101 = v746;
          v750 = &v1100;
          v1100 = v747;
          sub_1B0394A48(3, &v1102);
          sub_1B0394A48(8, v748);
          v1098 = v853;
          v1099 = v780;
          sub_1B03949FC(&v1098, v748, v749, v750);
          v751 = v132;
          if (v132)
          {

            __break(1u);
          }

          else
          {
            v1098 = v854;
            v1099 = v781;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v743 = 0;
            v1098 = v855;
            v1099 = v782;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v742 = 0;
            v1098 = v856;
            v1099 = v783;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v741 = 0;
            v1098 = v857;
            v1099 = v784;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v740 = 0;
            v1098 = v858;
            v1099 = v785;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v739 = 0;
            v1098 = v859;
            v1099 = v786;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v738 = 0;
            v1098 = v860;
            v1099 = v787;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v737 = 0;
            v1098 = v861;
            v1099 = v788;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v736 = 0;
            v1098 = v862;
            v1099 = v789;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v735 = 0;
            v1098 = v863;
            v1099 = v790;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v734 = 0;
            v1098 = v864;
            v1099 = v791;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v733 = 0;
            v1098 = v865;
            v1099 = v792;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v732 = 0;
            v1098 = v866;
            v1099 = v793;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v731 = 0;
            v1098 = v867;
            v1099 = v794;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v730 = 0;
            v1098 = v868;
            v1099 = v795;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v729 = 0;
            v1098 = v869;
            v1099 = v796;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v728 = 0;
            v1098 = v870;
            v1099 = v797;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v727 = 0;
            v1098 = v871;
            v1099 = v798;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v726 = 0;
            v1098 = v872;
            v1099 = v799;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v725 = 0;
            v1098 = v873;
            v1099 = v800;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v724 = 0;
            v1098 = v874;
            v1099 = v801;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v723 = 0;
            v1098 = v875;
            v1099 = v802;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            v722 = 0;
            v1098 = v876;
            v1099 = v804;
            sub_1B03949FC(&v1098, &v1102, &v1101, &v1100);
            _os_log_impl(&dword_1B0389000, v807, v808, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to insert data for section [%{public}s], UID %u.", v745, 0x3Bu);
            sub_1B03998A8(v746);
            sub_1B03998A8(v747);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v807);
        return (*(v1021 + 8))(v1030, v1020);
      }

      sub_1B07AC238(v1033, v1050);
      v1111 = v1050;
      v811 = v1060[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AC570(v1050, v1039);
      v810 = type metadata accessor for InProgressMessageDownload.Section();
      v809 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(v810 - 8) + 56))(v1039, 0, v809);
      v812 = &v1097;
      v1097 = v811;
      v813 = &v1096;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      sub_1B07AC2FC(v1050);
    }

    else
    {
      sub_1B07AE938(v1033, v1062);
      v1109 = v1062;
      v816 = v1060[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AE9EC(v1062, v1039);
      v815 = type metadata accessor for InProgressMessageDownload.Section();
      v814 = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v815 - 8) + 56))(v1039, v814, 1);
      v817 = &v1083;
      v1083 = v816;
      v818 = &v1082;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      sub_1B07AE888(v1062);
    }

    v820 = v1007;
  }

  else
  {
    v32 = v1007;
    sub_1B07AE938(v1068, v1064);
    sub_1B08BFC60(v1060, v1041);
    v831 = v32;
    v832 = v32;
    if (v32)
    {
      v353 = v1024;
      v464 = v832;
      v463 = 0;
      v354 = v832;
      v1081 = v464;
      (*(v1021 + 16))(v353, v1058, v1020);
      sub_1B074B69C(v1058, v1019);
      sub_1B074B69C(v1019, v1017);
      sub_1B074E41C(v1019, v1015);
      v355 = (v1017 + *(v1013 + 20));
      v467 = *v355;
      v468 = *(v355 + 1);
      v469 = *(v355 + 1);
      v470 = *(v355 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1017);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v466 = 36;
      v489 = 7;
      v356 = swift_allocObject();
      v357 = v468;
      v358 = v469;
      v359 = v470;
      v474 = v356;
      *(v356 + 16) = v467;
      *(v356 + 20) = v357;
      *(v356 + 24) = v358;
      *(v356 + 32) = v359;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v360 = swift_allocObject();
      v361 = v468;
      v362 = v469;
      v363 = v470;
      v465 = v360;
      *(v360 + 16) = v467;
      *(v360 + 20) = v361;
      *(v360 + 24) = v362;
      *(v360 + 32) = v363;

      v488 = 32;
      v364 = swift_allocObject();
      v365 = v465;
      v478 = v364;
      *(v364 + 16) = v967;
      *(v364 + 24) = v365;
      sub_1B0394868();
      sub_1B0394868();

      v366 = swift_allocObject();
      v367 = v468;
      v368 = v469;
      v369 = v470;
      v370 = v366;
      v371 = v1015;
      v481 = v370;
      *(v370 + 16) = v467;
      *(v370 + 20) = v367;
      *(v370 + 24) = v368;
      *(v370 + 32) = v369;
      sub_1B074B764(v371);
      sub_1B07AD790(v1060, v1012);
      v471 = (*(v1009 + 80) + 16) & ~*(v1009 + 80);
      v472 = swift_allocObject();
      sub_1B07ADB58(v1012, v472 + v471);

      v372 = swift_allocObject();
      v373 = v472;
      v484 = v372;
      *(v372 + 16) = v968;
      *(v372 + 24) = v373;

      v374 = swift_allocObject();
      v375 = v833;
      v490 = v374;
      *(v374 + 16) = v969;
      *(v374 + 24) = v375;

      v520 = sub_1B0E43988();
      v521 = sub_1B0E458E8();
      v486 = 17;
      v493 = swift_allocObject();
      v476 = 16;
      *(v493 + 16) = 16;
      v494 = swift_allocObject();
      v487 = 4;
      *(v494 + 16) = 4;
      v376 = swift_allocObject();
      v473 = v376;
      *(v376 + 16) = v837;
      *(v376 + 24) = 0;
      v377 = swift_allocObject();
      v378 = v473;
      v495 = v377;
      *(v377 + 16) = v970;
      *(v377 + 24) = v378;
      v496 = swift_allocObject();
      *(v496 + 16) = 0;
      v497 = swift_allocObject();
      *(v497 + 16) = 1;
      v379 = swift_allocObject();
      v380 = v474;
      v475 = v379;
      *(v379 + 16) = v971;
      *(v379 + 24) = v380;
      v381 = swift_allocObject();
      v382 = v475;
      v498 = v381;
      *(v381 + 16) = v972;
      *(v381 + 24) = v382;
      v499 = swift_allocObject();
      *(v499 + 16) = v476;
      v500 = swift_allocObject();
      *(v500 + 16) = v487;
      v383 = swift_allocObject();
      v477 = v383;
      *(v383 + 16) = v841;
      *(v383 + 24) = 0;
      v384 = swift_allocObject();
      v385 = v477;
      v501 = v384;
      *(v384 + 16) = v973;
      *(v384 + 24) = v385;
      v502 = swift_allocObject();
      *(v502 + 16) = 0;
      v503 = swift_allocObject();
      *(v503 + 16) = v487;
      v386 = swift_allocObject();
      v387 = v478;
      v479 = v386;
      *(v386 + 16) = v974;
      *(v386 + 24) = v387;
      v388 = swift_allocObject();
      v389 = v479;
      v504 = v388;
      *(v388 + 16) = v975;
      *(v388 + 24) = v389;
      v505 = swift_allocObject();
      *(v505 + 16) = 112;
      v506 = swift_allocObject();
      v483 = 8;
      *(v506 + 16) = 8;
      v492 = 24;
      v480 = swift_allocObject();
      *(v480 + 16) = v845;
      v390 = swift_allocObject();
      v391 = v480;
      v507 = v390;
      *(v390 + 16) = v976;
      *(v390 + 24) = v391;
      v508 = swift_allocObject();
      *(v508 + 16) = 37;
      v509 = swift_allocObject();
      *(v509 + 16) = v483;
      v392 = swift_allocObject();
      v393 = v481;
      v482 = v392;
      *(v392 + 16) = v977;
      *(v392 + 24) = v393;
      v394 = swift_allocObject();
      v395 = v482;
      v510 = v394;
      *(v394 + 16) = v978;
      *(v394 + 24) = v395;
      v511 = swift_allocObject();
      *(v511 + 16) = 34;
      v512 = swift_allocObject();
      *(v512 + 16) = v483;
      v396 = swift_allocObject();
      v397 = v484;
      v485 = v396;
      *(v396 + 16) = v979;
      *(v396 + 24) = v397;
      v398 = swift_allocObject();
      v399 = v485;
      v513 = v398;
      *(v398 + 16) = v980;
      *(v398 + 24) = v399;
      v514 = swift_allocObject();
      *(v514 + 16) = 0;
      v515 = swift_allocObject();
      *(v515 + 16) = v487;
      v400 = swift_allocObject();
      v401 = v490;
      v491 = v400;
      *(v400 + 16) = v981;
      *(v400 + 24) = v401;
      v402 = swift_allocObject();
      v403 = v491;
      v517 = v402;
      *(v402 + 16) = v982;
      *(v402 + 24) = v403;
      v519 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v516 = sub_1B0E46A48();
      v518 = v404;

      v405 = v493;
      v406 = v518;
      *v518 = v983;
      v406[1] = v405;

      v407 = v494;
      v408 = v518;
      v518[2] = v984;
      v408[3] = v407;

      v409 = v495;
      v410 = v518;
      v518[4] = v985;
      v410[5] = v409;

      v411 = v496;
      v412 = v518;
      v518[6] = v986;
      v412[7] = v411;

      v413 = v497;
      v414 = v518;
      v518[8] = v987;
      v414[9] = v413;

      v415 = v498;
      v416 = v518;
      v518[10] = v988;
      v416[11] = v415;

      v417 = v499;
      v418 = v518;
      v518[12] = v989;
      v418[13] = v417;

      v419 = v500;
      v420 = v518;
      v518[14] = v990;
      v420[15] = v419;

      v421 = v501;
      v422 = v518;
      v518[16] = v991;
      v422[17] = v421;

      v423 = v502;
      v424 = v518;
      v518[18] = v992;
      v424[19] = v423;

      v425 = v503;
      v426 = v518;
      v518[20] = v993;
      v426[21] = v425;

      v427 = v504;
      v428 = v518;
      v518[22] = v994;
      v428[23] = v427;

      v429 = v505;
      v430 = v518;
      v518[24] = v995;
      v430[25] = v429;

      v431 = v506;
      v432 = v518;
      v518[26] = v996;
      v432[27] = v431;

      v433 = v507;
      v434 = v518;
      v518[28] = v997;
      v434[29] = v433;

      v435 = v508;
      v436 = v518;
      v518[30] = v998;
      v436[31] = v435;

      v437 = v509;
      v438 = v518;
      v518[32] = v999;
      v438[33] = v437;

      v439 = v510;
      v440 = v518;
      v518[34] = v1000;
      v440[35] = v439;

      v441 = v511;
      v442 = v518;
      v518[36] = v1001;
      v442[37] = v441;

      v443 = v512;
      v444 = v518;
      v518[38] = v1002;
      v444[39] = v443;

      v445 = v513;
      v446 = v518;
      v518[40] = v1003;
      v446[41] = v445;

      v447 = v514;
      v448 = v518;
      v518[42] = v1004;
      v448[43] = v447;

      v449 = v515;
      v450 = v518;
      v518[44] = v1005;
      v450[45] = v449;

      v451 = v517;
      v452 = v518;
      v518[46] = v1006;
      v452[47] = v451;
      sub_1B0394964();

      if (os_log_type_enabled(v520, v521))
      {
        v453 = v463;
        v456 = sub_1B0E45D78();
        v455[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v457 = sub_1B03949A8(0);
        v458 = sub_1B03949A8(2);
        v459 = &v1078;
        v1078 = v456;
        v460 = &v1077;
        v1077 = v457;
        v461 = &v1076;
        v1076 = v458;
        sub_1B0394A48(3, &v1078);
        sub_1B0394A48(8, v459);
        v1074 = v983;
        v1075 = v493;
        sub_1B03949FC(&v1074, v459, v460, v461);
        v462 = v453;
        if (v453)
        {

          __break(1u);
        }

        else
        {
          v1074 = v984;
          v1075 = v494;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[24] = 0;
          v1074 = v985;
          v1075 = v495;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[23] = 0;
          v1074 = v986;
          v1075 = v496;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[22] = 0;
          v1074 = v987;
          v1075 = v497;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[21] = 0;
          v1074 = v988;
          v1075 = v498;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[20] = 0;
          v1074 = v989;
          v1075 = v499;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[19] = 0;
          v1074 = v990;
          v1075 = v500;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[18] = 0;
          v1074 = v991;
          v1075 = v501;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[17] = 0;
          v1074 = v992;
          v1075 = v502;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[16] = 0;
          v1074 = v993;
          v1075 = v503;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[15] = 0;
          v1074 = v994;
          v1075 = v504;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[14] = 0;
          v1074 = v995;
          v1075 = v505;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[13] = 0;
          v1074 = v996;
          v1075 = v506;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[12] = 0;
          v1074 = v997;
          v1075 = v507;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[11] = 0;
          v1074 = v998;
          v1075 = v508;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[10] = 0;
          v1074 = v999;
          v1075 = v509;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[9] = 0;
          v1074 = v1000;
          v1075 = v510;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[8] = 0;
          v1074 = v1001;
          v1075 = v511;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[7] = 0;
          v1074 = v1002;
          v1075 = v512;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[6] = 0;
          v1074 = v1003;
          v1075 = v513;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[5] = 0;
          v1074 = v1004;
          v1075 = v514;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[4] = 0;
          v1074 = v1005;
          v1075 = v515;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          v455[3] = 0;
          v1074 = v1006;
          v1075 = v517;
          sub_1B03949FC(&v1074, &v1078, &v1077, &v1076);
          _os_log_impl(&dword_1B0389000, v520, v521, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Invalid state for section [%{public}s] data for %u.", v456, 0x3Bu);
          sub_1B03998A8(v457);
          sub_1B03998A8(v458);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v520);
      (*(v1021 + 8))(v1024, v1020);
      v455[0] = v1060[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v454 = type metadata accessor for InProgressMessageDownload.Section();
      (*(*(v454 - 8) + 56))(v1039, 1);
      v455[1] = &v1080;
      v1080 = v455[0];
      v455[2] = &v1079;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();

      return sub_1B07AE888(v1064);
    }

    if ((*(v1044 + 48))(v1041, 1, v1042) == 1)
    {
      sub_1B07AEB1C(v1041);
      v823 = v1060[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AE9EC(v1064, v1039);
      v822 = type metadata accessor for InProgressMessageDownload.Section();
      v821 = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v822 - 8) + 56))(v1039, v821, 1);
      v824 = &v1073;
      v1073 = v823;
      v825 = &v1072;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
    }

    else
    {
      sub_1B07AC238(v1041, v1052);
      v828 = v1060[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07AC570(v1052, v1039);
      v827 = type metadata accessor for InProgressMessageDownload.Section();
      v826 = 1;
      swift_storeEnumTagMultiPayload();
      (*(*(v827 - 8) + 56))(v1039, 0, v826);
      v829 = &v1071;
      v1071 = v828;
      v830 = &v1070;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      sub_1B07AC2FC(v1052);
    }

    sub_1B07AE888(v1064);
    v820 = v831;
  }

  v715 = v820;
  v717 = v1060[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v716 = (v833 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v720 = &v1095;
  swift_beginAccess();
  v718 = *v716;
  v719 = &v1094;
  v1094 = v717;
  v721 = type metadata accessor for InProgressMessageDownload.Section();
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v719);
  swift_endAccess();
  if ((*(*(v721 - 8) + 48))(v1037, 1))
  {
    return sub_1B07ADE14(v1037);
  }

  sub_1B07AE118(v1037, v1035);
  v714 = swift_getEnumCaseMultiPayload();
  if (v714)
  {
    if (v714 != 1)
    {
      sub_1B0760B84(v1035);
      return sub_1B07ADE14(v1037);
    }

    v243 = v1026;
    sub_1B07AC238(v1035, v1048);
    v1112 = v1048;
    (*(v1021 + 16))(v243, v1058, v1020);
    sub_1B074B69C(v1058, v1019);
    sub_1B074B69C(v1019, v1017);
    sub_1B074E41C(v1019, v1015);
    v244 = (v1017 + *(v1013 + 20));
    v557 = *v244;
    v558 = *(v244 + 1);
    v559 = *(v244 + 1);
    v560 = *(v244 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1017);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v556 = 36;
    v583 = 7;
    v245 = swift_allocObject();
    v246 = v558;
    v247 = v559;
    v248 = v560;
    v566 = v245;
    *(v245 + 16) = v557;
    *(v245 + 20) = v246;
    *(v245 + 24) = v247;
    *(v245 + 32) = v248;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v249 = swift_allocObject();
    v250 = v558;
    v251 = v559;
    v252 = v560;
    v555 = v249;
    *(v249 + 16) = v557;
    *(v249 + 20) = v250;
    *(v249 + 24) = v251;
    *(v249 + 32) = v252;

    v582 = 32;
    v253 = swift_allocObject();
    v254 = v555;
    v570 = v253;
    *(v253 + 16) = v877;
    *(v253 + 24) = v254;
    sub_1B0394868();
    sub_1B0394868();

    v255 = swift_allocObject();
    v256 = v558;
    v257 = v559;
    v258 = v560;
    v259 = v255;
    v260 = v1015;
    v573 = v259;
    *(v259 + 16) = v557;
    *(v259 + 20) = v256;
    *(v259 + 24) = v257;
    *(v259 + 32) = v258;
    sub_1B074B764(v260);
    sub_1B07AC570(v1048, v1050);
    v563 = *(v1045 + 80);
    v561 = (v563 + 16) & ~v563;
    v562 = swift_allocObject();
    sub_1B07AC238(v1050, v562 + v561);

    v261 = swift_allocObject();
    v262 = v562;
    v575 = v261;
    *(v261 + 16) = v878;
    *(v261 + 24) = v262;

    v263 = swift_allocObject();
    v264 = v833;
    v578 = v263;
    *(v263 + 16) = v879;
    *(v263 + 24) = v264;

    sub_1B07AC570(v1048, v1050);
    v564 = (v563 + 16) & ~v563;
    v584 = swift_allocObject();
    sub_1B07AC238(v1050, v584 + v564);
    sub_1B07575C4();

    v616 = sub_1B0E43988();
    v617 = sub_1B0E458D8();
    v580 = 17;
    v586 = swift_allocObject();
    v568 = 16;
    *(v586 + 16) = 16;
    v587 = swift_allocObject();
    v577 = 4;
    *(v587 + 16) = 4;
    v265 = swift_allocObject();
    v565 = v265;
    *(v265 + 16) = v837;
    *(v265 + 24) = 0;
    v266 = swift_allocObject();
    v267 = v565;
    v588 = v266;
    *(v266 + 16) = v880;
    *(v266 + 24) = v267;
    v589 = swift_allocObject();
    *(v589 + 16) = 0;
    v590 = swift_allocObject();
    *(v590 + 16) = 1;
    v268 = swift_allocObject();
    v269 = v566;
    v567 = v268;
    *(v268 + 16) = v881;
    *(v268 + 24) = v269;
    v270 = swift_allocObject();
    v271 = v567;
    v591 = v270;
    *(v270 + 16) = v882;
    *(v270 + 24) = v271;
    v592 = swift_allocObject();
    *(v592 + 16) = v568;
    v593 = swift_allocObject();
    *(v593 + 16) = v577;
    v272 = swift_allocObject();
    v569 = v272;
    *(v272 + 16) = v841;
    *(v272 + 24) = 0;
    v273 = swift_allocObject();
    v274 = v569;
    v594 = v273;
    *(v273 + 16) = v883;
    *(v273 + 24) = v274;
    v595 = swift_allocObject();
    *(v595 + 16) = 0;
    v596 = swift_allocObject();
    *(v596 + 16) = v577;
    v275 = swift_allocObject();
    v276 = v570;
    v571 = v275;
    *(v275 + 16) = v884;
    *(v275 + 24) = v276;
    v277 = swift_allocObject();
    v278 = v571;
    v597 = v277;
    *(v277 + 16) = v885;
    *(v277 + 24) = v278;
    v598 = swift_allocObject();
    *(v598 + 16) = 112;
    v599 = swift_allocObject();
    v581 = 8;
    *(v599 + 16) = 8;
    v572 = swift_allocObject();
    *(v572 + 16) = v845;
    v279 = swift_allocObject();
    v280 = v572;
    v600 = v279;
    *(v279 + 16) = v886;
    *(v279 + 24) = v280;
    v601 = swift_allocObject();
    *(v601 + 16) = 37;
    v602 = swift_allocObject();
    *(v602 + 16) = v581;
    v281 = swift_allocObject();
    v282 = v573;
    v574 = v281;
    *(v281 + 16) = v887;
    *(v281 + 24) = v282;
    v283 = swift_allocObject();
    v284 = v574;
    v603 = v283;
    *(v283 + 16) = v888;
    *(v283 + 24) = v284;
    v604 = swift_allocObject();
    *(v604 + 16) = 34;
    v605 = swift_allocObject();
    *(v605 + 16) = v581;
    v285 = swift_allocObject();
    v286 = v575;
    v576 = v285;
    *(v285 + 16) = v889;
    *(v285 + 24) = v286;
    v287 = swift_allocObject();
    v288 = v576;
    v606 = v287;
    *(v287 + 16) = v890;
    *(v287 + 24) = v288;
    v607 = swift_allocObject();
    *(v607 + 16) = 0;
    v608 = swift_allocObject();
    *(v608 + 16) = v577;
    v289 = swift_allocObject();
    v290 = v578;
    v579 = v289;
    *(v289 + 16) = v891;
    *(v289 + 24) = v290;
    v291 = swift_allocObject();
    v292 = v579;
    v609 = v291;
    *(v291 + 16) = v892;
    *(v291 + 24) = v292;
    v610 = swift_allocObject();
    *(v610 + 16) = 0;
    v611 = swift_allocObject();
    *(v611 + 16) = v581;
    v293 = swift_allocObject();
    v294 = v584;
    v585 = v293;
    *(v293 + 16) = v893;
    *(v293 + 24) = v294;
    v295 = swift_allocObject();
    v296 = v585;
    v613 = v295;
    *(v295 + 16) = v894;
    *(v295 + 24) = v296;
    v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v612 = sub_1B0E46A48();
    v614 = v297;

    v298 = v586;
    v299 = v614;
    *v614 = v895;
    v299[1] = v298;

    v300 = v587;
    v301 = v614;
    v614[2] = v896;
    v301[3] = v300;

    v302 = v588;
    v303 = v614;
    v614[4] = v897;
    v303[5] = v302;

    v304 = v589;
    v305 = v614;
    v614[6] = v898;
    v305[7] = v304;

    v306 = v590;
    v307 = v614;
    v614[8] = v899;
    v307[9] = v306;

    v308 = v591;
    v309 = v614;
    v614[10] = v900;
    v309[11] = v308;

    v310 = v592;
    v311 = v614;
    v614[12] = v901;
    v311[13] = v310;

    v312 = v593;
    v313 = v614;
    v614[14] = v902;
    v313[15] = v312;

    v314 = v594;
    v315 = v614;
    v614[16] = v903;
    v315[17] = v314;

    v316 = v595;
    v317 = v614;
    v614[18] = v904;
    v317[19] = v316;

    v318 = v596;
    v319 = v614;
    v614[20] = v905;
    v319[21] = v318;

    v320 = v597;
    v321 = v614;
    v614[22] = v906;
    v321[23] = v320;

    v322 = v598;
    v323 = v614;
    v614[24] = v907;
    v323[25] = v322;

    v324 = v599;
    v325 = v614;
    v614[26] = v908;
    v325[27] = v324;

    v326 = v600;
    v327 = v614;
    v614[28] = v909;
    v327[29] = v326;

    v328 = v601;
    v329 = v614;
    v614[30] = v910;
    v329[31] = v328;

    v330 = v602;
    v331 = v614;
    v614[32] = v911;
    v331[33] = v330;

    v332 = v603;
    v333 = v614;
    v614[34] = v912;
    v333[35] = v332;

    v334 = v604;
    v335 = v614;
    v614[36] = v913;
    v335[37] = v334;

    v336 = v605;
    v337 = v614;
    v614[38] = v914;
    v337[39] = v336;

    v338 = v606;
    v339 = v614;
    v614[40] = v915;
    v339[41] = v338;

    v340 = v607;
    v341 = v614;
    v614[42] = v916;
    v341[43] = v340;

    v342 = v608;
    v343 = v614;
    v614[44] = v917;
    v343[45] = v342;

    v344 = v609;
    v345 = v614;
    v614[46] = v918;
    v345[47] = v344;

    v346 = v610;
    v347 = v614;
    v614[48] = v919;
    v347[49] = v346;

    v348 = v611;
    v349 = v614;
    v614[50] = v920;
    v349[51] = v348;

    v350 = v613;
    v351 = v614;
    v614[52] = v921;
    v351[53] = v350;
    sub_1B0394964();

    if (os_log_type_enabled(v616, v617))
    {
      v352 = v715;
      v548 = sub_1B0E45D78();
      v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v549 = sub_1B03949A8(0);
      v550 = sub_1B03949A8(2);
      v551 = &v1093;
      v1093 = v548;
      v552 = &v1092;
      v1092 = v549;
      v553 = &v1091;
      v1091 = v550;
      sub_1B0394A48(3, &v1093);
      sub_1B0394A48(9, v551);
      v1089 = v895;
      v1090 = v586;
      sub_1B03949FC(&v1089, v551, v552, v553);
      v554 = v352;
      if (v352)
      {

        __break(1u);
      }

      else
      {
        v1089 = v896;
        v1090 = v587;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v546 = 0;
        v1089 = v897;
        v1090 = v588;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v545 = 0;
        v1089 = v898;
        v1090 = v589;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v544 = 0;
        v1089 = v899;
        v1090 = v590;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v543 = 0;
        v1089 = v900;
        v1090 = v591;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v542 = 0;
        v1089 = v901;
        v1090 = v592;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v541 = 0;
        v1089 = v902;
        v1090 = v593;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v540 = 0;
        v1089 = v903;
        v1090 = v594;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v539 = 0;
        v1089 = v904;
        v1090 = v595;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v538 = 0;
        v1089 = v905;
        v1090 = v596;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v537 = 0;
        v1089 = v906;
        v1090 = v597;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v536 = 0;
        v1089 = v907;
        v1090 = v598;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v535 = 0;
        v1089 = v908;
        v1090 = v599;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v534 = 0;
        v1089 = v909;
        v1090 = v600;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v533 = 0;
        v1089 = v910;
        v1090 = v601;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v532 = 0;
        v1089 = v911;
        v1090 = v602;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v531 = 0;
        v1089 = v912;
        v1090 = v603;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v530 = 0;
        v1089 = v913;
        v1090 = v604;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v529 = 0;
        v1089 = v914;
        v1090 = v605;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v528 = 0;
        v1089 = v915;
        v1090 = v606;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v527 = 0;
        v1089 = v916;
        v1090 = v607;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v526 = 0;
        v1089 = v917;
        v1090 = v608;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v525 = 0;
        v1089 = v918;
        v1090 = v609;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v524 = 0;
        v1089 = v919;
        v1090 = v610;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v523 = 0;
        v1089 = v920;
        v1090 = v611;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        v522 = 0;
        v1089 = v921;
        v1090 = v613;
        sub_1B03949FC(&v1089, &v1093, &v1092, &v1091);
        _os_log_impl(&dword_1B0389000, v616, v617, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Completed section [%{public}s] for UID %u (%{iec-bytes}ld) bytes.", v548, 0x45u);
        sub_1B03998A8(v549);
        sub_1B03998A8(v550);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v616);
    (*(v1021 + 8))(v1026, v1020);
    sub_1B07AC2FC(v1048);
    return sub_1B07ADE14(v1037);
  }

  else
  {
    (*(v1021 + 16))(v1028, v1058, v1020);
    sub_1B074B69C(v1058, v1019);
    sub_1B074B69C(v1019, v1017);
    sub_1B074E41C(v1019, v1015);
    v134 = (v1017 + *(v1013 + 20));
    v653 = *v134;
    v654 = *(v134 + 1);
    v655 = *(v134 + 1);
    v656 = *(v134 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1017);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v652 = 36;
    v679 = 7;
    v135 = swift_allocObject();
    v136 = v654;
    v137 = v655;
    v138 = v656;
    v662 = v135;
    *(v135 + 16) = v653;
    *(v135 + 20) = v136;
    *(v135 + 24) = v137;
    *(v135 + 32) = v138;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v139 = swift_allocObject();
    v140 = v654;
    v141 = v655;
    v142 = v656;
    v651 = v139;
    *(v139 + 16) = v653;
    *(v139 + 20) = v140;
    *(v139 + 24) = v141;
    *(v139 + 32) = v142;

    v678 = 32;
    v143 = swift_allocObject();
    v144 = v651;
    v666 = v143;
    *(v143 + 16) = v922;
    *(v143 + 24) = v144;
    sub_1B0394868();
    sub_1B0394868();

    v145 = swift_allocObject();
    v146 = v654;
    v147 = v655;
    v148 = v656;
    v149 = v145;
    v150 = v1015;
    v669 = v149;
    *(v149 + 16) = v653;
    *(v149 + 20) = v146;
    *(v149 + 24) = v147;
    *(v149 + 32) = v148;
    sub_1B074B764(v150);
    sub_1B07AD790(v1060, v1012);
    v658 = *(v1009 + 80);
    v657 = (v658 + 16) & ~v658;
    v671 = swift_allocObject();
    sub_1B07ADB58(v1012, v671 + v657);
    sub_1B07575C4();

    sub_1B07AD790(v1060, v1012);
    v659 = (v658 + 16) & ~v658;
    v660 = swift_allocObject();
    sub_1B07ADB58(v1012, v660 + v659);

    v151 = swift_allocObject();
    v152 = v660;
    v674 = v151;
    *(v151 + 16) = v923;
    *(v151 + 24) = v152;

    v153 = swift_allocObject();
    v154 = v833;
    v680 = v153;
    *(v153 + 16) = v924;
    *(v153 + 24) = v154;

    v712 = sub_1B0E43988();
    v713 = sub_1B0E458D8();
    v676 = 17;
    v682 = swift_allocObject();
    v664 = 16;
    *(v682 + 16) = 16;
    v683 = swift_allocObject();
    v677 = 4;
    *(v683 + 16) = 4;
    v155 = swift_allocObject();
    v661 = v155;
    *(v155 + 16) = v837;
    *(v155 + 24) = 0;
    v156 = swift_allocObject();
    v157 = v661;
    v684 = v156;
    *(v156 + 16) = v925;
    *(v156 + 24) = v157;
    v685 = swift_allocObject();
    *(v685 + 16) = 0;
    v686 = swift_allocObject();
    *(v686 + 16) = 1;
    v158 = swift_allocObject();
    v159 = v662;
    v663 = v158;
    *(v158 + 16) = v926;
    *(v158 + 24) = v159;
    v160 = swift_allocObject();
    v161 = v663;
    v687 = v160;
    *(v160 + 16) = v927;
    *(v160 + 24) = v161;
    v688 = swift_allocObject();
    *(v688 + 16) = v664;
    v689 = swift_allocObject();
    *(v689 + 16) = v677;
    v162 = swift_allocObject();
    v665 = v162;
    *(v162 + 16) = v841;
    *(v162 + 24) = 0;
    v163 = swift_allocObject();
    v164 = v665;
    v690 = v163;
    *(v163 + 16) = v928;
    *(v163 + 24) = v164;
    v691 = swift_allocObject();
    *(v691 + 16) = 0;
    v692 = swift_allocObject();
    *(v692 + 16) = v677;
    v165 = swift_allocObject();
    v166 = v666;
    v667 = v165;
    *(v165 + 16) = v929;
    *(v165 + 24) = v166;
    v167 = swift_allocObject();
    v168 = v667;
    v693 = v167;
    *(v167 + 16) = v930;
    *(v167 + 24) = v168;
    v694 = swift_allocObject();
    *(v694 + 16) = 112;
    v695 = swift_allocObject();
    v673 = 8;
    *(v695 + 16) = 8;
    v668 = swift_allocObject();
    *(v668 + 16) = v845;
    v169 = swift_allocObject();
    v170 = v668;
    v696 = v169;
    *(v169 + 16) = v931;
    *(v169 + 24) = v170;
    v697 = swift_allocObject();
    *(v697 + 16) = 37;
    v698 = swift_allocObject();
    *(v698 + 16) = v673;
    v171 = swift_allocObject();
    v172 = v669;
    v670 = v171;
    *(v171 + 16) = v932;
    *(v171 + 24) = v172;
    v173 = swift_allocObject();
    v174 = v670;
    v699 = v173;
    *(v173 + 16) = v933;
    *(v173 + 24) = v174;
    v700 = swift_allocObject();
    *(v700 + 16) = 0;
    v701 = swift_allocObject();
    *(v701 + 16) = v673;
    v175 = swift_allocObject();
    v176 = v671;
    v672 = v175;
    *(v175 + 16) = v934;
    *(v175 + 24) = v176;
    v177 = swift_allocObject();
    v178 = v672;
    v702 = v177;
    *(v177 + 16) = v935;
    *(v177 + 24) = v178;
    v703 = swift_allocObject();
    *(v703 + 16) = 34;
    v704 = swift_allocObject();
    *(v704 + 16) = v673;
    v179 = swift_allocObject();
    v180 = v674;
    v675 = v179;
    *(v179 + 16) = v936;
    *(v179 + 24) = v180;
    v181 = swift_allocObject();
    v182 = v675;
    v705 = v181;
    *(v181 + 16) = v937;
    *(v181 + 24) = v182;
    v706 = swift_allocObject();
    *(v706 + 16) = 0;
    v707 = swift_allocObject();
    *(v707 + 16) = v677;
    v183 = swift_allocObject();
    v184 = v680;
    v681 = v183;
    *(v183 + 16) = v938;
    *(v183 + 24) = v184;
    v185 = swift_allocObject();
    v186 = v681;
    v709 = v185;
    *(v185 + 16) = v939;
    *(v185 + 24) = v186;
    v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v708 = sub_1B0E46A48();
    v710 = v187;

    v188 = v682;
    v189 = v710;
    *v710 = v940;
    v189[1] = v188;

    v190 = v683;
    v191 = v710;
    v710[2] = v941;
    v191[3] = v190;

    v192 = v684;
    v193 = v710;
    v710[4] = v942;
    v193[5] = v192;

    v194 = v685;
    v195 = v710;
    v710[6] = v943;
    v195[7] = v194;

    v196 = v686;
    v197 = v710;
    v710[8] = v944;
    v197[9] = v196;

    v198 = v687;
    v199 = v710;
    v710[10] = v945;
    v199[11] = v198;

    v200 = v688;
    v201 = v710;
    v710[12] = v946;
    v201[13] = v200;

    v202 = v689;
    v203 = v710;
    v710[14] = v947;
    v203[15] = v202;

    v204 = v690;
    v205 = v710;
    v710[16] = v948;
    v205[17] = v204;

    v206 = v691;
    v207 = v710;
    v710[18] = v949;
    v207[19] = v206;

    v208 = v692;
    v209 = v710;
    v710[20] = v950;
    v209[21] = v208;

    v210 = v693;
    v211 = v710;
    v710[22] = v951;
    v211[23] = v210;

    v212 = v694;
    v213 = v710;
    v710[24] = v952;
    v213[25] = v212;

    v214 = v695;
    v215 = v710;
    v710[26] = v953;
    v215[27] = v214;

    v216 = v696;
    v217 = v710;
    v710[28] = v954;
    v217[29] = v216;

    v218 = v697;
    v219 = v710;
    v710[30] = v955;
    v219[31] = v218;

    v220 = v698;
    v221 = v710;
    v710[32] = v956;
    v221[33] = v220;

    v222 = v699;
    v223 = v710;
    v710[34] = v957;
    v223[35] = v222;

    v224 = v700;
    v225 = v710;
    v710[36] = v958;
    v225[37] = v224;

    v226 = v701;
    v227 = v710;
    v710[38] = v959;
    v227[39] = v226;

    v228 = v702;
    v229 = v710;
    v710[40] = v960;
    v229[41] = v228;

    v230 = v703;
    v231 = v710;
    v710[42] = v961;
    v231[43] = v230;

    v232 = v704;
    v233 = v710;
    v710[44] = v962;
    v233[45] = v232;

    v234 = v705;
    v235 = v710;
    v710[46] = v963;
    v235[47] = v234;

    v236 = v706;
    v237 = v710;
    v710[48] = v964;
    v237[49] = v236;

    v238 = v707;
    v239 = v710;
    v710[50] = v965;
    v239[51] = v238;

    v240 = v709;
    v241 = v710;
    v710[52] = v966;
    v241[53] = v240;
    sub_1B0394964();

    if (os_log_type_enabled(v712, v713))
    {
      v242 = v715;
      v644 = sub_1B0E45D78();
      v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v645 = sub_1B03949A8(0);
      v646 = sub_1B03949A8(2);
      v647 = &v1088;
      v1088 = v644;
      v648 = &v1087;
      v1087 = v645;
      v649 = &v1086;
      v1086 = v646;
      sub_1B0394A48(3, &v1088);
      sub_1B0394A48(9, v647);
      v1084 = v940;
      v1085 = v682;
      sub_1B03949FC(&v1084, v647, v648, v649);
      v650 = v242;
      if (v242)
      {

        __break(1u);
      }

      else
      {
        v1084 = v941;
        v1085 = v683;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v642 = 0;
        v1084 = v942;
        v1085 = v684;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v641 = 0;
        v1084 = v943;
        v1085 = v685;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v640 = 0;
        v1084 = v944;
        v1085 = v686;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v639 = 0;
        v1084 = v945;
        v1085 = v687;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v638 = 0;
        v1084 = v946;
        v1085 = v688;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v637 = 0;
        v1084 = v947;
        v1085 = v689;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v636 = 0;
        v1084 = v948;
        v1085 = v690;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v635 = 0;
        v1084 = v949;
        v1085 = v691;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v634 = 0;
        v1084 = v950;
        v1085 = v692;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v633 = 0;
        v1084 = v951;
        v1085 = v693;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v632 = 0;
        v1084 = v952;
        v1085 = v694;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v631 = 0;
        v1084 = v953;
        v1085 = v695;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v630 = 0;
        v1084 = v954;
        v1085 = v696;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v629 = 0;
        v1084 = v955;
        v1085 = v697;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v628 = 0;
        v1084 = v956;
        v1085 = v698;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v627 = 0;
        v1084 = v957;
        v1085 = v699;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v626 = 0;
        v1084 = v958;
        v1085 = v700;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v625 = 0;
        v1084 = v959;
        v1085 = v701;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v624 = 0;
        v1084 = v960;
        v1085 = v702;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v623 = 0;
        v1084 = v961;
        v1085 = v703;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v622 = 0;
        v1084 = v962;
        v1085 = v704;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v621 = 0;
        v1084 = v963;
        v1085 = v705;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v620 = 0;
        v1084 = v964;
        v1085 = v706;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v619 = 0;
        v1084 = v965;
        v1085 = v707;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        v618 = 0;
        v1084 = v966;
        v1085 = v709;
        sub_1B03949FC(&v1084, &v1088, &v1087, &v1086);
        _os_log_impl(&dword_1B0389000, v712, v713, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Added %{iec-bytes}ld to section [%{public}s] for UID %u", v644, 0x45u);
        sub_1B03998A8(v645);
        sub_1B03998A8(v646);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v712);
    (*(v1021 + 8))(v1028, v1020);
    sub_1B07AE888(v1035);
    return sub_1B07ADE14(v1037);
  }
}

uint64_t sub_1B078EDE4(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void), uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v330 = a1;
  v324 = a2;
  v325 = a3;
  v326 = a4;
  v327 = a5;
  v328 = a6;
  v329 = a7;
  v249 = sub_1B074E050;
  v250 = sub_1B07ADC58;
  v251 = sub_1B07ADCBC;
  v252 = sub_1B0394C30;
  v253 = sub_1B0394C24;
  v254 = sub_1B074DFFC;
  v255 = sub_1B039BA88;
  v256 = sub_1B039BB94;
  v257 = sub_1B0394C24;
  v258 = sub_1B039BBA0;
  v259 = sub_1B039BC08;
  v260 = sub_1B06BA324;
  v261 = sub_1B074E0E4;
  v262 = sub_1B039BCF8;
  v263 = sub_1B07AD0A4;
  v264 = sub_1B039BCF8;
  v265 = sub_1B07AB020;
  v266 = sub_1B039BC08;
  v267 = sub_1B07AECE8;
  v268 = sub_1B03B0DF8;
  v269 = sub_1B0398F5C;
  v270 = sub_1B0398F5C;
  v271 = sub_1B0399178;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B039BA94;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B0399178;
  v278 = sub_1B0398F5C;
  v279 = sub_1B0398F5C;
  v280 = sub_1B03991EC;
  v281 = sub_1B0398F5C;
  v282 = sub_1B0398F5C;
  v283 = sub_1B03993BC;
  v284 = sub_1B0398F5C;
  v285 = sub_1B0398F5C;
  v286 = sub_1B039BCEC;
  v287 = sub_1B0398F5C;
  v288 = sub_1B0398F5C;
  v289 = sub_1B039BCEC;
  v290 = sub_1B0398F5C;
  v291 = sub_1B0398F5C;
  v292 = sub_1B03991EC;
  v293 = sub_1B0398F5C;
  v294 = sub_1B0398F5C;
  v295 = sub_1B0399260;
  v352 = 0;
  v350 = 0;
  v351 = 0;
  v348 = 0;
  v349 = 0;
  v347 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v296 = 0;
  v335 = 0;
  v315 = 0;
  v297 = type metadata accessor for MessageSectionData(0);
  v298 = *(v297 - 8);
  v299 = v298;
  v300 = *(v298 + 64);
  v301 = (v300 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v302 = (&v132 - v301);
  v303 = _s6LoggerVMa_1();
  v304 = (*(*(v303 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v315);
  v305 = &v132 - v304;
  v306 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v307 = &v132 - v306;
  v308 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v309 = &v132 - v308;
  v310 = sub_1B0E439A8();
  v311 = *(v310 - 8);
  v312 = v310 - 8;
  v313 = (*(v311 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v315);
  v314 = &v132 - v313;
  v316 = sub_1B0E443C8();
  v317 = *(v316 - 8);
  v318 = v316 - 8;
  v319 = (*(v317 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v315);
  v320 = &v132 - v319;
  v321 = type metadata accessor for MessageSectionData.Segment(v12);
  v322 = (*(*(v321 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v321);
  v323 = &v132 - v322;
  v331 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v330);
  v332 = (&v132 - v331);
  v352 = v13;
  v350 = v14;
  v351 = v15;
  v348 = v16;
  v349 = v17;
  v347 = v18;
  v346 = v19;
  v345 = v7;
  v333 = *(v13 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v334 = sub_1B0791E2C(v333);

  if (v334)
  {
    v248 = v334;
    v246 = v334;
    v335 = v334;

    v344 = v246;

    v247 = v246;
  }

  else
  {
    v243 = *(v330 + 3);
    v244 = v330[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v245 = sub_1B077A6CC(v243, v244, v324, v325, v328, v329);

    result = v245;
    if (!v245)
    {
      return result;
    }

    v242 = v245;
    v241 = v245;
    v343 = v245;

    v344 = v241;
    v238 = v330[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *v332 = v241;
    v237 = type metadata accessor for InProgressMessageDownload.Section();
    swift_storeEnumTagMultiPayload();
    (*(*(v237 - 8) + 56))(v332, 0, 1);
    v239 = &v342;
    v342 = v238;
    v240 = &v341;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
    sub_1B0E44788();
    swift_endAccess();

    v247 = v241;
  }

  v235 = v247;
  sub_1B07AB12C(v330 + *(v297 + 28), v323);
  (*(v317 + 16))(v320, v323, v316);
  sub_1B07AB694(v323);
  sub_1B0754C0C(v320, v329);
  (*(v317 + 8))(v320, v316);

  sub_1B07AB12C(v330 + *(v297 + 28), v323);
  v236 = *(v323 + *(v321 + 20));
  sub_1B07AB694(v323);
  if (v236)
  {
    v234 = v344;

    sub_1B0757864(v329);
  }

  (*(v311 + 16))(v314, v329, v310);
  sub_1B074B69C(v329, v309);
  sub_1B074B69C(v309, v307);
  sub_1B074E41C(v309, v305);
  v21 = (v307 + *(v303 + 20));
  v172 = *v21;
  v173 = *(v21 + 1);
  v174 = *(v21 + 1);
  v175 = *(v21 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v307);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v171 = 36;
  v200 = 7;
  v22 = swift_allocObject();
  v23 = v173;
  v24 = v174;
  v25 = v175;
  v182 = v22;
  *(v22 + 16) = v172;
  *(v22 + 20) = v23;
  *(v22 + 24) = v24;
  *(v22 + 32) = v25;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = swift_allocObject();
  v27 = v173;
  v28 = v174;
  v29 = v175;
  v170 = v26;
  *(v26 + 16) = v172;
  *(v26 + 20) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v29;

  v199 = 32;
  v30 = swift_allocObject();
  v31 = v170;
  v186 = v30;
  *(v30 + 16) = v249;
  *(v30 + 24) = v31;
  sub_1B0394868();
  sub_1B0394868();

  v32 = swift_allocObject();
  v33 = v173;
  v34 = v174;
  v35 = v175;
  v36 = v32;
  v37 = v305;
  v189 = v36;
  *(v36 + 16) = v172;
  *(v36 + 20) = v33;
  *(v36 + 24) = v34;
  *(v36 + 32) = v35;
  sub_1B074B764(v37);
  sub_1B07AD790(v330, v302);
  v178 = *(v299 + 80);
  v176 = (v178 + 16) & ~v178;
  v177 = swift_allocObject();
  sub_1B07ADB58(v302, v177 + v176);

  v38 = swift_allocObject();
  v39 = v177;
  v191 = v38;
  *(v38 + 16) = v250;
  *(v38 + 24) = v39;

  sub_1B07AD790(v330, v302);
  v179 = (v178 + 16) & ~v178;
  v180 = swift_allocObject();
  sub_1B07ADB58(v302, v180 + v179);

  v40 = swift_allocObject();
  v41 = v180;
  v194 = v40;
  *(v40 + 16) = v251;
  *(v40 + 24) = v41;

  v198 = v344;

  sub_1B07575C4();

  v232 = sub_1B0E43988();
  v233 = sub_1B0E458D8();
  v196 = 17;
  v202 = swift_allocObject();
  v184 = 16;
  *(v202 + 16) = 16;
  v203 = swift_allocObject();
  v193 = 4;
  *(v203 + 16) = 4;
  v42 = swift_allocObject();
  v181 = v42;
  *(v42 + 16) = v252;
  *(v42 + 24) = 0;
  v43 = swift_allocObject();
  v44 = v181;
  v204 = v43;
  *(v43 + 16) = v253;
  *(v43 + 24) = v44;
  v205 = swift_allocObject();
  *(v205 + 16) = 0;
  v206 = swift_allocObject();
  *(v206 + 16) = 1;
  v45 = swift_allocObject();
  v46 = v182;
  v183 = v45;
  *(v45 + 16) = v254;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v183;
  v207 = v47;
  *(v47 + 16) = v255;
  *(v47 + 24) = v48;
  v208 = swift_allocObject();
  *(v208 + 16) = v184;
  v209 = swift_allocObject();
  *(v209 + 16) = v193;
  v49 = swift_allocObject();
  v185 = v49;
  *(v49 + 16) = v256;
  *(v49 + 24) = 0;
  v50 = swift_allocObject();
  v51 = v185;
  v210 = v50;
  *(v50 + 16) = v257;
  *(v50 + 24) = v51;
  v211 = swift_allocObject();
  *(v211 + 16) = 0;
  v212 = swift_allocObject();
  *(v212 + 16) = v193;
  v52 = swift_allocObject();
  v53 = v186;
  v187 = v52;
  *(v52 + 16) = v258;
  *(v52 + 24) = v53;
  v54 = swift_allocObject();
  v55 = v187;
  v213 = v54;
  *(v54 + 16) = v259;
  *(v54 + 24) = v55;
  v214 = swift_allocObject();
  *(v214 + 16) = 112;
  v215 = swift_allocObject();
  v197 = 8;
  *(v215 + 16) = 8;
  v188 = swift_allocObject();
  *(v188 + 16) = 0x786F626C69616DLL;
  v56 = swift_allocObject();
  v57 = v188;
  v216 = v56;
  *(v56 + 16) = v260;
  *(v56 + 24) = v57;
  v217 = swift_allocObject();
  *(v217 + 16) = 37;
  v218 = swift_allocObject();
  *(v218 + 16) = v197;
  v58 = swift_allocObject();
  v59 = v189;
  v190 = v58;
  *(v58 + 16) = v261;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v190;
  v219 = v60;
  *(v60 + 16) = v262;
  *(v60 + 24) = v61;
  v220 = swift_allocObject();
  *(v220 + 16) = 34;
  v221 = swift_allocObject();
  *(v221 + 16) = v197;
  v62 = swift_allocObject();
  v63 = v191;
  v192 = v62;
  *(v62 + 16) = v263;
  *(v62 + 24) = v63;
  v64 = swift_allocObject();
  v65 = v192;
  v222 = v64;
  *(v64 + 16) = v264;
  *(v64 + 24) = v65;
  v223 = swift_allocObject();
  *(v223 + 16) = 0;
  v224 = swift_allocObject();
  *(v224 + 16) = v193;
  v66 = swift_allocObject();
  v67 = v194;
  v195 = v66;
  *(v66 + 16) = v265;
  *(v66 + 24) = v67;
  v68 = swift_allocObject();
  v69 = v195;
  v225 = v68;
  *(v68 + 16) = v266;
  *(v68 + 24) = v69;
  v226 = swift_allocObject();
  *(v226 + 16) = 0;
  v227 = swift_allocObject();
  *(v227 + 16) = v197;
  v70 = swift_allocObject();
  v71 = v198;
  v201 = v70;
  *(v70 + 16) = v267;
  *(v70 + 24) = v71;
  v72 = swift_allocObject();
  v73 = v201;
  v229 = v72;
  *(v72 + 16) = v268;
  *(v72 + 24) = v73;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v228 = sub_1B0E46A48();
  v230 = v74;

  v75 = v202;
  v76 = v230;
  *v230 = v269;
  v76[1] = v75;

  v77 = v203;
  v78 = v230;
  v230[2] = v270;
  v78[3] = v77;

  v79 = v204;
  v80 = v230;
  v230[4] = v271;
  v80[5] = v79;

  v81 = v205;
  v82 = v230;
  v230[6] = v272;
  v82[7] = v81;

  v83 = v206;
  v84 = v230;
  v230[8] = v273;
  v84[9] = v83;

  v85 = v207;
  v86 = v230;
  v230[10] = v274;
  v86[11] = v85;

  v87 = v208;
  v88 = v230;
  v230[12] = v275;
  v88[13] = v87;

  v89 = v209;
  v90 = v230;
  v230[14] = v276;
  v90[15] = v89;

  v91 = v210;
  v92 = v230;
  v230[16] = v277;
  v92[17] = v91;

  v93 = v211;
  v94 = v230;
  v230[18] = v278;
  v94[19] = v93;

  v95 = v212;
  v96 = v230;
  v230[20] = v279;
  v96[21] = v95;

  v97 = v213;
  v98 = v230;
  v230[22] = v280;
  v98[23] = v97;

  v99 = v214;
  v100 = v230;
  v230[24] = v281;
  v100[25] = v99;

  v101 = v215;
  v102 = v230;
  v230[26] = v282;
  v102[27] = v101;

  v103 = v216;
  v104 = v230;
  v230[28] = v283;
  v104[29] = v103;

  v105 = v217;
  v106 = v230;
  v230[30] = v284;
  v106[31] = v105;

  v107 = v218;
  v108 = v230;
  v230[32] = v285;
  v108[33] = v107;

  v109 = v219;
  v110 = v230;
  v230[34] = v286;
  v110[35] = v109;

  v111 = v220;
  v112 = v230;
  v230[36] = v287;
  v112[37] = v111;

  v113 = v221;
  v114 = v230;
  v230[38] = v288;
  v114[39] = v113;

  v115 = v222;
  v116 = v230;
  v230[40] = v289;
  v116[41] = v115;

  v117 = v223;
  v118 = v230;
  v230[42] = v290;
  v118[43] = v117;

  v119 = v224;
  v120 = v230;
  v230[44] = v291;
  v120[45] = v119;

  v121 = v225;
  v122 = v230;
  v230[46] = v292;
  v122[47] = v121;

  v123 = v226;
  v124 = v230;
  v230[48] = v293;
  v124[49] = v123;

  v125 = v227;
  v126 = v230;
  v230[50] = v294;
  v126[51] = v125;

  v127 = v229;
  v128 = v230;
  v230[52] = v295;
  v128[53] = v127;
  sub_1B0394964();

  if (os_log_type_enabled(v232, v233))
  {
    v129 = v296;
    v163 = sub_1B0E45D78();
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v164 = sub_1B03949A8(0);
    v165 = sub_1B03949A8(2);
    v166 = &v340;
    v340 = v163;
    v167 = &v339;
    v339 = v164;
    v168 = &v338;
    v338 = v165;
    sub_1B0394A48(3, &v340);
    sub_1B0394A48(9, v166);
    v336 = v269;
    v337 = v202;
    sub_1B03949FC(&v336, v166, v167, v168);
    v169 = v129;
    if (v129)
    {

      __break(1u);
    }

    else
    {
      v336 = v270;
      v337 = v203;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v161 = 0;
      v336 = v271;
      v337 = v204;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v160 = 0;
      v336 = v272;
      v337 = v205;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v159 = 0;
      v336 = v273;
      v337 = v206;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v158 = 0;
      v336 = v274;
      v337 = v207;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v157 = 0;
      v336 = v275;
      v337 = v208;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v156 = 0;
      v336 = v276;
      v337 = v209;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v155 = 0;
      v336 = v277;
      v337 = v210;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v154 = 0;
      v336 = v278;
      v337 = v211;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v153 = 0;
      v336 = v279;
      v337 = v212;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v152 = 0;
      v336 = v280;
      v337 = v213;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v151 = 0;
      v336 = v281;
      v337 = v214;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v150 = 0;
      v336 = v282;
      v337 = v215;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v149 = 0;
      v336 = v283;
      v337 = v216;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v148 = 0;
      v336 = v284;
      v337 = v217;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v147 = 0;
      v336 = v285;
      v337 = v218;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v146 = 0;
      v336 = v286;
      v337 = v219;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v145 = 0;
      v336 = v287;
      v337 = v220;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v144 = 0;
      v336 = v288;
      v337 = v221;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v143 = 0;
      v336 = v289;
      v337 = v222;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v142 = 0;
      v336 = v290;
      v337 = v223;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v141 = 0;
      v336 = v291;
      v337 = v224;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v140 = 0;
      v336 = v292;
      v337 = v225;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v139 = 0;
      v336 = v293;
      v337 = v226;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v138 = 0;
      v336 = v294;
      v337 = v227;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      v137 = 0;
      v336 = v295;
      v337 = v229;
      sub_1B03949FC(&v336, &v340, &v339, &v338);
      _os_log_impl(&dword_1B0389000, v232, v233, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Attachment [%{public}s], UID %u: %{iec-bytes}ld bytes downloaded.", v163, 0x45u);
      sub_1B03998A8(v164);
      sub_1B03998A8(v165);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v232);
  (*(v311 + 8))(v314, v310);
  v136 = v330[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v133 = sub_1B0792070();
  v134 = v130;
  v135 = v131;

  v326(v136, v133, v134, v135 & 1);
}

uint64_t sub_1B0791AC0(uint64_t a1)
{
  v21 = a1;
  v41 = 0;
  v40 = 0;
  v22 = type metadata accessor for MessageSectionData.Segment(0);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v5 - v23;
  v41 = MEMORY[0x1EEE9AC00](v21);
  v40 = v1;
  v25 = (v1 + 24);
  v26 = &v38;
  swift_beginAccess();
  v27 = __dst;
  v28 = 177;
  memcpy(__dst, v25, 0xB1uLL);
  sub_1B075DC38(__dst, v37);
  swift_endAccess();
  v29 = v36;
  memcpy(v36, v27, v28);
  if (sub_1B075FACC(v29) == 1)
  {
    v2 = type metadata accessor for MessageSectionData(0);
    sub_1B07AB12C(v21 + *(v2 + 28), v24);
    v3 = (v24 + *(v22 + 24));
    v17 = v34;
    v18 = 177;
    memcpy(v34, v3, 0xB1uLL);
    sub_1B07AB440(v34, v33);
    sub_1B07AB694(v24);
    v19 = v35;
    memcpy(v35, v17, v18);
    if (sub_1B07AB810(v19) == 1)
    {
      sub_1B075FEBC(v39);
    }

    else
    {
      v16 = v35;
      sub_1B075DC38(v35, v30);
      sub_1B075E728(v16);
      memcpy(v39, v16, 0xB1uLL);
    }

    if (sub_1B075FACC(v36) != 1)
    {
      sub_1B075E728(v36);
    }
  }

  else
  {
    v20 = v39;
    memcpy(v39, v36, 0xB1uLL);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v39);
  }

  v13 = v31;
  v14 = 177;
  memcpy(v31, v39, 0xB1uLL);
  v15 = v32;
  memcpy(v32, v31, 0xB1uLL);
  if (sub_1B075FACC(v32) == 1)
  {
    return 100000;
  }

  v11 = 177;
  memcpy(v45, v32, sizeof(v45));
  v9 = *(v21 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = v42;
  BodyStructure.find(_:)(v9, v42);

  v12 = v43;
  memcpy(v43, v10, v11);
  if (sub_1B075FACC(v12) == 1)
  {
    sub_1B075E648(v32);
    return 100000;
  }

  v6 = v44;
  memcpy(v44, v43, 0xB1uLL);
  v7 = sub_1B0783E20();
  sub_1B075E648(v6);
  sub_1B075E648(v32);
  return v7;
}

uint64_t sub_1B0791DF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0791E2C(uint64_t a1)
{
  v7 = a1;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = (&v3 - v5);
  v15 = MEMORY[0x1EEE9AC00](v7);
  v14 = v1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = (v1 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v8 = *v6;
  v9 = &v13;
  v13 = v7;
  v10 = type metadata accessor for InProgressMessageDownload.Section();
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v9);
  if ((*(*(v10 - 8) + 48))(v11, 1) == 1)
  {
    sub_1B07ADE14(v11);
    swift_endAccess();
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B0760B84(v11);
    swift_endAccess();
    return 0;
  }

  v3 = *v11;
  v12 = v3;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B0791FFC(uint64_t a1)
{

  swift_beginAccess();
  v3 = *(a1 + 48);
  swift_endAccess();

  return v3;
}

uint64_t sub_1B0792070()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  swift_beginAccess();
  v3 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B079217C(uint64_t a1)
{
  v846 = MEMORY[0x1EEE9AC00](a1);
  v851 = v2;
  v847 = v3;
  v848 = v4;
  v849 = v5;
  v850 = v6;
  v684 = v1;
  v685 = sub_1B074E050;
  v686 = sub_1B07AD09C;
  v687 = sub_1B03F7AE0;
  v688 = sub_1B0394C30;
  v689 = sub_1B0394C24;
  v690 = sub_1B074DFFC;
  v691 = sub_1B039BA88;
  v692 = sub_1B039BB94;
  v693 = sub_1B0394C24;
  v694 = sub_1B039BBA0;
  v695 = sub_1B039BC08;
  v696 = 0x786F626C69616DLL;
  v697 = sub_1B06BA324;
  v698 = sub_1B074E0E4;
  v699 = sub_1B039BCF8;
  v700 = sub_1B07AD0A4;
  v701 = sub_1B039BCF8;
  v702 = sub_1B07AD0B0;
  v703 = sub_1B039BCF8;
  v704 = sub_1B07AD0C4;
  v705 = sub_1B039BCF8;
  v706 = sub_1B07AB020;
  v707 = sub_1B039BC08;
  v708 = sub_1B0398F5C;
  v709 = sub_1B0398F5C;
  v710 = sub_1B0399178;
  v711 = sub_1B0398F5C;
  v712 = sub_1B0398F5C;
  v713 = sub_1B039BA94;
  v714 = sub_1B0398F5C;
  v715 = sub_1B0398F5C;
  v716 = sub_1B0399178;
  v717 = sub_1B0398F5C;
  v718 = sub_1B0398F5C;
  v719 = sub_1B03991EC;
  v720 = sub_1B0398F5C;
  v721 = sub_1B0398F5C;
  v722 = sub_1B03993BC;
  v723 = sub_1B0398F5C;
  v724 = sub_1B0398F5C;
  v725 = sub_1B039BCEC;
  v726 = sub_1B0398F5C;
  v727 = sub_1B0398F5C;
  v728 = sub_1B039BCEC;
  v729 = sub_1B0398F5C;
  v730 = sub_1B0398F5C;
  v731 = sub_1B039BCEC;
  v732 = sub_1B0398F5C;
  v733 = sub_1B0398F5C;
  v734 = sub_1B039BCEC;
  v735 = sub_1B0398F5C;
  v736 = sub_1B0398F5C;
  v737 = sub_1B03991EC;
  v738 = sub_1B074E050;
  v739 = sub_1B07AD09C;
  v740 = sub_1B03F7AE0;
  v741 = sub_1B0394C24;
  v742 = sub_1B074DFFC;
  v743 = sub_1B039BA88;
  v744 = sub_1B0394C24;
  v745 = sub_1B039BBA0;
  v746 = sub_1B039BC08;
  v747 = sub_1B06BA324;
  v748 = sub_1B074E0E4;
  v749 = sub_1B039BCF8;
  v750 = sub_1B07AD0A4;
  v751 = sub_1B039BCF8;
  v752 = sub_1B07AD0B0;
  v753 = sub_1B039BCF8;
  v754 = sub_1B07AD0C4;
  v755 = sub_1B039BCF8;
  v756 = sub_1B07AB020;
  v757 = sub_1B039BC08;
  v758 = sub_1B0398F5C;
  v759 = sub_1B0398F5C;
  v760 = sub_1B0399178;
  v761 = sub_1B0398F5C;
  v762 = sub_1B0398F5C;
  v763 = sub_1B039BA94;
  v764 = sub_1B0398F5C;
  v765 = sub_1B0398F5C;
  v766 = sub_1B0399178;
  v767 = sub_1B0398F5C;
  v768 = sub_1B0398F5C;
  v769 = sub_1B03991EC;
  v770 = sub_1B0398F5C;
  v771 = sub_1B0398F5C;
  v772 = sub_1B03993BC;
  v773 = sub_1B0398F5C;
  v774 = sub_1B0398F5C;
  v775 = sub_1B039BCEC;
  v776 = sub_1B0398F5C;
  v777 = sub_1B0398F5C;
  v778 = sub_1B039BCEC;
  v779 = sub_1B0398F5C;
  v780 = sub_1B0398F5C;
  v781 = sub_1B039BCEC;
  v782 = sub_1B0398F5C;
  v783 = sub_1B0398F5C;
  v784 = sub_1B039BCEC;
  v785 = sub_1B0398F5C;
  v786 = sub_1B0398F5C;
  v787 = sub_1B03991EC;
  v788 = sub_1B074E050;
  v789 = sub_1B07AD09C;
  v790 = sub_1B03F7AE0;
  v791 = sub_1B0394C24;
  v792 = sub_1B074DFFC;
  v793 = sub_1B039BA88;
  v794 = sub_1B0394C24;
  v795 = sub_1B039BBA0;
  v796 = sub_1B039BC08;
  v797 = sub_1B06BA324;
  v798 = sub_1B074E0E4;
  v799 = sub_1B039BCF8;
  v800 = sub_1B07AD0A4;
  v801 = sub_1B039BCF8;
  v802 = sub_1B07AB020;
  v803 = sub_1B039BC08;
  v804 = sub_1B0398F5C;
  v805 = sub_1B0398F5C;
  v806 = sub_1B0399178;
  v807 = sub_1B0398F5C;
  v808 = sub_1B0398F5C;
  v809 = sub_1B039BA94;
  v810 = sub_1B0398F5C;
  v811 = sub_1B0398F5C;
  v812 = sub_1B0399178;
  v813 = sub_1B0398F5C;
  v814 = sub_1B0398F5C;
  v815 = sub_1B03991EC;
  v816 = sub_1B0398F5C;
  v817 = sub_1B0398F5C;
  v818 = sub_1B03993BC;
  v819 = sub_1B0398F5C;
  v820 = sub_1B0398F5C;
  v821 = sub_1B039BCEC;
  v822 = sub_1B0398F5C;
  v823 = sub_1B0398F5C;
  v824 = sub_1B039BCEC;
  v825 = sub_1B0398F5C;
  v826 = sub_1B0398F5C;
  v827 = sub_1B03991EC;
  v881 = 0;
  v880 = 0;
  v879 = 0;
  v877 = 0;
  v878 = 0;
  v876 = 0;
  v875 = 0;
  v828 = 0;
  v869 = 0;
  v829 = 0;
  v830 = _s6LoggerVMa_1();
  v831 = (*(*(v830 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](0);
  v832 = v387 - v831;
  v833 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v834 = v387 - v833;
  v835 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v836 = v387 - v835;
  v837 = sub_1B0E439A8();
  v838 = *(v837 - 8);
  v839 = v837 - 8;
  v840 = (*(v838 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v837);
  v841 = v387 - v840;
  v842 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v387 - v840);
  v843 = v387 - v842;
  v844 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v387 - v842);
  v845 = v387 - v844;
  v852 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v851);
  v853 = v387 - v852;
  v881 = v14;
  v880 = v13;
  v879 = v15 & 1;
  v877 = v16;
  v878 = v17;
  v876 = v18;
  v875 = v1;
  v854 = sub_1B0791E2C(v13);
  if (v854)
  {
    v683 = v854;
    v682 = v854;
    v869 = v854;
    if (v847)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v604 = sub_1B0754760();
      v601 = v19;
      v602 = v20;
      v603 = v21;
      v22 = sub_1B07547DC();
      v605 = v882;
      sub_1B077FC6C(v851, v604, v601, v602, v603, v22, v23, v882);
      memcpy(v853, v605, 0x38uLL);
      v606 = type metadata accessor for InProgressMessageDownload.Section();
      swift_storeEnumTagMultiPayload();
      (*(*(v606 - 8) + 56))(v853, 0, 1);
      v607 = &v861;
      v861 = v851;
      v608 = &v860;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      (*(v838 + 16))(v845, v850, v837);
      sub_1B074B69C(v850, v836);
      sub_1B074B69C(v836, v834);
      sub_1B074E41C(v836, v832);
      v24 = (v834 + *(v830 + 20));
      v611 = *v24;
      v612 = *(v24 + 1);
      v613 = *(v24 + 1);
      v614 = *(v24 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v834);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v610 = 36;
      v644 = 7;
      v25 = swift_allocObject();
      v26 = v612;
      v27 = v613;
      v28 = v614;
      v623 = v25;
      *(v25 + 16) = v611;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = swift_allocObject();
      v30 = v612;
      v31 = v613;
      v32 = v614;
      v609 = v29;
      *(v29 + 16) = v611;
      *(v29 + 20) = v30;
      *(v29 + 24) = v31;
      *(v29 + 32) = v32;

      v643 = 32;
      v33 = swift_allocObject();
      v34 = v609;
      v627 = v33;
      *(v33 + 16) = v738;
      *(v33 + 24) = v34;
      sub_1B0394868();
      sub_1B0394868();

      v35 = swift_allocObject();
      v36 = v612;
      v37 = v613;
      v38 = v614;
      v39 = v35;
      v40 = v832;
      v631 = v39;
      *(v39 + 16) = v611;
      *(v39 + 20) = v36;
      *(v39 + 24) = v37;
      *(v39 + 32) = v38;
      sub_1B074B764(v40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v629 = 24;
      v615 = swift_allocObject();
      *(v615 + 16) = v851;

      v41 = swift_allocObject();
      v42 = v615;
      v633 = v41;
      *(v41 + 16) = v739;
      *(v41 + 24) = v42;

      v617 = sub_1B0754760();
      v618 = v43;
      v619 = v44;
      v620 = v45;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v616 = 48;
      v46 = swift_allocObject();
      v47 = v618;
      v48 = v619;
      v49 = v620;
      v635 = v46;
      v46[2] = v617;
      v46[3] = v47;
      v46[4] = v48;
      v46[5] = v49;
      v50 = swift_allocObject();
      v51 = v618;
      v52 = v619;
      v53 = v620;
      v639 = v50;
      v50[2] = v617;
      v50[3] = v51;
      v50[4] = v52;
      v50[5] = v53;

      v621 = swift_allocObject();
      *(v621 + 16) = v846;

      v54 = swift_allocObject();
      v55 = v621;
      v645 = v54;
      *(v54 + 16) = v740;
      *(v54 + 24) = v55;

      v680 = sub_1B0E43988();
      v681 = sub_1B0E45908();
      v641 = 17;
      v647 = swift_allocObject();
      v625 = 16;
      *(v647 + 16) = 16;
      v648 = swift_allocObject();
      v642 = 4;
      *(v648 + 16) = 4;
      v56 = swift_allocObject();
      v622 = v56;
      *(v56 + 16) = v688;
      *(v56 + 24) = 0;
      v57 = swift_allocObject();
      v58 = v622;
      v649 = v57;
      *(v57 + 16) = v741;
      *(v57 + 24) = v58;
      v650 = swift_allocObject();
      *(v650 + 16) = 0;
      v651 = swift_allocObject();
      *(v651 + 16) = 1;
      v59 = swift_allocObject();
      v60 = v623;
      v624 = v59;
      *(v59 + 16) = v742;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v624;
      v652 = v61;
      *(v61 + 16) = v743;
      *(v61 + 24) = v62;
      v653 = swift_allocObject();
      *(v653 + 16) = v625;
      v654 = swift_allocObject();
      *(v654 + 16) = v642;
      v63 = swift_allocObject();
      v626 = v63;
      *(v63 + 16) = v692;
      *(v63 + 24) = 0;
      v64 = swift_allocObject();
      v65 = v626;
      v655 = v64;
      *(v64 + 16) = v744;
      *(v64 + 24) = v65;
      v656 = swift_allocObject();
      *(v656 + 16) = 0;
      v657 = swift_allocObject();
      *(v657 + 16) = v642;
      v66 = swift_allocObject();
      v67 = v627;
      v628 = v66;
      *(v66 + 16) = v745;
      *(v66 + 24) = v67;
      v68 = swift_allocObject();
      v69 = v628;
      v658 = v68;
      *(v68 + 16) = v746;
      *(v68 + 24) = v69;
      v659 = swift_allocObject();
      *(v659 + 16) = 112;
      v660 = swift_allocObject();
      v638 = 8;
      *(v660 + 16) = 8;
      v630 = swift_allocObject();
      *(v630 + 16) = v696;
      v70 = swift_allocObject();
      v71 = v630;
      v661 = v70;
      *(v70 + 16) = v747;
      *(v70 + 24) = v71;
      v662 = swift_allocObject();
      *(v662 + 16) = 37;
      v663 = swift_allocObject();
      *(v663 + 16) = v638;
      v72 = swift_allocObject();
      v73 = v631;
      v632 = v72;
      *(v72 + 16) = v748;
      *(v72 + 24) = v73;
      v74 = swift_allocObject();
      v75 = v632;
      v664 = v74;
      *(v74 + 16) = v749;
      *(v74 + 24) = v75;
      v665 = swift_allocObject();
      v637 = 34;
      *(v665 + 16) = 34;
      v666 = swift_allocObject();
      *(v666 + 16) = v638;
      v76 = swift_allocObject();
      v77 = v633;
      v634 = v76;
      *(v76 + 16) = v750;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v634;
      v667 = v78;
      *(v78 + 16) = v751;
      *(v78 + 24) = v79;
      v668 = swift_allocObject();
      *(v668 + 16) = v637;
      v669 = swift_allocObject();
      *(v669 + 16) = v638;
      v80 = swift_allocObject();
      v81 = v635;
      v636 = v80;
      *(v80 + 16) = v752;
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v636;
      v670 = v82;
      *(v82 + 16) = v753;
      *(v82 + 24) = v83;
      v671 = swift_allocObject();
      *(v671 + 16) = v637;
      v672 = swift_allocObject();
      *(v672 + 16) = v638;
      v84 = swift_allocObject();
      v85 = v639;
      v640 = v84;
      *(v84 + 16) = v754;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      v87 = v640;
      v673 = v86;
      *(v86 + 16) = v755;
      *(v86 + 24) = v87;
      v674 = swift_allocObject();
      *(v674 + 16) = 0;
      v675 = swift_allocObject();
      *(v675 + 16) = v642;
      v88 = swift_allocObject();
      v89 = v645;
      v646 = v88;
      *(v88 + 16) = v756;
      *(v88 + 24) = v89;
      v90 = swift_allocObject();
      v91 = v646;
      v677 = v90;
      *(v90 + 16) = v757;
      *(v90 + 24) = v91;
      v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v676 = sub_1B0E46A48();
      v678 = v92;

      v93 = v647;
      v94 = v678;
      *v678 = v758;
      v94[1] = v93;

      v95 = v648;
      v96 = v678;
      v678[2] = v759;
      v96[3] = v95;

      v97 = v649;
      v98 = v678;
      v678[4] = v760;
      v98[5] = v97;

      v99 = v650;
      v100 = v678;
      v678[6] = v761;
      v100[7] = v99;

      v101 = v651;
      v102 = v678;
      v678[8] = v762;
      v102[9] = v101;

      v103 = v652;
      v104 = v678;
      v678[10] = v763;
      v104[11] = v103;

      v105 = v653;
      v106 = v678;
      v678[12] = v764;
      v106[13] = v105;

      v107 = v654;
      v108 = v678;
      v678[14] = v765;
      v108[15] = v107;

      v109 = v655;
      v110 = v678;
      v678[16] = v766;
      v110[17] = v109;

      v111 = v656;
      v112 = v678;
      v678[18] = v767;
      v112[19] = v111;

      v113 = v657;
      v114 = v678;
      v678[20] = v768;
      v114[21] = v113;

      v115 = v658;
      v116 = v678;
      v678[22] = v769;
      v116[23] = v115;

      v117 = v659;
      v118 = v678;
      v678[24] = v770;
      v118[25] = v117;

      v119 = v660;
      v120 = v678;
      v678[26] = v771;
      v120[27] = v119;

      v121 = v661;
      v122 = v678;
      v678[28] = v772;
      v122[29] = v121;

      v123 = v662;
      v124 = v678;
      v678[30] = v773;
      v124[31] = v123;

      v125 = v663;
      v126 = v678;
      v678[32] = v774;
      v126[33] = v125;

      v127 = v664;
      v128 = v678;
      v678[34] = v775;
      v128[35] = v127;

      v129 = v665;
      v130 = v678;
      v678[36] = v776;
      v130[37] = v129;

      v131 = v666;
      v132 = v678;
      v678[38] = v777;
      v132[39] = v131;

      v133 = v667;
      v134 = v678;
      v678[40] = v778;
      v134[41] = v133;

      v135 = v668;
      v136 = v678;
      v678[42] = v779;
      v136[43] = v135;

      v137 = v669;
      v138 = v678;
      v678[44] = v780;
      v138[45] = v137;

      v139 = v670;
      v140 = v678;
      v678[46] = v781;
      v140[47] = v139;

      v141 = v671;
      v142 = v678;
      v678[48] = v782;
      v142[49] = v141;

      v143 = v672;
      v144 = v678;
      v678[50] = v783;
      v144[51] = v143;

      v145 = v673;
      v146 = v678;
      v678[52] = v784;
      v146[53] = v145;

      v147 = v674;
      v148 = v678;
      v678[54] = v785;
      v148[55] = v147;

      v149 = v675;
      v150 = v678;
      v678[56] = v786;
      v150[57] = v149;

      v151 = v677;
      v152 = v678;
      v678[58] = v787;
      v152[59] = v151;
      sub_1B0394964();

      if (os_log_type_enabled(v680, v681))
      {
        v153 = v828;
        v594 = sub_1B0E45D78();
        v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v595 = sub_1B03949A8(0);
        v596 = sub_1B03949A8(4);
        v597 = &v859;
        v859 = v594;
        v598 = &v858;
        v858 = v595;
        v599 = &v857;
        v857 = v596;
        sub_1B0394A48(3, &v859);
        sub_1B0394A48(10, v597);
        v855 = v758;
        v856 = v647;
        sub_1B03949FC(&v855, v597, v598, v599);
        v600 = v153;
        if (v153)
        {

          __break(1u);
        }

        else
        {
          v855 = v759;
          v856 = v648;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v592 = 0;
          v855 = v760;
          v856 = v649;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v591 = 0;
          v855 = v761;
          v856 = v650;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v590 = 0;
          v855 = v762;
          v856 = v651;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v589 = 0;
          v855 = v763;
          v856 = v652;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v588 = 0;
          v855 = v764;
          v856 = v653;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v587 = 0;
          v855 = v765;
          v856 = v654;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v586 = 0;
          v855 = v766;
          v856 = v655;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v585 = 0;
          v855 = v767;
          v856 = v656;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v584 = 0;
          v855 = v768;
          v856 = v657;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v583 = 0;
          v855 = v769;
          v856 = v658;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v582 = 0;
          v855 = v770;
          v856 = v659;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v581 = 0;
          v855 = v771;
          v856 = v660;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v580 = 0;
          v855 = v772;
          v856 = v661;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v579 = 0;
          v855 = v773;
          v856 = v662;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v578 = 0;
          v855 = v774;
          v856 = v663;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v577 = 0;
          v855 = v775;
          v856 = v664;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v576 = 0;
          v855 = v776;
          v856 = v665;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v575 = 0;
          v855 = v777;
          v856 = v666;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v574 = 0;
          v855 = v778;
          v856 = v667;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v573 = 0;
          v855 = v779;
          v856 = v668;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v572 = 0;
          v855 = v780;
          v856 = v669;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v571 = 0;
          v855 = v781;
          v856 = v670;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v570 = 0;
          v855 = v782;
          v856 = v671;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v569 = 0;
          v855 = v783;
          v856 = v672;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v568 = 0;
          v855 = v784;
          v856 = v673;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v567 = 0;
          v855 = v785;
          v856 = v674;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v566 = 0;
          v855 = v786;
          v856 = v675;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          v565 = 0;
          v855 = v787;
          v856 = v677;
          sub_1B03949FC(&v855, &v859, &v858, &v857);
          _os_log_impl(&dword_1B0389000, v680, v681, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] File writer did complete attachment '[%{public}s]' %{public}s/%{public}s, UID %u.", v594, 0x4Fu);
          sub_1B03998A8(v595);
          sub_1B03998A8(v596);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v680);
      (*(v838 + 8))(v845, v837);
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v154 = type metadata accessor for InProgressMessageDownload.Section();
      (*(*(v154 - 8) + 56))(v853, 1);
      v490 = &v868;
      v868 = v851;
      v491 = &v867;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
      sub_1B0E44788();
      swift_endAccess();
      (*(v838 + 16))(v843, v850, v837);
      sub_1B074B69C(v850, v836);
      sub_1B074B69C(v836, v834);
      sub_1B074E41C(v836, v832);
      v155 = (v834 + *(v830 + 20));
      v494 = *v155;
      v495 = *(v155 + 1);
      v496 = *(v155 + 1);
      v497 = *(v155 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v834);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v493 = 36;
      v527 = 7;
      v156 = swift_allocObject();
      v157 = v495;
      v158 = v496;
      v159 = v497;
      v506 = v156;
      *(v156 + 16) = v494;
      *(v156 + 20) = v157;
      *(v156 + 24) = v158;
      *(v156 + 32) = v159;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v160 = swift_allocObject();
      v161 = v495;
      v162 = v496;
      v163 = v497;
      v492 = v160;
      *(v160 + 16) = v494;
      *(v160 + 20) = v161;
      *(v160 + 24) = v162;
      *(v160 + 32) = v163;

      v526 = 32;
      v164 = swift_allocObject();
      v165 = v492;
      v510 = v164;
      *(v164 + 16) = v685;
      *(v164 + 24) = v165;
      sub_1B0394868();
      sub_1B0394868();

      v166 = swift_allocObject();
      v167 = v495;
      v168 = v496;
      v169 = v497;
      v170 = v166;
      v171 = v832;
      v514 = v170;
      *(v170 + 16) = v494;
      *(v170 + 20) = v167;
      *(v170 + 24) = v168;
      *(v170 + 32) = v169;
      sub_1B074B764(v171);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v512 = 24;
      v498 = swift_allocObject();
      *(v498 + 16) = v851;

      v172 = swift_allocObject();
      v173 = v498;
      v516 = v172;
      *(v172 + 16) = v686;
      *(v172 + 24) = v173;

      v500 = sub_1B0754760();
      v501 = v174;
      v502 = v175;
      v503 = v176;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v499 = 48;
      v177 = swift_allocObject();
      v178 = v501;
      v179 = v502;
      v180 = v503;
      v518 = v177;
      v177[2] = v500;
      v177[3] = v178;
      v177[4] = v179;
      v177[5] = v180;
      v181 = swift_allocObject();
      v182 = v501;
      v183 = v502;
      v184 = v503;
      v522 = v181;
      v181[2] = v500;
      v181[3] = v182;
      v181[4] = v183;
      v181[5] = v184;

      v504 = swift_allocObject();
      *(v504 + 16) = v846;

      v185 = swift_allocObject();
      v186 = v504;
      v528 = v185;
      *(v185 + 16) = v687;
      *(v185 + 24) = v186;

      v563 = sub_1B0E43988();
      v564 = sub_1B0E458E8();
      v524 = 17;
      v530 = swift_allocObject();
      v508 = 16;
      *(v530 + 16) = 16;
      v531 = swift_allocObject();
      v525 = 4;
      *(v531 + 16) = 4;
      v187 = swift_allocObject();
      v505 = v187;
      *(v187 + 16) = v688;
      *(v187 + 24) = 0;
      v188 = swift_allocObject();
      v189 = v505;
      v532 = v188;
      *(v188 + 16) = v689;
      *(v188 + 24) = v189;
      v533 = swift_allocObject();
      *(v533 + 16) = 0;
      v534 = swift_allocObject();
      *(v534 + 16) = 1;
      v190 = swift_allocObject();
      v191 = v506;
      v507 = v190;
      *(v190 + 16) = v690;
      *(v190 + 24) = v191;
      v192 = swift_allocObject();
      v193 = v507;
      v535 = v192;
      *(v192 + 16) = v691;
      *(v192 + 24) = v193;
      v536 = swift_allocObject();
      *(v536 + 16) = v508;
      v537 = swift_allocObject();
      *(v537 + 16) = v525;
      v194 = swift_allocObject();
      v509 = v194;
      *(v194 + 16) = v692;
      *(v194 + 24) = 0;
      v195 = swift_allocObject();
      v196 = v509;
      v538 = v195;
      *(v195 + 16) = v693;
      *(v195 + 24) = v196;
      v539 = swift_allocObject();
      *(v539 + 16) = 0;
      v540 = swift_allocObject();
      *(v540 + 16) = v525;
      v197 = swift_allocObject();
      v198 = v510;
      v511 = v197;
      *(v197 + 16) = v694;
      *(v197 + 24) = v198;
      v199 = swift_allocObject();
      v200 = v511;
      v541 = v199;
      *(v199 + 16) = v695;
      *(v199 + 24) = v200;
      v542 = swift_allocObject();
      *(v542 + 16) = 112;
      v543 = swift_allocObject();
      v521 = 8;
      *(v543 + 16) = 8;
      v513 = swift_allocObject();
      *(v513 + 16) = v696;
      v201 = swift_allocObject();
      v202 = v513;
      v544 = v201;
      *(v201 + 16) = v697;
      *(v201 + 24) = v202;
      v545 = swift_allocObject();
      *(v545 + 16) = 37;
      v546 = swift_allocObject();
      *(v546 + 16) = v521;
      v203 = swift_allocObject();
      v204 = v514;
      v515 = v203;
      *(v203 + 16) = v698;
      *(v203 + 24) = v204;
      v205 = swift_allocObject();
      v206 = v515;
      v547 = v205;
      *(v205 + 16) = v699;
      *(v205 + 24) = v206;
      v548 = swift_allocObject();
      v520 = 34;
      *(v548 + 16) = 34;
      v549 = swift_allocObject();
      *(v549 + 16) = v521;
      v207 = swift_allocObject();
      v208 = v516;
      v517 = v207;
      *(v207 + 16) = v700;
      *(v207 + 24) = v208;
      v209 = swift_allocObject();
      v210 = v517;
      v550 = v209;
      *(v209 + 16) = v701;
      *(v209 + 24) = v210;
      v551 = swift_allocObject();
      *(v551 + 16) = v520;
      v552 = swift_allocObject();
      *(v552 + 16) = v521;
      v211 = swift_allocObject();
      v212 = v518;
      v519 = v211;
      *(v211 + 16) = v702;
      *(v211 + 24) = v212;
      v213 = swift_allocObject();
      v214 = v519;
      v553 = v213;
      *(v213 + 16) = v703;
      *(v213 + 24) = v214;
      v554 = swift_allocObject();
      *(v554 + 16) = v520;
      v555 = swift_allocObject();
      *(v555 + 16) = v521;
      v215 = swift_allocObject();
      v216 = v522;
      v523 = v215;
      *(v215 + 16) = v704;
      *(v215 + 24) = v216;
      v217 = swift_allocObject();
      v218 = v523;
      v556 = v217;
      *(v217 + 16) = v705;
      *(v217 + 24) = v218;
      v557 = swift_allocObject();
      *(v557 + 16) = 0;
      v558 = swift_allocObject();
      *(v558 + 16) = v525;
      v219 = swift_allocObject();
      v220 = v528;
      v529 = v219;
      *(v219 + 16) = v706;
      *(v219 + 24) = v220;
      v221 = swift_allocObject();
      v222 = v529;
      v560 = v221;
      *(v221 + 16) = v707;
      *(v221 + 24) = v222;
      v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v559 = sub_1B0E46A48();
      v561 = v223;

      v224 = v530;
      v225 = v561;
      *v561 = v708;
      v225[1] = v224;

      v226 = v531;
      v227 = v561;
      v561[2] = v709;
      v227[3] = v226;

      v228 = v532;
      v229 = v561;
      v561[4] = v710;
      v229[5] = v228;

      v230 = v533;
      v231 = v561;
      v561[6] = v711;
      v231[7] = v230;

      v232 = v534;
      v233 = v561;
      v561[8] = v712;
      v233[9] = v232;

      v234 = v535;
      v235 = v561;
      v561[10] = v713;
      v235[11] = v234;

      v236 = v536;
      v237 = v561;
      v561[12] = v714;
      v237[13] = v236;

      v238 = v537;
      v239 = v561;
      v561[14] = v715;
      v239[15] = v238;

      v240 = v538;
      v241 = v561;
      v561[16] = v716;
      v241[17] = v240;

      v242 = v539;
      v243 = v561;
      v561[18] = v717;
      v243[19] = v242;

      v244 = v540;
      v245 = v561;
      v561[20] = v718;
      v245[21] = v244;

      v246 = v541;
      v247 = v561;
      v561[22] = v719;
      v247[23] = v246;

      v248 = v542;
      v249 = v561;
      v561[24] = v720;
      v249[25] = v248;

      v250 = v543;
      v251 = v561;
      v561[26] = v721;
      v251[27] = v250;

      v252 = v544;
      v253 = v561;
      v561[28] = v722;
      v253[29] = v252;

      v254 = v545;
      v255 = v561;
      v561[30] = v723;
      v255[31] = v254;

      v256 = v546;
      v257 = v561;
      v561[32] = v724;
      v257[33] = v256;

      v258 = v547;
      v259 = v561;
      v561[34] = v725;
      v259[35] = v258;

      v260 = v548;
      v261 = v561;
      v561[36] = v726;
      v261[37] = v260;

      v262 = v549;
      v263 = v561;
      v561[38] = v727;
      v263[39] = v262;

      v264 = v550;
      v265 = v561;
      v561[40] = v728;
      v265[41] = v264;

      v266 = v551;
      v267 = v561;
      v561[42] = v729;
      v267[43] = v266;

      v268 = v552;
      v269 = v561;
      v561[44] = v730;
      v269[45] = v268;

      v270 = v553;
      v271 = v561;
      v561[46] = v731;
      v271[47] = v270;

      v272 = v554;
      v273 = v561;
      v561[48] = v732;
      v273[49] = v272;

      v274 = v555;
      v275 = v561;
      v561[50] = v733;
      v275[51] = v274;

      v276 = v556;
      v277 = v561;
      v561[52] = v734;
      v277[53] = v276;

      v278 = v557;
      v279 = v561;
      v561[54] = v735;
      v279[55] = v278;

      v280 = v558;
      v281 = v561;
      v561[56] = v736;
      v281[57] = v280;

      v282 = v560;
      v283 = v561;
      v561[58] = v737;
      v283[59] = v282;
      sub_1B0394964();

      if (os_log_type_enabled(v563, v564))
      {
        v284 = v828;
        v483 = sub_1B0E45D78();
        v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v484 = sub_1B03949A8(0);
        v485 = sub_1B03949A8(4);
        v486 = &v866;
        v866 = v483;
        v487 = &v865;
        v865 = v484;
        v488 = &v864;
        v864 = v485;
        sub_1B0394A48(3, &v866);
        sub_1B0394A48(10, v486);
        v862 = v708;
        v863 = v530;
        sub_1B03949FC(&v862, v486, v487, v488);
        v489 = v284;
        if (v284)
        {

          __break(1u);
        }

        else
        {
          v862 = v709;
          v863 = v531;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v481 = 0;
          v862 = v710;
          v863 = v532;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v480 = 0;
          v862 = v711;
          v863 = v533;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v479 = 0;
          v862 = v712;
          v863 = v534;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v478 = 0;
          v862 = v713;
          v863 = v535;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v477 = 0;
          v862 = v714;
          v863 = v536;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v476 = 0;
          v862 = v715;
          v863 = v537;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v475 = 0;
          v862 = v716;
          v863 = v538;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v474 = 0;
          v862 = v717;
          v863 = v539;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v473 = 0;
          v862 = v718;
          v863 = v540;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v472 = 0;
          v862 = v719;
          v863 = v541;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v471 = 0;
          v862 = v720;
          v863 = v542;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v470 = 0;
          v862 = v721;
          v863 = v543;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v469 = 0;
          v862 = v722;
          v863 = v544;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v468 = 0;
          v862 = v723;
          v863 = v545;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v467 = 0;
          v862 = v724;
          v863 = v546;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v466 = 0;
          v862 = v725;
          v863 = v547;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v465 = 0;
          v862 = v726;
          v863 = v548;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v464 = 0;
          v862 = v727;
          v863 = v549;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v463 = 0;
          v862 = v728;
          v863 = v550;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v462 = 0;
          v862 = v729;
          v863 = v551;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v461 = 0;
          v862 = v730;
          v863 = v552;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v460 = 0;
          v862 = v731;
          v863 = v553;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v459 = 0;
          v862 = v732;
          v863 = v554;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v458 = 0;
          v862 = v733;
          v863 = v555;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v457 = 0;
          v862 = v734;
          v863 = v556;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v456 = 0;
          v862 = v735;
          v863 = v557;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v455 = 0;
          v862 = v736;
          v863 = v558;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          v454 = 0;
          v862 = v737;
          v863 = v560;
          sub_1B03949FC(&v862, &v866, &v865, &v864);
          _os_log_impl(&dword_1B0389000, v563, v564, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] File writer failed to complete attachment '[%{public}s]' %{public}s/%{public}s, UID %u.", v483, 0x4Fu);
          sub_1B03998A8(v484);
          sub_1B03998A8(v485);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v563);
      (*(v838 + 8))(v843, v837);
    }

    v452 = sub_1B0797770();
    v453 = v285;
    v848(v851, v452, v285, v286 & 1);
  }

  else
  {
    (*(v838 + 16))(v841, v850, v837);
    sub_1B074B69C(v850, v836);
    sub_1B074B69C(v836, v834);
    sub_1B074E41C(v836, v832);
    v288 = (v834 + *(v830 + 20));
    v397 = *v288;
    v398 = *(v288 + 1);
    v399 = *(v288 + 1);
    v400 = *(v288 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v834);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v396 = 36;
    v419 = 7;
    v289 = swift_allocObject();
    v290 = v398;
    v291 = v399;
    v292 = v400;
    v404 = v289;
    *(v289 + 16) = v397;
    *(v289 + 20) = v290;
    *(v289 + 24) = v291;
    *(v289 + 32) = v292;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v293 = swift_allocObject();
    v294 = v398;
    v295 = v399;
    v296 = v400;
    v395 = v293;
    *(v293 + 16) = v397;
    *(v293 + 20) = v294;
    *(v293 + 24) = v295;
    *(v293 + 32) = v296;

    v418 = 32;
    v297 = swift_allocObject();
    v298 = v395;
    v408 = v297;
    *(v297 + 16) = v788;
    *(v297 + 24) = v298;
    sub_1B0394868();
    sub_1B0394868();

    v299 = swift_allocObject();
    v300 = v398;
    v301 = v399;
    v302 = v400;
    v303 = v299;
    v304 = v832;
    v411 = v303;
    *(v303 + 16) = v397;
    *(v303 + 20) = v300;
    *(v303 + 24) = v301;
    *(v303 + 32) = v302;
    sub_1B074B764(v304);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v422 = 24;
    v401 = swift_allocObject();
    *(v401 + 16) = v851;

    v305 = swift_allocObject();
    v306 = v401;
    v414 = v305;
    *(v305 + 16) = v789;
    *(v305 + 24) = v306;

    v402 = swift_allocObject();
    *(v402 + 16) = v846;

    v307 = swift_allocObject();
    v308 = v402;
    v420 = v307;
    *(v307 + 16) = v790;
    *(v307 + 24) = v308;

    v450 = sub_1B0E43988();
    v451 = sub_1B0E458E8();
    v416 = 17;
    v423 = swift_allocObject();
    v406 = 16;
    *(v423 + 16) = 16;
    v424 = swift_allocObject();
    v417 = 4;
    *(v424 + 16) = 4;
    v309 = swift_allocObject();
    v403 = v309;
    *(v309 + 16) = v688;
    *(v309 + 24) = 0;
    v310 = swift_allocObject();
    v311 = v403;
    v425 = v310;
    *(v310 + 16) = v791;
    *(v310 + 24) = v311;
    v426 = swift_allocObject();
    *(v426 + 16) = 0;
    v427 = swift_allocObject();
    *(v427 + 16) = 1;
    v312 = swift_allocObject();
    v313 = v404;
    v405 = v312;
    *(v312 + 16) = v792;
    *(v312 + 24) = v313;
    v314 = swift_allocObject();
    v315 = v405;
    v428 = v314;
    *(v314 + 16) = v793;
    *(v314 + 24) = v315;
    v429 = swift_allocObject();
    *(v429 + 16) = v406;
    v430 = swift_allocObject();
    *(v430 + 16) = v417;
    v316 = swift_allocObject();
    v407 = v316;
    *(v316 + 16) = v692;
    *(v316 + 24) = 0;
    v317 = swift_allocObject();
    v318 = v407;
    v431 = v317;
    *(v317 + 16) = v794;
    *(v317 + 24) = v318;
    v432 = swift_allocObject();
    *(v432 + 16) = 0;
    v433 = swift_allocObject();
    *(v433 + 16) = v417;
    v319 = swift_allocObject();
    v320 = v408;
    v409 = v319;
    *(v319 + 16) = v795;
    *(v319 + 24) = v320;
    v321 = swift_allocObject();
    v322 = v409;
    v434 = v321;
    *(v321 + 16) = v796;
    *(v321 + 24) = v322;
    v435 = swift_allocObject();
    *(v435 + 16) = 112;
    v436 = swift_allocObject();
    v413 = 8;
    *(v436 + 16) = 8;
    v410 = swift_allocObject();
    *(v410 + 16) = v696;
    v323 = swift_allocObject();
    v324 = v410;
    v437 = v323;
    *(v323 + 16) = v797;
    *(v323 + 24) = v324;
    v438 = swift_allocObject();
    *(v438 + 16) = 37;
    v439 = swift_allocObject();
    *(v439 + 16) = v413;
    v325 = swift_allocObject();
    v326 = v411;
    v412 = v325;
    *(v325 + 16) = v798;
    *(v325 + 24) = v326;
    v327 = swift_allocObject();
    v328 = v412;
    v440 = v327;
    *(v327 + 16) = v799;
    *(v327 + 24) = v328;
    v441 = swift_allocObject();
    *(v441 + 16) = 34;
    v442 = swift_allocObject();
    *(v442 + 16) = v413;
    v329 = swift_allocObject();
    v330 = v414;
    v415 = v329;
    *(v329 + 16) = v800;
    *(v329 + 24) = v330;
    v331 = swift_allocObject();
    v332 = v415;
    v443 = v331;
    *(v331 + 16) = v801;
    *(v331 + 24) = v332;
    v444 = swift_allocObject();
    *(v444 + 16) = 0;
    v445 = swift_allocObject();
    *(v445 + 16) = v417;
    v333 = swift_allocObject();
    v334 = v420;
    v421 = v333;
    *(v333 + 16) = v802;
    *(v333 + 24) = v334;
    v335 = swift_allocObject();
    v336 = v421;
    v447 = v335;
    *(v335 + 16) = v803;
    *(v335 + 24) = v336;
    v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v446 = sub_1B0E46A48();
    v448 = v337;

    v338 = v423;
    v339 = v448;
    *v448 = v804;
    v339[1] = v338;

    v340 = v424;
    v341 = v448;
    v448[2] = v805;
    v341[3] = v340;

    v342 = v425;
    v343 = v448;
    v448[4] = v806;
    v343[5] = v342;

    v344 = v426;
    v345 = v448;
    v448[6] = v807;
    v345[7] = v344;

    v346 = v427;
    v347 = v448;
    v448[8] = v808;
    v347[9] = v346;

    v348 = v428;
    v349 = v448;
    v448[10] = v809;
    v349[11] = v348;

    v350 = v429;
    v351 = v448;
    v448[12] = v810;
    v351[13] = v350;

    v352 = v430;
    v353 = v448;
    v448[14] = v811;
    v353[15] = v352;

    v354 = v431;
    v355 = v448;
    v448[16] = v812;
    v355[17] = v354;

    v356 = v432;
    v357 = v448;
    v448[18] = v813;
    v357[19] = v356;

    v358 = v433;
    v359 = v448;
    v448[20] = v814;
    v359[21] = v358;

    v360 = v434;
    v361 = v448;
    v448[22] = v815;
    v361[23] = v360;

    v362 = v435;
    v363 = v448;
    v448[24] = v816;
    v363[25] = v362;

    v364 = v436;
    v365 = v448;
    v448[26] = v817;
    v365[27] = v364;

    v366 = v437;
    v367 = v448;
    v448[28] = v818;
    v367[29] = v366;

    v368 = v438;
    v369 = v448;
    v448[30] = v819;
    v369[31] = v368;

    v370 = v439;
    v371 = v448;
    v448[32] = v820;
    v371[33] = v370;

    v372 = v440;
    v373 = v448;
    v448[34] = v821;
    v373[35] = v372;

    v374 = v441;
    v375 = v448;
    v448[36] = v822;
    v375[37] = v374;

    v376 = v442;
    v377 = v448;
    v448[38] = v823;
    v377[39] = v376;

    v378 = v443;
    v379 = v448;
    v448[40] = v824;
    v379[41] = v378;

    v380 = v444;
    v381 = v448;
    v448[42] = v825;
    v381[43] = v380;

    v382 = v445;
    v383 = v448;
    v448[44] = v826;
    v383[45] = v382;

    v384 = v447;
    v385 = v448;
    v448[46] = v827;
    v385[47] = v384;
    sub_1B0394964();

    if (os_log_type_enabled(v450, v451))
    {
      v386 = v828;
      v388 = sub_1B0E45D78();
      v387[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v389 = sub_1B03949A8(0);
      v390 = sub_1B03949A8(2);
      v391 = &v874;
      v874 = v388;
      v392 = &v873;
      v873 = v389;
      v393 = &v872;
      v872 = v390;
      sub_1B0394A48(3, &v874);
      sub_1B0394A48(8, v391);
      v870 = v804;
      v871 = v423;
      sub_1B03949FC(&v870, v391, v392, v393);
      v394 = v386;
      if (v386)
      {

        __break(1u);
      }

      else
      {
        v870 = v805;
        v871 = v424;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[22] = 0;
        v870 = v806;
        v871 = v425;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[21] = 0;
        v870 = v807;
        v871 = v426;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[20] = 0;
        v870 = v808;
        v871 = v427;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[19] = 0;
        v870 = v809;
        v871 = v428;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[18] = 0;
        v870 = v810;
        v871 = v429;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[17] = 0;
        v870 = v811;
        v871 = v430;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[16] = 0;
        v870 = v812;
        v871 = v431;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[15] = 0;
        v870 = v813;
        v871 = v432;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[14] = 0;
        v870 = v814;
        v871 = v433;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[13] = 0;
        v870 = v815;
        v871 = v434;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[12] = 0;
        v870 = v816;
        v871 = v435;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[11] = 0;
        v870 = v817;
        v871 = v436;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[10] = 0;
        v870 = v818;
        v871 = v437;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[9] = 0;
        v870 = v819;
        v871 = v438;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[8] = 0;
        v870 = v820;
        v871 = v439;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[7] = 0;
        v870 = v821;
        v871 = v440;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[6] = 0;
        v870 = v822;
        v871 = v441;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[5] = 0;
        v870 = v823;
        v871 = v442;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[4] = 0;
        v870 = v824;
        v871 = v443;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[3] = 0;
        v870 = v825;
        v871 = v444;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[2] = 0;
        v870 = v826;
        v871 = v445;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        v387[1] = 0;
        v870 = v827;
        v871 = v447;
        sub_1B03949FC(&v870, &v874, &v873, &v872);
        _os_log_impl(&dword_1B0389000, v450, v451, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] File writer did complete, but no in-progress for attachment '[%{public}s]', UID %u.", v388, 0x3Bu);
        sub_1B03998A8(v389);
        sub_1B03998A8(v390);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v450);
    return (*(v838 + 8))(v841, v837);
  }
}