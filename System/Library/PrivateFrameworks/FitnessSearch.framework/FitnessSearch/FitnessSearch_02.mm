uint64_t SearchContentTile.type.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchContentTile();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5C50220(v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C2B5DC(v11, v7);
    v12 = &v7[*(v4 + 100)];
    v14 = *v12;
    v13 = *(v12 + 1);

    result = sub_1E5C50284(v7);
  }

  else
  {
    v16 = v11[1];
    v17 = v11[3];
    v14 = v11[5];
    v13 = v11[6];
    v18 = v11[8];
  }

  *a1 = v14;
  a1[1] = v13;
  return result;
}

uint64_t sub_1E5C50220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchContentTile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C50284(uint64_t a1)
{
  v2 = type metadata accessor for SearchItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchContentTile.referenceIdentifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SearchItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchContentTile();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5C50220(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C2B5DC(v9, v5);
    v10 = &v5[*(v2 + 60)];
    v11 = *v10;
    v12 = *(v10 + 1);

    sub_1E5C50284(v5);
  }

  else
  {
    v13 = v9[1];
    v11 = v9[2];
    v14 = v9[3];
    v15 = v9[6];
    v16 = v9[8];
  }

  return v11;
}

uint64_t SearchContentTile.referenceType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SearchItem();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchContentTile();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C50220(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C2B5DC(v9, v5);
    v10 = v5[*(v2 + 64)];
    sub_1E5C50284(v5);
  }

  else
  {
    v11 = *(v9 + 1);
    v12 = *(v9 + 3);
    v10 = v9[32];
    v13 = *(v9 + 6);
    v14 = *(v9 + 8);
  }

  return v10;
}

__n128 TVSearchFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

void TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(void (*a1)(void, void, void), uint64_t a2, unint64_t a3, uint64_t a4)
{
  v494 = a3;
  v495 = a2;
  v491 = a1;
  v486 = type metadata accessor for SearchHint();
  v6 = *(*(v486 - 8) + 64);
  MEMORY[0x1EEE9AC00](v486);
  v488 = v477 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchHistoryItem();
  v483 = *(v8 - 8);
  v9 = *(v483 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v484 = v477 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v487 = v477 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A60, &qword_1E5CA17C0);
  v13 = *(v12 - 8);
  v492 = v12;
  v493 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v489 = v477 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v485 = v477 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v479 = v477 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v480 = v477 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v477 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = v477 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v477 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v482 = v477 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v481 = v477 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = v477 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = v477 - v39;
  v41 = type metadata accessor for SearchAction();
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v490 = (v477 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v46 = v477 - v45;
  v47 = v4[11];
  v521 = v4[10];
  v522 = v47;
  v48 = v4[13];
  v523 = v4[12];
  v524 = v48;
  v49 = v4[7];
  v517 = v4[6];
  v518 = v49;
  v50 = v4[9];
  v519 = v4[8];
  v520 = v50;
  v51 = v4[3];
  v513 = v4[2];
  v514 = v51;
  v52 = v4[5];
  v515 = v4[4];
  v516 = v52;
  v53 = v4[1];
  v511 = *v4;
  v512 = v53;
  v54 = a4;
  v56 = v55;
  sub_1E5C426C4(v54, v477 - v45, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *&v500[0] = *v46;
      v204 = *&v500[0];

      sub_1E5C595C8(v500);
      v205 = *&v500[0];
      v206 = *(type metadata accessor for SearchState() + 44);
      v207 = v495;
      v208 = *(v495 + v206);

      *(v207 + v206) = v205;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v209 = sub_1E5C9BD40();
      __swift_project_value_buffer(v209, qword_1ED065C70);

      v210 = sub_1E5C9BD20();
      v211 = sub_1E5C9CDE0();
      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        *v212 = 134217984;
        v213 = *(v204 + 16);

        *(v212 + 4) = v213;

        _os_log_impl(&dword_1E5C20000, v210, v211, "[History] Fetched %ld.", v212, 0xCu);
        MEMORY[0x1E693A130](v212, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      break;
    case 2u:
      v236 = *v46;
      v235 = *(v46 + 1);
      v237 = HIBYTE(v235) & 0xF;
      if ((v235 & 0x2000000000000000) == 0)
      {
        v237 = *v46 & 0xFFFFFFFFFFFFLL;
      }

      if (v237)
      {
        v507 = v521;
        v508 = v522;
        v509 = v523;
        v510 = v524;
        v503 = v517;
        v504 = v518;
        v505 = v519;
        v506 = v520;
        v500[2] = v513;
        v500[3] = v514;
        v501 = v515;
        v502 = v516;
        v500[0] = v511;
        v500[1] = v512;
        v238 = v490;
        *v490 = v236;
        *(v238 + 8) = v235;
        *(v238 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v491, v495, v494, v238);
        sub_1E5C5A9F4(v238, type metadata accessor for SearchAction);
      }

      else
      {

        *(v495 + 50) = 0;
      }

      break;
    case 3u:
      v164 = *v46;
      v163 = *(v46 + 1);
      v165 = *(v46 + 2);
      v166 = *(v46 + 3);
      v167 = *(v46 + 4);
      v492 = *(v46 + 5);
      v169 = *(v46 + 6);
      v168 = *(v46 + 7);
      v170 = *(v46 + 9);
      v481 = *(v46 + 8);
      v482 = v168;
      v171 = *(v46 + 11);
      v479 = *(v46 + 10);
      v480 = v170;
      v478 = v171;
      LODWORD(v489) = v46[96];
      v172 = *(v46 + 13);
      v487 = *(v46 + 14);
      v488 = v172;
      v173 = *(v46 + 15);
      v485 = *(v46 + 16);
      v486 = v173;
      v174 = *(v46 + 17);
      v483 = *(v46 + 18);
      v484 = v174;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v175 = sub_1E5C9BD40();
      __swift_project_value_buffer(v175, qword_1ED065C70);

      v176 = sub_1E5C9BD20();
      v177 = sub_1E5C9CDE0();

      v493 = v163;

      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v477[0] = v164;
        v179 = v178;
        v180 = swift_slowAlloc();
        v477[1] = v56;
        v181 = v180;
        *&v500[0] = v180;
        *v179 = 141558275;
        *(v179 + 4) = 1752392040;
        *(v179 + 12) = 2081;

        v182 = v166;
        v183 = sub_1E5C58D60(v166, v167, v500);

        *(v179 + 14) = v183;
        _os_log_impl(&dword_1E5C20000, v176, v177, "[Incremental] Completed '%{private,mask.hash}s'", v179, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v181);
        MEMORY[0x1E693A130](v181, -1, -1);
        v184 = v179;
        v164 = v477[0];
        MEMORY[0x1E693A130](v184, -1, -1);
      }

      else
      {

        v182 = v166;
      }

      v425 = v495;
      v426 = (v425 + *(type metadata accessor for SearchState() + 68));
      v427 = v426[3];
      v428 = v426[4];
      sub_1E5C30DB8(*v426, v426[1], v426[2]);
      v429 = v481;
      *v426 = v482;
      v426[1] = v429;
      v430 = v479;
      v426[2] = v480;
      v426[3] = v430;
      v426[4] = v478;
      v507 = v521;
      v508 = v522;
      v509 = v523;
      v510 = v524;
      v503 = v517;
      v504 = v518;
      v505 = v519;
      v506 = v520;
      v500[2] = v513;
      v500[3] = v514;
      v501 = v515;
      v502 = v516;
      v500[0] = v511;
      v500[1] = v512;
      v431 = v490;
      v432 = v492;
      v433 = v493;
      *v490 = v164;
      *(v431 + 8) = v433;
      *(v431 + 16) = v165;
      *(v431 + 24) = v182;
      *(v431 + 32) = v167;
      *(v431 + 40) = v432;
      *(v431 + 48) = v169;
      *(v431 + 56) = v489;
      v434 = v487;
      *(v431 + 64) = v488;
      *(v431 + 72) = v434;
      v435 = v485;
      *(v431 + 80) = v486;
      *(v431 + 88) = v435;
      v436 = v483;
      *(v431 + 96) = v484;
      *(v431 + 104) = v436;
      swift_storeEnumTagMultiPayload();
      TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v491, v425, v494, v431);
      sub_1E5C5A9F4(v431, type metadata accessor for SearchAction);
      break;
    case 4u:
      v267 = *v46;
      v266 = *(v46 + 1);
      v268 = v46[16];
      v269 = type metadata accessor for SearchState();
      v270 = v495;
      v271 = v495 + v269[13];
      if (!*(v271 + 56) && (*v271 == v267 && *(v271 + 8) == v266 || (sub_1E5C9D060() & 1) != 0))
      {
        goto LABEL_151;
      }

      v272 = (v270 + v269[14]);
      v273 = *v272;
      v274 = v272[1];
      LOBYTE(v497) = v268;
      *(&v497 + 1) = v267;
      *&v498 = v266;
      *(&v498 + 1) = v273;
      v499[0] = v274;
      *&v499[1] = 0;
      *v272 = v267;
      v272[1] = v266;
      v275 = HIBYTE(v266) & 0xF;
      if ((v266 & 0x2000000000000000) == 0)
      {
        v275 = v267 & 0xFFFFFFFFFFFFLL;
      }

      if (v275)
      {
        v276 = qword_1ED053E00;
        swift_bridgeObjectRetain_n();
        if (v276 != -1)
        {
          swift_once();
        }

        v277 = sub_1E5C9BD40();
        __swift_project_value_buffer(v277, qword_1ED065C70);

        v278 = sub_1E5C9BD20();
        v279 = sub_1E5C9CDE0();

        v280 = os_log_type_enabled(v278, v279);
        v281 = v492;
        LODWORD(v491) = v268;
        if (v280)
        {
          v282 = swift_slowAlloc();
          v283 = swift_slowAlloc();
          *&v500[0] = v283;
          *v282 = 141558275;
          *(v282 + 4) = 1752392040;
          *(v282 + 12) = 2081;
          *(v282 + 14) = sub_1E5C58D60(v267, v266, v500);
          _os_log_impl(&dword_1E5C20000, v278, v279, "[Query] Submitted: '%{private,mask.hash}s'", v282, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v283);
          MEMORY[0x1E693A130](v283, -1, -1);
          MEMORY[0x1E693A130](v282, -1, -1);
        }

        v284 = v494;
        v285 = (v270 + v269[17]);
        v286 = v285[3];
        v287 = v285[4];
        sub_1E5C30DB8(*v285, v285[1], v285[2]);
        v285[4] = 0;
        *v285 = 0u;
        *(v285 + 1) = 0u;
        *(v270 + 50) = 1;
        *&v500[0] = 5;
        memset(v500 + 8, 0, 56);
        LOBYTE(v501) = 2;
        sub_1E5C59308();
        v288 = v481;
        sub_1E5C9CE40();
        v289 = *MEMORY[0x1E6999AE8];
        v290 = v493;
        v495 = *(v493 + 104);
        (v495)(v288, v289, v281);
        v291 = *v284;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v291 = sub_1E5C4E5D4(0, *(v291 + 16) + 1, 1, v291);
        }

        v293 = *(v291 + 16);
        v292 = *(v291 + 24);
        if (v293 >= v292 >> 1)
        {
          v291 = sub_1E5C4E5D4(v292 > 1, v293 + 1, 1, v291);
        }

        *(v291 + 16) = v293 + 1;
        v295 = *(v290 + 32);
        v294 = v290 + 32;
        v489 = ((*(v294 + 48) + 32) & ~*(v294 + 48));
        v490 = v295;
        v488 = *(v294 + 40);
        v493 = v294;
        v295(&v489[v291 + v488 * v293], v481, v281);
        v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
        v297 = v296[12];
        v298 = v296[16];
        v487 = v296[20];
        v299 = v482;
        v300 = &v482[v296[24]];
        *&v500[0] = 3;
        memset(v500 + 8, 0, 56);
        LOBYTE(v501) = 2;
        sub_1E5C9CE40();
        v301 = *MEMORY[0x1E6999B60];
        v302 = sub_1E5C9CAC0();
        v303 = &v299[v298];
        v304 = v492;
        (*(*(v302 - 8) + 104))(v303, v301, v302);
        v305 = swift_allocObject();
        *(v305 + 16) = v267;
        *(v305 + 24) = v266;
        *(v305 + 32) = v491;
        v306 = v522;
        *(v305 + 200) = v521;
        *(v305 + 216) = v306;
        v307 = v524;
        *(v305 + 232) = v523;
        *(v305 + 248) = v307;
        v308 = v518;
        *(v305 + 136) = v517;
        *(v305 + 152) = v308;
        v309 = v520;
        *(v305 + 168) = v519;
        *(v305 + 184) = v309;
        v310 = v514;
        *(v305 + 72) = v513;
        *(v305 + 88) = v310;
        v311 = v516;
        *(v305 + 104) = v515;
        *(v305 + 120) = v311;
        v312 = v512;
        *(v305 + 40) = v511;
        *(v305 + 56) = v312;
        v313 = v498;
        *(v305 + 264) = v497;
        *(v305 + 280) = v313;
        *(v305 + 296) = v499[0];
        *(v305 + 312) = *&v499[1];
        *v300 = &unk_1E5CA1BA0;
        *(v300 + 1) = v305;
        sub_1E5C593F4(&v511, v500);
        sub_1E5C9CD70();
        v314 = *MEMORY[0x1E6999B48];
        v315 = sub_1E5C9CAB0();
        (*(*(v315 - 8) + 104))(&v299[v487], v314, v315);
        (v495)(v299, *MEMORY[0x1E6999AD8], v304);
        v317 = *(v291 + 16);
        v316 = *(v291 + 24);
        if (v317 >= v316 >> 1)
        {
          v291 = sub_1E5C4E5D4(v316 > 1, v317 + 1, 1, v291);
        }

        *(v291 + 16) = v317 + 1;
        v318 = v494;
        v490(&v489[v291 + v317 * v488], v482, v304);
        *v318 = v291;
      }

      else
      {

        sub_1E5C59574(&v497);
        *(v270 + 50) = 0;
      }

      break;
    case 5u:
      v331 = v487;
      sub_1E5C5A8B4(v46, v487, type metadata accessor for SearchHistoryItem);
      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v333 = v332[12];
      v334 = v332[16];
      v335 = v332[20];
      v336 = &v31[v332[24]];
      *&v500[0] = 11;
      memset(v500 + 8, 0, 56);
      LOBYTE(v501) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v337 = *MEMORY[0x1E6999B60];
      v338 = sub_1E5C9CAC0();
      (*(*(v338 - 8) + 104))(&v31[v334], v337, v338);
      v339 = v331;
      v340 = v484;
      sub_1E5C426C4(v339, v484, type metadata accessor for SearchHistoryItem);
      v341 = (*(v483 + 80) + 16) & ~*(v483 + 80);
      v342 = swift_allocObject();
      sub_1E5C5A8B4(v340, v342 + v341, type metadata accessor for SearchHistoryItem);
      *v336 = &unk_1E5CA1B90;
      *(v336 + 1) = v342;
      sub_1E5C9CD70();
      v343 = *MEMORY[0x1E6999B48];
      v344 = sub_1E5C9CAB0();
      (*(*(v344 - 8) + 104))(&v31[v335], v343, v344);
      v346 = v492;
      v345 = v493;
      (*(v493 + 104))(v31, *MEMORY[0x1E6999AD8], v492);
      v347 = v494;
      v348 = *v494;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v348 = sub_1E5C4E5D4(0, v348[2] + 1, 1, v348);
      }

      v350 = v348[2];
      v349 = v348[3];
      if (v350 >= v349 >> 1)
      {
        v348 = sub_1E5C4E5D4(v349 > 1, v350 + 1, 1, v348);
      }

      sub_1E5C5A9F4(v487, type metadata accessor for SearchHistoryItem);
      v348[2] = v350 + 1;
      (*(v345 + 32))(v348 + ((*(v345 + 80) + 32) & ~*(v345 + 80)) + *(v345 + 72) * v350, v31, v346);
      *v347 = v348;
      break;
    case 6u:
      v239 = *v46;
      v240 = *(v46 + 1);
      v241 = *(v46 + 2);
      v242 = *(v46 + 3);
      v243 = *(v46 + 4);
      v489 = *(v46 + 5);
      v493 = *(v46 + 6);
      v494 = v243;
      v244 = *(v46 + 9);
      v245 = *(v46 + 11);
      v246 = *(v46 + 13);

      v490 = v239;
      v491 = v242;
      if (v240)
      {
        v247 = v239;
      }

      else
      {
        v247 = 0;
      }

      v488 = v247;
      if (v240)
      {
        v248 = v240;
      }

      else
      {
        v248 = 0xE000000000000000;
      }

      v249 = *(v241 + 16);
      v492 = v241;
      if (v249)
      {
        v486 = v248;
        v496 = MEMORY[0x1E69E7CC0];
        v487 = v240;

        sub_1E5C5A894(0, v249, 0);
        v250 = v496;
        v251 = (v241 + 32);
        do
        {
          v252 = *v251;
          v253 = v251[1];
          v254 = v251[3];
          v500[2] = v251[2];
          v500[3] = v254;
          v500[0] = v252;
          v500[1] = v253;
          v255 = *(&v254 + 1);
          v525 = v253;
          sub_1E5C2A1B8(v500, &v497);

          MEMORY[0x1E6939590](58, 0xE100000000000000);
          *&v497 = *(v255 + 16);
          v256 = sub_1E5C9D050();
          MEMORY[0x1E6939590](v256);

          sub_1E5C2A1F0(v500);
          v257 = v525;
          v496 = v250;
          v259 = *(v250 + 16);
          v258 = *(v250 + 24);
          if (v259 >= v258 >> 1)
          {
            sub_1E5C5A894((v258 > 1), v259 + 1, 1);
            v250 = v496;
          }

          *(v250 + 16) = v259 + 1;
          *(v250 + 16 * v259 + 32) = v257;
          v251 += 4;
          --v249;
        }

        while (v249);
        v248 = v486;
        v240 = v487;
        v242 = v491;
        v241 = v492;
      }

      else
      {

        v250 = MEMORY[0x1E69E7CC0];
      }

      v437 = v494;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v438 = sub_1E5C9BD40();
      __swift_project_value_buffer(v438, qword_1ED065C70);

      v439 = sub_1E5C9BD20();
      v440 = sub_1E5C9CDE0();

      if (os_log_type_enabled(v439, v440))
      {
        v441 = swift_slowAlloc();
        v442 = swift_slowAlloc();
        *&v500[0] = v442;
        *v441 = 141558787;
        *(v441 + 4) = 1752392040;
        *(v441 + 12) = 2081;

        v443 = sub_1E5C58D60(v242, v494, v500);

        *(v441 + 14) = v443;
        *(v441 + 22) = 2080;
        v444 = sub_1E5C58D60(v488, v248, v500);

        *(v441 + 24) = v444;
        *(v441 + 32) = 2080;
        v445 = MEMORY[0x1E69395F0](v250, MEMORY[0x1E69E6158]);
        v447 = v446;

        v448 = sub_1E5C58D60(v445, v447, v500);
        v242 = v491;

        *(v441 + 34) = v448;
        _os_log_impl(&dword_1E5C20000, v439, v440, "[Results] Fetched '%{private,mask.hash}s' (%s): %s", v441, 0x2Au);
        swift_arrayDestroy();
        v449 = v442;
        v241 = v492;
        MEMORY[0x1E693A130](v449, -1, -1);
        v450 = v441;
        v437 = v494;
        MEMORY[0x1E693A130](v450, -1, -1);
      }

      else
      {
      }

      v451 = v490;
      v452 = type metadata accessor for SearchState();
      v453 = v495;
      v454 = v495 + *(v452 + 52);
      *(&v500[2] + 9) = *(v454 + 41);
      v455 = *(v454 + 16);
      v500[0] = *v454;
      v500[1] = v455;
      v500[2] = *(v454 + 32);
      v456 = sub_1E5C30CAC(v500);
      *v454 = v451;
      *(v454 + 8) = v240;
      *(v454 + 16) = v241;
      *(v454 + 24) = v242;
      v457 = v489;
      *(v454 + 32) = v437;
      *(v454 + 40) = v457;
      *(v454 + 48) = v493;
      *(v454 + 56) = 1;
      (v523)(v456);
      *(v453 + 50) = 0;
      break;
    case 7u:
      v418 = *(v46 + 1);
      v497 = *v46;
      v498 = v418;
      v419 = *(v46 + 3);
      v499[0] = *(v46 + 2);
      v499[1] = v419;
      v420 = (v495 + *(type metadata accessor for SearchState() + 60));
      v421 = v420[1];
      v500[0] = *v420;
      v500[1] = v421;
      v422 = v420[3];
      v500[2] = v420[2];
      v500[3] = v422;
      sub_1E5C3177C(v500, &qword_1ED053F80, &qword_1E5C9E528);
      v423 = v498;
      *v420 = v497;
      v420[1] = v423;
      v424 = v499[1];
      v420[2] = v499[0];
      v420[3] = v424;
      break;
    case 8u:
      sub_1E5C5A8B4(v46, v488, type metadata accessor for SearchHint);
      v189 = type metadata accessor for SearchState();
      v190 = v495;
      v191 = (v495 + *(v189 + 68));
      v192 = v191[3];
      v193 = v191[4];
      sub_1E5C30DB8(*v191, v191[1], v191[2]);
      v191[4] = 0;
      *v191 = 0u;
      *(v191 + 1) = 0u;
      *&v500[0] = 5;
      memset(v500 + 8, 0, 56);
      LOBYTE(v501) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v195 = v492;
      v194 = v493;
      (*(v493 + 104))(v28, *MEMORY[0x1E6999AE8], v492);
      v196 = v494;
      v197 = *v494;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v197 = sub_1E5C4E5D4(0, v197[2] + 1, 1, v197);
      }

      v199 = v197[2];
      v198 = v197[3];
      if (v199 >= v198 >> 1)
      {
        v197 = sub_1E5C4E5D4(v198 > 1, v199 + 1, 1, v197);
      }

      v197[2] = v199 + 1;
      (*(v194 + 32))(v197 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v199, v28, v195);
      *v196 = v197;
      v501 = v515;
      v502 = v516;
      v500[2] = v513;
      v500[3] = v514;
      v505 = v519;
      v506 = v520;
      v503 = v517;
      v504 = v518;
      v509 = v523;
      v510 = v524;
      v507 = v521;
      v508 = v522;
      v500[0] = v511;
      v500[1] = v512;
      v200 = v488;
      v201 = (v488 + *(v486 + 32));
      v202 = v201[1];
      v203 = v490;
      *v490 = *v201;
      *(v203 + 8) = v202;
      *(v203 + 16) = 1;
      swift_storeEnumTagMultiPayload();

      TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v491, v190, v196, v203);
      sub_1E5C5A9F4(v203, type metadata accessor for SearchAction);
      sub_1E5C5A9F4(v200, type metadata accessor for SearchHint);
      break;
    case 9u:
      v398 = *(v46 + 1);
      v491 = *v46;
      v399 = *(v46 + 2);
      v400 = *(v46 + 3);
      v401 = *(v46 + 4);
      v402 = *(v46 + 7);
      v403 = *(v46 + 9);
      v404 = *(v46 + 11);

      v405 = type metadata accessor for SearchState();
      v406 = v495;
      v407 = (v495 + *(v405 + 56));
      v408 = *v407;
      v409 = v407[1];
      v410 = HIBYTE(v409) & 0xF;
      if ((v409 & 0x2000000000000000) == 0)
      {
        v410 = v408 & 0xFFFFFFFFFFFFLL;
      }

      if (!v410)
      {

        *(v406 + 49) = 0;
        *&v500[0] = 5;
        memset(v500 + 8, 0, 56);
        LOBYTE(v501) = 2;
        sub_1E5C59308();
        sub_1E5C9CE40();
        v458 = v493;
        (*(v493 + 104))(v25, *MEMORY[0x1E6999AE8], v492);
        v459 = v494;
        v460 = *v494;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v460 = sub_1E5C4E5D4(0, v460[2] + 1, 1, v460);
        }

        v462 = v460[2];
        v461 = v460[3];
        if (v462 >= v461 >> 1)
        {
          v460 = sub_1E5C4E5D4(v461 > 1, v462 + 1, 1, v460);
        }

        v460[2] = v462 + 1;
        (*(v458 + 32))(v460 + ((*(v458 + 80) + 32) & ~*(v458 + 80)) + *(v458 + 72) * v462, v25, v492);
        *v459 = v460;
        v64 = (v406 + *(v405 + 68));
        goto LABEL_143;
      }

      if ((v408 != v400 || v409 != v401) && (sub_1E5C9D060() & 1) == 0)
      {

        goto LABEL_151;
      }

      v494 = v405;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v411 = sub_1E5C9BD40();
      __swift_project_value_buffer(v411, qword_1ED065C70);

      v412 = sub_1E5C9BD20();
      v413 = sub_1E5C9CDE0();
      if (os_log_type_enabled(v412, v413))
      {
        v414 = swift_slowAlloc();
        v415 = swift_slowAlloc();
        *&v500[0] = v415;
        *v414 = 141558531;
        *(v414 + 4) = 1752392040;
        *(v414 + 12) = 2081;

        v416 = sub_1E5C58D60(v400, v401, v500);

        *(v414 + 14) = v416;
        *(v414 + 22) = 2048;
        *(v414 + 24) = *(v399 + 16);

        _os_log_impl(&dword_1E5C20000, v412, v413, "[Suggestions] Completed '%{private,mask.hash}s': %ld", v414, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v415);
        v417 = v415;
        v406 = v495;
        MEMORY[0x1E693A130](v417, -1, -1);
        MEMORY[0x1E693A130](v414, -1, -1);
      }

      else
      {
      }

      v465 = v491;
      v466 = (v406 + *(v494 + 17));
      v467 = v466[3];
      v468 = v466[4];
      sub_1E5C30DB8(*v466, v466[1], v466[2]);
      *v466 = v465;
      v466[1] = v398;
      v466[2] = v399;
      v466[3] = v400;
      v466[4] = v401;
      break;
    case 0xAu:
      v105 = *v46;
      v104 = *(v46 + 1);
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v106 = sub_1E5C9BD40();
      __swift_project_value_buffer(v106, qword_1ED065C70);

      v107 = sub_1E5C9BD20();
      v108 = sub_1E5C9CDB0();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *&v500[0] = v110;
        *v109 = 141558275;
        *(v109 + 4) = 1752392040;
        *(v109 + 12) = 2081;
        *(v109 + 14) = sub_1E5C58D60(v105, v104, v500);
        _os_log_impl(&dword_1E5C20000, v107, v108, "[Text] Changed: %{private,mask.hash}s", v109, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v110);
        MEMORY[0x1E693A130](v110, -1, -1);
        MEMORY[0x1E693A130](v109, -1, -1);
      }

      v111 = v495;
      v112 = type metadata accessor for SearchState();
      v113 = v112[14];
      v114 = (v111 + v113);
      v115 = *(v111 + v113);
      v116 = *(v111 + v113 + 8);
      if (v115 == v105 && v116 == v104)
      {
        goto LABEL_151;
      }

      v117 = *(v111 + v113);
      v118 = *(v111 + v113 + 8);
      if (sub_1E5C9D060())
      {
        goto LABEL_151;
      }

      v119 = (v111 + v112[17]);
      if (v119[2])
      {
        if (v119[3] == v105 && v119[4] == v104 || (sub_1E5C9D060() & 1) != 0)
        {
          goto LABEL_151;
        }
      }

      v120 = (v111 + v112[13]);
      if (!*(v120 + 56) && (*v120 == v105 && *(v120 + 1) == v104 || (sub_1E5C9D060() & 1) != 0))
      {
        goto LABEL_151;
      }

      v121 = v119[1];
      v122 = v119[2];
      v123 = v119[3];
      v124 = v119[4];
      *&v500[0] = *v119;
      *(&v500[0] + 1) = v121;
      *&v500[1] = v122;
      *(&v500[1] + 1) = v123;
      *&v500[2] = v124;
      sub_1E5C3210C(*&v500[0], v121, v122);
      v125._countAndFlagsBits = v105;
      v125._object = v104;
      v126 = SearchHintsState.containsMatchingHint(label:)(v125);
      sub_1E5C30DB8(*&v500[0], *(&v500[0] + 1), *&v500[1]);
      if (v126)
      {
LABEL_151:
      }

      else
      {
        LOBYTE(v525) = 2;
        *(&v525 + 1) = v105;
        *&v526 = v104;
        *(&v526 + 1) = v115;
        v527 = v116;
        v528 = 0;
        if ((v104 & 0x2000000000000000) != 0)
        {
          v127 = HIBYTE(v104) & 0xF;
        }

        else
        {
          v127 = v105 & 0xFFFFFFFFFFFFLL;
        }

        *(v495 + 49) = v127 != 0;
        *v114 = v105;
        v114[1] = v104;
        *&v500[0] = 5;
        memset(v500 + 8, 0, 56);
        LOBYTE(v501) = 2;
        v128 = sub_1E5C59308();
        swift_bridgeObjectRetain_n();
        v129 = v480;
        v486 = v128;
        sub_1E5C9CE40();
        v130 = (v493 + 104);
        v131 = *(v493 + 104);
        (v131)(v129, *MEMORY[0x1E6999AE8], v492);
        v132 = *v494;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v490 = v131;
        v491 = v130;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v132 = sub_1E5C4E5D4(0, v132[2] + 1, 1, v132);
        }

        v135 = v132[2];
        v134 = v132[3];
        if (v135 >= v134 >> 1)
        {
          v132 = sub_1E5C4E5D4(v134 > 1, v135 + 1, 1, v132);
        }

        v132[2] = v135 + 1;
        v136 = v492;
        v137 = *(v493 + 32);
        v488 = (*(v493 + 80) + 32) & ~*(v493 + 80);
        v489 = v137;
        v487 = *(v493 + 72);
        v138 = v132 + v488 + v487 * v135;
        v139 = v493 + 32;
        (v137)(v138, v480, v492);
        *v494 = v132;
        if (v127)
        {
          v493 = v139;
          v140 = v119[3];
          v141 = v119[4];
          sub_1E5C30DB8(*v119, v119[1], v119[2]);
          v119[4] = 0;
          *v119 = 0u;
          *(v119 + 1) = 0u;
          *(v495 + 50) = 1;
          v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
          v143 = v142[12];
          v144 = v142[16];
          v495 = v142[20];
          v145 = v479;
          v146 = &v479[v142[24]];
          *&v500[0] = 5;
          memset(v500 + 8, 0, 56);
          LOBYTE(v501) = 2;
          sub_1E5C9CE40();
          v147 = *MEMORY[0x1E6999B60];
          v148 = sub_1E5C9CAC0();
          (*(*(v148 - 8) + 104))(&v145[v144], v147, v148);
          v149 = swift_allocObject();
          *(v149 + 16) = v105;
          *(v149 + 24) = v104;
          v150 = v522;
          *(v149 + 192) = v521;
          *(v149 + 208) = v150;
          v151 = v524;
          *(v149 + 224) = v523;
          *(v149 + 240) = v151;
          v152 = v518;
          *(v149 + 128) = v517;
          *(v149 + 144) = v152;
          v153 = v520;
          *(v149 + 160) = v519;
          *(v149 + 176) = v153;
          v154 = v514;
          *(v149 + 64) = v513;
          *(v149 + 80) = v154;
          v155 = v516;
          *(v149 + 96) = v515;
          *(v149 + 112) = v155;
          v156 = v512;
          *(v149 + 32) = v511;
          *(v149 + 48) = v156;
          v157 = v526;
          *(v149 + 256) = v525;
          *(v149 + 272) = v157;
          *(v149 + 288) = v527;
          *(v149 + 304) = v528;
          *v146 = &unk_1E5CA1B80;
          *(v146 + 1) = v149;
          sub_1E5C593F4(&v511, v500);
          sub_1E5C9CD70();
          v158 = *MEMORY[0x1E6999B48];
          v159 = sub_1E5C9CAB0();
          (*(*(v159 - 8) + 104))(&v145[v495], v158, v159);
          v490(v145, *MEMORY[0x1E6999AD8], v136);
          v161 = v132[2];
          v160 = v132[3];
          if (v161 >= v160 >> 1)
          {
            v132 = sub_1E5C4E5D4(v160 > 1, v161 + 1, 1, v132);
          }

          v162 = v494;
          v132[2] = v161 + 1;
          (v489)(v132 + v488 + v161 * v487, v479, v136);
          *v162 = v132;
        }

        else
        {

          sub_1E5C59574(&v525);
          v469 = v495;
          *(v495 + 50) = 0;
          v470 = v119[3];
          v471 = v119[4];
          sub_1E5C30DB8(*v119, v119[1], v119[2]);
          v119[4] = 0;
          *v119 = 0u;
          *(v119 + 1) = 0u;
          v472 = v120[1];
          v497 = *v120;
          v498 = v472;
          v499[0] = v120[2];
          *(v499 + 9) = *(v120 + 41);
          sub_1E5C30CAC(&v497);
          *v120 = 0u;
          v120[1] = 0u;
          v120[2] = 0u;
          *(v120 + 6) = 0;
          *(v120 + 56) = 2;
          v473 = (v469 + v112[15]);
          v474 = v473[1];
          v500[0] = *v473;
          v500[1] = v474;
          v475 = v473[3];
          v500[2] = v473[2];
          v500[3] = v475;
          v476 = sub_1E5C3177C(v500, &qword_1ED053F80, &qword_1E5C9E528);
          *v473 = 0u;
          v473[1] = 0u;
          v473[2] = 0u;
          v473[3] = 0u;
          (v511)(v476);
        }
      }

      break;
    case 0xBu:
      v185 = type metadata accessor for SearchState();
      v186 = v495;
      v187 = (v495 + *(v185 + 56));
      v188 = v187[1];

      *v187 = 0;
      v187[1] = 0xE000000000000000;
      *(v186 + 49) = 0;
      break;
    case 0xCu:
      v319 = type metadata accessor for SearchState();
      v320 = v495;
      v321 = (v495 + v319[14]);
      v322 = v321[1];

      *v321 = 0;
      v321[1] = 0xE000000000000000;
      v323 = (v320 + v319[17]);
      v324 = v323[3];
      v325 = v323[4];
      sub_1E5C30DB8(*v323, v323[1], v323[2]);
      v323[4] = 0;
      *v323 = 0u;
      *(v323 + 1) = 0u;
      v326 = (v320 + v319[13]);
      v327 = v326[1];
      v497 = *v326;
      v498 = v327;
      v499[0] = v326[2];
      *(v499 + 9) = *(v326 + 41);
      sub_1E5C30CAC(&v497);
      *v326 = 0u;
      v326[1] = 0u;
      v326[2] = 0u;
      *(v326 + 6) = 0;
      *(v326 + 56) = 2;
      v328 = (v320 + v319[15]);
      v329 = v328[1];
      v500[0] = *v328;
      v500[1] = v329;
      v330 = v328[3];
      v500[2] = v328[2];
      v500[3] = v330;
      sub_1E5C3177C(v500, &qword_1ED053F80, &qword_1E5C9E528);
      *v328 = 0u;
      v328[1] = 0u;
      v328[2] = 0u;
      v328[3] = 0u;
      break;
    case 0xDu:
      v89 = type metadata accessor for SearchState();
      v90 = v495;
      v91 = (v495 + *(v89 + 56));
      v93 = *v91;
      v92 = v91[1];
      v94 = qword_1ED053E00;

      if (v94 != -1)
      {
        swift_once();
      }

      v95 = sub_1E5C9BD40();
      __swift_project_value_buffer(v95, qword_1ED065C70);

      v96 = sub_1E5C9BD20();
      v97 = sub_1E5C9CDE0();

      v98 = os_log_type_enabled(v96, v97);
      v99 = v494;
      if (v98)
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v500[0] = v101;
        *v100 = 141558275;
        *(v100 + 4) = 1752392040;
        *(v100 + 12) = 2081;
        *(v100 + 14) = sub_1E5C58D60(v93, v92, v500);
        _os_log_impl(&dword_1E5C20000, v96, v97, "[Dictation] Triggered '%{private,mask.hash}s'", v100, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x1E693A130](v101, -1, -1);
        MEMORY[0x1E693A130](v100, -1, -1);
      }

      v103 = v490;
      v102 = v491;
      v507 = v521;
      v508 = v522;
      v509 = v523;
      v510 = v524;
      v503 = v517;
      v504 = v518;
      v505 = v519;
      v506 = v520;
      v500[2] = v513;
      v500[3] = v514;
      v501 = v515;
      v502 = v516;
      v500[0] = v511;
      v500[1] = v512;
      *v490 = v93;
      *(v103 + 8) = v92;
      swift_storeEnumTagMultiPayload();
      TVSearchFeature.reduce(localState:sharedState:sideEffects:action:)(v102, v90, v99, v103);
      sub_1E5C5A9F4(v103, type metadata accessor for SearchAction);
      break;
    case 0xEu:
      *(v495 + *(type metadata accessor for SearchState() + 64)) = 0;
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v215 = v214[12];
      v216 = v214[16];
      v217 = v214[20];
      v218 = &v40[v214[24]];
      memset(v500, 0, sizeof(v500));
      LOBYTE(v501) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v219 = *MEMORY[0x1E6999B60];
      v220 = sub_1E5C9CAC0();
      (*(*(v220 - 8) + 104))(&v40[v216], v219, v220);
      v221 = swift_allocObject();
      v222 = v522;
      v221[11] = v521;
      v221[12] = v222;
      v223 = v524;
      v221[13] = v523;
      v221[14] = v223;
      v224 = v518;
      v221[7] = v517;
      v221[8] = v224;
      v225 = v520;
      v221[9] = v519;
      v221[10] = v225;
      v226 = v514;
      v221[3] = v513;
      v221[4] = v226;
      v227 = v516;
      v221[5] = v515;
      v221[6] = v227;
      v228 = v512;
      v221[1] = v511;
      v221[2] = v228;
      *v218 = &unk_1E5CA1BC0;
      *(v218 + 1) = v221;
      sub_1E5C593F4(&v511, v500);
      sub_1E5C9CD70();
      v229 = *MEMORY[0x1E6999B48];
      v230 = sub_1E5C9CAB0();
      (*(*(v230 - 8) + 104))(&v40[v217], v229, v230);
      v232 = v492;
      v231 = v493;
      (*(v493 + 104))(v40, *MEMORY[0x1E6999AD8], v492);
      v85 = v494;
      v86 = *v494;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1E5C4E5D4(0, v86[2] + 1, 1, v86);
      }

      v234 = v86[2];
      v233 = v86[3];
      if (v234 >= v233 >> 1)
      {
        v86 = sub_1E5C4E5D4(v233 > 1, v234 + 1, 1, v86);
      }

      v86[2] = v234 + 1;
      (*(v231 + 32))(v86 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v234, v40, v232);
      goto LABEL_62;
    case 0xFu:
      v65 = *(type metadata accessor for SearchState() + 64);
      if (*(v495 + v65) == 1)
      {
        *(v495 + v65) = 0;
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
        v67 = v66[12];
        v68 = v66[16];
        v69 = v66[20];
        v70 = &v38[v66[24]];
        memset(v500, 0, sizeof(v500));
        LOBYTE(v501) = 2;
        sub_1E5C59308();
        sub_1E5C9CE40();
        v71 = *MEMORY[0x1E6999B60];
        v72 = sub_1E5C9CAC0();
        (*(*(v72 - 8) + 104))(&v38[v68], v71, v72);
        v73 = swift_allocObject();
        v74 = v522;
        v73[11] = v521;
        v73[12] = v74;
        v75 = v524;
        v73[13] = v523;
        v73[14] = v75;
        v76 = v518;
        v73[7] = v517;
        v73[8] = v76;
        v77 = v520;
        v73[9] = v519;
        v73[10] = v77;
        v78 = v514;
        v73[3] = v513;
        v73[4] = v78;
        v79 = v516;
        v73[5] = v515;
        v73[6] = v79;
        v80 = v512;
        v73[1] = v511;
        v73[2] = v80;
        *v70 = &unk_1E5CA1BB0;
        *(v70 + 1) = v73;
        sub_1E5C593F4(&v511, v500);
        sub_1E5C9CD70();
        v81 = *MEMORY[0x1E6999B48];
        v82 = sub_1E5C9CAB0();
        (*(*(v82 - 8) + 104))(&v38[v69], v81, v82);
        v84 = v492;
        v83 = v493;
        (*(v493 + 104))(v38, *MEMORY[0x1E6999AD8], v492);
        v85 = v494;
        v86 = *v494;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1E5C4E5D4(0, v86[2] + 1, 1, v86);
        }

        v88 = v86[2];
        v87 = v86[3];
        if (v88 >= v87 >> 1)
        {
          v86 = sub_1E5C4E5D4(v87 > 1, v88 + 1, 1, v86);
        }

        v86[2] = v88 + 1;
        (*(v83 + 32))(v86 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v88, v38, v84);
