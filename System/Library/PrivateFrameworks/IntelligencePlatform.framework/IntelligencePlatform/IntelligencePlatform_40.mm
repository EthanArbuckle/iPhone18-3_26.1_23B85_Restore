unint64_t sub_1ABD718B8()
{
  result = qword_1EB4D9158;
  if (!qword_1EB4D9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9158);
  }

  return result;
}

uint64_t sub_1ABD71944(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1ABD71960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KGQ.Value();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABD719C4(uint64_t a1)
{
  sub_1ABD71A94(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1ABD71A0C(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

__n128 sub_1ABD71A78(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

__n128 sub_1ABD71A88(__n128 *a1)
{
  result = *(v1 - 176);
  a1[1] = result;
  return result;
}

uint64_t sub_1ABD71AA0()
{
}

uint64_t sub_1ABD71ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v39 = a2;
  v41 = type metadata accessor for KGQ.Value();
  v36 = *(v41 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = *v11++;
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1ABF23B14();
      v44 = v13;
      v14 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v14);

      v15 = v42;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = v12[2];
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v12 = v21;
      }

      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_1ABA7BBEC(v17);
        sub_1ABAAA4F4();
        v12 = v22;
      }

      v12[2] = v18 + 1;
      v19 = &v12[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v37 = sub_1ABD7343C(v12);
  v38 = v23;

  v24 = *(v39 + 16);
  if (v24)
  {
    v25 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v26 = *(v36 + 72);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1ABB2D38C(v25, v9);
      sub_1ABD71960(v9, v6);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v28 = *v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = *(v27 + 16);
          sub_1ABA7BEF0();
          sub_1ABADB6A8();
          v27 = v32;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1ABA7BBEC(v29);
          sub_1ABADB6A8();
          v27 = v33;
        }

        *(v27 + 16) = v30 + 1;
        *(v27 + v30 + 32) = v28;
      }

      else
      {
        sub_1ABD6DC28(v6);
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABD71DA0(v37, v38, v27, v40);
}

void sub_1ABD71DA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v426 = a1;
  v434 = a2;
  v387 = a4;
  v7 = *(a3 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v463 = MEMORY[0x1E69E7CC0];
    v417 = MEMORY[0x1E69E7CC0];
LABEL_232:
    if (*(v417 + 16))
    {
      sub_1ABA8EAFC();
      v323 = swift_allocObject();
      *(v323 + 16) = v426;
      *(v323 + 24) = v434;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_385;
      }

      v324 = v323;
      v325 = v9;
      v326 = *(_Records_GDEntityPredicate_records + 436);
      v327 = *(_Records_GDEntityPredicate_records + 437);
      v328 = _Records_GDEntityPredicate_records[1740];

      v329 = sub_1ABA91D48(v328, v326, v327, v471);
      *(v324 + 32) = sub_1ABA7DBE8(v329, v330, v331, v332, v333, v334, v335, v336, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v409, v417, v426, v434, v442, v449, v456, v463, v471[0]);
      *(v324 + 48) = v337;
      *(v324 + 56) = v338;
      *(v324 + 64) = v339;
      *(v324 + 72) = v425;
      v9 = v325;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v353 = v325[2];
        sub_1ABA7BEF0();
        sub_1ABADB5D8();
        v9 = v354;
      }

      v341 = v9[2];
      v340 = v9[3];
      v342 = v470;
      if (v341 >= v340 >> 1)
      {
        sub_1ABA7BBEC(v340);
        sub_1ABA83A70();
        v342 = v470;
        v9 = v355;
      }

      v9[2] = v341 + 1;
      v9[v341 + 4] = v324 | 0x7000000000000004;
    }

    else
    {

      v342 = v463;
    }

    if (*(v342 + 16))
    {
      v343 = v342;
      v4 = swift_allocObject();
      *(v4 + 16) = v426;
      *(v4 + 24) = v434;
      *(v4 + 32) = v343;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_311:
        v350 = v9[2];
        sub_1ABA7BEF0();
        sub_1ABADB5D8();
        v9 = v351;
      }

      v344 = v387;
      v346 = v9[2];
      v345 = v9[3];
      v347 = v346 + 1;
      if (v346 >= v345 >> 1)
      {
        sub_1ABA7BBEC(v345);
        sub_1ABA83A70();
        v9 = v352;
      }

      v9[2] = v347;
      v9[v346 + 4] = v4 | 0x7000000000000000;
    }

    else
    {

      v347 = v9[2];
      v344 = v387;
    }

    if (v347 == 1)
    {
      sub_1ABC43DF0(0, 1, v9);
      v348 = v9[4];
    }

    else
    {
      v349 = swift_allocObject();
      *(v349 + 16) = v9;
      v348 = v349 | 0x3000000000000000;
    }

    *v344 = v348;
    return;
  }

  v8 = (a3 + 32);
  v442 = 279;
  v456 = 3481;
  v9 = MEMORY[0x1E69E7CC0];
  v449 = 4281;
  v356 = xmmword_1ABF3BF90;
  v394 = xmmword_1ABF34740;
  v463 = MEMORY[0x1E69E7CC0];
  v417 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = *v8++;
    switch(v10)
    {
      case 1:
        if (v442 < 62)
        {
          goto LABEL_266;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_333;
        }

        v209 = *(_Records_GDEntityPredicate_records + 184);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_276;
        }

        v211 = *(v210 + 1480);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_296;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_374;
        }

        v17 = *(v212 + 1464);
        v18 = sub_1ABF23DD4();
        if (_Records_GDEntityPredicate_labels)
        {
          goto LABEL_208;
        }

        goto LABEL_376;
      case 2:
        if (v442 < 64)
        {
          goto LABEL_265;
        }

        if (_Records_GDEntityPredicate_records)
        {
          v280 = *(_Records_GDEntityPredicate_records + 190);
          sub_1ABA80E54();
          if (v13 == v14)
          {
            goto LABEL_281;
          }

          v282 = *(v281 + 1528);
          sub_1ABA7C4E0();
          if (v13 == v14)
          {
            goto LABEL_304;
          }

          if (!_Records_GDEntityPredicate_predicateIds)
          {
            goto LABEL_340;
          }

          v17 = *(v283 + 1512);
          v18 = sub_1ABF23DD4();
          if (!_Records_GDEntityPredicate_labels)
          {
            goto LABEL_341;
          }

LABEL_208:
          v4 = v18;
          v294 = v19;
          sub_1ABF23DD4();
          sub_1ABA90270();
          v295 = v9;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v296 = v463;
          }

          else
          {
            v305 = *(v463 + 16);
            sub_1ABA7BEF0();
            sub_1ABAD8B6C();
            v296 = v306;
          }

          v298 = *(v296 + 16);
          v297 = *(v296 + 24);
          if (v298 >= v297 >> 1)
          {
            sub_1ABA7BBEC(v297);
            sub_1ABAD8B6C();
            v296 = v307;
          }

          *(v296 + 16) = v298 + 1;
          v463 = v296;
LABEL_213:
          v299 = v296 + 40 * v298;
          *(v299 + 32) = v4;
          *(v299 + 40) = v294;
          *(v299 + 48) = v5;
          *(v299 + 56) = v6;
          *(v299 + 64) = v17;
          v9 = v295;
LABEL_214:
          if (!--v7)
          {
            goto LABEL_232;
          }

          continue;
        }

        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
LABEL_381:
        __break(1u);
LABEL_382:
        __break(1u);
LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
        return;
      case 3:
        sub_1ABA8EAFC();
        v103 = swift_allocObject();
        v111 = sub_1ABA7F648(v103, v104, v105, v106, v107, v108, v109, v110, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v409, v417, v426, v434);
        if (v112 < 71)
        {
          goto LABEL_256;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_323;
        }

        v113 = v111;
        v114 = *(_Records_GDEntityPredicate_records + 211);
        v5 = *(_Records_GDEntityPredicate_records + 212);
        v6 = _Records_GDEntityPredicate_records[840];

        v115 = sub_1ABA91D48(v6, v114, v5, v471);
        v113[2] = sub_1ABA7DBE8(v115, v116, v117, v118, v119, v120, v121, v122, v359, v369, v379, v387, v395, v402, v410, v418, v427, v435, v442, v449, v456, v463, v471[0]);
        v113[3].n128_u64[0] = v123;
        v113[3].n128_u64[1] = v124;
        v113[4].n128_u16[0] = v125;
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        v126 = swift_allocObject();
        v126[1] = v360;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_324;
        }

        v127 = v126;
        v128 = sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v471);
        v127[2] = sub_1ABA7DBE8(v128, v129, v130, v131, v132, v133, v134, v135, v360.n128_i64[0], v360.n128_i64[1], v380, v388, v396, v403, v411, v419, v428, v436, v443, v450, v457, v464, v471[0]);
        v127[3].n128_u64[0] = v136;
        v127[3].n128_u64[1] = v137;
        v127[4].n128_u16[0] = v138;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_325;
        }

        v139 = sub_1ABA91D48(_Records_GDEntityPredicate_records[348], *(_Records_GDEntityPredicate_records + 88), *(_Records_GDEntityPredicate_records + 89), v471);
        *(v127 + 72) = sub_1ABA7DBE8(v139, v140, v141, v142, v143, v144, v145, v146, v361, v370, v381, v389, v397, v404, v412, v420, v429, v437, v444, v451, v458, v465, v471[0]);
        v127[5].n128_u64[1] = v147;
        v127[6].n128_u64[0] = v148;
        v127[6].n128_u16[4] = v149;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_326;
        }

        v150 = sub_1ABA91D48(_Records_GDEntityPredicate_records[360], *(_Records_GDEntityPredicate_records + 91), *(_Records_GDEntityPredicate_records + 92), v471);
        v127[7] = sub_1ABA7DBE8(v150, v151, v152, v153, v154, v155, v156, v157, v362, v371, v382, v390, v398, v405, v413, v421, v430, v438, v445, v452, v459, v466, v471[0]);
        v127[8].n128_u64[0] = v158;
        v127[8].n128_u64[1] = v159;
        v127[9].n128_u16[0] = v160;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_327;
        }

        v161 = sub_1ABA91D48(_Records_GDEntityPredicate_records[516], *(_Records_GDEntityPredicate_records + 130), *(_Records_GDEntityPredicate_records + 131), v471);
        *(v127 + 152) = sub_1ABA7DBE8(v161, v162, v163, v164, v165, v166, v167, v168, v363, v372, v383, v391, v399, v406, v414, v422, v431, v439, v446, v453, v460, v467, v471[0]);
        v127[10].n128_u64[1] = v169;
        v127[11].n128_u64[0] = v170;
        v127[11].n128_u16[4] = v171;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_328;
        }

        v172 = sub_1ABA91D48(_Records_GDEntityPredicate_records[372], *(_Records_GDEntityPredicate_records + 94), *(_Records_GDEntityPredicate_records + 95), v471);
        v127[12] = sub_1ABA7DBE8(v172, v173, v174, v175, v176, v177, v178, v179, v364, v373, v384, v392, v400, v407, v415, v423, v432, v440, v447, v454, v461, v468, v471[0]);
        v127[13].n128_u64[0] = v180;
        v127[13].n128_u64[1] = v181;
        v127[14].n128_u16[0] = v182;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_329;
        }

        v183 = sub_1ABA91D48(_Records_GDEntityPredicate_records[504], *(_Records_GDEntityPredicate_records + 127), *(_Records_GDEntityPredicate_records + 128), v471);
        *(v127 + 232) = sub_1ABA7DBE8(v183, v184, v185, v186, v187, v188, v189, v190, v365, v374, v385, v393, v401, v408, v416, v424, v433, v441, v448, v455, v462, v469, v471[0]);
        v127[15].n128_u64[1] = v191;
        v127[16].n128_u64[0] = v192;
        v127[16].n128_u16[4] = v193;
        v113[4].n128_u64[1] = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v317 = v9[2];
          sub_1ABA7BEF0();
          sub_1ABADB5D8();
          v9 = v318;
        }

        v195 = v9[2];
        v194 = v9[3];
        v4 = v195 + 1;
        if (v195 >= v194 >> 1)
        {
          sub_1ABA7BBEC(v194);
          sub_1ABA83A70();
          v9 = v319;
        }

        sub_1ABA909F4();
