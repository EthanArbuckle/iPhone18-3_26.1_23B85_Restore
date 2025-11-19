uint64_t sub_255D82F34(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a2 + 56) + 8 * v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = *(a1 + 48);
      v20[2] = *(a1 + 32);
      v20[3] = v18;
      v21 = *(a1 + 64);
      v22 = v17;
      v19 = *(a1 + 16);
      v20[0] = *a1;
      v20[1] = v19;
      sub_255E3A578();

      DecodableState.hash(into:)(v20);

      result = sub_255E3ADD8();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x259C4F100](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s6LiftUI14DecodableStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if (v3 >> 61 != 4)
        {
          goto LABEL_28;
        }

        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_255D7DD14(v6, v7);
      }

      else
      {
        if (v3 >> 61 != 5)
        {
          goto LABEL_28;
        }

        v12 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v8 = sub_255D7DF20(v12, v13);
      }

      v14 = v8;

      return v14 & 1;
    }

    if (v3 >> 61 == 3)
    {
      v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
      return v11 & 1;
    }

LABEL_28:
    v11 = 0;
    return v11 & 1;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 61 == 1)
      {
        v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        goto LABEL_22;
      }
    }

    else if (v3 >> 61 == 2)
    {
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_22:
      v11 = v5;
      return v11 & 1;
    }

    goto LABEL_28;
  }

  if (v3 >> 61)
  {
    goto LABEL_28;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
    v11 = 1;
    return v11 & 1;
  }

  return sub_255E3AC68();
}

uint64_t sub_255D83298(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *a1;
  result = (*(v6 + 16))(&v8);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_255D832F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6160, &unk_255E4DBA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255D83344(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return (*(v3 + 16))(&v5);
}

uint64_t sub_255D83388(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 >> 61 != 5)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v512 = v2;
    v512[1] = v6;
    swift_willThrow();

    return v6;
  }

  v3 = v1;
  v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  v5 = sub_255E3AB08();
  v6 = v5;
  v635 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v642 = v5 + 64;

  v11 = 0;
  v637 = v6;
  v643 = v4;
  v641 = v10;
  if (!v9)
  {
LABEL_7:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        v6 = sub_255E3A408();

        return v6;
      }

      v14 = *(v635 + 8 * v11);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v644 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_560;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v644 = (v9 - 1) & v9;