LABEL_62:
        *v85 = v86;
      }

      else
      {
        *(v495 + v65) = 1;
      }

      break;
    case 0x10u:
      v260 = type metadata accessor for SearchState();
      v261 = v495 + *(v260 + 52);
      if (*(v261 + 56) == 2)
      {
        v262 = vorrq_s8(*(v261 + 24), *(v261 + 40));
        if (!(*&vorr_s8(*v262.i8, *&vextq_s8(v262, v262, 8uLL)) | *(v261 + 16) | *(v261 + 8) | *v261))
        {
          v263 = (v495 + *(v260 + 60));
          v264 = v263[1];
          v500[0] = *v263;
          v500[1] = v264;
          v265 = v263[3];
          v500[2] = v263[2];
          v500[3] = v265;
          sub_1E5C3177C(v500, &qword_1ED053F80, &qword_1E5C9E528);
          *v263 = 0u;
          v263[1] = 0u;
          v263[2] = 0u;
          v263[3] = 0u;
        }
      }

      (v523)();
      break;
    case 0x11u:
      v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v352 = v351[12];
      v353 = v351[16];
      v354 = v351[20];
      v355 = v485;
      v356 = &v485[v351[24]];
      *&v500[0] = 8;
      memset(v500 + 8, 0, 56);
      LOBYTE(v501) = 2;
      v488 = sub_1E5C59308();
      sub_1E5C9CE40();
      v357 = *MEMORY[0x1E6999B50];
      v358 = sub_1E5C9CAC0();
      v359 = *(v358 - 8);
      v486 = *(v359 + 104);
      v487 = v358;
      v484 = v359 + 104;
      (v486)(&v355[v353], v357);
      v360 = *MEMORY[0x1E6999B40];
      v361 = sub_1E5C9CAB0();
      v362 = *(v361 - 8);
      v363 = *(v362 + 104);
      v364 = (v362 + 104);
      v363(&v355[v354], v360, v361);
      v365 = swift_allocObject();
      v366 = v522;
      v365[11] = v521;
      v365[12] = v366;
      v367 = v524;
      v365[13] = v523;
      v365[14] = v367;
      v368 = v518;
      v365[7] = v517;
      v365[8] = v368;
      v369 = v520;
      v365[9] = v519;
      v365[10] = v369;
      v370 = v514;
      v365[3] = v513;
      v365[4] = v370;
      v371 = v516;
      v365[5] = v515;
      v365[6] = v371;
      v372 = v512;
      v365[1] = v511;
      v365[2] = v372;
      *v356 = &unk_1E5CA1B60;
      *(v356 + 1) = v365;
      sub_1E5C593F4(&v511, v500);
      sub_1E5C9CD70();
      LODWORD(v354) = *MEMORY[0x1E6999AD8];
      v373 = v493;
      v374 = *MEMORY[0x1E6999AD8];
      v482 = *(v493 + 104);
      (v482)(v355, v374, v492);
      v375 = *v494;
      v376 = swift_isUniquelyReferenced_nonNull_native();
      v495 = v361;
      LODWORD(v483) = v354;
      if ((v376 & 1) == 0)
      {
        v375 = sub_1E5C4E5D4(0, v375[2] + 1, 1, v375);
      }

      v378 = v375[2];
      v377 = v375[3];
      v490 = v364;
      v491 = v363;
      if (v378 >= v377 >> 1)
      {
        v375 = sub_1E5C4E5D4(v377 > 1, v378 + 1, 1, v375);
      }

      v375[2] = v378 + 1;
      v380 = *(v373 + 32);
      v379 = v373 + 32;
      v381 = (*(v379 + 48) + 32) & ~*(v379 + 48);
      v382 = *(v379 + 40);
      v383 = v492;
      v493 = v379;
      v485 = v380;
      (v380)(v375 + v381 + v382 * v378, v355, v492);
      v384 = v351[12];
      v385 = v351[16];
      v481 = v351[20];
      v386 = v489;
      v387 = &v489[v351[24]];
      *&v500[0] = 2;
      memset(v500 + 8, 0, 56);
      LOBYTE(v501) = 2;
      sub_1E5C9CE40();
      (v486)(&v386[v385], *MEMORY[0x1E6999B60], v487);
      v388 = swift_allocObject();
      v389 = v522;
      v388[11] = v521;
      v388[12] = v389;
      v390 = v524;
      v388[13] = v523;
      v388[14] = v390;
      v391 = v518;
      v388[7] = v517;
      v388[8] = v391;
      v392 = v520;
      v388[9] = v519;
      v388[10] = v392;
      v393 = v514;
      v388[3] = v513;
      v388[4] = v393;
      v394 = v516;
      v388[5] = v515;
      v388[6] = v394;
      v395 = v512;
      v388[1] = v511;
      v388[2] = v395;
      *v387 = &unk_1E5CA1B70;
      *(v387 + 1) = v388;
      sub_1E5C593F4(&v511, v500);
      sub_1E5C9CD70();
      v491(&v481[v386], *MEMORY[0x1E6999B48], v495);
      (v482)(v386, v483, v383);
      v397 = v375[2];
      v396 = v375[3];
      if (v397 >= v396 >> 1)
      {
        v375 = sub_1E5C4E5D4(v396 > 1, v397 + 1, 1, v375);
      }

      v375[2] = v397 + 1;
      (v485)(v375 + v381 + v397 * v382, v489, v492);
      *v494 = v375;
      break;
    case 0x12u:
      return;
    default:
      v57 = *v46;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v58 = sub_1E5C9BD40();
      __swift_project_value_buffer(v58, qword_1ED065C70);
      v59 = sub_1E5C9BD20();
      v60 = sub_1E5C9CDB0();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v495;
      if (v61)
      {
        v63 = swift_slowAlloc();
        *v63 = 67109120;
        *(v63 + 4) = v57;
        _os_log_impl(&dword_1E5C20000, v59, v60, "[Focus] isSearching: %{BOOL}d", v63, 8u);
        MEMORY[0x1E693A130](v63, -1, -1);
      }

      *(v62 + 49) = v57;
      if ((v57 & 1) == 0)
      {
        v64 = (v495 + *(type metadata accessor for SearchState() + 68));
LABEL_143:
        v463 = v64[3];
        v464 = v64[4];
        sub_1E5C30DB8(*v64, v64[1], v64[2]);
        v64[4] = 0;
        *v64 = 0u;
        *(v64 + 1) = 0u;
      }

      break;
  }
}

uint64_t sub_1E5C53424(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SearchAction();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_1E5C9CD60();
  v2[6] = sub_1E5C9CD50();
  v6 = *(a2 + 24);
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = *(*(a2 + 16) + 4);
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1E5C53560;

  return v10();
}

uint64_t sub_1E5C53560()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  v3[8] = v2;

  v8 = sub_1E5C9CD10();
  v3[9] = v8;
  v3[10] = v7;
  if (v2)
  {
    v9 = sub_1E5C5AF3C;
  }

  else
  {
    v9 = sub_1E5C536C0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5C536C0()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v3 = v0;
  v3[1] = sub_1E5C5378C;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5C5378C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5C5AF38, v5, v4);
}

uint64_t sub_1E5C538E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SearchAction();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_1E5C9CD60();
  v2[6] = sub_1E5C9CD50();
  v6 = *(a2 + 24);
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = *(*(a2 + 16) + 4);
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1E5C53A20;

  return v10();
}

uint64_t sub_1E5C53A20()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  v3[8] = v2;

  v8 = sub_1E5C9CD10();
  v3[9] = v8;
  v3[10] = v7;
  if (v2)
  {
    v9 = sub_1E5C53E14;
  }

  else
  {
    v9 = sub_1E5C53B80;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5C53B80()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v3 = v0;
  v3[1] = sub_1E5C53C4C;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5C53C4C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5C53DA4, v5, v4);
}