LABEL_172:
        v9[v195 + 4] = v196;
        goto LABEL_214;
      case 4:
        if (v442 < 59)
        {
          goto LABEL_252;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_337;
        }

        v276 = *(_Records_GDEntityPredicate_records + 175);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_279;
        }

        v278 = *(v277 + 1408);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_297;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_383;
        }

        v17 = *(v279 + 1392);
        v18 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_384;
        }

        goto LABEL_208;
      case 5:
        sub_1ABA9955C();
        v77 = swift_allocObject();
        sub_1ABA7F648(v77, v78, v79, v80, v81, v82, v83, v84, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v409, v417, v426, v434);
        if (v85 < 35)
        {
          goto LABEL_264;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_319;
        }

        v86 = *(_Records_GDEntityPredicate_records + 103);
        if (v86 >= v456)
        {
          goto LABEL_278;
        }

        v87 = *(_Records_GDEntityPredicate_records + 104);
        sub_1ABA7E98C();
        if (v13 == v14)
        {
          goto LABEL_301;
        }

        v6 = _Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_356;
        }

        v4 = v88;
        v90 = *(v89 + 816);

        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_357;
        }

        goto LABEL_167;
      case 6:
        sub_1ABA9955C();
        v91 = swift_allocObject();
        sub_1ABA7F648(v91, v92, v93, v94, v95, v96, v97, v98, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v409, v417, v426, v434);
        if (v99 < 36)
        {
          goto LABEL_257;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_334;
        }

        v86 = *(_Records_GDEntityPredicate_records + 106);
        if (v86 >= v456)
        {
          goto LABEL_273;
        }

        v100 = *(_Records_GDEntityPredicate_records + 107);
        sub_1ABA7E98C();
        if (v13 == v14)
        {
          goto LABEL_303;
        }

        v6 = _Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_377;
        }

        v4 = v101;
        v90 = *(v102 + 840);

        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_378;
        }

        goto LABEL_167;
      case 7:
        if (v442 < 140)
        {
          goto LABEL_261;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_316;
        }

        v257 = *(_Records_GDEntityPredicate_records + 418);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_287;
        }

        v259 = *(v258 + 3352);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_299;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_349;
        }

        v17 = *(v260 + 3336);
        v18 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_350;
        }

        goto LABEL_208;
      case 8:
        sub_1ABA8EAFC();
        v50 = swift_allocObject();
        sub_1ABA7F648(v50, v51, v52, v53, v54, v55, v56, v57, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v8, v417, v426, v434);
        if (v58 < 117)
        {
          goto LABEL_268;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_315;
        }

        v4 = *(_Records_GDEntityPredicate_records + 349);
        if (v4 >= v456)
        {
          goto LABEL_288;
        }

        v59 = *(_Records_GDEntityPredicate_records + 350);
        sub_1ABA7E98C();
        if (v13 == v14)
        {
          goto LABEL_295;
        }

        v5 = _Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_346;
        }

        v32 = v60;
        v62 = *(v61 + 2784);

        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_347;
        }

        v63 = sub_1ABA8C270();
        sub_1ABA94B74(v63, v64);
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        v65 = swift_allocObject();
        sub_1ABA81A10(v65, v66, v67, v68, v69, v70, v71, v72, v358, v368, v378, v387, v73);
        if (!v75)
        {
          goto LABEL_348;
        }

        if (*(v75 + 656) >= v456 || *(v75 + 664) >= v449)
        {
          goto LABEL_308;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_369;
        }

        v48 = v74;
        v49 = *(v75 + 648);
        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_370;
        }

        goto LABEL_137;
      case 9:
        if (v442 < 143)
        {
          goto LABEL_258;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_331;
        }

        v205 = *(_Records_GDEntityPredicate_records + 427);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_285;
        }

        v207 = *(v206 + 3424);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_298;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_367;
        }

        v17 = *(v208 + 3408);
        v18 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_368;
        }

        goto LABEL_208;
      case 10:
        sub_1ABA8EAFC();
        v20 = swift_allocObject();
        sub_1ABA7F648(v20, v21, v22, v23, v24, v25, v26, v27, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v8, v417, v426, v434);
        if (v28 < 91)
        {
          goto LABEL_259;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_330;
        }

        v4 = *(_Records_GDEntityPredicate_records + 271);
        if (v4 >= v456)
        {
          goto LABEL_280;
        }

        v29 = *(_Records_GDEntityPredicate_records + 272);
        sub_1ABA7E98C();
        if (v13 == v14)
        {
          goto LABEL_289;
        }

        v5 = _Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_364;
        }

        v32 = v30;
        v33 = *(v31 + 2160);

        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_365;
        }

        v34 = sub_1ABA8C270();
        sub_1ABA94B74(v34, v35);
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        v36 = swift_allocObject();
        sub_1ABA81A10(v36, v37, v38, v39, v40, v41, v42, v43, v357, v367, v377, v387, v44);
        if (!v46)
        {
          goto LABEL_366;
        }

        if (*(v46 + 1232) >= v456 || *(v46 + 1240) >= v449)
        {
          goto LABEL_310;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_342;
        }

        v48 = v45;
        v49 = *(v46 + 1224);
        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_343;
        }

        goto LABEL_137;
      case 11:
        if (v442 < 140)
        {
          goto LABEL_269;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_314;
        }

        v213 = *(_Records_GDEntityPredicate_records + 418);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_275;
        }

        v215 = v9;
        v9 = *(v214 + 3352);
        if (v9 >= v449)
        {
          goto LABEL_293;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_344;
        }

        v216 = *(v214 + 3336);
        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_345;
        }

        sub_1ABA90270();
        v4 = swift_allocObject();
        v217 = sub_1ABF23DD4();
        *(v4 + 16) = v5;
        *(v4 + 24) = v6;
        *(v4 + 32) = v217;
        *(v4 + 40) = v218;
        *(v4 + 48) = v216;
        *(v4 + 56) = v426;
        *(v4 + 64) = v434;
        *(v4 + 72) = 0;
        *(v4 + 80) = 0;
        *(v4 + 87) = 0;

        v9 = v215;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v320 = v215[2];
          sub_1ABA7BEF0();
          sub_1ABADB5D8();
          v9 = v321;
        }

        v220 = v9[2];
        v219 = v9[3];
        v5 = (v220 + 1);
        if (v220 >= v219 >> 1)
        {
          sub_1ABA7BBEC(v219);
          sub_1ABA83A70();
          v9 = v322;
        }

        v9[2] = v5;
        v9[v220 + 4] = v4;
        goto LABEL_214;
      case 12:
        sub_1ABA9955C();
        v261 = swift_allocObject();
        sub_1ABA7F648(v261, v262, v263, v264, v265, v266, v267, v268, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v409, v417, v426, v434);
        if (v269 < 33)
        {
          goto LABEL_267;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_332;
        }

        v86 = *(_Records_GDEntityPredicate_records + 97);
        if (v86 >= v456)
        {
          goto LABEL_282;
        }

        v270 = *(_Records_GDEntityPredicate_records + 98);
        sub_1ABA7E98C();
        if (v13 == v14)
        {
          goto LABEL_305;
        }

        v6 = _Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_371;
        }

        v4 = v271;
        v90 = *(v272 + 768);

        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_372;
        }

LABEL_167:
        sub_1ABA90270();
        v273 = sub_1ABF23DD4();
        *(v4 + 32) = v86;
        *(v4 + 40) = v6;
        *(v4 + 48) = v273;
        *(v4 + 56) = v274;
        *(v4 + 64) = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v308 = v9[2];
          sub_1ABA7BEF0();
          sub_1ABADB5D8();
          v9 = v309;
        }

        v195 = v9[2];
        v275 = v9[3];
        v5 = (v195 + 1);
        if (v195 >= v275 >> 1)
        {
          sub_1ABA7BBEC(v275);
          sub_1ABA83A70();
          v9 = v310;
        }

        v196 = v4 | 0x8000000000000004;
        v9[2] = v5;
        goto LABEL_172;
      case 13:
        if (v442 < 34)
        {
          goto LABEL_255;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_317;
        }

        v290 = *(_Records_GDEntityPredicate_records + 100);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_274;
        }

        v292 = *(v291 + 808);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_307;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_351;
        }

        v17 = *(v293 + 792);
        v18 = sub_1ABF23DD4();
        if (_Records_GDEntityPredicate_labels)
        {
          goto LABEL_208;
        }

        goto LABEL_352;
      case 14:
        sub_1ABA8EAFC();
        v221 = swift_allocObject();
        sub_1ABA7F648(v221, v222, v223, v224, v225, v226, v227, v228, v356, *(&v356 + 1), v376, v387, v394, *(&v394 + 1), v8, v417, v426, v434);
        if (v229 < 92)
        {
          goto LABEL_254;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_318;
        }

        v4 = *(_Records_GDEntityPredicate_records + 274);
        if (v4 >= v456)
        {
          goto LABEL_272;
        }

        v230 = *(_Records_GDEntityPredicate_records + 275);
        sub_1ABA7E98C();
        if (v13 == v14)
        {
          goto LABEL_300;
        }

        v5 = _Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_353;
        }

        v32 = v231;
        v233 = *(v232 + 2184);

        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_354;
        }

        v234 = sub_1ABA8C270();
        sub_1ABA94B74(v234, v235);
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        v236 = swift_allocObject();
        sub_1ABA81A10(v236, v237, v238, v239, v240, v241, v242, v243, v366, v375, v386, v387, v244);
        if (!v246)
        {
          goto LABEL_355;
        }

        if (*(v246 + 416) >= v456 || *(v246 + 424) >= v449)
        {
          goto LABEL_309;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_379;
        }

        v48 = v245;
        v49 = *(v246 + 408);
        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_380;
        }

LABEL_137:
        sub_1ABA90270();
        v248 = sub_1ABF23DD4();
        *(v48 + 32) = v5;
        *(v48 + 40) = v6;
        *(v48 + 48) = v248;
        *(v48 + 56) = v249;
        *(v48 + 64) = v49;
        *(v32 + 72) = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v311 = v9[2];
          sub_1ABA7BEF0();
          sub_1ABADB5D8();
          v9 = v312;
        }

        v251 = v9[2];
        v250 = v9[3];
        v4 = v251 + 1;
        if (v251 >= v250 >> 1)
        {
          sub_1ABA7BBEC(v250);
          sub_1ABA83A70();
          v9 = v313;
        }

        sub_1ABA909F4();
        v9[v251 + 4] = v252;
        v8 = v409;
        goto LABEL_214;
      case 15:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
        goto LABEL_214;
      case 16:
        if (v442 >= 225)
        {
          if (!_Records_GDEntityPredicate_records)
          {
            goto LABEL_336;
          }

          v253 = *(_Records_GDEntityPredicate_records + 673);
          sub_1ABA80E54();
          if (v13 == v14)
          {
            goto LABEL_277;
          }

          v255 = *(v254 + 5392);
          sub_1ABA7C4E0();
          if (v13 == v14)
          {
            goto LABEL_291;
          }

          if (!_Records_GDEntityPredicate_predicateIds)
          {
            goto LABEL_381;
          }

          v17 = *(v256 + 5376);
          v18 = sub_1ABF23DD4();
          if (!_Records_GDEntityPredicate_labels)
          {
            goto LABEL_382;
          }

          goto LABEL_208;
        }

        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
        __break(1u);
        goto LABEL_311;
      case 17:
        if (v442 < 153)
        {
          goto LABEL_253;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_322;
        }

        v284 = *(_Records_GDEntityPredicate_records + 457);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_270;
        }

        v286 = *(v285 + 3664);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_290;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_362;
        }

        v17 = *(v287 + 3648);
        v288 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_363;
        }

        goto LABEL_224;
      case 18:
        if (v442 < 154)
        {
          goto LABEL_260;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_313;
        }

        v300 = *(_Records_GDEntityPredicate_records + 460);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_284;
        }

        v302 = *(v301 + 3688);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_294;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_338;
        }

        v17 = *(v303 + 3672);
        v288 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_339;
        }

LABEL_224:
        v4 = v288;
        v294 = v289;
        sub_1ABF23DD4();
        sub_1ABA90270();
        v295 = v9;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v296 = v417;
        }

        else
        {
          v314 = *(v417 + 16);
          sub_1ABA7BEF0();
          sub_1ABAD8B6C();
          v296 = v315;
        }

        v298 = *(v296 + 16);
        v304 = *(v296 + 24);
        if (v298 >= v304 >> 1)
        {
          sub_1ABA7BBEC(v304);
          sub_1ABAD8B6C();
          v296 = v316;
        }

        *(v296 + 16) = v298 + 1;
        v417 = v296;
        goto LABEL_213;
      case 19:
        if (v442 < 182)
        {
          goto LABEL_251;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_335;
        }

        v201 = *(_Records_GDEntityPredicate_records + 544);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_283;
        }

        v203 = *(v202 + 4360);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_302;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_373;
        }

        v17 = *(v204 + 4344);
        v18 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_375;
        }

        goto LABEL_208;
      case 20:
        if (v442 < 14)
        {
          goto LABEL_262;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_321;
        }

        v197 = *(_Records_GDEntityPredicate_records + 40);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_286;
        }

        v199 = *(v198 + 328);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_292;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_358;
        }

        v17 = *(v200 + 312);
        v18 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_359;
        }

        goto LABEL_208;
      default:
        if (v442 < 2)
        {
          goto LABEL_263;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_320;
        }

        v11 = *(_Records_GDEntityPredicate_records + 4);
        sub_1ABA80E54();
        if (v13 == v14)
        {
          goto LABEL_271;
        }

        v15 = *(v12 + 40);
        sub_1ABA7C4E0();
        if (v13 == v14)
        {
          goto LABEL_306;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_360;
        }

        v17 = *(v16 + 24);
        v18 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_361;
        }

        goto LABEL_208;
    }
  }
}