LABEL_12:
    v15 = v12 | (v11 << 6);
    v16 = (*(v4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(v4 + 56) + 8 * v15);
    v20 = v19 >> 61;
    v645 = v11;
    v646 = v17;
    if ((v19 >> 61) <= 2)
    {
      if (v20)
      {
        v21 = v19 & 0x1FFFFFFFFFFFFFFFLL;
        if (v20 == 1)
        {
          v22 = *(v21 + 16);
          v673 = MEMORY[0x277D83B88];
          *&v672 = v22;
        }

        else
        {
          v273 = *(v21 + 16);
          v673 = MEMORY[0x277D839F8];
          *&v672 = v273;
        }
      }

      else
      {
        v269 = v15;
        v270 = *(v19 + 16);
        v271 = *(v19 + 24);
        v673 = MEMORY[0x277D837D0];
        *&v672 = v270;
        *(&v672 + 1) = v271;

        v15 = v269;
      }

      goto LABEL_282;
    }

    if (v20 == 3)
    {
      v272 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v673 = MEMORY[0x277D839B0];
      LOBYTE(v672) = v272;
LABEL_282:

      goto LABEL_283;
    }

    v636 = v18;
    v604 = v15;
    if (v20 != 4)
    {
      v277 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v278 = sub_255E3AB08();
      v6 = v637;
      v279 = v278;
      v585 = v277 + 64;
      v280 = 1 << *(v277 + 32);
      if (v280 < 64)
      {
        v281 = ~(-1 << v280);
      }

      else
      {
        v281 = -1;
      }

      v639 = v281 & *(v277 + 64);
      v580 = (v280 + 63) >> 6;
      v606 = v278 + 64;

      v621 = v277;

      v282 = 0;
      v624 = v279;
      v283 = v639;
      if (v639)
      {
LABEL_290:
        v284 = __clz(__rbit64(v283));
        v285 = (v283 - 1) & v283;
        goto LABEL_296;
      }

LABEL_291:
      v286 = v282;
      while (1)
      {
        v282 = v286 + 1;
        if (__OFADD__(v286, 1))
        {
          __break(1u);
          goto LABEL_563;
        }

        if (v282 >= v580)
        {
          break;
        }

        v287 = *(v585 + 8 * v282);
        ++v286;
        if (v287)
        {
          v284 = __clz(__rbit64(v287));
          v285 = (v287 - 1) & v287;
LABEL_296:
          v288 = v284 | (v282 << 6);
          v289 = (*(v621 + 48) + 16 * v288);
          v290 = *v289;
          v291 = v289[1];
          v292 = *(*(v621 + 56) + 8 * v288);
          v293 = v292 >> 61;
          v626 = v282;
          v628 = v290;
          v640 = v285;
          v634 = v288;
          if ((v292 >> 61) > 2)
          {
            if (v293 == 3)
            {
              v407 = *((v292 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v671 = MEMORY[0x277D839B0];
              LOBYTE(v670) = v407;
              goto LABEL_424;
            }

            v560 = v291;
            if (v293 == 4)
            {
              v296 = *((v292 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v297 = *(v296 + 16);
              if (v297)
              {
                v674 = MEMORY[0x277D84F90];

                result = sub_255D8077C(v297);
                v298 = 0;
                v602 = v296 + 32;
                v550 = v296;
                v541 = v297;
                do
                {
                  if (v298 >= *(v296 + 16))
                  {
                    goto LABEL_587;
                  }

                  v299 = *(v602 + 8 * v298);
                  v300 = v299 >> 61;
                  if ((v299 >> 61) > 2)
                  {
                    if (v300 == 3)
                    {
                      v346 = *((v299 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v669 = MEMORY[0x277D839B0];
                      LOBYTE(v668) = v346;
                    }

                    else
                    {
                      v610 = v298;
                      if (v300 == 4)
                      {
                        v303 = *((v299 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v304 = *(v303 + 16);
                        if (v304)
                        {
                          v660 = MEMORY[0x277D84F90];

                          v590 = v304;
                          result = sub_255D8077C(v304);
                          v305 = 0;
                          v597 = v303 + 32;
                          v544 = v303;
                          do
                          {
                            if (v305 >= *(v303 + 16))
                            {
                              goto LABEL_588;
                            }

                            v306 = *(v597 + 8 * v305);
                            v307 = v306 >> 61;
                            v614 = v305;
                            if ((v306 >> 61) > 2)
                            {
                              if (v307 == 3)
                              {
                                v319 = *((v306 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v667 = MEMORY[0x277D839B0];
                                LOBYTE(v666) = v319;
                              }

                              else
                              {
                                if (v307 == 4)
                                {
                                  v310 = *((v306 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                  v311 = *(v310 + 16);
                                  if (v311)
                                  {
                                    v654 = MEMORY[0x277D84F90];

                                    result = sub_255D8077C(v311);
                                    v312 = 0;
                                    while (1)
                                    {
                                      if (v312 >= *(v310 + 16))
                                      {
                                        goto LABEL_580;
                                      }

                                      v313 = *(v310 + 8 * v312 + 32);

                                      sub_255D7D920(v665);
                                      if (v3)
                                      {
                                        break;
                                      }

                                      v314 = v654;
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        sub_255DE5CE0(0, *(v654 + 16) + 1, 1);
                                        v314 = v654;
                                      }

                                      v316 = *(v314 + 16);
                                      v315 = *(v314 + 24);
                                      if (v316 >= v315 >> 1)
                                      {
                                        sub_255DE5CE0((v315 > 1), v316 + 1, 1);
                                        v314 = v654;
                                      }

                                      ++v312;
                                      *(v314 + 16) = v316 + 1;
                                      result = sub_255D31B4C(v665, (v314 + 32 * v316 + 32));
                                      if (v311 == v312)
                                      {

                                        goto LABEL_349;
                                      }
                                    }

                                    goto LABEL_547;
                                  }

                                  v314 = MEMORY[0x277D84F90];
LABEL_349:
                                  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                                  *&v666 = v314;
                                }

                                else
                                {
                                  v321 = *((v306 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                  v322 = sub_255E3AB08();
                                  v323 = v321 + 64;
                                  v324 = 1 << *(v321 + 32);
                                  if (v324 < 64)
                                  {
                                    v325 = ~(-1 << v324);
                                  }

                                  else
                                  {
                                    v325 = -1;
                                  }

                                  v326 = v325 & *(v321 + 64);
                                  v327 = (v324 + 63) >> 6;
                                  v564 = v322;
                                  v555 = v322 + 64;

                                  v570 = v321;

                                  v328 = 0;
                                  if (v326)
                                  {
LABEL_337:
                                    v329 = v3;
                                    v330 = __clz(__rbit64(v326));
                                    v326 &= v326 - 1;
                                    goto LABEL_343;
                                  }

LABEL_338:
                                  v331 = v328;
                                  while (1)
                                  {
                                    v328 = v331 + 1;
                                    if (__OFADD__(v331, 1))
                                    {
                                      goto LABEL_568;
                                    }

                                    if (v328 >= v327)
                                    {
                                      break;
                                    }

                                    v332 = *(v323 + 8 * v328);
                                    ++v331;
                                    if (v332)
                                    {
                                      v329 = v3;
                                      v330 = __clz(__rbit64(v332));
                                      v326 = (v332 - 1) & v332;
LABEL_343:
                                      v333 = v330 | (v328 << 6);
                                      v334 = (*(v570 + 48) + 16 * v333);
                                      v336 = *v334;
                                      v335 = v334[1];
                                      v655 = *(*(v570 + 56) + 8 * v333);

                                      sub_255D7D920(v665);
                                      if (!v329)
                                      {

                                        *(v555 + ((v333 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v333;
                                        v337 = (v564[6] + 16 * v333);
                                        *v337 = v336;
                                        v337[1] = v335;
                                        result = sub_255D31B4C(v665, (v564[7] + 32 * v333));
                                        v338 = v564[2];
                                        v74 = __OFADD__(v338, 1);
                                        v339 = v338 + 1;
                                        if (v74)
                                        {
                                          goto LABEL_597;
                                        }

                                        v564[2] = v339;
                                        v3 = 0;
                                        v4 = v643;
                                        if (v326)
                                        {
                                          goto LABEL_337;
                                        }

                                        goto LABEL_338;
                                      }

LABEL_547:

LABEL_548:
                                      v6 = v674;

                                      goto LABEL_553;
                                    }
                                  }

                                  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                                  *&v666 = v564;
                                }

                                v303 = v544;
                                v296 = v550;
                                v297 = v541;
                                v298 = v610;
                              }
                            }

                            else if (v307)
                            {
                              v308 = v306 & 0x1FFFFFFFFFFFFFFFLL;
                              if (v307 == 1)
                              {
                                v309 = *(v308 + 16);
                                v667 = MEMORY[0x277D83B88];
                                *&v666 = v309;
                              }

                              else
                              {
                                v320 = *(v308 + 16);
                                v667 = MEMORY[0x277D839F8];
                                *&v666 = v320;
                              }
                            }

                            else
                            {
                              v318 = *(v306 + 16);
                              v317 = *(v306 + 24);
                              v667 = MEMORY[0x277D837D0];
                              *&v666 = v318;
                              *(&v666 + 1) = v317;
                            }

                            v340 = v660;
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              sub_255DE5CE0(0, *(v660 + 16) + 1, 1);
                              v340 = v660;
                            }

                            v342 = *(v340 + 16);
                            v341 = *(v340 + 24);
                            if (v342 >= v341 >> 1)
                            {
                              sub_255DE5CE0((v341 > 1), v342 + 1, 1);
                              v340 = v660;
                            }

                            *(v340 + 16) = v342 + 1;
                            v343 = v340 + 32 * v342;
                            v305 = v614 + 1;
                            result = sub_255D31B4C(&v666, (v343 + 32));
                          }

                          while (v614 + 1 != v590);
                        }

                        else
                        {

                          v340 = MEMORY[0x277D84F90];
                        }

                        v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                        *&v668 = v340;
                      }

                      else
                      {
                        v348 = v299 & 0x1FFFFFFFFFFFFFFFLL;
                        v349 = *((v299 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                        v350 = sub_255E3AB08();
                        v351 = v350;
                        v527 = v349 + 64;
                        v352 = 1 << *(v349 + 32);
                        if (v352 < 64)
                        {
                          v353 = ~(-1 << v352);
                        }

                        else
                        {
                          v353 = -1;
                        }

                        v354 = v353 & *(v349 + 64);
                        v355 = (v352 + 63) >> 6;
                        v571 = v350 + 64;

                        v356 = 0;
                        v556 = v349;
                        v545 = v355;
                        v530 = v351;
                        if (v354)
                        {
LABEL_364:
                          v357 = __clz(__rbit64(v354));
                          v358 = (v354 - 1) & v354;
                          goto LABEL_370;
                        }

LABEL_365:
                        v359 = v356;
                        while (1)
                        {
                          v356 = v359 + 1;
                          if (__OFADD__(v359, 1))
                          {
                            goto LABEL_570;
                          }

                          if (v356 >= v355)
                          {
                            break;
                          }

                          v360 = *(v527 + 8 * v356);
                          ++v359;
                          if (v360)
                          {
                            v357 = __clz(__rbit64(v360));
                            v358 = (v360 - 1) & v360;
LABEL_370:
                            v361 = v357 | (v356 << 6);
                            v362 = (*(v349 + 48) + 16 * v361);
                            v363 = v362[1];
                            v591 = v358;
                            v598 = *v362;
                            v364 = *(*(v349 + 56) + 8 * v361);
                            v365 = v364 >> 61;
                            v615 = v361;
                            if ((v364 >> 61) > 2)
                            {
                              if (v365 == 3)
                              {
                                v379 = *((v364 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v667 = MEMORY[0x277D839B0];
                                LOBYTE(v666) = v379;
                                goto LABEL_390;
                              }

                              v521 = v363;
                              if (v365 == 4)
                              {
                                v368 = *((v364 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v369 = *(v368 + 16);
                                if (v369)
                                {
                                  v518 = v348;
                                  v661 = MEMORY[0x277D84F90];

                                  result = sub_255D8077C(v369);
                                  v370 = 0;
                                  do
                                  {
                                    if (v370 >= *(v368 + 16))
                                    {
                                      goto LABEL_589;
                                    }

                                    v371 = v369;
                                    v372 = *(v368 + 8 * v370 + 32);

                                    sub_255D7D920(v665);
                                    if (v3)
                                    {

                                      goto LABEL_547;
                                    }

                                    v373 = v661;
                                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                    {
                                      sub_255DE5CE0(0, *(v661 + 16) + 1, 1);
                                      v373 = v661;
                                    }

                                    v375 = *(v373 + 16);
                                    v374 = *(v373 + 24);
                                    if (v375 >= v374 >> 1)
                                    {
                                      sub_255DE5CE0((v374 > 1), v375 + 1, 1);
                                      v373 = v661;
                                    }

                                    ++v370;
                                    *(v373 + 16) = v375 + 1;
                                    result = sub_255D31B4C(v665, (v373 + 32 * v375 + 32));
                                    v369 = v371;
                                    v376 = v371 == v370;
                                    v298 = v610;
                                  }

                                  while (!v376);

                                  v348 = v518;
                                }

                                else
                                {

                                  v373 = MEMORY[0x277D84F90];
                                }

                                v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                                *&v666 = v373;
                                v351 = v530;
                                v349 = v556;
                                v355 = v545;
                              }

                              else
                              {
                                v519 = v348;
                                v381 = *((v364 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                                v382 = sub_255E3AB08();
                                v383 = v382;
                                v514 = v381 + 64;
                                v384 = 1 << *(v381 + 32);
                                if (v384 < 64)
                                {
                                  v385 = ~(-1 << v384);
                                }

                                else
                                {
                                  v385 = -1;
                                }

                                v386 = v385 & *(v381 + 64);
                                v387 = (v384 + 63) >> 6;
                                v524 = v382 + 64;

                                v538 = v381;

                                v388 = 0;
                                v533 = v383;
                                if (v386)
                                {
LABEL_395:
                                  v389 = __clz(__rbit64(v386));
                                  v565 = (v386 - 1) & v386;
                                  goto LABEL_401;
                                }

LABEL_396:
                                v390 = v388;
                                v351 = v530;
                                while (1)
                                {
                                  v388 = v390 + 1;
                                  if (__OFADD__(v390, 1))
                                  {
                                    goto LABEL_576;
                                  }

                                  if (v388 >= v387)
                                  {
                                    break;
                                  }

                                  v391 = *(v514 + 8 * v388);
                                  ++v390;
                                  if (v391)
                                  {
                                    v389 = __clz(__rbit64(v391));
                                    v565 = (v391 - 1) & v391;
LABEL_401:
                                    v392 = v389 | (v388 << 6);
                                    v393 = (*(v538 + 48) + 16 * v392);
                                    v394 = *v393;
                                    v395 = v393[1];
                                    v662 = *(*(v538 + 56) + 8 * v392);

                                    sub_255D7D920(v665);
                                    if (!v3)
                                    {

                                      *(v524 + ((v392 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v392;
                                      v396 = (v533[6] + 16 * v392);
                                      *v396 = v394;
                                      v396[1] = v395;
                                      result = sub_255D31B4C(v665, (v533[7] + 32 * v392));
                                      v397 = v533[2];
                                      v74 = __OFADD__(v397, 1);
                                      v398 = v397 + 1;
                                      if (v74)
                                      {
                                        goto LABEL_604;
                                      }

                                      v533[2] = v398;
                                      v298 = v610;
                                      v349 = v556;
                                      v355 = v545;
                                      v386 = v565;
                                      if (v565)
                                      {
                                        goto LABEL_395;
                                      }

                                      goto LABEL_396;
                                    }

LABEL_560:

                                    goto LABEL_548;
                                  }
                                }

                                v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                                *&v666 = v533;
                                v4 = v643;
                                v348 = v519;
                              }

                              v363 = v521;
                            }

                            else if (v365)
                            {
                              v366 = v364 & 0x1FFFFFFFFFFFFFFFLL;
                              if (v365 == 1)
                              {
                                v367 = *(v366 + 16);
                                v667 = MEMORY[0x277D83B88];
                                *&v666 = v367;
                              }

                              else
                              {
                                v380 = *(v366 + 16);
                                v667 = MEMORY[0x277D839F8];
                                *&v666 = v380;
                              }

LABEL_390:
                            }

                            else
                            {
                              v377 = *(v364 + 16);
                              v378 = *(v364 + 24);
                              v667 = MEMORY[0x277D837D0];
                              *&v666 = v377;
                              *(&v666 + 1) = v378;
                            }

                            *(v571 + ((v615 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v615;
                            v399 = (v351[6] + 16 * v615);
                            *v399 = v598;
                            v399[1] = v363;
                            result = sub_255D31B4C(&v666, (v351[7] + 32 * v615));
                            v400 = v351[2];
                            v74 = __OFADD__(v400, 1);
                            v401 = v400 + 1;
                            if (v74)
                            {
                              goto LABEL_599;
                            }

                            v351[2] = v401;
                            v354 = v591;
                            if (v591)
                            {
                              goto LABEL_364;
                            }

                            goto LABEL_365;
                          }
                        }

                        v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                        *&v668 = v351;
                        v296 = v550;
                        v297 = v541;
                      }
                    }
                  }

                  else if (v300)
                  {
                    v301 = v299 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v300 == 1)
                    {
                      v302 = *(v301 + 16);
                      v669 = MEMORY[0x277D83B88];
                      *&v668 = v302;
                    }

                    else
                    {
                      v347 = *(v301 + 16);
                      v669 = MEMORY[0x277D839F8];
                      *&v668 = v347;
                    }
                  }

                  else
                  {
                    v345 = *(v299 + 16);
                    v344 = *(v299 + 24);
                    v669 = MEMORY[0x277D837D0];
                    *&v668 = v345;
                    *(&v668 + 1) = v344;
                  }

                  v402 = v674;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_255DE5CE0(0, v402[2] + 1, 1);
                    v402 = v674;
                  }

                  v404 = v402[2];
                  v403 = v402[3];
                  if (v404 >= v403 >> 1)
                  {
                    sub_255DE5CE0((v403 > 1), v404 + 1, 1);
                    v402 = v674;
                  }

                  ++v298;
                  v402[2] = v404 + 1;
                  result = sub_255D31B4C(&v668, &v402[4 * v404 + 4]);
                }

                while (v298 != v297);
              }

              else
              {

                v402 = MEMORY[0x277D84F90];
              }

              v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

              *&v670 = v402;
              v18 = v636;
              v6 = v637;
            }

            else
            {
              v409 = *((v292 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v410 = sub_255E3AB08();
              v18 = v636;
              v6 = v637;
              v411 = v410;
              v534 = v409 + 64;
              v412 = 1 << *(v409 + 32);
              if (v412 < 64)
              {
                v413 = ~(-1 << v412);
              }

              else
              {
                v413 = -1;
              }

              v414 = v413 & *(v409 + 64);
              v531 = (v412 + 63) >> 6;
              v557 = v410 + 64;

              v592 = v409;

              v415 = 0;
              if (v414)
              {
LABEL_429:
                v416 = __clz(__rbit64(v414));
                v417 = (v414 - 1) & v414;
                goto LABEL_435;
              }

LABEL_430:
              v418 = v415;
              while (1)
              {
                v415 = v418 + 1;
                if (__OFADD__(v418, 1))
                {
                  goto LABEL_567;
                }

                if (v415 >= v531)
                {
                  break;
                }

                v419 = *(v534 + 8 * v415);
                ++v418;
                if (v419)
                {
                  v416 = __clz(__rbit64(v419));
                  v417 = (v419 - 1) & v419;
LABEL_435:
                  v420 = v416 | (v415 << 6);
                  v421 = (*(v592 + 48) + 16 * v420);
                  v422 = v421[1];
                  v611 = *v421;
                  v423 = *(*(v592 + 56) + 8 * v420);
                  v424 = v423 >> 61;
                  v599 = v417;
                  v603 = v420;
                  if ((v423 >> 61) > 2)
                  {
                    if (v424 == 3)
                    {
                      v469 = *((v423 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v669 = MEMORY[0x277D839B0];
                      LOBYTE(v668) = v469;
                      goto LABEL_489;
                    }

                    v522 = v422;
                    if (v424 == 4)
                    {
                      v427 = *((v423 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v428 = *(v427 + 16);
                      if (v428)
                      {
                        v674 = MEMORY[0x277D84F90];
                        v572 = v427;

                        v542 = v428;
                        sub_255D8077C(v428);
                        result = v572;
                        v429 = 0;
                        v551 = v411;
                        do
                        {
                          if (v429 >= *(result + 16))
                          {
                            goto LABEL_594;
                          }

                          v430 = *(v572 + 32 + 8 * v429);
                          v431 = v430 >> 61;
                          v616 = v429;
                          if ((v430 >> 61) > 2)
                          {
                            if (v431 == 3)
                            {
                              v443 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                              v667 = MEMORY[0x277D839B0];
                              LOBYTE(v666) = v443;
                            }

                            else if (v431 == 4)
                            {
                              v434 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                              v435 = *(v434 + 16);
                              if (v435)
                              {
                                v663 = MEMORY[0x277D84F90];

                                result = sub_255D8077C(v435);
                                v436 = 0;
                                while (1)
                                {
                                  if (v436 >= *(v434 + 16))
                                  {
                                    goto LABEL_586;
                                  }

                                  v437 = *(v434 + 8 * v436 + 32);

                                  sub_255D7D920(v665);
                                  if (v3)
                                  {
                                    break;
                                  }

                                  v438 = v663;
                                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                  {
                                    sub_255DE5CE0(0, *(v663 + 16) + 1, 1);
                                    v438 = v663;
                                  }

                                  v440 = *(v438 + 16);
                                  v439 = *(v438 + 24);
                                  if (v440 >= v439 >> 1)
                                  {
                                    sub_255DE5CE0((v439 > 1), v440 + 1, 1);
                                    v438 = v663;
                                  }

                                  ++v436;
                                  *(v438 + 16) = v440 + 1;
                                  result = sub_255D31B4C(v665, (v438 + 32 * v440 + 32));
                                  if (v435 == v436)
                                  {

                                    goto LABEL_479;
                                  }
                                }

                                goto LABEL_558;
                              }

                              v438 = MEMORY[0x277D84F90];
LABEL_479:
                              v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                              *&v666 = v438;
                              v4 = v643;
                            }

                            else
                            {
                              v445 = *((v430 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                              v446 = sub_255E3AB08();
                              v447 = v446;
                              v517 = v445 + 64;
                              v448 = 1 << *(v445 + 32);
                              if (v448 < 64)
                              {
                                v449 = ~(-1 << v448);
                              }

                              else
                              {
                                v449 = -1;
                              }

                              v450 = v449 & *(v445 + 64);
                              v451 = (v448 + 63) >> 6;
                              v525 = v446 + 64;

                              v539 = v445;

                              v452 = 0;
                              v528 = v447;
                              if (v450)
                              {
LABEL_467:
                                v453 = __clz(__rbit64(v450));
                                v566 = (v450 - 1) & v450;
                                goto LABEL_473;
                              }

LABEL_468:
                              v454 = v452;
                              while (1)
                              {
                                v452 = v454 + 1;
                                if (__OFADD__(v454, 1))
                                {
                                  goto LABEL_574;
                                }

                                if (v452 >= v451)
                                {
                                  break;
                                }

                                v455 = *(v517 + 8 * v452);
                                ++v454;
                                if (v455)
                                {
                                  v453 = __clz(__rbit64(v455));
                                  v566 = (v455 - 1) & v455;
LABEL_473:
                                  v456 = v453 | (v452 << 6);
                                  v457 = (*(v539 + 48) + 16 * v456);
                                  v458 = *v457;
                                  v459 = v457[1];
                                  v664 = *(*(v539 + 56) + 8 * v456);

                                  sub_255D7D920(v665);
                                  if (!v3)
                                  {

                                    v447 = v528;
                                    *(v525 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v456;
                                    v460 = (v528[6] + 16 * v456);
                                    *v460 = v458;
                                    v460[1] = v459;
                                    result = sub_255D31B4C(v665, (v528[7] + 32 * v456));
                                    v461 = v528[2];
                                    v74 = __OFADD__(v461, 1);
                                    v462 = v461 + 1;
                                    if (v74)
                                    {
                                      goto LABEL_603;
                                    }

                                    v528[2] = v462;
                                    v4 = v643;
                                    v411 = v551;
                                    v450 = v566;
                                    if (v566)
                                    {
                                      goto LABEL_467;
                                    }

                                    goto LABEL_468;
                                  }

LABEL_558:
                                  v6 = v674;

                                  goto LABEL_553;
                                }
                              }

                              v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                              *&v666 = v447;
                            }
                          }

                          else if (v431)
                          {
                            v432 = v430 & 0x1FFFFFFFFFFFFFFFLL;
                            if (v431 == 1)
                            {
                              v433 = *(v432 + 16);
                              v667 = MEMORY[0x277D83B88];
                              *&v666 = v433;
                            }

                            else
                            {
                              v444 = *(v432 + 16);
                              v667 = MEMORY[0x277D839F8];
                              *&v666 = v444;
                            }
                          }

                          else
                          {
                            v442 = *(v430 + 16);
                            v441 = *(v430 + 24);
                            v667 = MEMORY[0x277D837D0];
                            *&v666 = v442;
                            *(&v666 + 1) = v441;
                          }

                          v463 = v674;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, v463[2] + 1, 1);
                            v463 = v674;
                          }

                          v465 = v463[2];
                          v464 = v463[3];
                          if (v465 >= v464 >> 1)
                          {
                            sub_255DE5CE0((v464 > 1), v465 + 1, 1);
                            v463 = v674;
                          }

                          v463[2] = v465 + 1;
                          v466 = &v463[4 * v465];
                          v429 = v616 + 1;
                          sub_255D31B4C(&v666, v466 + 2);
                          result = v572;
                        }

                        while (v616 + 1 != v542);
                      }

                      else
                      {

                        v463 = MEMORY[0x277D84F90];
                      }

                      v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v668 = v463;
                      v18 = v636;
                      v6 = v637;
                    }

                    else
                    {
                      v552 = v411;
                      v471 = *((v423 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v472 = sub_255E3AB08();
                      v617 = v472;
                      v473 = v471 + 64;
                      v474 = 1 << *(v471 + 32);
                      if (v474 < 64)
                      {
                        v475 = ~(-1 << v474);
                      }

                      else
                      {
                        v475 = -1;
                      }

                      v476 = v475 & *(v471 + 64);
                      v6 = ((v474 + 63) >> 6);
                      v546 = v472 + 64;

                      v477 = 0;
                      v540 = v471;
                      if (v476)
                      {
LABEL_494:
                        v478 = __clz(__rbit64(v476));
                        v476 &= v476 - 1;
                        goto LABEL_500;
                      }

LABEL_495:
                      v479 = v477;
                      v411 = v552;
                      while (1)
                      {
                        v477 = v479 + 1;
                        if (__OFADD__(v479, 1))
                        {
                          goto LABEL_571;
                        }

                        if (v477 >= v6)
                        {
                          break;
                        }

                        v480 = *(v473 + 8 * v477);
                        ++v479;
                        if (v480)
                        {
                          v478 = __clz(__rbit64(v480));
                          v476 = (v480 - 1) & v480;
LABEL_500:
                          v481 = v478 | (v477 << 6);
                          v482 = (*(v471 + 48) + 16 * v481);
                          v483 = *v482;
                          v484 = v482[1];
                          v485 = *(*(v471 + 56) + 8 * v481);
                          v486 = v485 >> 61;
                          v573 = v483;
                          if ((v485 >> 61) <= 2)
                          {
                            if (v486)
                            {
                              v487 = v485 & 0x1FFFFFFFFFFFFFFFLL;
                              if (v486 == 1)
                              {
                                v488 = *(v487 + 16);
                                v667 = MEMORY[0x277D83B88];
                                *&v666 = v488;
                              }

                              else
                              {
                                v499 = *(v487 + 16);
                                v667 = MEMORY[0x277D839F8];
                                *&v666 = v499;
                              }

LABEL_511:
                            }

                            else
                            {
                              v495 = v484;
                              v496 = *(v485 + 16);
                              v497 = *(v485 + 24);
                              v667 = MEMORY[0x277D837D0];
                              *&v666 = v496;
                              *(&v666 + 1) = v497;

                              v484 = v495;
                            }

LABEL_515:
                            *(v546 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v481;
                            v503 = (v617[6] + 16 * v481);
                            *v503 = v573;
                            v503[1] = v484;
                            result = sub_255D31B4C(&v666, (v617[7] + 32 * v481));
                            v504 = v617[2];
                            v74 = __OFADD__(v504, 1);
                            v505 = v504 + 1;
                            if (v74)
                            {
                              goto LABEL_600;
                            }

                            v617[2] = v505;
                            if (v476)
                            {
                              goto LABEL_494;
                            }

                            goto LABEL_495;
                          }

                          if (v486 == 3)
                          {
                            v498 = *((v485 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                            v667 = MEMORY[0x277D839B0];
                            LOBYTE(v666) = v498;
                            goto LABEL_511;
                          }

                          if (v486 == 4)
                          {
                            v489 = *((v485 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                            v491 = sub_255D7C4C8(v490);
                            if (!v3)
                            {
                              v492 = v491;

                              v493 = &qword_27F7E6158;
                              v494 = &unk_255E3BB80;
LABEL_514:
                              v667 = __swift_instantiateConcreteTypeFromMangledNameV2(v493, v494);

                              *&v666 = v492;
                              v471 = v540;
                              goto LABEL_515;
                            }
                          }

                          else
                          {
                            v500 = *((v485 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                            v502 = sub_255D82D74(v501);
                            if (!v3)
                            {
                              v492 = v502;

                              v493 = &qword_27F7E7540;
                              v494 = &qword_255E48B38;
                              goto LABEL_514;
                            }
                          }

LABEL_563:

                          goto LABEL_554;
                        }
                      }

                      v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v668 = v617;
                      v18 = v636;
                      v6 = v637;
                      v4 = v643;
                    }

                    v422 = v522;
                  }

                  else if (v424)
                  {
                    v425 = v423 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v424 == 1)
                    {
                      v426 = *(v425 + 16);
                      v669 = MEMORY[0x277D83B88];
                      *&v668 = v426;
                    }

                    else
                    {
                      v470 = *(v425 + 16);
                      v669 = MEMORY[0x277D839F8];
                      *&v668 = v470;
                    }

LABEL_489:
                  }

                  else
                  {
                    v467 = *(v423 + 16);
                    v468 = *(v423 + 24);
                    v669 = MEMORY[0x277D837D0];
                    *&v668 = v467;
                    *(&v668 + 1) = v468;
                  }

                  *(v557 + ((v603 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v603;
                  v506 = (v411[6] + 16 * v603);
                  *v506 = v611;
                  v506[1] = v422;
                  result = sub_255D31B4C(&v668, (v411[7] + 32 * v603));
                  v507 = v411[2];
                  v74 = __OFADD__(v507, 1);
                  v508 = v507 + 1;
                  if (v74)
                  {
                    goto LABEL_596;
                  }

                  v411[2] = v508;
                  v414 = v599;
                  if (v599)
                  {
                    goto LABEL_429;
                  }

                  goto LABEL_430;
                }
              }

              v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v670 = v411;
            }

            v279 = v624;
            v291 = v560;
          }

          else
          {
            if (v293)
            {
              v294 = v292 & 0x1FFFFFFFFFFFFFFFLL;
              if (v293 == 1)
              {
                v295 = *(v294 + 16);
                v671 = MEMORY[0x277D83B88];
                *&v670 = v295;
              }

              else
              {
                v408 = *(v294 + 16);
                v671 = MEMORY[0x277D839F8];
                *&v670 = v408;
              }
            }

            else
            {
              v405 = *(v292 + 16);
              v406 = *(v292 + 24);
              v671 = MEMORY[0x277D837D0];
              *&v670 = v405;
              *(&v670 + 1) = v406;

              v279 = v624;
            }

LABEL_424:
          }

          *(v606 + ((v634 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v634;
          v509 = (*(v279 + 48) + 16 * v634);
          *v509 = v628;
          v509[1] = v291;
          result = sub_255D31B4C(&v670, (*(v279 + 56) + 32 * v634));
          v279 = v624;
          v510 = *(v624 + 16);
          v74 = __OFADD__(v510, 1);
          v511 = v510 + 1;
          if (v74)
          {
            goto LABEL_585;
          }

          *(v624 + 16) = v511;
          v282 = v626;
          v283 = v640;
          if (v640)
          {
            goto LABEL_290;
          }

          goto LABEL_291;
        }
      }

      v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

      *&v672 = v279;
      v15 = v604;
      goto LABEL_283;
    }

    v23 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v24 = *(v23 + 16);
    if (v24)
    {
      break;
    }

    v263 = MEMORY[0x277D84F90];
LABEL_534:
    v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v672 = v263;
    v18 = v636;
    v6 = v637;
    v15 = v604;
LABEL_283:
    *(v642 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v274 = (v6[6] + 16 * v15);
    *v274 = v646;
    v274[1] = v18;
    result = sub_255D31B4C(&v672, (v6[7] + 32 * v15));
    v275 = v6[2];
    v74 = __OFADD__(v275, 1);
    v276 = v275 + 1;
    if (v74)
    {
      goto LABEL_575;
    }

    v6[2] = v276;
    v10 = v641;
    v9 = v644;
    v11 = v645;
    if (!v644)
    {
      goto LABEL_7;
    }
  }

  v674 = MEMORY[0x277D84F90];

  v625 = v24;
  result = sub_255D8077C(v24);
  v26 = 0;
  v627 = v23 + 32;
  v605 = v23;
  while (1)
  {
    if (v26 >= *(v23 + 16))
    {
      goto LABEL_579;
    }

    v27 = *(v627 + 8 * v26);
    v28 = v27 >> 61;
    v638 = v26;
    if ((v27 >> 61) > 2)
    {
      break;
    }

    if (v28)
    {
      v29 = v27 & 0x1FFFFFFFFFFFFFFFLL;
      if (v28 == 1)
      {
        v30 = *(v29 + 16);
        v671 = MEMORY[0x277D83B88];
        *&v670 = v30;
      }

      else
      {
        v145 = *(v29 + 16);
        v671 = MEMORY[0x277D839F8];
        *&v670 = v145;
      }
    }

    else
    {
      v143 = *(v27 + 16);
      v142 = *(v27 + 24);
      v671 = MEMORY[0x277D837D0];
      *&v670 = v143;
      *(&v670 + 1) = v142;
    }

LABEL_273:
    v263 = v674;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, v263[2] + 1, 1);
      v263 = v674;
    }

    v264 = v638;
    v266 = v263[2];
    v265 = v263[3];
    if (v266 >= v265 >> 1)
    {
      sub_255DE5CE0((v265 > 1), v266 + 1, 1);
      v264 = v638;
      v263 = v674;
    }

    v263[2] = v266 + 1;
    v267 = &v263[4 * v266 + 4];
    v268 = v264 + 1;
    result = sub_255D31B4C(&v670, v267);
    v26 = v268;
    if (v268 == v625)
    {

      goto LABEL_534;
    }
  }

  if (v28 == 3)
  {
    v144 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v671 = MEMORY[0x277D839B0];
    LOBYTE(v670) = v144;
    goto LABEL_273;
  }

  if (v28 != 4)
  {
    v146 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v147 = sub_255E3AB08();
    v148 = v147;
    v559 = v146 + 64;
    v149 = 1 << *(v146 + 32);
    if (v149 < 64)
    {
      v150 = ~(-1 << v149);
    }

    else
    {
      v150 = -1;
    }

    v151 = v150 & *(v146 + 64);
    v554 = (v149 + 63) >> 6;
    v601 = v147 + 64;

    v609 = v146;

    v152 = 0;
    v576 = v148;
    if (v151)
    {
      goto LABEL_152;
    }

LABEL_153:
    v155 = v152;
    while (1)
    {
      v152 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        break;
      }

      if (v152 >= v554)
      {

        v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v670 = v148;
        v4 = v643;
        goto LABEL_273;
      }

      v156 = *(v559 + 8 * v152);
      ++v155;
      if (v156)
      {
        v153 = __clz(__rbit64(v156));
        v154 = (v156 - 1) & v156;
        while (2)
        {
          v157 = v153 | (v152 << 6);
          v158 = (*(v609 + 48) + 16 * v157);
          v159 = *v158;
          v160 = v158[1];
          v161 = *(*(v609 + 56) + 8 * v157);
          v162 = v161 >> 61;
          v613 = v154;
          v620 = v159;
          v623 = v157;
          if ((v161 >> 61) > 2)
          {
            if (v162 == 3)
            {
              v208 = *((v161 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v669 = MEMORY[0x277D839B0];
              LOBYTE(v668) = v208;
              goto LABEL_212;
            }

            v537 = v160;
            if (v162 == 4)
            {
              v165 = *((v161 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v166 = *(v165 + 16);
              if (v166)
              {
                v657 = MEMORY[0x277D84F90];

                v583 = v166;
                result = sub_255D8077C(v166);
                v167 = 0;
                v588 = v165 + 32;
                v562 = v165;
                do
                {
                  if (v167 >= *(v165 + 16))
                  {
                    goto LABEL_590;
                  }

                  v168 = *(v588 + 8 * v167);
                  v169 = v168 >> 61;
                  v632 = v167;
                  if ((v168 >> 61) > 2)
                  {
                    if (v169 == 3)
                    {
                      v181 = *((v168 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v667 = MEMORY[0x277D839B0];
                      LOBYTE(v666) = v181;
                    }

                    else if (v169 == 4)
                    {
                      v172 = *((v168 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v173 = *(v172 + 16);
                      if (v173)
                      {
                        v652 = MEMORY[0x277D84F90];

                        result = sub_255D8077C(v173);
                        v174 = 0;
                        while (1)
                        {
                          if (v174 >= *(v172 + 16))
                          {
                            goto LABEL_581;
                          }

                          v175 = *(v172 + 8 * v174 + 32);

                          sub_255D7D920(v665);
                          if (v3)
                          {
                            break;
                          }

                          v176 = v652;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, *(v652 + 16) + 1, 1);
                            v176 = v652;
                          }

                          v178 = *(v176 + 16);
                          v177 = *(v176 + 24);
                          if (v178 >= v177 >> 1)
                          {
                            sub_255DE5CE0((v177 > 1), v178 + 1, 1);
                            v176 = v652;
                          }

                          ++v174;
                          *(v176 + 16) = v178 + 1;
                          result = sub_255D31B4C(v665, (v176 + 32 * v178 + 32));
                          if (v173 == v174)
                          {

                            goto LABEL_202;
                          }
                        }

                        goto LABEL_550;
                      }

                      v176 = MEMORY[0x277D84F90];
LABEL_202:
                      v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v666 = v176;
                      v23 = v605;
                      v165 = v562;
                    }

                    else
                    {
                      v183 = *((v168 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v184 = sub_255E3AB08();
                      v185 = v183 + 64;
                      v186 = 1 << *(v183 + 32);
                      if (v186 < 64)
                      {
                        v187 = ~(-1 << v186);
                      }

                      else
                      {
                        v187 = -1;
                      }

                      v188 = v187 & *(v183 + 64);
                      v189 = (v186 + 63) >> 6;
                      v568 = v184;
                      v548 = v184 + 64;

                      v578 = v183;

                      v190 = 0;
                      if (v188)
                      {
                        goto LABEL_190;
                      }

LABEL_191:
                      v193 = v190;
                      while (1)
                      {
                        v190 = v193 + 1;
                        if (__OFADD__(v193, 1))
                        {
                          goto LABEL_569;
                        }

                        if (v190 >= v189)
                        {
                          break;
                        }

                        v194 = *(v185 + 8 * v190);
                        ++v193;
                        if (v194)
                        {
                          v191 = v3;
                          v192 = __clz(__rbit64(v194));
                          v595 = (v194 - 1) & v194;
                          while (2)
                          {
                            v195 = v192 | (v190 << 6);
                            v196 = (*(v578 + 48) + 16 * v195);
                            v197 = *v196;
                            v198 = v196[1];
                            v653 = *(*(v578 + 56) + 8 * v195);

                            sub_255D7D920(v665);
                            if (!v191)
                            {

                              *(v548 + ((v195 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v195;
                              v199 = (v568[6] + 16 * v195);
                              *v199 = v197;
                              v199[1] = v198;
                              result = sub_255D31B4C(v665, (v568[7] + 32 * v195));
                              v200 = v568[2];
                              v74 = __OFADD__(v200, 1);
                              v201 = v200 + 1;
                              if (!v74)
                              {
                                v568[2] = v201;
                                v3 = 0;
                                v165 = v562;
                                v188 = v595;
                                if (!v595)
                                {
                                  goto LABEL_191;
                                }

LABEL_190:
                                v191 = v3;
                                v192 = __clz(__rbit64(v188));
                                v595 = (v188 - 1) & v188;
                                continue;
                              }

LABEL_598:
                              __break(1u);
LABEL_599:
                              __break(1u);
LABEL_600:
                              __break(1u);
LABEL_601:
                              __break(1u);
LABEL_602:
                              __break(1u);
LABEL_603:
                              __break(1u);
LABEL_604:
                              __break(1u);
LABEL_605:
                              __break(1u);
                              return result;
                            }

                            break;
                          }

LABEL_550:

                          goto LABEL_551;
                        }
                      }

                      v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v666 = v568;
                      v23 = v605;
                    }
                  }

                  else if (v169)
                  {
                    v170 = v168 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v169 == 1)
                    {
                      v171 = *(v170 + 16);
                      v667 = MEMORY[0x277D83B88];
                      *&v666 = v171;
                    }

                    else
                    {
                      v182 = *(v170 + 16);
                      v667 = MEMORY[0x277D839F8];
                      *&v666 = v182;
                    }
                  }

                  else
                  {
                    v180 = *(v168 + 16);
                    v179 = *(v168 + 24);
                    v667 = MEMORY[0x277D837D0];
                    *&v666 = v180;
                    *(&v666 + 1) = v179;
                  }

                  v202 = v657;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_255DE5CE0(0, *(v657 + 16) + 1, 1);
                    v202 = v657;
                  }

                  v204 = *(v202 + 16);
                  v203 = *(v202 + 24);
                  if (v204 >= v203 >> 1)
                  {
                    sub_255DE5CE0((v203 > 1), v204 + 1, 1);
                    v202 = v657;
                  }

                  *(v202 + 16) = v204 + 1;
                  v205 = v202 + 32 * v204;
                  v167 = v632 + 1;
                  result = sub_255D31B4C(&v666, (v205 + 32));
                }

                while (v632 + 1 != v583);
              }

              else
              {

                v202 = MEMORY[0x277D84F90];
              }

              v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

              *&v668 = v202;
              v148 = v576;
              v160 = v537;
            }

            else
            {
              v213 = *((v161 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v214 = sub_255E3AB08();
              v148 = v576;
              v526 = v213 + 64;
              v215 = 1 << *(v213 + 32);
              if (v215 < 64)
              {
                v216 = ~(-1 << v215);
              }

              else
              {
                v216 = -1;
              }

              v217 = v216 & *(v213 + 64);
              v218 = (v215 + 63) >> 6;
              v579 = v214 + 64;
              v219 = v214;

              v220 = 0;
              v563 = v213;
              v549 = v218;
              if (v217)
              {
LABEL_220:
                v221 = __clz(__rbit64(v217));
                v222 = (v217 - 1) & v217;
                goto LABEL_226;
              }

LABEL_221:
              v223 = v220;
              while (1)
              {
                v220 = v223 + 1;
                if (__OFADD__(v223, 1))
                {
                  goto LABEL_572;
                }

                if (v220 >= v218)
                {
                  break;
                }

                v224 = *(v526 + 8 * v220);
                ++v223;
                if (v224)
                {
                  v221 = __clz(__rbit64(v224));
                  v222 = (v224 - 1) & v224;
LABEL_226:
                  v225 = v221 | (v220 << 6);
                  v226 = (*(v213 + 48) + 16 * v225);
                  v227 = v226[1];
                  v589 = v225;
                  v596 = *v226;
                  v228 = *(*(v213 + 56) + 8 * v225);
                  v229 = v228 >> 61;
                  v584 = v222;
                  if ((v228 >> 61) > 2)
                  {
                    if (v229 == 3)
                    {
                      v241 = *((v228 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v667 = MEMORY[0x277D839B0];
                      LOBYTE(v666) = v241;
                      goto LABEL_245;
                    }

                    v520 = v227;
                    if (v229 == 4)
                    {
                      v232 = *((v228 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v233 = *(v232 + 16);
                      if (v233)
                      {
                        v515 = v219;
                        v658 = MEMORY[0x277D84F90];

                        result = sub_255D8077C(v233);
                        for (i = 0; i != v233; ++i)
                        {
                          if (i >= *(v232 + 16))
                          {
                            goto LABEL_592;
                          }

                          v235 = *(v232 + 8 * i + 32);

                          sub_255D7D920(v665);
                          if (v3)
                          {

                            goto LABEL_551;
                          }

                          v236 = v658;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, *(v658 + 16) + 1, 1);
                            v236 = v658;
                          }

                          v238 = *(v236 + 16);
                          v237 = *(v236 + 24);
                          if (v238 >= v237 >> 1)
                          {
                            sub_255DE5CE0((v237 > 1), v238 + 1, 1);
                            v236 = v658;
                          }

                          *(v236 + 16) = v238 + 1;
                          result = sub_255D31B4C(v665, (v236 + 32 * v238 + 32));
                        }

                        v219 = v515;
                      }

                      else
                      {

                        v236 = MEMORY[0x277D84F90];
                      }

                      v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v666 = v236;
                      v148 = v576;
                      v213 = v563;
                      v218 = v549;
                    }

                    else
                    {
                      v516 = v219;
                      v243 = *((v228 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v244 = sub_255E3AB08();
                      v513 = v243 + 64;
                      v245 = 1 << *(v243 + 32);
                      if (v245 < 64)
                      {
                        v246 = ~(-1 << v245);
                      }

                      else
                      {
                        v246 = -1;
                      }

                      v247 = v246 & *(v243 + 64);
                      v248 = (v245 + 63) >> 6;
                      v529 = v244;
                      v523 = v244 + 64;

                      v532 = v243;

                      v249 = 0;
                      if (v247)
                      {
                        do
                        {
                          v633 = v3;
                          v250 = __clz(__rbit64(v247));
                          v569 = (v247 - 1) & v247;
LABEL_256:
                          v253 = v250 | (v249 << 6);
                          v254 = (*(v532 + 48) + 16 * v253);
                          v256 = *v254;
                          v255 = v254[1];
                          v659 = *(*(v532 + 56) + 8 * v253);

                          sub_255D7D920(v665);
                          if (v633)
                          {

                            goto LABEL_552;
                          }

                          *(v523 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v253;
                          v257 = (v529[6] + 16 * v253);
                          *v257 = v256;
                          v257[1] = v255;
                          result = sub_255D31B4C(v665, (v529[7] + 32 * v253));
                          v258 = v529[2];
                          v74 = __OFADD__(v258, 1);
                          v259 = v258 + 1;
                          if (v74)
                          {
                            goto LABEL_605;
                          }

                          v529[2] = v259;
                          v213 = v563;
                          v247 = v569;
                          v218 = v549;
                          v3 = 0;
                        }

                        while (v569);
                      }

                      v251 = v249;
                      v148 = v576;
                      while (1)
                      {
                        v249 = v251 + 1;
                        if (__OFADD__(v251, 1))
                        {
                          goto LABEL_578;
                        }

                        if (v249 >= v248)
                        {
                          break;
                        }

                        v252 = *(v513 + 8 * v249);
                        ++v251;
                        if (v252)
                        {
                          v633 = v3;
                          v250 = __clz(__rbit64(v252));
                          v569 = (v252 - 1) & v252;
                          goto LABEL_256;
                        }
                      }

                      v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v666 = v529;
                      v219 = v516;
                    }

                    v227 = v520;
                  }

                  else if (v229)
                  {
                    v230 = v228 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v229 == 1)
                    {
                      v231 = *(v230 + 16);
                      v667 = MEMORY[0x277D83B88];
                      *&v666 = v231;
                    }

                    else
                    {
                      v242 = *(v230 + 16);
                      v667 = MEMORY[0x277D839F8];
                      *&v666 = v242;
                    }

LABEL_245:
                  }

                  else
                  {
                    v239 = *(v228 + 16);
                    v240 = *(v228 + 24);
                    v667 = MEMORY[0x277D837D0];
                    *&v666 = v239;
                    *(&v666 + 1) = v240;
                  }

                  *(v579 + ((v589 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v589;
                  v260 = (v219[6] + 16 * v589);
                  *v260 = v596;
                  v260[1] = v227;
                  result = sub_255D31B4C(&v666, (v219[7] + 32 * v589));
                  v261 = v219[2];
                  v74 = __OFADD__(v261, 1);
                  v262 = v261 + 1;
                  if (v74)
                  {
                    goto LABEL_601;
                  }

                  v219[2] = v262;
                  v217 = v584;
                  if (v584)
                  {
                    goto LABEL_220;
                  }

                  goto LABEL_221;
                }
              }

              v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v668 = v219;
              v23 = v605;
              v160 = v537;
            }
          }

          else
          {
            if (v162)
            {
              v163 = v161 & 0x1FFFFFFFFFFFFFFFLL;
              if (v162 == 1)
              {
                v164 = *(v163 + 16);
                v669 = MEMORY[0x277D83B88];
                *&v668 = v164;
              }

              else
              {
                v209 = *(v163 + 16);
                v669 = MEMORY[0x277D839F8];
                *&v668 = v209;
              }
            }

            else
            {
              v206 = *(v161 + 16);
              v207 = *(v161 + 24);
              v669 = MEMORY[0x277D837D0];
              *&v668 = v206;
              *(&v668 + 1) = v207;
            }

LABEL_212:
          }

          *(v601 + ((v623 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v623;
          v210 = (v148[6] + 16 * v623);
          *v210 = v620;
          v210[1] = v160;
          result = sub_255D31B4C(&v668, (v148[7] + 32 * v623));
          v211 = v148[2];
          v74 = __OFADD__(v211, 1);
          v212 = v211 + 1;
          if (!v74)
          {
            v148[2] = v212;
            v151 = v613;
            if (!v613)
            {
              goto LABEL_153;
            }

LABEL_152:
            v153 = __clz(__rbit64(v151));
            v154 = (v151 - 1) & v151;
            continue;
          }

          break;
        }

LABEL_593:
        __break(1u);
LABEL_594:
        __break(1u);
LABEL_595:
        __break(1u);
LABEL_596:
        __break(1u);
LABEL_597:
        __break(1u);
        goto LABEL_598;
      }
    }

    __break(1u);
LABEL_565:
    __break(1u);
LABEL_566:
    __break(1u);
LABEL_567:
    __break(1u);
LABEL_568:
    __break(1u);
LABEL_569:
    __break(1u);
LABEL_570:
    __break(1u);
LABEL_571:
    __break(1u);
LABEL_572:
    __break(1u);
LABEL_573:
    __break(1u);
LABEL_574:
    __break(1u);
LABEL_575:
    __break(1u);
LABEL_576:
    __break(1u);
LABEL_577:
    __break(1u);
LABEL_578:
    __break(1u);
LABEL_579:
    __break(1u);
LABEL_580:
    __break(1u);
LABEL_581:
    __break(1u);
LABEL_582:
    __break(1u);
LABEL_583:
    __break(1u);
LABEL_584:
    __break(1u);
LABEL_585:
    __break(1u);
LABEL_586:
    __break(1u);
LABEL_587:
    __break(1u);
LABEL_588:
    __break(1u);
LABEL_589:
    __break(1u);
LABEL_590:
    __break(1u);
LABEL_591:
    __break(1u);
LABEL_592:
    __break(1u);
    goto LABEL_593;
  }

  v31 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *(v31 + 16);
  if (!v32)
  {

    v139 = MEMORY[0x277D84F90];
LABEL_272:
    v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v670 = v139;
    goto LABEL_273;
  }

  v656 = MEMORY[0x277D84F90];

  v600 = v32;
  result = sub_255D8077C(v32);
  v33 = 0;
  v612 = v31 + 32;
  v577 = v31;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      goto LABEL_582;
    }

    v34 = *(v612 + 8 * v33);
    v35 = v34 >> 61;
    if ((v34 >> 61) <= 2)
    {
      if (v35)
      {
        v36 = v34 & 0x1FFFFFFFFFFFFFFFLL;
        if (v35 == 1)
        {
          v37 = *(v36 + 16);
          v669 = MEMORY[0x277D83B88];
          *&v668 = v37;
        }

        else
        {
          v83 = *(v36 + 16);
          v669 = MEMORY[0x277D839F8];
          *&v668 = v83;
        }
      }

      else
      {
        v81 = *(v34 + 16);
        v80 = *(v34 + 24);
        v669 = MEMORY[0x277D837D0];
        *&v668 = v81;
        *(&v668 + 1) = v80;
      }

      goto LABEL_139;
    }

    if (v35 == 3)
    {
      v82 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v669 = MEMORY[0x277D839B0];
      LOBYTE(v668) = v82;
      goto LABEL_139;
    }

    v622 = v33;
    if (v35 != 4)
    {
      break;
    }

    v38 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v39 = *(v38 + 16);
    if (v39)
    {
      v649 = MEMORY[0x277D84F90];

      v593 = v39;
      v618 = v38;
      sub_255D8077C(v39);
      result = v38;
      v40 = 0;
      v607 = v38 + 32;
      while (v40 < *(result + 16))
      {
        v41 = *(v607 + 8 * v40);
        v42 = v41 >> 61;
        v629 = v40;
        if ((v41 >> 61) > 2)
        {
          if (v42 == 3)
          {
            v54 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v667 = MEMORY[0x277D839B0];
            LOBYTE(v666) = v54;
          }

          else
          {
            if (v42 != 4)
            {
              v56 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v57 = sub_255E3AB08();
              v58 = v56 + 64;
              v59 = 1 << *(v56 + 32);
              if (v59 < 64)
              {
                v60 = ~(-1 << v59);
              }

              else
              {
                v60 = -1;
              }

              v61 = v60 & *(v56 + 64);
              v62 = (v59 + 63) >> 6;
              v581 = v57;
              v574 = v57 + 64;

              v586 = v56;

              v63 = 0;
              if (!v61)
              {
LABEL_63:
                v66 = v63;
                while (1)
                {
                  v63 = v66 + 1;
                  if (__OFADD__(v66, 1))
                  {
                    goto LABEL_565;
                  }

                  if (v63 >= v62)
                  {

                    v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v666 = v581;
                    goto LABEL_75;
                  }

                  v67 = *(v58 + 8 * v63);
                  ++v66;
                  if (v67)
                  {
                    v64 = v3;
                    v65 = __clz(__rbit64(v67));
                    v61 = (v67 - 1) & v67;
                    goto LABEL_68;
                  }
                }
              }

              while (1)
              {
                v64 = v3;
                v65 = __clz(__rbit64(v61));
                v61 &= v61 - 1;
LABEL_68:
                v68 = v65 | (v63 << 6);
                v69 = (*(v586 + 48) + 16 * v68);
                v71 = *v69;
                v70 = v69[1];
                v648 = *(*(v586 + 56) + 8 * v68);

                sub_255D7D920(v665);
                if (v64)
                {
                  break;
                }

                *(v574 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
                v72 = (v581[6] + 16 * v68);
                *v72 = v71;
                v72[1] = v70;
                result = sub_255D31B4C(v665, (v581[7] + 32 * v68));
                v73 = v581[2];
                v74 = __OFADD__(v73, 1);
                v75 = v73 + 1;
                if (v74)
                {
                  goto LABEL_591;
                }

                v581[2] = v75;
                v3 = 0;
                v31 = v577;
                if (!v61)
                {
                  goto LABEL_63;
                }
              }

              goto LABEL_544;
            }

            v45 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v46 = *(v45 + 16);
            if (v46)
            {
              v647 = MEMORY[0x277D84F90];

              result = sub_255D8077C(v46);
              v47 = 0;
              while (v47 < *(v45 + 16))
              {
                v48 = *(v45 + 8 * v47 + 32);

                sub_255D7D920(v665);
                if (v3)
                {

                  goto LABEL_544;
                }

                v49 = v647;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_255DE5CE0(0, *(v647 + 16) + 1, 1);
                  v49 = v647;
                }

                v51 = *(v49 + 16);
                v50 = *(v49 + 24);
                if (v51 >= v50 >> 1)
                {
                  sub_255DE5CE0((v50 > 1), v51 + 1, 1);
                  v49 = v647;
                }

                ++v47;
                *(v49 + 16) = v51 + 1;
                result = sub_255D31B4C(v665, (v49 + 32 * v51 + 32));
                if (v46 == v47)
                {

                  goto LABEL_74;
                }
              }

              goto LABEL_577;
            }

            v49 = MEMORY[0x277D84F90];
LABEL_74:
            v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

            *&v666 = v49;
LABEL_75:
            v4 = v643;
            v23 = v605;
          }
        }

        else if (v42)
        {
          v43 = v41 & 0x1FFFFFFFFFFFFFFFLL;
          if (v42 == 1)
          {
            v44 = *(v43 + 16);
            v667 = MEMORY[0x277D83B88];
            *&v666 = v44;
          }

          else
          {
            v55 = *(v43 + 16);
            v667 = MEMORY[0x277D839F8];
            *&v666 = v55;
          }
        }

        else
        {
          v53 = *(v41 + 16);
          v52 = *(v41 + 24);
          v667 = MEMORY[0x277D837D0];
          *&v666 = v53;
          *(&v666 + 1) = v52;
        }

        v76 = v649;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, *(v649 + 16) + 1, 1);
          v76 = v649;
        }

        v78 = *(v76 + 16);
        v77 = *(v76 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_255DE5CE0((v77 > 1), v78 + 1, 1);
          v76 = v649;
        }

        *(v76 + 16) = v78 + 1;
        v79 = v76 + 32 * v78;
        v40 = v629 + 1;
        sub_255D31B4C(&v666, (v79 + 32));
        result = v618;
        v33 = v622;
        if (v629 + 1 == v593)
        {

          goto LABEL_138;
        }
      }

      goto LABEL_583;
    }

    v76 = MEMORY[0x277D84F90];
LABEL_138:
    v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v668 = v76;
LABEL_139:
    v139 = v656;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, *(v656 + 16) + 1, 1);
      v139 = v656;
    }

    v141 = *(v139 + 16);
    v140 = *(v139 + 24);
    if (v141 >= v140 >> 1)
    {
      sub_255DE5CE0((v140 > 1), v141 + 1, 1);
      v139 = v656;
    }

    ++v33;
    *(v139 + 16) = v141 + 1;
    result = sub_255D31B4C(&v668, (v139 + 32 * v141 + 32));
    if (v33 == v600)
    {

      goto LABEL_272;
    }
  }

  v84 = v34 & 0x1FFFFFFFFFFFFFFFLL;
  v85 = *((v34 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v86 = sub_255E3AB08();
  v87 = v86;
  v558 = v85 + 64;
  v88 = 1 << *(v85 + 32);
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  else
  {
    v89 = -1;
  }

  v630 = v89 & *(v85 + 64);
  v90 = (v88 + 63) >> 6;
  v594 = v86 + 64;

  v608 = v85;

  v91 = 0;
  v587 = v90;
  v561 = v87;
  v92 = v630;
  if (!v630)
  {
LABEL_90:
    v95 = v91;
    while (1)
    {
      v91 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        goto LABEL_566;
      }

      if (v91 >= v90)
      {

        v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v668 = v87;
        v31 = v577;
        goto LABEL_139;
      }

      v96 = *(v558 + 8 * v91);
      ++v95;
      if (v96)
      {
        v93 = __clz(__rbit64(v96));
        v94 = (v96 - 1) & v96;
        goto LABEL_95;
      }
    }
  }

  while (2)
  {
    v93 = __clz(__rbit64(v92));
    v94 = (v92 - 1) & v92;
LABEL_95:
    v97 = v93 | (v91 << 6);
    v98 = (*(v608 + 48) + 16 * v97);
    v99 = *v98;
    v100 = v98[1];
    v101 = *(*(v608 + 56) + 8 * v97);
    v102 = v101 >> 61;
    v631 = v94;
    v619 = v99;
    if ((v101 >> 61) <= 2)
    {
      if (v102)
      {
        v103 = v101 & 0x1FFFFFFFFFFFFFFFLL;
        if (v102 == 1)
        {
          v104 = *(v103 + 16);
          v667 = MEMORY[0x277D83B88];
          *&v666 = v104;
        }

        else
        {
          v116 = *(v103 + 16);
          v667 = MEMORY[0x277D839F8];
          *&v666 = v116;
        }
      }

      else
      {
        v112 = v97;
        v113 = *(v101 + 16);
        v114 = *(v101 + 24);
        v667 = MEMORY[0x277D837D0];
        *&v666 = v113;
        *(&v666 + 1) = v114;

        v97 = v112;
      }

LABEL_114:

LABEL_133:
      *(v594 + ((v97 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v97;
      v136 = (v87[6] + 16 * v97);
      *v136 = v619;
      v136[1] = v100;
      result = sub_255D31B4C(&v666, (v87[7] + 32 * v97));
      v137 = v87[2];
      v74 = __OFADD__(v137, 1);
      v138 = v137 + 1;
      if (v74)
      {
        goto LABEL_595;
      }

      v87[2] = v138;
      v90 = v587;
      v92 = v631;
      if (!v631)
      {
        goto LABEL_90;
      }

      continue;
    }

    break;
  }

  if (v102 == 3)
  {
    v115 = *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v667 = MEMORY[0x277D839B0];
    LOBYTE(v666) = v115;
    goto LABEL_114;
  }

  v543 = v97;
  v547 = v100;
  if (v102 == 4)
  {
    v105 = *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v106 = *(v105 + 16);
    if (v106)
    {
      v535 = v84;
      v650 = MEMORY[0x277D84F90];

      result = sub_255D8077C(v106);
      v107 = 0;
      while (v107 < *(v105 + 16))
      {
        v108 = *(v105 + 8 * v107 + 32);

        sub_255D7D920(v665);
        if (v3)
        {

LABEL_544:

          goto LABEL_551;
        }

        v109 = v650;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, *(v650 + 16) + 1, 1);
          v109 = v650;
        }

        v111 = *(v109 + 16);
        v110 = *(v109 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_255DE5CE0((v110 > 1), v111 + 1, 1);
          v109 = v650;
        }

        ++v107;
        *(v109 + 16) = v111 + 1;
        result = sub_255D31B4C(v665, (v109 + 32 * v111 + 32));
        if (v106 == v107)
        {

          v84 = v535;
          v23 = v605;
          goto LABEL_131;
        }
      }

      goto LABEL_584;
    }

    v109 = MEMORY[0x277D84F90];
LABEL_131:
    v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v666 = v109;
    v33 = v622;
    v87 = v561;
LABEL_132:
    v97 = v543;
    v100 = v547;
    goto LABEL_133;
  }

  v536 = v84;
  v117 = *((v101 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v118 = sub_255E3AB08();
  v119 = v117 + 64;
  v120 = 1 << *(v117 + 32);
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  else
  {
    v121 = -1;
  }

  v122 = v121 & *(v117 + 64);
  v123 = (v120 + 63) >> 6;
  v567 = v118;
  v553 = v118 + 64;

  v4 = v643;

  v575 = v117;

  v124 = 0;
  if (!v122)
  {
LABEL_120:
    v127 = v124;
    v87 = v561;
    while (1)
    {
      v124 = v127 + 1;
      if (__OFADD__(v127, 1))
      {
        goto LABEL_573;
      }

      if (v124 >= v123)
      {

        v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v666 = v567;
        v23 = v605;
        v33 = v622;
        v84 = v536;
        goto LABEL_132;
      }

      v128 = *(v119 + 8 * v124);
      ++v127;
      if (v128)
      {
        v125 = v3;
        v126 = __clz(__rbit64(v128));
        v582 = (v128 - 1) & v128;
        goto LABEL_125;
      }
    }
  }

  while (1)
  {
    v125 = v3;
    v126 = __clz(__rbit64(v122));
    v582 = (v122 - 1) & v122;
LABEL_125:
    v129 = v126 | (v124 << 6);
    v130 = (*(v575 + 48) + 16 * v129);
    v131 = *v130;
    v132 = v130[1];
    v651 = *(*(v575 + 56) + 8 * v129);

    sub_255D7D920(v665);
    if (v125)
    {
      break;
    }

    *(v553 + ((v129 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v129;
    v133 = (v567[6] + 16 * v129);
    *v133 = v131;
    v133[1] = v132;
    result = sub_255D31B4C(v665, (v567[7] + 32 * v129));
    v134 = v567[2];
    v74 = __OFADD__(v134, 1);
    v135 = v134 + 1;
    if (v74)
    {
      goto LABEL_602;
    }

    v567[2] = v135;
    v3 = 0;
    v4 = v643;
    v122 = v582;
    if (!v582)
    {
      goto LABEL_120;
    }
  }

LABEL_551:

LABEL_552:
  v6 = v674;
LABEL_553:

LABEL_554:

  return v6;
}

unint64_t sub_255D87070()
{
  result = qword_27F7E74F0;
  if (!qword_27F7E74F0)
  {
    sub_255E38538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E74F0);
  }

  return result;
}

uint64_t sub_255D870C8(uint64_t *a1)
{
  v3 = *a1;
  if (*a1 >> 61 != 4)
  {
    v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255D7B470();
    swift_allocError();
    *v496 = v3;
    v496[1] = v495;
    swift_willThrow();

    return v2;
  }

  v4 = v1;
  v5 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_537;
  }

  v656 = MEMORY[0x277D84F90];
  v626 = v5;

  v623 = v6;
  sub_255D8077C(v6);
  result = v626;
  v8 = 0;
  while (1)
  {
    if (v8 >= *(result + 16))
    {
      goto LABEL_573;
    }

    v9 = *(v626 + 32 + 8 * v8);
    v10 = v9 >> 61;
    if ((v9 >> 61) <= 2)
    {
      if (v10)
      {
        v11 = v9 & 0x1FFFFFFFFFFFFFFFLL;
        if (v10 == 1)
        {
          v12 = *(v11 + 16);
          v655 = MEMORY[0x277D83B88];
          *&v654 = v12;
        }

        else
        {
          v262 = *(v11 + 16);
          v655 = MEMORY[0x277D839F8];
          *&v654 = v262;
        }
      }

      else
      {
        v260 = *(v9 + 16);
        v259 = *(v9 + 24);
        v655 = MEMORY[0x277D837D0];
        *&v654 = v260;
        *(&v654 + 1) = v259;
      }

      goto LABEL_530;
    }

    if (v10 != 3)
    {
      break;
    }

    v261 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v655 = MEMORY[0x277D839B0];
    LOBYTE(v654) = v261;
LABEL_530:
    v492 = v656;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, *(v492 + 16) + 1, 1);
      v492 = v656;
    }

    v494 = *(v492 + 16);
    v493 = *(v492 + 24);
    if (v494 >= v493 >> 1)
    {
      sub_255DE5CE0((v493 > 1), v494 + 1, 1);
      v492 = v656;
    }

    ++v8;
    *(v492 + 16) = v494 + 1;
    sub_255D31B4C(&v654, (v492 + 32 * v494 + 32));
    result = v626;
    if (v8 == v623)
    {

LABEL_537:
      v2 = sub_255E3A668();

      return v2;
    }
  }

  v627 = v8;
  if (v10 != 4)
  {
    v2 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
    v263 = sub_255E3AB08();
    v253 = v263;
    v578 = v2 + 64;
    v264 = 1 << *(v2 + 32);
    if (v264 < 64)
    {
      v265 = ~(-1 << v264);
    }

    else
    {
      v265 = -1;
    }

    v266 = v265 & *(v2 + 64);
    v573 = (v264 + 63) >> 6;
    v605 = v263 + 64;

    v611 = v2;

    v267 = 0;
    v591 = v253;
    if (v266)
    {
LABEL_279:
      v268 = __clz(__rbit64(v266));
      v269 = (v266 - 1) & v266;
      goto LABEL_285;
    }

    while (2)
    {
      v270 = v267;
      do
      {
        v267 = v270 + 1;
        if (__OFADD__(v270, 1))
        {
          __break(1u);
LABEL_563:
          __break(1u);
LABEL_564:
          __break(1u);
LABEL_565:
          __break(1u);
LABEL_566:
          __break(1u);
LABEL_567:
          __break(1u);
LABEL_568:
          __break(1u);
LABEL_569:
          __break(1u);
          goto LABEL_570;
        }

        if (v267 >= v573)
        {

          v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);
LABEL_529:

          *&v654 = v253;
          goto LABEL_530;
        }

        v271 = *(v578 + 8 * v267);
        ++v270;
      }

      while (!v271);
      v268 = __clz(__rbit64(v271));
      v269 = (v271 - 1) & v271;
LABEL_285:
      v272 = v268 | (v267 << 6);
      v273 = (*(v611 + 48) + 16 * v272);
      v274 = *v273;
      v275 = v273[1];
      v276 = *(*(v611 + 56) + 8 * v272);
      v277 = v276 >> 61;
      v614 = v269;
      v620 = v267;
      v625 = v272;
      v622 = v274;
      if ((v276 >> 61) <= 2)
      {
        if (v277)
        {
          v278 = v276 & 0x1FFFFFFFFFFFFFFFLL;
          if (v277 == 1)
          {
            v279 = *(v278 + 16);
            v653 = MEMORY[0x277D83B88];
            *&v652 = v279;
          }

          else
          {
            v384 = *(v278 + 16);
            v653 = MEMORY[0x277D839F8];
            *&v652 = v384;
          }
        }

        else
        {
          v381 = *(v276 + 16);
          v382 = *(v276 + 24);
          v653 = MEMORY[0x277D837D0];
          *&v652 = v381;
          *(&v652 + 1) = v382;
        }

LABEL_411:

LABEL_412:
        *(v605 + ((v625 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v625;
        v385 = (v253[6] + 16 * v625);
        *v385 = v622;
        v385[1] = v275;
        result = sub_255D31B4C(&v652, (v253[7] + 32 * v625));
        v386 = v253[2];
        v61 = __OFADD__(v386, 1);
        v387 = v386 + 1;
        if (v61)
        {
          goto LABEL_585;
        }

        v253[2] = v387;
        v266 = v614;
        v267 = v620;
        if (v614)
        {
          goto LABEL_279;
        }

        continue;
      }

      break;
    }

    if (v277 == 3)
    {
      v383 = *((v276 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v653 = MEMORY[0x277D839B0];
      LOBYTE(v652) = v383;
      goto LABEL_411;
    }

    v539 = v275;
    if (v277 != 4)
    {
      v2 = v276 & 0x1FFFFFFFFFFFFFFFLL;
      v388 = *((v276 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v389 = sub_255E3AB08();
      v253 = v591;
      v390 = v389;
      v522 = v388 + 64;
      v391 = 1 << *(v388 + 32);
      if (v391 < 64)
      {
        v392 = ~(-1 << v391);
      }

      else
      {
        v392 = -1;
      }

      v393 = v392 & *(v388 + 64);
      v518 = (v391 + 63) >> 6;
      v555 = v389 + 64;

      v564 = v388;

      v394 = 0;
      v569 = v390;
      if (v393)
      {
LABEL_419:
        v395 = __clz(__rbit64(v393));
        v396 = (v393 - 1) & v393;
        goto LABEL_425;
      }

LABEL_420:
      v397 = v394;
      while (1)
      {
        v394 = v397 + 1;
        if (__OFADD__(v397, 1))
        {
          goto LABEL_566;
        }

        if (v394 >= v518)
        {
          break;
        }

        v398 = *(v522 + 8 * v394);
        ++v397;
        if (v398)
        {
          v395 = __clz(__rbit64(v398));
          v396 = (v398 - 1) & v398;
LABEL_425:
          v399 = v395 | (v394 << 6);
          v400 = (*(v564 + 48) + 16 * v399);
          v401 = *v400;
          v402 = v400[1];
          v403 = *(*(v564 + 56) + 8 * v399);
          v404 = v403 >> 61;
          v583 = v396;
          v588 = v401;
          v601 = v399;
          if ((v403 >> 61) > 2)
          {
            if (v404 == 3)
            {
              v447 = *((v403 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v651 = MEMORY[0x277D839B0];
              LOBYTE(v650) = v447;
              goto LABEL_479;
            }

            v505 = v402;
            if (v404 == 4)
            {
              v407 = *((v403 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v2 = *(v407 + 16);
              if (v2)
              {
                v647 = MEMORY[0x277D84F90];

                v533 = v2;
                result = sub_255D8077C(v2);
                v408 = 0;
                v542 = v407 + 32;
                v525 = v407;
                do
                {
                  if (v408 >= *(v407 + 16))
                  {
                    goto LABEL_595;
                  }

                  v409 = *(v542 + 8 * v408);
                  v410 = v409 >> 61;
                  v609 = v408;
                  if ((v409 >> 61) > 2)
                  {
                    if (v410 == 3)
                    {
                      v422 = *((v409 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v649 = MEMORY[0x277D839B0];
                      LOBYTE(v648) = v422;
                    }

                    else if (v410 == 4)
                    {
                      v2 = *((v409 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v413 = *(v2 + 16);
                      if (v413)
                      {
                        v644 = MEMORY[0x277D84F90];

                        result = sub_255D8077C(v413);
                        v414 = 0;
                        while (1)
                        {
                          if (v414 >= *(v2 + 16))
                          {
                            goto LABEL_586;
                          }

                          v415 = v4;
                          v416 = *(v2 + 8 * v414 + 32);

                          sub_255D7D920(v646);
                          if (v415)
                          {
                            break;
                          }

                          v417 = v644;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_255DE5CE0(0, *(v644 + 16) + 1, 1);
                            v417 = v644;
                          }

                          v4 = 0;
                          v419 = *(v417 + 16);
                          v418 = *(v417 + 24);
                          if (v419 >= v418 >> 1)
                          {
                            sub_255DE5CE0((v418 > 1), v419 + 1, 1);
                            v417 = v644;
                          }

                          ++v414;
                          *(v417 + 16) = v419 + 1;
                          result = sub_255D31B4C(v646, (v417 + 32 * v419 + 32));
                          if (v413 == v414)
                          {

                            goto LABEL_469;
                          }
                        }

                        goto LABEL_556;
                      }

                      v417 = MEMORY[0x277D84F90];
LABEL_469:
                      v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                      *&v648 = v417;
                      v390 = v569;
                      v407 = v525;
                    }

                    else
                    {
                      v424 = *((v409 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                      v425 = sub_255E3AB08();
                      v426 = v425;
                      v502 = v424 + 64;
                      v427 = 1 << *(v424 + 32);
                      if (v427 < 64)
                      {
                        v428 = ~(-1 << v427);
                      }

                      else
                      {
                        v428 = -1;
                      }

                      v429 = v428 & *(v424 + 64);
                      v2 = (v427 + 63) >> 6;
                      v510 = v425 + 64;

                      v529 = v424;

                      v430 = 0;
                      v514 = v426;
                      if (v429)
                      {
LABEL_457:
                        v431 = __clz(__rbit64(v429));
                        v549 = (v429 - 1) & v429;
                        goto LABEL_463;
                      }

LABEL_458:
                      v432 = v430;
                      while (1)
                      {
                        v430 = v432 + 1;
                        if (__OFADD__(v432, 1))
                        {
                          goto LABEL_574;
                        }

                        if (v430 >= v2)
                        {
                          break;
                        }

                        v433 = *(v502 + 8 * v430);
                        ++v432;
                        if (v433)
                        {
                          v431 = __clz(__rbit64(v433));
                          v549 = (v433 - 1) & v433;
LABEL_463:
                          v434 = v431 | (v430 << 6);
                          v435 = (*(v529 + 48) + 16 * v434);
                          v436 = *v435;
                          v437 = v435[1];
                          v645 = *(*(v529 + 56) + 8 * v434);

                          sub_255D7D920(v646);
                          if (!v4)
                          {

                            v426 = v514;
                            *(v510 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v434;
                            v438 = (v514[6] + 16 * v434);
                            *v438 = v436;
                            v438[1] = v437;
                            result = sub_255D31B4C(v646, (v514[7] + 32 * v434));
                            v439 = v514[2];
                            v61 = __OFADD__(v439, 1);
                            v440 = v439 + 1;
                            if (v61)
                            {
                              goto LABEL_603;
                            }

                            v514[2] = v440;
                            v390 = v569;
                            v407 = v525;
                            v429 = v549;
                            if (v549)
                            {
                              goto LABEL_457;
                            }

                            goto LABEL_458;
                          }

LABEL_556:

                          goto LABEL_551;
                        }
                      }

                      v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                      *&v648 = v426;
                    }
                  }

                  else if (v410)
                  {
                    v411 = v409 & 0x1FFFFFFFFFFFFFFFLL;
                    if (v410 == 1)
                    {
                      v412 = *(v411 + 16);
                      v649 = MEMORY[0x277D83B88];
                      *&v648 = v412;
                    }

                    else
                    {
                      v423 = *(v411 + 16);
                      v649 = MEMORY[0x277D839F8];
                      *&v648 = v423;
                    }
                  }

                  else
                  {
                    v421 = *(v409 + 16);
                    v420 = *(v409 + 24);
                    v649 = MEMORY[0x277D837D0];
                    *&v648 = v421;
                    *(&v648 + 1) = v420;
                  }

                  v441 = v647;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_255DE5CE0(0, v441[2] + 1, 1);
                    v441 = v647;
                  }

                  v443 = v441[2];
                  v442 = v441[3];
                  v2 = v443 + 1;
                  if (v443 >= v442 >> 1)
                  {
                    sub_255DE5CE0((v442 > 1), v443 + 1, 1);
                    v441 = v647;
                  }

                  v441[2] = v2;
                  v444 = &v441[4 * v443];
                  v408 = v609 + 1;
                  result = sub_255D31B4C(&v648, v444 + 2);
                }

                while (v609 + 1 != v533);
              }

              else
              {

                v441 = MEMORY[0x277D84F90];
              }

              v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

              *&v650 = v441;
              v253 = v591;
              v402 = v505;
            }

            else
            {
              v2 = v403 & 0x1FFFFFFFFFFFFFFFLL;
              v452 = *((v403 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              v453 = sub_255E3AB08();
              v253 = v591;
              v454 = v453;
              v526 = v452 + 64;
              v455 = 1 << *(v452 + 32);
              if (v455 < 64)
              {
                v456 = ~(-1 << v455);
              }

              else
              {
                v456 = -1;
              }

              v457 = v456 & *(v452 + 64);
              v458 = (v455 + 63) >> 6;
              v534 = v453 + 64;
              v459 = v2;

              v460 = v457;
              v461 = 0;
              v530 = v458;
              v511 = v452;
              v515 = v454;
              if (v460)
              {
LABEL_487:
                v462 = __clz(__rbit64(v460));
                v463 = (v460 - 1) & v460;
                goto LABEL_493;
              }

LABEL_488:
              v464 = v461;
              while (1)
              {
                v461 = v464 + 1;
                if (__OFADD__(v464, 1))
                {
                  goto LABEL_575;
                }

                if (v461 >= v458)
                {
                  break;
                }

                v465 = *(v526 + 8 * v461);
                ++v464;
                if (v465)
                {
                  v462 = __clz(__rbit64(v465));
                  v463 = (v465 - 1) & v465;
LABEL_493:
                  v466 = v462 | (v461 << 6);
                  v467 = (*(v452 + 48) + 16 * v466);
                  v468 = *v467;
                  v469 = v467[1];
                  v470 = *(*(v452 + 56) + 8 * v466);
                  v471 = v470 >> 61;
                  v550 = v463;
                  v610 = v468;
                  if ((v470 >> 61) <= 2)
                  {
                    if (v471)
                    {
                      v472 = v470 & 0x1FFFFFFFFFFFFFFFLL;
                      if (v471 == 1)
                      {
                        v473 = *(v472 + 16);
                        v649 = MEMORY[0x277D83B88];
                        *&v648 = v473;
                      }

                      else
                      {
                        v484 = *(v472 + 16);
                        v649 = MEMORY[0x277D839F8];
                        *&v648 = v484;
                      }
                    }

                    else
                    {
                      v2 = v469;
                      v481 = *(v470 + 16);
                      v482 = *(v470 + 24);
                      v649 = MEMORY[0x277D837D0];
                      *&v648 = v481;
                      *(&v648 + 1) = v482;

                      v469 = v2;
                    }

LABEL_512:

LABEL_513:
                    *(v534 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v466;
                    v485 = (v454[6] + 16 * v466);
                    *v485 = v610;
                    v485[1] = v469;
                    result = sub_255D31B4C(&v648, (v454[7] + 32 * v466));
                    v486 = v454[2];
                    v61 = __OFADD__(v486, 1);
                    v487 = v486 + 1;
                    if (v61)
                    {
                      goto LABEL_604;
                    }

                    v454[2] = v487;
                    v390 = v569;
                    v458 = v530;
                    v460 = v550;
                    if (v550)
                    {
                      goto LABEL_487;
                    }

                    goto LABEL_488;
                  }

                  if (v471 == 3)
                  {
                    v483 = *((v470 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v649 = MEMORY[0x277D839B0];
                    LOBYTE(v648) = v483;
                    goto LABEL_512;
                  }

                  v474 = v470 & 0x1FFFFFFFFFFFFFFFLL;
                  if (v471 == 4)
                  {
                    v475 = *((v470 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v476 = *(v475 + 16);
                    if (v476)
                    {
                      v500 = v459;
                      v647 = MEMORY[0x277D84F90];

                      v499 = v474;

                      result = sub_255D8077C(v476);
                      v477 = 0;
                      v543 = v476;
                      do
                      {
                        if (v477 >= *(v475 + 16))
                        {
                          goto LABEL_596;
                        }

                        v2 = *(v475 + 8 * v477 + 32);

                        sub_255D7D920(v646);
                        if (v4)
                        {

                          goto LABEL_551;
                        }

                        v478 = v647;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_255DE5CE0(0, v478[2] + 1, 1);
                          v478 = v647;
                        }

                        v480 = v478[2];
                        v479 = v478[3];
                        if (v480 >= v479 >> 1)
                        {
                          sub_255DE5CE0((v479 > 1), v480 + 1, 1);
                          v478 = v647;
                        }

                        ++v477;
                        v478[2] = v480 + 1;
                        result = sub_255D31B4C(v646, &v478[4 * v480 + 4]);
                      }

                      while (v543 != v477);

                      v2 = v499;
                      v459 = v500;
                    }

                    else
                    {

                      v2 = v474;
                      v478 = MEMORY[0x277D84F90];
                    }

                    v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                    *&v648 = v478;
                    v253 = v591;
                    v452 = v511;
                    v454 = v515;
                    goto LABEL_513;
                  }

                  v488 = *((v470 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v2 = v469;

                  v490 = sub_255D82D74(v489);
                  if (!v4)
                  {
                    v491 = v490;

                    v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v648 = v491;
                    v253 = v591;
                    v452 = v511;
                    v454 = v515;
                    goto LABEL_513;
                  }

LABEL_570:

                  goto LABEL_560;
                }
              }

              v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v650 = v454;
              v402 = v505;
            }
          }

          else
          {
            if (v404)
            {
              v405 = v403 & 0x1FFFFFFFFFFFFFFFLL;
              if (v404 == 1)
              {
                v406 = *(v405 + 16);
                v651 = MEMORY[0x277D83B88];
                *&v650 = v406;
              }

              else
              {
                v448 = *(v405 + 16);
                v651 = MEMORY[0x277D839F8];
                *&v650 = v448;
              }
            }

            else
            {
              v445 = *(v403 + 16);
              v446 = *(v403 + 24);
              v651 = MEMORY[0x277D837D0];
              *&v650 = v445;
              *(&v650 + 1) = v446;
            }

LABEL_479:
          }

          *(v555 + ((v601 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v601;
          v449 = (v390[6] + 16 * v601);
          *v449 = v588;
          v449[1] = v402;
          result = sub_255D31B4C(&v650, (v390[7] + 32 * v601));
          v450 = v390[2];
          v61 = __OFADD__(v450, 1);
          v451 = v450 + 1;
          if (v61)
          {
            goto LABEL_598;
          }

          v390[2] = v451;
          v393 = v583;
          if (v583)
          {
            goto LABEL_419;
          }

          goto LABEL_420;
        }
      }

      v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

      *&v652 = v390;
      v8 = v627;
      v275 = v539;
      goto LABEL_412;
    }

    v280 = *((v276 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v2 = *(v280 + 16);
    if (!v2)
    {

      v378 = MEMORY[0x277D84F90];
      goto LABEL_525;
    }

    v647 = MEMORY[0x277D84F90];

    v568 = v2;
    result = sub_255D8077C(v2);
    v281 = 0;
    v587 = v280 + 32;
    v541 = v280;
    while (1)
    {
      if (v281 >= *(v280 + 16))
      {
        goto LABEL_587;
      }

      v282 = *(v587 + 8 * v281);
      v283 = v282 >> 61;
      if ((v282 >> 61) > 2)
      {
        if (v283 == 3)
        {
          v327 = *((v282 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v651 = MEMORY[0x277D839B0];
          LOBYTE(v650) = v327;
        }

        else
        {
          v600 = v281;
          if (v283 != 4)
          {
            v329 = v282 & 0x1FFFFFFFFFFFFFFFLL;
            v2 = *((v282 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v330 = sub_255E3AB08();
            v331 = v330;
            v509 = v2 + 64;
            v332 = 1 << *(v2 + 32);
            if (v332 < 64)
            {
              v333 = ~(-1 << v332);
            }

            else
            {
              v333 = -1;
            }

            v334 = v333 & *(v2 + 64);
            v335 = (v332 + 63) >> 6;
            v554 = v330 + 64;

            v336 = 0;
            v528 = v335;
            v532 = v2;
            v513 = v331;
            if (!v334)
            {
LABEL_353:
              v339 = v336;
              while (1)
              {
                v336 = v339 + 1;
                if (__OFADD__(v339, 1))
                {
                  goto LABEL_569;
                }

                if (v336 >= v335)
                {
                  break;
                }

                v340 = *(v509 + 8 * v336);
                ++v339;
                if (v340)
                {
                  v337 = __clz(__rbit64(v340));
                  v338 = (v340 - 1) & v340;
                  goto LABEL_358;
                }
              }

              v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

              *&v650 = v331;
              v280 = v541;
              goto LABEL_402;
            }

            while (2)
            {
              v337 = __clz(__rbit64(v334));
              v338 = (v334 - 1) & v334;
LABEL_358:
              v341 = v337 | (v336 << 6);
              v342 = (*(v2 + 48) + 16 * v341);
              v343 = v342[1];
              v582 = *v342;
              v344 = *(*(v2 + 56) + 8 * v341);
              v345 = v344 >> 61;
              v563 = v338;
              v608 = v341;
              if ((v344 >> 61) > 2)
              {
                if (v345 == 3)
                {
                  v356 = *((v344 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v649 = MEMORY[0x277D839B0];
                  LOBYTE(v648) = v356;
                  goto LABEL_377;
                }

                v517 = v343;
                if (v345 == 4)
                {
                  v348 = *((v344 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v349 = *(v348 + 16);
                  if (v349)
                  {
                    v503 = v329;
                    v642 = MEMORY[0x277D84F90];

                    result = sub_255D8077C(v349);
                    for (i = 0; i != v349; ++i)
                    {
                      if (i >= *(v348 + 16))
                      {
                        goto LABEL_590;
                      }

                      v2 = *(v348 + 8 * i + 32);

                      sub_255D7D920(v646);
                      if (v4)
                      {

                        goto LABEL_550;
                      }

                      v351 = v642;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_255DE5CE0(0, *(v642 + 16) + 1, 1);
                        v351 = v642;
                      }

                      v353 = *(v351 + 16);
                      v352 = *(v351 + 24);
                      if (v353 >= v352 >> 1)
                      {
                        sub_255DE5CE0((v352 > 1), v353 + 1, 1);
                        v351 = v642;
                      }

                      *(v351 + 16) = v353 + 1;
                      result = sub_255D31B4C(v646, (v351 + 32 * v353 + 32));
                    }

                    v329 = v503;
                  }

                  else
                  {

                    v351 = MEMORY[0x277D84F90];
                  }

                  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                  *&v648 = v351;
                  v8 = v627;
                  v331 = v513;
                  v335 = v528;
                  v2 = v532;
                }

                else
                {
                  v504 = v329;
                  v358 = *((v344 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v359 = sub_255E3AB08();
                  v360 = v359;
                  v498 = v358 + 64;
                  v361 = 1 << *(v358 + 32);
                  if (v361 < 64)
                  {
                    v362 = ~(-1 << v361);
                  }

                  else
                  {
                    v362 = -1;
                  }

                  v363 = v362 & *(v358 + 64);
                  v364 = (v361 + 63) >> 6;
                  v507 = v359 + 64;

                  v524 = v358;

                  v365 = 0;
                  v521 = v360;
                  if (v363)
                  {
                    do
                    {
                      v366 = __clz(__rbit64(v363));
                      v548 = (v363 - 1) & v363;
LABEL_388:
                      v369 = v366 | (v365 << 6);
                      v370 = (*(v524 + 48) + 16 * v369);
                      v2 = *v370;
                      v371 = v370[1];
                      v643 = *(*(v524 + 56) + 8 * v369);

                      sub_255D7D920(v646);
                      if (v4)
                      {

                        goto LABEL_551;
                      }

                      *(v507 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v369;
                      v372 = (v521[6] + 16 * v369);
                      *v372 = v2;
                      v372[1] = v371;
                      result = sub_255D31B4C(v646, (v521[7] + 32 * v369));
                      v373 = v521[2];
                      v61 = __OFADD__(v373, 1);
                      v374 = v373 + 1;
                      if (v61)
                      {
                        goto LABEL_605;
                      }

                      v521[2] = v374;
                      v8 = v627;
                      v281 = v600;
                      v335 = v528;
                      v2 = v532;
                      v363 = v548;
                    }

                    while (v548);
                  }

                  v367 = v365;
                  v331 = v513;
                  while (1)
                  {
                    v365 = v367 + 1;
                    if (__OFADD__(v367, 1))
                    {
                      goto LABEL_576;
                    }

                    if (v365 >= v364)
                    {
                      break;
                    }

                    v368 = *(v498 + 8 * v365);
                    ++v367;
                    if (v368)
                    {
                      v366 = __clz(__rbit64(v368));
                      v548 = (v368 - 1) & v368;
                      goto LABEL_388;
                    }
                  }

                  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                  *&v648 = v521;
                  v329 = v504;
                }

                v343 = v517;
              }

              else if (v345)
              {
                v346 = v344 & 0x1FFFFFFFFFFFFFFFLL;
                if (v345 == 1)
                {
                  v347 = *(v346 + 16);
                  v649 = MEMORY[0x277D83B88];
                  *&v648 = v347;
                }

                else
                {
                  v357 = *(v346 + 16);
                  v649 = MEMORY[0x277D839F8];
                  *&v648 = v357;
                }

LABEL_377:
              }

              else
              {
                v354 = *(v344 + 16);
                v355 = *(v344 + 24);
                v649 = MEMORY[0x277D837D0];
                *&v648 = v354;
                *(&v648 + 1) = v355;
              }

              *(v554 + ((v608 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v608;
              v375 = (v331[6] + 16 * v608);
              *v375 = v582;
              v375[1] = v343;
              result = sub_255D31B4C(&v648, (v331[7] + 32 * v608));
              v376 = v331[2];
              v61 = __OFADD__(v376, 1);
              v377 = v376 + 1;
              if (v61)
              {
                goto LABEL_600;
              }

              v331[2] = v377;
              v334 = v563;
              if (!v563)
              {
                goto LABEL_353;
              }

              continue;
            }
          }

          v286 = *((v282 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v287 = *(v286 + 16);
          if (v287)
          {
            v641 = MEMORY[0x277D84F90];

            v562 = v287;
            result = sub_255D8077C(v287);
            v288 = 0;
            v581 = v286 + 32;
            v531 = v286;
            do
            {
              if (v288 >= *(v286 + 16))
              {
                goto LABEL_588;
              }

              v289 = *(v581 + 8 * v288);
              v290 = v289 >> 61;
              v607 = v288;
              if ((v289 >> 61) > 2)
              {
                if (v290 == 3)
                {
                  v301 = *((v289 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v649 = MEMORY[0x277D839B0];
                  LOBYTE(v648) = v301;
                }

                else if (v290 == 4)
                {
                  v293 = *((v289 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v294 = *(v293 + 16);
                  if (v294)
                  {
                    v635 = MEMORY[0x277D84F90];

                    result = sub_255D8077C(v294);
                    v295 = 0;
                    while (1)
                    {
                      if (v295 >= *(v293 + 16))
                      {
                        goto LABEL_580;
                      }

                      v2 = *(v293 + 8 * v295 + 32);

                      sub_255D7D920(v646);
                      if (v4)
                      {
                        break;
                      }

                      v296 = v635;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_255DE5CE0(0, *(v635 + 16) + 1, 1);
                        v296 = v635;
                      }

                      v298 = *(v296 + 16);
                      v297 = *(v296 + 24);
                      if (v298 >= v297 >> 1)
                      {
                        sub_255DE5CE0((v297 > 1), v298 + 1, 1);
                        v296 = v635;
                      }

                      ++v295;
                      *(v296 + 16) = v298 + 1;
                      result = sub_255D31B4C(v646, (v296 + 32 * v298 + 32));
                      if (v294 == v295)
                      {

                        goto LABEL_338;
                      }
                    }

                    goto LABEL_550;
                  }

                  v296 = MEMORY[0x277D84F90];
LABEL_338:
                  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                  *&v648 = v296;
                  v8 = v627;
                  v286 = v531;
                }

                else
                {
                  v303 = *((v289 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                  v304 = sub_255E3AB08();
                  v305 = v303 + 64;
                  v306 = 1 << *(v303 + 32);
                  if (v306 < 64)
                  {
                    v307 = ~(-1 << v306);
                  }

                  else
                  {
                    v307 = -1;
                  }

                  v2 = v307 & *(v303 + 64);
                  v308 = (v306 + 63) >> 6;
                  v547 = v304;
                  v527 = v304 + 64;

                  v553 = v303;

                  v309 = 0;
                  if (v2)
                  {
LABEL_326:
                    v310 = v4;
                    v311 = __clz(__rbit64(v2));
                    v2 &= v2 - 1;
                    goto LABEL_332;
                  }

LABEL_327:
                  v312 = v309;
                  while (1)
                  {
                    v309 = v312 + 1;
                    if (__OFADD__(v312, 1))
                    {
                      goto LABEL_567;
                    }

                    if (v309 >= v308)
                    {
                      break;
                    }

                    v313 = *(v305 + 8 * v309);
                    ++v312;
                    if (v313)
                    {
                      v310 = v4;
                      v311 = __clz(__rbit64(v313));
                      v2 = (v313 - 1) & v313;
LABEL_332:
                      v314 = v311 | (v309 << 6);
                      v315 = (*(v553 + 48) + 16 * v314);
                      v316 = *v315;
                      v317 = v315[1];
                      v636 = *(*(v553 + 56) + 8 * v314);

                      sub_255D7D920(v646);
                      if (!v310)
                      {

                        *(v527 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v314;
                        v318 = (v547[6] + 16 * v314);
                        *v318 = v316;
                        v318[1] = v317;
                        result = sub_255D31B4C(v646, (v547[7] + 32 * v314));
                        v319 = v547[2];
                        v61 = __OFADD__(v319, 1);
                        v320 = v319 + 1;
                        if (v61)
                        {
                          goto LABEL_597;
                        }

                        v547[2] = v320;
                        v4 = 0;
                        v280 = v541;
                        v286 = v531;
                        if (v2)
                        {
                          goto LABEL_326;
                        }

                        goto LABEL_327;
                      }

LABEL_550:

LABEL_551:

                      goto LABEL_559;
                    }
                  }

                  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                  *&v648 = v547;
                  v8 = v627;
                }
              }

              else if (v290)
              {
                v291 = v289 & 0x1FFFFFFFFFFFFFFFLL;
                if (v290 == 1)
                {
                  v292 = *(v291 + 16);
                  v649 = MEMORY[0x277D83B88];
                  *&v648 = v292;
                }

                else
                {
                  v302 = *(v291 + 16);
                  v649 = MEMORY[0x277D839F8];
                  *&v648 = v302;
                }
              }

              else
              {
                v300 = *(v289 + 16);
                v299 = *(v289 + 24);
                v649 = MEMORY[0x277D837D0];
                *&v648 = v300;
                *(&v648 + 1) = v299;
              }

              v321 = v641;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_255DE5CE0(0, *(v641 + 16) + 1, 1);
                v321 = v641;
              }

              v323 = *(v321 + 16);
              v322 = *(v321 + 24);
              if (v323 >= v322 >> 1)
              {
                sub_255DE5CE0((v322 > 1), v323 + 1, 1);
                v321 = v641;
              }

              *(v321 + 16) = v323 + 1;
              v324 = v321 + 32 * v323;
              v288 = v607 + 1;
              result = sub_255D31B4C(&v648, (v324 + 32));
              v281 = v600;
            }

            while (v607 + 1 != v562);
          }

          else
          {

            v321 = MEMORY[0x277D84F90];
          }

          v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

          *&v650 = v321;
        }
      }

      else if (v283)
      {
        v284 = v282 & 0x1FFFFFFFFFFFFFFFLL;
        if (v283 == 1)
        {
          v285 = *(v284 + 16);
          v651 = MEMORY[0x277D83B88];
          *&v650 = v285;
        }

        else
        {
          v328 = *(v284 + 16);
          v651 = MEMORY[0x277D839F8];
          *&v650 = v328;
        }
      }

      else
      {
        v326 = *(v282 + 16);
        v325 = *(v282 + 24);
        v651 = MEMORY[0x277D837D0];
        *&v650 = v326;
        *(&v650 + 1) = v325;
      }

LABEL_402:
      v378 = v647;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_255DE5CE0(0, v378[2] + 1, 1);
        v378 = v647;
      }

      v380 = v378[2];
      v379 = v378[3];
      v2 = v380 + 1;
      if (v380 >= v379 >> 1)
      {
        sub_255DE5CE0((v379 > 1), v380 + 1, 1);
        v378 = v647;
      }

      ++v281;
      v378[2] = v2;
      result = sub_255D31B4C(&v650, &v378[4 * v380 + 4]);
      if (v281 == v568)
      {

LABEL_525:
        v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

        *&v652 = v378;
        v253 = v591;
        v275 = v539;
        goto LABEL_412;
      }
    }
  }

  v621 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *(v621 + 16);
  if (!v13)
  {

    v253 = MEMORY[0x277D84F90];
LABEL_528:
    v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
    goto LABEL_529;
  }

  v647 = MEMORY[0x277D84F90];

  v606 = v13;
  result = sub_255D8077C(v13);
  v14 = 0;
  while (1)
  {
    if (v14 >= *(v621 + 16))
    {
      goto LABEL_579;
    }

    v624 = v14;
    v15 = *(v621 + 32 + 8 * v14);
    v16 = v15 >> 61;
    if ((v15 >> 61) <= 2)
    {
      if (v16)
      {
        v17 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        if (v16 == 1)
        {
          v18 = *(v17 + 16);
          v653 = MEMORY[0x277D83B88];
          *&v652 = v18;
        }

        else
        {
          v133 = *(v17 + 16);
          v653 = MEMORY[0x277D839F8];
          *&v652 = v133;
        }
      }

      else
      {
        v131 = *(v15 + 16);
        v130 = *(v15 + 24);
        v653 = MEMORY[0x277D837D0];
        *&v652 = v131;
        *(&v652 + 1) = v130;
      }

      goto LABEL_266;
    }

    if (v16 != 3)
    {
      break;
    }

    v132 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v653 = MEMORY[0x277D839B0];
    LOBYTE(v652) = v132;
LABEL_266:
    v253 = v647;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, v253[2] + 1, 1);
      v253 = v647;
    }

    v254 = v624;
    v256 = v253[2];
    v255 = v253[3];
    if (v256 >= v255 >> 1)
    {
      sub_255DE5CE0((v255 > 1), v256 + 1, 1);
      v254 = v624;
      v253 = v647;
    }

    v253[2] = v256 + 1;
    v257 = &v253[4 * v256 + 4];
    v258 = v254 + 1;
    result = sub_255D31B4C(&v652, v257);
    v14 = v258;
    if (v258 == v606)
    {

      goto LABEL_528;
    }
  }

  if (v16 != 4)
  {
    v134 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
    v135 = sub_255E3AB08();
    v124 = v135;
    v552 = v134 + 64;
    v136 = 1 << *(v134 + 32);
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    else
    {
      v137 = -1;
    }

    v138 = v137 & *(v134 + 64);
    v139 = (v136 + 63) >> 6;
    v586 = v135 + 64;

    v599 = v134;

    v2 = 0;
    v561 = v124;
    v580 = v139;
    if (v138)
    {
      goto LABEL_144;
    }

LABEL_145:
    v141 = v2;
    while (1)
    {
      v2 = v141 + 1;
      if (__OFADD__(v141, 1))
      {
        goto LABEL_563;
      }

      if (v2 >= v139)
      {
        break;
      }

      v142 = *(v552 + 8 * v2);
      ++v141;
      if (v142)
      {
        v140 = __clz(__rbit64(v142));
        v604 = (v142 - 1) & v142;
        while (2)
        {
          v143 = v140 | (v2 << 6);
          v144 = (*(v599 + 48) + 16 * v143);
          v145 = *v144;
          v146 = v144[1];
          v147 = *(*(v599 + 56) + 8 * v143);
          v148 = v147 >> 61;
          v613 = v145;
          if ((v147 >> 61) <= 2)
          {
            if (v148)
            {
              v149 = v147 & 0x1FFFFFFFFFFFFFFFLL;
              if (v148 == 1)
              {
                v150 = *(v149 + 16);
                v651 = MEMORY[0x277D83B88];
                *&v650 = v150;
              }

              else
              {
                v197 = *(v149 + 16);
                v651 = MEMORY[0x277D839F8];
                *&v650 = v197;
              }
            }

            else
            {
              v193 = v143;
              v194 = *(v147 + 16);
              v195 = *(v147 + 24);
              v651 = MEMORY[0x277D837D0];
              *&v650 = v194;
              *(&v650 + 1) = v195;

              v143 = v193;
            }

            goto LABEL_204;
          }

          if (v148 == 3)
          {
            v196 = *((v147 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v651 = MEMORY[0x277D839B0];
            LOBYTE(v650) = v196;
LABEL_204:

            goto LABEL_205;
          }

          v590 = v146;
          v523 = v143;
          if (v148 == 4)
          {
            v151 = *((v147 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v152 = *(v151 + 16);
            if (v152)
            {
              v638 = MEMORY[0x277D84F90];

              v571 = v152;
              result = sub_255D8077C(v152);
              v153 = 0;
              v576 = v151 + 32;
              v557 = v151;
              do
              {
                if (v153 >= *(v151 + 16))
                {
                  goto LABEL_589;
                }

                v154 = *(v576 + 8 * v153);
                v155 = v154 >> 61;
                v618 = v153;
                if ((v154 >> 61) > 2)
                {
                  if (v155 == 3)
                  {
                    v168 = *((v154 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v649 = MEMORY[0x277D839B0];
                    LOBYTE(v648) = v168;
                  }

                  else if (v155 == 4)
                  {
                    v158 = *((v154 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v159 = *(v158 + 16);
                    if (v159)
                    {
                      v633 = MEMORY[0x277D84F90];

                      result = sub_255D8077C(v159);
                      v160 = 0;
                      while (1)
                      {
                        if (v160 >= *(v158 + 16))
                        {
                          goto LABEL_581;
                        }

                        v161 = v4;
                        v162 = *(v158 + 8 * v160 + 32);

                        sub_255D7D920(v646);
                        if (v161)
                        {
                          break;
                        }

                        v163 = v633;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_255DE5CE0(0, *(v633 + 16) + 1, 1);
                          v163 = v633;
                        }

                        v165 = *(v163 + 16);
                        v164 = *(v163 + 24);
                        if (v165 >= v164 >> 1)
                        {
                          sub_255DE5CE0((v164 > 1), v165 + 1, 1);
                          v163 = v633;
                        }

                        ++v160;
                        *(v163 + 16) = v165 + 1;
                        result = sub_255D31B4C(v646, (v163 + 32 * v165 + 32));
                        v4 = 0;
                        v8 = v627;
                        if (v159 == v160)
                        {

                          goto LABEL_194;
                        }
                      }

                      goto LABEL_553;
                    }

                    v163 = MEMORY[0x277D84F90];
LABEL_194:
                    v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                    *&v648 = v163;
                    v146 = v590;
                    v151 = v557;
                  }

                  else
                  {
                    v170 = *((v154 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v171 = sub_255E3AB08();
                    v172 = v171;
                    v173 = 1 << *(v170 + 32);
                    if (v173 < 64)
                    {
                      v174 = ~(-1 << v173);
                    }

                    else
                    {
                      v174 = -1;
                    }

                    v593 = v174 & *(v170 + 64);
                    v175 = (v173 + 63) >> 6;
                    v537 = v171 + 64;

                    v176 = 0;
                    v545 = v172;
                    v177 = v593;
                    if (v593)
                    {
                      goto LABEL_182;
                    }

LABEL_183:
                    v180 = v176;
                    while (1)
                    {
                      v176 = v180 + 1;
                      if (__OFADD__(v180, 1))
                      {
                        goto LABEL_568;
                      }

                      if (v176 >= v175)
                      {
                        break;
                      }

                      v181 = *(v170 + 64 + 8 * v176);
                      ++v180;
                      if (v181)
                      {
                        v178 = v4;
                        v179 = __clz(__rbit64(v181));
                        v594 = (v181 - 1) & v181;
                        while (2)
                        {
                          v182 = v179 | (v176 << 6);
                          v183 = (*(v170 + 48) + 16 * v182);
                          v184 = *v183;
                          v185 = v183[1];
                          v634 = *(*(v170 + 56) + 8 * v182);

                          sub_255D7D920(v646);
                          if (!v178)
                          {

                            *(v537 + ((v182 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v182;
                            v172 = v545;
                            v186 = (v545[6] + 16 * v182);
                            *v186 = v184;
                            v186[1] = v185;
                            result = sub_255D31B4C(v646, (v545[7] + 32 * v182));
                            v187 = v545[2];
                            v61 = __OFADD__(v187, 1);
                            v188 = v187 + 1;
                            if (!v61)
                            {
                              v545[2] = v188;
                              v4 = 0;
                              v8 = v627;
                              v146 = v590;
                              v151 = v557;
                              v177 = v594;
                              if (!v594)
                              {
                                goto LABEL_183;
                              }

LABEL_182:
                              v178 = v4;
                              v179 = __clz(__rbit64(v177));
                              v594 = (v177 - 1) & v177;
                              continue;
                            }

LABEL_599:
                            __break(1u);
LABEL_600:
                            __break(1u);
LABEL_601:
                            __break(1u);
LABEL_602:
                            __break(1u);
LABEL_603:
                            __break(1u);
LABEL_604:
                            __break(1u);
LABEL_605:
                            __break(1u);
LABEL_606:
                            __break(1u);
                            return result;
                          }

                          break;
                        }

LABEL_553:

                        goto LABEL_559;
                      }
                    }

                    v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v648 = v172;
                  }
                }

                else if (v155)
                {
                  v156 = v154 & 0x1FFFFFFFFFFFFFFFLL;
                  if (v155 == 1)
                  {
                    v157 = *(v156 + 16);
                    v649 = MEMORY[0x277D83B88];
                    *&v648 = v157;
                  }

                  else
                  {
                    v169 = *(v156 + 16);
                    v649 = MEMORY[0x277D839F8];
                    *&v648 = v169;
                  }
                }

                else
                {
                  v167 = *(v154 + 16);
                  v166 = *(v154 + 24);
                  v649 = MEMORY[0x277D837D0];
                  *&v648 = v167;
                  *(&v648 + 1) = v166;
                }

                v189 = v638;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_255DE5CE0(0, *(v638 + 16) + 1, 1);
                  v189 = v638;
                }

                v191 = *(v189 + 16);
                v190 = *(v189 + 24);
                if (v191 >= v190 >> 1)
                {
                  sub_255DE5CE0((v190 > 1), v191 + 1, 1);
                  v189 = v638;
                }

                *(v189 + 16) = v191 + 1;
                v192 = v189 + 32 * v191;
                v153 = v618 + 1;
                result = sub_255D31B4C(&v648, (v192 + 32));
              }

              while (v618 + 1 != v571);
            }

            else
            {

              v189 = MEMORY[0x277D84F90];
            }

            v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

            *&v650 = v189;
            v124 = v561;
            v143 = v523;
LABEL_205:
            *(v586 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v143;
            v198 = (v124[6] + 16 * v143);
            *v198 = v613;
            v198[1] = v146;
            result = sub_255D31B4C(&v650, (v124[7] + 32 * v143));
            v199 = v124[2];
            v61 = __OFADD__(v199, 1);
            v200 = v199 + 1;
            if (!v61)
            {
              v124[2] = v200;
              v139 = v580;
              v138 = v604;
              if (!v604)
              {
                goto LABEL_145;
              }

LABEL_144:
              v140 = __clz(__rbit64(v138));
              v604 = (v138 - 1) & v138;
              continue;
            }

LABEL_593:
            __break(1u);
LABEL_594:
            __break(1u);
LABEL_595:
            __break(1u);
LABEL_596:
            __break(1u);
LABEL_597:
            __break(1u);
LABEL_598:
            __break(1u);
            goto LABEL_599;
          }

          break;
        }

        v619 = v4;
        v201 = *((v147 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v202 = sub_255E3AB08();
        v124 = v561;
        v203 = v202;
        v512 = v201 + 64;
        v204 = 1 << *(v201 + 32);
        if (v204 < 64)
        {
          v205 = ~(-1 << v204);
        }

        else
        {
          v205 = -1;
        }

        v595 = v205 & *(v201 + 64);
        v206 = (v204 + 63) >> 6;
        v572 = v202 + 64;

        v207 = 0;
        v546 = v203;
        v538 = v201;
        v567 = v206;
        v208 = v595;
        if (v595)
        {
LABEL_212:
          v209 = __clz(__rbit64(v208));
          v210 = (v208 - 1) & v208;
          goto LABEL_218;
        }

LABEL_213:
        v211 = v207;
        while (1)
        {
          v207 = v211 + 1;
          if (__OFADD__(v211, 1))
          {
            break;
          }

          if (v207 >= v206)
          {

            v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

            *&v650 = v203;
            v4 = v619;
            v143 = v523;
            goto LABEL_205;
          }

          v212 = *(v512 + 8 * v207);
          ++v211;
          if (v212)
          {
            v209 = __clz(__rbit64(v212));
            v210 = (v212 - 1) & v212;
LABEL_218:
            v213 = v209 | (v207 << 6);
            v214 = (*(v201 + 48) + 16 * v213);
            v215 = *v214;
            v216 = v214[1];
            v217 = *(*(v201 + 56) + 8 * v213);
            v218 = v217 >> 61;
            v596 = v210;
            v577 = v215;
            if ((v217 >> 61) > 2)
            {
              if (v218 == 3)
              {
                v231 = *((v217 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v649 = MEMORY[0x277D839B0];
                LOBYTE(v648) = v231;
                goto LABEL_237;
              }

              v506 = v216;
              v501 = v213;
              if (v218 == 4)
              {
                v221 = *((v217 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                if (*(v221 + 16))
                {
                  v222 = *(v221 + 16);
                  v639 = MEMORY[0x277D84F90];

                  v223 = v222;
                  result = sub_255D8077C(v222);
                  v224 = 0;
                  do
                  {
                    if (v224 >= *(v221 + 16))
                    {
                      goto LABEL_592;
                    }

                    v225 = *(v221 + 8 * v224 + 32);

                    sub_255D7D920(v646);
                    if (v619)
                    {

                      goto LABEL_559;
                    }

                    v226 = v639;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_255DE5CE0(0, *(v639 + 16) + 1, 1);
                      v226 = v639;
                    }

                    v228 = *(v226 + 16);
                    v227 = *(v226 + 24);
                    if (v228 >= v227 >> 1)
                    {
                      sub_255DE5CE0((v227 > 1), v228 + 1, 1);
                      v226 = v639;
                    }

                    ++v224;
                    *(v226 + 16) = v228 + 1;
                    result = sub_255D31B4C(v646, (v226 + 32 * v228 + 32));
                    v8 = v627;
                  }

                  while (v223 != v224);

                  v203 = v546;
                  v201 = v538;
                }

                else
                {

                  v226 = MEMORY[0x277D84F90];
                }

                v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

                *&v648 = v226;
                v124 = v561;
              }

              else
              {
                v233 = *((v217 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v234 = sub_255E3AB08();
                v497 = v233 + 64;
                v235 = 1 << *(v233 + 32);
                if (v235 < 64)
                {
                  v236 = ~(-1 << v235);
                }

                else
                {
                  v236 = -1;
                }

                v237 = v236 & *(v233 + 64);
                v238 = (v235 + 63) >> 6;
                v516 = v234;
                v508 = v234 + 64;

                v520 = v233;

                v239 = 0;
                if (v237)
                {
                  do
                  {
                    v240 = __clz(__rbit64(v237));
                    v558 = (v237 - 1) & v237;
LABEL_248:
                    v243 = v240 | (v239 << 6);
                    v244 = (*(v520 + 48) + 16 * v243);
                    v245 = *v244;
                    v246 = v244[1];
                    v640 = *(*(v520 + 56) + 8 * v243);

                    sub_255D7D920(v646);
                    if (v619)
                    {

                      goto LABEL_559;
                    }

                    *(v508 + ((v243 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v243;
                    v247 = (v516[6] + 16 * v243);
                    *v247 = v245;
                    v247[1] = v246;
                    result = sub_255D31B4C(v646, (v516[7] + 32 * v243));
                    v248 = v516[2];
                    v61 = __OFADD__(v248, 1);
                    v249 = v248 + 1;
                    if (v61)
                    {
                      goto LABEL_606;
                    }

                    v516[2] = v249;
                    v8 = v627;
                    v203 = v546;
                    v201 = v538;
                    v237 = v558;
                  }

                  while (v558);
                }

                v241 = v239;
                v124 = v561;
                while (1)
                {
                  v239 = v241 + 1;
                  if (__OFADD__(v241, 1))
                  {
                    goto LABEL_578;
                  }

                  if (v239 >= v238)
                  {
                    break;
                  }

                  v242 = *(v497 + 8 * v239);
                  ++v241;
                  if (v242)
                  {
                    v240 = __clz(__rbit64(v242));
                    v558 = (v242 - 1) & v242;
                    goto LABEL_248;
                  }
                }

                v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                *&v648 = v516;
                v146 = v590;
              }

              v216 = v506;
              v213 = v501;
            }

            else
            {
              if (v218)
              {
                v219 = v217 & 0x1FFFFFFFFFFFFFFFLL;
                if (v218 == 1)
                {
                  v220 = *(v219 + 16);
                  v649 = MEMORY[0x277D83B88];
                  *&v648 = v220;
                }

                else
                {
                  v232 = *(v219 + 16);
                  v649 = MEMORY[0x277D839F8];
                  *&v648 = v232;
                }
              }

              else
              {
                v229 = *(v217 + 16);
                v230 = *(v217 + 24);
                v649 = MEMORY[0x277D837D0];
                *&v648 = v229;
                *(&v648 + 1) = v230;

                v146 = v590;
              }

LABEL_237:
            }

            *(v572 + ((v213 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v213;
            v250 = (v203[6] + 16 * v213);
            *v250 = v577;
            v250[1] = v216;
            result = sub_255D31B4C(&v648, (v203[7] + 32 * v213));
            v251 = v203[2];
            v61 = __OFADD__(v251, 1);
            v252 = v251 + 1;
            if (v61)
            {
              goto LABEL_601;
            }

            v203[2] = v252;
            v206 = v567;
            v208 = v596;
            if (v596)
            {
              goto LABEL_212;
            }

            goto LABEL_213;
          }
        }

        __break(1u);
LABEL_572:
        __break(1u);
LABEL_573:
        __break(1u);
LABEL_574:
        __break(1u);
LABEL_575:
        __break(1u);
LABEL_576:
        __break(1u);
LABEL_577:
        __break(1u);
LABEL_578:
        __break(1u);
LABEL_579:
        __break(1u);
LABEL_580:
        __break(1u);
LABEL_581:
        __break(1u);
LABEL_582:
        __break(1u);
LABEL_583:
        __break(1u);
LABEL_584:
        __break(1u);
LABEL_585:
        __break(1u);
LABEL_586:
        __break(1u);
LABEL_587:
        __break(1u);
LABEL_588:
        __break(1u);
LABEL_589:
        __break(1u);
LABEL_590:
        __break(1u);
LABEL_591:
        __break(1u);
LABEL_592:
        __break(1u);
        goto LABEL_593;
      }
    }

    v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);
    goto LABEL_265;
  }

  v19 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v20 = *(v19 + 16);
  if (!v20)
  {

    v124 = MEMORY[0x277D84F90];
LABEL_264:
    v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
LABEL_265:

    *&v652 = v124;
    goto LABEL_266;
  }

  v637 = MEMORY[0x277D84F90];

  v579 = v20;
  result = sub_255D8077C(v20);
  v21 = 0;
  v589 = v19;
  v592 = v19 + 32;
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
      goto LABEL_582;
    }

    v22 = *(v592 + 8 * v21);
    v23 = v22 >> 61;
    v612 = v21;
    if ((v22 >> 61) <= 2)
    {
      if (v23)
      {
        v24 = v22 & 0x1FFFFFFFFFFFFFFFLL;
        if (v23 == 1)
        {
          v25 = *(v24 + 16);
          v651 = MEMORY[0x277D83B88];
          *&v650 = v25;
        }

        else
        {
          v70 = *(v24 + 16);
          v651 = MEMORY[0x277D839F8];
          *&v650 = v70;
        }
      }

      else
      {
        v68 = *(v22 + 16);
        v67 = *(v22 + 24);
        v651 = MEMORY[0x277D837D0];
        *&v650 = v68;
        *(&v650 + 1) = v67;
      }

      goto LABEL_131;
    }

    if (v23 == 3)
    {
      v69 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v651 = MEMORY[0x277D839B0];
      LOBYTE(v650) = v69;
      goto LABEL_131;
    }

    if (v23 != 4)
    {
      break;
    }

    v26 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *(v26 + 16);
    if (v27)
    {
      v630 = MEMORY[0x277D84F90];

      v574 = v27;
      v597 = v26;
      sub_255D8077C(v27);
      result = v26;
      v28 = 0;
      v584 = v26 + 32;
      while (v28 < *(result + 16))
      {
        v29 = *(v584 + 8 * v28);
        v30 = v29 >> 61;
        v615 = v28;
        if ((v29 >> 61) > 2)
        {
          if (v30 == 3)
          {
            v42 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v649 = MEMORY[0x277D839B0];
            LOBYTE(v648) = v42;
          }

          else
          {
            if (v30 != 4)
            {
              v44 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
              v45 = sub_255E3AB08();
              v46 = v45;
              v47 = 1 << *(v44 + 32);
              if (v47 < 64)
              {
                v48 = ~(-1 << v47);
              }

              else
              {
                v48 = -1;
              }

              v49 = v48 & *(v44 + 64);
              v2 = (v47 + 63) >> 6;
              v559 = v45 + 64;

              v50 = 0;
              v565 = v46;
              if (!v49)
              {
LABEL_56:
                v53 = v50;
                while (1)
                {
                  v50 = v53 + 1;
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_564;
                  }

                  if (v50 >= v2)
                  {

                    v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

                    *&v648 = v46;
                    v8 = v627;
                    goto LABEL_68;
                  }

                  v54 = *(v44 + 64 + 8 * v50);
                  ++v53;
                  if (v54)
                  {
                    v51 = v4;
                    v52 = __clz(__rbit64(v54));
                    v602 = (v54 - 1) & v54;
                    goto LABEL_61;
                  }
                }
              }

              while (1)
              {
                v51 = v4;
                v52 = __clz(__rbit64(v49));
                v602 = (v49 - 1) & v49;
LABEL_61:
                v55 = v52 | (v50 << 6);
                v56 = (*(v44 + 48) + 16 * v55);
                v57 = *v56;
                v58 = v56[1];
                v629 = *(*(v44 + 56) + 8 * v55);

                sub_255D7D920(v646);
                if (v51)
                {
                  break;
                }

                v46 = v565;
                *(v559 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
                v59 = (v565[6] + 16 * v55);
                *v59 = v57;
                v59[1] = v58;
                result = sub_255D31B4C(v646, (v565[7] + 32 * v55));
                v60 = v565[2];
                v61 = __OFADD__(v60, 1);
                v62 = v60 + 1;
                if (v61)
                {
                  goto LABEL_591;
                }

                v565[2] = v62;
                v4 = 0;
                v19 = v589;
                v49 = v602;
                if (!v602)
                {
                  goto LABEL_56;
                }
              }

LABEL_545:

              goto LABEL_546;
            }

            v33 = v4;
            v34 = *((v29 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v35 = *(v34 + 16);
            if (v35)
            {
              v628 = MEMORY[0x277D84F90];

              result = sub_255D8077C(v35);
              v36 = 0;
              while (v36 < *(v34 + 16))
              {
                v2 = *(v34 + 8 * v36 + 32);

                sub_255D7D920(v646);
                if (v33)
                {

                  goto LABEL_545;
                }

                v37 = v628;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_255DE5CE0(0, *(v628 + 16) + 1, 1);
                  v37 = v628;
                }

                v39 = *(v37 + 16);
                v38 = *(v37 + 24);
                if (v39 >= v38 >> 1)
                {
                  sub_255DE5CE0((v38 > 1), v39 + 1, 1);
                  v37 = v628;
                }

                ++v36;
                *(v37 + 16) = v39 + 1;
                result = sub_255D31B4C(v646, (v37 + 32 * v39 + 32));
                if (v35 == v36)
                {

                  goto LABEL_67;
                }
              }

              goto LABEL_577;
            }

            v37 = MEMORY[0x277D84F90];
LABEL_67:
            v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

            *&v648 = v37;
            v4 = v33;
            v8 = v627;
            v19 = v589;
          }
        }

        else if (v30)
        {
          v31 = v29 & 0x1FFFFFFFFFFFFFFFLL;
          if (v30 == 1)
          {
            v32 = *(v31 + 16);
            v649 = MEMORY[0x277D83B88];
            *&v648 = v32;
          }

          else
          {
            v43 = *(v31 + 16);
            v649 = MEMORY[0x277D839F8];
            *&v648 = v43;
          }
        }

        else
        {
          v41 = *(v29 + 16);
          v40 = *(v29 + 24);
          v649 = MEMORY[0x277D837D0];
          *&v648 = v41;
          *(&v648 + 1) = v40;
        }

LABEL_68:
        v63 = v630;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, v630[2] + 1, 1);
          v63 = v630;
        }

        v65 = v63[2];
        v64 = v63[3];
        if (v65 >= v64 >> 1)
        {
          sub_255DE5CE0((v64 > 1), v65 + 1, 1);
          v63 = v630;
        }

        v63[2] = v65 + 1;
        v66 = &v63[4 * v65];
        v28 = v615 + 1;
        sub_255D31B4C(&v648, v66 + 2);
        result = v597;
        if (v615 + 1 == v574)
        {

          goto LABEL_129;
        }
      }

      goto LABEL_583;
    }

    v63 = MEMORY[0x277D84F90];
LABEL_129:
    v122 = &qword_27F7E6158;
    v123 = &unk_255E3BB80;
LABEL_130:
    v651 = __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);

    *&v650 = v63;
LABEL_131:
    v124 = v637;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_255DE5CE0(0, v637[2] + 1, 1);
      v124 = v637;
    }

    v125 = v612;
    v127 = v124[2];
    v126 = v124[3];
    if (v127 >= v126 >> 1)
    {
      sub_255DE5CE0((v126 > 1), v127 + 1, 1);
      v125 = v612;
      v124 = v637;
    }

    v124[2] = v127 + 1;
    v128 = &v124[4 * v127 + 4];
    v129 = v125 + 1;
    result = sub_255D31B4C(&v650, v128);
    v21 = v129;
    if (v129 == v579)
    {

      goto LABEL_264;
    }
  }

  v71 = v22 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
  v72 = sub_255E3AB08();
  v63 = v72;
  v551 = v2 + 64;
  v73 = 1 << *(v2 + 32);
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  else
  {
    v74 = -1;
  }

  v75 = v74 & *(v2 + 64);
  v76 = (v73 + 63) >> 6;
  v575 = v72 + 64;

  v77 = 0;
  v566 = v76;
  v570 = v2;
  if (!v75)
  {
LABEL_82:
    v80 = v77;
    while (1)
    {
      v77 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_565;
      }

      if (v77 >= v76)
      {

        v122 = &qword_27F7E7540;
        v123 = &qword_255E48B38;
        goto LABEL_130;
      }

      v81 = *(v551 + 8 * v77);
      ++v80;
      if (v81)
      {
        v78 = __clz(__rbit64(v81));
        v79 = (v81 - 1) & v81;
        goto LABEL_87;
      }
    }
  }

  while (2)
  {
    v78 = __clz(__rbit64(v75));
    v79 = (v75 - 1) & v75;
LABEL_87:
    v82 = v78 | (v77 << 6);
    v83 = (*(v2 + 48) + 16 * v82);
    v84 = *v83;
    v85 = v83[1];
    v86 = *(*(v2 + 56) + 8 * v82);
    v87 = v86 >> 61;
    v585 = v79;
    v598 = v84;
    v603 = v82;
    if ((v86 >> 61) <= 2)
    {
      if (v87)
      {
        v88 = v86 & 0x1FFFFFFFFFFFFFFFLL;
        if (v87 == 1)
        {
          v89 = *(v88 + 16);
          v649 = MEMORY[0x277D83B88];
          *&v648 = v89;
        }

        else
        {
          v100 = *(v88 + 16);
          v649 = MEMORY[0x277D839F8];
          *&v648 = v100;
        }
      }

      else
      {
        v97 = *(v86 + 16);
        v98 = *(v86 + 24);
        v649 = MEMORY[0x277D837D0];
        *&v648 = v97;
        *(&v648 + 1) = v98;
      }

LABEL_106:

LABEL_107:
      *(v575 + ((v603 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v603;
      v101 = (v63[6] + 16 * v603);
      *v101 = v598;
      v101[1] = v85;
      result = sub_255D31B4C(&v648, (v63[7] + 32 * v603));
      v102 = v63[2];
      v61 = __OFADD__(v102, 1);
      v103 = v102 + 1;
      if (v61)
      {
        goto LABEL_594;
      }

      v63[2] = v103;
      v75 = v585;
      if (!v585)
      {
        goto LABEL_82;
      }

      continue;
    }

    break;
  }

  if (v87 == 3)
  {
    v99 = *((v86 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v649 = MEMORY[0x277D839B0];
    LOBYTE(v648) = v99;
    goto LABEL_106;
  }

  v540 = v85;
  if (v87 == 4)
  {
    v90 = v63;
    v91 = *((v86 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v92 = *(v91 + 16);
    if (v92)
    {
      v535 = v71;
      v631 = MEMORY[0x277D84F90];

      result = sub_255D8077C(v92);
      v93 = 0;
      while (v93 < *(v91 + 16))
      {
        v2 = *(v91 + 8 * v93 + 32);

        sub_255D7D920(v646);
        if (v4)
        {

          goto LABEL_546;
        }

        v94 = v631;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_255DE5CE0(0, *(v631 + 16) + 1, 1);
          v94 = v631;
        }

        v96 = *(v94 + 16);
        v95 = *(v94 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_255DE5CE0((v95 > 1), v96 + 1, 1);
          v94 = v631;
        }

        ++v93;
        *(v94 + 16) = v96 + 1;
        result = sub_255D31B4C(v646, (v94 + 32 * v96 + 32));
        if (v92 == v93)
        {

          v71 = v535;
          goto LABEL_126;
        }
      }

      goto LABEL_584;
    }

    v94 = MEMORY[0x277D84F90];
LABEL_126:
    v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);

    *&v648 = v94;
    v8 = v627;
    v19 = v589;
    v63 = v90;
    v76 = v566;
    v2 = v570;
    goto LABEL_107;
  }

  v519 = v63;
  v536 = v71;
  v616 = v4;
  v104 = *((v86 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v105 = sub_255E3AB08();
  v106 = v104 + 64;
  v107 = 1 << *(v104 + 32);
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  else
  {
    v108 = -1;
  }

  v109 = v108 & *(v104 + 64);
  v110 = (v107 + 63) >> 6;
  v556 = v105;
  v544 = v105 + 64;

  v560 = v104;
  v4 = v616;

  v111 = 0;
  if (!v109)
  {
LABEL_115:
    v114 = v111;
    v63 = v519;
    while (1)
    {
      v111 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_572;
      }

      if (v111 >= v110)
      {

        v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7540, &qword_255E48B38);

        *&v648 = v556;
        v8 = v627;
        v19 = v589;
        v71 = v536;
        v85 = v540;
        goto LABEL_107;
      }

      v115 = *(v106 + 8 * v111);
      ++v114;
      if (v115)
      {
        v112 = v4;
        v113 = __clz(__rbit64(v115));
        v617 = (v115 - 1) & v115;
        goto LABEL_120;
      }
    }
  }

  while (1)
  {
    v112 = v4;
    v113 = __clz(__rbit64(v109));
    v617 = (v109 - 1) & v109;
LABEL_120:
    v2 = v113 | (v111 << 6);
    v116 = (*(v560 + 48) + 16 * v2);
    v117 = *v116;
    v118 = v116[1];
    v632 = *(*(v560 + 56) + 8 * v2);

    sub_255D7D920(v646);
    if (v112)
    {
      break;
    }

    *(v544 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    v119 = (v556[6] + 16 * v2);
    *v119 = v117;
    v119[1] = v118;
    result = sub_255D31B4C(v646, (v556[7] + 32 * v2));
    v120 = v556[2];
    v61 = __OFADD__(v120, 1);
    v121 = v120 + 1;
    if (v61)
    {
      goto LABEL_602;
    }

    v556[2] = v121;
    v4 = 0;
    v76 = v566;
    v2 = v570;
    v109 = v617;
    if (!v617)
    {
      goto LABEL_115;
    }
  }

LABEL_546:

LABEL_559:

LABEL_560:

  return v2;
}

unint64_t sub_255D8AE34()
{
  result = qword_27F7E74F8;
  if (!qword_27F7E74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E74F8);
  }

  return result;
}

uint64_t sub_255D8AE94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D8AEF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI19DecodableStateErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255D8AFC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D8B01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_255D8B078(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOySiGSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13IntResolvableOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 0x7E) != 0)
  {
    return 128 - (v1 & 0x7E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D8B130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 25))
  {
    return (*a1 + 126);
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x7E) != 0)
  {
    v4 = 126 - (v3 & 0x7E | (v3 >> 7));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255D8B184(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (a2 ^ 0x7F) & 0xFE | ((a2 ^ 0x7F) << 7);
    }
  }

  return result;
}

uint64_t sub_255D8B1EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7578, &qword_255E48DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8B6B0();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D8B704();
    sub_255E3ABA8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8B380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656E696CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255D8B404(uint64_t a1)
{
  v2 = sub_255D8B6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8B440(uint64_t a1)
{
  v2 = sub_255D8B6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D8B47C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9 <= 0xFD)
  {
    sub_255D612A0(v6, v7, v8, v9);
    sub_255D8F9E4(a2);
    sub_255D4CB98(v6, v7, v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
  a3[3] = sub_255E38AE8();
  sub_255D8B64C();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39CF8();
}

unint64_t sub_255D8B5D0(uint64_t a1)
{
  result = sub_255D8B5F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D8B5F8()
{
  result = qword_27F7E7560;
  if (!qword_27F7E7560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7560);
  }

  return result;
}

unint64_t sub_255D8B64C()
{
  result = qword_27F7E7570;
  if (!qword_27F7E7570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7570);
  }

  return result;
}

unint64_t sub_255D8B6B0()
{
  result = qword_27F7E7580;
  if (!qword_27F7E7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7580);
  }

  return result;
}

unint64_t sub_255D8B704()
{
  result = qword_27F7E7588;
  if (!qword_27F7E7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7588);
  }

  return result;
}

unint64_t sub_255D8B76C()
{
  result = qword_27F7E7590;
  if (!qword_27F7E7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7590);
  }

  return result;
}

unint64_t sub_255D8B7C4()
{
  result = qword_27F7E7598;
  if (!qword_27F7E7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7598);
  }

  return result;
}

unint64_t sub_255D8B81C()
{
  result = qword_27F7E75A0;
  if (!qword_27F7E75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75A0);
  }

  return result;
}

void sub_255D8B874(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *v3;
  if (*(a1 + 8))
  {
    v7 = *a1;
    v8 = *&v5;
    v9 = *a2;
    if (*(a2 + 8))
    {
      v8 = *a2;
    }

    if (*v3 > 1u)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (*(a2 + 8))
  {
    v7 = v4;
    v8 = *a2;
    if (*v3 > 1u)
    {
LABEL_5:
      if (v6 == 2)
      {
        v10 = v8 * v7;
      }

      else if (v6 == 3)
      {
        v10 = v7 / v8;
      }

      else
      {
        v14 = a3;
        v10 = fmod(v7, v8);
        a3 = v14;
      }

LABEL_22:
      v13 = *&v10;
      v12 = 1;
      goto LABEL_23;
    }

LABEL_10:
    v11 = v8 + v7;
    v10 = v7 - v8;
    if (!*v3)
    {
      v10 = v11;
    }

    goto LABEL_22;
  }

  if (*v3 <= 1u)
  {
    if (*v3)
    {
      v13 = v4 - *&v5;
      if (__OFSUB__(v4, *&v5))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      goto LABEL_35;
    }

    v13 = v4 + *&v5;
    if (!__OFADD__(v4, *&v5))
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_28:
    v13 = v4 * *&v5;
    *&v5 = (v4 * *&v5) >> 64;
    if (*&v5 != v13 >> 63)
    {
      __break(1u);
      goto LABEL_30;
    }

LABEL_35:
    v12 = 0;
    goto LABEL_23;
  }

  if (v6 == 2)
  {
    goto LABEL_28;
  }

  if (v6 == 3)
  {
    if (v5 != 0.0)
    {
      if (v4 != 0x8000000000000000 || v5 != NAN)
      {
        v12 = 0;
        v13 = v4 / *&v5;
LABEL_23:
        *a3 = v13;
        *(a3 + 8) = v12;
        return;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_30:
  if (v5 == 0.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v4 != 0x8000000000000000 || v5 != NAN)
  {
    v12 = 0;
    v13 = v4 % *&v5;
    goto LABEL_23;
  }

LABEL_40:
  __break(1u);
}

LiftUI::MathOperation_optional __swiftcall MathOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255E3AB48();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_255D8BA54()
{
  v1 = *v0;
  sub_255E3AD98();
  v2 = qword_255E49018[v1];
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D8BAB0()
{
  v1 = qword_255E49018[*v0];
  sub_255E3A578();
}

uint64_t sub_255D8BAF0()
{
  v1 = *v0;
  sub_255E3AD98();
  v2 = qword_255E49018[v1];
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t NumericValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {

    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_255D8BD3C(v9);
    sub_255D7B470();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    swift_willThrow();
  }

  else
  {
    sub_255D4F134(v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v7 = sub_255E3ACA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    *a2 = v7;
    *(a2 + 8) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8BD3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E74B8, &qword_255E48640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *static NumericValue.create(with:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 61;
  if (v3 == 2)
  {
    *a2 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 1;
  }

  else if (v3 == 1)
  {
    *a2 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    *(a2 + 8) = 0;
  }

  else
  {
    sub_255D7B470();
    swift_allocError();
    v4 = MEMORY[0x277D839F8];
    *v5 = v2;
    v5[1] = v4;
    swift_willThrow();
  }

  return result;
}

uint64_t NumericValue.asDecodable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_allocObject();
  *(result + 16) = v3;
  v6 = 0x2000000000000000;
  if (v4)
  {
    v6 = 0x4000000000000000;
  }

  *a1 = v6 | result;
  return result;
}

unint64_t sub_255D8BEC0()
{
  result = qword_27F7E75A8;
  if (!qword_27F7E75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75A8);
  }

  return result;
}

uint64_t sub_255D8BF14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_allocObject();
  *(result + 16) = v3;
  v6 = 0x2000000000000000;
  if (v4)
  {
    v6 = 0x4000000000000000;
  }

  *a1 = v6 | result;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NumericValue(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NumericValue(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255D8C060()
{
  result = qword_27F7E75B0;
  if (!qword_27F7E75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75B0);
  }

  return result;
}

uint64_t sub_255D8C0B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 25))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D8C108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_255D8C174(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D8C1C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_255D8C234@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = *(v3 + 72);
  v31 = *(v3 + 64);
  v12 = *(v3 + 80);
  v13 = *(v3 + 88);
  v28 = *(v3 + 104);
  v29 = *(v3 + 96);
  v27 = *(v3 + 112);
  v14 = 1.0;
  v30 = *(v3 + 120);
  if (v6 == 255)
  {
    v17 = 1.0;
    if (v10 == 255)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = sub_255DDEF98(a2, *v3, *(v3 + 8), *(v3 + 16), v6 & 1);
    if (v4)
    {
      return result;
    }

    v17 = v16;
    if (v10 == 255)
    {
      goto LABEL_8;
    }
  }

  result = sub_255DDEF98(a2, v7, v8, v9, v10 & 1);
  if (v4)
  {
    return result;
  }

  v14 = v18;
LABEL_8:
  v19 = 0.5;
  if (v13 == 255)
  {
    v21 = 0.5;
  }

  else
  {
    result = sub_255DDEF98(a2, v31, v11, v12, v13 & 1);
    if (v4)
    {
      return result;
    }

    v21 = v20;
  }

  if (v30 != 255)
  {
    result = sub_255DDEF98(a2, v29, v28, v27, v30 & 1);
    if (v4)
    {
      return result;
    }

    v19 = v22;
  }

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  a3[3] = sub_255E38AE8();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return MEMORY[0x259C4DC60](v23, v24, v17, v14, v21, v19);
}

uint64_t sub_255D8C42C()
{
  v1 = 120;
  v2 = 0x58726F68636E61;
  if (*v0 != 2)
  {
    v2 = 0x59726F68636E61;
  }

  if (*v0)
  {
    v1 = 121;
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

uint64_t sub_255D8C490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D8D48C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D8C4B8(uint64_t a1)
{
  v2 = sub_255D8D1A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8C4F4(uint64_t a1)
{
  v2 = sub_255D8D1A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D8C530@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E75E8, &unk_255E496E0);
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8D1A0();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v30 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
  LOBYTE(v32) = 0;
  sub_255D38950(&qword_27F7E62E8, &qword_27F7E62E0, &qword_255E3C940);
  v10 = v31;
  sub_255E3ABA8();
  v28 = v39;
  v29 = v40;
  v56 = v41;
  LOBYTE(v32) = 1;
  sub_255E3ABA8();
  v25 = v39;
  v26 = v40;
  v24 = v41;
  LOBYTE(v32) = 2;
  v23 = 0;
  sub_255E3ABA8();
  v27 = *(&v39 + 1);
  v22 = v39;
  v20 = v40;
  v21 = v41;
  v57 = 3;
  sub_255E3ABA8();
  (*(v30 + 8))(v8, v10);
  v30 = *(&v53 + 1);
  v31 = v53;
  v23 = v54;
  HIDWORD(v19) = v55;
  v11 = v28;
  v32 = v28;
  v12 = v29;
  *&v33 = v29;
  v13 = v56;
  BYTE8(v33) = v56;
  v34 = v25;
  *&v35 = v26;
  v14 = v24;
  BYTE8(v35) = v24;
  *&v36 = v22;
  *(&v36 + 1) = v27;
  *&v37 = v20;
  BYTE8(v37) = v21;
  v38[0] = v53;
  *&v38[1] = v54;
  BYTE8(v38[1]) = v55;
  v15 = v35;
  a2[2] = v25;
  a2[3] = v15;
  v16 = v37;
  a2[4] = v36;
  a2[5] = v16;
  v17 = v33;
  *a2 = v32;
  a2[1] = v17;
  *(a2 + 105) = *(v38 + 9);
  a2[6] = v38[0];
  sub_255D8D1F4(&v32, &v39);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v39 = v11;
  v40 = v12;
  v41 = v13;
  v42 = v25;
  v43 = v26;
  v44 = v14;
  v45 = v22;
  v46 = v27;
  v47 = v20;
  v48 = v21;
  v49 = v31;
  v50 = v30;
  v51 = v23;
  v52 = BYTE4(v19);
  return sub_255D8D22C(&v39);
}

uint64_t sub_255D8CA10()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D8CA74()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D8CAC0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255D8CB40@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255D8CB98(uint64_t a1)
{
  v2 = sub_255D8D14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8CBD4(uint64_t a1)
{
  v2 = sub_255D8D14C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D8CC10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E75D8, &qword_255E496D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8D14C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8CD90@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a3;
  v7 = sub_255E39EC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v29 = *v3;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  sub_255D3E5A8(v29, v12, v13, v14);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {

    sub_255D38060(v29, v30, v31, v32);
    v26 = 0;
  }

  else
  {
    v26 = 0;
    sub_255D38060(v29, v30, v31, v32);
  }

  v15 = sub_255E3AB48();

  v16 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = MEMORY[0x277CE1050];
  v18 = MEMORY[0x277CE1048];
  if (v15 != 2)
  {
    v18 = MEMORY[0x277CE1058];
  }

  if (v15)
  {
    v17 = v18;
  }

  (*(v8 + 104))(v11, *v17, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E75C8, &qword_255E496D0);
  v19 = sub_255E38AE8();
  v20 = v11;
  v21 = v8;
  v22 = v33;
  v33[3] = v19;
  v23 = sub_255D38950(&qword_27F7E75D0, &qword_27F7E75C8, &qword_255E496D0);
  v27 = v16;
  v28 = v23;
  v22[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_255E39888();
  return (*(v21 + 8))(v20, v7);
}

unint64_t sub_255D8D054(uint64_t a1)
{
  result = sub_255D8D07C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D8D07C()
{
  result = qword_27F7E75B8;
  if (!qword_27F7E75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75B8);
  }

  return result;
}

unint64_t sub_255D8D0D0(uint64_t a1)
{
  result = sub_255D8D0F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D8D0F8()
{
  result = qword_27F7E75C0;
  if (!qword_27F7E75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75C0);
  }

  return result;
}

unint64_t sub_255D8D14C()
{
  result = qword_27F7E75E0;
  if (!qword_27F7E75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75E0);
  }

  return result;
}

unint64_t sub_255D8D1A0()
{
  result = qword_27F7E75F0;
  if (!qword_27F7E75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75F0);
  }

  return result;
}

unint64_t sub_255D8D280()
{
  result = qword_27F7E75F8;
  if (!qword_27F7E75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E75F8);
  }

  return result;
}

unint64_t sub_255D8D2D8()
{
  result = qword_27F7E7600;
  if (!qword_27F7E7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7600);
  }

  return result;
}

unint64_t sub_255D8D330()
{
  result = qword_27F7E7608;
  if (!qword_27F7E7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7608);
  }

  return result;
}

unint64_t sub_255D8D388()
{
  result = qword_27F7E7610;
  if (!qword_27F7E7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7610);
  }

  return result;
}

unint64_t sub_255D8D3E0()
{
  result = qword_27F7E7618;
  if (!qword_27F7E7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7618);
  }

  return result;
}

unint64_t sub_255D8D438()
{
  result = qword_27F7E7620;
  if (!qword_27F7E7620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7620);
  }

  return result;
}

uint64_t sub_255D8D48C(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x58726F68636E61 && a2 == 0xE700000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x59726F68636E61 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_255E3AC68();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_255D8D5DC(unint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  sub_255D3E5A8(*v1, v13, v14, v15);
  StringResolvable.resolved(with:)(a1);
  if (v2)
  {
    return sub_255D38060(v12, v13, v14, v15);
  }

  sub_255D38060(v12, v13, v14, v15);
  v9 = sub_255D8DC34();
  if (v9 == 5)
  {
    sub_255D5C33C();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 5;
    return swift_willThrow();
  }

  else
  {
    if (v7 != 255)
    {
      v11 = v9;
      sub_255DDEF98(a1, v4, v5, v6, v7 & 1);
      v9 = v11;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v7 == 255)
        {
          return sub_255E3A288();
        }

        else
        {
          return sub_255E3A278();
        }
      }

      else
      {
        return sub_255E3A298();
      }
    }

    else if (v9 == 2)
    {
      if (v7 == 255)
      {
        return sub_255E3A268();
      }

      else
      {
        return sub_255E3A258();
      }
    }

    else if (v9 == 3)
    {
      if (v7 == 255)
      {
        return sub_255E3A2B8();
      }

      else
      {
        return sub_255E3A2A8();
      }
    }

    else if (v7 == 255)
    {
      return sub_255E3A2D8();
    }

    else
    {
      return sub_255E3A2C8();
    }
  }
}

uint64_t sub_255D8D7AC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7628, &unk_255E49CA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D8DD30();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v23) = 0;
  sub_255D3EA0C();
  sub_255E3ABC8();
  v11 = v26;
  v12 = v27;
  v22 = v28;
  v37 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
  v38 = 1;
  sub_255D65400();
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v21 = v34;
  v13 = v35;
  v20 = *(&v34 + 1);
  v14 = v36;
  v15 = v11;
  *&v23 = v11;
  *(&v23 + 1) = v12;
  v16 = v12;
  v17 = v22;
  *&v24 = v22;
  LOBYTE(v12) = v37;
  BYTE8(v24) = v37;
  *v25 = v34;
  *&v25[16] = v35;
  v25[24] = v36;
  v18 = v24;
  *a2 = v23;
  a2[1] = v18;
  a2[2] = *v25;
  *(a2 + 41) = *&v25[9];
  sub_255D8DD84(&v23, &v26);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v29 = v12;
  v30 = v21;
  v31 = v20;
  v32 = v13;
  v33 = v14;
  return sub_255D8DDBC(&v26);
}

uint64_t sub_255D8DA78()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x6F6974616D696E61;
  }

  *v0;
  return result;
}

uint64_t sub_255D8DAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974616D696E61 && a2 == 0xED0000657079546ELL;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255D8DBA4(uint64_t a1)
{
  v2 = sub_255D8DD30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8DBE0(uint64_t a1)
{
  v2 = sub_255D8DD30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D8DC34()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D8DC80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_255D8DCCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

unint64_t sub_255D8DD30()
{
  result = qword_27F7E7630;
  if (!qword_27F7E7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7630);
  }

  return result;
}

unint64_t sub_255D8DE00()
{
  result = qword_27F7E7638;
  if (!qword_27F7E7638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7638);
  }

  return result;
}

unint64_t sub_255D8DE58()
{
  result = qword_27F7E7640;
  if (!qword_27F7E7640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7640);
  }

  return result;
}

unint64_t sub_255D8DEB0()
{
  result = qword_27F7E7648;
  if (!qword_27F7E7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7648);
  }

  return result;
}

uint64_t sub_255D8DF04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6 + 8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11 + 8;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    LOBYTE(v25[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 0;
      v18 = sub_255E3ABB8();
      v19 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7720, &qword_255E4A760);
      LOBYTE(v24) = 1;
      sub_255D9186C(&qword_27F7E7728, &qword_27F7E7720, &qword_255E4A760);
      sub_255E3ABA8();
      (*(v9 + 8))(v12, v8);
      v20 = v25[0];
      v21 = 1;
      goto LABEL_9;
    }

    LOBYTE(v25[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 2;
      v16 = sub_255E3ABB8();
      sub_255DE37E8(v25, 0xFuLL, v16, v17);

      (*(v9 + 8))(v12, v8);
      v18 = v25[0];
      v19 = v25[1];
      v20 = v25[2];
      v21 = v26;
      goto LABEL_9;
    }

    (*(v9 + 8))(v12, v8);
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v24, v25);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_255E3ACB8();
  v18 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_9:
  v22 = v27;
  *v27 = v18;
  v22[1] = v19;
  v22[2] = v20;
  *(v22 + 24) = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8E3D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6 + 8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11 + 8;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    LOBYTE(v25[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 0;
      v18 = sub_255E3ABB8();
      v19 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7730, &qword_255E4A768);
      LOBYTE(v24) = 1;
      sub_255D9186C(&qword_27F7E7738, &qword_27F7E7730, &qword_255E4A768);
      sub_255E3ABA8();
      (*(v9 + 8))(v12, v8);
      v20 = v25[0];
      v21 = 1;
      goto LABEL_9;
    }

    LOBYTE(v25[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 2;
      v16 = sub_255E3ABB8();
      sub_255DE45F4(v25, 0xFuLL, v16, v17);

      (*(v9 + 8))(v12, v8);
      v18 = v25[0];
      v19 = v25[1];
      v20 = v25[2];
      v21 = v26;
      goto LABEL_9;
    }

    (*(v9 + 8))(v12, v8);
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v24, v25);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_255E3ACB8();
  v18 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_9:
  v22 = v27;
  *v27 = v18;
  v22[1] = v19;
  v22[2] = v20;
  *(v22 + 24) = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8E89C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6 + 8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11 + 8;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    LOBYTE(v25[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 0;
      v19 = sub_255E3ABB8();
      v18 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7710, &qword_255E4A758);
      LOBYTE(v24) = 1;
      sub_255D9186C(&qword_27F7E7718, &qword_27F7E7710, &qword_255E4A758);
      sub_255E3ABA8();
      (*(v9 + 8))(v12, v8);
      v20 = v25[0];
      v21 = 1;
      goto LABEL_9;
    }

    LOBYTE(v25[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 2;
      v16 = sub_255E3ABB8();
      sub_255DE45A4(v25, 0xFuLL, v16, v17);

      (*(v9 + 8))(v12, v8);
      v19 = v25[0];
      v18 = v25[1];
      v20 = v25[2];
      v21 = v26;
      goto LABEL_9;
    }

    (*(v9 + 8))(v12, v8);
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v24, v25);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_255E3ACB8();
  v18 = *(&v24 + 1);
  v19 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v20 = 0;
  v21 = 0;
LABEL_9:
  v22 = v27;
  *v27 = v19;
  v22[1] = v18;
  v22[2] = v20;
  *(v22 + 24) = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8ED64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6 + 8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11 + 8;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    LOBYTE(v25[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 0;
      v18 = sub_255E3ABB8();
      v19 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7748, &qword_255E4A770);
      LOBYTE(v24) = 1;
      sub_255D9186C(&qword_27F7E7750, &qword_27F7E7748, &qword_255E4A770);
      sub_255E3ABA8();
      (*(v9 + 8))(v12, v8);
      v20 = v25[0];
      v21 = 1;
      goto LABEL_9;
    }

    LOBYTE(v25[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 2;
      v16 = sub_255E3ABB8();
      sub_255DE4644(v25, 0xFuLL, v16, v17);

      (*(v9 + 8))(v12, v8);
      v18 = v25[0];
      v19 = v25[1];
      v20 = v25[2];
      v21 = v26;
      goto LABEL_9;
    }

    (*(v9 + 8))(v12, v8);
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v24, v25);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_255D91818();
  sub_255E3ACB8();
  v18 = v24;
  v19 = BYTE8(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v20 = 0;
  v21 = 0;
LABEL_9:
  v22 = v27;
  *v27 = v18;
  v22[1] = v19;
  v22[2] = v20;
  *(v22 + 24) = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D8F230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6 + 8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11 + 8;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D917C4();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E76F8, &qword_255E4A740);
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    LOBYTE(v25[0]) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 0;
      v18 = sub_255E3ABB8();
      v19 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7758, &qword_255E4A778);
      LOBYTE(v24) = 1;
      sub_255D9186C(&qword_27F7E7760, &qword_27F7E7758, &qword_255E4A778);
      sub_255E3ABA8();
      (*(v9 + 8))(v12, v8);
      v20 = v25[0];
      v21 = 1;
      goto LABEL_9;
    }

    LOBYTE(v25[0]) = 2;
    if (sub_255E3ABE8())
    {
      LOBYTE(v25[0]) = 2;
      v16 = sub_255E3ABB8();
      sub_255DE4694(v25, 0xFuLL, v16, v17);

      (*(v9 + 8))(v12, v8);
      v18 = v25[0];
      v19 = v25[1];
      v20 = v25[2];
      v21 = v26;
      goto LABEL_9;
    }

    (*(v9 + 8))(v12, v8);
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  sub_255D4F134(&v24, v25);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_255D7D39C();
  sub_255E3ACB8();
  v18 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_9:
  v22 = v27;
  *v27 = v18;
  v22[1] = v19;
  v22[2] = v20;
  *(v22 + 24) = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

double sub_255D8F6FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4 < 0)
  {
    v16 = *(v1 + 8);
    sub_255D8FD00(a1, &v14);
    v11 = v14;
    v12 = v15;
    sub_255D8FD00(a1, &v9);
    v7 = v9;
    v8 = v10;
    sub_255D8B874(&v11, &v7, &v13);
    return v13;
  }

  else
  {
    sub_255DDEF98(a1, *v1, *(v1 + 8), *(v1 + 16), v4 & 1);
  }

  return result;
}

uint64_t sub_255D8F9E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if ((v4 & 0x80000000) == 0)
  {
    return sub_255DDEA10(a1, *v1, *(v1 + 8), *(v1 + 16), v4 & 1);
  }

  v17 = *(v1 + 8);
  sub_255D8FD00(a1, &v15);
  v11 = v15;
  v12 = v16;
  sub_255D8FD00(a1, &v9);
  v7 = v9;
  v8 = v10;
  sub_255D8B874(&v11, &v7, &v13);
  result = *&v13;
  if (v14 == 1)
  {
    if ((~*&v13 & 0x7FF0000000000000) != 0)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          return v13;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_255D8FD00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  if (*v2 < 0)
  {
    v11 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 16);
    v13 = *(v11 + 32);
    v22 = *(v11 + 24);
    v18 = v12;
    sub_255D8FD00(&v20, a1);
    if (!v3)
    {
      v18 = v20;
      v19 = v21;
      sub_255D8FD00(&v16, a1);
      v14 = v16;
      v15 = v17;
      sub_255D8B874(&v18, &v14, a2);
    }
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    sub_255D348B4(v7, v8, v9, v10);
    sub_255DDE830(a1, v7, v8, v9, v10, a2);
    sub_255D34870(v7, v8, v9, v10);
  }
}

uint64_t sub_255D8FE30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D91630();
  *a2 = result;
  return result;
}

uint64_t sub_255D8FE60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D91630();
  *a1 = result;
  return result;
}

uint64_t sub_255D8FE88(uint64_t a1)
{
  v2 = sub_255D902CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D8FEC4(uint64_t a1)
{
  v2 = sub_255D902CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NumericResolvable.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7650, &qword_255E49DD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7658, &qword_255E49DD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D902CC();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E7650, &qword_255E49DD0);
LABEL_6:
    sub_255D3CE1C(a1, v23);
    sub_255D8ED64(v23, &v24);
    v22 = v24;
    v14 = v25;
    v15 = v26;
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 32) = v14;
    *(v21 + 40) = v15;
    goto LABEL_7;
  }

  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v12, v7, v8);
  LOBYTE(v23[0]) = 1;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  LOBYTE(v24) = 0;
  sub_255D90320();
  sub_255E3ABC8();
  v17 = v23[0];
  LOBYTE(v24) = 1;
  sub_255D90374();
  sub_255E3ABC8();
  v18 = v23[0];
  LOBYTE(v24) = 2;
  sub_255E3ABC8();
  (*(v9 + 8))(v12, v8);
  v19 = v23[0];
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  *(v20 + 32) = v19;
  v21 = v20 | 0x8000000000000000;
LABEL_7:
  *v27 = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255D902CC()
{
  result = qword_27F7E7660;
  if (!qword_27F7E7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7660);
  }

  return result;
}

unint64_t sub_255D90320()
{
  result = qword_27F7E7668;
  if (!qword_27F7E7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7668);
  }

  return result;
}

unint64_t sub_255D90374()
{
  result = qword_27F7E7670;
  if (!qword_27F7E7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7670);
  }

  return result;
}

uint64_t sub_255D903E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D9167C();
  *a2 = result;
  return result;
}

uint64_t sub_255D90410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D9167C();
  *a1 = result;
  return result;
}

uint64_t sub_255D90438(uint64_t a1)
{
  v2 = sub_255D9083C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D90474(uint64_t a1)
{
  v2 = sub_255D9083C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DoubleResolvable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7678, &qword_255E49DE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7680, &unk_255E49DE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D9083C();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E7678, &qword_255E49DE0);
LABEL_6:
    sub_255D3CE1C(a1, v21);
    sub_255D8E3D0(v21, v22);
    v16 = v22[0];
    v17 = v22[1];
    v18 = v22[2];
    v19 = v23;
    goto LABEL_7;
  }

  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v12, v7, v8);
  LOBYTE(v21[0]) = 1;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  LOBYTE(v22[0]) = 0;
  sub_255D90320();
  sub_255E3ABC8();
  v16 = v21[0];
  LOBYTE(v22[0]) = 1;
  sub_255D90374();
  sub_255E3ABC8();
  v17 = LOBYTE(v21[0]);
  LOBYTE(v22[0]) = 2;
  sub_255E3ABC8();
  (*(v9 + 8))(v12, v8);
  v18 = v21[0];
  v19 = 0x80;
LABEL_7:
  v14 = v24;
  *v24 = v16;
  v14[1] = v17;
  v14[2] = v18;
  *(v14 + 24) = v19;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255D9083C()
{
  result = qword_27F7E7688;
  if (!qword_27F7E7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7688);
  }

  return result;
}

uint64_t sub_255D908C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x726F74617265706FLL;
  v5 = 7563378;
  if (v2 != 1)
  {
    v4 = 7563378;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 7563372;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xE800000000000000;
  if (*a2 == 1)
  {
    v5 = 0x726F74617265706FLL;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 7563372;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D909A0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D90A30()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255D90AAC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D90B38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255D916C8();
  *a2 = result;
  return result;
}

uint64_t sub_255D90B68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255D916C8();
  *a1 = result;
  return result;
}

uint64_t sub_255D90B90(uint64_t a1)
{
  v2 = sub_255D90F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D90BCC(uint64_t a1)
{
  v2 = sub_255D90F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntResolvable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7690, &qword_255E49DF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7698, &unk_255E49E00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-1] - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D90F94();
  sub_255E3AE28();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_255D395E4(v7, &qword_27F7E7690, &qword_255E49DF8);
LABEL_6:
    sub_255D3CE1C(a1, v21);
    sub_255D8DF04(v21, v22);
    v16 = v22[0];
    v17 = v22[1];
    v18 = v22[2];
    v19 = v23;
    goto LABEL_7;
  }

  (*(v9 + 56))(v7, 0, 1, v8);
  (*(v9 + 32))(v12, v7, v8);
  LOBYTE(v21[0]) = 1;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v9 + 8))(v12, v8);
    goto LABEL_6;
  }

  LOBYTE(v22[0]) = 0;
  sub_255D90320();
  sub_255E3ABC8();
  v16 = v21[0];
  LOBYTE(v22[0]) = 1;
  sub_255D90374();
  sub_255E3ABC8();
  v17 = LOBYTE(v21[0]);
  LOBYTE(v22[0]) = 2;
  sub_255E3ABC8();
  (*(v9 + 8))(v12, v8);
  v18 = v21[0];
  v19 = 0x80;
LABEL_7:
  v14 = v24;
  *v24 = v16;
  v14[1] = v17;
  v14[2] = v18;
  *(v14 + 24) = v19;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255D90F94()
{
  result = qword_27F7E76A0;
  if (!qword_27F7E76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76A0);
  }

  return result;
}

uint64_t sub_255D90FFC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2[2];
  if (v2[3] < 0)
  {
    sub_255E3AAC8();
    MEMORY[0x259C4E8F0](32, 0xE100000000000000);
    sub_255E3AAC8();
    MEMORY[0x259C4E8F0](32, 0xE100000000000000);
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  }

  sub_255E3AAC8();
  return 0;
}

uint64_t sub_255D9113C(uint64_t a1, unsigned int a2)
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

uint64_t sub_255D91198(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_255D9122C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 25))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255D9127C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_255D9131C()
{
  result = qword_27F7E76B0;
  if (!qword_27F7E76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76B0);
  }

  return result;
}

unint64_t sub_255D91374()
{
  result = qword_27F7E76B8;
  if (!qword_27F7E76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76B8);
  }

  return result;
}

unint64_t sub_255D913CC()
{
  result = qword_27F7E76C0;
  if (!qword_27F7E76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76C0);
  }

  return result;
}

unint64_t sub_255D91424()
{
  result = qword_27F7E76C8;
  if (!qword_27F7E76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76C8);
  }

  return result;
}

unint64_t sub_255D9147C()
{
  result = qword_27F7E76D0;
  if (!qword_27F7E76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76D0);
  }

  return result;
}

unint64_t sub_255D914D4()
{
  result = qword_27F7E76D8;
  if (!qword_27F7E76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76D8);
  }

  return result;
}

unint64_t sub_255D9152C()
{
  result = qword_27F7E76E0;
  if (!qword_27F7E76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76E0);
  }

  return result;
}

unint64_t sub_255D91584()
{
  result = qword_27F7E76E8;
  if (!qword_27F7E76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76E8);
  }

  return result;
}

unint64_t sub_255D915DC()
{
  result = qword_27F7E76F0;
  if (!qword_27F7E76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E76F0);
  }

  return result;
}

uint64_t sub_255D91630()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D9167C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D916C8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255D91714(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a4 < 0)
  {
  }

  else
  {
    v6 = a4 & 1;

    return a5(a1, a2, a3, v6);
  }
}

uint64_t sub_255D9176C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a4 < 0)
  {
  }

  else
  {
    v6 = a4 & 1;

    return a5(a1, a2, a3, v6);
  }
}

unint64_t sub_255D917C4()
{
  result = qword_27F7E7708;
  if (!qword_27F7E7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7708);
  }

  return result;
}

unint64_t sub_255D91818()
{
  result = qword_27F7E7740;
  if (!qword_27F7E7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7740);
  }

  return result;
}

uint64_t sub_255D9186C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_255D91900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255D91948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D91998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  return sub_255E393F8();
}

uint64_t sub_255D91A14()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255D91AF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_255D91B54@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

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

uint64_t sub_255D91BB8(uint64_t a1)
{
  v2 = sub_255D92360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D91BF4(uint64_t a1)
{
  v2 = sub_255D92360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D91C30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A08, &unk_255E4A890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v16[1] = *v2;
  v17 = *(v2 + 8);
  v13 = sub_255D4EF0C();
  (*(v13 + 24))(a1, v13);
  (*(v6 + 16))(v10, v12, v5);
  sub_255D4EF60();
  v14 = sub_255E3A038();
  result = (*(v6 + 8))(v12, v5);
  *a2 = v14;
  return result;
}

uint64_t sub_255D91DA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_255E3A1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A20, &qword_255E3E2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E68C8, &unk_255E3E230);
  sub_255D38950(&qword_27F7E6A18, &qword_27F7E6A20, &qword_255E3E2A0);
  sub_255D4E240();
  return sub_255E3A1B8();
}

uint64_t sub_255D91EB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255D92070(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_255D91F04()
{
  sub_255D91F60();
  sub_255D4F024();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D91F60()
{
  result = qword_27F7E7768;
  if (!qword_27F7E7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7768);
  }

  return result;
}

unint64_t sub_255D91FB4(uint64_t a1)
{
  result = sub_255D91FDC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D91FDC()
{
  result = qword_27F7E7770;
  if (!qword_27F7E7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7770);
  }

  return result;
}

uint64_t sub_255D92030()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_255D91998();
}

uint64_t sub_255D9203C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_255D91A14();
}