uint64_t sub_1E5C53DA4()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5C53E14()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1E5C53E84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 177) = a4;
  *(v6 + 280) = a3;
  *(v6 + 288) = a5;
  *(v6 + 264) = a1;
  *(v6 + 272) = a2;
  *(v6 + 178) = *a6;
  v7 = *(a6 + 8);
  *(v6 + 296) = a6;
  *(v6 + 304) = v7;
  *(v6 + 312) = *(a6 + 16);
  *(v6 + 328) = *(a6 + 32);
  *(v6 + 336) = *(a6 + 40);
  v8 = sub_1E5C9BBA0();
  *(v6 + 352) = v8;
  v9 = *(v8 - 8);
  *(v6 + 360) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  v11 = sub_1E5C9CD20();
  *(v6 + 376) = v11;
  v12 = *(v11 - 8);
  *(v6 + 384) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  v14 = type metadata accessor for SearchAction();
  *(v6 + 400) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  sub_1E5C9CD60();
  *(v6 + 416) = sub_1E5C9CD50();
  v17 = sub_1E5C9CD10();
  *(v6 + 424) = v17;
  *(v6 + 432) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1E5C54038, v17, v16);
}

uint64_t sub_1E5C54038()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 177);
  v4 = *(v0 + 272);
  *(v0 + 440) = v2[6];
  *(v0 + 448) = v2[7];
  v5 = v2[10];
  v6 = v2[11];
  *(v0 + 456) = v2[14];
  *(v0 + 464) = v2[15];
  *(v0 + 152) = v4;
  *(v0 + 160) = v1;
  *(v0 + 168) = v3;

  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 472) = v8;
  *v8 = v0;
  v8[1] = sub_1E5C54178;

  return v10(v0 + 16, v0 + 152);
}

uint64_t sub_1E5C54178()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_1E5C5537C;
  }

  else
  {
    v7 = v2[35];

    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_1E5C54294;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5C54294()
{
  v76 = v0;
  v1 = *(v0 + 480);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 488) = v2;
  *(v0 + 496) = v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  *(v0 + 504) = v6;
  *(v0 + 512) = v8;
  sub_1E5C9CD90();
  if (v1)
  {

    *(v0 + 584) = v1;
    v9 = *(v0 + 392);
    v10 = *(v0 + 376);
    *(v0 + 248) = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 416);

      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 280);
      v14 = sub_1E5C9BD40();
      __swift_project_value_buffer(v14, qword_1ED065C70);

      v15 = sub_1E5C9BD20();
      v16 = sub_1E5C9CDB0();

      if (os_log_type_enabled(v15, v16))
      {
        v18 = *(v0 + 272);
        v17 = *(v0 + 280);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v75[0] = v20;
        *v19 = 141558275;
        *(v19 + 4) = 1752392040;
        *(v19 + 12) = 2081;
        *(v19 + 14) = sub_1E5C58D60(v18, v17, v75);
        _os_log_impl(&dword_1E5C20000, v15, v16, "[Cancellation] Results for %{private,mask.hash}s", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1E693A130](v20, -1, -1);
        MEMORY[0x1E693A130](v19, -1, -1);
      }

      (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
      v21 = *(v0 + 408);
      v22 = *(v0 + 392);
      v23 = *(v0 + 368);

      v24 = *(v0 + 8);

      return v24();
    }

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 280);
    v38 = sub_1E5C9BD40();
    __swift_project_value_buffer(v38, qword_1ED065C70);

    v39 = v1;
    v40 = sub_1E5C9BD20();
    v41 = sub_1E5C9CDC0();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = *(v0 + 272);
      v42 = *(v0 + 280);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v75[0] = v46;
      *v44 = 141558531;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      *(v44 + 14) = sub_1E5C58D60(v43, v42, v75);
      *(v44 + 22) = 2112;
      v47 = v1;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v48;
      *v45 = v48;
      _os_log_impl(&dword_1E5C20000, v40, v41, "Failed to fetch results for %{private,mask.hash}s: %@", v44, 0x20u);
      sub_1E5C3177C(v45, &qword_1ED054A70, &qword_1E5CA17D0);
      MEMORY[0x1E693A130](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1E693A130](v46, -1, -1);
      MEMORY[0x1E693A130](v44, -1, -1);
    }

    v49 = *(v0 + 408);
    v50 = *(v0 + 360);
    v51 = *(v0 + 368);
    v67 = *(v0 + 352);
    v72 = *(v0 + 344);
    v73 = *(v0 + 400);
    v71 = *(v0 + 336);
    v69 = *(v0 + 304);
    v70 = *(v0 + 320);
    v68 = *(v0 + 178);
    v74 = *(v0 + 296);
    v53 = *(v0 + 272);
    v52 = *(v0 + 280);
    swift_getErrorValue();
    v55 = *(v0 + 128);
    v54 = *(v0 + 136);
    v56 = *(v0 + 144);
    v57 = sub_1E5C9D080();
    v59 = v58;
    sub_1E5C9BB90();
    v60 = sub_1E5C9BB70();
    v62 = v61;
    (*(v50 + 8))(v51, v67);
    *v49 = v60;
    *(v49 + 8) = v62;
    *(v49 + 16) = MEMORY[0x1E69E7CC0];
    *(v49 + 24) = v53;
    *(v49 + 32) = v52;
    *(v49 + 40) = v57;
    *(v49 + 48) = v59;
    *(v49 + 56) = v68;
    v63 = *(v0 + 170);
    *(v49 + 60) = *(v0 + 173);
    *(v49 + 57) = v63;
    *(v49 + 64) = v69;
    *(v49 + 80) = v70;
    *(v49 + 96) = v71;
    *(v49 + 104) = v72;
    swift_storeEnumTagMultiPayload();

    sub_1E5C5AD2C(v74, v0 + 72);
    v64 = *(MEMORY[0x1E6999AF0] + 4);
    v34 = swift_task_alloc();
    *(v0 + 592) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v34 = v0;
    v36 = sub_1E5C55194;
  }

  else
  {
    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    v28 = *(v0 + 296);
    v29 = *v28;
    *(v0 + 184) = *(v28 + 8);
    *(v0 + 200) = *(v28 + 24);
    v30 = *(v0 + 184);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);
    *v26 = v3;
    *(v26 + 8) = v2;
    *(v26 + 16) = v4;
    *(v26 + 24) = v5;
    *(v26 + 32) = v6;
    *(v26 + 40) = v7;
    *(v26 + 48) = v8;
    *(v26 + 56) = v29;
    *(v26 + 64) = v30;
    *(v26 + 80) = v31;
    *(v26 + 88) = v32;
    *(v26 + 96) = v3;
    *(v26 + 104) = v2;
    swift_storeEnumTagMultiPayload();
    sub_1E5C5AD88(v0 + 184, v0 + 216);
    sub_1E5C5AD88(v0 + 200, v0 + 232);
    v33 = *(MEMORY[0x1E6999AF0] + 4);
    swift_bridgeObjectRetain_n();

    v34 = swift_task_alloc();
    *(v0 + 520) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *(v0 + 528) = v35;
    *v34 = v0;
    v36 = sub_1E5C54928;
  }

  v34[1] = v36;
  v65 = *(v0 + 408);
  v66 = *(v0 + 264);

  return MEMORY[0x1EEE01A40](v65, v35);
}

uint64_t sub_1E5C54928()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 408);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E5C54A80, v5, v4);
}

uint64_t sub_1E5C54A80()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[61];
  v4 = *(v0[62] + 16);

  if (v4)
  {
    v16 = (v0[57] + *v0[57]);
    v5 = *(v0[57] + 4);
    v6 = swift_task_alloc();
    v0[67] = v6;
    *v6 = v0;
    v6[1] = sub_1E5C54C10;
    v7 = v0[58];
    v9 = v0[34];
    v8 = v0[35];

    return v16(v9, v8);
  }

  else
  {
    v11 = v0[52];

    v12 = v0[51];
    v13 = v0[49];
    v14 = v0[46];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1E5C54C10()
{
  v2 = *(*v1 + 536);
  v3 = *v1;
  v3[68] = v0;

  if (v0)
  {
    v4 = v3[53];
    v5 = v3[54];

    return MEMORY[0x1EEE6DFA0](sub_1E5C558EC, v4, v5);
  }

  else
  {
    v10 = (v3[55] + *v3[55]);
    v6 = *(v3[55] + 4);
    v7 = swift_task_alloc();
    v3[69] = v7;
    *v7 = v3;
    v7[1] = sub_1E5C54DDC;
    v8 = v3[56];

    return v10();
  }
}

uint64_t sub_1E5C54DDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {
    v7 = v4[53];
    v8 = v4[54];
    v9 = sub_1E5C55B3C;
  }

  else
  {
    v4[71] = a1;
    v7 = v4[53];
    v8 = v4[54];
    v9 = sub_1E5C54F04;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E5C54F04()
{
  v1 = *(v0 + 400);
  **(v0 + 408) = *(v0 + 568);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 576) = v3;
  *v3 = v0;
  v3[1] = sub_1E5C54FB8;
  v4 = *(v0 + 528);
  v5 = *(v0 + 408);
  v6 = *(v0 + 264);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5C54FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 408);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E5C55110, v5, v4);
}

uint64_t sub_1E5C55110()
{
  v1 = v0[52];

  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[46];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5C55194()
{
  v1 = *v0;
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 408);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E5C552EC, v5, v4);
}

uint64_t sub_1E5C552EC()
{
  v1 = v0[73];
  v2 = v0[52];

  v3 = v0[51];
  v4 = v0[49];
  v5 = v0[46];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5C5537C()
{
  v61 = v0;
  v1 = *(v0 + 280);

  v2 = *(v0 + 480);
  *(v0 + 248) = v2;
  *(v0 + 584) = v2;
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 416);

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 280);
    v8 = sub_1E5C9BD40();
    __swift_project_value_buffer(v8, qword_1ED065C70);

    v9 = sub_1E5C9BD20();
    v10 = sub_1E5C9CDB0();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 272);
      v11 = *(v0 + 280);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v60 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      *(v13 + 14) = sub_1E5C58D60(v12, v11, &v60);
      _os_log_impl(&dword_1E5C20000, v9, v10, "[Cancellation] Results for %{private,mask.hash}s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E693A130](v14, -1, -1);
      MEMORY[0x1E693A130](v13, -1, -1);
    }

    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
    v15 = *(v0 + 408);
    v16 = *(v0 + 392);
    v17 = *(v0 + 368);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 280);
    v21 = sub_1E5C9BD40();
    __swift_project_value_buffer(v21, qword_1ED065C70);

    v22 = v2;
    v23 = sub_1E5C9BD20();
    v24 = sub_1E5C9CDC0();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 272);
      v25 = *(v0 + 280);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v27 = 141558531;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      *(v27 + 14) = sub_1E5C58D60(v26, v25, &v60);
      *(v27 + 22) = 2112;
      v30 = v2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 24) = v31;
      *v28 = v31;
      _os_log_impl(&dword_1E5C20000, v23, v24, "Failed to fetch results for %{private,mask.hash}s: %@", v27, 0x20u);
      sub_1E5C3177C(v28, &qword_1ED054A70, &qword_1E5CA17D0);
      MEMORY[0x1E693A130](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E693A130](v29, -1, -1);
      MEMORY[0x1E693A130](v27, -1, -1);
    }

    v32 = *(v0 + 408);
    v33 = *(v0 + 360);
    v34 = *(v0 + 368);
    v52 = *(v0 + 352);
    v57 = *(v0 + 344);
    v58 = *(v0 + 400);
    v56 = *(v0 + 336);
    v54 = *(v0 + 304);
    v55 = *(v0 + 320);
    v53 = *(v0 + 178);
    v59 = *(v0 + 296);
    v36 = *(v0 + 272);
    v35 = *(v0 + 280);
    swift_getErrorValue();
    v38 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 144);
    v40 = sub_1E5C9D080();
    v42 = v41;
    sub_1E5C9BB90();
    v43 = sub_1E5C9BB70();
    v45 = v44;
    (*(v33 + 8))(v34, v52);
    *v32 = v43;
    *(v32 + 8) = v45;
    *(v32 + 16) = MEMORY[0x1E69E7CC0];
    *(v32 + 24) = v36;
    *(v32 + 32) = v35;
    *(v32 + 40) = v40;
    *(v32 + 48) = v42;
    *(v32 + 56) = v53;
    v46 = *(v0 + 170);
    *(v32 + 60) = *(v0 + 173);
    *(v32 + 57) = v46;
    *(v32 + 64) = v54;
    *(v32 + 80) = v55;
    *(v32 + 96) = v56;
    *(v32 + 104) = v57;
    swift_storeEnumTagMultiPayload();

    sub_1E5C5AD2C(v59, v0 + 72);
    v47 = *(MEMORY[0x1E6999AF0] + 4);
    v48 = swift_task_alloc();
    *(v0 + 592) = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v48 = v0;
    v48[1] = sub_1E5C55194;
    v50 = *(v0 + 408);
    v51 = *(v0 + 264);

    return MEMORY[0x1EEE01A40](v50, v49);
  }
}

uint64_t sub_1E5C558EC()
{
  v21 = v0;
  v1 = v0[68];
  v2 = v0[52];

  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v3 = v0[35];
  v4 = sub_1E5C9BD40();
  __swift_project_value_buffer(v4, qword_1ED065C70);

  v5 = v1;
  v6 = sub_1E5C9BD20();
  v7 = sub_1E5C9CDC0();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[34];
    v8 = v0[35];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_1E5C58D60(v9, v8, &v20);
    *(v10 + 22) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_1E5C20000, v6, v7, "Failed to update history with '%{private,mask.hash}s': %@", v10, 0x20u);
    sub_1E5C3177C(v11, &qword_1ED054A70, &qword_1E5CA17D0);
    MEMORY[0x1E693A130](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E693A130](v12, -1, -1);
    MEMORY[0x1E693A130](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[51];
  v16 = v0[49];
  v17 = v0[46];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E5C55B3C()
{
  v21 = v0;
  v1 = v0[70];
  v2 = v0[52];

  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v3 = v0[35];
  v4 = sub_1E5C9BD40();
  __swift_project_value_buffer(v4, qword_1ED065C70);

  v5 = v1;
  v6 = sub_1E5C9BD20();
  v7 = sub_1E5C9CDC0();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[34];
    v8 = v0[35];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_1E5C58D60(v9, v8, &v20);
    *(v10 + 22) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_1E5C20000, v6, v7, "Failed to update history with '%{private,mask.hash}s': %@", v10, 0x20u);
    sub_1E5C3177C(v11, &qword_1ED054A70, &qword_1E5CA17D0);
    MEMORY[0x1E693A130](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E693A130](v12, -1, -1);
    MEMORY[0x1E693A130](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[51];
  v16 = v0[49];
  v17 = v0[46];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E5C55D8C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for SearchAction();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  sub_1E5C9CD60();
  v2[6] = sub_1E5C9CD50();
  v6 = sub_1E5C9CD10();
  v2[7] = v6;
  v2[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5C55E54, v6, v5);
}

uint64_t sub_1E5C55E54()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v3[1];
  *v1 = *v3;
  *(v1 + 8) = v4;
  *(v1 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = *(MEMORY[0x1E6999AF0] + 4);

  v6 = swift_task_alloc();
  v0[9] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v6 = v0;
  v6[1] = sub_1E5C55F30;
  v8 = v0[5];
  v9 = v0[2];

  return MEMORY[0x1EEE01A40](v8, v7);
}

uint64_t sub_1E5C55F30()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E5C56088, v5, v4);
}

uint64_t sub_1E5C56088()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5C560F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 1328) = a5;
  *(v5 + 1320) = a4;
  *(v5 + 1312) = a3;
  *(v5 + 1304) = a2;
  *(v5 + 1296) = a1;
  *(v5 + 1217) = *a5;
  *(v5 + 1336) = *(a5 + 8);
  *(v5 + 1344) = *(a5 + 16);
  *(v5 + 1360) = *(a5 + 32);
  *(v5 + 1368) = *(a5 + 40);
  v6 = sub_1E5C9BBA0();
  *(v5 + 1384) = v6;
  v7 = *(v6 - 8);
  *(v5 + 1392) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 1400) = swift_task_alloc();
  v9 = sub_1E5C9CD20();
  *(v5 + 1408) = v9;
  v10 = *(v9 - 8);
  *(v5 + 1416) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 1424) = swift_task_alloc();
  v12 = type metadata accessor for SearchAction();
  *(v5 + 1432) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v5 + 1440) = swift_task_alloc();
  sub_1E5C9CD60();
  *(v5 + 1448) = sub_1E5C9CD50();
  v15 = sub_1E5C9CD10();
  *(v5 + 1456) = v15;
  *(v5 + 1464) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1E5C562B4, v15, v14);
}

uint64_t sub_1E5C562B4()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v4 = swift_allocObject();
  *(v0 + 1472) = v4;
  v5 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v5;
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  *(v4 + 80) = *(v1 + 64);
  *(v4 + 96) = v8;
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  v9 = *(v1 + 96);
  v10 = *(v1 + 112);
  v11 = *(v1 + 144);
  *(v4 + 144) = *(v1 + 128);
  *(v4 + 160) = v11;
  *(v4 + 112) = v9;
  *(v4 + 128) = v10;
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 208);
  *(v4 + 208) = *(v1 + 192);
  *(v4 + 224) = v14;
  *(v4 + 176) = v12;
  *(v4 + 192) = v13;
  *(v4 + 240) = v3;
  *(v4 + 248) = v2;
  swift_bridgeObjectRetain_n();
  sub_1E5C593F4(v1, v0 + 696);
  swift_asyncLet_begin();
  v15 = *(v1 + 80);
  v16 = *(v1 + 88);
  *(v0 + 1192) = v3;
  *(v0 + 1200) = v2;
  *(v0 + 1208) = 258;
  v20 = (v15 + *v15);
  v17 = v15[1];
  v18 = swift_task_alloc();
  *(v0 + 1480) = v18;
  *v18 = v0;
  v18[1] = sub_1E5C56474;

  return v20(v0 + 920, v0 + 1192);
}

uint64_t sub_1E5C56474()
{
  v2 = *v1;
  v3 = *(*v1 + 1480);
  v9 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v4 = v2[183];
    v5 = v2[182];
    v6 = sub_1E5C56DF4;
  }

  else
  {
    v7 = v2[164];

    v4 = v2[183];
    v5 = v2[182];
    v6 = sub_1E5C56598;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E5C56598()
{
  v1 = *(v0 + 1488);
  *(v0 + 1496) = *(v0 + 920);
  *(v0 + 1504) = *(v0 + 928);
  *(v0 + 1512) = *(v0 + 936);
  *(v0 + 1520) = *(v0 + 944);
  *(v0 + 1528) = *(v0 + 952);
  *(v0 + 1536) = *(v0 + 960);
  *(v0 + 1544) = *(v0 + 968);
  sub_1E5C9CD90();
  *(v0 + 1552) = v1;
  if (v1)
  {

    return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1112, sub_1E5C57408, v0 + 976);
  }

  else
  {
    v2 = *(v0 + 1328);
    *(v0 + 1218) = *v2;
    *(v0 + 1224) = *(v2 + 8);
    *(v0 + 1240) = *(v2 + 24);
    *(v0 + 1560) = *(v0 + 1224);
    *(v0 + 1576) = *(v0 + 1240);
    *(v0 + 1584) = *(v0 + 1248);
    sub_1E5C5AD88(v0 + 1224, v0 + 1256);
    sub_1E5C5AD88(v0 + 1240, v0 + 1272);

    return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1112, sub_1E5C56714, v0 + 1072);
  }
}

uint64_t sub_1E5C56714()
{
  if (v0)
  {

    v2 = *(v1 + 1464);
    v3 = *(v1 + 1456);
    v4 = sub_1E5C568EC;
  }

  else
  {
    v2 = *(v1 + 1464);
    v3 = *(v1 + 1456);
    v4 = sub_1E5C56798;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5C56798()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 1136);
  v5 = *(v0 + 1144);
  v6 = *(v0 + 1584);
  v7 = *(v0 + 1576);
  v8 = *(v0 + 1560);
  v9 = *(v0 + 1218);
  v10 = *(v0 + 1528);
  v11 = *(v0 + 1512);
  v12 = *(v0 + 1504);
  v13 = *(v0 + 1496);
  v14 = *(v0 + 1440);
  v15 = *(v0 + 1432);
  v16 = *(v0 + 1536);
  *v14 = v13;
  *(v14 + 8) = v12;
  *(v14 + 16) = v11;
  *(v14 + 32) = v10;
  *(v14 + 40) = v16;
  *(v14 + 56) = v1;
  *(v14 + 64) = v2;
  *(v14 + 72) = v3;
  *(v14 + 80) = v4;
  *(v14 + 88) = v5;
  *(v14 + 96) = v9;
  *(v14 + 104) = v8;
  *(v14 + 120) = v7;
  *(v14 + 128) = v6;
  *(v14 + 136) = v13;
  *(v14 + 144) = v12;

  swift_storeEnumTagMultiPayload();
  v17 = *(MEMORY[0x1E6999AF0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 1592) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v18 = v0;
  v18[1] = sub_1E5C56A24;
  v20 = *(v0 + 1440);
  v21 = *(v0 + 1296);

  return MEMORY[0x1EEE01A40](v20, v19);
}

uint64_t sub_1E5C568EC()
{
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1560);
  v6 = *(v0 + 1218);
  v7 = *(v0 + 1528);
  v8 = *(v0 + 1512);
  v9 = *(v0 + 1504);
  v10 = *(v0 + 1496);
  v11 = *(v0 + 1440);
  v12 = *(v0 + 1432);
  v13 = *(v0 + 1536);
  *v11 = v10;
  *(v11 + 8) = v9;
  *(v11 + 16) = v8;
  *(v11 + 32) = v7;
  *(v11 + 40) = v13;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = MEMORY[0x1E69E7CC0];
  *(v11 + 80) = v2;
  *(v11 + 88) = v1;
  *(v11 + 96) = v6;
  *(v11 + 104) = v5;
  *(v11 + 120) = v4;
  *(v11 + 128) = v3;
  *(v11 + 136) = v10;
  *(v11 + 144) = v9;

  swift_storeEnumTagMultiPayload();
  v14 = *(MEMORY[0x1E6999AF0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 1592) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v15 = v0;
  v15[1] = sub_1E5C56A24;
  v17 = *(v0 + 1440);
  v18 = *(v0 + 1296);

  return MEMORY[0x1EEE01A40](v17, v16);
}

uint64_t sub_1E5C56A24()
{
  v1 = *v0;
  v2 = *(*v0 + 1592);
  v3 = *(*v0 + 1440);
  v5 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);

  return MEMORY[0x1EEE6DEB0](v1 + 16, v1 + 1112, sub_1E5C56B54, v1 + 1152);
}

uint64_t sub_1E5C56B70()
{
  v1 = v0[184];
  v2 = v0[181];

  v3 = v0[180];
  v4 = v0[178];
  v5 = v0[175];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5C56C00()
{
  v1 = *v0;
  v2 = *(*v0 + 1608);
  v3 = *(*v0 + 1440);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 1464);
  v5 = *(v1 + 1456);

  return MEMORY[0x1EEE6DFA0](sub_1E5C56D58, v5, v4);
}

uint64_t sub_1E5C56D58()
{
  v1 = v0[200];
  v2 = v0[184];
  v3 = v0[181];

  v4 = v0[180];
  v5 = v0[178];
  v6 = v0[175];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E5C56DF4()
{
  v1 = *(v0 + 1312);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1112, sub_1E5C56E60, v0 + 656);
}