void sub_1ABD73030(uint64_t a1)
{
  v2 = sub_1ABF21EB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for KGQ.Value();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABB2D38C(a1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v10;
      sub_1ABA8F740();
      if (!(v15 ^ v16 | v14))
      {
        goto LABEL_27;
      }

      if (v24 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      sub_1ABA7DBF8();
      if (v15)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    case 2u:
      (*(v3 + 32))(v6, v10, v2);
      sub_1ABF21E14();
      sub_1ABA8F740();
      if (!(v15 ^ v16 | v14))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_28;
      }

      sub_1ABA7DBF8();
      if (v15)
      {
        v28 = v17;
        sub_1ABF24FF4();
        (*(v3 + 8))(v6, v2);
        return;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return;
    case 3u:
      v18 = *v10;
      sub_1ABA8F740();
      if (!(v15 ^ v16 | v14))
      {
        goto LABEL_26;
      }

      if (v19 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      sub_1ABA7DBF8();
      if (v15)
      {
LABEL_22:
        v28 = v20;
        sub_1ABF24FF4();
      }

      else
      {
        __break(1u);
LABEL_16:
        v21 = *v10;
        v22 = *(v10 + 1);
      }

      return;
    case 4u:
      v28 = *v10;
      EntityIdentifier.stringValue.getter();
      return;
    case 5u:
      v25 = *v10;
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1ABF23B14();
      v27[0] = v25;
      v26 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v26);

      return;
    case 6u:
      sub_1ABD7738C(*v10);
      return;
    case 7u:
      goto LABEL_16;
    default:
      v11 = *v10;
      v12 = *(v10 + 1);
      v28 = *v10;
      v29 = v12;
      v27[0] = 32;
      v27[1] = 0xE100000000000000;
      sub_1ABAE28EC();
      if (sub_1ABF248D4())
      {
        v28 = 39;
        v29 = 0xE100000000000000;
        MEMORY[0x1AC5A9410](v11, v12);

        MEMORY[0x1AC5A9410](39, 0xE100000000000000);
      }

      return;
  }
}

void sub_1ABD73394(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1ABD73030(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_1ABD733D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A314(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABD75FD0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABD7343C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (v1 == 1)
    {
      v1 = a1[4];
      v2 = a1[5];
    }

    else
    {
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      sub_1ABAA1A48();
      v3 = sub_1ABF23B54();
      MEMORY[0x1AC5A9410](v3);

      sub_1ABA90D50();
      return 10075;
    }
  }

  return v1;
}

uint64_t sub_1ABD74854()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v12 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];
    v7 = v2[14];

    v8 = sub_1ABD75E4C;
  }

  else
  {
    v10 = v2[18];
    v9 = v2[19];

    v8 = sub_1ABD749A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1ABD749A8()
{
  v1 = v0[12];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[13];
  sub_1ABB4DF80();
  v7 = *(*(v6 + 56) + 16);
  sub_1ABB4E384(v7);
  sub_1ABD75F08(v4, v2, 0);
  v8 = *(v6 + 56);
  v9 = (v8 + 24 * v7);
  *(v8 + 16) = v7 + 1;
  v9[4] = v5;
  v9[5] = v1;
  v9[6] = v3;
  *(v6 + 56) = v8;
  v189 = v0[22];
  while (1)
  {
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = sub_1ABD769A4(v10);
      if (v8)
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 19;
      }

      sub_1ABAB5134();
    }

    else
    {
      v12 = 19;
      sub_1ABAB5134();
    }

    v13 = v0[15];
    v14 = v0[16] + 1;
    v0[16] = v14;
    v15 = v0[14];
    if (v14 == v13)
    {
      v119 = v0[13];
      v120 = v0[14];

      v121 = *(v119 + 56);
      v190 = v0[1];

      sub_1ABA8B618();

      __asm { BRAA            X1, X16 }
    }

    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = v15 + 32 * v14;
    v17 = *(v16 + 32);
    v0[17] = v17;
    sub_1ABAA0F40(v16);
    switch(v18)
    {
      case 1:
        v26 = sub_1ABAA2380();
        sub_1ABD75F6C(v26, v27, v28);
        v29 = sub_1ABAA2380();
        sub_1ABD75F6C(v29, v30, v31);
        v32 = sub_1ABA82DB8();
        v34 = sub_1ABD76AB8(v32, v33);
        if (v189)
        {
          v168 = v0[14];

          v169 = sub_1ABAA2380();
          sub_1ABD75F08(v169, v170, v171);
          v144 = sub_1ABAA2380();
          goto LABEL_261;
        }

        v35 = v34;
        v36 = v0[13];
        v37 = sub_1ABAA2380();
        sub_1ABD75F08(v37, v38, v39);
        v40 = sub_1ABAA2380();
        sub_1ABD75F6C(v40, v41, v42);
        v43 = sub_1ABA82DB8();
        sub_1ABD71ABC(v43, v44, v45);
        v46 = v0[13];

        v47 = v0[11];
        v8 = *(v46 + 56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA95368();
          v8 = v117;
        }

        v48 = v2;
        v5 = *(v8 + 16);
        v49 = *(v8 + 24);
        v2 = v17;
        if (v5 >= v49 >> 1)
        {
          sub_1ABA7BBEC(v49);
          sub_1ABAA1398();
          v8 = v118;
        }

        v50 = v0[13];
        sub_1ABD75F08(v7, v48, 1u);
        v189 = 0;
        *(v8 + 16) = v5 + 1;
        v51 = (v8 + 24 * v5);
        v51[4] = v2;
        v51[5] = v47;
        v51[6] = v35;
        *(v50 + 56) = v8;
        continue;
      case 2:
        v19 = sub_1ABAA2D58();
        sub_1ABD75F6C(v19, v20, v21);
        v22 = sub_1ABAA2D58();
        sub_1ABD75F6C(v22, v23, v24);
        v25 = sub_1ABD77144(v7);
        switch(v2)
        {
          case 1:
            if (!v25)
            {
              goto LABEL_259;
            }

            sub_1ABAA29C4();
            switch(v12)
            {
              case 0u:
                goto LABEL_89;
              case 1u:
                sub_1ABA8F754();
                goto LABEL_89;
              case 2u:
                sub_1ABA975C0();
                goto LABEL_89;
              case 3u:
                sub_1ABAB5D44();
                goto LABEL_89;
              case 4u:
                sub_1ABA96D84();
                goto LABEL_89;
              case 5u:
                sub_1ABAA4F74();
                goto LABEL_89;
              case 6u:
                sub_1ABA84278();
                goto LABEL_89;
              case 7u:
                sub_1ABA7C4EC();
                goto LABEL_89;
              case 8u:
                sub_1ABA7F658();
                goto LABEL_89;
              case 9u:
                v54 = sub_1ABAA417C();
                goto LABEL_49;
              case 0xAu:
                sub_1ABAA5970();
                goto LABEL_89;
              case 0xBu:
                v54 = sub_1ABA978B4();
                goto LABEL_49;
              case 0xCu:
                sub_1ABAA1FE8();
                goto LABEL_89;
              case 0xDu:
                sub_1ABAA0F2C();
                goto LABEL_89;
              case 0xEu:
                sub_1ABAB5744();
LABEL_92:
                sub_1ABAA3988();
                goto LABEL_209;
              case 0xFu:
                sub_1ABAA17E4();
                goto LABEL_89;
              case 0x10u:
                v54 = sub_1ABAA17F8();
LABEL_49:
                sub_1ABA7CFCC(v54);
                goto LABEL_89;
              case 0x11u:
                sub_1ABA81A20();
                goto LABEL_89;
              case 0x12u:
                sub_1ABA80E60();
LABEL_89:
                sub_1ABAA31C4();
                sub_1ABA9554C();
                if ((v5 & 1) == 0)
                {
                  goto LABEL_302;
                }

                sub_1ABA7ADC4();
                switch(v57)
                {
                  case 1:
                    sub_1ABA8F754();
                    goto LABEL_209;
                  case 2:
                    sub_1ABA975C0();
                    goto LABEL_209;
                  case 3:
                    sub_1ABAB5D44();
                    goto LABEL_209;
                  case 4:
                    goto LABEL_209;
                  case 5:
                    sub_1ABAA4F74();
                    goto LABEL_209;
                  case 6:
                    sub_1ABA84278();
                    goto LABEL_209;
                  case 7:
                    sub_1ABA7C4EC();
                    goto LABEL_209;
                  case 8:
                    sub_1ABA7F658();
                    goto LABEL_209;
                  case 9:
                    v60 = sub_1ABAA417C();
                    break;
                  case 10:
                    sub_1ABAA5970();
                    goto LABEL_209;
                  case 11:
                    v60 = sub_1ABA978B4();
                    break;
                  case 12:
                    sub_1ABAA1FE8();
                    goto LABEL_209;
                  case 13:
                    sub_1ABAA0F2C();
                    goto LABEL_209;
                  case 14:
                    goto LABEL_92;
                  case 15:

                    goto LABEL_210;
                  case 16:
                    v60 = sub_1ABAA17F8();
                    break;
                  case 17:
                    sub_1ABA81A20();
                    goto LABEL_209;
                  case 18:
                    sub_1ABA80E60();
                    goto LABEL_209;
                  default:
                    sub_1ABAA29C4();
                    goto LABEL_209;
                }

                sub_1ABA7CFCC(v60);
LABEL_209:
                sub_1ABA958F0();
                sub_1ABA9554C();
                if (v5)
                {
LABEL_210:
                  v90 = 4;
                }

                else
                {
LABEL_302:
                  sub_1ABA7ADC4();
                  switch(v91)
                  {
                    case 1:
                      sub_1ABA8F754();
                      goto LABEL_231;
                    case 2:
                      sub_1ABA975C0();
                      goto LABEL_231;
                    case 3:
                      sub_1ABAB5D44();
                      goto LABEL_231;
                    case 4:
                      goto LABEL_231;
                    case 5:
                      sub_1ABAA4F74();
                      goto LABEL_231;
                    case 6:
                      sub_1ABA84278();
                      goto LABEL_231;
                    case 7:
                      sub_1ABA7C4EC();
                      goto LABEL_231;
                    case 8:
                      sub_1ABA7F658();
                      goto LABEL_231;
                    case 9:
                      v92 = sub_1ABAA417C();
                      goto LABEL_219;
                    case 10:
                      sub_1ABAA5970();
                      goto LABEL_231;
                    case 11:
                      v92 = sub_1ABA978B4();
LABEL_219:
                      sub_1ABA7CFCC(v92);
                      goto LABEL_231;
                    case 12:
                      sub_1ABAA1FE8();
                      goto LABEL_231;
                    case 13:
                      sub_1ABAA0F2C();
                      goto LABEL_231;
                    case 14:
                      sub_1ABAA3988();
                      goto LABEL_231;
                    case 15:
                      sub_1ABAA17E4();
                      goto LABEL_231;
                    case 16:

                      goto LABEL_232;
                    case 17:
                      sub_1ABA81A20();
                      goto LABEL_231;
                    case 18:
                      sub_1ABA80E60();
                      goto LABEL_231;
                    default:
                      sub_1ABAA29C4();
LABEL_231:
                      sub_1ABA9A254();
                      v93 = sub_1ABAB5528();

                      if (v93)
                      {
LABEL_232:
                        v90 = 3;
                      }

                      else
                      {
                        v90 = 2;
                      }

                      break;
                  }
                }

                sub_1ABAD219C(&qword_1EB4D1320, qword_1ABF5EC20);
                v65 = sub_1ABAA1164();
                *(v65 + 16) = xmmword_1ABF34740;
                *(v65 + 32) = v12;
                *(v65 + 33) = v90;
                v94 = sub_1ABAA2D58();
                sub_1ABD75F08(v94, v95, v96);

                v98 = sub_1ABD77144(v97);
                if (!v98)
                {
                  goto LABEL_254;
                }

                v99 = v98;
                v100 = v98[2];
                if (v100)
                {
                  v73 = v17;
                  if (v100 == 1)
                  {
                    v75 = v98[4];
                    v74 = v98[5];
                  }

                  else
                  {
                    sub_1ABA7FD18();
                    v0[9] = v99;
                    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
                    sub_1ABAAA5C0();
                    sub_1ABAA1A48();
                    v101 = sub_1ABF23B54();
                    MEMORY[0x1AC5A9410](v101);

                    sub_1ABA90D50();

                    v75 = v0[4];
                    v74 = v0[5];
                  }
                }

                else
                {
                  v73 = v17;

                  v75 = 0;
                  v74 = 0xE000000000000000;
                }

                v76 = 0x9000000000000004;
                break;
              default:
                goto LABEL_253;
            }

            goto LABEL_241;
          case 2:
            if (!v25)
            {
              goto LABEL_259;
            }

            sub_1ABAA29C4();
            switch(v12)
            {
              case 0u:
                goto LABEL_67;
              case 1u:
                sub_1ABA8F754();
                goto LABEL_67;
              case 2u:
                sub_1ABA975C0();
                goto LABEL_67;
              case 3u:
                sub_1ABAB5D44();
                goto LABEL_67;
              case 4u:
                sub_1ABA96D84();
                goto LABEL_67;
              case 5u:
                sub_1ABAA4F74();
                goto LABEL_67;
              case 6u:
                sub_1ABA84278();
                goto LABEL_67;
              case 7u:
                sub_1ABA7C4EC();
                goto LABEL_67;
              case 8u:
                sub_1ABA7F658();
                goto LABEL_67;
              case 9u:
                v52 = sub_1ABAA417C();
                goto LABEL_39;
              case 0xAu:
                sub_1ABAA5970();
                goto LABEL_67;
              case 0xBu:
                v52 = sub_1ABA978B4();
                goto LABEL_39;
              case 0xCu:
                sub_1ABAA1FE8();
                goto LABEL_67;
              case 0xDu:
                sub_1ABAA0F2C();
                goto LABEL_67;
              case 0xEu:
                sub_1ABAB5744();
LABEL_70:
                sub_1ABAA3988();
                goto LABEL_130;
              case 0xFu:
                sub_1ABAA17E4();
                goto LABEL_67;
              case 0x10u:
                v52 = sub_1ABAA17F8();
LABEL_39:
                sub_1ABA7CFCC(v52);
                goto LABEL_67;
              case 0x11u:
                sub_1ABA81A20();
                goto LABEL_67;
              case 0x12u:
                sub_1ABA80E60();
LABEL_67:
                sub_1ABAA31C4();
                sub_1ABA9554C();
                if ((v5 & 1) == 0)
                {
                  goto LABEL_303;
                }

                sub_1ABA7ADC4();
                switch(v55)
                {
                  case 1:
                    sub_1ABA8F754();
                    goto LABEL_130;
                  case 2:
                    sub_1ABA975C0();
                    goto LABEL_130;
                  case 3:
                    sub_1ABAB5D44();
                    goto LABEL_130;
                  case 4:
                    goto LABEL_130;
                  case 5:
                    sub_1ABAA4F74();
                    goto LABEL_130;
                  case 6:
                    sub_1ABA84278();
                    goto LABEL_130;
                  case 7:
                    sub_1ABA7C4EC();
                    goto LABEL_130;
                  case 8:
                    sub_1ABA7F658();
                    goto LABEL_130;
                  case 9:
                    v58 = sub_1ABAA417C();
                    break;
                  case 10:
                    sub_1ABAA5970();
                    goto LABEL_130;
                  case 11:
                    v58 = sub_1ABA978B4();
                    break;
                  case 12:
                    sub_1ABAA1FE8();
                    goto LABEL_130;
                  case 13:
                    sub_1ABAA0F2C();
                    goto LABEL_130;
                  case 14:
                    goto LABEL_70;
                  case 15:

                    goto LABEL_131;
                  case 16:
                    v58 = sub_1ABAA17F8();
                    break;
                  case 17:
                    sub_1ABA81A20();
                    goto LABEL_130;
                  case 18:
                    sub_1ABA80E60();
                    goto LABEL_130;
                  default:
                    sub_1ABAA29C4();
                    goto LABEL_130;
                }

                sub_1ABA7CFCC(v58);
LABEL_130:
                sub_1ABA958F0();
                sub_1ABA9554C();
                if (v5)
                {
LABEL_131:
                  v61 = 4;
                }

                else
                {
LABEL_303:
                  sub_1ABA7ADC4();
                  switch(v62)
                  {
                    case 1:
                      sub_1ABA8F754();
                      goto LABEL_152;
                    case 2:
                      sub_1ABA975C0();
                      goto LABEL_152;
                    case 3:
                      sub_1ABAB5D44();
                      goto LABEL_152;
                    case 4:
                      goto LABEL_152;
                    case 5:
                      sub_1ABAA4F74();
                      goto LABEL_152;
                    case 6:
                      sub_1ABA84278();
                      goto LABEL_152;
                    case 7:
                      sub_1ABA7C4EC();
                      goto LABEL_152;
                    case 8:
                      sub_1ABA7F658();
                      goto LABEL_152;
                    case 9:
                      v63 = sub_1ABAA417C();
                      goto LABEL_140;
                    case 10:
                      sub_1ABAA5970();
                      goto LABEL_152;
                    case 11:
                      v63 = sub_1ABA978B4();
LABEL_140:
                      sub_1ABA7CFCC(v63);
                      goto LABEL_152;
                    case 12:
                      sub_1ABAA1FE8();
                      goto LABEL_152;
                    case 13:
                      sub_1ABAA0F2C();
                      goto LABEL_152;
                    case 14:
                      sub_1ABAA3988();
                      goto LABEL_152;
                    case 15:
                      sub_1ABAA17E4();
                      goto LABEL_152;
                    case 16:

                      goto LABEL_153;
                    case 17:
                      sub_1ABA81A20();
                      goto LABEL_152;
                    case 18:
                      sub_1ABA80E60();
                      goto LABEL_152;
                    default:
                      sub_1ABAA29C4();
LABEL_152:
                      sub_1ABA9A254();
                      v64 = sub_1ABAB5528();

                      if (v64)
                      {
LABEL_153:
                        v61 = 3;
                      }

                      else
                      {
                        v61 = 2;
                      }

                      break;
                  }
                }

                sub_1ABAD219C(&qword_1EB4D1320, qword_1ABF5EC20);
                v65 = sub_1ABAA1164();
                *(v65 + 16) = xmmword_1ABF34740;
                *(v65 + 32) = v12;
                *(v65 + 33) = v61;
                v66 = sub_1ABAA2D58();
                sub_1ABD75F08(v66, v67, v68);

                v70 = sub_1ABD77144(v69);
                if (!v70)
                {
                  goto LABEL_254;
                }

                v71 = v70;
                v72 = v70[2];
                if (!v72)
                {
                  v73 = v17;

                  v75 = 0;
                  v76 = 0xA000000000000000;
                  goto LABEL_205;
                }

                v73 = v17;
                if (v72 == 1)
                {
                  v75 = v70[4];
                  v74 = v70[5];
                }

                else
                {
                  sub_1ABD7697C();
                  v0[8] = v71;
                  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
                  sub_1ABAAA5C0();
                  sub_1ABAA1A48();
                  v77 = sub_1ABF23B54();
                  MEMORY[0x1AC5A9410](v77);

                  sub_1ABA90D50();

                  v75 = v0[2];
                  v74 = v0[3];
                }

                v76 = 0xA000000000000000;
                break;
              default:
                goto LABEL_253;
            }

            goto LABEL_241;
          case 3:
            if (!v25)
            {
              goto LABEL_259;
            }

            LOBYTE(v15) = v12;
            sub_1ABAA29C4();
            v159 = v12;
            switch(v12)
            {
              case 0u:
              case 0xCu:
                goto LABEL_285;
              case 1u:
                sub_1ABA97C98();
                goto LABEL_285;
              case 2u:
                sub_1ABAA35C8();
                goto LABEL_285;
              case 3u:
                sub_1ABA96A5C();
                goto LABEL_285;
              case 4u:
                sub_1ABAB5B08();
                goto LABEL_285;
              case 5u:
                sub_1ABA8C28C();
                goto LABEL_285;
              case 6u:
                sub_1ABA99568();
                goto LABEL_285;
              case 7u:
                sub_1ABA95354();
                goto LABEL_285;
              case 8u:
                sub_1ABA960EC();
                goto LABEL_285;
              case 9u:
                sub_1ABA7CFCC(0x616C6572u);
                goto LABEL_285;
              case 0xAu:
                sub_1ABA9027C();
                goto LABEL_285;
              case 0xBu:
                v172 = sub_1ABA828B0();
                goto LABEL_270;
              case 0xDu:
                sub_1ABA90A08();
                goto LABEL_285;
              case 0xEu:
                sub_1ABAB5744();
                sub_1ABAB5B08();
LABEL_288:
                sub_1ABA958F0();
                sub_1ABAABCF8();
                if ((v15 & 1) == 0)
                {
                  goto LABEL_290;
                }

LABEL_289:
                v175 = 4;
                break;
              case 0xFu:
                sub_1ABAA17E4();
                goto LABEL_285;
              case 0x10u:
                goto LABEL_267;
              case 0x11u:
                sub_1ABAA4A80();
                goto LABEL_285;
              case 0x12u:
                sub_1ABA8E35C();
                goto LABEL_285;
              default:
                goto LABEL_253;
            }

            goto LABEL_298;
          default:
            if (!v25)
            {
LABEL_259:
              v160 = v0[14];
              v161 = sub_1ABAA2D58();
              sub_1ABD75F08(v161, v162, v163);

              sub_1ABD75EB4();
              sub_1ABA7BD00();
              *v164 = 3;
LABEL_260:
              swift_willThrow();
              v144 = sub_1ABAA2D58();
LABEL_261:
              sub_1ABD75F08(v144, v145, v146);
LABEL_262:
              v165 = v0[1];
              sub_1ABA8B618();

              __asm { BRAA            X1, X16 }
            }

            sub_1ABAA29C4();
            switch(v12)
            {
              case 0u:
                goto LABEL_84;
              case 1u:
                sub_1ABA8F754();
                goto LABEL_84;
              case 2u:
                sub_1ABA975C0();
                goto LABEL_84;
              case 3u:
                sub_1ABAB5D44();
                goto LABEL_84;
              case 4u:
                sub_1ABA96D84();
                goto LABEL_84;
              case 5u:
                sub_1ABAA4F74();
                goto LABEL_84;
              case 6u:
                sub_1ABA84278();
                goto LABEL_84;
              case 7u:
                sub_1ABA7C4EC();
                goto LABEL_84;
              case 8u:
                sub_1ABA7F658();
                goto LABEL_84;
              case 9u:
                v53 = sub_1ABAA417C();
                goto LABEL_47;
              case 0xAu:
                sub_1ABAA5970();
                goto LABEL_84;
              case 0xBu:
                v53 = sub_1ABA978B4();
                goto LABEL_47;
              case 0xCu:
                sub_1ABAA1FE8();
                goto LABEL_84;
              case 0xDu:
                sub_1ABAA0F2C();
                goto LABEL_84;
              case 0xEu:
                sub_1ABAB5744();
LABEL_87:
                sub_1ABAA3988();
                goto LABEL_175;
              case 0xFu:
                sub_1ABAA17E4();
                goto LABEL_84;
              case 0x10u:
                v53 = sub_1ABAA17F8();
LABEL_47:
                sub_1ABA7CFCC(v53);
                goto LABEL_84;
              case 0x11u:
                sub_1ABA81A20();
                goto LABEL_84;
              case 0x12u:
                sub_1ABA80E60();
LABEL_84:
                sub_1ABAA31C4();
                sub_1ABA9554C();
                if ((v5 & 1) == 0)
                {
                  goto LABEL_304;
                }

                sub_1ABA7ADC4();
                switch(v56)
                {
                  case 1:
                    sub_1ABA8F754();
                    goto LABEL_175;
                  case 2:
                    sub_1ABA975C0();
                    goto LABEL_175;
                  case 3:
                    sub_1ABAB5D44();
                    goto LABEL_175;
                  case 4:
                    goto LABEL_175;
                  case 5:
                    sub_1ABAA4F74();
                    goto LABEL_175;
                  case 6:
                    sub_1ABA84278();
                    goto LABEL_175;
                  case 7:
                    sub_1ABA7C4EC();
                    goto LABEL_175;
                  case 8:
                    sub_1ABA7F658();
                    goto LABEL_175;
                  case 9:
                    v59 = sub_1ABAA417C();
                    break;
                  case 10:
                    sub_1ABAA5970();
                    goto LABEL_175;
                  case 11:
                    v59 = sub_1ABA978B4();
                    break;
                  case 12:
                    sub_1ABAA1FE8();
                    goto LABEL_175;
                  case 13:
                    sub_1ABAA0F2C();
                    goto LABEL_175;
                  case 14:
                    goto LABEL_87;
                  case 15:

                    goto LABEL_176;
                  case 16:
                    v59 = sub_1ABAA17F8();
                    break;
                  case 17:
                    sub_1ABA81A20();
                    goto LABEL_175;
                  case 18:
                    sub_1ABA80E60();
                    goto LABEL_175;
                  default:
                    sub_1ABAA29C4();
                    goto LABEL_175;
                }

                sub_1ABA7CFCC(v59);
LABEL_175:
                sub_1ABA958F0();
                sub_1ABA9554C();
                if (v5)
                {
LABEL_176:
                  v78 = 4;
                }

                else
                {
LABEL_304:
                  sub_1ABA7ADC4();
                  switch(v79)
                  {
                    case 1:
                      sub_1ABA8F754();
                      goto LABEL_197;
                    case 2:
                      sub_1ABA975C0();
                      goto LABEL_197;
                    case 3:
                      sub_1ABAB5D44();
                      goto LABEL_197;
                    case 4:
                      goto LABEL_197;
                    case 5:
                      sub_1ABAA4F74();
                      goto LABEL_197;
                    case 6:
                      sub_1ABA84278();
                      goto LABEL_197;
                    case 7:
                      sub_1ABA7C4EC();
                      goto LABEL_197;
                    case 8:
                      sub_1ABA7F658();
                      goto LABEL_197;
                    case 9:
                      v80 = sub_1ABAA417C();
                      goto LABEL_185;
                    case 10:
                      sub_1ABAA5970();
                      goto LABEL_197;
                    case 11:
                      v80 = sub_1ABA978B4();
LABEL_185:
                      sub_1ABA7CFCC(v80);
                      goto LABEL_197;
                    case 12:
                      sub_1ABAA1FE8();
                      goto LABEL_197;
                    case 13:
                      sub_1ABAA0F2C();
                      goto LABEL_197;
                    case 14:
                      sub_1ABAA3988();
                      goto LABEL_197;
                    case 15:
                      sub_1ABAA17E4();
                      goto LABEL_197;
                    case 16:

                      goto LABEL_198;
                    case 17:
                      sub_1ABA81A20();
                      goto LABEL_197;
                    case 18:
                      sub_1ABA80E60();
                      goto LABEL_197;
                    default:
                      sub_1ABAA29C4();
LABEL_197:
                      sub_1ABA9A254();
                      v81 = sub_1ABAB5528();

                      if (v81)
                      {
LABEL_198:
                        v78 = 3;
                      }

                      else
                      {
                        v78 = 2;
                      }

                      break;
                  }
                }

                sub_1ABAD219C(&qword_1EB4D1320, qword_1ABF5EC20);
                v65 = sub_1ABAA1164();
                *(v65 + 16) = xmmword_1ABF34740;
                *(v65 + 32) = v12;
                *(v65 + 33) = v78;
                v82 = sub_1ABAA2D58();
                sub_1ABD75F08(v82, v83, v84);

                v86 = sub_1ABD77144(v85);
                if (!v86)
                {
LABEL_254:
                  sub_1ABD718B8();
                  sub_1ABA7BD00();
                  *v151 = xmmword_1ABF34750;
                  goto LABEL_255;
                }

                v87 = v86;
                v88 = v86[2];
                if (v88)
                {
                  v73 = v17;
                  if (v88 == 1)
                  {
                    v75 = v86[4];
                    v74 = v86[5];
                  }

                  else
                  {
                    sub_1ABD76990();
                    v0[10] = v87;
                    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
                    sub_1ABAAA5C0();
                    sub_1ABAA1A48();
                    v89 = sub_1ABF23B54();
                    MEMORY[0x1AC5A9410](v89);

                    sub_1ABA90D50();

                    v75 = v0[6];
                    v74 = v0[7];
                  }

                  v76 = 0x9000000000000000;
                }

                else
                {
                  v73 = v17;

                  v75 = 0;
                  v76 = 0x9000000000000000;
LABEL_205:
                  v74 = 0xE000000000000000;
                }

LABEL_241:
                v102 = v0[13];
                v103 = swift_allocObject();
                *(v103 + 16) = v75;
                *(v103 + 24) = v74;
                v104 = sub_1ABAA2D58();
                sub_1ABD75F08(v104, v105, v106);
                v8 = *(v102 + 56);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1ABA95368();
                  v8 = v115;
                }

                v108 = *(v8 + 16);
                v107 = *(v8 + 24);
                v5 = v108 + 1;
                if (v108 >= v107 >> 1)
                {
                  sub_1ABA7BBEC(v107);
                  sub_1ABAA1398();
                  v8 = v116;
                }

                v109 = v76 | v103;
                v110 = v0[13];
                v111 = sub_1ABAA2D58();
                sub_1ABD75F08(v111, v112, v113);
                *(v8 + 16) = v5;
                v114 = (v8 + 24 * v108);
                v114[4] = v73;
                v114[5] = v109;
                v114[6] = v65;
                *(v110 + 56) = v8;
                break;
              default:
LABEL_253:
                v147 = sub_1ABAA2D58();
                sub_1ABD75F6C(v147, v148, v149);

                sub_1ABD75EB4();
                sub_1ABA7BD00();
                *v150 = 2;
                goto LABEL_260;
            }

            break;
        }

        break;
      case 3:

        sub_1ABD75EB4();
        sub_1ABA7BD00();
        *v143 = 0;
        swift_willThrow();
        v144 = sub_1ABA82DB8();
        v146 = 3;
        goto LABEL_261;
      default:
        v124 = sub_1ABAA1D00();
        sub_1ABD75F6C(v124, v125, v126);
        v127 = sub_1ABAA1D00();
        sub_1ABD75F6C(v127, v128, v129);
        v130 = sub_1ABA82DB8();
        v0[20] = sub_1ABD769D4(v130);
        v131 = sub_1ABAA1D00();
        sub_1ABD75F08(v131, v132, v133);
        v134 = sub_1ABAA1D00();
        sub_1ABD75F6C(v134, v135, v136);
        v137 = swift_task_alloc();
        v0[21] = v137;
        *v137 = v0;
        sub_1ABAA15CC();
        sub_1ABA8B618();

        return sub_1ABD661C0(v138, v139, v140);
    }
  }

  __break(1u);
LABEL_267:
  v172 = sub_1ABA9802C();
LABEL_270:
  sub_1ABA7CFCC(v172);
LABEL_285:
  v173 = v159;
  v174 = sub_1ABAA31C4();

  if (v174)
  {
    sub_1ABAB5B08();
    switch(v173)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 16:
      case 17:
      case 18:
        goto LABEL_288;
      case 15:

        goto LABEL_289;
      default:
        JUMPOUT(0);
    }
  }

LABEL_290:
  PersonalKnowledgeToolResultAttributeSemanticType.rawValue.getter();
  sub_1ABA9A254();
  if (v177 == v178 && v176 == 0xE800000000000000)
  {
  }

  else
  {
    v180 = sub_1ABAB5528();

    if ((v180 & 1) == 0)
    {
      v175 = 2;
      goto LABEL_298;
    }
  }

  v175 = 3;
LABEL_298:
  sub_1ABAD219C(&qword_1EB4D1320, qword_1ABF5EC20);
  v181 = sub_1ABAA1164();
  *(v181 + 16) = xmmword_1ABF34740;
  *(v181 + 32) = v12;
  *(v181 + 33) = v175;
  v182 = sub_1ABAA2D58();
  sub_1ABD75F08(v182, v183, v184);
  sub_1ABD718B8();
  sub_1ABA7BD00();
  *v185 = 0;
  v185[1] = 0;
  v186 = sub_1ABAA2D58();
  sub_1ABD75F6C(v186, v187, v188);
LABEL_255:
  v152 = v0[14];
  swift_willThrow();
  v153 = sub_1ABAA2D58();
  sub_1ABD75F08(v153, v154, v155);

  v156 = sub_1ABAA2D58();
  sub_1ABD75F08(v156, v157, v158);

  goto LABEL_262;
}

uint64_t sub_1ABD75E4C()
{
  sub_1ABD75F08(v0[18], v0[19], 0);
  v1 = v0[22];
  v2 = v0[1];

  return v2();
}

unint64_t sub_1ABD75EB4()
{
  result = qword_1EB4D9168;
  if (!qword_1EB4D9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9168);
  }

  return result;
}

uint64_t sub_1ABD75F08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 2u)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1ABD75F6C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 < 2u)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1ABD75FD0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABD76140(v7, v8, a1, v4);
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
    return sub_1ABD760C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABD760C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 + 24;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = (v8 - 24);
        v10 = *(v8 - 24);
        if (v10 >= *(v8 - 56))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = *(v8 - 56);
        v11 = *(v8 - 40);
        *(v8 - 32) = *v8;
        v8 -= 32;
        v13 = *(v8 + 16);
        *v9 = v12;
        v9[1] = v11;
        *(v8 - 24) = v10;
        *(v8 - 16) = v13;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABD76140(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9);
        v11 = 32 * v7;
        v12 = (*a3 + 32 * v7);
        v15 = *v12;
        v14 = v12 + 8;
        v13 = v15;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v10 < v13) ^ (*v14 >= *(v14 - 4));
          v14 += 4;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 32 * v6 - 32;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 16);
                v27 = *(v23 + 24);
                v28 = v11 != v19 || v23 >= v24 + 32;
                if (v28)
                {
                  v29 = *(v24 + 16);
                  *v23 = *v24;
                  *(v23 + 16) = v29;
                }

                *v24 = v25;
                *(v24 + 16) = v26;
                *(v24 + 24) = v27;
              }

              ++v21;
              v19 -= 32;
              v11 += 32;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 + 24;
            v32 = v7 - v9;
            do
            {
              v33 = v32;
              v34 = v31;
              do
              {
                v35 = (v34 - 24);
                v36 = *(v34 - 24);
                if (v36 >= *(v34 - 56))
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_117;
                }

                v38 = *(v34 - 56);
                v37 = *(v34 - 40);
                *(v34 - 32) = *v34;
                v34 -= 32;
                v39 = *(v34 + 16);
                *v35 = v38;
                v35[1] = v37;
                *(v34 - 24) = v36;
                *(v34 - 16) = v39;
                v28 = __CFADD__(v33++, 1);
              }

              while (!v28);
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v88 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = v8[2];
        sub_1ABAD8820();
        v8 = v84;
      }

      v40 = v8[2];
      v41 = v40 + 1;
      if (v40 >= v8[3] >> 1)
      {
        sub_1ABAD8820();
        v8 = v85;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v7;
      v43[1] = v9;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_62:
            if (v50)
            {
              goto LABEL_102;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_105;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_110;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v41 < 2)
          {
            goto LABEL_104;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_77:
          if (v65)
          {
            goto LABEL_107;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (v72 < v64)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1ABD76774((*a3 + 32 * *v76), (*a3 + 32 * *v78), (*a3 + 32 * v79), v89);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v79 < v77)
          {
            goto LABEL_97;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_98;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_99;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          v5 = 0;
          if (!v82)
          {
            goto LABEL_91;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_100;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_101;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_103;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_106;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_111;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_1ABD76648(&v91, *a1, a3);
LABEL_95:
}

uint64_t sub_1ABD76648(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABD76774((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABD76774(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_1ABADD52C(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_1ABADD52C(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_15:
  v15 = v6 - 32;
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v10 - 4) < *v15)
    {
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v18 = *(v15 + 1);
        *v5 = *v15;
        *(v5 + 1) = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 32)
    {
      v17 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v17;
    }

    v10 -= 32;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

uint64_t sub_1ABD768F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABD76910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABD769A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 24 * a1 + 24) + 16);
}

uint64_t sub_1ABD769D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v2++;
    v4 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = *(v3 + 16);
      sub_1ABADB6BC();
      v3 = v8;
    }

    v6 = *(v3 + 16);
    if (v6 >= *(v3 + 24) >> 1)
    {
      sub_1ABADB6BC();
      v3 = v9;
    }

    *(v3 + 16) = v6 + 1;
    *(v3 + 2 * v6 + 32) = (0xB1102010900uLL >> (8 * v4));
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1ABD76AB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for KGQ.Value();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  while (v11 != v10)
  {
    sub_1ABB2D38C(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v9);
    if (swift_getEnumCaseMultiPayload() != 6)
    {

      sub_1ABD75EB4();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      sub_1ABD6DC28(v9);
      return v12;
    }

    sub_1ABD76CBC(*v9, &v24);
    v13 = v24;
    if ((v24 & 0xFF00) == 0x500)
    {
      ++v10;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = *(v12 + 16);
        sub_1ABADB6BC();
        v12 = v18;
      }

      v15 = *(v12 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v12 + 24) >> 1)
      {
        v22 = v15 + 1;
        sub_1ABADB6BC();
        v16 = v22;
        v12 = v19;
      }

      ++v10;
      *(v12 + 16) = v16;
      *(v12 + 2 * v15 + 32) = v13;
      v3 = v23;
    }
  }

  return v12;
}