uint64_t sub_1E5C56E7C()
{
  v55 = v0;
  v1 = *(v0 + 1488);
  *(v0 + 1600) = v1;
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  *(v0 + 1288) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1448);

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 1312);
    v7 = sub_1E5C9BD40();
    __swift_project_value_buffer(v7, qword_1ED065C70);

    v8 = sub_1E5C9BD20();
    v9 = sub_1E5C9CDB0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 1312);
      v11 = *(v0 + 1304);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v54 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_1E5C58D60(v11, v10, &v54);
      _os_log_impl(&dword_1E5C20000, v8, v9, "[Cancellation] Incremental results for %{private,mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E693A130](v13, -1, -1);
      MEMORY[0x1E693A130](v12, -1, -1);
    }

    v14 = *(v0 + 1472);
    (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));

    v15 = *(v0 + 1440);
    v16 = *(v0 + 1424);
    v17 = *(v0 + 1400);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1312);
    v21 = sub_1E5C9BD40();
    __swift_project_value_buffer(v21, qword_1ED065C70);

    v22 = v1;
    v23 = sub_1E5C9BD20();
    v24 = sub_1E5C9CDC0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 1312);
      v26 = *(v0 + 1304);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v27 = 141558531;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      *(v27 + 14) = sub_1E5C58D60(v26, v25, &v54);
      *(v27 + 22) = 2112;
      v30 = v1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 24) = v31;
      *v28 = v31;
      _os_log_impl(&dword_1E5C20000, v23, v24, "Failed to fetch incremental results for %{private,mask.hash}s: %@", v27, 0x20u);
      sub_1E5C3177C(v28, &qword_1ED054A70, &qword_1E5CA17D0);
      MEMORY[0x1E693A130](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E693A130](v29, -1, -1);
      MEMORY[0x1E693A130](v27, -1, -1);
    }

    v32 = *(v0 + 1440);
    v33 = *(v0 + 1400);
    v34 = *(v0 + 1392);
    v35 = *(v0 + 1384);
    v51 = *(v0 + 1376);
    v52 = *(v0 + 1432);
    v50 = *(v0 + 1368);
    v48 = *(v0 + 1336);
    v49 = *(v0 + 1352);
    v47 = *(v0 + 1217);
    v53 = *(v0 + 1328);
    v36 = *(v0 + 1312);
    v37 = *(v0 + 1304);
    sub_1E5C9BB90();
    v38 = sub_1E5C9BB70();
    v40 = v39;
    (*(v34 + 8))(v33, v35);
    *v32 = v38;
    *(v32 + 8) = v40;
    v41 = MEMORY[0x1E69E7CC0];
    *(v32 + 16) = MEMORY[0x1E69E7CC0];
    *(v32 + 24) = v37;
    *(v32 + 32) = v36;
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = v41;
    *(v32 + 80) = v37;
    *(v32 + 88) = v36;
    *(v32 + 96) = v47;
    LODWORD(v41) = *(v0 + 1210);
    *(v32 + 100) = *(v0 + 1213);
    *(v32 + 97) = v41;
    *(v32 + 104) = v48;
    *(v32 + 120) = v49;
    *(v32 + 136) = v50;
    *(v32 + 144) = v51;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    sub_1E5C5AD2C(v53, v0 + 1016);
    v42 = *(MEMORY[0x1E6999AF0] + 4);
    v43 = swift_task_alloc();
    *(v0 + 1608) = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v43 = v0;
    v43[1] = sub_1E5C56C00;
    v45 = *(v0 + 1440);
    v46 = *(v0 + 1296);

    return MEMORY[0x1EEE01A40](v45, v44);
  }
}

uint64_t sub_1E5C57424()
{
  v55 = v0;
  v1 = *(v0 + 1552);
  *(v0 + 1600) = v1;
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  *(v0 + 1288) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 1448);

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 1312);
    v7 = sub_1E5C9BD40();
    __swift_project_value_buffer(v7, qword_1ED065C70);

    v8 = sub_1E5C9BD20();
    v9 = sub_1E5C9CDB0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 1312);
      v11 = *(v0 + 1304);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v54 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_1E5C58D60(v11, v10, &v54);
      _os_log_impl(&dword_1E5C20000, v8, v9, "[Cancellation] Incremental results for %{private,mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E693A130](v13, -1, -1);
      MEMORY[0x1E693A130](v12, -1, -1);
    }

    v14 = *(v0 + 1472);
    (*(*(v0 + 1416) + 8))(*(v0 + 1424), *(v0 + 1408));

    v15 = *(v0 + 1440);
    v16 = *(v0 + 1424);
    v17 = *(v0 + 1400);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 1312);
    v21 = sub_1E5C9BD40();
    __swift_project_value_buffer(v21, qword_1ED065C70);

    v22 = v1;
    v23 = sub_1E5C9BD20();
    v24 = sub_1E5C9CDC0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 1312);
      v26 = *(v0 + 1304);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v27 = 141558531;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      *(v27 + 14) = sub_1E5C58D60(v26, v25, &v54);
      *(v27 + 22) = 2112;
      v30 = v1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 24) = v31;
      *v28 = v31;
      _os_log_impl(&dword_1E5C20000, v23, v24, "Failed to fetch incremental results for %{private,mask.hash}s: %@", v27, 0x20u);
      sub_1E5C3177C(v28, &qword_1ED054A70, &qword_1E5CA17D0);
      MEMORY[0x1E693A130](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E693A130](v29, -1, -1);
      MEMORY[0x1E693A130](v27, -1, -1);
    }

    v32 = *(v0 + 1440);
    v33 = *(v0 + 1400);
    v34 = *(v0 + 1392);
    v35 = *(v0 + 1384);
    v51 = *(v0 + 1376);
    v52 = *(v0 + 1432);
    v50 = *(v0 + 1368);
    v48 = *(v0 + 1336);
    v49 = *(v0 + 1352);
    v47 = *(v0 + 1217);
    v53 = *(v0 + 1328);
    v36 = *(v0 + 1312);
    v37 = *(v0 + 1304);
    sub_1E5C9BB90();
    v38 = sub_1E5C9BB70();
    v40 = v39;
    (*(v34 + 8))(v33, v35);
    *v32 = v38;
    *(v32 + 8) = v40;
    v41 = MEMORY[0x1E69E7CC0];
    *(v32 + 16) = MEMORY[0x1E69E7CC0];
    *(v32 + 24) = v37;
    *(v32 + 32) = v36;
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = v41;
    *(v32 + 80) = v37;
    *(v32 + 88) = v36;
    *(v32 + 96) = v47;
    LODWORD(v41) = *(v0 + 1210);
    *(v32 + 100) = *(v0 + 1213);
    *(v32 + 97) = v41;
    *(v32 + 104) = v48;
    *(v32 + 120) = v49;
    *(v32 + 136) = v50;
    *(v32 + 144) = v51;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    sub_1E5C5AD2C(v53, v0 + 1016);
    v42 = *(MEMORY[0x1E6999AF0] + 4);
    v43 = swift_task_alloc();
    *(v0 + 1608) = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v43 = v0;
    v43[1] = sub_1E5C56C00;
    v45 = *(v0 + 1440);
    v46 = *(v0 + 1296);

    return MEMORY[0x1EEE01A40](v45, v44);
  }
}

uint64_t sub_1E5C579B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 104);
  v12 = (*(a2 + 96) + **(a2 + 96));
  v9 = *(*(a2 + 96) + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5C4DFC4;

  return v12(a1, a3, a4);
}

uint64_t sub_1E5C57AC0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for SearchAction();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B08, &qword_1E5CA1CF8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1E5C9CE00();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_1E5C9CD60();
  v2[12] = sub_1E5C9CD50();
  v10 = sub_1E5C9CD10();
  v2[13] = v10;
  v2[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5C57C20, v10, v9);
}

uint64_t sub_1E5C57C20()
{
  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5C9BD40();
  __swift_project_value_buffer(v1, qword_1ED065C70);
  v2 = sub_1E5C9BD20();
  v3 = sub_1E5C9CDB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5C20000, v2, v3, "[Dictation] Dictation monitoring", v4, 2u);
    MEMORY[0x1E693A130](v4, -1, -1);
  }

  v5 = *(v0 + 32);

  v6 = *(v5 + 152);
  v10 = (*(v5 + 144) + **(v5 + 144));
  v7 = *(*(v5 + 144) + 4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1E5C57DC8;

  return v10();
}

uint64_t sub_1E5C57DC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E5C57EF0, v5, v4);
}

uint64_t sub_1E5C57EF0()
{
  v1 = v0[16];
  v2 = v0[10];
  sub_1E5C9CDF0();
  v3 = v0[11];
  v0[17] = sub_1E5C9CD50();
  v4 = sub_1E5C5AEF0(&qword_1ED054B10, MEMORY[0x1E6969EF8]);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1E5C57FE0;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E5C57FE0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E5C9CD10();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1E5C58368;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E5C9CD10();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1E5C58178;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1E5C58178()
{
  v1 = v0[17];

  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1E5C581DC, v2, v3);
}

uint64_t sub_1E5C581DC()
{
  v1 = v0[7];
  v2 = sub_1E5C9BA40();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[12];
    v4 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    swift_storeEnumTagMultiPayload();
    v9 = *(MEMORY[0x1E6999AF0] + 4);
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v10 = v0;
    v10[1] = sub_1E5C583F4;
    v12 = v0[6];
    v13 = v0[3];

    return MEMORY[0x1EEE01A40](v12, v11);
  }
}

uint64_t sub_1E5C58368()
{
  *(v0 + 16) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1E5C583F4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 48);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E5C5854C, v5, v4);
}

uint64_t sub_1E5C5854C()
{
  sub_1E5C3177C(v0[7], &qword_1ED054B08, &qword_1E5CA1CF8);
  v1 = v0[11];
  v0[17] = sub_1E5C9CD50();
  v2 = sub_1E5C5AEF0(&qword_1ED054B10, MEMORY[0x1E6969EF8]);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1E5C57FE0;
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  return MEMORY[0x1EEE6D8C8](v6, v7, v2);
}

uint64_t sub_1E5C58648(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SearchAction();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_1E5C9CD60();
  v2[6] = sub_1E5C9CD50();
  v6 = *(a2 + 56);
  v10 = (*(a2 + 48) + **(a2 + 48));
  v7 = *(*(a2 + 48) + 4);
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1E5C58784;

  return v10();
}