uint64_t sub_1ABD76CF0(char a1, char a2)
{
  v3 = sub_1ABD7738C(a2);
  v5 = v4;
  if (v3 == sub_1ABD7738C(a1) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1ABF25054();
  }

  return v8 & 1;
}

uint64_t sub_1ABD76D84(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = sub_1ABA7C50C(a1, a2, a3, a4, a5, a6, a7, a8, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v19[0]);
  sub_1ABA94BA0(v8, v9, v10, v11, v12, v13, v14, v15, v18[0]);
  static KnosisInternalFact.< infix(_:_:)(v18, v19);
  return v16 & 1;
}

uint64_t sub_1ABD76DC0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return sub_1ABA814E4();
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABD76E1C(char a1, char a2)
{
  v3 = sub_1ABD7738C(a2);
  v5 = v4;
  if (v3 == sub_1ABD7738C(a1) && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1ABF25054();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1ABD76EC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = sub_1ABA7C50C(a1, a2, a3, a4, a5, a6, a7, a8, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v19[0]);
  sub_1ABA94BA0(v8, v9, v10, v11, v12, v13, v14, v15, v18[0]);
  static KnosisInternalFact.< infix(_:_:)(v18, v19);
  return (v16 & 1) == 0;
}

uint64_t sub_1ABD76F04(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1ABF25054() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1ABD76F6C(char a1, char a2)
{
  v3 = sub_1ABD7738C(a1);
  v5 = v4;
  if (v3 == sub_1ABD7738C(a2) && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1ABF25054();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1ABD77010(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v8 = sub_1ABA7C50C(a1, a2, a3, a4, a5, a6, a7, a8, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v19[0]);
  sub_1ABA94BA0(v8, v9, v10, v11, v12, v13, v14, v15, v18[0]);
  static KnosisInternalFact.< infix(_:_:)(v19, v18);
  return (v16 & 1) == 0;
}

uint64_t sub_1ABD77050(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1ABF25054() ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1ABD770AC()
{
  v0 = type metadata accessor for KGQ.Value();
  v1 = sub_1ABA90294(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1ABA7EDF8();
  sub_1ABB2D38C(v6, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1ABD6DC28(v5);
    return 0;
  }

  else
  {
    result = *v5;
    v9 = v5[1];
  }

  return result;
}

uint64_t sub_1ABD77144(uint64_t a1)
{
  v2 = type metadata accessor for KGQ.Value();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v13 = MEMORY[0x1E69E7CC0];
    v26[0] = v12;
    do
    {
      sub_1ABB2D38C(v11, v9);
      v14 = sub_1ABA7BE8C();
      sub_1ABB2D38C(v14, v15);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v16 = *v5;
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_1ABF23B14();
        v26[1] = v16;
        v17 = sub_1ABF24FF4();
        MEMORY[0x1AC5A9410](v17);

        v18 = v27;
        v19 = v28;
        sub_1ABD6DC28(v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = *(v13 + 16);
          sub_1ABAAA4F4();
          v13 = v23;
        }

        v20 = *(v13 + 16);
        if (v20 >= *(v13 + 24) >> 1)
        {
          sub_1ABAAA4F4();
          v13 = v24;
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + 16 * v20;
        *(v21 + 32) = v18;
        *(v21 + 40) = v19;
        v12 = v26[0];
      }

      else
      {
        sub_1ABD6DC28(v9);
        sub_1ABD6DC28(v5);
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (!*(v13 + 16))
  {

    return 0;
  }

  return v13;
}

uint64_t sub_1ABD7738C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x6D614E7473726966;
      break;
    case 2:
      result = 0x656D614E7473616CLL;
      break;
    case 3:
      result = 0x73736572646461;
      break;
    case 4:
      result = 0x7961646874726962;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x6464416C69616D65;
      break;
    case 7:
      result = sub_1ABA7CFCC(0x616C6572u);
      break;
    case 8:
      result = 0x6565646E65747461;
      break;
    case 9:
      result = sub_1ABA80E80();
      break;
    case 10:
      result = sub_1ABA7CFCC(0x61636F6Cu);
      break;
    case 11:
      result = 1836020326;
      break;
    case 12:
      result = 28532;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7473657265746E69;
      break;
    case 15:
      result = 0x6E6F73726570;
      break;
    case 16:
      result = 0x6765746143707061;
      break;
    case 17:
      result = 0x7461447472617473;
      break;
    case 18:
      result = 0x65746144646E65;
      break;
    case 19:
      result = sub_1ABA7CFCC(0x61727564u);
      break;
    case 20:
      result = 1701869940;
      break;
    case 21:
      result = 0x74696D696CLL;
      break;
    case 22:
      result = 0x63734174726F73;
      break;
    case 23:
      result = 0x6373654474726F73;
      break;
    case 24:
      result = 0x656372756F73;
      break;
    case 25:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD775F0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1ABD77620(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a2 + 8), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return sub_1ABA814E4();
  }
}

BOOL sub_1ABD77620(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1 || (sub_1ABB4F410(a1, a4) & 1) == 0)
      {
        return 0;
      }

      a1 = sub_1ABA7EDF8();
      goto LABEL_22;
    case 2:
      if (a6 == 2)
      {
        switch(a2)
        {
          case 1:
            if (a5 != 1)
            {
              return 0;
            }

            break;
          case 2:
            if (a5 != 2)
            {
              return 0;
            }

            break;
          case 3:
            if (a5 != 3)
            {
              return 0;
            }

            break;
          default:
            if (a5)
            {
              return 0;
            }

            break;
        }

        v8 = a4;
LABEL_22:
        if (sub_1ABB48520(a1, v8))
        {
          return 1;
        }
      }

      return 0;
    case 3:
      if (a6 == 3 && (sub_1ABB4F410(a1, a4) & 1) != 0)
      {
        goto LABEL_11;
      }

      return 0;
    default:
      if (a6)
      {
        return 0;
      }

      sub_1ABB48E4C();
      if ((v6 & 1) == 0)
      {
        return 0;
      }

LABEL_11:
      sub_1ABA7EDF8();
      sub_1ABB486C4();
      return (v7 & 1) != 0;
  }
}

IntelligencePlatform::KGQ::QType_optional __swiftcall KGQ.QType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t KGQ.QType.rawValue.getter()
{
  result = 0x6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = sub_1ABA7CFCC(0x616C6572u);
      break;
    case 2:
      result = sub_1ABA80E80();
      break;
    case 3:
      result = 0x746E657665;
      break;
    case 4:
      result = 0x69746E6565726373;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABD778EC@<X0>(uint64_t *a1@<X8>)
{
  result = KGQ.QType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABD77920(char a1, char a2)
{
  v3 = sub_1ABD7738C(a1);
  v5 = v4;
  if (v3 == sub_1ABD7738C(a2) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1ABF25054();
  }

  return v8 & 1;
}

uint64_t sub_1ABD779A4()
{
  v0 = sub_1ABF250B4();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

void sub_1ABD779F8()
{
  sub_1ABA7E9B8();
  sub_1ABB48E4C();
  if (v0)
  {
    sub_1ABA7EDF8();

    sub_1ABB486C4();
  }
}

uint64_t sub_1ABD77A44()
{
  sub_1ABA7E9B8();
  if ((sub_1ABB4F410(v0, v1) & 1) == 0)
  {
    return 0;
  }

  v2 = sub_1ABA7EDF8();

  return sub_1ABB48520(v2, v3);
}

void sub_1ABD77A90()
{
  sub_1ABA7E9B8();
  if (sub_1ABB4F410(v0, v1))
  {
    sub_1ABA7EDF8();

    sub_1ABB486C4();
  }
}

uint64_t sub_1ABD77ADC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return sub_1ABA814E4();
      }

      return sub_1ABB48520(a1, a3);
    case 2:
      if (a4 == 2)
      {
        return sub_1ABB48520(a1, a3);
      }

      return sub_1ABA814E4();
    case 3:
      if (a4 == 3)
      {
        return sub_1ABB48520(a1, a3);
      }

      return sub_1ABA814E4();
    default:
      if (a4)
      {
        return sub_1ABA814E4();
      }

      else
      {
        return sub_1ABB48520(a1, a3);
      }
  }
}

uint64_t sub_1ABD77B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABD779A4();
  *a2 = result;
  return result;
}

uint64_t sub_1ABD77B88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABD7738C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1ABD77BF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1ABD779F8();
}

uint64_t sub_1ABD77C04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_1ABD77A44();
}

void sub_1ABD77C18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1ABD77A90();
}

uint64_t sub_1ABD77C48()
{
  v1 = *v0;
  sub_1ABF23B14();
  v2 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v2);

  return 0;
}

uint64_t sub_1ABD77CCC(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_1ABF21EB4();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for KGQ.Value();
  v6 = sub_1ABA90294(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v60 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v60 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v60 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v60 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v60 - v29);
  v31 = sub_1ABAD219C(&qword_1EB4D91A0, &qword_1ABF5F220);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v60 - v33;
  v36 = &v60 + *(v35 + 56) - v33;
  sub_1ABB2D38C(v64, &v60 - v33);
  sub_1ABB2D38C(v65, v36);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1ABB2D38C(v34, v27);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_37;
      }

      v46 = *v27;
      goto LABEL_18;
    case 2u:
      sub_1ABB2D38C(v34, v24);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v62 + 8))(v24, v63);
        goto LABEL_37;
      }

      v40 = v62;
      v41 = v60;
      v42 = v36;
      v43 = v63;
      (*(v62 + 32))(v60, v42, v63);
      v44 = sub_1ABF21E54();
      v45 = *(v40 + 8);
      v45(v41, v43);
      v45(v24, v43);
LABEL_25:
      sub_1ABD6DC28(v34);
      return v44 & 1;
    case 3u:
      sub_1ABB2D38C(v34, v21);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_37;
      }

      v46 = *v21;
LABEL_18:
      v49 = v46 == *v36;
      goto LABEL_22;
    case 4u:
      sub_1ABB2D38C(v34, v18);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_37;
      }

      v39 = *v18;
      goto LABEL_21;
    case 5u:
      sub_1ABB2D38C(v34, v15);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_37;
      }

      v39 = *v15;
LABEL_21:
      v49 = v39 == *v36;
LABEL_22:
      v44 = v49;
      goto LABEL_25;
    case 6u:
      v50 = v61;
      sub_1ABB2D38C(v34, v61);
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_37;
      }

      v51 = *v50;
      v52 = *v36;
      v53 = sub_1ABD7738C(v51);
      v55 = v54;
      if (v53 == sub_1ABD7738C(v52) && v55 == v56)
      {
        goto LABEL_34;
      }

      sub_1ABA7BE8C();
      goto LABEL_32;
    case 7u:
      sub_1ABB2D38C(v34, v10);
      v38 = *v10;
      v37 = v10[1];
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    default:
      sub_1ABB2D38C(v34, v30);
      v38 = *v30;
      v37 = v30[1];
      sub_1ABA7BE8C();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:

LABEL_37:
        sub_1ABD78FD0(v34);
        goto LABEL_38;
      }

LABEL_11:
      if (v38 == *v36 && v37 == *(v36 + 1))
      {
LABEL_34:

LABEL_35:
        sub_1ABD6DC28(v34);
        v44 = 1;
        return v44 & 1;
      }

      v48 = *(v36 + 1);
LABEL_32:
      v58 = sub_1ABF25054();

      if (v58)
      {
        goto LABEL_35;
      }

      sub_1ABD6DC28(v34);
LABEL_38:
      v44 = 0;
      return v44 & 1;
  }
}

BOOL sub_1ABD781C8(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = sub_1ABD7738C(a1);
  v10 = v9;
  if (v8 == sub_1ABD7738C(a4) && v10 == v11)
  {
  }

  else
  {
    sub_1ABA99580();
    v13 = sub_1ABF25054();

    if ((v13 & 1) == 0)
    {
      sub_1ABA99580();
      v14 = sub_1ABF25054();

      return v14 & 1;
    }
  }

  return *(a2 + 16) < *(a5 + 16);
}

uint64_t sub_1ABD7829C(char a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  v9 = sub_1ABD7738C(a1);
  v11 = v10;
  if (v9 == sub_1ABD7738C(a4) && v11 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_1ABF25054();

  result = 0;
  if (v14)
  {
LABEL_8:
    v16 = sub_1ABA7BE8C();
    return sub_1ABB48520(v16, v17) & (a3 == a6);
  }

  return result;
}

uint64_t sub_1ABD78408@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1ABB2B878(a1, a2);
  if (v7)
  {
    if (v6 == 120 && v7 == 0xE100000000000000)
    {
    }

    else
    {
      v9 = sub_1ABF25054();

      if ((v9 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v10 = sub_1ABAA958C(1uLL, a1, a2);
    MEMORY[0x1AC5A9330](v10);

    while (1)
    {
      sub_1ABF23DE4();
      if (!v11)
      {

        goto LABEL_15;
      }

      sub_1ABF23B04();
      if (v12)
      {
        break;
      }

      v13 = sub_1ABA7BE8C();
      MEMORY[0x1AC5A9410](v13);
    }
  }

LABEL_15:

  *a3 = 0;
  *(a3 + 8) = 1;
  return result;
}

uint64_t KGQ.Variable.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD78824()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t sub_1ABD7886C()
{
  result = 17741;
  switch(*v0)
  {
    case 1:
      return 4999502;
    case 2:
      return 5721934;
    case 3:
      return 0x524154535F594144;
    case 4:
      return 0x444E455F594144;
    case 5:
      v2 = 1262830935;
      return v2 | 0x4154535F00000000;
    case 6:
      v3 = 1262830935;
      goto LABEL_18;
    case 7:
      return 0x54535F48544E4F4DLL;
    case 8:
      return 0x4E455F48544E4F4DLL;
    case 9:
      v2 = 1380009305;
      return v2 | 0x4154535F00000000;
    case 0xA:
      v3 = 1380009305;
LABEL_18:
      result = v3 | 0x444E455F00000000;
      break;
    case 0xB:
      result = 0x5941445F31;
      break;
    case 0xC:
      result = 0x4B4545575F31;
      break;
    case 0xD:
      result = 0x48544E4F4D5F31;
      break;
    case 0xE:
      result = 0x524145595F31;
      break;
    case 0xF:
      result = 0x464F5F5452415453;
      break;
    case 0x10:
      result = 0x545F464F5F444E45;
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatform::KGQ::Keyword_optional __swiftcall KGQ.Keyword.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF250B4();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1ABD78A84@<X0>(uint64_t *a1@<X8>)
{
  result = KGQ.Keyword.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABD78AE8()
{
  result = qword_1EB4D9170;
  if (!qword_1EB4D9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9170);
  }

  return result;
}

unint64_t sub_1ABD78B40()
{
  result = qword_1EB4D9178;
  if (!qword_1EB4D9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9178);
  }

  return result;
}

unint64_t sub_1ABD78B98()
{
  result = qword_1EB4D9180;
  if (!qword_1EB4D9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9180);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KGQ.QType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KGQ.Keyword(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for KGQ.Keyword(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD78E94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD78ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_1ABD78F30()
{
  result = qword_1EB4D9198;
  if (!qword_1EB4D9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9198);
  }

  return result;
}

uint64_t type metadata accessor for KGQ.Value()
{
  result = qword_1EB4D91A8;
  if (!qword_1EB4D91A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABD78FD0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D91A0, &qword_1ABF5F220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for KGQ.Argument.Operation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABD7912C()
{
  result = sub_1ABF21EB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KGQ.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD792B4()
{
  result = qword_1EB4D91B8;
  if (!qword_1EB4D91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91B8);
  }

  return result;
}

unint64_t sub_1ABD7930C()
{
  result = qword_1EB4D91C0;
  if (!qword_1EB4D91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91C0);
  }

  return result;
}

uint64_t sub_1ABD79390(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABD793E8()
{
  result = qword_1EB4D91D8;
  if (!qword_1EB4D91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91D8);
  }

  return result;
}

uint64_t sub_1ABD7944C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7948C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void KnosisAccessConfig.init(clientIdentifier:entitledIndexTypes:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  if (qword_1ED86D438 != -1)
  {
    sub_1ABA8F788();
  }

  sub_1ABD91F0C(v6, a2);
  *(a3 + 24) = v7;
}

uint64_t KnosisAccessConfig.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000026, 0x80000001ABF8EEF0);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](0xD000000000000016, 0x80000001ABF8EF20);
  sub_1ABD26F30();
  v5 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v5);

  return 0;
}

void static KnosisAccessConfig.initForInProcess()(uint64_t a1@<X8>)
{
  v2 = sub_1ABE8B0C8(&unk_1F208F068);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  if (qword_1ED86D438 != -1)
  {
    sub_1ABA8F788();
  }

  sub_1ABD91F0C(v3, v2);
  *(a1 + 24) = v4;
}

uint64_t sub_1ABD79728(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD79768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t KnosisConfig.init(defaultResultLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1ABF21CF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  if (qword_1ED871EA0 != -1)
  {
    swift_once();
  }

  result = sub_1ABA8F7A8(0xD000000000000010, 0x80000001ABF8EF40);
  if (v13)
  {
    sub_1ABF21C44();

    v14 = *(v5 + 32);
    v14(a2, v11, v4);
    result = sub_1ABA8F7A8(0x614D746E65746E69, 0xE900000000000070);
    if (v15)
    {
      sub_1ABF21C44();

      v16 = type metadata accessor for KnosisConfig();
      result = (v14)(a2 + *(v16 + 20), v8, v4);
      *(a2 + *(v16 + 24)) = a1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t KnosisConfig.init(defaultResultLimit:vopFileURL:intentMapFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1ABF21CF4();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a2, v8);
  v10 = type metadata accessor for KnosisConfig();
  result = (v9)(a4 + *(v10 + 20), a3, v8);
  *(a4 + *(v10 + 24)) = a1;
  return result;
}

uint64_t sub_1ABD79A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1ABF23BD4();

  v7 = sub_1ABF23BD4();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_1ABF23C04();

  return v9;
}

uint64_t type metadata accessor for KnosisConfig()
{
  result = qword_1ED86DF20;
  if (!qword_1ED86DF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABD79B68()
{
  result = sub_1ABF21CF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id static KnosisKGQRequest.initWithGDKnosisRequest(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 query];
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = sub_1ABD7A200(a1);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = [a1 limit];
  v13 = sub_1ABF243F4();

  v14 = [a1 offset];
  v15 = sub_1ABF243F4();

  LOBYTE(v14) = [a1 enableDebug];
  result = [a1 enableTextualization];
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  *(a2 + 57) = result;
  return result;
}

void static KnosisIntentRequest.initWithGDKnosisRequest(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v2 = sub_1ABD7A264(a1);
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_36;
  }

  v3 = v2;
  v4 = 0;
  v65 = v2 & 0xC000000000000001;
  v66 = sub_1ABAAB7C8(v2);
  v64 = v3 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v63 = v3;
  while (1)
  {
    if (v4 == v66)
    {

LABEL_36:
      v51 = v61;
      v52 = [v61 query];
      v53 = sub_1ABF23C04();
      v55 = v54;

      v56 = [v51 limit];
      v57 = sub_1ABF243F4();

      v58 = [v51 offset];
      v59 = sub_1ABF243F4();

      v60 = [v51 enableDebug];
      *a2 = v53;
      *(a2 + 8) = v55;
      *(a2 + 16) = v5;
      *(a2 + 24) = 0;
      *(a2 + 32) = v57;
      *(a2 + 40) = v59;
      *(a2 + 48) = v60;
      return;
    }

    sub_1ABAAB7C0(v4, v65 == 0, v3);
    if (v65)
    {
      v6 = MEMORY[0x1AC5AA170](v4, v3);
    }

    else
    {
      v6 = *(v64 + 8 * v4);
    }

    v7 = v6;
    v8 = __OFADD__(v4, 1);
    v9 = v4 + 1;
    if (v8)
    {
      goto LABEL_38;
    }

    v70 = v9;
    v71 = v5;
    v10 = [v6 intent];
    v11 = sub_1ABF23C04();
    v68 = v12;
    v69 = v11;

    v67 = v7;
    v13 = [v7 args];
    sub_1ABAFF390(0, &qword_1EB4D91E0, off_1E7960298);
    sub_1ABD7A2D4();
    v14 = sub_1ABF24394();

    if ((v14 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1ABF249B4();
      sub_1ABF243C4();
      v14 = v75;
      v15 = v76;
      v17 = v77;
      v16 = v78;
      v18 = v79;
    }

    else
    {
      v19 = -1 << *(v14 + 32);
      v15 = v14 + 56;
      v17 = ~v19;
      v20 = -v19;
      v21 = v20 < 64 ? ~(-1 << v20) : -1;
      v18 = v21 & *(v14 + 56);

      v16 = 0;
    }

    v22 = (v17 + 64) >> 6;
    v23 = MEMORY[0x1E69E7CC0];
    v72 = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    while (sub_1ABF249C4())
    {
      swift_dynamicCast();
      v28 = v74;
      v26 = v16;
      v27 = v18;
      if (!v74)
      {
        break;
      }

LABEL_22:
      v73 = v27;
      v29 = [v28 arg];
      v30 = sub_1ABF23C04();
      v32 = v31;

      v33 = [v28 value];
      v34 = sub_1ABF23C04();
      v36 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = *(v23 + 16);
        sub_1ABADB87C();
        v23 = v40;
      }

      v37 = *(v23 + 16);
      if (v37 >= *(v23 + 24) >> 1)
      {
        sub_1ABADB87C();
        v23 = v41;
      }

      *(v23 + 16) = v37 + 1;
      v38 = (v23 + 32 * v37);
      v38[4] = v30;
      v38[5] = v32;
      v38[6] = v34;
      v38[7] = v36;
      v16 = v26;
      v14 = v72;
      v18 = v73;
      if ((v72 & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_28:
    sub_1ABAB4C48();

    v42 = sub_1ABE8B5B0(v23);
    v43 = [v67 score];
    sub_1ABF24364();
    v45 = v44;

    v5 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = *(v71 + 16);
      sub_1ABADB860();
      v5 = v49;
    }

    v3 = v63;
    v4 = v70;
    v46 = *(v5 + 16);
    if (v46 >= *(v5 + 24) >> 1)
    {
      sub_1ABADB860();
      v5 = v50;
    }

    *(v5 + 16) = v46 + 1;
    v47 = v5 + 32 * v46;
    *(v47 + 32) = v69;
    *(v47 + 40) = v68;
    *(v47 + 48) = v42;
    *(v47 + 56) = v45;
  }

LABEL_14:
  v24 = v16;
  v25 = v18;
  v26 = v16;
  if (v18)
  {
LABEL_18:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      goto LABEL_28;
    }

    v25 = *(v15 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1ABD7A200(void *a1)
{
  v1 = [a1 kgq];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

uint64_t sub_1ABD7A264(void *a1)
{
  v1 = [a1 intentArgs];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1ABAFF390(0, &qword_1EB4D91F0, off_1E79602B8);
  v3 = sub_1ABF240D4();

  return v3;
}

unint64_t sub_1ABD7A2D4()
{
  result = qword_1EB4D91E8;
  if (!qword_1EB4D91E8)
  {
    sub_1ABAFF390(255, &qword_1EB4D91E0, off_1E7960298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91E8);
  }

  return result;
}

uint64_t KnosisKGQRequest.init(query:kgq:contextFacts:limit:offset:enableDebug:enableTextualization:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 57) = a10;
  return result;
}

uint64_t KnosisIntentRequest.init(query:intentRequests:contextFacts:limit:offset:enableDebug:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t IntentRequest.init(intent:args:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  return result;
}

IntelligencePlatform::IntentArg __swiftcall IntentArg.init(arg:value:)(Swift::String arg, Swift::String value)
{
  *v2 = arg;
  v2[1] = value;
  result.value = value;
  result.arg = arg;
  return result;
}

unint64_t KnosisKGQRequest.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  sub_1ABF24AB4();

  sub_1ABA8071C();
  v8 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v8);
  MEMORY[0x1AC5A9410](0x3A74696D696C202CLL, 0xE800000000000000);
  sub_1ABA7E378();
  v9 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v9);

  MEMORY[0x1AC5A9410](0x74657366666F202CLL, 0xE90000000000003ALL);
  sub_1ABA7E378();
  v10 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v10);

  if (v6 != 1)
  {
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    MEMORY[0x1AC5A9410](0xD000000000000010, 0x80000001ABF8EFA0);
    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF8EFC0);
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v4)
  {
LABEL_4:
    sub_1ABF24AB4();

    sub_1ABA8071C();
    v15 = v11;
    v14 = *(v4 + 16);
    v12 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v12);

    MEMORY[0x1AC5A9410](0xD000000000000013, v15);
  }

LABEL_5:
  sub_1ABA83AA4();
  return 0xD000000000000011;
}

uint64_t KnosisIntentRequest.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000001ELL, 0x80000001ABF8EFE0);
  v5 = MEMORY[0x1AC5A9750](v1, &type metadata for IntentRequest);
  MEMORY[0x1AC5A9410](v5);

  MEMORY[0x1AC5A9410](0x3A74696D696C20, 0xE700000000000000);
  sub_1ABA7E378();
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  MEMORY[0x1AC5A9410](0x3A74657366666F20, 0xE800000000000000);
  sub_1ABA7E378();
  v7 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v7);

  if (v4 == 1)
  {
    MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF8EFC0);
  }

  sub_1ABA83AA4();
  return 0;
}

unint64_t IntentRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1ABF24AB4();

  sub_1ABA8071C();
  v4 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v4);
  MEMORY[0x1AC5A9410](0x3A7367726120, 0xE600000000000000);
  sub_1ABD7B978();
  v5 = sub_1ABF243A4();
  MEMORY[0x1AC5A9410](v5);

  sub_1ABA83AA4();
  return 0xD000000000000014;
}

uint64_t static IntentRequest.== infix(_:_:)(uint64_t *a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if (v2 == *v4 && v3 == *(v4 + 8))
  {
    return sub_1ABD7ADC8(v1, v7) & (v6 == v8);
  }

  v10 = sub_1ABF25054();
  result = 0;
  if (v10)
  {
    return sub_1ABD7ADC8(v1, v7) & (v6 == v8);
  }

  return result;
}