uint64_t sub_1E5C58784(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;
  v5[8] = v1;

  v8 = v5[6];
  v9 = v5[5];
  if (v3)
  {
    v10 = sub_1E5C9CD10();
    v12 = v11;
    v13 = sub_1E5C58BA0;
    v14 = v10;
    v15 = v12;
  }

  else
  {
    v5[9] = a1;
    v16 = sub_1E5C9CD10();
    v15 = v17;
    v5[10] = v16;
    v5[11] = v17;
    v13 = sub_1E5C58914;
    v14 = v16;
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E5C58914()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = *(v0 + 72);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v3 = v0;
  v3[1] = sub_1E5C589DC;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5C589DC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5C5A9F4(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E5C58B34, v5, v4);
}

uint64_t sub_1E5C58B34()
{
  v1 = v0[6];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5C58BA0()
{
  v1 = v0[6];

  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = sub_1E5C9BD40();
  __swift_project_value_buffer(v3, qword_1ED065C70);
  v4 = v2;
  v5 = sub_1E5C9BD20();
  v6 = sub_1E5C9CDC0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5C20000, v5, v6, "Failed to fetch history: %@", v9, 0xCu);
    sub_1E5C3177C(v10, &qword_1ED054A70, &qword_1E5CA17D0);
    MEMORY[0x1E693A130](v10, -1, -1);
    MEMORY[0x1E693A130](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E5C58D60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5C58E2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5C5ADE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5C58E2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5C58F38(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E5C9CEA0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1E5C58F38(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E5C58F84(a1, a2);
  sub_1E5C590B4(&unk_1F5F7C4B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E5C58F84(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5C591A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E5C9CEA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E5C9CC90();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5C591A0(v10, 0);
        result = sub_1E5C9CE50();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5C590B4(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1E5C59214(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E5C591A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B00, &qword_1E5CA1CE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5C59214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B00, &qword_1E5CA1CE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1E5C59308()
{
  result = qword_1ED054AE8;
  if (!qword_1ED054AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AE8);
  }

  return result;
}

uint64_t sub_1E5C5935C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C57AC0(a1, v1 + 16);
}

uint64_t sub_1E5C5942C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C58648(a1, v1 + 16);
}

uint64_t sub_1E5C594C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5C4E86C;

  return sub_1E5C560F4(a1, v4, v5, v1 + 32, v1 + 256);
}

uint64_t sub_1E5C595C8(void **a1)
{
  v2 = *(type metadata accessor for SearchHistoryItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E5C67628(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E5C59670(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E5C59670(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5C9D040();
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
        type metadata accessor for SearchHistoryItem();
        v6 = sub_1E5C9CCF0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SearchHistoryItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E5C59A00(v8, v9, a1, v4);
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
    return sub_1E5C5979C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E5C5979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SearchHistoryItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1E5C426C4(v24, v18, type metadata accessor for SearchHistoryItem);
      sub_1E5C426C4(v21, v14, type metadata accessor for SearchHistoryItem);
      v25 = *(v8 + 20);
      v26 = sub_1E5C9BB40();
      sub_1E5C5A9F4(v14, type metadata accessor for SearchHistoryItem);
      result = sub_1E5C5A9F4(v18, type metadata accessor for SearchHistoryItem);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1E5C5A8B4(v24, v37, type metadata accessor for SearchHistoryItem);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1E5C5A8B4(v27, v21, type metadata accessor for SearchHistoryItem);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C59A00(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for SearchHistoryItem();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1E5C5A364(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1E5C66EC8(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_1E5C66E3C(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_1E5C66EC8(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1E5C426C4(v114 + v25 * v24, v19, type metadata accessor for SearchHistoryItem);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1E5C426C4(v27, v120, type metadata accessor for SearchHistoryItem);
      v30 = *(v9 + 20);
      LODWORD(v115) = sub_1E5C9BB40();
      sub_1E5C5A9F4(v29, type metadata accessor for SearchHistoryItem);
      result = sub_1E5C5A9F4(v19, type metadata accessor for SearchHistoryItem);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1E5C426C4(v32, v19, type metadata accessor for SearchHistoryItem);
        v33 = v120;
        sub_1E5C426C4(v5, v120, type metadata accessor for SearchHistoryItem);
        v34 = *(v121 + 20);
        v35 = sub_1E5C9BB40() & 1;
        sub_1E5C5A9F4(v33, type metadata accessor for SearchHistoryItem);
        result = sub_1E5C5A9F4(v19, type metadata accessor for SearchHistoryItem);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1E5C5A8B4(v42 + v41, v111, type metadata accessor for SearchHistoryItem);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1E5C5A8B4(v111, v42 + v36, type metadata accessor for SearchHistoryItem);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1E5C426C4(v5, v19, type metadata accessor for SearchHistoryItem);
    v96 = v120;
    sub_1E5C426C4(v93, v120, type metadata accessor for SearchHistoryItem);
    v97 = *(v9 + 20);
    a4 = sub_1E5C9BB40();
    sub_1E5C5A9F4(v96, type metadata accessor for SearchHistoryItem);
    result = sub_1E5C5A9F4(v19, type metadata accessor for SearchHistoryItem);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_1E5C4E4D0(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_1E5C4E4D0((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1E5C5A364(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1E5C66EC8(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_1E5C66E3C(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for SearchHistoryItem;
    v98 = v119;
    sub_1E5C5A8B4(v5, v119, type metadata accessor for SearchHistoryItem);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1E5C5A8B4(v98, v93, type metadata accessor for SearchHistoryItem);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1E5C5A364(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for SearchHistoryItem();
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1E5C426C4(v33, v47, type metadata accessor for SearchHistoryItem);
          v35 = v48;
          sub_1E5C426C4(v29, v48, type metadata accessor for SearchHistoryItem);
          v36 = *(v31 + 20);
          v37 = sub_1E5C9BB40();
          sub_1E5C5A9F4(v35, type metadata accessor for SearchHistoryItem);
          sub_1E5C5A9F4(v34, type metadata accessor for SearchHistoryItem);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1E5C426C4(a2, v47, type metadata accessor for SearchHistoryItem);
        v22 = v48;
        sub_1E5C426C4(a4, v48, type metadata accessor for SearchHistoryItem);
        v23 = *(v49 + 20);
        v24 = sub_1E5C9BB40();
        sub_1E5C5A9F4(v22, type metadata accessor for SearchHistoryItem);
        sub_1E5C5A9F4(v21, type metadata accessor for SearchHistoryItem);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_1E5C66EDC(&v52, &v51, &v50);
  return 1;
}

char *sub_1E5C5A894(char *a1, int64_t a2, char a3)
{
  result = sub_1E5C67314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E5C5A8B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C5A91C(uint64_t a1)
{
  v4 = *(type metadata accessor for SearchHistoryItem() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5C4E86C;

  return sub_1E5C55D8C(a1, v1 + v5);
}

uint64_t sub_1E5C5A9F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5C5AA54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5C4E86C;

  return sub_1E5C53E84(a1, v4, v5, v6, v1 + 40, v1 + 264);
}

uint64_t sub_1E5C5AB14(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4DFC4;

  return sub_1E5C538E4(a1, v1 + 16);
}

uint64_t sub_1E5C5ABAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C53424(a1, v1 + 16);
}

uint64_t sub_1E5C5ADE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E5C5AE40(uint64_t a1)
{
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5C4E86C;

  return sub_1E5C579B0(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5C5AEF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchAction.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SearchHint();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchHistoryItem();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SearchAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5C5B8FC(v1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6F69746174636964;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v35 = *v13;
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      v67[0] = 0xD000000000000016;
      v67[1] = 0x80000001E5CA8040;
      v36 = *(v35 + 16);

      v66 = v36;
      v17 = sub_1E5C9D050();
      goto LABEL_16;
    case 2:
      v37 = *v13;
      v38 = v13[1];
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      v67[0] = 0xD000000000000010;
      v67[1] = 0x80000001E5CA8020;
      MEMORY[0x1E6939590](v37, v38);
      goto LABEL_30;
    case 3:
      v20 = v13[1];
      v21 = v13[2];
      v23 = v13[3];
      v22 = v13[4];
      v24 = v13[6];
      v25 = v13[9];
      v65 = v13[8];
      v26 = v13[11];
      v27 = v13[14];
      v28 = v13[16];
      v29 = v13[18];

      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();
      MEMORY[0x1E6939590](0xD00000000000001ALL, 0x80000001E5CA8000);

      MEMORY[0x1E6939590](v23, v22);

      MEMORY[0x1E6939590](0x7365706F6373202CLL, 0xE90000000000003ALL);
      v66 = *(v21 + 16);
      v30 = sub_1E5C9D050();
      MEMORY[0x1E6939590](v30);

      MEMORY[0x1E6939590](0x7365676775732029, 0xEE003A736E6F6974);
      v66 = *(v25 + 16);
      v31 = sub_1E5C9D050();
      MEMORY[0x1E6939590](v31);

      goto LABEL_28;
    case 4:
      v48 = *v13;
      v49 = v13[1];
      v50 = *(v13 + 16);
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();
      MEMORY[0x1E6939590](0x6275537972657571, 0xEF2864657474696DLL);
      MEMORY[0x1E6939590](v48, v49);

      MEMORY[0x1E6939590](8236, 0xE200000000000000);
      LOBYTE(v66) = v50;
      sub_1E5C9CEB0();
      goto LABEL_31;
    case 5:
      sub_1E5C5A8B4(v13, v9, type metadata accessor for SearchHistoryItem);
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      v67[0] = 0xD000000000000014;
      v67[1] = 0x80000001E5CA7FE0;
      MEMORY[0x1E6939590](*v9, v9[1]);
      MEMORY[0x1E6939590](41, 0xE100000000000000);
      v32 = v67[0];
      v33 = v9;
      v34 = type metadata accessor for SearchHistoryItem;
      goto LABEL_25;
    case 6:
      v39 = v13[1];
      v40 = v13[2];
      v42 = v13[3];
      v41 = v13[4];
      v43 = v13[6];
      v44 = v13[9];
      v45 = v13[11];
      v46 = v13[13];

      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      v67[0] = 0xD000000000000016;
      v67[1] = 0x80000001E5CA7FC0;

      MEMORY[0x1E6939590](v42, v41);

      MEMORY[0x1E6939590](0x7365706F6373202CLL, 0xE90000000000003ALL);
      v66 = *(v40 + 16);
      v47 = sub_1E5C9D050();
      MEMORY[0x1E6939590](v47);

      goto LABEL_30;
    case 7:
      v59 = v13[1];
      v60 = v13[3];
      v62 = v13[5];
      v61 = v13[6];
      v63 = v13[7];
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      strcpy(v67, "scopeSelected(");
      HIBYTE(v67[1]) = -18;

      MEMORY[0x1E6939590](v62, v61);

      MEMORY[0x1E6939590](0x3A746E756F63202CLL, 0xE800000000000000);
      v66 = *(v63 + 16);
      v64 = sub_1E5C9D050();
      MEMORY[0x1E6939590](v64);

      goto LABEL_30;
    case 8:
      sub_1E5C5A8B4(v13, v5, type metadata accessor for SearchHint);
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      v67[0] = 0xD000000000000013;
      v67[1] = 0x80000001E5CA7FA0;
      MEMORY[0x1E6939590](*&v5[*(v2 + 24)], *&v5[*(v2 + 24) + 8]);
      MEMORY[0x1E6939590](41, 0xE100000000000000);
      v32 = v67[0];
      v33 = v5;
      v34 = type metadata accessor for SearchHint;
LABEL_25:
      sub_1E5C5B960(v33, v34);
      return v32;
    case 9:
      v51 = v13[1];
      v52 = v13[2];
      v54 = v13[3];
      v53 = v13[4];
      v55 = v13[7];
      v56 = v13[9];
      v57 = v13[11];

      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      v67[0] = 0xD00000000000001ALL;
      v67[1] = 0x80000001E5CA7F80;

      MEMORY[0x1E6939590](v54, v53);

      MEMORY[0x1E6939590](0x746E756F63202C29, 0xE90000000000003ALL);
      v66 = *(v52 + 16);
      v58 = sub_1E5C9D050();
      MEMORY[0x1E6939590](v58);

LABEL_28:

      return v67[0];
    case 10:
      v17 = *v13;
      v18 = v13[1];
      strcpy(v67, "textChanged(");
      BYTE5(v67[1]) = 0;
      HIWORD(v67[1]) = -5120;
      goto LABEL_11;
    case 11:
      return 0xD000000000000012;
    case 12:
      return 0xD000000000000011;
    case 13:
      return result;
    case 14:
      return 0xD00000000000001BLL;
    case 15:
      return 0xD000000000000018;
    case 16:
      return 0x61684365706F6373;
    case 17:
      return 0x4164694477656976;
    case 18:
      return 0xD000000000000010;
    default:
      v16 = *v13;
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_1E5C9CE60();

      v67[0] = 0x4364657375636F66;
      v67[1] = 0xEF286465676E6168;
      if (v16)
      {
        v17 = 1702195828;
      }

      else
      {
        v17 = 0x65736C6166;
      }

      if (v16)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE500000000000000;
      }

LABEL_11:
      v19 = v18;
LABEL_16:
      MEMORY[0x1E6939590](v17, v19);
LABEL_30:

LABEL_31:
      MEMORY[0x1E6939590](41, 0xE100000000000000);
      return v67[0];
  }
}

uint64_t sub_1E5C5B8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C5B960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5C5B9C4()
{
  v0 = sub_1E5C9BD40();
  __swift_allocate_value_buffer(v0, qword_1ED054B18);
  v1 = __swift_project_value_buffer(v0, qword_1ED054B18);
  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED065C70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SearchFeature.searchLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED053E08 != -1)
  {
    swift_once();
  }

  v2 = sub_1E5C9BD40();
  v3 = __swift_project_value_buffer(v2, qword_1ED054B18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

__n128 SearchFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

uint64_t sub_1E5C5BB70(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v17 = *v2;
  v18 = v4;
  v5 = v2[3];
  v19 = v2[2];
  v20 = v5;
  v21 = *(v2 + 64);
  if (v21)
  {
    v6 = v19;
    v7 = *(&v20 + 1);
    if (v21 == 1)
    {
      MEMORY[0x1E69399F0](12);
      if (*(&v18 + 1))
      {
        sub_1E5C9D0F0();
        sub_1E5C9D0F0();
        v8 = v2[3];
        v15[2] = v2[2];
        v15[3] = v8;
        v16 = *(v2 + 64);
        v9 = v2[1];
        v15[0] = *v2;
        v15[1] = v9;
        if (*(&v17 + 1))
        {
          sub_1E5C31EF0(v15, v14);
          sub_1E5C9CC60();
        }

        else
        {
          sub_1E5C31EF0(v15, v14);
        }

        sub_1E5C9CC60();
        MEMORY[0x1E69399F0](v6);
        sub_1E5C9CC60();
        sub_1E5C2A6D0(a1, v7);
        return sub_1E5C675F8(&v17);
      }

      else
      {
        return sub_1E5C9D0F0();
      }
    }

    else
    {
      v11 = v19 | *(&v19 + 1) | v20;
      if (v18 | *(&v17 + 1) | v17 | *(&v18 + 1) | v11 | *(&v20 + 1))
      {
        v12 = v18 | *(&v17 + 1) | *(&v18 + 1) | v11 | *(&v20 + 1);
        if (v17 != 1 || v12)
        {
          if (v17 != 2 || v12)
          {
            if (v17 != 3 || v12)
            {
              if (v17 != 4 || v12)
              {
                if (v17 != 5 || v12)
                {
                  if (v17 != 6 || v12)
                  {
                    if (v17 != 7 || v12)
                    {
                      if (v17 != 8 || v12)
                      {
                        if (v17 != 9 || v12)
                        {
                          if (v17 != 10 || v12)
                          {
                            v13 = 13;
                          }

                          else
                          {
                            v13 = 11;
                          }
                        }

                        else
                        {
                          v13 = 10;
                        }
                      }

                      else
                      {
                        v13 = 9;
                      }
                    }

                    else
                    {
                      v13 = 8;
                    }
                  }

                  else
                  {
                    v13 = 7;
                  }
                }

                else
                {
                  v13 = 5;
                }
              }

              else
              {
                v13 = 4;
              }
            }

            else
            {
              v13 = 3;
            }
          }

          else
          {
            v13 = 2;
          }
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 0;
      }

      return MEMORY[0x1E69399F0](v13);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](6);

    return sub_1E5C9CC60();
  }
}

uint64_t sub_1E5C5BE08()
{
  sub_1E5C9D0D0();
  sub_1E5C5BB70(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C5BE4C()
{
  sub_1E5C9D0D0();
  sub_1E5C5BB70(v1);
  return sub_1E5C9D110();
}

void SearchFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v560 = a3;
  v564 = a2;
  *&v559 = a1;
  v549 = type metadata accessor for SearchHint();
  v6 = *(*(v549 - 8) + 64);
  MEMORY[0x1EEE9AC00](v549);
  v551 = (v543 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SearchHistoryItem();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v550 = v543 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v562 = type metadata accessor for SearchState();
  v11 = *(*(v562 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v562);
  v546 = v543 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v543 - v14;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A60, &qword_1E5CA17C0);
  *&v561 = *(v563 - 8);
  v16 = *(v561 + 64);
  v17 = MEMORY[0x1EEE9AC00](v563);
  v557 = v543 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v554 = v543 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v556 = v543 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v555 = v543 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v552 = v543 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v544 = v543 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v545 = v543 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v543 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v553 = v543 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = v543 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v548 = v543 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v547 = v543 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = v543 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = v543 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = v543 - v49;
  v51 = type metadata accessor for SearchAction();
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51);
  *&v558 = v543 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v56 = v543 - v55;
  v57 = v4[11];
  v596 = v4[10];
  v597 = v57;
  v58 = v4[13];
  v598 = v4[12];
  v599 = v58;
  v59 = v4[7];
  v592 = v4[6];
  v593 = v59;
  v60 = v4[9];
  v594 = v4[8];
  v595 = v60;
  v61 = v4[3];
  v588 = v4[2];
  v589 = v61;
  v62 = v4[5];
  v590 = v4[4];
  v591 = v62;
  v63 = v4[1];
  v586 = *v4;
  v587 = v63;
  v64 = a4;
  v66 = v65;
  sub_1E5C67C9C(v64, v543 - v55, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v142 = *v56;
      *&v575[0] = v142;

      sub_1E5C65B70(v575);
      v143 = *&v575[0];
      v144 = *(v562 + 44);
      v145 = v564;
      v146 = *(v564 + v144);

      *(v145 + v144) = v143;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v147 = sub_1E5C9BD40();
      __swift_project_value_buffer(v147, qword_1ED065C70);

      v148 = sub_1E5C9BD20();
      v149 = sub_1E5C9CDE0();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = 134217984;
        v151 = *(v142 + 16);

        *(v150 + 4) = v151;

        _os_log_impl(&dword_1E5C20000, v148, v149, "[History] Fetched %ld.", v150, 0xCu);
        v152 = v150;
        goto LABEL_106;
      }

      swift_bridgeObjectRelease_n();
      return;
    case 2u:
      v176 = *v56;
      v175 = *(v56 + 1);
      v177 = HIBYTE(v175) & 0xF;
      if ((v175 & 0x2000000000000000) == 0)
      {
        v177 = *v56 & 0xFFFFFFFFFFFFLL;
      }

      if (!v177)
      {
        goto LABEL_181;
      }

      v178 = v564;
      *(v564 + 49) = 1;
      v582 = v596;
      v583 = v597;
      v584 = v598;
      v585 = v599;
      v578 = v592;
      v579 = v593;
      v580 = v594;
      v581 = v595;
      v575[2] = v588;
      v575[3] = v589;
      v576 = v590;
      v577 = v591;
      v575[0] = v586;
      v575[1] = v587;
      v137 = v558;
      *v558 = v176;
      v137[1] = v175;
      *(v137 + 16) = 3;
      swift_storeEnumTagMultiPayload();
      SearchFeature.reduce(localState:sharedState:sideEffects:action:)(v559, v178, v560, v137);
      v141 = type metadata accessor for SearchAction;
      goto LABEL_78;
    case 3u:
      v102 = *(v56 + 1);
      *&v561 = *v56;
      v104 = *(v56 + 2);
      v103 = *(v56 + 3);
      v105 = *(v56 + 4);
      v556 = *(v56 + 5);
      v107 = *(v56 + 6);
      v106 = *(v56 + 7);
      v108 = *(v56 + 9);
      v547 = *(v56 + 8);
      v548 = v106;
      v109 = *(v56 + 11);
      v545 = *(v56 + 10);
      v546 = v108;
      v544 = v109;
      LODWORD(v555) = v56[96];
      v110 = *(v56 + 13);
      v553 = *(v56 + 14);
      v554 = v110;
      v111 = *(v56 + 15);
      v551 = *(v56 + 16);
      v552 = v111;
      v112 = *(v56 + 17);
      v549 = *(v56 + 18);
      v550 = v112;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v563 = v66;
      v113 = sub_1E5C9BD40();
      __swift_project_value_buffer(v113, qword_1ED065C70);

      v114 = sub_1E5C9BD20();
      v115 = sub_1E5C9CDE0();

      v557 = v102;

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *&v575[0] = v117;
        *v116 = 141558275;
        *(v116 + 4) = 1752392040;
        *(v116 + 12) = 2081;

        v118 = v103;
        v119 = sub_1E5C58D60(v103, v105, v575);

        *(v116 + 14) = v119;
        _os_log_impl(&dword_1E5C20000, v114, v115, "[Incremental] Completed '%{private,mask.hash}s'", v116, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v117);
        MEMORY[0x1E693A130](v117, -1, -1);
        MEMORY[0x1E693A130](v116, -1, -1);

        v120 = v560;
      }

      else
      {

        v120 = v560;
        v118 = v103;
      }

      v405 = v564;
      v406 = v559;
      v407 = v558;
      v408 = (v564 + *(v562 + 68));
      v409 = v408[3];
      v410 = v408[4];
      sub_1E5C30DB8(*v408, v408[1], v408[2]);
      v411 = v547;
      *v408 = v548;
      v408[1] = v411;
      v412 = v545;
      v408[2] = v546;
      v408[3] = v412;
      v408[4] = v544;
      v582 = v596;
      v583 = v597;
      v584 = v598;
      v585 = v599;
      v578 = v592;
      v579 = v593;
      v580 = v594;
      v581 = v595;
      v575[2] = v588;
      v575[3] = v589;
      v576 = v590;
      v577 = v591;
      v575[0] = v586;
      v575[1] = v587;
      v413 = v556;
      v414 = v557;
      *v407 = v561;
      *(v407 + 8) = v414;
      *(v407 + 16) = v104;
      *(v407 + 24) = v118;
      *(v407 + 32) = v105;
      *(v407 + 40) = v413;
      *(v407 + 48) = v107;
      *(v407 + 56) = v555;
      v415 = v553;
      *(v407 + 64) = v554;
      *(v407 + 72) = v415;
      v416 = v551;
      *(v407 + 80) = v552;
      *(v407 + 88) = v416;
      v417 = v549;
      *(v407 + 96) = v550;
      *(v407 + 104) = v417;
      swift_storeEnumTagMultiPayload();
      SearchFeature.reduce(localState:sharedState:sideEffects:action:)(v406, v405, v120, v407);
      v87 = type metadata accessor for SearchAction;
      v88 = v407;
      goto LABEL_109;
    case 4u:
      v212 = *v56;
      v211 = *(v56 + 1);
      v213 = v56[16];
      v214 = v564;
      sub_1E5C67C9C(v564, v15, type metadata accessor for SearchState);
      v215 = &v15[*(v562 + 52)];
      if (v215[56])
      {
        sub_1E5C66FC0(v15, type metadata accessor for SearchState);
        v216 = v561;
LABEL_60:
        v217 = v562;
        v218 = (v214 + *(v562 + 56));
        v219 = *v218;
        v220 = v218[1];
        LOBYTE(v600) = v213;
        *(&v600 + 1) = v212;
        *&v601 = v211;
        *(&v601 + 1) = v219;
        v602 = v220;
        v603 = 0;
        *v218 = v212;
        v218[1] = v211;
        v221 = v214 + *(v217 + 52);
        *(v571 + 9) = *(v221 + 41);
        v222 = *v221;
        v223 = *(v221 + 32);
        v570 = *(v221 + 16);
        v571[0] = v223;
        v569 = v222;
        swift_bridgeObjectRetain_n();
        sub_1E5C30CAC(&v569);
        *v221 = 0u;
        *(v221 + 16) = 0u;
        *(v221 + 32) = 0u;
        *(v221 + 48) = 0;
        *(v221 + 56) = 2;
        v224 = (v214 + *(v217 + 60));
        v225 = v224[1];
        v572 = *v224;
        v573 = v225;
        v226 = v224[3];
        v574[0] = v224[2];
        v574[1] = v226;
        sub_1E5C3177C(&v572, &qword_1ED053F80, &qword_1E5C9E528);
        v227 = HIBYTE(v211) & 0xF;
        *v224 = 0u;
        v224[1] = 0u;
        if ((v211 & 0x2000000000000000) == 0)
        {
          v227 = v212 & 0xFFFFFFFFFFFFLL;
        }

        v224[2] = 0uLL;
        v224[3] = 0uLL;
        if (v227)
        {
          if (qword_1ED053E00 != -1)
          {
            swift_once();
          }

          v228 = sub_1E5C9BD40();
          __swift_project_value_buffer(v228, qword_1ED065C70);

          v229 = sub_1E5C9BD20();
          v230 = sub_1E5C9CDE0();

          if (os_log_type_enabled(v229, v230))
          {
            v231 = swift_slowAlloc();
            v232 = swift_slowAlloc();
            *&v575[0] = v232;
            *v231 = 141558275;
            *(v231 + 4) = 1752392040;
            *(v231 + 12) = 2081;
            *(v231 + 14) = sub_1E5C58D60(v212, v211, v575);
            _os_log_impl(&dword_1E5C20000, v229, v230, "[Query] Submitted: '%{private,mask.hash}s'", v231, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v232);
            MEMORY[0x1E693A130](v232, -1, -1);
            MEMORY[0x1E693A130](v231, -1, -1);
          }

          v233 = *(v221 + 16);
          v566 = *v221;
          v567 = v233;
          v568[0] = *(v221 + 32);
          *(v568 + 9) = *(v221 + 41);

          sub_1E5C30CAC(&v566);
          *v221 = v212;
          *(v221 + 8) = v211;
          *(v221 + 16) = v213;
          *(v221 + 56) = 0;
          *(v575 + 8) = 0u;
          *(&v575[1] + 8) = 0u;
          *(&v575[2] + 8) = 0u;
          *&v575[0] = 4;
          *(&v575[3] + 1) = 0;
          LOBYTE(v576) = 2;
          sub_1E5C59308();
          v234 = v547;
          sub_1E5C9CE40();
          v235 = *MEMORY[0x1E6999AE8];
          v564 = *(v216 + 104);
          (v564)(v234, v235, v563);
          v236 = *v560;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v236 = sub_1E5C4E5D4(0, *(v236 + 2) + 1, 1, v236);
          }

          v238 = *(v236 + 2);
          v237 = *(v236 + 3);
          LODWORD(v559) = v213;
          if (v238 >= v237 >> 1)
          {
            v236 = sub_1E5C4E5D4(v237 > 1, v238 + 1, 1, v236);
          }

          *(v236 + 2) = v238 + 1;
          v240 = *(v216 + 32);
          v239 = v216 + 32;
          *&v558 = (*(v239 + 48) + 32) & ~*(v239 + 48);
          v557 = *(v239 + 40);
          v241 = v563;
          *&v561 = v239;
          v562 = v240;
          v240(&v236[v558 + v557 * v238], v547, v563);
          v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
          v243 = v242[16];
          v244 = v242[20];
          v555 = v242[12];
          v556 = v244;
          v245 = v548;
          v246 = &v548[v242[24]];
          *(v575 + 8) = 0u;
          *(&v575[1] + 8) = 0u;
          *(&v575[2] + 8) = 0u;
          *&v575[0] = 3;
          *(&v575[3] + 1) = 0;
          LOBYTE(v576) = 2;
          sub_1E5C9CE40();
          v247 = *MEMORY[0x1E6999B60];
          v248 = sub_1E5C9CAC0();
          (*(*(v248 - 8) + 104))(&v245[v243], v247, v248);
          v249 = swift_allocObject();
          v250 = v597;
          *(v249 + 176) = v596;
          *(v249 + 192) = v250;
          v251 = v599;
          *(v249 + 208) = v598;
          *(v249 + 224) = v251;
          v252 = v593;
          *(v249 + 112) = v592;
          *(v249 + 128) = v252;
          v253 = v595;
          *(v249 + 144) = v594;
          *(v249 + 160) = v253;
          v254 = v589;
          *(v249 + 48) = v588;
          *(v249 + 64) = v254;
          v255 = v591;
          *(v249 + 80) = v590;
          *(v249 + 96) = v255;
          v256 = v587;
          *(v249 + 16) = v586;
          *(v249 + 32) = v256;
          *(v249 + 240) = v212;
          *(v249 + 248) = v211;
          *(v249 + 256) = v559;
          v257 = v601;
          *(v249 + 264) = v600;
          *(v249 + 280) = v257;
          *(v249 + 296) = v602;
          *(v249 + 312) = v603;
          *v246 = &unk_1E5CA1DB0;
          *(v246 + 1) = v249;
          sub_1E5C65790(&v586, v575);
          sub_1E5C9CD70();
          v258 = *MEMORY[0x1E6999B48];
          v259 = sub_1E5C9CAB0();
          (*(*(v259 - 8) + 104))(&v556[v245], v258, v259);
          (v564)(v245, *MEMORY[0x1E6999AD8], v241);
          v261 = *(v236 + 2);
          v260 = *(v236 + 3);
          if (v261 >= v260 >> 1)
          {
            v236 = sub_1E5C4E5D4(v260 > 1, v261 + 1, 1, v236);
          }

          v262 = v560;
          *(v236 + 2) = v261 + 1;
          (v562)(&v236[v558 + v261 * v557], v548, v563);
          *v262 = v236;
        }

        else
        {

          sub_1E5C59574(&v600);
        }

        return;
      }

      v216 = v561;
      if (*v215 == v212 && *(v215 + 1) == v211)
      {
        sub_1E5C66FC0(v15, type metadata accessor for SearchState);
        goto LABEL_181;
      }

      v533 = sub_1E5C9D060();
      sub_1E5C66FC0(v15, type metadata accessor for SearchState);
      if ((v533 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_181:

      return;
    case 5u:
      v273 = v56;
      v137 = v550;
      sub_1E5C5A8B4(v273, v550, type metadata accessor for SearchHistoryItem);
      v582 = v596;
      v583 = v597;
      v584 = v598;
      v585 = v599;
      v578 = v592;
      v579 = v593;
      v580 = v594;
      v581 = v595;
      v575[2] = v588;
      v575[3] = v589;
      v576 = v590;
      v577 = v591;
      v575[0] = v586;
      v575[1] = v587;
      v274 = v137[1];
      v275 = v558;
      *v558 = *v137;
      *(v275 + 8) = v274;
      *(v275 + 16) = 0;
      swift_storeEnumTagMultiPayload();

      SearchFeature.reduce(localState:sharedState:sideEffects:action:)(v559, v564, v560, v275);
      sub_1E5C66FC0(v275, type metadata accessor for SearchAction);
      v141 = type metadata accessor for SearchHistoryItem;
      goto LABEL_78;
    case 6u:
      v180 = *v56;
      v179 = *(v56 + 1);
      v181 = *(v56 + 2);
      v182 = *(v56 + 3);
      v183 = *(v56 + 4);
      *&v559 = *(v56 + 5);
      v184 = *(v56 + 6);
      v185 = *(v56 + 9);
      v186 = *(v56 + 11);
      v187 = *(v56 + 13);

      v188 = (v564 + *(v562 + 56));
      v190 = *v188;
      v189 = v188[1];
      v191 = v190 & 0xFFFFFFFFFFFFLL;
      if ((v189 & 0x2000000000000000) != 0)
      {
        v192 = HIBYTE(v189) & 0xF;
      }

      else
      {
        v192 = v191;
      }

      if (v192)
      {
        v193 = v564 + *(v562 + 52);
        v194 = *(v193 + 16);
        v566 = *v193;
        v567 = v194;
        v568[0] = *(v193 + 32);
        *(v568 + 9) = *(v193 + 41);

        sub_1E5C30CAC(&v566);
        *v193 = v180;
        *(v193 + 8) = v179;
        *(v193 + 16) = v181;
        *(v193 + 24) = v182;
        v195 = v559;
        *(v193 + 32) = v183;
        *(v193 + 40) = v195;
        v563 = v184;
        *(v193 + 48) = v184;
        *(v193 + 56) = 1;
        v196 = *(v181 + 16);
        v197 = v181;
        v557 = v182;
        if (v196)
        {
          v198 = *(v181 + 48);
          v575[0] = *(v181 + 32);
          v575[1] = v198;
          v199 = *(v181 + 80);
          v575[2] = *(v181 + 64);
          v575[3] = v199;
          v560 = v575[1];
          v561 = v575[0];
          v558 = v199;
          v559 = v575[2];
          sub_1E5C2A1B8(v575, &v572);
        }

        else
        {
          v560 = 0u;
          v561 = 0u;
          v558 = 0u;
          v559 = 0u;
        }

        v499 = (v564 + *(v562 + 60));
        v500 = v499[1];
        v575[0] = *v499;
        v575[1] = v500;
        v501 = v499[3];
        v575[2] = v499[2];
        v575[3] = v501;
        sub_1E5C3177C(v575, &qword_1ED053F80, &qword_1E5C9E528);
        v502 = v560;
        *v499 = v561;
        v499[1] = v502;
        v503 = v558;
        v499[2] = v559;
        v499[3] = v503;
        if (v179)
        {
          v504 = v180;
        }

        else
        {
          v504 = 0;
        }

        v564 = v504;
        if (v179)
        {
          v505 = v179;
        }

        else
        {
          v505 = 0xE000000000000000;
        }

        v506 = *(v197 + 16);
        if (v506)
        {
          *&v559 = v505;
          *&v561 = v183;
          v565 = MEMORY[0x1E69E7CC0];
          v562 = v179;

          sub_1E5C5A894(0, v506, 0);
          v507 = v565;
          *&v560 = v197;
          v508 = (v197 + 32);
          do
          {
            v509 = *v508;
            v510 = v508[1];
            v511 = v508[3];
            v574[0] = v508[2];
            v574[1] = v511;
            v572 = v509;
            v573 = v510;
            v512 = *(&v511 + 1);
            v600 = v510;
            sub_1E5C2A1B8(&v572, &v569);

            MEMORY[0x1E6939590](58, 0xE100000000000000);
            *&v569 = *(v512 + 16);
            v513 = sub_1E5C9D050();
            MEMORY[0x1E6939590](v513);

            sub_1E5C2A1F0(&v572);
            v514 = v600;
            v565 = v507;
            v516 = *(v507 + 16);
            v515 = *(v507 + 24);
            if (v516 >= v515 >> 1)
            {
              sub_1E5C5A894((v515 > 1), v516 + 1, 1);
              v507 = v565;
            }

            *(v507 + 16) = v516 + 1;
            *(v507 + 16 * v516 + 32) = v514;
            v508 += 4;
            --v506;
          }

          while (v506);
          v183 = v561;
          v505 = v559;
        }

        else
        {

          v507 = MEMORY[0x1E69E7CC0];
        }

        if (qword_1ED053E00 != -1)
        {
          swift_once();
        }

        v517 = sub_1E5C9BD40();
        __swift_project_value_buffer(v517, qword_1ED065C70);

        v518 = sub_1E5C9BD20();
        v519 = sub_1E5C9CDE0();

        if (os_log_type_enabled(v518, v519))
        {
          v520 = swift_slowAlloc();
          v562 = swift_slowAlloc();
          *&v572 = v562;
          *v520 = 141558787;
          *(v520 + 4) = 1752392040;
          *(v520 + 12) = 2081;

          v521 = sub_1E5C58D60(v557, v183, &v572);

          *(v520 + 14) = v521;
          *(v520 + 22) = 2080;
          v522 = sub_1E5C58D60(v564, v505, &v572);

          *(v520 + 24) = v522;
          *(v520 + 32) = 2080;
          v523 = MEMORY[0x1E69395F0](v507, MEMORY[0x1E69E6158]);
          v525 = v524;

          v526 = sub_1E5C58D60(v523, v525, &v572);

          *(v520 + 34) = v526;
          _os_log_impl(&dword_1E5C20000, v518, v519, "[Results] Fetched '%{private,mask.hash}s' (%s): %s", v520, 0x2Au);
          v527 = v562;
          swift_arrayDestroy();
          MEMORY[0x1E693A130](v527, -1, -1);
          MEMORY[0x1E693A130](v520, -1, -1);
        }

        else
        {
        }

        (v588)(v528);
        return;
      }

      v418 = v562;

      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 3;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v419 = v561;
      (*(v561 + 104))(v38, *MEMORY[0x1E6999AE8], v563);
      v420 = v560;
      v421 = *v560;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v421 = sub_1E5C4E5D4(0, v421[2] + 1, 1, v421);
      }

      v423 = v421[2];
      v422 = v421[3];
      if (v423 >= v422 >> 1)
      {
        v421 = sub_1E5C4E5D4(v422 > 1, v423 + 1, 1, v421);
      }

      v421[2] = v423 + 1;
      (*(v419 + 32))(v421 + ((*(v419 + 80) + 32) & ~*(v419 + 80)) + *(v419 + 72) * v423, v38, v563);
      *v420 = v421;
      v424 = v418;
      v425 = *(v418 + 52);
      v426 = v564;
      v427 = v564 + v425;
      *(v574 + 9) = *(v564 + v425 + 41);
      v428 = *(v564 + v425 + 16);
      v572 = *(v564 + v425);
      v573 = v428;
      v574[0] = *(v564 + v425 + 32);
      sub_1E5C30CAC(&v572);
      *v427 = 0u;
      *(v427 + 16) = 0u;
      *(v427 + 32) = 0u;
      *(v427 + 48) = 0;
      *(v427 + 56) = 2;
      v270 = (v426 + *(v424 + 60));
      goto LABEL_76;
    case 7u:
      v389 = *(v56 + 1);
      v569 = *v56;
      v570 = v389;
      v390 = *(v56 + 3);
      v571[0] = *(v56 + 2);
      v571[1] = v390;
      v572 = v569;
      v573 = v389;
      v574[0] = v571[0];
      v574[1] = v390;
      v391 = (v564 + *(v562 + 60));
      v392 = *v391;
      v393 = v391[1];
      v394 = v391[3];
      v575[2] = v391[2];
      v575[3] = v394;
      v575[0] = v392;
      v575[1] = v393;
      sub_1E5C2A1B8(&v569, &v566);
      sub_1E5C3177C(v575, &qword_1ED053F80, &qword_1E5C9E528);
      v395 = v574[1];
      v391[2] = v574[0];
      v391[3] = v395;
      v396 = v573;
      *v391 = v572;
      v391[1] = v396;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v397 = sub_1E5C9BD40();
      __swift_project_value_buffer(v397, qword_1ED065C70);
      sub_1E5C2A1B8(&v569, &v566);
      v148 = sub_1E5C9BD20();
      v398 = sub_1E5C9CDE0();
      if (os_log_type_enabled(v148, v398))
      {
        v399 = swift_slowAlloc();
        v400 = swift_slowAlloc();
        *&v566 = v400;
        *v399 = 136315394;
        v401 = *(&v571[0] + 1);
        v402 = *&v571[1];

        v403 = sub_1E5C58D60(v401, v402, &v566);

        *(v399 + 4) = v403;
        *(v399 + 12) = 2048;
        v404 = *(*(&v571[1] + 1) + 16);
        sub_1E5C2A1F0(&v569);
        *(v399 + 14) = v404;
        sub_1E5C2A1F0(&v569);
        _os_log_impl(&dword_1E5C20000, v148, v398, "[Scope] Selected %s items:%ld", v399, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v400);
        MEMORY[0x1E693A130](v400, -1, -1);
        v152 = v399;
LABEL_106:
        MEMORY[0x1E693A130](v152, -1, -1);
      }

      else
      {
        sub_1E5C2A1F0(&v569);
        sub_1E5C2A1F0(&v569);
      }

      return;
    case 8u:
      v136 = v56;
      v137 = v551;
      sub_1E5C5A8B4(v136, v551, type metadata accessor for SearchHint);
      v576 = v590;
      v577 = v591;
      v575[2] = v588;
      v575[3] = v589;
      v580 = v594;
      v581 = v595;
      v578 = v592;
      v579 = v593;
      v584 = v598;
      v585 = v599;
      v582 = v596;
      v583 = v597;
      v575[0] = v586;
      v575[1] = v587;
      v138 = (v137 + *(v549 + 32));
      v139 = v138[1];
      v140 = v558;
      *v558 = *v138;
      *(v140 + 8) = v139;
      *(v140 + 16) = 1;
      swift_storeEnumTagMultiPayload();

      SearchFeature.reduce(localState:sharedState:sideEffects:action:)(v559, v564, v560, v140);
      sub_1E5C66FC0(v140, type metadata accessor for SearchAction);
      v141 = type metadata accessor for SearchHint;
LABEL_78:
      v87 = v141;
      v88 = v137;
      goto LABEL_109;
    case 9u:
      v369 = *(v56 + 1);
      *&v559 = *v56;
      v370 = *(v56 + 2);
      v371 = *(v56 + 3);
      v372 = *(v56 + 4);
      v373 = *(v56 + 7);
      v374 = *(v56 + 9);
      v375 = *(v56 + 11);

      v376 = v562;
      v377 = v564;
      v378 = (v564 + *(v562 + 56));
      v379 = *v378;
      v380 = v378[1];
      v381 = HIBYTE(v380) & 0xF;
      if ((v380 & 0x2000000000000000) == 0)
      {
        v381 = v379 & 0xFFFFFFFFFFFFLL;
      }

      if (v381)
      {
        if (v379 == v371 && v380 == v372 || (sub_1E5C9D060() & 1) != 0)
        {
          if (qword_1ED053E00 != -1)
          {
            swift_once();
          }

          v382 = sub_1E5C9BD40();
          __swift_project_value_buffer(v382, qword_1ED065C70);

          v383 = sub_1E5C9BD20();
          v384 = sub_1E5C9CDE0();
          if (os_log_type_enabled(v383, v384))
          {
            v385 = swift_slowAlloc();
            v386 = swift_slowAlloc();
            *&v575[0] = v386;
            *v385 = 141558531;
            *(v385 + 4) = 1752392040;
            *(v385 + 12) = 2081;

            v387 = sub_1E5C58D60(v371, v372, v575);

            *(v385 + 14) = v387;
            v376 = v562;
            *(v385 + 22) = 2048;
            *(v385 + 24) = *(v370 + 16);

            _os_log_impl(&dword_1E5C20000, v383, v384, "[Suggestions] Completed '%{private,mask.hash}s': %ld", v385, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v386);
            v388 = v386;
            v377 = v564;
            MEMORY[0x1E693A130](v388, -1, -1);
            MEMORY[0x1E693A130](v385, -1, -1);
          }

          else
          {
          }

          v529 = v559;
          v530 = (v377 + *(v376 + 68));
          v531 = v530[3];
          v532 = v530[4];
          sub_1E5C30DB8(*v530, v530[1], v530[2]);
          *v530 = v529;
          v530[1] = v369;
          v530[2] = v370;
          v530[3] = v371;
          v530[4] = v372;
        }

        else
        {
        }
      }

      else
      {

        *(v575 + 8) = 0u;
        *(&v575[1] + 8) = 0u;
        *(&v575[2] + 8) = 0u;
        *&v575[0] = 4;
        *(&v575[3] + 1) = 0;
        LOBYTE(v576) = 2;
        sub_1E5C59308();
        sub_1E5C9CE40();
        v462 = v561;
        (*(v561 + 104))(v33, *MEMORY[0x1E6999AE8], v563);
        v463 = v560;
        v464 = *v560;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v464 = sub_1E5C4E5D4(0, v464[2] + 1, 1, v464);
        }

        v466 = v464[2];
        v465 = v464[3];
        if (v466 >= v465 >> 1)
        {
          v464 = sub_1E5C4E5D4(v465 > 1, v466 + 1, 1, v464);
        }

        v464[2] = v466 + 1;
        (*(v462 + 32))(v464 + ((*(v462 + 80) + 32) & ~*(v462 + 80)) + *(v462 + 72) * v466, v33, v563);
        *v463 = v464;
        v74 = (v377 + *(v376 + 68));
LABEL_138:
        v467 = v74[3];
        v468 = v74[4];
        sub_1E5C30DB8(*v74, v74[1], v74[2]);
        v74[4] = 0;
        *v74 = 0u;
        *(v74 + 1) = 0u;
      }

      return;
    case 0xAu:
      v90 = *v56;
      v89 = *(v56 + 1);
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v91 = sub_1E5C9BD40();
      __swift_project_value_buffer(v91, qword_1ED065C70);

      v92 = sub_1E5C9BD20();
      v93 = sub_1E5C9CDB0();

      v94 = os_log_type_enabled(v92, v93);
      v95 = v561;
      if (v94)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v575[0] = v97;
        *v96 = 141558275;
        *(v96 + 4) = 1752392040;
        *(v96 + 12) = 2081;
        *(v96 + 14) = sub_1E5C58D60(v90, v89, v575);
        _os_log_impl(&dword_1E5C20000, v92, v93, "[Text] Changed: %{private,mask.hash}s", v96, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v97);
        MEMORY[0x1E693A130](v97, -1, -1);
        MEMORY[0x1E693A130](v96, -1, -1);
      }

      v98 = v564;
      v99 = *(v562 + 56);
      v100 = (v564 + v99);
      if (*(v564 + v99) == v90 && *(v564 + v99 + 8) == v89)
      {
        goto LABEL_181;
      }

      v101 = *(v564 + v99 + 8);
      if (sub_1E5C9D060())
      {
        goto LABEL_181;
      }

      v469 = v546;
      sub_1E5C67C9C(v98, v546, type metadata accessor for SearchState);
      v470 = v469;
      v471 = v562;
      if (*(v470 + *(v562 + 52) + 56))
      {
        sub_1E5C66FC0(v470, type metadata accessor for SearchState);
        v472 = (v98 + *(v471 + 68));
        if (v472[2] && (v472[3] == v90 && v472[4] == v89 || (sub_1E5C9D060() & 1) != 0))
        {
          goto LABEL_181;
        }

        *v100 = v90;
        v100[1] = v89;
        v473 = v98 + *(v562 + 52);
        if (*(v473 + 56) == 1 && (*(v473 + 24) != v90 || *(v473 + 32) != v89) && (sub_1E5C9D060() & 1) == 0)
        {
          v474 = *(v473 + 16);
          v572 = *v473;
          v573 = v474;
          v574[0] = *(v473 + 32);
          *(v574 + 9) = *(v473 + 41);
          sub_1E5C30CAC(&v572);
          *v473 = 0u;
          *(v473 + 16) = 0u;
          *(v473 + 32) = 0u;
          *(v473 + 48) = 0;
          *(v473 + 56) = 2;
          v475 = (v98 + *(v562 + 60));
          v476 = v475[1];
          v575[0] = *v475;
          v575[1] = v476;
          v477 = v475[3];
          v575[2] = v475[2];
          v575[3] = v477;
          sub_1E5C3177C(v575, &qword_1ED053F80, &qword_1E5C9E528);
          *v475 = 0u;
          v475[1] = 0u;
          v475[2] = 0u;
          v475[3] = 0u;
        }

        v478 = HIBYTE(v89) & 0xF;
        if ((v89 & 0x2000000000000000) == 0)
        {
          v478 = v90 & 0xFFFFFFFFFFFFLL;
        }

        if (v478)
        {
          v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
          v562 = v479[12];
          v480 = v479[16];
          v564 = v479[20];
          v481 = v545;
          v482 = &v545[v479[24]];
          *(v575 + 8) = 0u;
          *(&v575[1] + 8) = 0u;
          *(&v575[2] + 8) = 0u;
          *&v575[0] = 4;
          *(&v575[3] + 1) = 0;
          LOBYTE(v576) = 2;
          sub_1E5C59308();
          swift_bridgeObjectRetain_n();
          sub_1E5C9CE40();
          v483 = *MEMORY[0x1E6999B60];
          v484 = sub_1E5C9CAC0();
          (*(*(v484 - 8) + 104))(&v481[v480], v483, v484);
          v485 = swift_allocObject();
          v486 = v597;
          *(v485 + 176) = v596;
          *(v485 + 192) = v486;
          v487 = v599;
          *(v485 + 208) = v598;
          *(v485 + 224) = v487;
          v488 = v593;
          *(v485 + 112) = v592;
          *(v485 + 128) = v488;
          v489 = v595;
          *(v485 + 144) = v594;
          *(v485 + 160) = v489;
          v490 = v589;
          *(v485 + 48) = v588;
          *(v485 + 64) = v490;
          v491 = v591;
          *(v485 + 80) = v590;
          *(v485 + 96) = v491;
          v492 = v587;
          *(v485 + 16) = v586;
          *(v485 + 32) = v492;
          *(v485 + 240) = v90;
          *(v485 + 248) = v89;
          *(v485 + 256) = 2;
          *(v485 + 257) = v572;
          *(v485 + 260) = *(&v572 + 3);
          *(v485 + 264) = v90;
          *(v485 + 272) = v89;
          *(v485 + 280) = v90;
          *(v485 + 288) = v89;
          *(v485 + 296) = 0;
          *(v485 + 304) = 0;
          *v482 = &unk_1E5CA1D90;
          *(v482 + 1) = v485;
          sub_1E5C65790(&v586, v575);
          sub_1E5C9CD70();
          v493 = *MEMORY[0x1E6999B48];
          v494 = sub_1E5C9CAB0();
          (*(*(v494 - 8) + 104))(&v481[v564], v493, v494);
          (*(v95 + 104))(v481, *MEMORY[0x1E6999AD8], v563);
          v495 = v560;
          v496 = *v560;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v496 = sub_1E5C4E5D4(0, v496[2] + 1, 1, v496);
          }

          v498 = v496[2];
          v497 = v496[3];
          if (v498 >= v497 >> 1)
          {
            v496 = sub_1E5C4E5D4(v497 > 1, v498 + 1, 1, v496);
          }

          v496[2] = v498 + 1;
          (*(v95 + 32))(v496 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v498, v545, v563);
          *v495 = v496;
        }

        else
        {

          *(v575 + 8) = 0u;
          *(&v575[1] + 8) = 0u;
          *(&v575[2] + 8) = 0u;
          *&v575[0] = 4;
          *(&v575[3] + 1) = 0;
          LOBYTE(v576) = 2;
          sub_1E5C59308();
          v535 = v544;
          sub_1E5C9CE40();
          (*(v95 + 104))(v535, *MEMORY[0x1E6999AE8], v563);
          v536 = v560;
          v537 = *v560;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v537 = sub_1E5C4E5D4(0, v537[2] + 1, 1, v537);
          }

          v539 = v537[2];
          v538 = v537[3];
          if (v539 >= v538 >> 1)
          {
            v537 = sub_1E5C4E5D4(v538 > 1, v539 + 1, 1, v537);
          }

          v537[2] = v539 + 1;
          (*(v95 + 32))(v537 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v539, v544, v563);
          *v536 = v537;
          v540 = v472[3];
          v541 = v472[4];
          sub_1E5C30DB8(*v472, v472[1], v472[2]);
          v472[4] = 0;
          *v472 = 0u;
          *(v472 + 1) = 0u;
          v542 = *(v473 + 16);
          v572 = *v473;
          v573 = v542;
          v574[0] = *(v473 + 32);
          *(v574 + 9) = *(v473 + 41);
          sub_1E5C30CAC(&v572);
          *v473 = 0u;
          *(v473 + 16) = 0u;
          *(v473 + 32) = 0u;
          *(v473 + 48) = 0;
          *(v473 + 56) = 2;
          v270 = (v98 + *(v562 + 60));
LABEL_76:
          v271 = v270[1];
          v575[0] = *v270;
          v575[1] = v271;
          v272 = v270[3];
          v575[2] = v270[2];
          v575[3] = v272;
          sub_1E5C3177C(v575, &qword_1ED053F80, &qword_1E5C9E528);
          *v270 = 0u;
          v270[1] = 0u;
          v270[2] = 0u;
          v270[3] = 0u;
        }
      }

      else
      {
        v534 = v470;

        v87 = type metadata accessor for SearchState;
        v88 = v534;
LABEL_109:
        sub_1E5C66FC0(v88, v87);
      }

      return;
    case 0xBu:
      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 4;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      *&v559 = sub_1E5C59308();
      sub_1E5C9CE40();
      v121 = *MEMORY[0x1E6999AE8];
      *&v558 = *(v561 + 104);
      (v558)(v50, v121, v563);
      v122 = *v560;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = sub_1E5C4E5D4(0, *(v122 + 2) + 1, 1, v122);
      }

      v124 = *(v122 + 2);
      v123 = *(v122 + 3);
      if (v124 >= v123 >> 1)
      {
        v122 = sub_1E5C4E5D4(v123 > 1, v124 + 1, 1, v122);
      }

      *(v122 + 2) = v124 + 1;
      v125 = *(v561 + 32);
      v126 = (*(v561 + 80) + 32) & ~*(v561 + 80);
      v127 = *(v561 + 72);
      v128 = &v122[v126 + v127 * v124];
      v129 = v563;
      v125(v128, v50, v563);
      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 3;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      sub_1E5C9CE40();
      (v558)(v48, v121, v129);
      v131 = *(v122 + 2);
      v130 = *(v122 + 3);
      if (v131 >= v130 >> 1)
      {
        v122 = sub_1E5C4E5D4(v130 > 1, v131 + 1, 1, v122);
      }

      *(v122 + 2) = v131 + 1;
      v125(&v122[v126 + v131 * v127], v48, v563);
      *v560 = v122;
      v132 = v562;
      v133 = v564;
      v134 = (v564 + *(v562 + 56));
      v135 = v134[1];

      *v134 = 0;
      v134[1] = 0xE000000000000000;
      *(v133 + 49) = 0;
      goto LABEL_75;
    case 0xCu:
      v132 = v562;
      v133 = v564;
      v263 = (v564 + *(v562 + 56));
      v264 = v263[1];

      *v263 = 0;
      v263[1] = 0xE000000000000000;
LABEL_75:
      v265 = (v133 + v132[17]);
      v266 = v265[3];
      v267 = v265[4];
      sub_1E5C30DB8(*v265, v265[1], v265[2]);
      v265[4] = 0;
      *v265 = 0u;
      *(v265 + 1) = 0u;
      v268 = v133 + v132[13];
      v269 = *(v268 + 16);
      v572 = *v268;
      v573 = v269;
      v574[0] = *(v268 + 32);
      *(v574 + 9) = *(v268 + 41);
      sub_1E5C30CAC(&v572);
      *v268 = 0u;
      *(v268 + 16) = 0u;
      *(v268 + 32) = 0u;
      *(v268 + 48) = 0;
      *(v268 + 56) = 2;
      v270 = (v133 + v132[15]);
      goto LABEL_76;
    case 0xDu:
      v75 = v564;
      v76 = (v564 + *(v562 + 56));
      v77 = *v76;
      v78 = v76[1];
      *v76 = 0;
      v76[1] = 0xE000000000000000;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v79 = sub_1E5C9BD40();
      __swift_project_value_buffer(v79, qword_1ED065C70);

      v80 = sub_1E5C9BD20();
      v81 = sub_1E5C9CDE0();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v575[0] = v83;
        *v82 = 141558275;
        *(v82 + 4) = 1752392040;
        *(v82 + 12) = 2081;
        *(v82 + 14) = sub_1E5C58D60(v77, v78, v575);
        _os_log_impl(&dword_1E5C20000, v80, v81, "[Dictation] Triggered '%{private,mask.hash}s'", v82, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v83);
        MEMORY[0x1E693A130](v83, -1, -1);
        MEMORY[0x1E693A130](v82, -1, -1);
      }

      v84 = v560;
      v85 = v559;
      v86 = v558;
      v582 = v596;
      v583 = v597;
      v584 = v598;
      v585 = v599;
      v578 = v592;
      v579 = v593;
      v580 = v594;
      v581 = v595;
      v575[2] = v588;
      v575[3] = v589;
      v576 = v590;
      v577 = v591;
      v575[0] = v586;
      v575[1] = v587;
      *v558 = v77;
      *(v86 + 8) = v78;
      swift_storeEnumTagMultiPayload();
      SearchFeature.reduce(localState:sharedState:sideEffects:action:)(v85, v75, v84, v86);
      v87 = type metadata accessor for SearchAction;
      v88 = v86;
      goto LABEL_109;
    case 0xEu:
      *(v564 + *(v562 + 64)) = 0;
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v154 = v153[12];
      v155 = v153[16];
      v156 = v153[20];
      v157 = &v45[v153[24]];
      memset(v575, 0, sizeof(v575));
      LOBYTE(v576) = 2;
      sub_1E5C59308();
      sub_1E5C9CE40();
      v158 = *MEMORY[0x1E6999B60];
      v159 = sub_1E5C9CAC0();
      (*(*(v159 - 8) + 104))(&v45[v155], v158, v159);
      v160 = swift_allocObject();
      v161 = v597;
      v160[11] = v596;
      v160[12] = v161;
      v162 = v599;
      v160[13] = v598;
      v160[14] = v162;
      v163 = v593;
      v160[7] = v592;
      v160[8] = v163;
      v164 = v595;
      v160[9] = v594;
      v160[10] = v164;
      v165 = v589;
      v160[3] = v588;
      v160[4] = v165;
      v166 = v591;
      v160[5] = v590;
      v160[6] = v166;
      v167 = v587;
      v160[1] = v586;
      v160[2] = v167;
      *v157 = &unk_1E5CA1DC0;
      *(v157 + 1) = v160;
      sub_1E5C65790(&v586, v575);
      sub_1E5C9CD70();
      v168 = *MEMORY[0x1E6999B48];
      v169 = sub_1E5C9CAB0();
      (*(*(v169 - 8) + 104))(&v45[v156], v168, v169);
      v170 = v561;
      (*(v561 + 104))(v45, *MEMORY[0x1E6999AD8], v563);
      v171 = v560;
      v172 = *v560;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = sub_1E5C4E5D4(0, v172[2] + 1, 1, v172);
      }

      v174 = v172[2];
      v173 = v172[3];
      if (v174 >= v173 >> 1)
      {
        v172 = sub_1E5C4E5D4(v173 > 1, v174 + 1, 1, v172);
      }

      v172[2] = v174 + 1;
      (*(v170 + 32))(v172 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v174, v45, v563);
      *v171 = v172;
      return;
    case 0xFu:
      *(v564 + *(v562 + 64)) = 1;
      return;
    case 0x10u:
      v200 = v562;
      v201 = v564;
      v202 = v564 + *(v562 + 52);
      if (*(v202 + 56) == 2)
      {
        v203 = vorrq_s8(*(v202 + 24), *(v202 + 40));
        if (!(*&vorr_s8(*v203.i8, *&vextq_s8(v203, v203, 8uLL)) | *(v202 + 16) | *(v202 + 8) | *v202))
        {
          v204 = (v564 + *(v562 + 60));
          v205 = v204[1];
          v575[0] = *v204;
          v575[1] = v205;
          v206 = v204[3];
          v575[2] = v204[2];
          v575[3] = v206;
          sub_1E5C3177C(v575, &qword_1ED053F80, &qword_1E5C9E528);
          *v204 = 0u;
          v204[1] = 0u;
          v204[2] = 0u;
          v204[3] = 0u;
        }
      }

      v207 = v201 + *(v200 + 60);
      v208 = v561;
      if (*(v207 + 24))
      {
        v210 = *(v207 + 40);
        v209 = *(v207 + 48);
      }

      else
      {
        v209 = 0xE400000000000000;
        v210 = 1701736302;
      }

      v429 = v560;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v430 = sub_1E5C9BD40();
      __swift_project_value_buffer(v430, qword_1ED065C70);

      v431 = sub_1E5C9BD20();
      v432 = sub_1E5C9CDE0();

      if (os_log_type_enabled(v431, v432))
      {
        v433 = swift_slowAlloc();
        v434 = swift_slowAlloc();
        *&v575[0] = v434;
        *v433 = 136315138;
        v435 = sub_1E5C58D60(v210, v209, v575);

        *(v433 + 4) = v435;
        _os_log_impl(&dword_1E5C20000, v431, v432, "[Scope] Scope Changed: %s", v433, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v434);
        MEMORY[0x1E693A130](v434, -1, -1);
        MEMORY[0x1E693A130](v433, -1, -1);
      }

      else
      {
      }

      v436 = v553;
      v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v438 = v437[12];
      v439 = *(v207 + 16);
      v572 = *v207;
      v573 = v439;
      v440 = *(v207 + 48);
      v442 = *v207;
      v441 = *(v207 + 16);
      v574[0] = *(v207 + 32);
      v574[1] = v440;
      v443 = v437[16];
      v444 = v437[20];
      v445 = &v436[v437[24]];
      v575[0] = v442;
      v575[1] = v441;
      v446 = *(v207 + 48);
      v575[2] = *(v207 + 32);
      v575[3] = v446;
      LOBYTE(v576) = 1;
      sub_1E5C31EF0(&v572, &v569);
      sub_1E5C59308();
      sub_1E5C9CE40();
      v447 = *MEMORY[0x1E6999B60];
      v448 = sub_1E5C9CAC0();
      (*(*(v448 - 8) + 104))(&v436[v443], v447, v448);
      v449 = swift_allocObject();
      v450 = v597;
      v449[11] = v596;
      v449[12] = v450;
      v451 = v599;
      v449[13] = v598;
      v449[14] = v451;
      v452 = v593;
      v449[7] = v592;
      v449[8] = v452;
      v453 = v595;
      v449[9] = v594;
      v449[10] = v453;
      v454 = v589;
      v449[3] = v588;
      v449[4] = v454;
      v455 = v591;
      v449[5] = v590;
      v449[6] = v455;
      v456 = v587;
      v449[1] = v586;
      v449[2] = v456;
      *v445 = &unk_1E5CA1DA0;
      *(v445 + 1) = v449;
      sub_1E5C65790(&v586, v575);
      sub_1E5C9CD70();
      v457 = *MEMORY[0x1E6999B48];
      v458 = sub_1E5C9CAB0();
      (*(*(v458 - 8) + 104))(&v436[v444], v457, v458);
      (*(v208 + 104))(v436, *MEMORY[0x1E6999AD8], v563);
      v459 = *v429;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v459 = sub_1E5C4E5D4(0, v459[2] + 1, 1, v459);
      }

      v461 = v459[2];
      v460 = v459[3];
      if (v461 >= v460 >> 1)
      {
        v459 = sub_1E5C4E5D4(v460 > 1, v461 + 1, 1, v459);
      }

      v459[2] = v461 + 1;
      (*(v208 + 32))(v459 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v461, v436, v563);
      *v429 = v459;
      return;
    case 0x11u:
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
      v277 = v276[12];
      v278 = v276[16];
      v279 = v276[20];
      v280 = v552;
      v281 = &v552[v276[24]];
      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 2;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      v564 = sub_1E5C59308();
      sub_1E5C9CE40();
      v282 = *MEMORY[0x1E6999B60];
      v283 = sub_1E5C9CAC0();
      v284 = *(v283 - 8);
      v285 = *(v284 + 104);
      v562 = v283;
      *&v559 = v285;
      *&v558 = v284 + 104;
      v285(&v280[v278], v282);
      v286 = swift_allocObject();
      v287 = v597;
      v286[11] = v596;
      v286[12] = v287;
      v288 = v599;
      v286[13] = v598;
      v286[14] = v288;
      v289 = v593;
      v286[7] = v592;
      v286[8] = v289;
      v290 = v595;
      v286[9] = v594;
      v286[10] = v290;
      v291 = v589;
      v286[3] = v588;
      v286[4] = v291;
      v292 = v591;
      v286[5] = v590;
      v286[6] = v292;
      v293 = v587;
      v286[1] = v586;
      v286[2] = v293;
      *v281 = &unk_1E5CA1D40;
      *(v281 + 1) = v286;
      sub_1E5C65790(&v586, v575);
      sub_1E5C9CD70();
      v294 = *MEMORY[0x1E6999B48];
      v295 = sub_1E5C9CAB0();
      v296 = *(v295 - 8);
      v547 = *(v296 + 104);
      v548 = v295;
      v546 = v296 + 104;
      (v547)(&v280[v279], v294);
      v297 = v561;
      v299 = (v561 + 104);
      v298 = *(v561 + 104);
      LODWORD(v553) = *MEMORY[0x1E6999AD8];
      v551 = v298;
      v298(v280);
      v300 = *v560;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v300 = sub_1E5C4E5D4(0, v300[2] + 1, 1, v300);
      }

      v301 = v554;
      v303 = v300[2];
      v302 = v300[3];
      if (v303 >= v302 >> 1)
      {
        v300 = sub_1E5C4E5D4(v302 > 1, v303 + 1, 1, v300);
      }

      v300[2] = v303 + 1;
      v305 = *(v297 + 32);
      v304 = v297 + 32;
      v550 = (*(v304 + 48) + 32) & ~*(v304 + 48);
      v549 = *(v304 + 40);
      v306 = v563;
      *&v561 = v304;
      v554 = v305;
      (v305)(v300 + v550 + v549 * v303, v280, v563);
      v543[1] = v276[12];
      v307 = v276[16];
      v308 = v276[20];
      v309 = v555;
      v310 = &v555[v276[24]];
      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 6;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      sub_1E5C9CE40();
      LODWORD(v552) = *MEMORY[0x1E6999B50];
      (v559)(&v309[v307]);
      LODWORD(v545) = *MEMORY[0x1E6999B40];
      (v547)(&v309[v308]);
      v311 = swift_allocObject();
      v312 = v597;
      v311[11] = v596;
      v311[12] = v312;
      v313 = v599;
      v311[13] = v598;
      v311[14] = v313;
      v314 = v593;
      v311[7] = v592;
      v311[8] = v314;
      v315 = v595;
      v311[9] = v594;
      v311[10] = v315;
      v316 = v589;
      v311[3] = v588;
      v311[4] = v316;
      v317 = v591;
      v311[5] = v590;
      v311[6] = v317;
      v318 = v587;
      v311[1] = v586;
      v311[2] = v318;
      *v310 = &unk_1E5CA1D50;
      *(v310 + 1) = v311;
      sub_1E5C65790(&v586, v575);
      sub_1E5C9CD70();
      (v551)(v309, v553, v306);
      v320 = v300[2];
      v319 = v300[3];
      v544 = v299;
      if (v320 >= v319 >> 1)
      {
        v300 = sub_1E5C4E5D4(v319 > 1, v320 + 1, 1, v300);
      }

      v300[2] = v320 + 1;
      v321 = v563;
      (v554)(v300 + v550 + v320 * v549, v555, v563);
      v322 = v276[12];
      v323 = v276[16];
      v324 = v276[20];
      v325 = v556;
      v326 = &v556[v276[24]];
      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 7;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      sub_1E5C9CE40();
      (v559)(&v325[v323], v552, v562);
      (v547)(&v325[v324], v545, v548);
      v327 = swift_allocObject();
      v328 = v597;
      v327[11] = v596;
      v327[12] = v328;
      v329 = v599;
      v327[13] = v598;
      v327[14] = v329;
      v330 = v593;
      v327[7] = v592;
      v327[8] = v330;
      v331 = v595;
      v327[9] = v594;
      v327[10] = v331;
      v332 = v589;
      v327[3] = v588;
      v327[4] = v332;
      v333 = v591;
      v327[5] = v590;
      v327[6] = v333;
      v334 = v587;
      v327[1] = v586;
      v327[2] = v334;
      *v326 = &unk_1E5CA1D60;
      *(v326 + 1) = v327;
      sub_1E5C65790(&v586, v575);
      sub_1E5C9CD70();
      (v551)(v325, v553, v321);
      v336 = v300[2];
      v335 = v300[3];
      if (v336 >= v335 >> 1)
      {
        v300 = sub_1E5C4E5D4(v335 > 1, v336 + 1, 1, v300);
      }

      v300[2] = v336 + 1;
      v337 = v563;
      (v554)(v300 + v550 + v336 * v549, v556, v563);
      v338 = v276[12];
      v339 = v276[16];
      v340 = v276[20];
      v341 = &v301[v276[24]];
      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 8;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      sub_1E5C9CE40();
      (v559)(&v301[v339], v552, v562);
      (v547)(&v301[v340], v545, v548);
      v342 = swift_allocObject();
      v343 = v597;
      v342[11] = v596;
      v342[12] = v343;
      v344 = v599;
      v342[13] = v598;
      v342[14] = v344;
      v345 = v593;
      v342[7] = v592;
      v342[8] = v345;
      v346 = v595;
      v342[9] = v594;
      v342[10] = v346;
      v347 = v589;
      v342[3] = v588;
      v342[4] = v347;
      v348 = v591;
      v342[5] = v590;
      v342[6] = v348;
      v349 = v587;
      v342[1] = v586;
      v342[2] = v349;
      *v341 = &unk_1E5CA1D70;
      *(v341 + 1) = v342;
      sub_1E5C65790(&v586, v575);
      sub_1E5C9CD70();
      (v551)(v301, v553, v337);
      v351 = v300[2];
      v350 = v300[3];
      if (v351 >= v350 >> 1)
      {
        v300 = sub_1E5C4E5D4(v350 > 1, v351 + 1, 1, v300);
      }

      v300[2] = v351 + 1;
      v352 = v563;
      (v554)(v300 + v550 + v351 * v549, v301, v563);
      v353 = v276[12];
      v354 = v276[16];
      v355 = v276[20];
      v356 = v557;
      v357 = (v557 + v276[24]);
      *(v575 + 8) = 0u;
      *(&v575[1] + 8) = 0u;
      *(&v575[2] + 8) = 0u;
      *&v575[0] = 9;
      *(&v575[3] + 1) = 0;
      LOBYTE(v576) = 2;
      sub_1E5C9CE40();
      (v559)(v356 + v354, v552, v562);
      (v547)(v356 + v355, v545, v548);
      v358 = swift_allocObject();
      v359 = v597;
      v358[11] = v596;
      v358[12] = v359;
      v360 = v599;
      v358[13] = v598;
      v358[14] = v360;
      v361 = v593;
      v358[7] = v592;
      v358[8] = v361;
      v362 = v595;
      v358[9] = v594;
      v358[10] = v362;
      v363 = v589;
      v358[3] = v588;
      v358[4] = v363;
      v364 = v591;
      v358[5] = v590;
      v358[6] = v364;
      v365 = v587;
      v358[1] = v586;
      v358[2] = v365;
      *v357 = &unk_1E5CA1D80;
      v357[1] = v358;
      sub_1E5C65790(&v586, v575);
      sub_1E5C9CD70();
      (v551)(v356, v553, v352);
      v367 = v300[2];
      v366 = v300[3];
      if (v367 >= v366 >> 1)
      {
        v300 = sub_1E5C4E5D4(v366 > 1, v367 + 1, 1, v300);
      }

      v368 = v560;
      v300[2] = v367 + 1;
      (v554)(v300 + v550 + v367 * v549, v557, v563);
      *v368 = v300;
      return;
    case 0x12u:
      return;
    default:
      v67 = *v56;
      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v68 = sub_1E5C9BD40();
      __swift_project_value_buffer(v68, qword_1ED065C70);
      v69 = sub_1E5C9BD20();
      v70 = sub_1E5C9CDB0();
      v71 = os_log_type_enabled(v69, v70);
      v72 = v564;
      if (v71)
      {
        v73 = swift_slowAlloc();
        *v73 = 67109120;
        *(v73 + 4) = v67;
        _os_log_impl(&dword_1E5C20000, v69, v70, "[Focus] isSearching: %{BOOL}d", v73, 8u);
        MEMORY[0x1E693A130](v73, -1, -1);
      }

      *(v72 + 49) = v67;
      if (v67)
      {
        return;
      }

      v74 = (v564 + *(v562 + 68));
      goto LABEL_138;
  }
}

uint64_t sub_1E5C5F7A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SearchAction();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_1E5C9CD60();
  v2[6] = sub_1E5C9CD50();
  v6 = *(a2 + 24);
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = *(*(a2 + 16) + 4);
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1E5C5F8E0;

  return v10();
}

uint64_t sub_1E5C5F8E0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v11 = *v1;
  v3[8] = v2;

  v8 = sub_1E5C9CD10();
  v3[9] = v8;
  v3[10] = v7;
  if (v2)
  {
    v9 = sub_1E5C53E14;
  }

  else
  {
    v9 = sub_1E5C5FA40;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5C5FA40()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v3 = v0;
  v3[1] = sub_1E5C5FB0C;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5C5FB0C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 80);
  v5 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E5C53DA4, v5, v4);
}

uint64_t sub_1E5C5FC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 177) = a5;
  *(v6 + 280) = a3;
  *(v6 + 288) = a4;
  *(v6 + 264) = a1;
  *(v6 + 272) = a2;
  *(v6 + 178) = *a6;
  v7 = *(a6 + 8);
  *(v6 + 296) = a6;
  *(v6 + 304) = v7;
  *(v6 + 312) = *(a6 + 16);
  *(v6 + 328) = *(a6 + 32);
  *(v6 + 336) = *(a6 + 40);
  v8 = sub_1E5C9BBA0();
  *(v6 + 352) = v8;
  v9 = *(v8 - 8);
  *(v6 + 360) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  v11 = sub_1E5C9CD20();
  *(v6 + 376) = v11;
  v12 = *(v11 - 8);
  *(v6 + 384) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  v14 = type metadata accessor for SearchAction();
  *(v6 + 400) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  sub_1E5C9CD60();
  *(v6 + 416) = sub_1E5C9CD50();
  v17 = sub_1E5C9CD10();
  *(v6 + 424) = v17;
  *(v6 + 432) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1E5C5FE18, v17, v16);
}

uint64_t sub_1E5C5FE18()
{
  v1 = *(v0 + 177);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = v4[4];
  v6 = v4[5];
  *(v0 + 440) = v4[6];
  *(v0 + 448) = v4[7];
  v7 = v4[10];
  v8 = v4[11];
  *(v0 + 456) = v4[14];
  *(v0 + 464) = v4[15];
  v5();
  *(v0 + 152) = v3;
  *(v0 + 160) = v2;
  *(v0 + 168) = v1;
  *(v0 + 169) = 0;

  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 472) = v10;
  *v10 = v0;
  v10[1] = sub_1E5C5FF78;

  return v12(v0 + 16, v0 + 152);
}

uint64_t sub_1E5C5FF78()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v9 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_1E5C61068;
  }

  else
  {
    v7 = v2[36];

    v4 = v2[53];
    v5 = v2[54];
    v6 = sub_1E5C60094;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5C60094()
{
  v76 = v0;
  v1 = *(v0 + 480);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  *(v0 + 488) = v2;
  *(v0 + 496) = v4;
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  *(v0 + 504) = v6;
  *(v0 + 512) = v8;
  sub_1E5C9CD90();
  if (v1)
  {

    *(v0 + 584) = v1;
    v9 = *(v0 + 392);
    v10 = *(v0 + 376);
    *(v0 + 248) = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 416);

      if (qword_1ED053E00 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 288);
      v14 = sub_1E5C9BD40();
      __swift_project_value_buffer(v14, qword_1ED065C70);

      v15 = sub_1E5C9BD20();
      v16 = sub_1E5C9CDB0();

      if (os_log_type_enabled(v15, v16))
      {
        v18 = *(v0 + 280);
        v17 = *(v0 + 288);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v75[0] = v20;
        *v19 = 141558275;
        *(v19 + 4) = 1752392040;
        *(v19 + 12) = 2081;
        *(v19 + 14) = sub_1E5C58D60(v18, v17, v75);
        _os_log_impl(&dword_1E5C20000, v15, v16, "[Cancellation] Results for '%{private,mask.hash}s'", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1E693A130](v20, -1, -1);
        MEMORY[0x1E693A130](v19, -1, -1);
      }

      (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
      v21 = *(v0 + 408);
      v22 = *(v0 + 392);
      v23 = *(v0 + 368);

      v24 = *(v0 + 8);

      return v24();
    }

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 288);
    v38 = sub_1E5C9BD40();
    __swift_project_value_buffer(v38, qword_1ED065C70);

    v39 = v1;
    v40 = sub_1E5C9BD20();
    v41 = sub_1E5C9CDC0();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = *(v0 + 280);
      v42 = *(v0 + 288);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v75[0] = v46;
      *v44 = 141558531;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2081;
      *(v44 + 14) = sub_1E5C58D60(v43, v42, v75);
      *(v44 + 22) = 2112;
      v47 = v1;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v48;
      *v45 = v48;
      _os_log_impl(&dword_1E5C20000, v40, v41, "Failed to fetch results for '%{private,mask.hash}s': %@", v44, 0x20u);
      sub_1E5C3177C(v45, &qword_1ED054A70, &qword_1E5CA17D0);
      MEMORY[0x1E693A130](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1E693A130](v46, -1, -1);
      MEMORY[0x1E693A130](v44, -1, -1);
    }

    v49 = *(v0 + 408);
    v50 = *(v0 + 360);
    v51 = *(v0 + 368);
    v67 = *(v0 + 352);
    v72 = *(v0 + 344);
    v73 = *(v0 + 400);
    v71 = *(v0 + 336);
    v69 = *(v0 + 304);
    v70 = *(v0 + 320);
    v68 = *(v0 + 178);
    v52 = *(v0 + 288);
    v74 = *(v0 + 296);
    v53 = *(v0 + 280);
    swift_getErrorValue();
    v55 = *(v0 + 128);
    v54 = *(v0 + 136);
    v56 = *(v0 + 144);
    v57 = sub_1E5C9D080();
    v59 = v58;
    sub_1E5C9BB90();
    v60 = sub_1E5C9BB70();
    v62 = v61;
    (*(v50 + 8))(v51, v67);
    *v49 = v60;
    *(v49 + 8) = v62;
    *(v49 + 16) = MEMORY[0x1E69E7CC0];
    *(v49 + 24) = v53;
    *(v49 + 32) = v52;
    *(v49 + 40) = v57;
    *(v49 + 48) = v59;
    *(v49 + 56) = v68;
    v63 = *(v0 + 170);
    *(v49 + 60) = *(v0 + 173);
    *(v49 + 57) = v63;
    *(v49 + 64) = v69;
    *(v49 + 80) = v70;
    *(v49 + 96) = v71;
    *(v49 + 104) = v72;
    swift_storeEnumTagMultiPayload();

    sub_1E5C5AD2C(v74, v0 + 72);
    v64 = *(MEMORY[0x1E6999AF0] + 4);
    v34 = swift_task_alloc();
    *(v0 + 592) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v34 = v0;
    v36 = sub_1E5C60F10;
  }

  else
  {
    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    v28 = *(v0 + 296);
    v29 = *v28;
    *(v0 + 184) = *(v28 + 8);
    *(v0 + 200) = *(v28 + 24);
    v30 = *(v0 + 184);
    v31 = *(v0 + 200);
    v32 = *(v0 + 208);
    *v26 = v3;
    *(v26 + 8) = v2;
    *(v26 + 16) = v4;
    *(v26 + 24) = v5;
    *(v26 + 32) = v6;
    *(v26 + 40) = v7;
    *(v26 + 48) = v8;
    *(v26 + 56) = v29;
    *(v26 + 64) = v30;
    *(v26 + 80) = v31;
    *(v26 + 88) = v32;
    *(v26 + 96) = v3;
    *(v26 + 104) = v2;
    swift_storeEnumTagMultiPayload();
    sub_1E5C5AD88(v0 + 184, v0 + 216);
    sub_1E5C5AD88(v0 + 200, v0 + 232);
    v33 = *(MEMORY[0x1E6999AF0] + 4);
    swift_bridgeObjectRetain_n();

    v34 = swift_task_alloc();
    *(v0 + 520) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *(v0 + 528) = v35;
    *v34 = v0;
    v36 = sub_1E5C60728;
  }

  v34[1] = v36;
  v65 = *(v0 + 408);
  v66 = *(v0 + 264);

  return MEMORY[0x1EEE01A40](v65, v35);
}

uint64_t sub_1E5C60728()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 408);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E5C60880, v5, v4);
}