void sub_1ABD7A84C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v6 = a1 + 56;
      v5 = *(a1 + 56);
      v7 = *(a1 + 32);
      sub_1ABA7F040();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      v13 = a2 + 56;
      sub_1ABA8071C();
      v43 = v14;
      v44 = v15;
      sub_1ABA8071C();
      v42 = v16;
      v39 = v12;
      v40 = v3;
      if (v10)
      {
        while (1)
        {
          v17 = __clz(__rbit64(v10));
          v18 = (v10 - 1) & v10;
LABEL_10:
          v21 = *(*(v3 + 48) + (v17 | (v4 << 6)));
          v22 = *(a2 + 40);
          sub_1ABF25234();
          sub_1ABBB4ED8(v45, v21);
          v23 = sub_1ABF25294();
          v24 = -1 << *(a2 + 32);
          v25 = v23 & ~v24;
          if (((*(v13 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            break;
          }

          v41 = v18;
          v26 = ~v24;
          while (1)
          {
            v27 = 0xE400000000000000;
            v28 = 1701736302;
            switch(*(*(a2 + 48) + v25))
            {
              case 1:
                v28 = 0xD000000000000010;
                v27 = v42;
                break;
              case 2:
                v27 = 0xE700000000000000;
                v28 = 0x7865646E496F6ELL;
                break;
              case 3:
                v29 = 0x47746E657665;
                goto LABEL_20;
              case 4:
                v28 = 0x79676F6C6F746E6FLL;
                v27 = 0xED00007865646E49;
                break;
              case 5:
                v28 = 0x49747865746E6F63;
                v27 = 0xEC0000007865646ELL;
                break;
              case 6:
                v29 = 0x476C61636F6CLL;
LABEL_20:
                v28 = v29 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
                v27 = 0xEF7865646E496870;
                break;
              case 7:
                sub_1ABA7BB94();
                v28 = v30 + 10;
                v27 = v43;
                break;
              case 8:
                sub_1ABA7BB94();
                v28 = v31 + 8;
                v27 = v44;
                break;
              default:
                break;
            }

            v32 = 0xE400000000000000;
            v33 = 1701736302;
            switch(v21)
            {
              case 1:
                v33 = 0xD000000000000010;
                v32 = v42;
                break;
              case 2:
                v32 = 0xE700000000000000;
                v33 = 0x7865646E496F6ELL;
                break;
              case 3:
                v34 = 0x47746E657665;
                goto LABEL_30;
              case 4:
                v33 = 0x79676F6C6F746E6FLL;
                v32 = 0xED00007865646E49;
                break;
              case 5:
                v33 = 0x49747865746E6F63;
                v32 = 0xEC0000007865646ELL;
                break;
              case 6:
                v34 = 0x476C61636F6CLL;
LABEL_30:
                v33 = v34 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
                v32 = 0xEF7865646E496870;
                break;
              case 7:
                sub_1ABA7BB94();
                v33 = v35 + 10;
                v32 = v43;
                break;
              case 8:
                sub_1ABA7BB94();
                v33 = v36 + 8;
                v32 = v44;
                break;
              default:
                break;
            }

            if (v28 == v33 && v27 == v32)
            {
              break;
            }

            v38 = sub_1ABF25054();

            if (v38)
            {
              goto LABEL_40;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v13 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              return;
            }
          }

LABEL_40:
          v12 = v39;
          v3 = v40;
          v10 = v41;
          if (!v41)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
LABEL_5:
        v19 = v4;
        while (1)
        {
          v4 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v4 >= v12)
          {
            return;
          }

          v20 = *(v6 + 8 * v4);
          ++v19;
          if (v20)
          {
            v17 = __clz(__rbit64(v20));
            v18 = (v20 - 1) & v20;
            goto LABEL_10;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1ABD7AC08(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 56;
    v4 = *(a1 + 56);
    v6 = *(a1 + 32);
    sub_1ABA7F040();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    v27 = v7;
    if (v10)
    {
      while (2)
      {
        v13 = __clz(__rbit64(v10));
        v28 = (v10 - 1) & v10;
LABEL_10:
        v16 = (*(v7 + 48) + 40 * (v13 | (v3 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = v16[3];
        v20 = *(a2 + 40);
        sub_1ABF25234();

        sub_1ABF23D34();
        v21 = sub_1ABF25294();
        v22 = ~(-1 << *(a2 + 32));
        do
        {
          v23 = v21 & v22;
          if (((*(a2 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {

            return;
          }

          v24 = (*(a2 + 48) + 40 * v23);
          if (*v24 == v18 && v24[1] == v17)
          {
            break;
          }

          v26 = sub_1ABF25054();
          v21 = v23 + 1;
        }

        while ((v26 & 1) == 0);

        v7 = v27;
        v10 = v28;
        if (v28)
        {
          continue;
        }

        break;
      }
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v12)
      {
        return;
      }

      v15 = *(v5 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v28 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1ABD7ADC8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v27 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v32 = a2 + 56;
  v28 = v7;
  v29 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v30 = (v6 - 1) & v6;
LABEL_13:
      v11 = (*(result + 48) + 32 * (v8 | (v3 << 6)));
      v13 = *v11;
      v12 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      v16 = *(v2 + 40);
      sub_1ABF25234();

      sub_1ABF23D34();
      sub_1ABF23D34();
      v17 = sub_1ABF25294();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      v21 = *(a2 + 48);
      while (1)
      {
        v22 = (v21 + 32 * v19);
        v23 = v22[2];
        v24 = v22[3];
        v25 = *v22 == v13 && v22[1] == v12;
        if (v25 || (sub_1ABF25054() & 1) != 0)
        {
          v26 = v23 == v15 && v24 == v14;
          if (v26 || (sub_1ABF25054() & 1) != 0)
          {
            break;
          }
        }

        v19 = (v19 + 1) & v20;
        if (((*(v32 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v6 = v30;
      v2 = a2;
      v7 = v28;
      result = v29;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v27 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABD7B004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1936159329 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABD7B118(char a1)
{
  if (!a1)
  {
    return 0x614E746E65746E69;
  }

  if (a1 == 1)
  {
    return 1936159329;
  }

  return 0x65726F6373;
}

uint64_t sub_1ABD7B170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD7B004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD7B198(uint64_t a1)
{
  v2 = sub_1ABD7B9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD7B1D4(uint64_t a1)
{
  v2 = sub_1ABD7B9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentRequest.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9200, &qword_1ABF5F860);
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v21 - v10;
  v12 = *v1;
  v13 = v1[1];
  v21 = v1[2];
  v14 = *(v1 + 6);
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  sub_1ABA93E20(v17, v15);
  sub_1ABD7B9CC();
  sub_1ABF252E4();
  v25 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v2)
  {
    v24 = v21;
    v23 = 1;
    sub_1ABAD219C(&qword_1EB4D9210, &qword_1ABF5F868);
    sub_1ABD7BA20();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v22 = 2;
    sub_1ABA7BF34();
    sub_1ABF24F64();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t IntentArg.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1ABF24AB4();

  v5 = sub_1ABA7E378();
  MEMORY[0x1AC5A9410](v5);
  MEMORY[0x1AC5A9410](0x3A65756C617620, 0xE700000000000000);
  MEMORY[0x1AC5A9410](v3, v4);
  sub_1ABA83AA4();
  return 0x41746E65746E493CLL;
}

uint64_t static IntentArg.== infix(_:_:)(uint64_t *a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1ABF25054(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t sub_1ABD7B54C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6779489 && a2 == 0xE300000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABD7B610(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 6779489;
  }
}

uint64_t sub_1ABD7B644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABD7B54C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABD7B66C(uint64_t a1)
{
  v2 = sub_1ABD7BAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABD7B6A8(uint64_t a1)
{
  v2 = sub_1ABD7BAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentArg.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D9228, &qword_1ABF5F870);
  v5 = sub_1ABA7BB64(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABD7BAF8();
  sub_1ABF252E4();
  v19 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v2)
  {
    v18 = 1;
    sub_1ABA7BF34();
    sub_1ABF24F34();
  }

  return (*(v17 + 8))(v10, v4);
}

uint64_t IntentArg.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABF23D34();
  sub_1ABA7E378();

  return sub_1ABF23D34();
}

uint64_t IntentArg.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABD7B908()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1ABF25234();
  IntentArg.hash(into:)();
  return sub_1ABF25294();
}

unint64_t sub_1ABD7B978()
{
  result = qword_1EB4D91F8;
  if (!qword_1EB4D91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D91F8);
  }

  return result;
}

unint64_t sub_1ABD7B9CC()
{
  result = qword_1EB4D9208;
  if (!qword_1EB4D9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9208);
  }

  return result;
}

unint64_t sub_1ABD7BA20()
{
  result = qword_1EB4D9218;
  if (!qword_1EB4D9218)
  {
    sub_1ABAE2850(&qword_1EB4D9210, &qword_1ABF5F868);
    sub_1ABD7BAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9218);
  }

  return result;
}

unint64_t sub_1ABD7BAA4()
{
  result = qword_1EB4D9220;
  if (!qword_1EB4D9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9220);
  }

  return result;
}

unint64_t sub_1ABD7BAF8()
{
  result = qword_1EB4D9230;
  if (!qword_1EB4D9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9230);
  }

  return result;
}

unint64_t sub_1ABD7BB50()
{
  result = qword_1EB4D9238;
  if (!qword_1EB4D9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9238);
  }

  return result;
}

__n128 sub_1ABD7BBA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1ABD7BBC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 58))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7BC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABD7BC5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7BC9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1ABD7BCF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1ABD7BD0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABD7BD4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentArg.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABD7BF64()
{
  result = qword_1EB4D9240;
  if (!qword_1EB4D9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9240);
  }

  return result;
}

unint64_t sub_1ABD7BFBC()
{
  result = qword_1EB4D9248;
  if (!qword_1EB4D9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9248);
  }

  return result;
}

unint64_t sub_1ABD7C014()
{
  result = qword_1EB4D9250;
  if (!qword_1EB4D9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9250);
  }

  return result;
}

unint64_t sub_1ABD7C06C()
{
  result = qword_1EB4D9258;
  if (!qword_1EB4D9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9258);
  }

  return result;
}

unint64_t sub_1ABD7C0C4()
{
  result = qword_1EB4D9260;
  if (!qword_1EB4D9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9260);
  }

  return result;
}

unint64_t sub_1ABD7C11C()
{
  result = qword_1EB4D9268;
  if (!qword_1EB4D9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9268);
  }

  return result;
}

id sub_1ABD7C170()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 34);
  *(&__dst[4] + 3) = *(v0 + 35);
  HIBYTE(__dst[4]) = *(v0 + 39);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  *&__dst[11] = *(v0 + 88);
  v13 = *(v0 + 104);
  v14 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  __dst[0] = v1;
  __dst[1] = v2;
  v47 = v4;
  v48 = v3;
  __dst[2] = v3;
  __dst[3] = v4;
  LOWORD(__dst[4]) = v5;
  BYTE2(__dst[4]) = v6;
  v45 = v8;
  v46 = v7;
  __dst[5] = v7;
  __dst[6] = v8;
  v43 = v10;
  v44 = v9;
  __dst[7] = v9;
  __dst[8] = v10;
  __dst[9] = v11;
  __dst[10] = v12;
  v42 = v13;
  __dst[13] = v13;
  sub_1ABD7D6C8();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v41 = v12;
    v18 = v17 - 1;
    for (i = 32; ; i += 144)
    {
      memcpy(__dst, (v16 + i), sizeof(__dst));
      v20 = memcpy(v50, (v16 + i), sizeof(v50));
      switch(v6)
      {
        case 1:
          v30 = 3826797;
          if ((v1 & 0x80000000000000) == 0)
          {
            v30 = 3828069;
          }

          v49 = v30;
          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43);
          v31 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v31);

          v28 = v49;
          v29 = 0xE300000000000000;
          break;
        case 2:
        case 3:
          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43);

          goto LABEL_7;
        case 4:
          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43);
          v28 = 0;
          v29 = 0xE000000000000000;
          break;
        default:
          sub_1ABA8F7C8(v20, v21, v22, v23, v24, v25, v26, v27, v40, v41, v42, v43);
          sub_1ABAE4358(v1, v2, v48, v47, v5, 0);
LABEL_7:
          v28 = v1;
          v29 = v2;
          break;
      }

      sub_1ABD7C818(v28, v29);

      v32 = sub_1ABAE4304(__dst);
      MEMORY[0x1AC5A9710](v32);
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      if (!v18)
      {
        break;
      }

      --v18;
    }

    v14 = MEMORY[0x1E69E7CC0];
    v12 = v41;
  }

  else
  {
  }

  v50[0] = v14;
  v33 = *(v12 + 16);
  if (v33)
  {
    v34 = (v12 + 32);
    do
    {
      v35 = memcpy(__dst, v34, 0x70uLL);
      sub_1ABD7C170(v35);
      MEMORY[0x1AC5A9710]();
      if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v34 += 112;
      --v33;
    }

    while (v33);
  }

  v36 = 0xE000000000000000;
  v37 = 0;
  switch(v6)
  {
    case 1:
      __dst[0] = v1;
      v37 = EntityIdentifier.stringValue.getter();
      v36 = v38;
      break;
    case 4:
      break;
    default:

      v37 = v1;
      v36 = v2;
      break;
  }

  objc_allocWithZone(GDKnosisAnswer);

  return sub_1ABD7CCF0(v37, v36, v46, v45, v44, v43);
}

void __swiftcall KnosisResult.toGDKnosisResult()(GDKnosisResult *__return_ptr retstr)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v23 = *(v1 + 40);
  v6 = *(v1 + 56);
  v24 = *(v1 + 48);
  v25 = *(v1 + 16);
  v20 = *(v1 + 64);
  v21 = *(v1 + 72);
  v22 = *(v1 + 80);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v10 = *(v5 + 16);
  if (v10)
  {
    v19 = v8;
    v11 = (v5 + 32);
    do
    {
      memcpy(__dst, v11, sizeof(__dst));
      sub_1ABD7C170();
      MEMORY[0x1AC5A9710]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v11 += 112;
      --v10;
    }

    while (v10);
    v9 = v27;
    v8 = v19;
  }

  if (v8)
  {
    __dst[0] = v7;
    *&__dst[1] = v8;
    sub_1ABD7C6B4();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v3)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = sub_1ABF24404();
  v17 = sub_1ABF24404();
  v18 = objc_allocWithZone(GDKnosisResult);
  sub_1ABD7CBA4(v14, v15, v25, v4, v23 + 1, v9, v24, v6, v16, v17, v22, v13);
}

void sub_1ABD7C6B4()
{
  v1 = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v3 = v0[1];
  v2 = v0[2];
  v4 = *(v2 + 16);
  if (v4)
  {
    v15 = v0[1];
    v16 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v5 = (v2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 5;
      objc_allocWithZone(GDKnosisExecStep);

      sub_1ABD7D120(v6, v7, v8, v9, v10);
      sub_1ABF24B94();
      v11 = *(v16 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      --v4;
    }

    while (v4);
    v3 = v15;
    v12 = v16;
  }

  else
  {
    v13 = v0[1];

    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = objc_allocWithZone(GDKnosisDebug);
  sub_1ABD7D1F4(v1, v12, v3);
}

id sub_1ABD7C818(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 32);
  __dst[1] = *(v2 + 16);
  __dst[2] = v5;
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  v11 = *(v2 + 80);
  v10 = *(v2 + 88);
  v13 = *(v2 + 96);
  v12 = *(v2 + 104);
  __dst[7] = *(v2 + 112);
  LOWORD(__dst[8]) = *(v2 + 128);
  v14 = *(v2 + 130);
  *&__dst[0] = v3;
  *(&__dst[0] + 1) = v4;
  *&__dst[3] = v6;
  *(&__dst[3] + 1) = v7;
  v33 = v14;
  v34 = v7;
  v36 = v8;
  *&__dst[4] = v8;
  *(&__dst[4] + 1) = v9;
  *&__dst[5] = v11;
  *(&__dst[5] + 1) = v10;
  v31 = v12;
  v32 = v13;
  *&__dst[6] = v13;
  *(&__dst[6] + 1) = v12;
  BYTE2(__dst[8]) = v14;
  *(&__dst[8] + 3) = *(v2 + 131);
  *(&__dst[8] + 1) = *(v2 + 136);
  v41 = MEMORY[0x1E69E7CC0];
  KnosisFact.allQualifiers.getter();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = v17 - 1;
    for (i = 32; ; i += 144)
    {
      memcpy(__dst, (v16 + i), sizeof(__dst));
      memcpy(v39, (v16 + i), sizeof(v39));
      sub_1ABAE42A8(__dst, v38);
      sub_1ABD7C818(v3, v4);
      v20 = sub_1ABAE4304(__dst);
      MEMORY[0x1AC5A9710](v20);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      if (!v18)
      {
        break;
      }

      --v18;
    }
  }

  else
  {
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);

  v21 = sub_1ABF24794();

  v22 = sub_1ABF24794();
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF5FD20;
  sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);

  *(v23 + 32) = sub_1ABD7CB30();
  v24 = 0xE000000000000000;
  v25 = sub_1ABF24794();
  v26 = 0;
  switch(v33)
  {
    case 1:
      *&__dst[0] = v32;
      v26 = EntityIdentifier.stringValue.getter();
      v24 = v27;
      break;
    case 4:
      break;
    default:
      v24 = v31;

      v26 = v32;
      break;
  }

  v28 = sub_1ABF24794();
  v29 = objc_allocWithZone(GDKnosisFact);
  return sub_1ABD7CE74(v3, v4, v21, a1, a2, MEMORY[0x1E69E7CC0], v22, MEMORY[0x1E69E7CC0], v34, v36, v23, v25, v26, v24, MEMORY[0x1E69E7CC0], v28);
}

id sub_1ABD7CB30()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1ABF23BD4();

  v2 = [v0 initWithPrimary_];

  return v2;
}

id sub_1ABD7CBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11, void *a12)
{
  v13 = sub_1ABF23BD4();

  v14 = sub_1ABF23BD4();

  sub_1ABAFF390(0, &qword_1EB4CE6C0, off_1E7960290);
  v15 = sub_1ABF240C4();

  if (a8)
  {
    v16 = sub_1ABF23BD4();
  }

  else
  {
    v16 = 0;
  }

  LOBYTE(v19) = a11 & 1;
  v17 = [v20 initWithQuery:v13 kgq:v14 status:a5 answers:v15 errorMessage:v16 limit:a9 offset:a10 hasMoreAnswers:v19 debug:a12];

  return v17;
}

id sub_1ABD7CCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_1ABF23BD4();
  }

  else
  {
    v9 = 0;
  }

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = sub_1ABF23BD4();

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v11 = sub_1ABF23BD4();

LABEL_9:
  sub_1ABAFF390(0, &qword_1EB4CE6E8, off_1E79602B0);
  v12 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4CE6C0, off_1E7960290);
  v13 = sub_1ABF240C4();

  v14 = sub_1ABF240C4();

  v15 = [v6 initWithAnswerId:v9 name:v10 textualization:v11 facts:v12 parents:v13 requestIds:v14];

  return v15;
}

id sub_1ABD7CE74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v26 = sub_1ABF23BD4();

  v18 = sub_1ABF23BD4();

  if (a6)
  {
    sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);
    v19 = sub_1ABF240C4();
  }

  else
  {
    v19 = 0;
  }

  if (a8)
  {
    v29 = sub_1ABF240C4();
  }

  else
  {
    v29 = 0;
  }

  if (a10)
  {
    v20 = sub_1ABF23BD4();
  }

  else
  {
    v20 = 0;
  }

  if (a11)
  {
    sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);
    v21 = sub_1ABF240C4();
  }

  else
  {
    v21 = 0;
  }

  if (a14)
  {
    v22 = sub_1ABF23BD4();
  }

  else
  {
    v22 = 0;
  }

  if (a15)
  {
    sub_1ABAFF390(0, &qword_1EB4CE6D0, off_1E7960288);
    v23 = sub_1ABF240C4();
  }

  else
  {
    v23 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4CE6E8, off_1E79602B0);
  v25 = sub_1ABF240C4();

  v28 = [v27 initWithFactId:v26 score:a3 subjectId:v18 subjectAlias:v19 subjectPopularity:a7 subjectIsa:v29 predicateId:v20 predicateAlias:v21 predicatePopularity:a12 objectID:v22 objectAlias:v23 objectPopularity:a16 qualifiers:v25];

  return v28;
}

id sub_1ABD7D120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_1ABF23BD4();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1ABF23BD4();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = sub_1ABF240C4();

LABEL_8:
  v11 = [v5 initWithKgQueryNode:v8 indexQuery:v9 messages:v10];

  return v11;
}

id sub_1ABD7D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  sub_1ABAFF390(0, &qword_1EB4D9270, off_1E79602A8);
  v6 = sub_1ABF240C4();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1ABF240C4();

LABEL_6:
  v8 = [v3 initWithIndexCallCount:a1 execSteps:v6 messages:v7];

  return v8;
}

uint64_t sub_1ABD7D2BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  sub_1ABADDC8C();
  if (v2)
  {
    v3 = (a1 + 136);
    do
    {
      v15 = *(v3 - 12);
      v16 = *(v3 - 13);
      v4 = *(v3 - 11);
      v14 = *(v3 - 10);
      v5 = *(v3 - 9);
      v13 = *(v3 - 32);
      v19 = *(v3 - 6);
      v20 = *(v3 - 7);
      v6 = *(v3 - 5);
      v18 = *(v3 - 4);
      v7 = *(v3 - 3);
      v17 = *(v3 - 8);
      v8 = *v3;
      v10 = *(v26 + 16);
      v9 = *(v26 + 24);
      v21 = *(v3 - 1);

      if (v10 >= v9 >> 1)
      {
        sub_1ABADDC8C();
      }

      *(v26 + 16) = v10 + 1;
      v11 = v26 + 112 * v10;
      *(v11 + 32) = v16;
      *(v11 + 40) = v15;
      *(v11 + 48) = v4;
      *(v11 + 56) = v14;
      *(v11 + 64) = v5;
      *(v11 + 72) = v13;
      *(v11 + 74) = v24;
      *(v11 + 78) = v25;
      *(v11 + 80) = v20;
      *(v11 + 88) = v19;
      *(v11 + 96) = v6;
      *(v11 + 104) = v18;
      *(v11 + 112) = v7;
      *(v11 + 120) = v17;
      *(v11 + 126) = v23;
      *(v11 + 122) = v22;
      *(v11 + 128) = v21;
      *(v11 + 136) = v8;
      v3 += 14;
      --v2;
    }

    while (v2);
  }

  return v26;
}

void sub_1ABD7D45C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1ABADDD7C();
    v5 = sub_1ABAB0E08(v2);
    v6 = 0;
    v7 = v2 + 64;
    v24 = v3;
    v25 = v1;
    v23 = v2 + 72;
    v26 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v3)
      {
        goto LABEL_23;
      }

      v28 = v6;
      v29 = v3;
      v27 = v4;
      v30 = *(*(v2 + 48) + 8 * v5);
      v31 = *(*(v2 + 56) + 8 * v5);

      sub_1ABD81E0C();
      v10 = v9;

      v11 = v2;
      v12 = *(v33 + 16);
      if (v12 >= *(v33 + 24) >> 1)
      {
        sub_1ABADDD7C();
      }

      *(v33 + 16) = v12 + 1;
      v13 = v33 + 16 * v12;
      *(v13 + 32) = v32;
      *(v13 + 40) = v10;
      v14 = 1 << *(v11 + 32);
      if (v5 >= v14)
      {
        goto LABEL_24;
      }

      v7 = v26;
      v15 = *(v26 + 8 * v8);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v11;
      if (*(v11 + 36) != v29)
      {
        goto LABEL_26;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v17 = v25;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (v23 + 8 * v8);
        v17 = v25;
        while (v19 < (v14 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1ABAC933C(v5, v29, v27 & 1);
            v14 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        sub_1ABAC933C(v5, v29, v27 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v28 + 1;
      v5 = v14;
      v3 = v24;
      if (v28 + 1 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1ABD7D6C8()
{
  sub_1ABA7E2A8();
  v6 = *(v0 + 72);
  v8 = *(v6 + 64);
  v7 = v6 + 64;
  v9 = *(*(v0 + 72) + 32);
  sub_1ABA7D32C();
  sub_1ABA9F620();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_18;
          }

          v5 = *(v7 + 8 * v12);
          ++v10;
          if (v5)
          {
            v10 = v12;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_7:
      sub_1ABA978C4();
      if (v13)
      {
        goto LABEL_20;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v1 > *(v11 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v11 = v14;
      }

      v5 &= v5 - 1;
      if (!*(v3 + 16))
      {
        break;
      }

      v15 = *(v11 + 16);
      v16 = *(v11 + 24);
      sub_1ABA84218();
      if (v18 < v2)
      {
        goto LABEL_21;
      }

      sub_1ABAA1FF8(v17);
      swift_arrayInitWithCopy();

      if (v2)
      {
        v19 = *(v11 + 16);
        v13 = __OFADD__(v19, v2);
        v20 = v19 + v2;
        if (v13)
        {
          goto LABEL_22;
        }

        *(v11 + 16) = v20;
      }
    }
  }

  while (!v2);
  __break(1u);
LABEL_18:

  sub_1ABA7BC1C();
}

uint64_t GraphNode.id.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = 0;
  switch(*(v0 + 34))
  {
    case 1:
      v5 = *v0;
      v3 = EntityIdentifier.stringValue.getter();
      break;
    case 4:
      return v3;
    default:

      v3 = v2;
      break;
  }

  return v3;
}

void KnosisFact.allQualifiers.getter()
{
  sub_1ABA7E2A8();
  v6 = *(v0 + 136);
  v8 = *(v6 + 64);
  v7 = v6 + 64;
  v9 = *(*(v0 + 136) + 32);
  sub_1ABA7D32C();
  sub_1ABA9F620();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v4)
          {
            goto LABEL_18;
          }

          v5 = *(v7 + 8 * v12);
          ++v10;
          if (v5)
          {
            v10 = v12;
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

LABEL_7:
      sub_1ABA978C4();
      if (v13)
      {
        goto LABEL_20;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v1 > *(v11 + 24) >> 1)
      {
        sub_1ABA9ECC4();
        sub_1ABAD88DC();
        v11 = v14;
      }

      v5 &= v5 - 1;
      if (!*(v3 + 16))
      {
        break;
      }

      v15 = *(v11 + 16);
      v16 = *(v11 + 24);
      sub_1ABA84218();
      if (v18 < v2)
      {
        goto LABEL_21;
      }

      sub_1ABAA1FF8(v17);
      swift_arrayInitWithCopy();

      if (v2)
      {
        v19 = *(v11 + 16);
        v13 = __OFADD__(v19, v2);
        v20 = v19 + v2;
        if (v13)
        {
          goto LABEL_22;
        }

        *(v11 + 16) = v20;
      }
    }
  }

  while (!v2);
  __break(1u);
LABEL_18:

  sub_1ABA7BC1C();
}

void sub_1ABD7D9A8(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD88DC);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DA50(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAAA4F4);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DAF4(uint64_t a1)
{
  v4 = sub_1ABA8C2B8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD89C8);
  sub_1ABA9FB84();
  if (!v6)
  {

    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v8 < v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABA8A9A4(v7);

  if (!v2)
  {
LABEL_8:
    *v1 = v3;
    return;
  }

  sub_1ABA9FC68();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DB90(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD89DC);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DC38(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8B6C);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DCE0(uint64_t a1)
{
  v6 = sub_1ABA8CB70(a1);
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1ABD8E17C(v6, 1, sub_1ABAD89C8);
  sub_1ABAA0058();
  sub_1ABB65600(v31, v1 + 8 * v8 + 32, v4, v3);
  if (v9 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v13 = *(v1 + 16);
    v7 = __OFADD__(v13, v9);
    v14 = v13 + v9;
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v1 + 16) = v14;
  }

  if (v9 != v4)
  {
LABEL_7:
    sub_1ABAB4C48();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v9 = v31[0];
  v10 = v31[1];
  v11 = v31[2];
  v12 = v31[3];
  if (v31[4])
  {
    sub_1ABAA117C();
LABEL_18:
    v19 = 0;
    v20 = *(*(v9 + 48) + 8 * v16);
LABEL_19:
    while ((v19 & 1) == 0)
    {
      v21 = *(v1 + 24) >> 1;
      if (v21 < v3 + 1)
      {
        v29 = v20;
        v30 = v9;
        v27 = v11;
        v28 = v10;
        sub_1ABD91568();
        sub_1ABAD89C8();
        v10 = v28;
        v20 = v29;
        v15 = v1;
        v12 = v5;
        v11 = v27;
        v1 = v26;
        v9 = v30;
        v21 = *(v1 + 24) >> 1;
      }

      v19 = 0;
      v22 = v1 + 32;
      while (1)
      {
LABEL_23:
        if ((v19 & 1) != 0 || v3 >= v21)
        {
          *(v1 + 16) = v3;
          goto LABEL_19;
        }

        *(v22 + 8 * v3++) = v20;
        if (!v15)
        {
          break;
        }

LABEL_29:
        sub_1ABAA01E0();
        v20 = *(*(v9 + 48) + ((v24 << 9) | (8 * v25)));
      }

      while (1)
      {
        v23 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v23 >= v4)
        {
          v20 = 0;
          v15 = 0;
          v19 = 1;
          goto LABEL_23;
        }

        ++v12;
        if (*(v10 + 8 * v23))
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      v20 = 0;
      v15 = 0;
      v19 = 1;
    }

    goto LABEL_7;
  }

LABEL_13:
  v4 = (v11 + 64) >> 6;
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v4)
    {
      goto LABEL_33;
    }

    v18 = *(v10 + 8 * v17);
    ++v12;
    if (v18)
    {
      v15 = (v18 - 1) & v18;
      v16 = __clz(__rbit64(v18)) | (v17 << 6);
      v12 = v17;
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1ABD7DEE8(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8E08);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAD219C(&qword_1EB4D1A68, &unk_1ABF6BE10);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7DFB4(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8EE4);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E05C(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD8758);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E104(uint64_t a1)
{
  v4 = sub_1ABA8C2B8(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABAD91B4);
  sub_1ABA9FB84();
  if (!v6)
  {

    if (!v2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v8 < v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABA8A9A4(v7);

  if (!v2)
  {
LABEL_8:
    *v1 = v3;
    return;
  }

  sub_1ABA9FC68();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1ABD7E1A0(uint64_t a1)
{
  v3 = sub_1ABAAB7C8(a1);
  v4 = sub_1ABAAB7C8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1ABD8E0DC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1ABB4E3FC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1ABD7E24C(uint64_t a1)
{
  v5 = sub_1ABA8C2B8(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v5, 1, sub_1ABADA2B4);
  sub_1ABA9FB84();
  if (!v7)
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v9 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v4 + 4 * v8 + 32), (v1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v4;
    return;
  }

  sub_1ABA9FC68();
  if (!v6)
  {
    *(v4 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E2F8(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABADA86C);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E3A0(uint64_t a1)
{
  v6 = sub_1ABA8CB70(a1);
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1ABD8E17C(v6, 1, sub_1ABADA93C);
  sub_1ABAA0058();
  sub_1ABB65F20(v37, v1 + 24 * v8 + 32, v4, v3);
  if (v9 < v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v13 = *(v1 + 16);
    v7 = __OFADD__(v13, v9);
    v14 = v13 + v9;
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v1 + 16) = v14;
  }

  if (v9 != v4)
  {
LABEL_7:
    sub_1ABAB4C48();
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v9 = v37[0];
  v10 = v37[1];
  v11 = v37[2];
  v12 = v37[3];
  if (v37[4])
  {
    sub_1ABAA117C();
LABEL_18:
    v20 = (*(v9 + 48) + 24 * v16);
    v17 = *v20;
    for (i = *(v20 + 8); ; i = 0uLL)
    {
      v22 = 24;
LABEL_20:
      if (v17 == 3)
      {
        break;
      }

      v23 = *(v1 + 24) >> 1;
      if (v23 < v3 + 1)
      {
        v35 = v17;
        v36 = v9;
        v33 = v11;
        v34 = v10;
        sub_1ABD91568();
        v32 = v30;
        sub_1ABADA93C();
        i = v32;
        v10 = v34;
        v17 = v35;
        v22 = 24;
        v15 = v1;
        v12 = v5;
        v11 = v33;
        v1 = v31;
        v9 = v36;
        v23 = *(v1 + 24) >> 1;
      }

      v24 = v1 + 32;
      while (1)
      {
LABEL_24:
        if (v17 == 3 || v3 >= v23)
        {
          *(v1 + 16) = v3;
          goto LABEL_20;
        }

        v26 = v24 + v3 * v22;
        *v26 = v17;
        *(v26 + 8) = i;
        ++v3;
        if (!v15)
        {
          break;
        }

LABEL_33:
        sub_1ABAA01E0();
        v29 = (*(v9 + 48) + (v28 | (v27 << 6)) * v22);
        v17 = *v29;
        i = *(v29 + 8);
      }

      while (1)
      {
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v17 >= v4)
        {
          v15 = 0;
          i = 0uLL;
          v17 = 3;
          goto LABEL_24;
        }

        ++v12;
        if (*(v10 + 8 * v17))
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_36:
      v15 = 0;
    }

    goto LABEL_7;
  }

LABEL_13:
  v4 = (v11 + 64) >> 6;
  v17 = 3;
  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v4)
    {
      goto LABEL_36;
    }

    v19 = *(v10 + 8 * v18);
    ++v12;
    if (v19)
    {
      v15 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v18 << 6);
      v12 = v18;
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1ABD7E5D4(uint64_t a1)
{
  v5 = sub_1ABA8C2B8(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v5, 1, sub_1ABADAA14);
  sub_1ABA9FB84();
  if (!v7)
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA83ABC();
  if (v9 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v4 + 32 * v8 + 32), (v1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v2 = v4;
    return;
  }

  sub_1ABA9FC68();
  if (!v6)
  {
    *(v4 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1ABD7E680(uint64_t a1)
{
  v4 = sub_1ABA7DC38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1ABD8E17C(v4, 1, sub_1ABADB5D8);
  sub_1ABAA29D4();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1ABA80EA0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1ABAA4F88();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1ABA975D4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}