uint64_t sub_1E5C60880()
{
  v1 = v0[63];
  v2 = v0[64];
  v3 = v0[61];
  v4 = *(v0[62] + 16);

  if (v4)
  {
    v16 = (v0[57] + *v0[57]);
    v5 = *(v0[57] + 4);
    v6 = swift_task_alloc();
    v0[67] = v6;
    *v6 = v0;
    v6[1] = sub_1E5C60A10;
    v7 = v0[58];
    v9 = v0[35];
    v8 = v0[36];

    return v16(v9, v8);
  }

  else
  {
    v11 = v0[52];

    v12 = v0[51];
    v13 = v0[49];
    v14 = v0[46];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1E5C60A10()
{
  v2 = *(*v1 + 536);
  v3 = *v1;
  v3[68] = v0;

  if (v0)
  {
    v4 = v3[53];
    v5 = v3[54];

    return MEMORY[0x1EEE6DFA0](sub_1E5C615D8, v4, v5);
  }

  else
  {
    v10 = (v3[55] + *v3[55]);
    v6 = *(v3[55] + 4);
    v7 = swift_task_alloc();
    v3[69] = v7;
    *v7 = v3;
    v7[1] = sub_1E5C60BDC;
    v8 = v3[56];

    return v10();
  }
}

uint64_t sub_1E5C60BDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 552);
  v6 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {
    v7 = v4[53];
    v8 = v4[54];
    v9 = sub_1E5C61828;
  }

  else
  {
    v4[71] = a1;
    v7 = v4[53];
    v8 = v4[54];
    v9 = sub_1E5C60D04;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E5C60D04()
{
  v1 = *(v0 + 400);
  **(v0 + 408) = *(v0 + 568);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 576) = v3;
  *v3 = v0;
  v3[1] = sub_1E5C60DB8;
  v4 = *(v0 + 528);
  v5 = *(v0 + 408);
  v6 = *(v0 + 264);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5C60DB8()
{
  v1 = *v0;
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 408);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E5C55110, v5, v4);
}

uint64_t sub_1E5C60F10()
{
  v1 = *v0;
  v2 = *(*v0 + 592);
  v3 = *(*v0 + 408);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 432);
  v5 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E5C552EC, v5, v4);
}

uint64_t sub_1E5C61068()
{
  v61 = v0;
  v1 = *(v0 + 288);

  v2 = *(v0 + 480);
  *(v0 + 248) = v2;
  *(v0 + 584) = v2;
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 416);

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 288);
    v8 = sub_1E5C9BD40();
    __swift_project_value_buffer(v8, qword_1ED065C70);

    v9 = sub_1E5C9BD20();
    v10 = sub_1E5C9CDB0();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 280);
      v11 = *(v0 + 288);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v60 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      *(v13 + 14) = sub_1E5C58D60(v12, v11, &v60);
      _os_log_impl(&dword_1E5C20000, v9, v10, "[Cancellation] Results for '%{private,mask.hash}s'", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E693A130](v14, -1, -1);
      MEMORY[0x1E693A130](v13, -1, -1);
    }

    (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
    v15 = *(v0 + 408);
    v16 = *(v0 + 392);
    v17 = *(v0 + 368);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 288);
    v21 = sub_1E5C9BD40();
    __swift_project_value_buffer(v21, qword_1ED065C70);

    v22 = v2;
    v23 = sub_1E5C9BD20();
    v24 = sub_1E5C9CDC0();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 280);
      v25 = *(v0 + 288);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v27 = 141558531;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      *(v27 + 14) = sub_1E5C58D60(v26, v25, &v60);
      *(v27 + 22) = 2112;
      v30 = v2;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 24) = v31;
      *v28 = v31;
      _os_log_impl(&dword_1E5C20000, v23, v24, "Failed to fetch results for '%{private,mask.hash}s': %@", v27, 0x20u);
      sub_1E5C3177C(v28, &qword_1ED054A70, &qword_1E5CA17D0);
      MEMORY[0x1E693A130](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E693A130](v29, -1, -1);
      MEMORY[0x1E693A130](v27, -1, -1);
    }

    v32 = *(v0 + 408);
    v33 = *(v0 + 360);
    v34 = *(v0 + 368);
    v52 = *(v0 + 352);
    v57 = *(v0 + 344);
    v58 = *(v0 + 400);
    v56 = *(v0 + 336);
    v54 = *(v0 + 304);
    v55 = *(v0 + 320);
    v53 = *(v0 + 178);
    v35 = *(v0 + 288);
    v59 = *(v0 + 296);
    v36 = *(v0 + 280);
    swift_getErrorValue();
    v38 = *(v0 + 128);
    v37 = *(v0 + 136);
    v39 = *(v0 + 144);
    v40 = sub_1E5C9D080();
    v42 = v41;
    sub_1E5C9BB90();
    v43 = sub_1E5C9BB70();
    v45 = v44;
    (*(v33 + 8))(v34, v52);
    *v32 = v43;
    *(v32 + 8) = v45;
    *(v32 + 16) = MEMORY[0x1E69E7CC0];
    *(v32 + 24) = v36;
    *(v32 + 32) = v35;
    *(v32 + 40) = v40;
    *(v32 + 48) = v42;
    *(v32 + 56) = v53;
    v46 = *(v0 + 170);
    *(v32 + 60) = *(v0 + 173);
    *(v32 + 57) = v46;
    *(v32 + 64) = v54;
    *(v32 + 80) = v55;
    *(v32 + 96) = v56;
    *(v32 + 104) = v57;
    swift_storeEnumTagMultiPayload();

    sub_1E5C5AD2C(v59, v0 + 72);
    v47 = *(MEMORY[0x1E6999AF0] + 4);
    v48 = swift_task_alloc();
    *(v0 + 592) = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v48 = v0;
    v48[1] = sub_1E5C60F10;
    v50 = *(v0 + 408);
    v51 = *(v0 + 264);

    return MEMORY[0x1EEE01A40](v50, v49);
  }
}

uint64_t sub_1E5C615D8()
{
  v21 = v0;
  v1 = v0[68];
  v2 = v0[52];

  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = sub_1E5C9BD40();
  __swift_project_value_buffer(v4, qword_1ED065C70);

  v5 = v1;
  v6 = sub_1E5C9BD20();
  v7 = sub_1E5C9CDC0();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[35];
    v8 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_1E5C58D60(v9, v8, &v20);
    *(v10 + 22) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_1E5C20000, v6, v7, "Failed to update history with '%{private,mask.hash}s': %@", v10, 0x20u);
    sub_1E5C3177C(v11, &qword_1ED054A70, &qword_1E5CA17D0);
    MEMORY[0x1E693A130](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E693A130](v12, -1, -1);
    MEMORY[0x1E693A130](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[51];
  v16 = v0[49];
  v17 = v0[46];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E5C61828()
{
  v21 = v0;
  v1 = v0[70];
  v2 = v0[52];

  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v3 = v0[36];
  v4 = sub_1E5C9BD40();
  __swift_project_value_buffer(v4, qword_1ED065C70);

  v5 = v1;
  v6 = sub_1E5C9BD20();
  v7 = sub_1E5C9CDC0();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[35];
    v8 = v0[36];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    *(v10 + 14) = sub_1E5C58D60(v9, v8, &v20);
    *(v10 + 22) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_1E5C20000, v6, v7, "Failed to update history with '%{private,mask.hash}s': %@", v10, 0x20u);
    sub_1E5C3177C(v11, &qword_1ED054A70, &qword_1E5CA17D0);
    MEMORY[0x1E693A130](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E693A130](v12, -1, -1);
    MEMORY[0x1E693A130](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[51];
  v16 = v0[49];
  v17 = v0[46];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E5C61A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = a5;
  *(v5 + 216) = a1;
  *(v5 + 224) = a3;
  *(v5 + 432) = *a5;
  *(v5 + 248) = *(a5 + 8);
  *(v5 + 256) = *(a5 + 16);
  *(v5 + 272) = *(a5 + 32);
  *(v5 + 280) = *(a5 + 40);
  v9 = type metadata accessor for SearchHint();
  *(v5 + 296) = v9;
  v10 = *(v9 - 8);
  *(v5 + 304) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 312) = swift_task_alloc();
  v12 = sub_1E5C9CD20();
  *(v5 + 320) = v12;
  v13 = *(v12 - 8);
  *(v5 + 328) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 336) = swift_task_alloc();
  v15 = type metadata accessor for SearchAction();
  *(v5 + 344) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = sub_1E5C9CD60();
  *(v5 + 368) = sub_1E5C9CD50();
  v17 = *(a2 + 104);
  v21 = (*(a2 + 96) + **(a2 + 96));
  v18 = *(*(a2 + 96) + 4);
  v19 = swift_task_alloc();
  *(v5 + 376) = v19;
  *v19 = v5;
  v19[1] = sub_1E5C61CBC;

  return v21(v5 + 72, a3, a4);
}

uint64_t sub_1E5C61CBC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 376);
  v5 = *v1;
  v3[48] = v0;

  v6 = v3[46];
  v7 = v3[45];
  v8 = sub_1E5C9CD10();
  if (v2)
  {
    v10 = sub_1E5C628F4;
  }

  else
  {
    v3[49] = v8;
    v3[50] = v9;
    v10 = sub_1E5C61E20;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E5C61E20()
{
  v72 = v0;
  v1 = *(v0 + 384);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  sub_1E5C9CD90();
  if (v1)
  {
    v7 = v1;
  }

  else
  {
    v56 = *(v0 + 240);
    v57 = *v56;
    *(v0 + 112) = *(v56 + 8);
    *(v0 + 128) = *(v56 + 24);
    v58 = *(v0 + 120);
    v59 = *(v0 + 136);
    if (*(v4 + 16))
    {
      v61 = *(v0 + 344);
      v60 = *(v0 + 352);
      v62 = *(v0 + 128);
      v63 = *(v0 + 112);
      *v60 = v3;
      *(v60 + 8) = v2;
      *(v60 + 16) = v4;
      *(v60 + 24) = v5;
      *(v60 + 32) = v6;
      *(v60 + 40) = v57;
      *(v60 + 48) = v63;
      *(v60 + 56) = v58;
      *(v60 + 64) = v62;
      *(v60 + 72) = v59;
      *(v60 + 80) = v3;
      *(v60 + 88) = v2;
      swift_storeEnumTagMultiPayload();
      sub_1E5C5AD88(v0 + 112, v0 + 144);
      sub_1E5C5AD88(v0 + 128, v0 + 160);
      v64 = *(MEMORY[0x1E6999AF0] + 4);

      v53 = swift_task_alloc();
      *(v0 + 408) = v53;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
      *v53 = v0;
      v55 = sub_1E5C62514;
      goto LABEL_18;
    }

    sub_1E5C5AD88(v0 + 112, v0 + 176);
    sub_1E5C5AD88(v0 + 128, v0 + 192);

    sub_1E5C67D04();
    v7 = swift_allocError();
    swift_willThrow();
  }

  *(v0 + 416) = v7;
  v8 = *(v0 + 336);
  v9 = *(v0 + 320);
  *(v0 + 208) = v7;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 368);

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 232);
    v13 = sub_1E5C9BD40();
    __swift_project_value_buffer(v13, qword_1ED065C70);

    v14 = sub_1E5C9BD20();
    v15 = sub_1E5C9CDB0();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 224);
      v16 = *(v0 + 232);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v71[0] = v19;
      *v18 = 141558275;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      *(v18 + 14) = sub_1E5C58D60(v17, v16, v71);
      _os_log_impl(&dword_1E5C20000, v14, v15, "[Cancellation] Suggestions for %{private,mask.hash}s", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E693A130](v19, -1, -1);
      MEMORY[0x1E693A130](v18, -1, -1);
    }

    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    v20 = *(v0 + 352);
    v21 = *(v0 + 336);
    v22 = *(v0 + 312);

    v23 = *(v0 + 8);

    return v23();
  }

  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 232);
  v26 = sub_1E5C9BD40();
  __swift_project_value_buffer(v26, qword_1ED065C70);
  v27 = v7;

  v28 = sub_1E5C9BD20();
  v29 = sub_1E5C9CDC0();

  if (os_log_type_enabled(v28, v29))
  {
    v31 = *(v0 + 224);
    v30 = *(v0 + 232);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v71[0] = v34;
    *v32 = 141558531;
    *(v32 + 4) = 1752392040;
    *(v32 + 12) = 2081;
    *(v32 + 14) = sub_1E5C58D60(v31, v30, v71);
    *(v32 + 22) = 2112;
    v35 = v7;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 24) = v36;
    *v33 = v36;
    _os_log_impl(&dword_1E5C20000, v28, v29, "Failed to fetch suggestions for %{private,mask.hash}s: %@", v32, 0x20u);
    sub_1E5C3177C(v33, &qword_1ED054A70, &qword_1E5CA17D0);
    MEMORY[0x1E693A130](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E693A130](v34, -1, -1);
    MEMORY[0x1E693A130](v32, -1, -1);
  }

  v37 = *(v0 + 352);
  v39 = *(v0 + 304);
  v38 = *(v0 + 312);
  v41 = *(v0 + 288);
  v40 = *(v0 + 296);
  v42 = *(v0 + 280);
  v67 = *(v0 + 248);
  v68 = *(v0 + 264);
  v43 = *(v0 + 432);
  v44 = *(v0 + 232);
  v69 = *(v0 + 344);
  v70 = *(v0 + 240);
  v45 = *(v0 + 224);
  sub_1E5C9BB90();
  v46 = (v38 + v40[5]);
  *v46 = 0;
  v46[1] = 0;
  v47 = (v38 + v40[6]);
  *v47 = v45;
  v47[1] = v44;
  *(v38 + v40[7]) = 0;
  v48 = (v38 + v40[8]);
  *v48 = v45;
  v48[1] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B48, &qword_1E5CA5260);
  v49 = *(v39 + 72);
  v50 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1E5CA12B0;
  sub_1E5C5A8B4(v38, v51 + v50, type metadata accessor for SearchHint);
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = v51;
  *(v37 + 24) = v45;
  *(v37 + 32) = v44;
  *(v37 + 40) = v43;
  *(v37 + 48) = v67;
  *(v37 + 64) = v68;
  *(v37 + 80) = v42;
  *(v37 + 88) = v41;
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  sub_1E5C5AD2C(v70, v0 + 16);
  v52 = *(MEMORY[0x1E6999AF0] + 4);
  v53 = swift_task_alloc();
  *(v0 + 424) = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v53 = v0;
  v55 = sub_1E5C626F0;
LABEL_18:
  v53[1] = v55;
  v65 = *(v0 + 352);
  v66 = *(v0 + 216);

  return MEMORY[0x1EEE01A40](v65, v54);
}

uint64_t sub_1E5C62514()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 352);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 400);
  v5 = *(v1 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1E5C6266C, v5, v4);
}

uint64_t sub_1E5C6266C()
{
  v1 = v0[46];

  v2 = v0[44];
  v3 = v0[42];
  v4 = v0[39];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5C626F0()
{
  v1 = *(*v0 + 424);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v8 = *v0;

  sub_1E5C66FC0(v4, type metadata accessor for SearchAction);
  v6 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C62864, v6, v5);
}

uint64_t sub_1E5C62864()
{
  v1 = v0[52];
  v2 = v0[46];

  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[39];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5C628F4()
{
  v56 = v0;
  v1 = *(v0 + 384);
  *(v0 + 208) = v1;
  *(v0 + 416) = v1;
  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF8, &qword_1E5CA1CD8);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 368);

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 232);
    v7 = sub_1E5C9BD40();
    __swift_project_value_buffer(v7, qword_1ED065C70);

    v8 = sub_1E5C9BD20();
    v9 = sub_1E5C9CDB0();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 224);
      v10 = *(v0 + 232);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v55 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_1E5C58D60(v11, v10, &v55);
      _os_log_impl(&dword_1E5C20000, v8, v9, "[Cancellation] Suggestions for %{private,mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E693A130](v13, -1, -1);
      MEMORY[0x1E693A130](v12, -1, -1);
    }

    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    v14 = *(v0 + 352);
    v15 = *(v0 + 336);
    v16 = *(v0 + 312);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {

    if (qword_1ED053E00 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 232);
    v20 = sub_1E5C9BD40();
    __swift_project_value_buffer(v20, qword_1ED065C70);
    v21 = v1;

    v22 = sub_1E5C9BD20();
    v23 = sub_1E5C9CDC0();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = *(v0 + 224);
      v24 = *(v0 + 232);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v26 = 141558531;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      *(v26 + 14) = sub_1E5C58D60(v25, v24, &v55);
      *(v26 + 22) = 2112;
      v29 = v1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v30;
      *v27 = v30;
      _os_log_impl(&dword_1E5C20000, v22, v23, "Failed to fetch suggestions for %{private,mask.hash}s: %@", v26, 0x20u);
      sub_1E5C3177C(v27, &qword_1ED054A70, &qword_1E5CA17D0);
      MEMORY[0x1E693A130](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E693A130](v28, -1, -1);
      MEMORY[0x1E693A130](v26, -1, -1);
    }

    v31 = *(v0 + 352);
    v33 = *(v0 + 304);
    v32 = *(v0 + 312);
    v35 = *(v0 + 288);
    v34 = *(v0 + 296);
    v36 = *(v0 + 280);
    v51 = *(v0 + 248);
    v52 = *(v0 + 264);
    v37 = *(v0 + 432);
    v38 = *(v0 + 232);
    v53 = *(v0 + 344);
    v54 = *(v0 + 240);
    v39 = *(v0 + 224);
    sub_1E5C9BB90();
    v40 = (v32 + v34[5]);
    *v40 = 0;
    v40[1] = 0;
    v41 = (v32 + v34[6]);
    *v41 = v39;
    v41[1] = v38;
    *(v32 + v34[7]) = 0;
    v42 = (v32 + v34[8]);
    *v42 = v39;
    v42[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B48, &qword_1E5CA5260);
    v43 = *(v33 + 72);
    v44 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1E5CA12B0;
    sub_1E5C5A8B4(v32, v45 + v44, type metadata accessor for SearchHint);
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = v45;
    *(v31 + 24) = v39;
    *(v31 + 32) = v38;
    *(v31 + 40) = v37;
    *(v31 + 48) = v51;
    *(v31 + 64) = v52;
    *(v31 + 80) = v36;
    *(v31 + 88) = v35;
    swift_storeEnumTagMultiPayload();
    swift_bridgeObjectRetain_n();
    sub_1E5C5AD2C(v54, v0 + 16);
    v46 = *(MEMORY[0x1E6999AF0] + 4);
    v47 = swift_task_alloc();
    *(v0 + 424) = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v47 = v0;
    v47[1] = sub_1E5C626F0;
    v49 = *(v0 + 352);
    v50 = *(v0 + 216);

    return MEMORY[0x1EEE01A40](v49, v48);
  }
}

uint64_t sub_1E5C62E74(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for SearchAction();
  v2[3] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = sub_1E5C9CD60();
  v2[6] = sub_1E5C9CD50();
  v6 = *(a2 + 56);
  v10 = (*(a2 + 48) + **(a2 + 48));
  v7 = *(*(a2 + 48) + 4);
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1E5C62FB0;

  return v10();
}

uint64_t sub_1E5C62FB0(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;
  v5[8] = v1;

  v8 = v5[6];
  v9 = v5[5];
  if (v3)
  {
    v10 = sub_1E5C9CD10();
    v12 = v11;
    v13 = sub_1E5C58BA0;
    v14 = v10;
    v15 = v12;
  }

  else
  {
    v5[9] = a1;
    v16 = sub_1E5C9CD10();
    v15 = v17;
    v5[10] = v16;
    v5[11] = v17;
    v13 = sub_1E5C63140;
    v14 = v16;
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E5C63140()
{
  v1 = *(v0 + 24);
  **(v0 + 32) = *(v0 + 72);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x1E6999AF0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
  *v3 = v0;
  v3[1] = sub_1E5C63208;
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE01A40](v5, v4);
}

uint64_t sub_1E5C63208()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E5C58B34, v5, v4);
}

uint64_t sub_1E5C63360(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_1E5C9CD60();
  *(v2 + 112) = sub_1E5C9CD50();
  v4 = *(a2 + 128);
  v5 = *(a2 + 136);
  *(v2 + 120) = *(a2 + 208);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_1E5C63478;

  return v9(v2 + 56);
}

uint64_t sub_1E5C63478()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_1E5C9CD10();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_1E5C63A1C;
  }

  else
  {
    v9 = sub_1E5C635D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5C635D8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5C9CDA0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_1E5C9CD50();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_1E5C637B0;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 12, v7, v11);
}

uint64_t sub_1E5C637B0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x1EEE6DFA0](sub_1E5C638C4, v6, v7);
  }

  return result;
}

uint64_t sub_1E5C638C4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_1E5C9CD50();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x1E69E85B0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_1E5C637B0;
    v7 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E5C63A1C()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_1E5C63A80(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = sub_1E5C9CD60();
  *(v2 + 112) = sub_1E5C9CD50();
  v4 = *(a2 + 176);
  v5 = *(a2 + 184);
  *(v2 + 120) = *(a2 + 208);
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v2 + 136) = v7;
  *v7 = v2;
  v7[1] = sub_1E5C63B98;

  return v9(v2 + 56);
}

uint64_t sub_1E5C63B98()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v11 = *v1;
  v3[18] = v2;

  v8 = sub_1E5C9CD10();
  v3[19] = v8;
  v3[20] = v7;
  if (v2)
  {
    v9 = sub_1E5C67E0C;
  }

  else
  {
    v9 = sub_1E5C63CF8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E5C63CF8()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5C9CDA0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_1E5C9CD50();
  v0[21] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_1E5C63ED0;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 12, v7, v11);
}

uint64_t sub_1E5C63ED0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[21];

    v6 = v2[19];
    v7 = v2[20];

    return MEMORY[0x1EEE6DFA0](sub_1E5C63FE4, v6, v7);
  }

  return result;
}

uint64_t sub_1E5C63FE4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 96));

    v2 = *(v0 + 104);
    v3 = sub_1E5C9CD50();
    *(v0 + 168) = v3;
    v4 = *(v0 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v5 = *(MEMORY[0x1E69E85B0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 176) = v6;
    *v6 = v0;
    v6[1] = sub_1E5C63ED0;
    v7 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v0 + 96, v3, v7);
  }

  else
  {
    v8 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E5C6413C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for SearchAction();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B08, &qword_1E5CA1CF8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1E5C9CE00();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_1E5C9CD60();
  v2[12] = sub_1E5C9CD50();
  v10 = sub_1E5C9CD10();
  v2[13] = v10;
  v2[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5C6429C, v10, v9);
}

uint64_t sub_1E5C6429C()
{
  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5C9BD40();
  __swift_project_value_buffer(v1, qword_1ED065C70);
  v2 = sub_1E5C9BD20();
  v3 = sub_1E5C9CDB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5C20000, v2, v3, "[Dictation] Dictation monitoring", v4, 2u);
    MEMORY[0x1E693A130](v4, -1, -1);
  }

  v5 = *(v0 + 32);

  v6 = *(v5 + 152);
  v10 = (*(v5 + 144) + **(v5 + 144));
  v7 = *(*(v5 + 144) + 4);
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_1E5C64444;

  return v10();
}

uint64_t sub_1E5C64444(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E5C6456C, v5, v4);
}

uint64_t sub_1E5C6456C()
{
  v1 = v0[16];
  v2 = v0[10];
  sub_1E5C9CDF0();
  v3 = v0[11];
  v0[17] = sub_1E5C9CD50();
  v4 = sub_1E5C5AEF0(&qword_1ED054B10, MEMORY[0x1E6969EF8]);
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_1E5C6465C;
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1E5C6465C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E5C9CD10();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1E5C58368;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E5C9CD10();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1E5C647F4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1E5C647F4()
{
  v1 = v0[17];

  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1E5C64858, v2, v3);
}

uint64_t sub_1E5C64858()
{
  v1 = v0[7];
  v2 = sub_1E5C9BA40();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[12];
    v4 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    swift_storeEnumTagMultiPayload();
    v9 = *(MEMORY[0x1E6999AF0] + 4);
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v10 = v0;
    v10[1] = sub_1E5C649E4;
    v12 = v0[6];
    v13 = v0[3];

    return MEMORY[0x1EEE01A40](v12, v11);
  }
}

uint64_t sub_1E5C649E4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 48);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E5C64B3C, v5, v4);
}

uint64_t sub_1E5C64B3C()
{
  sub_1E5C3177C(v0[7], &qword_1ED054B08, &qword_1E5CA1CF8);
  v1 = v0[11];
  v0[17] = sub_1E5C9CD50();
  v2 = sub_1E5C5AEF0(&qword_1ED054B10, MEMORY[0x1E6969EF8]);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1E5C6465C;
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];

  return MEMORY[0x1EEE6D8C8](v6, v7, v2);
}

uint64_t sub_1E5C64C38(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for SearchAction();
  v2[16] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = sub_1E5C9CD60();
  v2[19] = sub_1E5C9CD50();
  v6 = sub_1E5C9CD10();
  v2[20] = v6;
  v2[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E5C64D04, v6, v5);
}

uint64_t sub_1E5C64D04()
{
  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1E5C9BD40();
  __swift_project_value_buffer(v1, qword_1ED065C70);
  v2 = sub_1E5C9BD20();
  v3 = sub_1E5C9CDB0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5C20000, v2, v3, "[AppIntent] Search event monitoring", v4, 2u);
    MEMORY[0x1E693A130](v4, -1, -1);
  }

  v5 = *(v0 + 120);

  v6 = *(v5 + 168);
  v10 = (*(v5 + 160) + **(v5 + 160));
  v7 = *(*(v5 + 160) + 4);
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_1E5C64EB4;

  return v10(v0 + 56);
}

uint64_t sub_1E5C64EB4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E5C64FD4, v4, v3);
}

uint64_t sub_1E5C64FD4()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5C9CDA0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[18];
  v7 = sub_1E5C9CD50();
  v0[23] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_1E5C651AC;
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 12, v7, v11);
}

uint64_t sub_1E5C651AC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[23];

    v6 = v2[20];
    v7 = v2[21];

    return MEMORY[0x1EEE6DFA0](sub_1E5C652C0, v6, v7);
  }

  return result;
}

uint64_t sub_1E5C652C0()
{
  v1 = v0[13];
  if (v1 == 1)
  {
    v8 = v0[19];
    v9 = v0[17];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v10 = v0[1];

    return v10();
  }

  else if (v1)
  {
    v12 = v0[16];
    v11 = v0[17];
    *v11 = v0[12];
    v11[1] = v1;
    swift_storeEnumTagMultiPayload();
    v13 = *(MEMORY[0x1E6999AF0] + 4);
    v14 = swift_task_alloc();
    v0[25] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AF0, "ޅ");
    *v14 = v0;
    v14[1] = sub_1E5C654BC;
    v16 = v0[17];
    v17 = v0[14];

    return MEMORY[0x1EEE01A40](v16, v15);
  }

  else
  {
    v2 = v0[18];
    v3 = sub_1E5C9CD50();
    v0[23] = v3;
    v4 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    v5 = *(MEMORY[0x1E69E85B0] + 4);
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_1E5C651AC;
    v7 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v0 + 12, v3, v7);
  }
}

uint64_t sub_1E5C654BC()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 136);
  v7 = *v0;

  sub_1E5C66FC0(v3, type metadata accessor for SearchAction);
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E5C65614, v5, v4);
}

uint64_t sub_1E5C65614()
{
  v1 = v0[18];
  v2 = sub_1E5C9CD50();
  v0[23] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x1E69E85B0] + 4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1E5C651AC;
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 12, v2, v6);
}

uint64_t sub_1E5C656F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C62E74(a1, v1 + 16);
}

uint64_t sub_1E5C657C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4DFC4;

  return sub_1E5C63360(a1, v1 + 16);
}

uint64_t sub_1E5C65860(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C63A80(a1, v1 + 16);
}

uint64_t sub_1E5C658F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C6413C(a1, v1 + 16);
}

uint64_t sub_1E5C65990(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C64C38(a1, v1 + 16);
}

uint64_t sub_1E5C65A28(uint64_t a1)
{
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5C4E86C;

  return sub_1E5C61A78(a1, v1 + 16, v4, v5, v1 + 256);
}

uint64_t sub_1E5C65AD8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C4DA14(a1, v1 + 16);
}

uint64_t sub_1E5C65B70(void **a1)
{
  v2 = *(type metadata accessor for SearchHistoryItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E5C67628(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E5C65C18(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E5C65C18(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E5C9D040();
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
        type metadata accessor for SearchHistoryItem();
        v6 = sub_1E5C9CCF0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SearchHistoryItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E5C65FA8(v8, v9, a1, v4);
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
    return sub_1E5C65D44(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E5C65D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SearchHistoryItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1E5C67C9C(v24, v18, type metadata accessor for SearchHistoryItem);
      sub_1E5C67C9C(v21, v14, type metadata accessor for SearchHistoryItem);
      v25 = *(v8 + 20);
      v26 = sub_1E5C9BB40();
      sub_1E5C66FC0(v14, type metadata accessor for SearchHistoryItem);
      result = sub_1E5C66FC0(v18, type metadata accessor for SearchHistoryItem);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1E5C5A8B4(v24, v37, type metadata accessor for SearchHistoryItem);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1E5C5A8B4(v27, v21, type metadata accessor for SearchHistoryItem);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C65FA8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for SearchHistoryItem();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v119 = &v104 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v120 = &v104 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_1E5C6690C(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1E5C66EC8(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_1E5C66E3C(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_1E5C66EC8(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_1E5C67C9C(v114 + v25 * v24, v19, type metadata accessor for SearchHistoryItem);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_1E5C67C9C(v27, v120, type metadata accessor for SearchHistoryItem);
      v30 = *(v9 + 20);
      LODWORD(v115) = sub_1E5C9BB40();
      sub_1E5C66FC0(v29, type metadata accessor for SearchHistoryItem);
      result = sub_1E5C66FC0(v19, type metadata accessor for SearchHistoryItem);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_1E5C67C9C(v32, v19, type metadata accessor for SearchHistoryItem);
        v33 = v120;
        sub_1E5C67C9C(v5, v120, type metadata accessor for SearchHistoryItem);
        v34 = *(v121 + 20);
        v35 = sub_1E5C9BB40() & 1;
        sub_1E5C66FC0(v33, type metadata accessor for SearchHistoryItem);
        result = sub_1E5C66FC0(v19, type metadata accessor for SearchHistoryItem);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_1E5C5A8B4(v42 + v41, v111, type metadata accessor for SearchHistoryItem);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1E5C5A8B4(v111, v42 + v36, type metadata accessor for SearchHistoryItem);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_1E5C67C9C(v5, v19, type metadata accessor for SearchHistoryItem);
    v96 = v120;
    sub_1E5C67C9C(v93, v120, type metadata accessor for SearchHistoryItem);
    v97 = *(v9 + 20);
    a4 = sub_1E5C9BB40();
    sub_1E5C66FC0(v96, type metadata accessor for SearchHistoryItem);
    result = sub_1E5C66FC0(v19, type metadata accessor for SearchHistoryItem);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_1E5C4E4D0(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_1E5C4E4D0((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_1E5C6690C(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1E5C66EC8(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_1E5C66E3C(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for SearchHistoryItem;
    v98 = v119;
    sub_1E5C5A8B4(v5, v119, type metadata accessor for SearchHistoryItem);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_1E5C5A8B4(v98, v93, type metadata accessor for SearchHistoryItem);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}