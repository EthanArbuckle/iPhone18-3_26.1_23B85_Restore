void GTMTLSMCommandEncoder_processTraceFunc(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a1 + 8616;
  v7 = *(a2 + 2);
  if (v7 > -16078)
  {
    if (v7 > -15460)
    {
      if (v7 <= -15365)
      {
        switch(v7)
        {
          case -15459:
          case -15458:
          case -15456:
            v11 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v12 = *(v11 + 2);
            v13 = 1 << v12;
            v14 = a1 + 8 * (v12 >> 6);
            *(v14 + 1976) &= ~v13;
            *(a1 + 8 * *(v11 + 2) + 1984) = *(v11 + 1);
            return;
          case -15457:
            v472 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v473 = v472;
            v474 = *(v472 + 1);
            v475 = *(v472 + 2) + v474;
            if (v475 >= 0x40)
            {
              v475 = 64;
            }

            v476 = v475 - v474;
            if (v475 < v474)
            {
              v476 = 0;
            }

            v477 = ~(-1 << v476);
            if (v474 <= v475)
            {
              v478 = v474 & 0x3F;
            }

            else
            {
              v478 = 0;
            }

            *(a1 + 1976) &= ~(v477 << v478);
            v479 = *(v472 + 1);
            v480 = GTTraceFunc_argumentBytesWithMap(a2, v472[24], a3);
            if (*(v473 + 2) >= 1)
            {
              v481 = (a1 + 8 * v479 + 1984);
              v482 = *(v473 + 2) & 0x7FFFFFFFLL;
              do
              {
                v483 = *v480;
                v480 += 8;
                *v481++ = v483;
                --v482;
              }

              while (v482);
            }

            return;
          case -15455:
            v460 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v461 = v460;
            v462 = *(v460 + 1);
            v463 = *(v460 + 2) + v462;
            if (v463 >= 0x40)
            {
              v463 = 64;
            }

            v464 = v463 - v462;
            if (v463 < v462)
            {
              v464 = 0;
            }

            v465 = ~(-1 << v464);
            if (v462 <= v463)
            {
              v466 = v462 & 0x3F;
            }

            else
            {
              v466 = 0;
            }

            *(a1 + 1976) &= ~(v465 << v466);
            v467 = *(v460 + 1);
            v468 = GTTraceFunc_argumentBytesWithMap(a2, v460[24], a3);
            if (*(v461 + 2) >= 1)
            {
              v469 = (a1 + 8 * v467 + 1984);
              v470 = *(v461 + 2) & 0x7FFFFFFFLL;
              do
              {
                v471 = *v468;
                v468 += 8;
                *v469++ = v471;
                --v470;
              }

              while (v470);
            }

            return;
          case -15454:
          case -15453:
          case -15451:
            v89 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v90 = *(v89 + 2);
            v91 = 1 << v90;
            v92 = a1 + 8 * (v90 >> 6);
            *(v92 + 6944) &= ~v91;
            *(a1 + 8 * *(v89 + 2) + 6952) = *(v89 + 1);
            return;
          case -15452:
            v448 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v449 = v448;
            v450 = *(v448 + 1);
            v451 = *(v448 + 2) + v450;
            if (v451 >= 0x40)
            {
              v451 = 64;
            }

            v452 = v451 - v450;
            if (v451 < v450)
            {
              v452 = 0;
            }

            v453 = ~(-1 << v452);
            if (v450 <= v451)
            {
              v454 = v450 & 0x3F;
            }

            else
            {
              v454 = 0;
            }

            *(a1 + 6944) &= ~(v453 << v454);
            v455 = *(v448 + 1);
            v456 = GTTraceFunc_argumentBytesWithMap(a2, v448[24], a3);
            if (*(v449 + 2) >= 1)
            {
              v457 = (a1 + 8 * v455 + 6952);
              v458 = *(v449 + 2) & 0x7FFFFFFFLL;
              do
              {
                v459 = *v456;
                v456 += 8;
                *v457++ = v459;
                --v458;
              }

              while (v458);
            }

            return;
          case -15450:
            v434 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v435 = v434;
            v436 = *(v434 + 1);
            v437 = *(v434 + 2) + v436;
            if (v437 >= 0x40)
            {
              v437 = 64;
            }

            v438 = v437 - v436;
            if (v437 < v436)
            {
              v438 = 0;
            }

            v439 = ~(-1 << v438);
            if (v436 <= v437)
            {
              v440 = v436 & 0x3F;
            }

            else
            {
              v440 = 0;
            }

            *(a1 + 6944) &= ~(v439 << v440);
            v441 = *(v434 + 1);
            v442 = GTTraceFunc_argumentBytesWithMap(a2, v434[24], a3);
            if (*(v435 + 2) >= 1)
            {
              v443 = (a1 + 8 * v441 + 6952);
              v444 = *(v435 + 2) & 0x7FFFFFFFLL;
              do
              {
                v445 = *v442;
                v442 += 8;
                *v443++ = v445;
                --v444;
              }

              while (v444);
            }

            return;
          case -15449:
          case -15448:
          case -15446:
            v82 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v83 = *(v82 + 2);
            v84 = 1 << v83;
            v85 = a1 + 8 * (v83 >> 6);
            *(v85 + 64) &= ~v84;
            *(a1 + 8 * *(v82 + 2) + 80) = *(v82 + 1);
            v86 = *(v82 + 2);
            v87 = 1 << v86;
            v88 = a1 + 8 * (v86 >> 6);
            *(v88 + 72) &= ~v87;
            return;
          case -15447:
            v416 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v417 = v416;
            v418 = *(v416 + 1);
            v419 = *(v416 + 2) + v418;
            if (v419 >= 0x40)
            {
              v419 = 64;
            }

            v420 = v419 - v418;
            if (v419 < v418)
            {
              v420 = 0;
            }

            v421 = ~(-1 << v420);
            if (v418 <= v419)
            {
              v422 = v418 & 0x3F;
            }

            else
            {
              v422 = 0;
            }

            v423 = *(a1 + 72);
            *(a1 + 64) &= ~(v421 << v422);
            v424 = *(v416 + 1);
            v425 = *(v416 + 2) + v424;
            if (v425 >= 0x40)
            {
              v425 = 64;
            }

            v426 = v425 - v424;
            if (v425 < v424)
            {
              v426 = 0;
            }

            v427 = ~(-1 << v426);
            if (v424 <= v425)
            {
              v428 = v424 & 0x3F;
            }

            else
            {
              v428 = 0;
            }

            *(a1 + 72) = v423 & ~(v427 << v428);
            v429 = *(v416 + 1);
            v430 = GTTraceFunc_argumentBytesWithMap(a2, v416[24], a3);
            if (*(v417 + 2) >= 1)
            {
              v431 = (a1 + 8 * v429 + 80);
              v432 = *(v417 + 2) & 0x7FFFFFFFLL;
              do
              {
                v433 = *v430;
                v430 += 8;
                *v431++ = v433;
                --v432;
              }

              while (v432);
            }

            return;
          case -15445:
            v392 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v393 = v392;
            v394 = *(v392 + 1);
            v395 = *(v392 + 2) + v394;
            if (v395 >= 0x40)
            {
              v395 = 64;
            }

            v396 = v395 - v394;
            if (v395 < v394)
            {
              v396 = 0;
            }

            v397 = ~(-1 << v396);
            if (v394 <= v395)
            {
              v398 = v394 & 0x3F;
            }

            else
            {
              v398 = 0;
            }

            v399 = *(a1 + 72);
            *(a1 + 64) &= ~(v397 << v398);
            v400 = *(v392 + 1);
            v401 = *(v392 + 2) + v400;
            if (v401 >= 0x40)
            {
              v401 = 64;
            }

            v402 = v401 - v400;
            if (v401 < v400)
            {
              v402 = 0;
            }

            v403 = ~(-1 << v402);
            if (v400 <= v401)
            {
              v404 = v400 & 0x3F;
            }

            else
            {
              v404 = 0;
            }

            *(a1 + 72) = v399 & ~(v403 << v404);
            v405 = *(v392 + 1);
            v406 = GTTraceFunc_argumentBytesWithMap(a2, v392[24], a3);
            if (*(v393 + 2) >= 1)
            {
              v407 = (a1 + 8 * v405 + 80);
              v408 = *(v393 + 2) & 0x7FFFFFFFLL;
              do
              {
                v409 = *v406;
                v406 += 8;
                *v407++ = v409;
                --v408;
              }

              while (v408);
            }

            return;
          case -15401:
            v386 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v387 = *(v386 + 3);
            v388 = 1 << v387;
            v389 = a1 + 8 * (v387 >> 6);
            *(v389 + 5288) &= ~v388;
            *(a1 + 8 * *(v386 + 3) + 5296) = *(v386 + 1);
            v390 = *(v386 + 2);
            v391 = *(v386 + 3);
            goto LABEL_464;
          case -15400:
            v497 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v390 = *(v497 + 1);
            v391 = *(v497 + 2);
            goto LABEL_464;
          case -15399:
            v485 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v94 = v485;
            v486 = *(v485 + 1);
            v487 = *(v485 + 2) + v486;
            if (v487 >= 0x40)
            {
              v487 = 64;
            }

            v488 = v487 - v486;
            if (v487 < v486)
            {
              v488 = 0;
            }

            v489 = ~(-1 << v488);
            if (v486 <= v487)
            {
              v490 = v486 & 0x3F;
            }

            else
            {
              v490 = 0;
            }

            *(a1 + 5288) &= ~(v489 << v490);
            v491 = *(v485 + 1);
            v492 = GTTraceFunc_argumentBytesWithMap(a2, v485[24], a3);
            if (*(v94 + 2) >= 1)
            {
              v493 = (a1 + 8 * v491 + 5296);
              v494 = *(v94 + 2) & 0x7FFFFFFFLL;
              do
              {
                v495 = *v492;
                v492 += 8;
                *v493++ = v495;
                --v494;
              }

              while (v494);
            }

            v69 = a1 + 8 * *(v94 + 1);
            v70 = 5544;
            goto LABEL_452;
          case -15398:
            v511 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v512 = *(v511 + 2);
            v513 = 1 << v512;
            v514 = a1 + 8 * (v512 >> 6);
            *(v514 + 5288) |= v513;
            *(a1 + 8 * *(v511 + 2) + 5296) = GTTraceFunc_argumentBytesWithMap(a2, v511[24], a3);
            v390 = *(v511 + 1);
            v391 = *(v511 + 2);
LABEL_464:
            *(a1 + 8 * v391 + 5544) = v390;
            return;
          case -15397:
            v484 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v484 + 2) + 6816) = *(v484 + 1);
            return;
          case -15396:
            v521 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v521 + 2) + 6816) = *(v521 + 1);
            *(a1 + 4 * *(v521 + 2) + 10492) = *(v521 + 6);
            *(a1 + 4 * *(v521 + 2) + 10556) = *(v521 + 7);
            return;
          case -15395:
            v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v504 = *(v61 + 1);
            v505 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
            if (*(v61 + 2) >= 1)
            {
              v506 = (a1 + 8 * v504 + 6816);
              v507 = *(v61 + 2) & 0x7FFFFFFFLL;
              do
              {
                v508 = *v505;
                v505 += 8;
                *v506++ = v508;
                --v507;
              }

              while (v507);
            }

            v509 = a1 + 4 * *(v61 + 1);
            v510 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
            memcpy((v509 + 10492), v510, 4 * *(v61 + 2));
            v69 = a1 + 4 * *(v61 + 1);
            v70 = 10556;
            goto LABEL_482;
          case -15394:
            v526 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v527 = *(v526 + 1);
            v528 = GTTraceFunc_argumentBytesWithMap(a2, v526[24], a3);
            if (*(v526 + 2) >= 1)
            {
              v529 = (a1 + 8 * v527 + 6816);
              v530 = *(v526 + 2) & 0x7FFFFFFFLL;
              do
              {
                v531 = *v528;
                v528 += 8;
                *v529++ = v531;
                --v530;
              }

              while (v530);
            }

            return;
          case -15393:
            v447 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v447 + 2) + 5792) = *(v447 + 1);
            return;
          case -15392:
            v498 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v499 = *(v498 + 1);
            v500 = GTTraceFunc_argumentBytesWithMap(a2, v498[24], a3);
            if (*(v498 + 2) >= 1)
            {
              v501 = (a1 + 8 * v499 + 5792);
              v502 = *(v498 + 2) & 0x7FFFFFFFLL;
              do
              {
                v503 = *v500;
                v500 += 8;
                *v501++ = v503;
                --v502;
              }

              while (v502);
            }

            return;
          case -15391:
            v522 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v523 = *(v522 + 3);
            v524 = 1 << v523;
            v525 = a1 + 8 * (v523 >> 6);
            *(v525 + 3632) &= ~v524;
            *(a1 + 8 * *(v522 + 3) + 3640) = *(v522 + 1);
            v414 = *(v522 + 2);
            v415 = *(v522 + 3);
            goto LABEL_477;
          case -15390:
            v533 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v414 = *(v533 + 1);
            v415 = *(v533 + 2);
            goto LABEL_477;
          case -15389:
            v373 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v374 = v373;
            v375 = *(v373 + 1);
            v376 = *(v373 + 2) + v375;
            if (v376 >= 0x40)
            {
              v376 = 64;
            }

            v377 = v376 - v375;
            if (v376 < v375)
            {
              v377 = 0;
            }

            v378 = ~(-1 << v377);
            if (v375 <= v376)
            {
              v379 = v375 & 0x3F;
            }

            else
            {
              v379 = 0;
            }

            *(a1 + 3632) &= ~(v378 << v379);
            v380 = *(v373 + 1);
            v381 = GTTraceFunc_argumentBytesWithMap(a2, v373[24], a3);
            if (*(v374 + 2) >= 1)
            {
              v382 = (a1 + 8 * v380 + 3640);
              v383 = *(v374 + 2) & 0x7FFFFFFFLL;
              do
              {
                v384 = *v381;
                v381 += 8;
                *v382++ = v384;
                --v383;
              }

              while (v383);
            }

            v385 = a1 + 8 * *(v374 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v374[25], a3);
            v37 = 8 * *(v374 + 2);
            v59 = (v385 + 3888);
            goto LABEL_556;
          case -15388:
            v410 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v411 = *(v410 + 2);
            v412 = 1 << v411;
            v413 = a1 + 8 * (v411 >> 6);
            *(v413 + 3632) |= v412;
            *(a1 + 8 * *(v410 + 2) + 3640) = GTTraceFunc_argumentBytesWithMap(a2, v410[24], a3);
            v414 = *(v410 + 1);
            v415 = *(v410 + 2);
LABEL_477:
            *(a1 + 8 * v415 + 3888) = v414;
            break;
          case -15387:
            v532 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v532 + 2) + 5160) = *(v532 + 1);
            break;
          case -15386:
            v496 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v496 + 2) + 5160) = *(v496 + 1);
            *(a1 + 4 * *(v496 + 2) + 10364) = *(v496 + 6);
            *(a1 + 4 * *(v496 + 2) + 10428) = *(v496 + 7);
            break;
          case -15385:
            v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v534 = *(v61 + 1);
            v535 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
            if (*(v61 + 2) >= 1)
            {
              v536 = (a1 + 8 * v534 + 5160);
              v537 = *(v61 + 2) & 0x7FFFFFFFLL;
              do
              {
                v538 = *v535;
                v535 += 8;
                *v536++ = v538;
                --v537;
              }

              while (v537);
            }

            v539 = a1 + 4 * *(v61 + 1);
            v540 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
            memcpy((v539 + 10364), v540, 4 * *(v61 + 2));
            v69 = a1 + 4 * *(v61 + 1);
            v70 = 10428;
            goto LABEL_482;
          case -15384:
            v515 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v516 = *(v515 + 1);
            v517 = GTTraceFunc_argumentBytesWithMap(a2, v515[24], a3);
            if (*(v515 + 2) >= 1)
            {
              v518 = (a1 + 8 * v516 + 5160);
              v519 = *(v515 + 2) & 0x7FFFFFFFLL;
              do
              {
                v520 = *v517;
                v517 += 8;
                *v518++ = v520;
                --v519;
              }

              while (v519);
            }

            break;
          case -15383:
            v547 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v547 + 2) + 4136) = *(v547 + 1);
            break;
          case -15382:
            v541 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v542 = *(v541 + 1);
            v543 = GTTraceFunc_argumentBytesWithMap(a2, v541[24], a3);
            if (*(v541 + 2) >= 1)
            {
              v544 = (a1 + 8 * v542 + 4136);
              v545 = *(v541 + 2) & 0x7FFFFFFFLL;
              do
              {
                v546 = *v543;
                v543 += 8;
                *v544++ = v546;
                --v545;
              }

              while (v545);
            }

            break;
          case -15381:
            v446 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 4 * *(v446 + 2) + 11016) = *(v446 + 1);
            break;
          default:
            return;
        }

        return;
      }

      if (v7 > -15276)
      {
        if (v7 > -15273)
        {
          if (v7 != -15272)
          {
            if (v7 == -14914)
            {
              v596 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 10076) = *(v596 + 2);
              *(a1 + 10080) = *(v596 + 3);
            }

            else if (v7 == -14849)
            {
              *(a1 + 10056) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
            }

            return;
          }

          v604 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          v605 = *(v604 + 3);
          v606 = 1 << v605;
          v607 = a1 + 8 * (v605 >> 6);
          *(v607 + 64) |= v606;
          *(a1 + 8 * *(v604 + 3) + 80) = GTTraceFunc_argumentBytesWithMap(a2, v604[32], a3);
          v608 = *(v604 + 3);
          v609 = 1 << v608;
          v610 = a1 + 8 * (v608 >> 6);
          *(v610 + 72) |= v609;
          *(a1 + 8 * *(v604 + 3) + 328) = *(v604 + 1);
          v594 = *(v604 + 2);
          v595 = *(v604 + 3);
        }

        else if (v7 == -15275)
        {
          v597 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          v598 = *(v597 + 4);
          v599 = 1 << v598;
          v600 = a1 + 8 * (v598 >> 6);
          *(v600 + 64) &= ~v599;
          *(a1 + 8 * *(v597 + 4) + 80) = *(v597 + 1);
          v601 = *(v597 + 4);
          v602 = 1 << v601;
          v603 = a1 + 8 * (v601 >> 6);
          *(v603 + 72) |= v602;
          *(a1 + 8 * *(v597 + 4) + 328) = *(v597 + 2);
          v594 = *(v597 + 3);
          v595 = *(v597 + 4);
        }

        else
        {
          if (v7 != -15274)
          {
            v38 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v39 = v38;
            v40 = *(v38 + 1);
            v41 = *(v38 + 2) + v40;
            if (v41 >= 0x40)
            {
              v41 = 64;
            }

            v42 = v41 - v40;
            if (v41 < v40)
            {
              v42 = 0;
            }

            v43 = ~(-1 << v42);
            if (v40 <= v41)
            {
              v44 = v40 & 0x3F;
            }

            else
            {
              v44 = 0;
            }

            v45 = *(a1 + 72);
            *(a1 + 64) &= ~(v43 << v44);
            v46 = *(v38 + 1);
            v47 = *(v38 + 2) + v46;
            if (v47 >= 0x40)
            {
              v47 = 64;
            }

            v48 = v47 - v46;
            if (v47 < v46)
            {
              v48 = 0;
            }

            v49 = ~(-1 << v48);
            if (v46 <= v47)
            {
              v50 = v46 & 0x3F;
            }

            else
            {
              v50 = 0;
            }

            *(a1 + 72) = (v49 << v50) | v45;
            v51 = *(v38 + 1);
            v52 = GTTraceFunc_argumentBytesWithMap(a2, v38[24], a3);
            if (*(v39 + 2) >= 1)
            {
              v53 = (a1 + 8 * v51 + 80);
              v54 = *(v39 + 2) & 0x7FFFFFFFLL;
              do
              {
                v55 = *v52;
                v52 += 8;
                *v53++ = v55;
                --v54;
              }

              while (v54);
            }

            v56 = a1 + 8 * *(v39 + 1);
            v57 = GTTraceFunc_argumentBytesWithMap(a2, v39[25], a3);
            memcpy((v56 + 328), v57, 8 * *(v39 + 2));
            v58 = a1 + 8 * *(v39 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v39[26], a3);
            v37 = 8 * *(v39 + 2);
            v59 = (v58 + 576);
            goto LABEL_556;
          }

          v593 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          *(a1 + 8 * *(v593 + 3) + 328) = *(v593 + 1);
          v594 = *(v593 + 2);
          v595 = *(v593 + 3);
        }

        *(a1 + 8 * v595 + 576) = v594;
        return;
      }

      if (v7 > -15284)
      {
        switch(v7)
        {
          case -15283:
            v633 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v633 + 3) + 336) = *(v633 + 1);
            v78 = *(v633 + 2);
            v79 = *(v633 + 3);
            break;
          case -15282:
            v611 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v612 = v611;
            v613 = *(v611 + 1);
            v614 = *(v611 + 2) + v613;
            if (v614 >= 0x40)
            {
              v614 = 64;
            }

            v615 = v614 - v613;
            if (v614 < v613)
            {
              v615 = 0;
            }

            v616 = ~(-1 << v615);
            if (v613 <= v614)
            {
              v617 = v613 & 0x3F;
            }

            else
            {
              v617 = 0;
            }

            v618 = *(a1 + 80);
            *(a1 + 72) &= ~(v616 << v617);
            v619 = *(v611 + 1);
            v620 = *(v611 + 2) + v619;
            if (v620 >= 0x40)
            {
              v620 = 64;
            }

            v621 = v620 - v619;
            if (v620 < v619)
            {
              v621 = 0;
            }

            v622 = ~(-1 << v621);
            if (v619 <= v620)
            {
              v623 = v619 & 0x3F;
            }

            else
            {
              v623 = 0;
            }

            *(a1 + 80) = (v622 << v623) | v618;
            v624 = *(v611 + 1);
            v625 = GTTraceFunc_argumentBytesWithMap(a2, v611[24], a3);
            if (*(v612 + 2) >= 1)
            {
              v626 = (a1 + 8 * v624 + 88);
              v627 = *(v612 + 2) & 0x7FFFFFFFLL;
              do
              {
                v628 = *v625;
                v625 += 8;
                *v626++ = v628;
                --v627;
              }

              while (v627);
            }

            v629 = a1 + 8 * *(v612 + 1);
            v630 = GTTraceFunc_argumentBytesWithMap(a2, v612[25], a3);
            memcpy((v629 + 336), v630, 8 * *(v612 + 2));
            v631 = a1 + 8 * *(v612 + 1);
            v35 = GTTraceFunc_argumentBytesWithMap(a2, v612[26], a3);
            v37 = 8 * *(v612 + 2);
            v59 = (v631 + 584);
            goto LABEL_556;
          case -15281:
            v71 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v72 = *(v71 + 3);
            v73 = 1 << v72;
            v74 = a1 + 8 * (v72 >> 6);
            *(v74 + 72) |= v73;
            *(a1 + 8 * *(v71 + 3) + 88) = GTTraceFunc_argumentBytesWithMap(a2, v71[32], a3);
            v75 = *(v71 + 3);
            v76 = 1 << v75;
            v77 = a1 + 8 * (v75 >> 6);
            *(v77 + 80) |= v76;
            *(a1 + 8 * *(v71 + 3) + 336) = *(v71 + 1);
            v78 = *(v71 + 2);
            v79 = *(v71 + 3);
            break;
          default:
            return;
        }

LABEL_564:
        *(a1 + 8 * v79 + 584) = v78;
        return;
      }

      if (v7 != -15364)
      {
        if (v7 != -15284)
        {
          return;
        }

        v105 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v106 = *(v105 + 4);
        v107 = 1 << v106;
        v108 = a1 + 8 * (v106 >> 6);
        *(v108 + 72) &= ~v107;
        *(a1 + 8 * *(v105 + 4) + 88) = *(v105 + 1);
        v109 = *(v105 + 4);
        v110 = 1 << v109;
        v111 = a1 + 8 * (v109 >> 6);
        *(v111 + 80) |= v110;
        *(a1 + 8 * *(v105 + 4) + 336) = *(v105 + 2);
        v78 = *(v105 + 3);
        v79 = *(v105 + 4);
        goto LABEL_564;
      }

      v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x2BA0uLL);
      v556 = *(v113 + 1);
      if (!v556)
      {
        return;
      }

      v557 = 17;
      goto LABEL_561;
    }

    if (v7 <= -15885)
    {
      if (v7 <= -16021)
      {
        if (v7 > -16028)
        {
          if (v7 > -16023)
          {
            if (v7 == -16022)
            {
              v555 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 8 * *(v555 + 2) + 9992) = *(v555 + 1);
            }

            else
            {
              *(a1 + 11160) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
            }
          }

          else if (v7 == -16027)
          {
            *(a1 + 194) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }

          else if (v7 == -16026)
          {
            *(a1 + 195) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }
        }

        else
        {
          if (v7 <= -16075)
          {
            if (v7 == -16077)
            {
              v548 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 8608) = *(v548 + 1);
              v35 = GTTraceFunc_argumentBytesWithMap(a2, v548[16], a3);
              v36 = 8616;
              v37 = 48 * *(v548 + 1);
            }

            else
            {
              if (v7 != -16076)
              {
                return;
              }

              v34 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              *(a1 + 9384) = *(v34 + 1);
              v35 = GTTraceFunc_argumentBytesWithMap(a2, v34[16], a3);
              v36 = 9392;
              v37 = 32 * *(v34 + 1);
            }

            v59 = (a1 + v36);
            goto LABEL_556;
          }

          if (v7 == -16074)
          {
            v550 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 4 * *(v550 + 3) + 10768) = *(v550 + 1);
            *(a1 + 4 * *(v550 + 3) + 10892) = *(v550 + 2);
          }

          else if (v7 == -16028)
          {
            v112 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 8 * *(v112 + 2) + 128) = *(v112 + 1);
          }
        }

        return;
      }

      if (v7 <= -15985)
      {
        if (v7 <= -16015)
        {
          if (v7 == -16020)
          {
            *(a1 + 11161) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          }

          else if (v7 == -16017)
          {
            v60 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 2032) = *(v60 + 1);
            *(a1 + 2172) = *(v60 + 2);
          }

          return;
        }

        if (v7 == -16014)
        {
          v551 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v552 = *(v551 + 1);
          if (v552)
          {
            *a1 = 28;
            v553 = *a2;
            *(a1 + 8) = v552;
            *(a1 + 16) = v553;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v551;
            bzero((a1 + 56), 0x888uLL);
            memset_pattern16((a1 + 2240), &unk_24DA90D20, 0x100uLL);
            *(a1 + 824) = -1;
            *&v554 = -1;
            *(&v554 + 1) = -1;
            *(a1 + 792) = v554;
            *(a1 + 808) = v554;
            *(a1 + 760) = v554;
            *(a1 + 776) = v554;
            *(a1 + 728) = v554;
            *(a1 + 744) = v554;
            *(a1 + 696) = v554;
            *(a1 + 712) = v554;
            *(a1 + 664) = v554;
            *(a1 + 680) = v554;
            *(a1 + 632) = v554;
            *(a1 + 648) = v554;
            *(a1 + 600) = v554;
            *(a1 + 616) = v554;
            *(a1 + 584) = v554;
            *(a1 + 2304) = *(v551 + 2);
          }

          return;
        }

        if (v7 != -16013)
        {
          return;
        }

        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 82;
        goto LABEL_503;
      }

      if (v7 <= -15891)
      {
        if (v7 == -15984)
        {
          v549 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          *(v6 + 2546) = *(v549 + 4);
          *(a1 + 10756) = *(v549 + 1);
        }

        else if (v7 == -15970)
        {
          *(a1 + 11162) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        }

        return;
      }

      if (v7 != -15890)
      {
        if (v7 == -15888)
        {
          *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        }

        return;
      }
    }

    else
    {
      if (v7 > -15643)
      {
        if (v7 > -15586)
        {
          if (v7 > -15583)
          {
            if (v7 == -15582)
            {
              v560 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
              v561 = v560;
              v562 = *(v560 + 1);
              v563 = *(v560 + 2) + v562;
              if (v563 >= 0x40)
              {
                v563 = 64;
              }

              v564 = v563 - v562;
              if (v563 < v562)
              {
                v564 = 0;
              }

              v565 = ~(-1 << v564);
              if (v562 <= v563)
              {
                v566 = v562 & 0x3F;
              }

              else
              {
                v566 = 0;
              }

              v567 = *(a1 + 80);
              *(a1 + 72) &= ~(v565 << v566);
              v568 = *(v560 + 1);
              v569 = *(v560 + 2) + v568;
              if (v569 >= 0x40)
              {
                v569 = 64;
              }

              v570 = v569 - v568;
              if (v569 < v568)
              {
                v570 = 0;
              }

              v571 = ~(-1 << v570);
              if (v568 <= v569)
              {
                v572 = v568 & 0x3F;
              }

              else
              {
                v572 = 0;
              }

              *(a1 + 80) = v567 & ~(v571 << v572);
              v573 = *(v560 + 1);
              v574 = GTTraceFunc_argumentBytesWithMap(a2, v560[24], a3);
              if (*(v561 + 2) >= 1)
              {
                v575 = (a1 + 8 * v573 + 88);
                v576 = *(v561 + 2) & 0x7FFFFFFFLL;
                do
                {
                  v577 = *v574;
                  v574 += 8;
                  *v575++ = v577;
                  --v576;
                }

                while (v576);
              }

              return;
            }

            if (v7 != -15581)
            {
              if (v7 == -15580)
              {
                v15 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
                v16 = v15;
                v17 = *(v15 + 1);
                v18 = *(v15 + 2) + v17;
                if (v18 >= 0x40)
                {
                  v18 = 64;
                }

                v19 = v18 - v17;
                if (v18 < v17)
                {
                  v19 = 0;
                }

                v20 = ~(-1 << v19);
                if (v17 <= v18)
                {
                  v21 = v17 & 0x3F;
                }

                else
                {
                  v21 = 0;
                }

                v22 = *(a1 + 80);
                *(a1 + 72) &= ~(v20 << v21);
                v23 = *(v15 + 1);
                v24 = *(v15 + 2) + v23;
                if (v24 >= 0x40)
                {
                  v24 = 64;
                }

                v25 = v24 - v23;
                if (v24 < v23)
                {
                  v25 = 0;
                }

                v26 = ~(-1 << v25);
                if (v23 <= v24)
                {
                  v27 = v23 & 0x3F;
                }

                else
                {
                  v27 = 0;
                }

                *(a1 + 80) = v22 & ~(v26 << v27);
                v28 = *(v15 + 1);
                v29 = GTTraceFunc_argumentBytesWithMap(a2, v15[24], a3);
                if (*(v16 + 2) >= 1)
                {
                  v30 = (a1 + 8 * v28 + 88);
                  v31 = *(v16 + 2) & 0x7FFFFFFFLL;
                  do
                  {
                    v32 = *v29;
                    v29 += 8;
                    *v30++ = v32;
                    --v31;
                  }

                  while (v31);
                }
              }

              return;
            }

LABEL_154:
            v119 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            v120 = *(v119 + 2);
            v121 = 1 << v120;
            v122 = a1 + 8 * (v120 >> 6);
            *(v122 + 72) &= ~v121;
            *(a1 + 8 * *(v119 + 2) + 88) = *(v119 + 1);
            v123 = *(v119 + 2);
            v124 = 1 << v123;
            v125 = a1 + 8 * (v123 >> 6);
            *(v125 + 80) &= ~v124;
            return;
          }

          if (v7 != -15585)
          {
            v80 = -15583;
LABEL_153:
            if (v7 != v80)
            {
              return;
            }

            goto LABEL_154;
          }

          v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v556 = *(v113 + 1);
          if (!v556)
          {
            return;
          }

          v557 = 74;
LABEL_561:
          *a1 = v557;
          v632 = *a2;
          *(a1 + 8) = v556;
          *(a1 + 16) = v632;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v113;
LABEL_562:
          *(a1 + 56) = GTTraceFunc_argumentBytesWithMap(a2, v113[16], a3);
          return;
        }

        if (v7 > -15588)
        {
          if (v7 != -15587)
          {
            v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            bzero(a1, 0x2BA0uLL);
            v114 = *(v113 + 1);
            if (!v114)
            {
              return;
            }

            *a1 = 28;
            v115 = *a2;
            *(a1 + 8) = v114;
            *(a1 + 16) = v115;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v113;
            bzero((a1 + 56), 0x888uLL);
            memset_pattern16((a1 + 2240), &unk_24DA90D20, 0x100uLL);
            *(a1 + 824) = -1;
            *&v116 = -1;
            *(&v116 + 1) = -1;
            *(a1 + 792) = v116;
            *(a1 + 808) = v116;
            *(a1 + 760) = v116;
            *(a1 + 776) = v116;
            *(a1 + 728) = v116;
            *(a1 + 744) = v116;
            *(a1 + 696) = v116;
            *(a1 + 712) = v116;
            *(a1 + 664) = v116;
            *(a1 + 680) = v116;
            *(a1 + 632) = v116;
            *(a1 + 648) = v116;
            *(a1 + 600) = v116;
            *(a1 + 616) = v116;
            *(a1 + 584) = v116;
            *(a1 + 2304) = -1;
            goto LABEL_562;
          }

          v113 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v556 = *(v113 + 1);
          if (!v556)
          {
            return;
          }

          v557 = 21;
          goto LABEL_561;
        }

        if (v7 != -15642)
        {
          v80 = -15623;
          goto LABEL_153;
        }

LABEL_113:
        *(a1 + 24) = *a2;
        return;
      }

      if (v7 <= -15795)
      {
        if (v7 > -15823)
        {
          if (v7 == -15822)
          {
            v558 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(a1 + 11144) = *(v558 + 1);
            *(a1 + 9912) = GTTraceFunc_argumentBytesWithMap(a2, v558[16], a3);
          }

          else if (v7 == -15812)
          {
            v117 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
            *(v6 + 2540) = *(v117 + 1);
            *(a1 + 11140) = *(v117 + 2);
          }

          return;
        }

        if (v7 == -15884)
        {
          goto LABEL_113;
        }

        if (v7 != -15870)
        {
          return;
        }

        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 74;
LABEL_503:
        *a1 = v10;
        v559 = *a2;
        *(a1 + 8) = v9;
        *(a1 + 16) = v559;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v8;
        return;
      }

      if (v7 > -15674)
      {
        if (v7 == -15673)
        {
          v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x2BA0uLL);
          v9 = *(v8 + 1);
          if (!v9)
          {
            return;
          }

          v10 = 17;
          goto LABEL_503;
        }

        if (v7 != -15648)
        {
          return;
        }
      }

      else if (v7 != -15794)
      {
        v81 = -15789;
LABEL_112:
        if (v7 != v81)
        {
          return;
        }

        goto LABEL_113;
      }
    }

LABEL_150:
    v118 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
    *(a1 + 48) = GTTraceFunc_argumentBytesWithMap(a2, v118[8], a3);
    return;
  }

  if (v7 <= -16163)
  {
    switch(v7)
    {
      case -16354:
        v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v9 = *(v8 + 1);
        if (!v9)
        {
          return;
        }

        v10 = 21;
        goto LABEL_503;
      case -16353:
        v228 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v229 = *(v228 + 1);
        if (!v229)
        {
          return;
        }

        *a1 = 70;
        v230 = *a2;
        *(a1 + 8) = v229;
        *(a1 + 16) = v230;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v228;
        v191 = GTTraceFunc_argumentBytesWithMap(a2, v228[16], a3);
        v190 = a1 + 56;
        goto LABEL_227;
      case -16352:
        v223 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v224 = *(v223 + 1);
        if (v224)
        {
          *a1 = 28;
          v225 = *a2;
          *(a1 + 8) = v224;
          *(a1 + 16) = v225;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v223;
          bzero((a1 + 56), 0x888uLL);
          memset_pattern16((a1 + 2240), &unk_24DA90D20, 0x100uLL);
          *(a1 + 824) = -1;
          *&v226 = -1;
          *(&v226 + 1) = -1;
          *(a1 + 792) = v226;
          *(a1 + 808) = v226;
          *(a1 + 760) = v226;
          *(a1 + 776) = v226;
          *(a1 + 728) = v226;
          *(a1 + 744) = v226;
          *(a1 + 696) = v226;
          *(a1 + 712) = v226;
          *(a1 + 664) = v226;
          *(a1 + 680) = v226;
          *(a1 + 632) = v226;
          *(a1 + 648) = v226;
          *(a1 + 600) = v226;
          *(a1 + 616) = v226;
          *(a1 + 584) = v226;
          *(a1 + 2304) = -1;
        }

        return;
      case -16351:
        v218 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v219 = *(v218 + 1);
        if (v219)
        {
          *a1 = 65;
          v220 = *a2;
          *(a1 + 8) = v219;
          *(a1 + 16) = v220;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v218;
          v221 = GTTraceFunc_argumentBytesWithMap(a2, v218[16], a3);
          *(a1 + 128) = 0u;
          *(a1 + 144) = 0u;
          *(a1 + 160) = 0u;
          *(a1 + 176) = 0u;
          *(a1 + 192) = 0;
          *(a1 + 56) = v221;
          memset_pattern16((a1 + 64), &unk_24DA90D30, 0x40uLL);
          *(a1 + 192) = 1028;
        }

        return;
      case -16350:
      case -16349:
      case -16348:
      case -16347:
      case -16346:
      case -16345:
      case -16344:
      case -16343:
      case -16342:
      case -16341:
      case -16340:
      case -16338:
      case -16327:
      case -16326:
      case -16324:
      case -16323:
      case -16322:
      case -16321:
      case -16320:
      case -16319:
      case -16318:
      case -16317:
      case -16316:
      case -16315:
      case -16314:
      case -16313:
      case -16312:
      case -16311:
      case -16310:
      case -16309:
      case -16308:
      case -16307:
      case -16306:
      case -16305:
      case -16304:
      case -16303:
      case -16302:
      case -16301:
      case -16300:
      case -16299:
      case -16298:
      case -16297:
      case -16296:
      case -16295:
      case -16294:
      case -16293:
      case -16292:
      case -16291:
      case -16290:
      case -16289:
      case -16287:
      case -16284:
      case -16283:
      case -16282:
      case -16280:
      case -16251:
      case -16250:
      case -16249:
      case -16248:
      case -16245:
      case -16244:
      case -16243:
      case -16242:
      case -16241:
      case -16240:
      case -16239:
      case -16238:
      case -16237:
      case -16236:
      case -16235:
      case -16234:
      case -16233:
      case -16232:
      case -16231:
      case -16230:
      case -16229:
      case -16228:
      case -16221:
      case -16220:
      case -16218:
      case -16217:
      case -16216:
      case -16215:
        return;
      case -16339:
      case -16288:
      case -16281:
        goto LABEL_150;
      case -16337:
        *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16336:
        v286 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v287 = *(v286 + 3);
        v288 = 1 << v287;
        v289 = a1 + 8 * (v287 >> 6);
        *(v289 + 72) &= ~v288;
        *(a1 + 8 * *(v286 + 3) + 88) = *(v286 + 1);
        v290 = *(v286 + 3);
        v291 = 1 << v290;
        v292 = a1 + 8 * (v290 >> 6);
        *(v292 + 80) &= ~v291;
        v154 = *(v286 + 2);
        v155 = *(v286 + 3);
        goto LABEL_314;
      case -16335:
        v199 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v200 = v199;
        v201 = *(v199 + 1);
        v202 = *(v199 + 2) + v201;
        if (v202 >= 0x40)
        {
          v202 = 64;
        }

        v203 = v202 - v201;
        if (v202 < v201)
        {
          v203 = 0;
        }

        v204 = ~(-1 << v203);
        if (v201 <= v202)
        {
          v205 = v201 & 0x3F;
        }

        else
        {
          v205 = 0;
        }

        v206 = *(a1 + 80);
        *(a1 + 72) &= ~(v204 << v205);
        v207 = *(v199 + 1);
        v208 = *(v199 + 2) + v207;
        if (v208 >= 0x40)
        {
          v208 = 64;
        }

        v209 = v208 - v207;
        if (v208 < v207)
        {
          v209 = 0;
        }

        v210 = ~(-1 << v209);
        if (v207 <= v208)
        {
          v211 = v207 & 0x3F;
        }

        else
        {
          v211 = 0;
        }

        *(a1 + 80) = v206 & ~(v210 << v211);
        v212 = *(v199 + 1);
        v213 = GTTraceFunc_argumentBytesWithMap(a2, v199[24], a3);
        if (*(v200 + 2) >= 1)
        {
          v214 = (a1 + 8 * v212 + 88);
          v215 = *(v200 + 2) & 0x7FFFFFFFLL;
          do
          {
            v216 = *v213;
            v213 += 8;
            *v214++ = v216;
            --v215;
          }

          while (v215);
        }

        v217 = a1 + 8 * *(v200 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v200[25], a3);
        v37 = 8 * *(v200 + 2);
        v59 = (v217 + 336);
        goto LABEL_556;
      case -16334:
        v248 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v248 + 2) + 832) = *(v248 + 1);
        return;
      case -16333:
        v266 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v267 = v266;
        v268 = *(v266 + 1);
        v269 = *(v266 + 2) + v268;
        if (v269 >= 0x40)
        {
          v269 = 64;
        }

        v270 = v269 - v268;
        if (v269 < v268)
        {
          v270 = 0;
        }

        v271 = ~(-1 << v270);
        if (v268 <= v269)
        {
          v272 = v268 & 0x3F;
        }

        else
        {
          v272 = 0;
        }

        *(a1 + 80) &= ~(v271 << v272);
        v273 = *(v266 + 1);
        v274 = GTTraceFunc_argumentBytesWithMap(a2, v266[24], a3);
        if (*(v267 + 2) >= 1)
        {
          v275 = (a1 + 8 * v273 + 832);
          v276 = *(v267 + 2) & 0x7FFFFFFFLL;
          do
          {
            v277 = *v274;
            v274 += 8;
            *v275++ = v277;
            --v276;
          }

          while (v276);
        }

        return;
      case -16332:
        v285 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v285 + 2) + 1856) = *(v285 + 1);
        return;
      case -16331:
        v355 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v356 = v355;
        v357 = *(v355 + 1);
        v358 = *(v355 + 2) + v357;
        if (v358 >= 0x40)
        {
          v358 = 64;
        }

        v359 = v358 - v357;
        if (v358 < v357)
        {
          v359 = 0;
        }

        v360 = ~(-1 << v359);
        if (v357 <= v358)
        {
          v361 = v357 & 0x3F;
        }

        else
        {
          v361 = 0;
        }

        *(a1 + 80) &= ~(v360 << v361);
        v362 = *(v355 + 1);
        v363 = GTTraceFunc_argumentBytesWithMap(a2, v355[24], a3);
        if (*(v356 + 2) >= 1)
        {
          v364 = (a1 + 8 * v362 + 1856);
          v365 = *(v356 + 2) & 0x7FFFFFFFLL;
          do
          {
            v366 = *v363;
            v363 += 8;
            *v364++ = v366;
            --v365;
          }

          while (v365);
        }

        return;
      case -16330:
        v354 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v354 + 2) + 1856) = *(v354 + 1);
        *(a1 + 4 * *(v354 + 2) + 2176) = *(v354 + 6);
        *(a1 + 4 * *(v354 + 2) + 2240) = *(v354 + 7);
        return;
      case -16329:
        v339 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v340 = v339;
        v341 = *(v339 + 1);
        v342 = *(v339 + 2) + v341;
        if (v342 >= 0x40)
        {
          v342 = 64;
        }

        v343 = v342 - v341;
        if (v342 < v341)
        {
          v343 = 0;
        }

        v344 = ~(-1 << v343);
        if (v341 <= v342)
        {
          v345 = v341 & 0x3F;
        }

        else
        {
          v345 = 0;
        }

        *(a1 + 80) &= ~(v344 << v345);
        v346 = *(v339 + 1);
        v347 = GTTraceFunc_argumentBytesWithMap(a2, v339[24], a3);
        if (*(v340 + 2) >= 1)
        {
          v348 = (a1 + 8 * v346 + 1856);
          v349 = *(v340 + 2) & 0x7FFFFFFFLL;
          do
          {
            v350 = *v347;
            v347 += 8;
            *v348++ = v350;
            --v349;
          }

          while (v349);
        }

        v351 = a1 + 4 * *(v340 + 1);
        v352 = GTTraceFunc_argumentBytesWithMap(a2, v340[25], a3);
        memcpy((v351 + 2176), v352, 4 * *(v340 + 2));
        v353 = a1 + 4 * *(v340 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v340[26], a3);
        v37 = 4 * *(v340 + 2);
        v59 = (v353 + 2240);
        goto LABEL_556;
      case -16328:
        v246 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 4 * *(v246 + 2) + 2040) = *(v246 + 1);
        return;
      case -16325:
      case -16285:
      case -16246:
        goto LABEL_113;
      case -16286:
        v187 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x2BA0uLL);
        v188 = *(v187 + 1);
        if (!v188)
        {
          return;
        }

        *a1 = 70;
        v189 = *a2;
        *(a1 + 8) = v188;
        *(a1 + 16) = v189;
        *(a1 + 24) = -1;
        *(a1 + 40) = *v187;
        v190 = a1 + 56;
        v191 = 0;
LABEL_227:

        GTMTLSMRenderCommandEncoder_init(v190, v191);
        return;
      case -16279:
        *(a1 + 8600) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16278:
        v192 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v193 = *(v192 + 3);
        v194 = 1 << v193;
        v195 = a1 + 8 * (v193 >> 6);
        *(v195 + 64) &= ~v194;
        *(a1 + 8 * *(v192 + 3) + 80) = *(v192 + 1);
        v196 = *(v192 + 3);
        v197 = 1 << v196;
        v198 = a1 + 8 * (v196 >> 6);
        *(v198 + 72) &= ~v197;
        v166 = *(v192 + 2);
        v167 = *(v192 + 3);
        goto LABEL_344;
      case -16277:
        v313 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v314 = v313;
        v315 = *(v313 + 1);
        v316 = *(v313 + 2) + v315;
        if (v316 >= 0x40)
        {
          v316 = 64;
        }

        v317 = v316 - v315;
        if (v316 < v315)
        {
          v317 = 0;
        }

        v318 = ~(-1 << v317);
        if (v315 <= v316)
        {
          v319 = v315 & 0x3F;
        }

        else
        {
          v319 = 0;
        }

        v320 = *(a1 + 72);
        *(a1 + 64) &= ~(v318 << v319);
        v321 = *(v313 + 1);
        v322 = *(v313 + 2) + v321;
        if (v322 >= 0x40)
        {
          v322 = 64;
        }

        v323 = v322 - v321;
        if (v322 < v321)
        {
          v323 = 0;
        }

        v324 = ~(-1 << v323);
        if (v321 <= v322)
        {
          v325 = v321 & 0x3F;
        }

        else
        {
          v325 = 0;
        }

        *(a1 + 72) = v320 & ~(v324 << v325);
        v326 = *(v313 + 1);
        v327 = GTTraceFunc_argumentBytesWithMap(a2, v313[24], a3);
        if (*(v314 + 2) >= 1)
        {
          v328 = (a1 + 8 * v326 + 80);
          v329 = *(v314 + 2) & 0x7FFFFFFFLL;
          do
          {
            v330 = *v327;
            v327 += 8;
            *v328++ = v330;
            --v329;
          }

          while (v329);
        }

        v331 = a1 + 8 * *(v314 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v314[25], a3);
        v37 = 8 * *(v314 + 2);
        v59 = (v331 + 328);
        goto LABEL_556;
      case -16276:
        v180 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v180 + 2) + 824) = *(v180 + 1);
        return;
      case -16275:
        v231 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v232 = v231;
        v233 = *(v231 + 1);
        v234 = *(v231 + 2) + v233;
        if (v234 >= 0x40)
        {
          v234 = 64;
        }

        v235 = v234 - v233;
        if (v234 < v233)
        {
          v235 = 0;
        }

        v236 = ~(-1 << v235);
        if (v233 <= v234)
        {
          v237 = v233 & 0x3F;
        }

        else
        {
          v237 = 0;
        }

        *(a1 + 72) &= ~(v236 << v237);
        v238 = *(v231 + 1);
        v239 = GTTraceFunc_argumentBytesWithMap(a2, v231[24], a3);
        if (*(v232 + 2) >= 1)
        {
          v240 = (a1 + 8 * v238 + 824);
          v241 = *(v232 + 2) & 0x7FFFFFFFLL;
          do
          {
            v242 = *v239;
            v239 += 8;
            *v240++ = v242;
            --v241;
          }

          while (v241);
        }

        return;
      case -16274:
        v181 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v181 + 2) + 1848) = *(v181 + 1);
        return;
      case -16273:
        v168 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v169 = v168;
        v170 = *(v168 + 1);
        v171 = *(v168 + 2) + v170;
        if (v171 >= 0x40)
        {
          v171 = 64;
        }

        v172 = v171 - v170;
        if (v171 < v170)
        {
          v172 = 0;
        }

        v173 = ~(-1 << v172);
        if (v170 <= v171)
        {
          v174 = v170 & 0x3F;
        }

        else
        {
          v174 = 0;
        }

        *(a1 + 72) &= ~(v173 << v174);
        v175 = *(v168 + 1);
        v176 = GTTraceFunc_argumentBytesWithMap(a2, v168[24], a3);
        if (*(v169 + 2) >= 1)
        {
          v177 = (a1 + 8 * v175 + 1848);
          v178 = *(v169 + 2) & 0x7FFFFFFFLL;
          do
          {
            v179 = *v176;
            v176 += 8;
            *v177++ = v179;
            --v178;
          }

          while (v178);
        }

        return;
      case -16272:
        v222 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v222 + 2) + 1848) = *(v222 + 1);
        *(a1 + 4 * *(v222 + 2) + 10108) = *(v222 + 6);
        *(a1 + 4 * *(v222 + 2) + 10172) = *(v222 + 7);
        return;
      case -16271:
        v249 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v61 = v249;
        v250 = *(v249 + 1);
        v251 = *(v249 + 2) + v250;
        if (v251 >= 0x40)
        {
          v251 = 64;
        }

        v252 = v251 - v250;
        if (v251 < v250)
        {
          v252 = 0;
        }

        v253 = ~(-1 << v252);
        if (v250 <= v251)
        {
          v254 = v250 & 0x3F;
        }

        else
        {
          v254 = 0;
        }

        *(a1 + 72) &= ~(v253 << v254);
        v255 = *(v249 + 1);
        v256 = GTTraceFunc_argumentBytesWithMap(a2, v249[24], a3);
        if (*(v61 + 2) >= 1)
        {
          v257 = (a1 + 8 * v255 + 1848);
          v258 = *(v61 + 2) & 0x7FFFFFFFLL;
          do
          {
            v259 = *v256;
            v256 += 8;
            *v257++ = v259;
            --v258;
          }

          while (v258);
        }

        v260 = a1 + 4 * *(v61 + 1);
        v261 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
        memcpy((v260 + 10108), v261, 4 * *(v61 + 2));
        v69 = a1 + 4 * *(v61 + 1);
        v70 = 10172;
        goto LABEL_482;
      case -16270:
        v367 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8608) = 1;
        v368 = *(v367 + 24);
        v369 = *(v367 + 40);
        *v6 = *(v367 + 8);
        *(v6 + 16) = v368;
        *(v6 + 32) = v369;
        return;
      case -16269:
        *(a1 + 11154) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16268:
        *(a1 + 11152) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16267:
        *(a1 + 11153) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16266:
        v227 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10064) = *(v227 + 2);
        *(a1 + 10068) = *(v227 + 3);
        *(a1 + 10072) = *(v227 + 4);
        return;
      case -16265:
        v157 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 9384) = 1;
        v158 = *(v157 + 24);
        *(a1 + 9392) = *(v157 + 8);
        *(a1 + 9408) = v158;
        return;
      case -16264:
        *(a1 + 11155) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16263:
        v183 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v184 = *(v183 + 3);
        v185 = 1 << v184;
        v186 = a1 + 8 * (v184 >> 6);
        *(v186 + 1976) &= ~v185;
        *(a1 + 8 * *(v183 + 3) + 1984) = *(v183 + 1);
        v144 = *(v183 + 2);
        v145 = *(v183 + 3);
        goto LABEL_259;
      case -16262:
        v300 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v301 = v300;
        v302 = *(v300 + 1);
        v303 = *(v300 + 2) + v302;
        if (v303 >= 0x40)
        {
          v303 = 64;
        }

        v304 = v303 - v302;
        if (v303 < v302)
        {
          v304 = 0;
        }

        v305 = ~(-1 << v304);
        if (v302 <= v303)
        {
          v306 = v302 & 0x3F;
        }

        else
        {
          v306 = 0;
        }

        *(a1 + 1976) &= ~(v305 << v306);
        v307 = *(v300 + 1);
        v308 = GTTraceFunc_argumentBytesWithMap(a2, v300[24], a3);
        if (*(v301 + 2) >= 1)
        {
          v309 = (a1 + 8 * v307 + 1984);
          v310 = *(v301 + 2) & 0x7FFFFFFFLL;
          do
          {
            v311 = *v308;
            v308 += 8;
            *v309++ = v311;
            --v310;
          }

          while (v310);
        }

        v312 = a1 + 8 * *(v301 + 1);
        v35 = GTTraceFunc_argumentBytesWithMap(a2, v301[25], a3);
        v37 = 8 * *(v301 + 2);
        v59 = (v312 + 2232);
        goto LABEL_556;
      case -16261:
        v182 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v182 + 2) + 2480) = *(v182 + 1);
        return;
      case -16260:
        v278 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v279 = *(v278 + 1);
        v280 = GTTraceFunc_argumentBytesWithMap(a2, v278[24], a3);
        if (*(v278 + 2) >= 1)
        {
          v281 = (a1 + 8 * v279 + 2480);
          v282 = *(v278 + 2) & 0x7FFFFFFFLL;
          do
          {
            v283 = *v280;
            v280 += 8;
            *v281++ = v283;
            --v282;
          }

          while (v282);
        }

        return;
      case -16259:
        v284 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v244 = *(v284 + 1);
        v245 = *(v284 + 2);
        goto LABEL_277;
      case -16258:
        v146 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v147 = *(v146 + 1);
        v148 = GTTraceFunc_argumentBytesWithMap(a2, v146[24], a3);
        if (*(v146 + 2) >= 1)
        {
          v149 = (a1 + 8 * v147 + 3504);
          v150 = *(v146 + 2) & 0x7FFFFFFFLL;
          do
          {
            v151 = *v148;
            v148 += 8;
            *v149++ = v151;
            --v150;
          }

          while (v150);
        }

        return;
      case -16257:
        v247 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v247 + 2) + 3504) = *(v247 + 1);
        *(a1 + 4 * *(v247 + 2) + 10236) = *(v247 + 6);
        *(a1 + 4 * *(v247 + 2) + 10300) = *(v247 + 7);
        return;
      case -16256:
        v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v293 = *(v61 + 1);
        v294 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
        if (*(v61 + 2) >= 1)
        {
          v295 = (a1 + 8 * v293 + 3504);
          v296 = *(v61 + 2) & 0x7FFFFFFFLL;
          do
          {
            v297 = *v294;
            v294 += 8;
            *v295++ = v297;
            --v296;
          }

          while (v296);
        }

        v298 = a1 + 4 * *(v61 + 1);
        v299 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
        memcpy((v298 + 10236), v299, 4 * *(v61 + 2));
        v69 = a1 + 4 * *(v61 + 1);
        v70 = 10300;
        goto LABEL_482;
      case -16255:
        v370 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10084) = *(v370 + 2);
        *(a1 + 10088) = *(v370 + 3);
        *(a1 + 10092) = *(v370 + 4);
        *(a1 + 10096) = *(v370 + 5);
        return;
      case -16254:
        *(a1 + 9904) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16253:
        v152 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        *(a1 + 10104) = v152;
        *(a1 + 10100) = v152;
        return;
      case -16252:
        v371 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(v6 + 2541) = *(v371 + 1);
        *(a1 + 11148) = *(v371 + 2);
        return;
      case -16247:
        *(a1 + 10752) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        return;
      case -16227:
        v332 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v333 = *(v332 + 2);
        v334 = 1 << v333;
        v335 = a1 + 8 * (v333 >> 6);
        *(v335 + 72) |= v334;
        *(a1 + 8 * *(v332 + 2) + 88) = GTTraceFunc_argumentBytesWithMap(a2, v332[24], a3);
        v336 = *(v332 + 2);
        v337 = 1 << v336;
        v338 = a1 + 8 * (v336 >> 6);
        *(v338 + 80) &= ~v337;
        v154 = *(v332 + 1);
        v155 = *(v332 + 2);
        goto LABEL_314;
      case -16226:
        v153 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v154 = *(v153 + 1);
        v155 = *(v153 + 2);
LABEL_314:
        *(a1 + 8 * v155 + 336) = v154;
        return;
      case -16225:
        v159 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v160 = *(v159 + 2);
        v161 = 1 << v160;
        v162 = a1 + 8 * (v160 >> 6);
        *(v162 + 64) |= v161;
        *(a1 + 8 * *(v159 + 2) + 80) = GTTraceFunc_argumentBytesWithMap(a2, v159[24], a3);
        v163 = *(v159 + 2);
        v164 = 1 << v163;
        v165 = a1 + 8 * (v163 >> 6);
        *(v165 + 72) &= ~v164;
        v166 = *(v159 + 1);
        v167 = *(v159 + 2);
        goto LABEL_344;
      case -16224:
        v372 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v166 = *(v372 + 1);
        v167 = *(v372 + 2);
LABEL_344:
        *(a1 + 8 * v167 + 328) = v166;
        return;
      case -16223:
        v262 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v263 = *(v262 + 2);
        v264 = 1 << v263;
        v265 = a1 + 8 * (v263 >> 6);
        *(v265 + 1976) |= v264;
        *(a1 + 8 * *(v262 + 2) + 1984) = GTTraceFunc_argumentBytesWithMap(a2, v262[24], a3);
        v144 = *(v262 + 1);
        v145 = *(v262 + 2);
        goto LABEL_259;
      case -16222:
        v143 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v144 = *(v143 + 1);
        v145 = *(v143 + 2);
LABEL_259:
        *(a1 + 8 * v145 + 2232) = v144;
        return;
      case -16219:
        v156 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 10100) = *(v156 + 2);
        *(a1 + 10104) = *(v156 + 3);
        return;
      case -16214:
        v243 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v243 + 2) + 2480) = *(v243 + 1);
        v244 = *(v243 + 3);
        v245 = *(v243 + 4);
LABEL_277:
        *(a1 + 8 * v245 + 3504) = v244;
        return;
      default:
        if (v7 == -16384)
        {
          goto LABEL_150;
        }

        v81 = -16376;
        goto LABEL_112;
    }
  }

  if (v7 <= -16101)
  {
    switch(v7)
    {
      case -16162:
        v33 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v33 + 2) + 64) = *(v33 + 1);
        return;
      case -16161:
        *(a1 + 192) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16160:
        *(a1 + 193) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16159:
        v134 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v134 + 2) + 9928) = *(v134 + 1);
        return;
      case -16158:
        *(a1 + 11158) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16157:
        *(a1 + 11159) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
        return;
      case -16149:
        v141 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 2164) = *(v141 + 1);
        *(a1 + 2168) = *(v141 + 2);
        return;
      case -16148:
        v136 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 9920) = *(v136 + 1);
        *(a1 + 10760) = *(v136 + 2);
        *(a1 + 10764) = *(v136 + 3);
        return;
      case -16143:
        v137 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v138 = *(v137 + 2);
        v139 = 1 << v138;
        v140 = a1 + 8 * (v138 >> 6);
        *(v140 + 6944) |= v139;
        *(a1 + 8 * *(v137 + 2) + 6952) = GTTraceFunc_argumentBytesWithMap(a2, v137[24], a3);
        v130 = *(v137 + 1);
        v131 = *(v137 + 2);
        goto LABEL_166;
      case -16142:
        v126 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v127 = *(v126 + 3);
        v128 = 1 << v127;
        v129 = a1 + 8 * (v127 >> 6);
        *(v129 + 6944) &= ~v128;
        *(a1 + 8 * *(v126 + 3) + 6952) = *(v126 + 1);
        v130 = *(v126 + 2);
        v131 = *(v126 + 3);
        goto LABEL_166;
      case -16141:
        v132 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        v130 = *(v132 + 1);
        v131 = *(v132 + 2);
LABEL_166:
        *(a1 + 8 * v131 + 7200) = v130;
        break;
      case -16140:
        v133 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v133 + 2) + 7448) = *(v133 + 1);
        break;
      case -16139:
        v135 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v135 + 2) + 8472) = *(v135 + 1);
        break;
      case -16138:
        v142 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 8 * *(v142 + 2) + 8472) = *(v142 + 1);
        *(a1 + 4 * *(v142 + 2) + 10620) = *(v142 + 6);
        *(a1 + 4 * *(v142 + 2) + 10684) = *(v142 + 7);
        break;
      case -16132:
        *(a1 + 10748) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
        break;
      default:
        return;
    }

    return;
  }

  if (v7 <= -16087)
  {
    if (v7 == -16100)
    {
      v590 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v591 = *(v590 + 3);
      *(a1 + 1984) = *(v590 + 8);
      *(a1 + 2000) = v591;
      v592 = *(v590 + 6);
      *(a1 + 2008) = *(v590 + 2);
      *(a1 + 2024) = v592;
      return;
    }

    if (v7 != -16087)
    {
      return;
    }

    v93 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
    v94 = v93;
    v95 = *(v93 + 1);
    v96 = *(v93 + 2) + v95;
    if (v96 >= 0x40)
    {
      v96 = 64;
    }

    v97 = v96 - v95;
    if (v96 < v95)
    {
      v97 = 0;
    }

    v98 = ~(-1 << v97);
    if (v95 <= v96)
    {
      v99 = v95 & 0x3F;
    }

    else
    {
      v99 = 0;
    }

    *(a1 + 6944) &= ~(v98 << v99);
    v100 = *(v93 + 1);
    v101 = GTTraceFunc_argumentBytesWithMap(a2, v93[24], a3);
    if (*(v94 + 2) >= 1)
    {
      v102 = (a1 + 8 * v100 + 6952);
      v103 = *(v94 + 2) & 0x7FFFFFFFLL;
      do
      {
        v104 = *v101;
        v101 += 8;
        *v102++ = v104;
        --v103;
      }

      while (v103);
    }

    v69 = a1 + 8 * *(v94 + 1);
    v70 = 7200;
LABEL_452:
    v35 = GTTraceFunc_argumentBytesWithMap(a2, v94[25], a3);
    v37 = 8 * *(v94 + 2);
    goto LABEL_483;
  }

  switch(v7)
  {
    case -16086:
      v578 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v579 = *(v578 + 1);
      v580 = GTTraceFunc_argumentBytesWithMap(a2, v578[24], a3);
      if (*(v578 + 2) >= 1)
      {
        v581 = (a1 + 8 * v579 + 7448);
        v582 = *(v578 + 2) & 0x7FFFFFFFLL;
        do
        {
          v583 = *v580;
          v580 += 8;
          *v581++ = v583;
          --v582;
        }

        while (v582);
      }

      break;
    case -16085:
      v584 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v585 = *(v584 + 1);
      v586 = GTTraceFunc_argumentBytesWithMap(a2, v584[24], a3);
      if (*(v584 + 2) >= 1)
      {
        v587 = (a1 + 8 * v585 + 8472);
        v588 = *(v584 + 2) & 0x7FFFFFFFLL;
        do
        {
          v589 = *v586;
          v586 += 8;
          *v587++ = v589;
          --v588;
        }

        while (v588);
      }

      break;
    case -16084:
      v61 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v62 = *(v61 + 1);
      v63 = GTTraceFunc_argumentBytesWithMap(a2, v61[24], a3);
      if (*(v61 + 2) >= 1)
      {
        v64 = (a1 + 8 * v62 + 8472);
        v65 = *(v61 + 2) & 0x7FFFFFFFLL;
        do
        {
          v66 = *v63;
          v63 += 8;
          *v64++ = v66;
          --v65;
        }

        while (v65);
      }

      v67 = a1 + 4 * *(v61 + 1);
      v68 = GTTraceFunc_argumentBytesWithMap(a2, v61[25], a3);
      memcpy((v67 + 10620), v68, 4 * *(v61 + 2));
      v69 = a1 + 4 * *(v61 + 1);
      v70 = 10684;
LABEL_482:
      v35 = GTTraceFunc_argumentBytesWithMap(a2, v61[26], a3);
      v37 = 4 * *(v61 + 2);
LABEL_483:
      v59 = (v69 + v70);
LABEL_556:

      memcpy(v59, v35, v37);
      return;
    default:
      return;
  }
}

void GTMTL4SMCommandEncoder_processTraceFunc(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 2);
  if (v6 <= -15087)
  {
    if (v6 <= -15166)
    {
      if (v6 == -15171)
      {
        v41 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x790uLL);
        v42 = *(v41 + 1);
        if (v42)
        {
          *a1 = 95;
          v43 = *a2;
          *(a1 + 8) = v42;
          *(a1 + 16) = v43;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v41;
          *(a1 + 56) = 0u;
          *(a1 + 72) = 0u;
          *(a1 + 88) = 0u;
          *(a1 + 104) = 0u;
          *(a1 + 120) = 0u;
          *(a1 + 136) = 0u;
          *(a1 + 152) = 0u;
          *(a1 + 168) = 0u;
          *(a1 + 184) = 0u;
          *(a1 + 200) = 0;
        }

        return;
      }

      if (v6 != -15166)
      {
        return;
      }

      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x790uLL);
      v13 = *(v12 + 1);
      if (!v13)
      {
        return;
      }

      *a1 = 98;
      v14 = *a2;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 24) = -1;
      *(a1 + 40) = *v12;
      v15 = v12[16];
    }

    else
    {
      if (v6 != -15165)
      {
        if (v6 != -15127)
        {
          v8 = -15104;
          goto LABEL_21;
        }

LABEL_23:
        v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 48) = GTTraceFunc_argumentBytesWithMap(a2, v16[8], a3);
        return;
      }

      v44 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x790uLL);
      v45 = *(v44 + 1);
      if (!v45)
      {
        return;
      }

      *a1 = 98;
      v46 = *a2;
      *(a1 + 8) = v45;
      *(a1 + 16) = v46;
      *(a1 + 24) = -1;
      *(a1 + 40) = *v44;
      v15 = v44[24];
    }

    v47 = GTTraceFunc_argumentBytesWithMap(a2, v15, a3);
    bzero((a1 + 64), 0x750uLL);
    *(a1 + 56) = v47;
    *(a1 + 1540) = 1065353216;
    *(a1 + 1916) = 1;
    memset_pattern16((a1 + 1432), &unk_24DA90D30, 0x40uLL);
    *(a1 + 1929) = 1028;
    v22 = 0x706050403020100;
LABEL_64:
    *(a1 + 1496) = v22;
    return;
  }

  if (v6 > -14906)
  {
    if (v6 > -14889)
    {
      switch(v6)
      {
        case -14888:
LABEL_25:
          *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          break;
        case -14887:
LABEL_24:
          *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          break;
        case -14884:
          v9 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x790uLL);
          v10 = *(v9 + 1);
          if (v10)
          {
            *a1 = 105;
            v11 = *a2;
            *(a1 + 8) = v10;
            *(a1 + 16) = v11;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v9;
            *(a1 + 56) = 0;
            *(a1 + 64) = 0;
          }

          break;
      }

      return;
    }

    if (v6 != -14905)
    {
      v8 = -14892;
LABEL_21:
      if (v6 == v8)
      {
LABEL_22:
        *(a1 + 24) = *a2;
      }

      return;
    }

    goto LABEL_23;
  }

  switch(v6)
  {
    case -15086:
      goto LABEL_25;
    case -15085:
      goto LABEL_24;
    case -15084:
      v7 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 196) = *(v7 + 1);
      *(a1 + 200) = *(v7 + 2);
      return;
    case -15083:
      v36 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v36 + 2) + 72) = *(v36 + 1);
      return;
    case -15068:
      goto LABEL_23;
    case -15047:
      goto LABEL_22;
    case -15041:
      v32 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v33 = *(v32 + 2);
      if (v33)
      {
        *(a1 + 64) = *(v32 + 1);
        v33 = *(v32 + 2);
        if ((v33 & 2) == 0)
        {
LABEL_45:
          if ((v33 & 4) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_68;
        }
      }

      else if ((v33 & 2) == 0)
      {
        goto LABEL_45;
      }

      *(a1 + 72) = *(v32 + 1);
      v33 = *(v32 + 2);
      if ((v33 & 4) == 0)
      {
LABEL_46:
        if ((v33 & 8) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_69;
      }

LABEL_68:
      *(a1 + 80) = *(v32 + 1);
      v33 = *(v32 + 2);
      if ((v33 & 8) == 0)
      {
LABEL_47:
        if ((v33 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

LABEL_69:
      *(a1 + 88) = *(v32 + 1);
      if ((*(v32 + 2) & 0x10) == 0)
      {
        return;
      }

LABEL_70:
      *(a1 + 96) = *(v32 + 1);
      break;
    case -15040:
      v29 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1516) = *(v29 + 2);
      *(a1 + 1520) = *(v29 + 3);
      *(a1 + 1524) = *(v29 + 4);
      *(a1 + 1528) = *(v29 + 5);
      return;
    case -15039:
      v28 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 8 * *(v28 + 2) + 1432) = *(v28 + 1);
      return;
    case -15038:
      *(a1 + 1924) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15037:
      v34 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1504) = *(v34 + 2);
      *(a1 + 1508) = *(v34 + 3);
      *(a1 + 1512) = *(v34 + 4);
      return;
    case -15036:
      *(a1 + 1925) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15035:
      *(a1 + 1416) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15034:
      *(a1 + 1929) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15033:
      *(a1 + 1926) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15032:
      *(a1 + 1540) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
      return;
    case -15031:
      v30 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v30 + 2) + 1792) = *(v30 + 1);
      return;
    case -15030:
      *(a1 + 112) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15029:
      v22 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      goto LABEL_64;
    case -15028:
      v37 = (a1 + 904);
      v38 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 896) = 1;
      v39 = *(v38 + 24);
      *v37 = *(v38 + 8);
      *(a1 + 920) = v39;
      return;
    case -15027:
      v24 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 896) = *(v24 + 1);
      v25 = GTTraceFunc_argumentBytesWithMap(a2, v24[16], a3);
      v26 = 32 * *(v24 + 1);
      v27 = (a1 + 904);
      goto LABEL_56;
    case -15026:
      v31 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1532) = *(v31 + 2);
      *(a1 + 1536) = *(v31 + 3);
      return;
    case -15025:
      v23 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
      *(a1 + 1536) = v23;
      *(a1 + 1532) = v23;
      return;
    case -15024:
      *(a1 + 1930) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15023:
      v21 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v21 + 3) + 1544) = *(v21 + 1);
      *(a1 + 4 * *(v21 + 3) + 1668) = *(v21 + 2);
      return;
    case -15022:
      *(a1 + 1927) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15021:
      v35 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1916) = *(v35 + 1);
      *(a1 + 1424) = GTTraceFunc_argumentBytesWithMap(a2, v35[16], a3);
      return;
    case -15020:
      v17 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 120) = 1;
      v18 = *(v17 + 24);
      v19 = *(v17 + 40);
      *(a1 + 128) = *(v17 + 8);
      *(a1 + 144) = v18;
      *(a1 + 160) = v19;
      return;
    case -15019:
      v40 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 120) = *(v40 + 1);
      v25 = GTTraceFunc_argumentBytesWithMap(a2, v40[16], a3);
      v26 = 48 * *(v40 + 1);
      v27 = (a1 + 128);
LABEL_56:

      memcpy(v27, v25, v26);
      return;
    case -15018:
      v20 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1928) = *(v20 + 1);
      *(a1 + 1920) = *(v20 + 2);
      return;
    default:
      return;
  }
}

__n128 GTMTLSMRenderCommandEncoder_init(uint64_t a1, uint64_t a2)
{
  bzero((a1 + 8), 0x2B60uLL);
  *a1 = a2;
  memset_pattern16((a1 + 10116), &unk_24DA90D20, 0x40uLL);
  memset_pattern16((a1 + 10244), &unk_24DA90D20, 0x40uLL);
  memset_pattern16((a1 + 10628), &unk_24DA90D20, 0x40uLL);
  *(a1 + 10692) = 0x3F8000003F800000;
  *(a1 + 11084) = 0x100000001;
  *(a1 + 10024) = 1065353216;
  memset_pattern16((a1 + 9872), &unk_24DA90D30, 0x40uLL);
  *(a1 + 760) = -1;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(a1 + 728) = result;
  *(a1 + 744) = result;
  *(a1 + 696) = result;
  *(a1 + 712) = result;
  *(a1 + 664) = result;
  *(a1 + 680) = result;
  *(a1 + 632) = result;
  *(a1 + 648) = result;
  *(a1 + 600) = result;
  *(a1 + 616) = result;
  *(a1 + 568) = result;
  *(a1 + 584) = result;
  *(a1 + 536) = result;
  *(a1 + 552) = result;
  *(a1 + 520) = result;
  *(a1 + 10000) = 0x706050403020100;
  *(a1 + 11102) = 1028;
  return result;
}

uint64_t GTMTLSMRenderCommandEncoder_loadIndirectCommand(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a3 + a2[1]);
  if (!v4)
  {
    return 0;
  }

  v9 = *a2;
  if (*(*a2 + 26) || (result = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a4[5], *(a3 + a2[2])), (*(a1 + 8544) = result) != 0))
  {
    if (!v9[19])
    {
      v11 = v9[38];
      if (v11 >= 0x40)
      {
        v12 = 64;
      }

      else
      {
        v12 = v9[38];
      }

      *(a1 + 8) &= -1 << v12;
      if (v11)
      {
        v13 = 0;
        v14 = a3 + a2[3];
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v15);
          if (v16)
          {
            v17 = v15 - *v16;
            v18 = v16[2];
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          v19 = a1 + 8 * v13;
          *(v19 + 24) = v18;
          *(v19 + 272) = v17;
          ++v13;
        }

        while (v13 < v9[38]);
      }

      v20 = v9[31];
      if (v20 >= 0x40)
      {
        v21 = 64;
      }

      else
      {
        v21 = v9[31];
      }

      *(a1 + 1920) &= -1 << v21;
      if (v20)
      {
        v22 = 0;
        v23 = a3 + a2[4];
        do
        {
          v24 = *(v23 + 8 * v22);
          v25 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v24);
          if (v25)
          {
            v26 = v24 - *v25;
            v27 = v25[2];
          }

          else
          {
            v27 = 0;
            v26 = 0;
          }

          v28 = a1 + 8 * v22;
          *(v28 + 1928) = v27;
          *(v28 + 2176) = v26;
          ++v22;
        }

        while (v22 < v9[31]);
      }

      v29 = v9[35];
      if (v29 >= 0x40)
      {
        v30 = 64;
      }

      else
      {
        v30 = v9[35];
      }

      *(a1 + 3576) &= -1 << v30;
      if (v29)
      {
        v31 = 0;
        v32 = a3 + a2[5];
        do
        {
          v33 = *(v32 + 8 * v31);
          v34 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v33);
          if (v34)
          {
            v35 = v33 - *v34;
            v36 = v34[2];
          }

          else
          {
            v36 = 0;
            v35 = 0;
          }

          v37 = a1 + 8 * v31;
          *(v37 + 3584) = v36;
          *(v37 + 3832) = v35;
          ++v31;
        }

        while (v31 < v9[35]);
      }

      v38 = v9[34];
      if (v38 >= 0x40)
      {
        v39 = 64;
      }

      else
      {
        v39 = v9[34];
      }

      *(a1 + 5232) &= -1 << v39;
      if (v38)
      {
        v40 = (a3 + a2[6]);
        v41 = (a1 + 5488);
        v42 = 655;
        do
        {
          v44 = *v40++;
          v43 = v44;
          v45 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v44);
          if (v45)
          {
            v46 = v43 - *v45;
            v47 = v45[2];
          }

          else
          {
            v47 = 0;
            v46 = 0;
          }

          *(v41 - 31) = v47;
          *v41++ = v46;
          v48 = v42 - 654;
          ++v42;
        }

        while (v48 < v9[34]);
      }
    }

    v49 = v9[36];
    if (v9[36])
    {
      v50 = (a3 + a2[8]);
      v51 = (a1 + 10960);
      do
      {
        v52 = *v50++;
        *v51++ = v52;
        --v49;
      }

      while (v49);
    }

    if (v9[40])
    {
      v53 = v9[38];
      v54 = v53 >= 0x40 ? 64 : v9[38];
      *(a1 + 16) |= ~(-1 << v54);
      if (v53)
      {
        v55 = (a3 + a2[10]);
        v56 = (a1 + 520);
        do
        {
          v57 = *v55++;
          *v56++ = v57;
          --v53;
        }

        while (v53);
      }
    }

    if (!v9[23])
    {
      *(a1 + 9848) = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a4[3], *(a3 + a2[12]));
    }

    if (!v9[22])
    {
      *(a1 + 11097) = *(a3 + a2[13]);
    }

    if (!v9[20])
    {
      *(a1 + 11096) = *(a3 + a2[14]);
    }

    if (!v9[25])
    {
      *(a1 + 11098) = *(a3 + a2[15]);
    }

    if (!v9[29])
    {
      *(a1 + 11099) = *(a3 + a2[16]);
    }

    if (!v9[21])
    {
      v58 = (a3 + a2[17]);
      v60 = *v58;
      v59 = v58[1];
      *(a1 + 10008) = v60;
      *(a1 + 10016) = v59;
    }

    if (!v9[28])
    {
      *(a1 + 10044) = *(a3 + a2[18]);
    }

    if (!v9[27])
    {
      v61 = *(a3 + a2[20]);
      *(a1 + 9328) = v61;
      if (v61)
      {
        v62 = (a3 + a2[21]);
        v63 = (a1 + 9336);
        v64 = v61 - 1;
        if (v64 >= 0xF)
        {
          v64 = 15;
        }

        v65 = v64 + 1;
        do
        {
          v66 = *v62;
          v67 = v62[1];
          v62 += 2;
          *v63 = v66;
          v63[1] = v67;
          v63 += 2;
          --v65;
        }

        while (v65);
      }
    }

    if (!v9[30])
    {
      v68 = *(a3 + a2[22]);
      *(a1 + 8552) = v68;
      if (v68)
      {
        v69 = (a3 + a2[23]);
        v70 = (a1 + 8560);
        v71 = v68 - 1;
        if (v71 >= 0xF)
        {
          v71 = 15;
        }

        v72 = v71 + 1;
        do
        {
          v73 = *v69;
          v74 = v69[2];
          v70[1] = v69[1];
          v70[2] = v74;
          *v70 = v73;
          v70 += 3;
          v69 += 3;
          --v72;
        }

        while (v72);
      }
    }

    if (!v9[18])
    {
      *(a1 + 10028) = *(a3 + a2[24]);
    }

    if (v4 == 8 || v4 == 4)
    {
      v75 = a3 + a2[25];
      v76 = *(*a4 + 24);
      v77 = *(*a4 + 12);
      v78 = *v75;
      v79 = GTMTLGPUAddressResource_resourceForGPUAddress(v76, v77, *v75);
      if (v79)
      {
        v80 = v78 - *v79;
        v81 = v79[2];
      }

      else
      {
        v81 = 0;
        v80 = 0;
      }

      *(a1 + 9864) = v81;
      *(a1 + 10704) = v80;
      *(a1 + 10708) = *(v75 + 8);
      *(a1 + 10692) = *(v75 + 16);
      return v4 != 8 || v81 != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t GTMTLSMComputeCommandEncoder_loadIndirectCommand(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a3 + a2[1]);
  if (!v4)
  {
    return 0;
  }

  v9 = *a2;
  if (*(*a2 + 26) || (result = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a4[6], *(a3 + a2[2])), (*(a1 + 8) = result) != 0))
  {
    if (!v9[19])
    {
      v11 = v9[32];
      v12 = v11 >= 0x40 ? 64 : v9[32];
      *(a1 + 16) &= -1 << v12;
      if (v11)
      {
        v13 = 0;
        v14 = a3 + a2[7];
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v15);
          if (v16)
          {
            v17 = v15 - *v16;
            v18 = v16[2];
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          v19 = a1 + 8 * v13;
          *(v19 + 32) = v18;
          *(v19 + 280) = v17;
          ++v13;
        }

        while (v13 < v9[32]);
      }
    }

    if (v9[40])
    {
      v20 = v9[32];
      v21 = v20 >= 0x40 ? 64 : v9[32];
      *(a1 + 24) |= ~(-1 << v21);
      if (v20)
      {
        v22 = (a3 + a2[10]);
        v23 = (a1 + 528);
        do
        {
          v24 = *v22++;
          *v23++ = v24;
          --v20;
        }

        while (v20);
      }
    }

    v25 = v9[33];
    if (v9[33])
    {
      v26 = (a3 + a2[9]);
      v27 = (a1 + 1984);
      do
      {
        v28 = *v26++;
        *v27++ = v28;
        --v25;
      }

      while (v25);
    }

    if (v4 == 32 || v4 == 64)
    {
      v29 = (a3 + a2[25]);
      v30 = *v29;
      *(a1 + 1944) = *(v29 + 2);
      *(a1 + 1928) = v30;
      v31 = *(v29 + 24);
      *(a1 + 1968) = *(v29 + 5);
      *(a1 + 1952) = v31;
    }

    return 1;
  }

  return result;
}

void *GTMTLSMContext_getObject(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getDevice(uint64_t a1, unint64_t a2)
{
  v7 = 1;
  entry = find_entry(a1, &v7, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v4 = *(*entry + 32);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v4[2] > a2 || (v6 = v4, v4[3] <= a2))
    {
      if (result)
      {
        return result;
      }

      v6 = 0;
    }

    v4 = v4[4];
    result = v6;
  }

  while (v4);
  return result;
}

uint64_t GTMTLSMContext_lastFunction(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

uint64_t GTMTLSMContext_getDrawableTexture(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = *(a2 + 48);
  entry = find_entry(a1, &v9, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v6 = *(*entry + 32);
  if (!v6)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(a2 + 16) > a3 || (v8 = v6, *(v6 + 24) <= a3))
    {
      if (result)
      {
        return result;
      }

      v8 = 0;
    }

    v6 = *(v6 + 32);
    result = v8;
  }

  while (v6);
  return result;
}

_DWORD *GTMTLSMContext_getObjects(_DWORD *result, unint64_t a2, apr_array_header_t *arr)
{
  v3 = result[3];
  if (v3 >= 1)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      v8 = *(*(v6 + 3) + 8 * i);
      if (v8[2] > a2)
      {
        break;
      }

      if (v8[3] > a2)
      {
        v9 = 0;
        do
        {
          if (v8[2] > a2 || (v10 = v8, v8[3] <= a2))
          {
            if (v9)
            {
              break;
            }

            v10 = 0;
          }

          v8 = v8[4];
          v9 = v10;
        }

        while (v8);
        result = apr_array_push(arr);
        *result = v9;
        v3 = *(v6 + 3);
      }
    }
  }

  return result;
}

uint64_t GTMTLSMObjectPtr_compare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void *AddObjectAncestors(uint64_t *a1, void *Object, unint64_t a3, apr_array_header_t *a4)
{
  while (1)
  {
    result = apr_array_push(a4);
    *result = Object;
    v9 = *Object;
    if (*Object != 80)
    {
      break;
    }

    if (Object[18])
    {
      v31 = Object[18];
      v22 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v22)
      {
        v23 = *(v22 + 32);
        if (v23)
        {
          v13 = 0;
          do
          {
            if (v23[2] > a3 || (v24 = v23, v23[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v24 = 0;
            }

            v23 = v23[4];
            v13 = v24;
          }

          while (v23);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }

    if (Object[19])
    {
      v31 = Object[19];
      v25 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v25)
      {
        v26 = *(v25 + 32);
        if (v26)
        {
          v13 = 0;
          do
          {
            if (v26[2] > a3 || (v27 = v26, v26[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v27 = 0;
            }

            v26 = v26[4];
            v13 = v27;
          }

          while (v26);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

LABEL_69:
      v13 = 0;
      return AddObjectAncestors(a1, v13, a3, a4);
    }

    v10 = Object[6];
    if (!v10)
    {
      return result;
    }

    Object = GTMTLSMContext_getObject(*a1, v10, a3);
  }

  if (v9 == 16)
  {
    if (Object[19])
    {
      v31 = Object[19];
      v15 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v15 && (v16 = *(v15 + 32)) != 0)
      {
        v17 = 0;
        do
        {
          if (v16[2] > a3 || (v18 = v16, v16[3] <= a3))
          {
            if (v17)
            {
              break;
            }

            v18 = 0;
          }

          v16 = v16[4];
          v17 = v18;
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      result = AddObjectAncestors(a1, v17, a3, a4);
    }

    if (Object[6])
    {
      v31 = Object[6];
      v28 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v28)
      {
        v29 = *(v28 + 32);
        if (v29)
        {
          v13 = 0;
          do
          {
            if (v29[2] > a3 || (v30 = v29, v29[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v30 = 0;
            }

            v29 = v29[4];
            v13 = v30;
          }

          while (v29);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }
  }

  else
  {
    if (v9 == 101)
    {
      if (!Object[16])
      {
        return result;
      }

      v31 = Object[16];
      v19 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v19)
      {
        v20 = *(v19 + 32);
        if (v20)
        {
          v13 = 0;
          do
          {
            if (v20[2] > a3 || (v21 = v20, v20[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v21 = 0;
            }

            v20 = v20[4];
            v13 = v21;
          }

          while (v20);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }

    if (v9 == 22 && Object[6])
    {
      v31 = Object[6];
      v11 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v11)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          v13 = 0;
          do
          {
            if (v12[2] > a3 || (v14 = v12, v12[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v14 = 0;
            }

            v12 = v12[4];
            v13 = v14;
          }

          while (v12);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }
  }

  return result;
}

apr_hash_index_t *GTMTLSMContext_buildResourceChildrenMap(uint64_t *a1, unint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, *a3, 0, a4);
  v7 = 0;
  v8 = 0;
  v38 = a1;
  v9 = a1 + 1;
  do
  {
    if (v8 <= *(v9[byte_24DA90D60[v7]] + 12))
    {
      v8 = *(v9[byte_24DA90D60[v7]] + 12);
    }

    ++v7;
  }

  while (v7 != 4);
  p = newpool;
  v10 = apr_array_make(newpool, v8, 8);
  v11 = 0;
  v36 = v9;
  do
  {
    v10->nelts = 0;
    v37 = v11;
    GTMTLSMContext_getObjects(v9[byte_24DA90D60[v11]], a2, v10);
    v12 = *a3;
    v13 = apr_array_make(v10->pool, 4, 8);
    if (v10->nelts >= 1)
    {
      v14 = v13;
      v15 = 0;
      do
      {
        v16 = *&v10->elts[8 * v15];
        v17 = *find_entry(a3, (v16 + 8), 8uLL, 0);
        if (!v17 || !*(v17 + 32))
        {
          v14->nelts = 0;
          AddObjectAncestors(v38, v16, a2, v14);
          if (v14->nelts >= 2)
          {
            v18 = 1;
            while (1)
            {
              v19 = *&v14->elts[8 * v18];
              v20 = *find_entry(a3, (v19 + 8), 8uLL, 0);
              if (v20)
              {
                v21 = *(v20 + 32);
                if (v21)
                {
                  break;
                }
              }

              v22 = apr_array_make(v12, 1, 8);
              *apr_array_push(v22) = v16;
              apr_hash_set(a3, (v19 + 8), 8, v22);
              ++v18;
              v16 = v19;
              if (v18 >= v14->nelts)
              {
                goto LABEL_17;
              }
            }

            *apr_array_push(v21) = v16;
          }
        }

LABEL_17:
        ++v15;
      }

      while (v15 < v10->nelts);
    }

    v9 = v36;
    v11 = v37 + 1;
  }

  while (v37 != 3);
  apr_pool_destroy(p);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = a3;
  *(a3 + 40) = 0;
  result = apr_hash_next((a3 + 16));
  if (result)
  {
    v24 = result;
    do
    {
      v25 = *(*(v24 + 1) + 32);
      v26 = *(v25 + 12);
      if (v26 >= 2)
      {
        qsort(*(v25 + 24), v26, *(v25 + 8), GTMTLSMObjectPtr_compare);
        v27 = *(v25 + 12);
        if (v27 < 2)
        {
          v32 = 1;
        }

        else
        {
          v28 = *(v25 + 24);
          v29 = v28 + 1;
          v30 = *v28;
          v31 = v27 - 1;
          v32 = 1;
          do
          {
            v33 = v30;
            v30 = *v29;
            if (*v29 != v33)
            {
              v34 = v28[v32];
              v28[v32++] = v30;
              *v29 = v34;
            }

            ++v29;
            --v31;
          }

          while (v31);
        }

        *(v25 + 12) = v32;
      }

      result = apr_hash_next(v24);
      v24 = result;
    }

    while (result);
  }

  return result;
}

void *GTMTLSMContext_getTextureDescriptor(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v36 = a2;
  result = find_entry(*a1, &v36, 8uLL, 0);
  if (!*result)
  {
    return result;
  }

  v8 = *(*result + 32);
  if (!v8)
  {
    return result;
  }

  v9 = 0;
  do
  {
    if (v8[2] > a3 || (v10 = v8, v8[3] <= a3))
    {
      if (v9)
      {
        v10 = v9;
        goto LABEL_12;
      }

      v10 = 0;
    }

    v8 = v8[4];
    v9 = v10;
  }

  while (v8);
  if (!v10)
  {
    return result;
  }

LABEL_12:
  v11 = v10[19];
  if (!v11)
  {
    v14 = v10[14];
    if (v14)
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *(a4 + 48) = *(v14 + 6);
      *(a4 + 16) = v16;
      *(a4 + 32) = v17;
      *a4 = v15;
    }

    else
    {
      v26 = v10[25];
      if (v26)
      {
        *(a4 + 49) = 2;
        *(a4 + 47) = 1;
        *(a4 + 28) = 65537;
        *(a4 + 44) = 257;
        *(a4 + 16) = 84148994;
        v27 = v10[2];
        v36 = v26;
        result = find_entry(*a1, &v36, 8uLL, 0);
        if (*result)
        {
          v28 = *(*result + 32);
          if (v28)
          {
            v29 = 0;
            do
            {
              if (v28[2] > v27 || (v30 = v28, v28[3] <= v27))
              {
                if (v29)
                {
                  v30 = v29;
                  goto LABEL_62;
                }

                v30 = 0;
              }

              v28 = v28[4];
              v29 = v30;
            }

            while (v28);
            if (!v30)
            {
              return result;
            }

LABEL_62:
            v31 = v30[2];
            v36 = v30[5];
            result = find_entry(*a1, &v36, 8uLL, 0);
            if (*result)
            {
              v32 = *(*result + 32);
              if (v32)
              {
                v33 = 0;
                do
                {
                  if (v32[2] > v31 || (v34 = v32, v32[3] <= v31))
                  {
                    if (v33)
                    {
                      v34 = v33;
                      goto LABEL_73;
                    }

                    v34 = 0;
                  }

                  v32 = v32[4];
                  v33 = v34;
                }

                while (v32);
                if (!v34)
                {
                  return result;
                }

LABEL_73:
                *(a4 + 34) = *(v34 + 136);
                *(a4 + 24) = *(v34 + 22);
                *(a4 + 32) = *(v34 + 23);
                v35 = *(v34 + 274);
                *(a4 + 43) = v35;
                *(a4 + 20) = 4 * (v35 != 0);
              }
            }
          }
        }
      }
    }

    return result;
  }

  result = GTMTLSMContext_getTextureDescriptor(a1, v11, a3, a4);
  v12 = *(v10 + 1);
  if (v12 <= -15689)
  {
    if (v12 == -16196)
    {
      *(a4 + 49) = *(v10 + 166);
      *(a4 + 45) = *(v10 + 168);
      *(a4 + 28) = *(v10 + 82);
      goto LABEL_27;
    }

    v13 = -15775;
    goto LABEL_21;
  }

  if (v12 != -15688 && v12 != -14969)
  {
    v13 = -14801;
LABEL_21:
    if (v12 != v13)
    {
      goto LABEL_27;
    }
  }

  *(a4 + 49) = *(v10 + 166);
  v18 = *(v10 + 168);
  if (*(a4 + 45) - *(v10 + 167) <= v18)
  {
    LOBYTE(v18) = *(a4 + 45) - *(v10 + 167);
  }

  *(a4 + 45) = v18;
  v19 = *(v10 + 82);
  if (*(a4 + 28) - *(v10 + 81) <= v19)
  {
    LOWORD(v19) = *(a4 + 28) - *(v10 + 81);
  }

  *(a4 + 28) = v19;
  *(a4 + 16) = *(v10 + 56);
LABEL_27:
  if (*(v10 + 167))
  {
    v20 = *(a4 + 24);
    if (v20)
    {
      v21 = v20 >> *(v10 + 167);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      *(a4 + 24) = v21;
    }

    if (*(a4 + 32))
    {
      v22 = *(a4 + 32) >> *(v10 + 167);
      if (!v22)
      {
        LOWORD(v22) = 1;
      }

      *(a4 + 32) = v22;
    }

    if (*(a4 + 30))
    {
      v23 = *(a4 + 30) >> *(v10 + 167);
      if (!v23)
      {
        LOWORD(v23) = 1;
      }

      *(a4 + 30) = v23;
    }
  }

  *(a4 + 34) = *(v10 + 80);
  *(a4 + 8) = v10[23];
  if (v12 == -16196 || v12 == -15688 || v12 == -15775)
  {
    v24 = *(a4 + 49);
    if (v24 == 6)
    {
      v25 = *(v10 + 82) / 6u;
    }

    else
    {
      if (v24 != 5)
      {
        return result;
      }

      v25 = 1;
    }

    *(a4 + 28) = v25;
  }

  return result;
}

uint64_t *GTMTLSMComputePipelineState_computePipelineDescriptor(uint64_t *result, uint64_t a2, void *a3, apr_pool_t *a4)
{
  v6 = *(a2 + 56);
  if (!v6)
  {
    if (*(a2 + 48))
    {
      result = memcpy(a3, &GTMTLComputePipelineDescriptorDefaults, 0x3C0uLL);
      a3[106] = *(a2 + 48);
    }

    else if (*(a2 + 40) && *(a2 + 208))
    {
      v8 = result;
      v9 = *(a2 + 16);
      v22 = *(a2 + 40);
      v10 = *find_entry(*result, &v22, 8uLL, 0);
      if (v10 && (v11 = *(v10 + 32)) != 0)
      {
        v12 = 0;
        do
        {
          if (v11[2] > v9 || (v13 = v11, v11[3] <= v9))
          {
            if (v12)
            {
              break;
            }

            v13 = 0;
          }

          v11 = v11[4];
          v12 = v13;
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      result = GTMTLSMComputePipelineState_computePipelineDescriptor(v8, v12, a3, a4);
      v14 = **(a2 + 208);
      if (v14)
      {
        v15 = a3[95] + v14;
        result = apr_palloc(a4, 8 * v15);
        if (a3[95])
        {
          v16 = 0;
          v17 = a3[94];
          do
          {
            result[v16] = *(v17 + 8 * v16);
            ++v16;
          }

          while (a3[95] > v16);
        }

        v18 = *(a2 + 208);
        if (*v18)
        {
          v19 = 1;
          v20 = result;
          do
          {
            v20[a3[95]] = v18[v19];
            ++v20;
          }

          while (*v18 > v19++);
        }

        a3[94] = result;
        a3[95] = v15;
      }
    }

    else
    {
      if (*(a2 + 4) != -16101)
      {
        return result;
      }

      result = memcpy(a3, &GTMTLComputePipelineDescriptorDefaults, 0x3C0uLL);
    }

    a3[113] = *(a2 + 128);
    return result;
  }

  return memcpy(a3, v6, 0x3C0uLL);
}

uint64_t GTMTLSMRenderPipelineState_renderPipelineDescriptorType(uint64_t *a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    v4 = a2[2];
    v15 = a2[5];
    entry = find_entry(*a1, &v15, 8uLL, 0);
    if (*entry)
    {
      v6 = *(*entry + 32);
      if (v6)
      {
        v7 = 0;
        do
        {
          if (v6[2] > v4 || (v8 = v6, v6[3] <= v4))
          {
            if (v7)
            {
LABEL_21:
              v8 = v7;
              goto LABEL_22;
            }

            v8 = 0;
          }

          v6 = v6[4];
          v7 = v8;
        }

        while (v6);
        while (v8)
        {
LABEL_22:
          if (*v8 != 71)
          {
            break;
          }

          v2 = v8;
          v12 = v8[2];
          v15 = v8[5];
          v13 = find_entry(*a1, &v15, 8uLL, 0);
          if (!*v13)
          {
            break;
          }

          v14 = *(*v13 + 32);
          if (!v14)
          {
            break;
          }

          v7 = 0;
          do
          {
            if (v14[2] > v12 || (v8 = v14, v14[3] <= v12))
            {
              if (v7)
              {
                goto LABEL_21;
              }

              v8 = 0;
            }

            v14 = v14[4];
            v7 = v8;
          }

          while (v14);
        }
      }
    }
  }

  if (v2[6])
  {
    return 1;
  }

  if (v2[8])
  {
    return 2;
  }

  if (v2[9])
  {
    return 3;
  }

  v10 = v2[11];
  if (v10 && (v11 = *(v10 + 1016) - 2, v11 <= 3u))
  {
    return dword_24DA90D40[v11];
  }

  else
  {
    return 0;
  }
}

void *GTMTLSMRenderPipelineState_renderPipelineDescriptor(uint64_t *a1, void *a2, uint64_t a3, apr_pool_t *a4)
{
  v6 = a2[6];
  if (v6)
  {

    return memcpy(a3, v6, 0x5E8uLL);
  }

  else
  {
    v10 = a2[2];
    v29 = a2[5];
    result = find_entry(*a1, &v29, 8uLL, 0);
    if (*result)
    {
      v11 = *(*result + 32);
      if (v11)
      {
        v12 = 0;
        do
        {
          if (v11[2] > v10 || (v13 = v11, v11[3] <= v10))
          {
            if (v12)
            {
              v13 = v12;
              goto LABEL_16;
            }

            v13 = 0;
          }

          v11 = v11[4];
          v12 = v13;
        }

        while (v11);
        if (!v13)
        {
          return result;
        }

LABEL_16:
        if (*v13 == 71)
        {
          result = GTMTLSMRenderPipelineState_renderPipelineDescriptor(a1);
          v14 = a2[10];
          v15 = v14[9];
          if (v15)
          {
            v16 = (*(a3 + 1072) + v15);
            v17 = (*(a3 + 1072) + v15);
            result = apr_palloc(a4, 8 * v17);
            if (*(a3 + 1072))
            {
              v18 = 0;
              v19 = *(a3 + 1064);
              do
              {
                result[v18] = *(v19 + 8 * v18);
                ++v18;
              }

              while (*(a3 + 1072) > v18);
            }

            v14 = a2[10];
            if (v14[9])
            {
              v20 = 0;
              v21 = v14[8];
              do
              {
                result[*(a3 + 1072) + v20] = *(v21 + 8 * v20);
                ++v20;
              }

              while (v14[9] > v20);
            }

            *(a3 + 1064) = result;
            *(a3 + 1072) = v17;
          }

          v22 = v14[1];
          if (v22)
          {
            v23 = (*(a3 + 880) + v22);
            result = apr_palloc(a4, 8 * v23);
            if (*(a3 + 880))
            {
              v24 = 0;
              v25 = *(a3 + 872);
              do
              {
                result[v24] = *(v25 + 8 * v24);
                ++v24;
              }

              while (*(a3 + 880) > v24);
            }

            v26 = a2[10];
            if (v26[1])
            {
              v27 = 0;
              v28 = *v26;
              do
              {
                result[*(a3 + 880) + v27] = *(v28 + 8 * v27);
                ++v27;
              }

              while (v26[1] > v27);
            }

            *(a3 + 872) = result;
            *(a3 + 880) = v23;
          }

          *(a3 + 1280) = a2[16];
        }
      }
    }
  }

  return result;
}

uint64_t *GTMTLSMRenderPipelineState_tilePipelineDescriptor(uint64_t *result, void *a2, uint64_t **a3, apr_pool_t *a4)
{
  v5 = a2[8];
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[3];
    *(a3 + 2) = v5[2];
    *(a3 + 3) = v8;
    *a3 = v6;
    *(a3 + 1) = v7;
    v9 = v5[4];
    v10 = v5[5];
    v11 = v5[7];
    *(a3 + 6) = v5[6];
    *(a3 + 7) = v11;
    *(a3 + 4) = v9;
    *(a3 + 5) = v10;
    v12 = v5[8];
    v13 = v5[9];
    v14 = v5[11];
    *(a3 + 10) = v5[10];
    *(a3 + 11) = v14;
    *(a3 + 8) = v12;
    *(a3 + 9) = v13;
  }

  else
  {
    v17 = result;
    v18 = a2[2];
    v30 = a2[5];
    result = find_entry(*result, &v30, 8uLL, 0);
    if (*result)
    {
      v19 = *(*result + 32);
      if (v19)
      {
        v20 = 0;
        do
        {
          if (v19[2] > v18 || (v21 = v19, v19[3] <= v18))
          {
            if (v20)
            {
              v21 = v20;
              goto LABEL_15;
            }

            v21 = 0;
          }

          v19 = v19[4];
          v20 = v21;
        }

        while (v19);
        if (!v21)
        {
          return result;
        }

LABEL_15:
        if (*v21 == 71)
        {
          GTMTLSMRenderPipelineState_tilePipelineDescriptor(v17);
          v22 = *(a2[10] + 56);
          v23 = (v22 + *(a3 + 2));
          v24 = (v22 + *(a3 + 4));
          result = apr_palloc(a4, 8 * v24);
          if (a3[1])
          {
            v25 = 0;
            v26 = *a3;
            do
            {
              result[v25] = v26[v25];
              ++v25;
            }

            while (a3[1] > v25);
          }

          v27 = a2[10];
          if (*(v27 + 56))
          {
            v28 = 0;
            v29 = *(v27 + 48);
            do
            {
              result[a3[1] + v28] = *(v29 + 8 * v28);
              ++v28;
            }

            while (*(v27 + 56) > v28);
          }

          *a3 = result;
          a3[1] = v24;
        }
      }
    }
  }

  return result;
}

uint64_t GTMTLSMRenderPipelineState_fragmentFunction(uint64_t *a1, void *a2)
{
  if (a2[14])
  {
    return 0;
  }

  v5 = a2[6];
  if (v5)
  {
    return *(v5 + 1176);
  }

  v6 = a2[9];
  if (v6)
  {
    return *(v6 + 344);
  }

  v13[3] = v2;
  v13[4] = v3;
  v8 = a2[2];
  v13[0] = a2[5];
  v9 = *find_entry(*a1, v13, 8uLL, 0);
  if (v9 && (v10 = *(v9 + 32)) != 0)
  {
    v11 = 0;
    do
    {
      if (v10[2] > v8 || (v12 = v10, v10[3] <= v8))
      {
        if (v11)
        {
          return GTMTLSMRenderPipelineState_fragmentFunction(a1, v11);
        }

        v12 = 0;
      }

      v10 = v10[4];
      v11 = v12;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return GTMTLSMRenderPipelineState_fragmentFunction(a1, v11);
}

uint64_t GTMTLSMComputePipelineState_computeFunction(uint64_t *a1, void *a2)
{
  result = a2[6];
  if (!result)
  {
    v4 = a2[7];
    if (v4)
    {
      return *(v4 + 848);
    }

    else
    {
      v5 = a2[2];
      v10 = a2[5];
      v6 = *find_entry(*a1, &v10, 8uLL, 0);
      if (v6 && (v7 = *(v6 + 32)) != 0)
      {
        v8 = 0;
        do
        {
          if (v7[2] > v5 || (v9 = v7, v7[3] <= v5))
          {
            if (v8)
            {
              return GTMTLSMComputePipelineState_computeFunction(a1, v8);
            }

            v9 = 0;
          }

          v7 = v7[4];
          v8 = v9;
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      return GTMTLSMComputePipelineState_computeFunction(a1, v8);
    }
  }

  return result;
}

uint64_t GTMTLSMPipelineState_isVisibleFunctionTableCompatible(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (*(a3 + 136) == v5)
  {
    return 1;
  }

  v18[5] = v3;
  v18[6] = v4;
  if (*(a3 + 128) == v5)
  {
    return 1;
  }

  if (*a2 == 29)
  {
    v13 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    entry = find_entry(*a1, v18, 8uLL, 0);
    if (*entry)
    {
      v15 = *(*entry + 32);
      if (v15)
      {
        v16 = 0;
        do
        {
          if (v15[2] > v13 || (v17 = v15, v15[3] <= v13))
          {
            if (v16)
            {
              v17 = v16;
              goto LABEL_31;
            }

            v17 = 0;
          }

          v15 = v15[4];
          v16 = v17;
        }

        while (v15);
        if (!v17)
        {
          return 0;
        }

LABEL_31:
        if (*v17 == 29)
        {
          return GTMTLSMPipelineState_isVisibleFunctionTableCompatible(a1);
        }
      }
    }
  }

  else if (*a2 == 71)
  {
    v8 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    v9 = find_entry(*a1, v18, 8uLL, 0);
    if (*v9)
    {
      v10 = *(*v9 + 32);
      if (v10)
      {
        v11 = 0;
        do
        {
          if (v10[2] > v8 || (v12 = v10, v10[3] <= v8))
          {
            if (v11)
            {
              v12 = v11;
              goto LABEL_28;
            }

            v12 = 0;
          }

          v10 = v10[4];
          v11 = v12;
        }

        while (v10);
        if (!v12)
        {
          return 0;
        }

LABEL_28:
        if (*v12 == 71)
        {
          return GTMTLSMPipelineState_isVisibleFunctionTableCompatible(a1);
        }
      }
    }
  }

  return 0;
}

BOOL GTMTLSMPipelineState_supportsIndirectCommandBuffers(uint64_t a1)
{
  if (*a1 == 29)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v2 = *(v3 + 956);
      return v2 != 0;
    }
  }

  else if (*a1 == 71)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 1500);
      return v2 != 0;
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      v2 = *(v4 + 511);
      return v2 != 0;
    }
  }

  return 0;
}

uint64_t GTMTLSMPipelineState_sortIndirectResources(uint64_t *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  v5 = a1;
  do
  {
    v6 = *v5;
    if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(*v5))
    {
      *v5 = a1[v3];
      a1[v3] = v6;
      v3 = (v3 + 1);
    }

    ++v5;
    --v4;
  }

  while (v4);
  return v3;
}

void GTMTLSMContext_indirectCommandBufferResources(uint64_t a1, _DWORD **a2, unint64_t a3, apr_pool_t *p)
{
  v8 = apr_array_make(p, 128, 8);
  v42 = a2;
  GTMTLSMContext_getObjects(a2[1], a3, v8);
  elts = v8->elts;
  nelts = v8->nelts;
  v11 = apr_array_make(p, v8->nelts, 32);
  if (nelts >= 1)
  {
    do
    {
      v12 = *elts++;
      v13 = apr_array_push(v11);
      *v13 = vextq_s8(v12[7], v12[7], 8uLL);
      v13[1].i8[8] = 0;
      v13[1].i64[0] = v12->i64[1];
      --nelts;
    }

    while (nelts);
  }

  qsort(v11->elts, v11->nelts, v11->elt_size, GTMTLGPUAddressResource_compare);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v11;
  v14 = apr_hash_make(p);
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  v15 = apr_hash_make(p);
  *(a1 + 40) = v15;
  v16 = apr_hash_make(p);
  *(a1 + 48) = v16;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  v8->nelts = 0;
  GTMTLSMContext_getObjects(v42[5], a3, v8);
  v17 = v8->elts;
  LODWORD(v18) = GTMTLSMPipelineState_sortIndirectResources(v17, v8->nelts);
  v8->nelts = v18;
  v19 = apr_array_make(p, v18, 32);
  if (v18 >= 1)
  {
    v18 = v18;
    do
    {
      v20 = *v17++;
      v21 = apr_array_push(v19);
      v22 = v20[1];
      *v21 = v20[15];
      v21[1] = v22;
      v21[2] = v20[17];
      --v18;
    }

    while (v18);
  }

  v23 = v19->nelts;
  if (v23 >= 1)
  {
    v24 = v19->elts;
    do
    {
      apr_hash_set(v15, v24, 8, v24);
      v24 += 32;
      --v23;
    }

    while (v23);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(v42[6], a3, v8);
  v25 = v8->elts;
  LODWORD(v26) = GTMTLSMPipelineState_sortIndirectResources(v25, v8->nelts);
  v8->nelts = v26;
  v27 = apr_array_make(p, v26, 32);
  if (v26 >= 1)
  {
    v26 = v26;
    do
    {
      v28 = *v25++;
      v29 = apr_array_push(v27);
      v30 = v28[1];
      *v29 = v28[15];
      v29[1] = v30;
      v29[2] = v28[17];
      --v26;
    }

    while (v26);
  }

  v31 = v27->nelts;
  if (v31 >= 1)
  {
    v32 = v27->elts;
    do
    {
      apr_hash_set(v16, v32, 8, v32);
      v32 += 32;
      --v31;
    }

    while (v31);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(v42[11], a3, v8);
  v33 = v8->elts;
  v34 = v8->nelts;
  v35 = apr_array_make(p, v8->nelts, 32);
  if (v34 >= 1)
  {
    do
    {
      v36 = *v33;
      v33 += 8;
      v37 = apr_array_push(v35);
      v38 = v36[1];
      v39 = v36[9];
      *v37 = v36[8];
      v37[1] = v38;
      v37[2] = v39;
      --v34;
    }

    while (v34);
  }

  v40 = v35->nelts;
  if (v40 >= 1)
  {
    v41 = v35->elts;
    do
    {
      apr_hash_set(v14, v41, 8, v41);
      v41 += 32;
      --v40;
    }

    while (v40);
  }
}

void GTMTLSMContext_getHeapResourcesWithType(uint64_t a1, uint64_t a2, unint64_t a3, apr_allocator_t *a4, apr_array_header_t *a5, apr_pool_t *parent)
{
  v7 = a4;
  if (a4 == 16 || a4 == 80 || a4 == 22)
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, parent, 0, a4);
    if ((v7 - 2) > 0x6C || (v11 = byte_24DA91F13[v7 - 2], v11 < 0))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 8 * v11 + 8);
    }

    v13 = newpool;
    v14 = apr_array_make(newpool, 128, 8);
    GTMTLSMContext_getObjects(v12, a3, v14);
    nelts = v14->nelts;
    if (nelts)
    {
      for (i = 0; i < nelts; ++i)
      {
        v17 = *&v14->elts[8 * i];
        if (*(v17 + 48) == a2)
        {
          *apr_array_push(a5) = v17;
          nelts = v14->nelts;
        }
      }
    }

    apr_pool_destroy(v13);
  }
}

char *GTMTLSMBuffer_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15915)
  {
    if (v6 > -16314)
    {
      if (v6 > -16164)
      {
        switch(v6)
        {
          case -16163:
            v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v22 = *a3;
            *(v5 + 1) = *(v16 + 1);
            *(v5 + 2) = v22;
            *(v5 + 1) = *(a3 + 2);
            v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 20) = v23;
            if (v23)
            {
              *(v5 + 4) = vextq_s8(*v23, *v23, 8uLL);
              *(v5 + 24) = *(v23 + 4);
              *(v5 + 15) = *(v23 + 3);
              *(v5 + 136) = *(v23 + 2);
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v16[16], a2);
            *(v5 + 19) = result;
            if (result)
            {
              v24 = *(result + 1);
            }

            else
            {
              v24 = 0;
            }

            *(v5 + 14) = v24;
            goto LABEL_61;
          case -16122:
            result[108] = 1;
            break;
          case -16117:
            v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v9 = *a3;
            v10 = *(v8 + 2);
            *(v5 + 1) = *(v8 + 1);
            *(v5 + 2) = v9;
            *(v5 + 1) = *(a3 + 2);
            *(v5 + 52) = *(v8 + 3);
            *(v5 + 14) = v10;
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 20) = result;
            if (result)
            {
              *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
              *(v5 + 24) = *(result + 4);
              *(v5 + 15) = *(result + 3);
              *(v5 + 136) = *(result + 2);
            }

            *(v5 + 6) = *v8;
            break;
        }

        return result;
      }

      if (v6 == -16313)
      {
LABEL_40:
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v17 = *a3;
        v18 = *(v16 + 2);
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 52) = *(v16 + 3);
        *(v5 + 14) = v18;
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 20) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 15) = *(result + 3);
          *(v5 + 136) = *(result + 2);
        }

LABEL_61:
        *(v5 + 5) = *v16;
        return result;
      }

      v7 = -16312;
    }

    else
    {
      if (v6 <= -16371)
      {
        if (v6 == -16372)
        {
          v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v30[8], a2);
          *(v5 + 11) = result;
        }

        else if (v6 == -16371)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
        }

        return result;
      }

      if (v6 == -16370)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 == -16367)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v29 = *(result + 2);
        if (v29 != 1)
        {
          *(v5 + 53) = v29;
        }

        return result;
      }

      v7 = -16314;
    }

    if (v6 != v7)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (v6 > -10229)
  {
    if (v6 <= -10204)
    {
      switch(v6)
      {
        case -10228:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
          break;
        case -10223:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
          break;
        case -10210:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
          break;
      }

      return result;
    }

    if (v6 == -10203)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
      return result;
    }

    if (v6 == -10187)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
      return result;
    }

    if (v6 != -10186)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v11 = *(result + 8);
LABEL_44:
    *(v5 + 136) = v11;
    return result;
  }

  if (v6 > -15510)
  {
    if (v6 == -15509)
    {
      v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v20 = *a3;
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v20;
      *(v5 + 1) = *(a3 + 2);
      v21 = GTTraceFunc_argumentBytesWithMap(a3, v19[16], a2);
      *(v5 + 52) = *(v21 + 16);
      *(v5 + 14) = *v21;
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 20) = result;
      if (!result)
      {
        return result;
      }

      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 15) = *(result + 3);
      v11 = *(result + 2);
      goto LABEL_44;
    }

    if (v6 != -10237)
    {
      if (v6 == -10235)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 2);
      }

      return result;
    }

    goto LABEL_40;
  }

  if (v6 == -15914)
  {
    v25 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v26 = *a3;
    v27 = *v25;
    *(v5 + 1) = *(v25 + 1);
    *(v5 + 2) = v26;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = *(v25 + 2);
    *(v5 + 16) = v27;
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v28 = *(result + 3);
    *(v5 + 14) = *(result + 2);
    *(v5 + 52) = v28;
  }

  else if (v6 == -15778)
  {
    v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v13 = *a3;
    v14 = *(v12 + 2);
    *(v5 + 1) = *(v12 + 1);
    *(v5 + 2) = v13;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 52) = *(v12 + 3);
    *(v5 + 14) = v14;
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 20) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 15) = *(result + 3);
      *(v5 + 136) = *(result + 2);
    }

    v15 = *(v12 + 4);
    *(v5 + 6) = *v12;
    *(v5 + 7) = v15;
  }

  return result;
}

char *GTMTLSMTensor_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -14841)
  {
    if (v6 > -14949)
    {
      switch(v6)
      {
        case -14948:
          *(result + 3) = *a3;
          break;
        case -14938:
          result[108] = 1;
          break;
        case -14933:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v7 = *(result + 2);
          if (v7 != 1)
          {
            *(v5 + 53) = v7;
          }

          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -14959:
          v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 1) = *(v12 + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 2);
          v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 15) = v14;
          if (v14)
          {
            *(v5 + 4) = vextq_s8(*v14, *v14, 8uLL);
            *(v5 + 24) = *(v14 + 4);
            *(v5 + 39) = *(v14 + 5);
            *(v5 + 296) = *(v14 + 24);
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, v12[24], a2);
          *(v5 + 14) = result;
          break;
        case -14950:
          v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v15[8], a2);
          *(v5 + 11) = result;
          break;
        case -14949:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
          break;
      }
    }
  }

  else if (v6 <= -10147)
  {
    switch(v6)
    {
      case -14840:
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        *(v5 + 1) = *(v8 + 1);
        *(v5 + 2) = v9;
        *(v5 + 1) = *(a3 + 2);
        v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v10;
        if (v10)
        {
          *(v5 + 4) = vextq_s8(*v10, *v10, 8uLL);
          *(v5 + 24) = *(v10 + 4);
          *(v5 + 39) = *(v10 + 5);
          *(v5 + 296) = *(v10 + 24);
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v8[32], a2);
        *(v5 + 14) = result;
        v11 = *(v8 + 2);
        *(v5 + 16) = *v8;
        *(v5 + 17) = v11;
        break;
      case -10148:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 2);
        break;
      case -10147:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
    }
  }

  else if (v6 > -10145)
  {
    if (v6 == -10144)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 39) = *(result + 1);
    }

    else if (v6 == -10143)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
    }
  }

  else if (v6 == -10146)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 37) = *(result + 1);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 38) = *(result + 1);
  }

  return result;
}

int8x16_t *GTMTLSMTexture_processTraceFuncWithMap(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15778)
  {
    if (v6 > -16117)
    {
      if (v6 <= -16097)
      {
        if (v6 <= -16105)
        {
          if (v6 == -16116)
          {
            v83 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v84 = *a3;
            v5->i64[1] = *(v83 + 1);
            v5[1].i64[0] = v84;
            v5->i32[1] = *(a3 + 8);
            v85 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v85;
            if (v85)
            {
              v5[4] = vextq_s8(*v85, *v85, 8uLL);
              v5[6].i32[0] = v85[1].i32[0];
              v86 = v85[3].i64[0];
              v87 = v85[3].i64[1];
              v88 = v85[4].i64[0];
              v5[11].i64[0] = v85[2].i64[1];
              v5[11].i64[1] = v87;
              v5[14].i16[2] = v85[5].i16[0];
              v5[7].i64[1] = &v85[1].i64[1];
              v5[13].i64[0] = v86;
              v5[13].i64[1] = v88;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v83[16], a2);
            v5[7].i64[0] = result;
            v5[3].i64[0] = *v83;
          }

          else if (v6 == -16114)
          {
            result[6].i8[12] = 1;
          }

          return result;
        }

        if (v6 != -16104)
        {
          if (v6 == -16098)
          {
            v42 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v43 = *a3;
            v5->i64[1] = *(v42 + 1);
            v5[1].i64[0] = v43;
            v5->i32[1] = *(a3 + 8);
            v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v44;
            if (v44)
            {
              v5[4] = vextq_s8(*v44, *v44, 8uLL);
              v5[6].i32[0] = v44[1].i32[0];
              v45 = v44[3].i64[0];
              v46 = v44[3].i64[1];
              v47 = v44[4].i64[0];
              v5[11].i64[0] = v44[2].i64[1];
              v5[11].i64[1] = v46;
              v5[14].i16[2] = v44[5].i16[0];
              v5[7].i64[1] = &v44[1].i64[1];
              v5[13].i64[0] = v45;
              v5[13].i64[1] = v47;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v42[40], a2);
            v5[7].i64[0] = result;
            v5[9].i64[0] = *v42;
            v5[10].i32[0] = *(v42 + 2);
            v5[10].i32[1] = *(v42 + 3);
            v5[10].i32[2] = *(v42 + 4);
          }

          return result;
        }

        goto LABEL_86;
      }

      if (v6 <= -16031)
      {
        if (v6 == -16096)
        {
          v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v123 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v123;
          v5->i32[1] = *(a3 + 8);
          v124 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = v124;
          if (v124)
          {
            v5[4] = vextq_s8(*v124, *v124, 8uLL);
            v5[6].i32[0] = v124[1].i32[0];
            v125 = v124[3].i64[0];
            v126 = v124[3].i64[1];
            v127 = v124[4].i64[0];
            v5[11].i64[0] = v124[2].i64[1];
            v5[11].i64[1] = v126;
            v5[14].i16[2] = v124[5].i16[0];
            v5[7].i64[1] = &v124[1].i64[1];
            v5[13].i64[0] = v125;
            v5[13].i64[1] = v127;
          }

          v35 = v29[33];
LABEL_137:
          result = GTTraceFunc_argumentBytesWithMap(a3, v35, a2);
          v5[7].i64[0] = result;
          goto LABEL_138;
        }

        if (v6 != -16031)
        {
          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v55 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v55;
        v5->i32[1] = *(a3 + 8);
        v56 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v56;
        if (v56)
        {
          v5[4] = vextq_s8(*v56, *v56, 8uLL);
          v5[6].i32[0] = v56[1].i32[0];
          v57 = v56[3].i64[0];
          v58 = v56[3].i64[1];
          v59 = v56[4].i64[0];
          v5[11].i64[0] = v56[2].i64[1];
          v5[11].i64[1] = v58;
          v5[14].i16[2] = v56[5].i16[0];
          v5[7].i64[1] = &v56[1].i64[1];
          v5[13].i64[0] = v57;
          v5[13].i64[1] = v59;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v29[41], a2);
        v5[7].i64[0] = result;
        v5[10].i32[0] = *(v29 + 3);
        v60 = *(v29 + 4);
      }

      else
      {
        if (v6 != -16030)
        {
          if (v6 == -15980)
          {
            v103 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v104 = *a3;
            v5->i64[1] = *(v103 + 1);
            v5[1].i64[0] = v104;
            v5->i32[1] = *(a3 + 8);
            v105 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v105;
            if (v105)
            {
              v5[4] = vextq_s8(*v105, *v105, 8uLL);
              v5[6].i32[0] = v105[1].i32[0];
              v106 = v105[3].i64[0];
              v107 = v105[3].i64[1];
              v108 = v105[4].i64[0];
              v5[11].i64[0] = v105[2].i64[1];
              v5[11].i64[1] = v107;
              v5[14].i16[2] = v105[5].i16[0];
              v5[7].i64[1] = &v105[1].i64[1];
              v5[13].i64[0] = v106;
              v5[13].i64[1] = v108;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v103[24], a2);
            v5[7].i64[0] = result;
            v5[2].i64[1] = *v103;
            v5[14].i8[6] = 1;
          }

          else if (v6 == -15913)
          {
            v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v13 = *a3;
            v5->i64[1] = *(v12 + 1);
            v5[1].i64[0] = v13;
            v5->i32[1] = *(a3 + 8);
            v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v14;
            if (v14)
            {
              v5[4] = vextq_s8(*v14, *v14, 8uLL);
              v5[6].i32[0] = v14[1].i32[0];
              v15 = v14[3].i64[0];
              v16 = v14[3].i64[1];
              v17 = v14[4].i64[0];
              v5[11].i64[0] = v14[2].i64[1];
              v5[11].i64[1] = v16;
              v5[14].i16[2] = v14[5].i16[0];
              v5[7].i64[1] = &v14[1].i64[1];
              v5[13].i64[0] = v15;
              v5[13].i64[1] = v17;
            }

            v5[2].i64[1] = *(v12 + 2);
            v5[12].i64[0] = *v12;
            v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            result = GTTraceFunc_argumentBytesWithMap(a3, v18[24], a2);
            v5[7].i64[0] = result;
          }

          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v113 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v113;
        v5->i32[1] = *(a3 + 8);
        v114 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v114;
        if (v114)
        {
          v5[4] = vextq_s8(*v114, *v114, 8uLL);
          v5[6].i32[0] = v114[1].i32[0];
          v115 = v114[3].i64[0];
          v116 = v114[3].i64[1];
          v117 = v114[4].i64[0];
          v5[11].i64[0] = v114[2].i64[1];
          v5[11].i64[1] = v116;
          v5[14].i16[2] = v114[5].i16[0];
          v5[7].i64[1] = &v114[1].i64[1];
          v5[13].i64[0] = v115;
          v5[13].i64[1] = v117;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v29[49], a2);
        v5[7].i64[0] = result;
        v5[10].i32[0] = *(v29 + 4);
        v60 = *(v29 + 5);
      }

      v5[10].i32[1] = v60;
    }

    else
    {
      if (v6 > -16240)
      {
        if (v6 <= -16234)
        {
          if (v6 == -16239)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[6].i32[0] = result->i32[2];
          }

          else if (v6 == -16238)
          {
            result[1].i64[1] = *a3;
          }
        }

        else
        {
          if (v6 == -16233)
          {
            v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v109 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v109;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = result;
            if (result)
            {
              v5[4] = vextq_s8(*result, *result, 8uLL);
              v5[6].i32[0] = result[1].i32[0];
              v110 = result[3].i64[0];
              v111 = result[3].i64[1];
              v112 = result[4].i64[0];
              v5[11].i64[0] = result[2].i64[1];
              v5[11].i64[1] = v111;
              v5[14].i16[2] = result[5].i16[0];
              v5[7].i64[1] = &result[1].i64[1];
              v5[13].i64[0] = v110;
              v5[13].i64[1] = v112;
            }

            v5[10].i16[0] = *(v7 + 2);
            goto LABEL_121;
          }

          if (v6 != -16232)
          {
            if (v6 != -16196)
            {
              return result;
            }

            v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v8 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v8;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = result;
            if (result)
            {
              v5[4] = vextq_s8(*result, *result, 8uLL);
              v5[6].i32[0] = result[1].i32[0];
              v9 = result[3].i64[0];
              v10 = result[3].i64[1];
              v11 = result[4].i64[0];
              v5[11].i64[0] = result[2].i64[1];
              v5[11].i64[1] = v10;
              v5[14].i16[2] = result[5].i16[0];
              v5[7].i64[1] = &result[1].i64[1];
              v5[13].i64[0] = v9;
              v5[13].i64[1] = v11;
            }

            v5[10].i16[0] = *(v7 + 2);
            v5[10].i8[6] = *(v7 + 3);
            v5[10].i8[7] = *(v7 + 4);
            v5[10].i8[8] = *(v7 + 5);
            v5[10].i16[1] = *(v7 + 6);
            v5[10].i16[2] = *(v7 + 7);
            goto LABEL_121;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v102 = result[1].i64[0];
          if (v102 != 1)
          {
            v5[6].i16[5] = v102;
          }
        }

        return result;
      }

      if (v6 <= -16295)
      {
        if (v6 != -16368)
        {
          if (v6 != -16310)
          {
            return result;
          }

          v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v30 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v30;
          v5->i32[1] = *(a3 + 8);
          v31 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = v31;
          if (v31)
          {
            v5[4] = vextq_s8(*v31, *v31, 8uLL);
            v5[6].i32[0] = v31[1].i32[0];
            v32 = v31[3].i64[0];
            v33 = v31[3].i64[1];
            v34 = v31[4].i64[0];
            v5[11].i64[0] = v31[2].i64[1];
            v5[11].i64[1] = v33;
            v5[14].i16[2] = v31[5].i16[0];
            v5[7].i64[1] = &v31[1].i64[1];
            v5[13].i64[0] = v32;
            v5[13].i64[1] = v34;
          }

          v35 = v29[24];
          goto LABEL_137;
        }

LABEL_86:
        v61 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v62 = *a3;
        v5->i64[1] = *(v61 + 1);
        v5[1].i64[0] = v62;
        v5->i32[1] = *(a3 + 8);
        v63 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v63;
        if (v63)
        {
          v5[4] = vextq_s8(*v63, *v63, 8uLL);
          v5[6].i32[0] = v63[1].i32[0];
          v64 = v63[3].i64[0];
          v65 = v63[3].i64[1];
          v66 = v63[4].i64[0];
          v5[11].i64[0] = v63[2].i64[1];
          v5[11].i64[1] = v65;
          v5[14].i16[2] = v63[5].i16[0];
          v5[7].i64[1] = &v63[1].i64[1];
          v5[13].i64[0] = v64;
          v5[13].i64[1] = v66;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v61[32], a2);
        v5[7].i64[0] = result;
        v5[9].i64[0] = *v61;
        v5[10].i32[0] = *(v61 + 2);
        v5[10].i32[1] = *(v61 + 3);
        return result;
      }

      if (v6 != -16294)
      {
        if (v6 == -16240)
        {
          v41 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v41[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v89 = *a3;
      v5->i64[1] = *(v29 + 1);
      v5[1].i64[0] = v89;
      v5->i32[1] = *(a3 + 8);
      v90 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = v90;
      if (v90)
      {
        v5[4] = vextq_s8(*v90, *v90, 8uLL);
        v5[6].i32[0] = v90[1].i32[0];
        v91 = v90[3].i64[0];
        v92 = v90[3].i64[1];
        v93 = v90[4].i64[0];
        v5[11].i64[0] = v90[2].i64[1];
        v5[11].i64[1] = v92;
        v5[14].i16[2] = v90[5].i16[0];
        v5[7].i64[1] = &v90[1].i64[1];
        v5[13].i64[0] = v91;
        v5[13].i64[1] = v93;
      }

      v5[7].i64[0] = GTTraceFunc_argumentBytesWithMap(a3, v29[24], a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v29[25], a2);
      v5[8].i64[0] = result;
      v5[10].i64[0] = *(v29 + 2);
    }

LABEL_138:
    v5[2].i64[1] = *v29;
    return result;
  }

  if (v6 > -10232)
  {
    if (v6 <= -10205)
    {
      if (v6 <= -10223)
      {
        if (v6 == -10231)
        {
          v122 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v122[8], a2);
          v5[7].i64[1] = result;
        }

        else if (v6 == -10227)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[11].i64[0] = result->i64[1];
        }
      }

      else
      {
        switch(v6)
        {
          case -10222:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[4].i64[0] = result->u32[2];
            break;
          case -10212:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[5].i64[0] = result->i64[1];
            break;
          case -10205:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[14].i16[2] = result->i32[2];
            break;
        }
      }

      return result;
    }

    if (v6 > -10186)
    {
      if (v6 == -10185)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[3].i64[1] = result->i64[1];
        return result;
      }

      if (v6 != -10164)
      {
        if (v6 == -7167)
        {
          v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v20 = *a3;
          v5->i64[1] = *(v19 + 1);
          v5[1].i64[0] = v20;
          v5->i32[1] = *(a3 + 8);
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = result;
          if (result)
          {
            v5[4] = vextq_s8(*result, *result, 8uLL);
            v5[6].i32[0] = result[1].i32[0];
            v21 = result[3].i64[0];
            v22 = result[3].i64[1];
            v23 = result[4].i64[0];
            v5[11].i64[0] = result[2].i64[1];
            v5[11].i64[1] = v22;
            v5[14].i16[2] = result[5].i16[0];
            v5[7].i64[1] = &result[1].i64[1];
            v5[13].i64[0] = v21;
            v5[13].i64[1] = v23;
          }

          v5[12].i64[1] = *v19;
        }

        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v94 = result->i64[1];
LABEL_110:
      v5[13].i64[0] = v94;
      return result;
    }

    if (v6 == -10204)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[1] = result->i64[1];
      return result;
    }

    if (v6 != -10198)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v54 = result->i64[1];
LABEL_130:
    v5[11].i64[1] = v54;
    return result;
  }

  if (v6 > -15689)
  {
    if (v6 > -14803)
    {
      if (v6 == -14802)
      {
        v95 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v96 = *a3;
        v5->i64[1] = *(v95 + 2);
        v5[1].i64[0] = v96;
        v5->i32[1] = *(a3 + 8);
        v97 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v97;
        if (v97)
        {
          v5[4] = vextq_s8(*v97, *v97, 8uLL);
          v5[6].i32[0] = v97[1].i32[0];
          v98 = v97[3].i64[0];
          v99 = v97[3].i64[1];
          v100 = v97[4].i64[0];
          v5[11].i64[0] = v97[2].i64[1];
          v5[11].i64[1] = v99;
          v5[14].i16[2] = v97[5].i16[0];
          v5[7].i64[1] = &v97[1].i64[1];
          v5[13].i64[0] = v98;
          v5[13].i64[1] = v100;
        }

        v5->i64[1] = *(v95 + 1);
        result = GTTraceFunc_argumentBytesWithMap(a3, v95[56], a2);
        v5[7].i64[0] = result;
        v101 = *(v95 + 4);
        v5[9].i64[0] = *(v95 + 3);
        v5[10].i32[0] = v101;
        v5[10].i32[1] = *(v95 + 5);
        v94 = *(v95 + 2);
        goto LABEL_110;
      }

      if (v6 != -14801)
      {
        if (v6 == -10234)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[6].i32[1] = result->i32[2];
        }

        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v78 = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
      v79 = *a3;
      v5->i64[1] = *(v7 + 1);
      v5[1].i64[0] = v79;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = result;
      if (result)
      {
        v5[4] = vextq_s8(*result, *result, 8uLL);
        v5[6].i32[0] = result[1].i32[0];
        v80 = result[3].i64[0];
        v81 = result[3].i64[1];
        v82 = result[4].i64[0];
        v5[11].i64[0] = result[2].i64[1];
        v5[11].i64[1] = v81;
        v5[14].i16[2] = result[5].i16[0];
        v5[7].i64[1] = &result[1].i64[1];
        v5[13].i64[0] = v80;
        v5[13].i64[1] = v82;
      }

      v5[10].i16[0] = *(v78 + 18);
      v5[10].i8[6] = v78[38];
      v5[10].i8[7] = *v78;
      v5[10].i8[8] = *(v78 + 1);
      v5[10].i16[1] = *(v78 + 2);
      v5[10].i16[2] = *(v78 + 3);
      v28 = *(v78 + 8);
      goto LABEL_98;
    }

    if (v6 != -15688)
    {
      if (v6 == -14969)
      {
        v48 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v49 = GTTraceFunc_argumentBytesWithMap(a3, v48[40], a2);
        v50 = *a3;
        v5->i64[1] = *(v48 + 2);
        v5[1].i64[0] = v50;
        v5->i32[1] = *(a3 + 8);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = result;
        if (result)
        {
          v5[4] = vextq_s8(*result, *result, 8uLL);
          v5[6].i32[0] = result[1].i32[0];
          v51 = result[3].i64[1];
          v52 = result[4].i64[0];
          v5[11].i64[0] = result[2].i64[1];
          v5[11].i64[1] = v51;
          v5[14].i16[2] = result[5].i16[0];
          v5[7].i64[1] = &result[1].i64[1];
          v5[13].i64[1] = v52;
        }

        v5->i64[1] = *(v48 + 1);
        v5[10].i16[0] = *(v49 + 18);
        v5[10].i8[6] = v49[38];
        v5[10].i8[7] = *v49;
        v5[10].i8[8] = *(v49 + 1);
        v5[10].i16[1] = *(v49 + 2);
        v5[10].i16[2] = *(v49 + 3);
        v5[14].i32[0] = *(v49 + 8);
        v53 = *(v48 + 2);
        v5[9].i64[1] = *(v48 + 3);
        v5[13].i64[0] = v53;
      }

      return result;
    }

    v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v118 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v118;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v119 = result[3].i64[0];
      v120 = result[3].i64[1];
      v121 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v120;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v119;
      v5[13].i64[1] = v121;
    }

    v5[10].i16[0] = *(v36 + 2);
    v5[10].i8[6] = *(v36 + 3);
    v5[10].i8[7] = *(v36 + 4);
    v5[10].i8[8] = *(v36 + 5);
    v5[10].i16[1] = *(v36 + 6);
    v5[10].i16[2] = *(v36 + 7);
    v5[14].i32[0] = *(v36 + 18);
LABEL_129:
    v5[9].i64[1] = *v36;
    v54 = *(v36 + 8);
    goto LABEL_130;
  }

  if (v6 > -15691)
  {
    if (v6 == -15690)
    {
      v74 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v75 = *a3;
      v5->i64[1] = *(v74 + 1);
      v5[1].i64[0] = v75;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = result;
      if (result)
      {
        v5[4] = vextq_s8(*result, *result, 8uLL);
        v5[6].i32[0] = result[1].i32[0];
        v76 = result[3].i64[0];
        v5[11].i64[0] = result[2].i64[1];
        v5[14].i16[2] = result[5].i16[0];
        v5[7].i64[1] = &result[1].i64[1];
        v77 = result[4].i64[0];
        v5[13].i64[0] = v76;
        v5[13].i64[1] = v77;
      }

      v5[10].i16[0] = *(v74 + 2);
      v5[9].i64[1] = *v74;
      v54 = *(v74 + 3);
      goto LABEL_130;
    }

    v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v37 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v37;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v38 = result[3].i64[0];
      v39 = result[3].i64[1];
      v40 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v39;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v38;
      v5[13].i64[1] = v40;
    }

    v5[10].i16[0] = *(v36 + 2);
    v5[10].i8[6] = *(v36 + 3);
    v5[10].i8[7] = *(v36 + 4);
    v5[10].i8[8] = *(v36 + 5);
    v5[10].i16[1] = *(v36 + 6);
    v5[10].i16[2] = *(v36 + 7);
    goto LABEL_129;
  }

  if (v6 != -15777)
  {
    if (v6 != -15775)
    {
      return result;
    }

    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v24 = *a3;
    v5->i64[1] = *(v7 + 1);
    v5[1].i64[0] = v24;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v25 = result[3].i64[0];
      v26 = result[3].i64[1];
      v27 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v26;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v25;
      v5[13].i64[1] = v27;
    }

    v5[10].i16[0] = *(v7 + 2);
    v5[10].i8[6] = *(v7 + 3);
    v5[10].i8[7] = *(v7 + 4);
    v5[10].i8[8] = *(v7 + 5);
    v5[10].i16[1] = *(v7 + 6);
    v5[10].i16[2] = *(v7 + 7);
    v28 = *(v7 + 16);
LABEL_98:
    v5[14].i32[0] = v28;
LABEL_121:
    v5[9].i64[1] = *v7;
    return result;
  }

  v67 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  v68 = *a3;
  v5->i64[1] = *(v67 + 1);
  v5[1].i64[0] = v68;
  v5->i32[1] = *(a3 + 8);
  v69 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
  v5[8].i64[1] = v69;
  if (v69)
  {
    v5[4] = vextq_s8(*v69, *v69, 8uLL);
    v5[6].i32[0] = v69[1].i32[0];
    v70 = v69[3].i64[0];
    v71 = v69[3].i64[1];
    v72 = v69[4].i64[0];
    v5[11].i64[0] = v69[2].i64[1];
    v5[11].i64[1] = v71;
    v5[14].i16[2] = v69[5].i16[0];
    v5[7].i64[1] = &v69[1].i64[1];
    v5[13].i64[0] = v70;
    v5[13].i64[1] = v72;
  }

  result = GTTraceFunc_argumentBytesWithMap(a3, v67[24], a2);
  v5[7].i64[0] = result;
  v73 = *(v67 + 2);
  v5[3].i64[0] = *v67;
  v5[3].i64[1] = v73;
  return result;
}

char *GTMTLSMHeap_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -16116)
  {
    switch(v6)
    {
      case -16120:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v9;
        result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
        *(v5 + 6) = result;
        break;
      case -16119:
        v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v11[8], a2);
        *(v5 + 7) = result;
        break;
      case -16118:
        *(result + 3) = *a3;
        break;
    }
  }

  else if (v6 > -10209)
  {
    if (v6 == -10208)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }

    else if (v6 == -10207)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
    }
  }

  else if (v6 == -16115)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v10 = *(result + 2);
    if (v10 != 1)
    {
      *(v5 + 44) = v10;
    }
  }

  else if (v6 == -10211)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 8) = *(result + 1);
  }

  return result;
}

char *GTMTLSMRenderPipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15406)
  {
    if (v6 > -14837)
    {
      if (v6 > -10185)
      {
        switch(v6)
        {
          case -10184:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 109) = *(result + 1);
            break;
          case -10172:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 53) = *(result + 1);
            break;
          case -10165:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 17) = *(result + 1);
            break;
        }

        return result;
      }

      if (v6 != -14836)
      {
        if (v6 == -10220)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
        }

        else if (v6 == -10192)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 108) = *(result + 2);
        }

        return result;
      }
    }

    else
    {
      if (v6 <= -15132)
      {
        if (v6 != -15405)
        {
          if (v6 != -15404 && v6 != -15403)
          {
            return result;
          }

          v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v14 = *a3;
          v15 = *v13;
          *(v5 + 1) = *(v13 + 1);
          *(v5 + 2) = v14;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v15;
          v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 7) = v16;
          if (v16)
          {
            v17 = v16;
            memcpy(v5 + 144, v16 + 216, 0x118uLL);
            *(v5 + 120) = *v17;
            *(v5 + 108) = *(v17 + 48);
            *(v5 + 109) = *(v17 + 98);
            *(v5 + 17) = *(v17 + 2);
          }

          v18 = v13[32];
LABEL_49:
          result = GTTraceFunc_argumentBytesWithMap(a3, v18, a2);
          *(v5 + 9) = result;
          return result;
        }

LABEL_46:
        v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 1) = *(v36 + 1);
        *(v5 + 2) = v37;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v38;
        v39 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 7) = v39;
        if (v39)
        {
          v40 = v39;
          memcpy(v5 + 144, v39 + 216, 0x118uLL);
          *(v5 + 120) = *v40;
          *(v5 + 108) = *(v40 + 48);
          *(v5 + 109) = *(v40 + 98);
          *(v5 + 17) = *(v40 + 2);
        }

        v18 = v36[24];
        goto LABEL_49;
      }

      if (v6 == -15131 || v6 == -15130)
      {
        v46 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v47 = *a3;
        v48 = *v46;
        *(v5 + 1) = *(v46 + 1);
        *(v5 + 2) = v47;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v48;
        v49 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 7) = v49;
        if (v49)
        {
          v50 = v49;
          memcpy(v5 + 144, v49 + 216, 0x118uLL);
          *(v5 + 120) = *v50;
          *(v5 + 108) = *(v50 + 48);
          *(v5 + 109) = *(v50 + 98);
          *(v5 + 17) = *(v50 + 2);
        }

        *(v5 + 11) = GTTraceFunc_argumentBytesWithMap(a3, v46[24], a2);
        v35 = v46[25];
        goto LABEL_61;
      }

      if (v6 != -14867)
      {
        return result;
      }
    }

    v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v31 = *a3;
    v32 = *v30;
    *(v5 + 1) = *(v30 + 1);
    *(v5 + 2) = v31;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v32;
    v33 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 7) = v33;
    if (v33)
    {
      v34 = v33;
      memcpy(v5 + 144, v33 + 216, 0x118uLL);
      *(v5 + 120) = *v34;
      *(v5 + 108) = *(v34 + 48);
      *(v5 + 109) = *(v34 + 98);
      *(v5 + 17) = *(v34 + 2);
    }

    *(v5 + 11) = GTTraceFunc_argumentBytesWithMap(a3, v30[24], a2);
    *(v5 + 12) = GTTraceFunc_argumentBytesWithMap(a3, v30[25], a2);
    v35 = v30[26];
LABEL_61:
    result = GTTraceFunc_argumentBytesWithMap(a3, v35, a2);
    *(v5 + 13) = result;
    return result;
  }

  if (v6 > -16091)
  {
    if (v6 <= -15739)
    {
      if (v6 != -16090)
      {
        if (v6 == -16089)
        {
LABEL_33:
          v25 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v26 = *a3;
          v27 = *v25;
          *(v5 + 1) = *(v25 + 1);
          *(v5 + 2) = v26;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v27;
          v28 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 7) = v28;
          if (v28)
          {
            v29 = v28;
            memcpy(v5 + 144, v28 + 216, 0x118uLL);
            *(v5 + 120) = *v29;
            *(v5 + 108) = *(v29 + 48);
            *(v5 + 109) = *(v29 + 98);
            *(v5 + 17) = *(v29 + 2);
          }

          v24 = v25[24];
LABEL_36:
          result = GTTraceFunc_argumentBytesWithMap(a3, v24, a2);
          *(v5 + 8) = result;
          return result;
        }

        if (v6 != -16088)
        {
          return result;
        }
      }

      v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v20 = *a3;
      v21 = *v19;
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v20;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v21;
      v22 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v22;
      if (v22)
      {
        v23 = v22;
        memcpy(v5 + 144, v22 + 216, 0x118uLL);
        *(v5 + 120) = *v23;
        *(v5 + 108) = *(v23 + 48);
        *(v5 + 109) = *(v23 + 98);
        *(v5 + 17) = *(v23 + 2);
      }

      v24 = v19[32];
      goto LABEL_36;
    }

    if (v6 == -15738)
    {
      v56 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v57 = *a3;
      v58 = *v56;
      *(v5 + 1) = *(v56 + 1);
      *(v5 + 2) = v57;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v58;
      v59 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v59;
      if (v59)
      {
        v60 = v59;
        memcpy(v5 + 144, v59 + 216, 0x118uLL);
        *(v5 + 120) = *v60;
        *(v5 + 108) = *(v60 + 48);
        *(v5 + 109) = *(v60 + 98);
        *(v5 + 17) = *(v60 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v56[32], a2);
      *(v5 + 14) = result;
      return result;
    }

    if (v6 == -15461)
    {
      v51 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v52 = *a3;
      v53 = *v51;
      *(v5 + 1) = *(v51 + 1);
      *(v5 + 2) = v52;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v53;
      v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v54;
      if (v54)
      {
        v55 = v54;
        memcpy(v5 + 144, v54 + 216, 0x118uLL);
        *(v5 + 120) = *v55;
        *(v5 + 108) = *(v55 + 48);
        *(v5 + 109) = *(v55 + 98);
        *(v5 + 17) = *(v55 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v51[24], a2);
      *(v5 + 10) = result;
      return result;
    }

    if (v6 != -15406)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v6 <= -16301)
  {
    if (v6 == -16303)
    {
LABEL_7:
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v9;
      v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v10;
      if (v10)
      {
        v11 = v10;
        memcpy(v5 + 144, v10 + 216, 0x118uLL);
        *(v5 + 120) = *v11;
        *(v5 + 108) = *(v11 + 48);
        *(v5 + 109) = *(v11 + 98);
        *(v5 + 17) = *(v11 + 2);
      }

      v12 = v7[24];
LABEL_57:
      result = GTTraceFunc_argumentBytesWithMap(a3, v12, a2);
      *(v5 + 6) = result;
      return result;
    }

    if (v6 != -16302)
    {
      if (v6 == -16301)
      {
        goto LABEL_7;
      }

      return result;
    }

LABEL_54:
    v41 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v42 = *a3;
    v43 = *v41;
    *(v5 + 1) = *(v41 + 1);
    *(v5 + 2) = v42;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v43;
    v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 7) = v44;
    if (v44)
    {
      v45 = v44;
      memcpy(v5 + 144, v44 + 216, 0x118uLL);
      *(v5 + 120) = *v45;
      *(v5 + 108) = *(v45 + 48);
      *(v5 + 109) = *(v45 + 98);
      *(v5 + 17) = *(v45 + 2);
    }

    v12 = v41[32];
    goto LABEL_57;
  }

  switch(v6)
  {
    case -16300:
      goto LABEL_54;
    case -16242:
      *(result + 3) = *a3;
      return result;
    case -16091:
      goto LABEL_33;
  }

  return result;
}

char *GTMTLSMComputePipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15990)
  {
    if (v6 <= -16201)
    {
      if (v6 <= -16299)
      {
        if (v6 == -16321)
        {
          *(result + 3) = *a3;
          return result;
        }

        v7 = -16299;
      }

      else
      {
        if (v6 == -16298 || v6 == -16297)
        {
LABEL_39:
          v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v31 = *a3;
          v32 = *v30;
          *(v5 + 1) = *(v30 + 1);
          *(v5 + 2) = v31;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v32;
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 8) = result;
          if (result)
          {
            v33 = *(result + 104);
            v34 = *(result + 120);
            v35 = *(result + 136);
            *(v5 + 24) = *(result + 19);
            *(v5 + 10) = v34;
            *(v5 + 11) = v35;
            *(v5 + 9) = v33;
            *(v5 + 120) = *result;
            *(v5 + 54) = *(result + 22);
            *(v5 + 17) = *(result + 2);
          }

          *(v5 + 6) = *(v30 + 2);
          return result;
        }

        v7 = -16296;
      }

      if (v6 != v7)
      {
        return result;
      }

      goto LABEL_39;
    }

    if (v6 <= -16199)
    {
      if (v6 != -16200)
      {
LABEL_43:
        v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 1) = *(v36 + 1);
        *(v5 + 2) = v37;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v38;
        v39 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 8) = v39;
        if (v39)
        {
          v40 = *(v39 + 104);
          v41 = *(v39 + 120);
          v42 = *(v39 + 136);
          *(v5 + 24) = *(v39 + 19);
          *(v5 + 10) = v41;
          *(v5 + 11) = v42;
          *(v5 + 9) = v40;
          *(v5 + 120) = *v39;
          *(v5 + 54) = *(v39 + 22);
          *(v5 + 17) = *(v39 + 2);
        }

        v43 = v36[32];
LABEL_53:
        result = GTTraceFunc_argumentBytesWithMap(a3, v43, a2);
        *(v5 + 6) = *(result + 106);
        *(v5 + 7) = result;
        return result;
      }
    }

    else if (v6 != -16198)
    {
      if (v6 != -16197)
      {
        if (v6 == -16101)
        {
          v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v17 = *a3;
          v18 = *v16;
          *(v5 + 1) = *(v16 + 1);
          *(v5 + 2) = v17;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v18;
          v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 8) = v19;
          if (v19)
          {
            v20 = *(v19 + 104);
            v21 = *(v19 + 120);
            v22 = *(v19 + 136);
            *(v5 + 24) = *(v19 + 19);
            *(v5 + 10) = v21;
            *(v5 + 11) = v22;
            *(v5 + 9) = v20;
            *(v5 + 120) = *v19;
            *(v5 + 54) = *(v19 + 22);
            *(v5 + 17) = *(v19 + 2);
          }

          *(v5 + 12) = GTTraceFunc_argumentBytesWithMap(a3, v16[24], a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v16[25], a2);
          *(v5 + 13) = result;
        }

        return result;
      }

      goto LABEL_43;
    }

    v51 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v52 = *a3;
    v53 = *v51;
    *(v5 + 1) = *(v51 + 1);
    *(v5 + 2) = v52;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v53;
    v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 8) = v54;
    if (v54)
    {
      v55 = *(v54 + 104);
      v56 = *(v54 + 120);
      v57 = *(v54 + 136);
      *(v5 + 24) = *(v54 + 19);
      *(v5 + 10) = v56;
      *(v5 + 11) = v57;
      *(v5 + 9) = v55;
      *(v5 + 120) = *v54;
      *(v5 + 54) = *(v54 + 22);
      *(v5 + 17) = *(v54 + 2);
    }

    v43 = v51[24];
    goto LABEL_53;
  }

  if (v6 <= -14872)
  {
    if (v6 <= -15542)
    {
      if (v6 == -15989)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
      }

      else if (v6 == -15740)
      {
        v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v24 = *a3;
        v25 = *v23;
        *(v5 + 1) = *(v23 + 1);
        *(v5 + 2) = v24;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v25;
        v26 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 8) = v26;
        if (v26)
        {
          v27 = *(v26 + 104);
          v28 = *(v26 + 120);
          v29 = *(v26 + 136);
          *(v5 + 24) = *(v26 + 19);
          *(v5 + 10) = v28;
          *(v5 + 11) = v29;
          *(v5 + 9) = v27;
          *(v5 + 120) = *v26;
          *(v5 + 54) = *(v26 + 22);
          *(v5 + 17) = *(v26 + 2);
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v23[32], a2);
        *(v5 + 14) = result;
      }
    }

    else if (v6 == -15541)
    {
      v58 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v59 = *a3;
      v60 = *v58;
      *(v5 + 1) = *(v58 + 1);
      *(v5 + 2) = v59;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v60;
      v61 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v61;
      if (v61)
      {
        v62 = *(v61 + 104);
        v63 = *(v61 + 120);
        v64 = *(v61 + 136);
        *(v5 + 24) = *(v61 + 19);
        *(v5 + 10) = v63;
        *(v5 + 11) = v64;
        *(v5 + 9) = v62;
        *(v5 + 120) = *v61;
        *(v5 + 54) = *(v61 + 22);
        *(v5 + 17) = *(v61 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v58[24], a2);
      *(v5 + 26) = result;
    }

    else if (v6 == -15141 || v6 == -15140)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v9 = *a3;
      v10 = *v8;
      *(v5 + 1) = *(v8 + 1);
      *(v5 + 2) = v9;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v10;
      v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v11;
      if (v11)
      {
        v12 = *(v11 + 104);
        v13 = *(v11 + 120);
        v14 = *(v11 + 136);
        *(v5 + 24) = *(v11 + 19);
        *(v5 + 10) = v13;
        *(v5 + 11) = v14;
        *(v5 + 9) = v12;
        *(v5 + 120) = *v11;
        *(v5 + 54) = *(v11 + 22);
        *(v5 + 17) = *(v11 + 2);
      }

      *(v5 + 9) = GTTraceFunc_argumentBytesWithMap(a3, v8[24], a2);
      v15 = v8[25];
      goto LABEL_49;
    }
  }

  else
  {
    if (v6 <= -10192)
    {
      if (v6 != -14871 && v6 != -14870)
      {
        if (v6 == -10214)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
        }

        return result;
      }

      v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v45 = *a3;
      v46 = *v44;
      *(v5 + 1) = *(v44 + 1);
      *(v5 + 2) = v45;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v46;
      v47 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v47;
      if (v47)
      {
        v48 = *(v47 + 104);
        v49 = *(v47 + 120);
        v50 = *(v47 + 136);
        *(v5 + 24) = *(v47 + 19);
        *(v5 + 10) = v49;
        *(v5 + 11) = v50;
        *(v5 + 9) = v48;
        *(v5 + 120) = *v47;
        *(v5 + 54) = *(v47 + 22);
        *(v5 + 17) = *(v47 + 2);
      }

      *(v5 + 9) = GTTraceFunc_argumentBytesWithMap(a3, v44[24], a2);
      *(v5 + 10) = GTTraceFunc_argumentBytesWithMap(a3, v44[25], a2);
      v15 = v44[26];
LABEL_49:
      result = GTTraceFunc_argumentBytesWithMap(a3, v15, a2);
      *(v5 + 11) = result;
      return result;
    }

    switch(v6)
    {
      case -10191:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 54) = *(result + 2);
        break;
      case -10171:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 1);
        break;
      case -10162:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTLSMDrawable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  if (v5 > -7162)
  {
    if (v5 == -7161)
    {
      *(result + 3) = *a3;
    }

    else if (v5 == -6655)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v8;
      *(v4 + 1) = *(a3 + 2);
    }
  }

  else if (v5 == -7167)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v4 + 6) = *(result + 1);
  }

  else if (v5 == -7166)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v6 = *a3;
    v7 = *result;
    *(v4 + 1) = *(result + 1);
    *(v4 + 2) = v6;
    *(v4 + 1) = *(a3 + 2);
    *(v4 + 5) = v7;
  }

  return result;
}

char *GTMTLSMAccelerationStructure_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15354)
  {
    if (v6 <= -10182)
    {
      if (v6 > -10198)
      {
        if (v6 > -10196)
        {
          if (v6 == -10195)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 25) = *(result + 2);
          }

          else if (v6 == -10182)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 168) = *(result + 8);
            v28 = *(result + 4);
            *(v5 + 23) = *(result + 3);
            *(v5 + 52) = v28;
            *(v5 + 200) = *(result + 40);
          }
        }

        else if (v6 == -10197)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 9) = *(result + 1);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
        }

        return result;
      }

      if (v6 == -15353)
      {
        v68 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v69 = *a3;
        *(v5 + 1) = *(v68 + 1);
        *(v5 + 2) = v69;
        *(v5 + 1) = *(a3 + 2);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          v70 = *(result + 6);
          *(v5 + 20) = *(result + 5);
          *(v5 + 26) = v70;
          *(v5 + 52) = *(result + 32);
          *(v5 + 168) = *(result + 72);
          v71 = *(result + 12);
          *(v5 + 23) = *(result + 11);
          *(v5 + 25) = v71;
          *(v5 + 18) = *(result + 7);
        }

        v73 = *(v68 + 2);
        v72 = *(v68 + 3);
        *(v5 + 6) = *v68;
        *(v5 + 7) = v72;
        *(v5 + 24) = v73;
        return result;
      }

      if (v6 != -15352)
      {
        if (v6 != -15351)
        {
          return result;
        }

        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v19 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v19;
        *(v5 + 1) = *(a3 + 2);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          *(v5 + 26) = *(result + 6);
          v20 = *(result + 9);
          *(v5 + 52) = *(result + 32);
          *(v5 + 21) = v20;
          v21 = *(result + 5);
          *(v5 + 11) = v21;
          *(v5 + 7) = v20 - v21;
          *(v5 + 25) = *(result + 12);
          *(v5 + 18) = *(result + 7);
        }

        *(v5 + 6) = *v7;
        goto LABEL_46;
      }

      v62 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v63 = *a3;
      *(v5 + 1) = *(v62 + 1);
      *(v5 + 2) = v63;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v64 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v64;
        *(v5 + 18) = *(result + 7);
      }

      v66 = *(v62 + 2);
      v65 = *(v62 + 3);
      *(v5 + 6) = *v62;
      *(v5 + 7) = v65;
      *(v5 + 24) = v66;
      v54 = *(v62 + 4);
    }

    else
    {
      if (v6 > -10168)
      {
        if (v6 > -10159)
        {
          if (v6 != -10158)
          {
            if (v6 == -10154)
            {
              result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
              if (*(v5 + 1) == *(result + 1))
              {
                result = GTTraceFunc_argumentBytesWithMap(a3, result[16], a2);
                *(v5 + 15) = result;
              }
            }

            return result;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          if (*(v5 + 1) != *(result + 1))
          {
            return result;
          }

          v18 = *(result + 1);
        }

        else
        {
          if (v6 == -10167)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 18) = *(result + 1);
            return result;
          }

          if (v6 != -10159)
          {
            return result;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v18 = *(result + 8);
        }

        v61 = vmovn_s32(v18);
        *(v5 + 28) = vuzp1_s8(v61, v61).u32[0];
        return result;
      }

      if (v6 <= -10171)
      {
        if (v6 == -10181)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 17) = *(result + 1);
        }

        else if (v6 == -10173)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
        }

        return result;
      }

      if (v6 != -10170)
      {
        if (v6 == -10169)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 7) = *(result + 1);
        }

        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v54 = *(result + 1);
    }

    *(v5 + 20) = v54;
    return result;
  }

  if (v6 <= -15553)
  {
    if (v6 <= -15652)
    {
      switch(v6)
      {
        case -15661:
          v67 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v67[8], a2);
          *(v5 + 11) = result;
          break;
        case -15660:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
          break;
        case -15659:
          *(result + 3) = *a3;
          break;
      }

      return result;
    }

    if (v6 <= -15616)
    {
      if (v6 == -15651)
      {
        result[108] = 1;
      }

      else if (v6 == -15650)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v11 = *(result + 2);
        if (v11 != 1)
        {
          *(v5 + 53) = v11;
        }
      }

      return result;
    }

    if (v6 == -15615)
    {
LABEL_72:
      v40 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v41 = *a3;
      *(v5 + 1) = *(v40 + 1);
      *(v5 + 2) = v41;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v42 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v42;
        v43 = *(result + 5);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        v44 = *(result + 9);
        *(v5 + 20) = v43;
        *(v5 + 21) = v44;
        v45 = *(result + 5);
        *(v5 + 11) = v45;
        *(v5 + 7) = v44 - v45;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v40;
      return result;
    }

    if (v6 != -15614)
    {
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v24 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v24;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v25 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v26 = *(result + 9);
      *(v5 + 20) = v25;
      *(v5 + 21) = v26;
      v27 = *(result + 5);
      *(v5 + 11) = v27;
      *(v5 + 7) = v26 - v27;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 5) = *v23;
LABEL_67:
    *(v5 + 24) = *(v23 + 2);
    return result;
  }

  if (v6 > -15359)
  {
    if (v6 <= -15356)
    {
      if (v6 != -15358)
      {
        if (v6 == -15356)
        {
          v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 1) = *(v12 + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 2);
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 16) = result;
          if (result)
          {
            *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
            *(v5 + 24) = *(result + 4);
            v14 = *(result + 4);
            *(v5 + 17) = *(result + 3);
            *(v5 + 24) = v14;
            v15 = *(result + 5);
            *(v5 + 26) = *(result + 6);
            *(v5 + 52) = *(result + 32);
            v16 = *(result + 9);
            *(v5 + 20) = v15;
            *(v5 + 21) = v16;
            v17 = *(result + 5);
            *(v5 + 11) = v17;
            *(v5 + 7) = v16 - v17;
            *(v5 + 25) = *(result + 12);
            *(v5 + 18) = *(result + 7);
          }

          *(v5 + 6) = *v12;
        }

        return result;
      }

      goto LABEL_72;
    }

    if (v6 == -15355)
    {
      v55 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v56 = *a3;
      *(v5 + 1) = *(v55 + 1);
      *(v5 + 2) = v56;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v57 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v58 = *(result + 6);
        *(v5 + 20) = *(result + 5);
        *(v5 + 24) = v57;
        *(v5 + 26) = v58;
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v59 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v59;
        *(v5 + 18) = *(result + 7);
      }

      v60 = *(v55 + 2);
      *(v5 + 6) = *v55;
      *(v5 + 7) = v60;
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v36 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v36;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v37 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v38 = *(result + 9);
      *(v5 + 20) = v37;
      *(v5 + 21) = v38;
      v39 = *(result + 5);
      *(v5 + 11) = v39;
      *(v5 + 7) = v38 - v39;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 6) = *v23;
    goto LABEL_67;
  }

  if (v6 > -15465)
  {
    if (v6 == -15464)
    {
      v47 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v48 = *a3;
      *(v5 + 1) = *(v47 + 1);
      *(v5 + 2) = v48;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v49 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v50 = *(result + 5);
        *(v5 + 24) = v49;
        *(v5 + 52) = *(result + 32);
        v51 = *(result + 9);
        *(v5 + 20) = v50;
        *(v5 + 21) = v51;
        v52 = *(result + 5);
        *(v5 + 11) = v52;
        *(v5 + 7) = v51 - v52;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v47;
      v53 = *(v47 + 3);
      *(v5 + 19) = *(v47 + 2);
      *(v5 + 26) = v53;
    }

    else if (v6 == -15359)
    {
      v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v30 = *a3;
      *(v5 + 1) = *(v29 + 1);
      *(v5 + 2) = v30;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v31 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v31;
        v32 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v32;
        v33 = *(result + 5);
        *(v5 + 11) = v33;
        *(v5 + 7) = v32 - v33;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v29;
      v34 = *(v29 + 2);
      *(v5 + 26) = *(v29 + 3);
      v35 = *(v29 + 4);
      *(v5 + 19) = v34;
      *(v5 + 20) = v35;
    }
  }

  else
  {
    if (v6 != -15552)
    {
      if (v6 != -15506)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        v9 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v9;
        v10 = *(result + 5);
        *(v5 + 11) = v10;
        *(v5 + 7) = v9 - v10;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v7;
LABEL_46:
      v22 = *(v7 + 3);
      *(v5 + 24) = *(v7 + 2);
      *(v5 + 20) = v22;
      return result;
    }

    v46 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v46[8], a2);
    *(v5 + 15) = result;
    if (result)
    {
      v5[112] = (result[96] & 0xFE) == 2;
      v5[113] = 1;
      v5[115] = (result[97] & 4) != 0;
    }
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15444)
  {
    if (v6 <= -10180)
    {
      if (v6 > -15442)
      {
        if (v6 != -15441)
        {
          if (v6 == -10180)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[5].i64[0] = *(result + 1);
          }

          return result;
        }

        v22 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v23 = *a3;
        v5->i64[1] = *(v22 + 1);
        v5[1].i64[0] = v23;
        v5->i32[1] = *(a3 + 8);
        v24 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v24;
        if (v24)
        {
          v5[4] = vextq_s8(*v24, *v24, 8uLL);
          v5[6].i32[0] = *(v24 + 4);
          v5[9] = vextq_s8(*(v24 + 24), *(v24 + 24), 8uLL);
          v5[10].i64[0] = *(v24 + 5);
        }

        v5[8].i64[1] = *v22;
        result = GTTraceFunc_argumentBytesWithMap(a3, v22[16], a2);
        v5[7].i64[0] = result;
        v11 = 1;
      }

      else if (v6 == -15443)
      {
        v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v20 = *a3;
        v5->i64[1] = *(v19 + 1);
        v5[1].i64[0] = v20;
        v5->i32[1] = *(a3 + 8);
        v21 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v21;
        if (v21)
        {
          v5[4] = vextq_s8(*v21, *v21, 8uLL);
          v5[6].i32[0] = *(v21 + 4);
          v5[9] = vextq_s8(*(v21 + 24), *(v21 + 24), 8uLL);
          v5[10].i64[0] = *(v21 + 5);
        }

        v5[8].i64[1] = *v19;
        result = GTTraceFunc_argumentBytesWithMap(a3, v19[16], a2);
        v5[7].i64[0] = result;
        v11 = 2;
      }

      else
      {
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        v5->i64[1] = *(v8 + 1);
        v5[1].i64[0] = v9;
        v5->i32[1] = *(a3 + 8);
        v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v10;
        if (v10)
        {
          v5[4] = vextq_s8(*v10, *v10, 8uLL);
          v5[6].i32[0] = *(v10 + 4);
          v5[9] = vextq_s8(*(v10 + 24), *(v10 + 24), 8uLL);
          v5[10].i64[0] = *(v10 + 5);
        }

        v5[8].i64[1] = *v8;
        result = GTTraceFunc_argumentBytesWithMap(a3, v8[16], a2);
        v5[7].i64[0] = result;
        v11 = 4;
      }

      v5[10].i8[8] = v11;
      return result;
    }

    if (v6 > -10176)
    {
      if (v6 == -10175)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[9].i64[1] = *(result + 1);
      }

      else if (v6 == -10161)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[10].i64[0] = *(result + 1);
      }
    }

    else if (v6 == -10179)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[0] = *(result + 1);
    }

    else if (v6 == -10176)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[1] = *(result + 1);
    }
  }

  else if (v6 > -15561)
  {
    if (v6 > -15541)
    {
      if (v6 == -15540)
      {
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v25 = *a3;
        v5->i64[1] = *(v16 + 1);
        v5[1].i64[0] = v25;
        v5->i32[1] = *(a3 + 8);
        v26 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v26;
        if (v26)
        {
          v5[4] = vextq_s8(*v26, *v26, 8uLL);
          v5[6].i32[0] = *(v26 + 4);
          v5[9] = vextq_s8(*(v26 + 24), *(v26 + 24), 8uLL);
          v5[10].i64[0] = *(v26 + 5);
        }

        v5[8].i64[0] = *v16;
        goto LABEL_52;
      }

      if (v6 == -15462)
      {
        v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v14 = *a3;
        v5->i64[1] = *(v13 + 1);
        v5[1].i64[0] = v14;
        v5->i32[1] = *(a3 + 8);
        v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v15;
        if (v15)
        {
          v5[4] = vextq_s8(*v15, *v15, 8uLL);
          v5[6].i32[0] = *(v15 + 4);
          v5[9] = vextq_s8(*(v15 + 24), *(v15 + 24), 8uLL);
          v5[10].i64[0] = *(v15 + 5);
        }

        v5[8].i64[1] = *v13;
        result = GTTraceFunc_argumentBytesWithMap(a3, v13[24], a2);
        v5[7].i64[0] = result;
        v5[10].i8[8] = *(v13 + 2);
      }
    }

    else if (v6 == -15560)
    {
      result[108] = 1;
    }

    else if (v6 == -15557)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v12 = *(result + 2);
      if (v12 != 1)
      {
        v5[6].i16[5] = v12;
      }
    }
  }

  else
  {
    if (v6 <= -15570)
    {
      if (v6 != -15577)
      {
        if (v6 == -15570)
        {
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v17 = *a3;
      v5->i64[1] = *(v16 + 1);
      v5[1].i64[0] = v17;
      v5->i32[1] = *(a3 + 8);
      v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[7].i64[1] = v18;
      if (v18)
      {
        v5[4] = vextq_s8(*v18, *v18, 8uLL);
        v5[6].i32[0] = *(v18 + 4);
        v5[9] = vextq_s8(*(v18 + 24), *(v18 + 24), 8uLL);
        v5[10].i64[0] = *(v18 + 5);
      }

      v5[2].i64[1] = *v16;
LABEL_52:
      result = GTTraceFunc_argumentBytesWithMap(a3, v16[16], a2);
      v5[7].i64[0] = result;
      return result;
    }

    if (v6 == -15569)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[6].i32[0] = *(result + 2);
    }

    else if (v6 == -15568)
    {
      *(result + 3) = *a3;
    }
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 8);
  if (v7 <= -15530)
  {
    if (v7 <= -15546)
    {
      if (v7 != -15559)
      {
        if (v7 == -15558)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          if (*(a1 + 176))
          {
            v25 = result;
            result = GTTraceFunc_argumentBytesWithMap(a3, result[24], a2);
            if (*(v25 + 2))
            {
              v26 = 0;
              v27 = 0;
              do
              {
                v28 = *(a1 + 176) + 16 * *(v25 + 1) + v26;
                v29 = *&result[8 * v27];
                *v28 = 1;
                *(v28 + 8) = v29;
                ++v27;
                v26 += 16;
              }

              while (*(v25 + 2) > v27);
            }
          }

          return result;
        }

        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v30 = *(a1 + 176);
      if (!v30)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v30 + 16 * *(result + 2);
      v16 = 1;
    }

    else
    {
      if (v7 == -15545)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v43 = *(result + 1);
        v44 = a1 + 192 + 24 * *(result + 3);
        *v44 = v43 != 0;
        *(v44 + 8) = v43;
        *(a1 + 192 + 24 * *(result + 3) + 16) = *(result + 2);
        return result;
      }

      if (v7 == -15544)
      {
        v31 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v32 = GTTraceFunc_argumentBytesWithMap(a3, v31[24], a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v31[25], a2);
        if (*(v31 + 2))
        {
          v33 = 0;
          v34 = a1 + 192;
          do
          {
            v35 = *&v32[8 * v33];
            v36 = v34 + 24 * (v33 + *(v31 + 1));
            *v36 = v35 != 0;
            *(v36 + 8) = v35;
            *(v34 + 24 * (v33 + *(v31 + 1)) + 16) = *&result[8 * v33];
            ++v33;
          }

          while (*(v31 + 2) > v33);
        }

        return result;
      }

      if (v7 != -15530)
      {
        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v13 = *(a1 + 176);
      if (!v13)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v13 + 16 * *(result + 2);
      v16 = 2;
    }

LABEL_52:
    *v15 = v16;
    *(v15 + 8) = v14;
    return result;
  }

  if (v7 > -15259)
  {
    if (v7 != -15258)
    {
      if (v7 == -15257)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        if (*(a1 + 176) && *(result + 3))
        {
          v39 = 0;
          v40 = 0;
          v41 = *(result + 1);
          do
          {
            v42 = *(a1 + 176) + 16 * *(result + 2) + v39;
            *v42 = 3;
            *(v42 + 8) = v41;
            ++v40;
            v39 += 16;
          }

          while (*(result + 3) > v40);
        }

        return result;
      }

      if (v7 == -10152)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        if (!a4)
        {
          return result;
        }

        v18 = GTTraceFunc_argumentBytesWithMap(a3, result[8], a2);
        v20 = *v18;
        result = v18 + 8;
        v19 = v20;
        if (!v20)
        {
          return result;
        }

        v21 = 0;
        v22 = a1 + 192;
        for (i = (a1 + 192); ; i += 6)
        {
          v24 = *&result[8 * v21];
          if (v24)
          {
            break;
          }

          *i = 0;
          if (v19 == ++v21)
          {
            return result;
          }
        }

        result = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v24);
        if (result)
        {
          *&v50 = *(result + 2);
          *(&v50 + 1) = v24 - *result;
          if (result[24] == 7)
          {
            v52 = v22 + 24 * v21;
            *v52 = 2;
            *(v52 + 8) = v50;
            return result;
          }

          if (result[24])
          {
            return result;
          }
        }

        else
        {
          v50 = 0uLL;
        }

        v51 = v22 + 24 * v21;
        *v51 = 1;
        *(v51 + 8) = v50;
        return result;
      }

LABEL_54:

      return GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(a1, a2, a3);
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v49 = *(a1 + 176);
    if (!v49)
    {
      return result;
    }

    v14 = *(result + 1);
    v15 = v49 + 16 * *(result + 2);
    v16 = 3;
    goto LABEL_52;
  }

  if (v7 != -15529)
  {
    if (v7 == -15526)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v37 = *(result + 1);
      v38 = a1 + 24 * *(result + 2);
      *(v38 + 192) = 2 * (v37 != 0);
      *(v38 + 200) = v37;
      return result;
    }

    if (v7 == -15525)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v8[24], a2);
      if (*(v8 + 2))
      {
        v10 = 0;
        do
        {
          v11 = *&result[8 * v10];
          v12 = a1 + 192 + 24 * (v10 + *(v8 + 1));
          *v12 = 2 * (v11 != 0);
          *(v12 + 8) = v11;
          ++v10;
        }

        while (*(v8 + 2) > v10);
      }

      return result;
    }

    goto LABEL_54;
  }

  result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  if (*(a1 + 176) && *(result + 3))
  {
    v45 = 0;
    v46 = 0;
    v47 = *(result + 1);
    do
    {
      v48 = *(a1 + 176) + 16 * *(result + 2) + v45;
      *v48 = 2;
      *(v48 + 8) = v47;
      ++v46;
      v45 += 16;
    }

    while (*(result + 3) > v46);
  }

  return result;
}

char *GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15439)
  {
    if (v6 <= -15461)
    {
      if (v6 == -15607)
      {
        v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v15[8], a2);
        *(v5 + 11) = result;
        return result;
      }

      if (v6 == -15605)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 != -15578)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 2);
      v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 15) = v9;
      if (v9)
      {
        *(v5 + 4) = vextq_s8(*v9, *v9, 8uLL);
        *(v5 + 24) = *(v9 + 4);
        *(v5 + 9) = *(v9 + 24);
        *(v5 + 10) = *(v9 + 40);
      }

      *(v5 + 16) = *v7;
      goto LABEL_42;
    }

    switch(v6)
    {
      case -15460:
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v17 = *a3;
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 2);
        v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v18;
        if (v18)
        {
          *(v5 + 4) = vextq_s8(*v18, *v18, 8uLL);
          *(v5 + 24) = *(v18 + 4);
          *(v5 + 9) = *(v18 + 24);
          *(v5 + 10) = *(v18 + 40);
        }

        *(v5 + 17) = *v16;
        v5[176] = *(v16 + 2);
        v19 = v16[24];
        goto LABEL_43;
      case -15440:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v20 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v20;
        *(v5 + 1) = *(a3 + 2);
        v21 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v21;
        if (v21)
        {
          *(v5 + 4) = vextq_s8(*v21, *v21, 8uLL);
          *(v5 + 24) = *(v21 + 4);
          *(v5 + 9) = *(v21 + 24);
          *(v5 + 10) = *(v21 + 40);
        }

        *(v5 + 17) = *v7;
        v12 = 2;
        break;
      case -15439:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v10 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v10;
        *(v5 + 1) = *(a3 + 2);
        v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v11;
        if (v11)
        {
          *(v5 + 4) = vextq_s8(*v11, *v11, 8uLL);
          *(v5 + 24) = *(v11 + 4);
          *(v5 + 9) = *(v11 + 24);
          *(v5 + 10) = *(v11 + 40);
        }

        *(v5 + 17) = *v7;
        v12 = 4;
        break;
      default:
        return result;
    }

LABEL_41:
    v5[176] = v12;
LABEL_42:
    v19 = v7[16];
LABEL_43:
    result = GTTraceFunc_argumentBytesWithMap(a3, v19, a2);
    *(v5 + 14) = result;
    return result;
  }

  if (v6 > -10178)
  {
    if (v6 > -10161)
    {
      if (v6 == -10160)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 20) = *(result + 1);
      }

      else if (v6 == -10153)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
      }
    }

    else if (v6 == -10177)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }

    else if (v6 == -10174)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    return result;
  }

  switch(v6)
  {
    case -15438:
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v13 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v13;
      *(v5 + 1) = *(a3 + 2);
      v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 15) = v14;
      if (v14)
      {
        *(v5 + 4) = vextq_s8(*v14, *v14, 8uLL);
        *(v5 + 24) = *(v14 + 4);
        *(v5 + 9) = *(v14 + 24);
        *(v5 + 10) = *(v14 + 40);
      }

      *(v5 + 17) = *v7;
      v12 = 1;
      goto LABEL_41;
    case -10193:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 18) = *(result + 1);
      break;
    case -10178:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
      break;
  }

  return result;
}

char *GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6 == -15597)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    if (*(a1 + 184))
    {
      v9 = result;
      result = GTTraceFunc_argumentBytesWithMap(a3, result[24], a2);
      if (*(v9 + 2))
      {
        v10 = 0;
        v11 = *(a1 + 184);
        do
        {
          *(v11 + 8 * *(v9 + 1) + 8 * v10) = *&result[8 * v10];
          ++v10;
        }

        while (*(v9 + 2) > v10);
      }
    }
  }

  else if (v6 == -15598)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *(a1 + 184);
    if (v8)
    {
      *(v8 + 8 * *(result + 2)) = *(result + 1);
    }
  }

  else
  {

    return GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(a1, a2, a3);
  }

  return result;
}

char *GTMTLFXSMSpatialScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -20478)
  {
    if (v6 == -20480)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 64;
      goto LABEL_17;
    }

    if (v6 == -20479)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 56;
      goto LABEL_17;
    }

    if (v6 != -20478)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v3 = result + 8;
  }

  else
  {
    if (v6 <= -20476)
    {
      if (v6 == -20477)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 80;
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 72;
      }

      goto LABEL_17;
    }

    if (v6 == -20475)
    {
      v7 = 24;
      goto LABEL_17;
    }

    if (v6 != -18432)
    {
      return result;
    }

    v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v9 = *v3;
    v10 = *v8;
    *(v5 + 1) = *(v8 + 1);
    *(v5 + 2) = v9;
    *(v5 + 1) = *(v3 + 2);
    *(v5 + 5) = v10;
    result = GTTraceFunc_argumentBytesWithMap(v3, v8[16], a2);
    *(v5 + 6) = result;
    v3 = result + 8;
    *(v5 + 10) = *result;
  }

  v7 = 88;
LABEL_17:
  *&v5[v7] = *v3;
  return result;
}

float32_t GTMTLFXSMTemporalScaler_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 2);
  switch(v6)
  {
    case -20473:
      *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20472:
      *(a1 + 148) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      break;
    case -20471:
      *(a1 + 72) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20470:
      *(a1 + 88) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20469:
      *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20468:
      *(a1 + 120) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20467:
      *(a1 + 112) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20466:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 128) = v7.i32[0];
      break;
    case -20465:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 132) = v7.i32[0];
      break;
    case -20464:
      *(a1 + 80) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20463:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 136) = v7.i32[0];
      break;
    case -20462:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 140) = v7.i32[0];
      break;
    case -20461:
      *(a1 + 96) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20460:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 144) = v7.i32[0];
      break;
    case -20459:
      *(a1 + 149) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      break;
    case -20458:
      *(a1 + 24) = *a3;
      break;
    case -20457:
      *(a1 + 149) = 0;
      break;
    case -20456:
      *(a1 + 104) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    default:
      if (v6 == -18430)
      {
        *(a1 + 150) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      }

      else if (v6 == -18431)
      {
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        v10 = *v8;
        *(a1 + 8) = *(v8 + 1);
        *(a1 + 16) = v9;
        *(a1 + 4) = *(a3 + 2);
        *(a1 + 40) = v10;
        v11 = GTTraceFunc_argumentBytesWithMap(a3, v8[16], a2);
        *(a1 + 48) = v11;
        *(a1 + 128) = 0;
        v12 = *(v11 + 1);
        *(a1 + 112) = v12;
        v7 = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v12)));
        *(a1 + 136) = v7;
        *(a1 + 144) = 1065353216;
        *(a1 + 148) = 257;
      }

      break;
  }

  return v7.f32[0];
}

char *GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -20337)
  {
    if (v6 <= -20332)
    {
      if (v6 <= -20335)
      {
        if (v6 == -20336)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 36) = *(result + 2);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 35) = *(result + 2);
        }
      }

      else if (v6 == -20334)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 31) = *(result + 2);
      }

      else if (v6 == -20333)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 34) = *(result + 2);
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 32) = *(result + 2);
      }
    }

    else if (v6 > -20329)
    {
      switch(v6)
      {
        case -20328:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 13) = *(result + 1);
          break;
        case -20316:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[148] = *(result + 2);
          break;
        case -18429:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
          *(v5 + 6) = result;
          v5[148] = 1;
          *(v5 + 14) = 0;
          break;
      }
    }

    else if (v6 == -20331)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 33) = *(result + 2);
    }

    else if (v6 == -20330)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 30) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[149] = *(result + 2);
    }
  }

  else if (v6 <= -20451)
  {
    if (v6 <= -20454)
    {
      if (v6 == -20455)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
      }

      else if (v6 == -20454)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
      }
    }

    else if (v6 == -20453)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
    }

    else if (v6 == -20452)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 11) = *(result + 1);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 28) = *(result + 2);
    }
  }

  else if (v6 > -20447)
  {
    switch(v6)
    {
      case -20446:
        *(result + 3) = *a3;
        break;
      case -20445:
        result[148] = 0;
        break;
      case -20350:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[150] = *(result + 2);
        break;
    }
  }

  else
  {
    switch(v6)
    {
      case -20450:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 29) = *(result + 2);
        break;
      case -20449:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20448:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -20349)
  {
    if (v6 <= -20315)
    {
      if (v6 == -20348)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
      }

      else if (v6 == -20315)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[333] = *(result + 2);
      }
    }

    else
    {
      switch(v6)
      {
        case -20314:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 20) = *(result + 1);
          break;
        case -18422:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[334] = *(result + 1);
          break;
        case -18428:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
          v10 = 0;
          *(v5 + 6) = result;
          *(v5 + 23) = 0;
          v11 = *(result + 24);
          *(v5 + 168) = v11;
          *(v5 + 24) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v11)));
          *(v5 + 50) = 1065353216;
          *(v5 + 166) = 257;
          do
          {
            if (v10 > 0xA || (v12 = 1.0, ((1 << v10) & 0x421) == 0))
            {
              if (v10 == 15)
              {
                v12 = 1.0;
              }

              else
              {
                v12 = 0.0;
              }
            }

            *&v5[4 * v10++ + 204] = v12;
          }

          while (v10 != 16);
          for (i = 0; i != 16; ++i)
          {
            if (i > 0xA || (v14 = 1.0, ((1 << i) & 0x421) == 0))
            {
              if (i == 15)
              {
                v14 = 1.0;
              }

              else
              {
                v14 = 0.0;
              }
            }

            *&v5[4 * i + 268] = v14;
          }

          break;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case -20444:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
        break;
      case -20443:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[332] = *(result + 2);
        break;
      case -20442:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
      case -20441:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 11) = *(result + 1);
        break;
      case -20440:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
      case -20439:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 7) = *(result + 1);
        break;
      case -20438:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 22) = *(result + 1);
        break;
      case -20437:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
        break;
      case -20436:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 46) = *(result + 2);
        break;
      case -20435:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 47) = *(result + 2);
        break;
      case -20434:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
        break;
      case -20433:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 48) = *(result + 2);
        break;
      case -20432:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 49) = *(result + 2);
        break;
      case -20431:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 13) = *(result + 1);
        break;
      case -20430:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 18) = *(result + 1);
        break;
      case -20429:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 50) = *(result + 2);
        break;
      case -20428:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 19) = *(result + 1);
        break;
      case -20426:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 14) = *(result + 1);
        break;
      case -20425:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20424:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 15) = *(result + 1);
        break;
      case -20423:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v18 = *(result + 24);
        v19 = *(result + 56);
        v20 = *(result + 8);
        *(v5 + 300) = *(result + 40);
        *(v5 + 316) = v19;
        *(v5 + 268) = v20;
        *(v5 + 284) = v18;
        break;
      case -20422:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v15 = *(result + 24);
        v16 = *(result + 40);
        v17 = *(result + 56);
        *(v5 + 204) = *(result + 8);
        *(v5 + 252) = v17;
        *(v5 + 236) = v16;
        *(v5 + 220) = v15;
        break;
      case -20421:
        *(result + 3) = *a3;
        break;
      case -20420:
        result[333] = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -20346)
  {
    if (v6 <= -20414)
    {
      if (v6 <= -20418)
      {
        if (v6 == -20419)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 9) = *(result + 1);
        }

        else if (v6 == -20418)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[166] = *(result + 2);
        }
      }

      else
      {
        switch(v6)
        {
          case -20417:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 11) = *(result + 1);
            break;
          case -20416:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 8) = *(result + 1);
            break;
          case -20414:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 12) = *(result + 1);
            break;
        }
      }
    }

    else if (v6 > -20410)
    {
      switch(v6)
      {
        case -20409:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
          break;
        case -20407:
          *(result + 3) = *a3;
          break;
        case -20406:
          result[164] = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20413:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 32) = *(result + 2);
          break;
        case -20412:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 33) = *(result + 2);
          break;
        case -20411:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 13) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20340)
  {
    if (v6 > -20328)
    {
      switch(v6)
      {
        case -20327:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
          break;
        case -20319:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[164] = *(result + 2);
          break;
        case -18425:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 2);
          v10 = *(v7 + 2);
          *(v5 + 5) = v9;
          *(v5 + 6) = v10;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
          *(v5 + 7) = result;
          v5[164] = 1;
          *(v5 + 16) = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20339:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 34) = *(result + 2);
          break;
        case -20338:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[165] = *(result + 2);
          break;
        case -20337:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 14) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20343)
  {
    if (v6 == -20342)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 38) = *(result + 2);
    }

    else if (v6 == -20341)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 36) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 37) = *(result + 2);
    }
  }

  else if (v6 == -20345)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 40) = *(result + 2);
  }

  else if (v6 == -20344)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 39) = *(result + 2);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 35) = *(result + 2);
  }

  return result;
}

void *GTMTLSMRenderPipelineState_resourceAccess(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v16 = 0;
  v18 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v9 = 0;
  v11 = 0u;
  v8 = 0u;
  LODWORD(v8) = 71;
  v10 = -1;
  v17 = -1;
  if (a2 && (v5 = *(a2 + 32)) != 0 && (*(v5 + 79) & 8) != 0)
  {
    v6 = (v5 + 64);
  }

  else
  {
    v6 = 0;
  }

  GTMTLSMRenderPipelineState_processTraceFuncWithMap(&v8, a3, v6);
  return memcpy(a1, v19, 0x118uLL);
}

uint64_t GTMTLSMObject_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unsigned __int8 *CalculateBindingsAccess(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    v5 = a3 + 48;
    v6 = a2;
    while (1)
    {
      if ((v4[19] & 1) == 0)
      {
        goto LABEL_7;
      }

      v7 = v4[16];
      if ((v7 - 24) < 4)
      {
        break;
      }

      if (v7 == 2)
      {
        v9 = a3 + 16;
        v8 = v4;
        goto LABEL_6;
      }

      if (!v4[16])
      {
        break;
      }

LABEL_7:
      if (v4[16] <= 1u)
      {
        result = *(v4 + 1);
        if (result)
        {
          v10 = *result;
          if (v10 == 1 || v10 == 60 && result[22] == 1 && (result = *(result + 1)) != 0)
          {
            result = GTMTLStructType_isArgumentBuffer(result);
            if (result)
            {
              *(v5 + ((v4[18] >> 3) & 0x18)) |= 1 << v4[18];
            }
          }
        }
      }

      v4 += 56;
      if (!--v6)
      {
        return result;
      }
    }

    v8 = v4;
    v9 = a3;
LABEL_6:
    result = UpdateAccess(v8, v9);
    goto LABEL_7;
  }

  return result;
}

_BYTE *UpdateAccess(_BYTE *result, uint64_t a2)
{
  v2 = result[18];
  if (result[16] != 2)
  {
    v3 = v2 + 1;
    goto LABEL_5;
  }

  if (result[26])
  {
    v3 = result[26] + v2;
LABEL_5:
    v4 = result[17];
    while (1)
    {
      v5 = v2 >> 6;
      if (v4 == 2)
      {
        v6 = 1 << v2;
        v7 = (a2 + 16 * v5 + 8);
        goto LABEL_12;
      }

      if (v4 == 1)
      {
        break;
      }

      if (!v4)
      {
        v6 = 1 << v2;
        v7 = (a2 + 16 * v5);
LABEL_12:
        *v7 |= v6;
      }

      if (v3 == ++v2)
      {
        return result;
      }
    }

    v6 = 1 << v2;
    v8 = (a2 + 16 * v5);
    *v8 |= 1 << v2;
    v7 = v8 + 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t GTMTLStructType_isArgumentBuffer(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (!v1)
    {
      return 0;
    }

    v2 = 0;
    v3 = *(result + 8);
    while (1)
    {
      v4 = v3 + 32 * v2;
      v5 = *(v4 + 24);
      v6 = v5 == 1;
      if (v5 > 1)
      {
        if (v5 != 2)
        {
          result = 1;
          v9 = v5 - 78 > 0x28 || ((1 << (v5 - 78)) & 0x1E000000007) == 0;
          if (!v9 || v5 - 58 < 3)
          {
            return result;
          }

          goto LABEL_23;
        }

        do
        {
          v4 = *(v4 + 8);
          v7 = *(v4 + 24);
        }

        while (v7 == 2);
        if ((v7 - 58) <= 0x3C && ((1 << (v7 - 58)) & 0x1E00000000700007) != 0)
        {
          return 1;
        }

        v6 = v7 == 1;
      }

      if (v6 && (GTMTLStructType_isArgumentBuffer(*(v4 + 8)) & 1) != 0)
      {
        return 1;
      }

LABEL_23:
      if (++v2 == v1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t GTFenum_getConstructorType(int a1)
{
  if (a1 <= -15610)
  {
    if (a1 <= -16083)
    {
      if (a1 <= -16234)
      {
        if (a1 <= -18429)
        {
          switch(a1)
          {
            case -18432:
              return 39;
            case -18431:
              return 40;
            case -18429:
              return 103;
          }

          return 0;
        }

        switch(a1)
        {
          case -16354:
            return 21;
          case -16353:
          case -16286:
            return 70;
          case -16352:
            return 28;
          case -16351:
            return 65;
          case -16350:
          case -16349:
          case -16348:
          case -16347:
          case -16346:
          case -16345:
          case -16344:
          case -16341:
          case -16340:
          case -16339:
          case -16338:
          case -16337:
          case -16336:
          case -16335:
          case -16334:
          case -16333:
          case -16332:
          case -16331:
          case -16330:
          case -16329:
          case -16328:
          case -16327:
          case -16326:
          case -16325:
          case -16324:
          case -16323:
          case -16322:
          case -16321:
          case -16320:
          case -16319:
          case -16318:
          case -16317:
          case -16295:
          case -16293:
          case -16292:
          case -16291:
          case -16289:
          case -16288:
          case -16287:
            return 0;
          case -16343:
          case -16342:
            return 25;
          case -16316:
          case -16315:
            return 27;
          case -16314:
          case -16313:
          case -16312:
            return 22;
          case -16311:
            return 34;
          case -16310:
          case -16294:
            return 80;
          case -16309:
            return 75;
          case -16308:
          case -16307:
          case -16306:
          case -16305:
          case -16304:
            return 62;
          case -16303:
          case -16302:
          case -16301:
          case -16300:
            return 71;
          case -16299:
          case -16298:
          case -16297:
          case -16296:
            return 29;
          case -16290:
            return 43;
          default:
            if (a1 != -18428)
            {
              v6 = -16368;
              goto LABEL_254;
            }

            result = 104;
            break;
        }

        return result;
      }

      if (a1 <= -16108)
      {
        if (a1 > -16166)
        {
          if (a1 <= -16121)
          {
            if (a1 == -16165)
            {
              return 27;
            }

            if (a1 != -16163)
            {
              if (a1 == -16128)
              {
                return 41;
              }

              return 0;
            }

            return 22;
          }

          if (a1 == -16120)
          {
            return 50;
          }

          if (a1 == -16117)
          {
            return 22;
          }

          v6 = -16116;
        }

        else
        {
          if ((a1 + 16200) < 4)
          {
            return 29;
          }

          if (a1 == -16233)
          {
            return 80;
          }

          v6 = -16196;
        }

LABEL_254:
        if (a1 != v6)
        {
          return 0;
        }

        return 80;
      }

      if (a1 <= -16097)
      {
        if (a1 > -16102)
        {
          if (a1 == -16101)
          {
            return 29;
          }

          if (a1 == -16099)
          {
            return 81;
          }

          v6 = -16098;
        }

        else
        {
          if ((a1 + 16107) < 2)
          {
            return 43;
          }

          v6 = -16104;
        }

        goto LABEL_254;
      }

      if ((a1 + 16091) < 4)
      {
        return 71;
      }

      if (a1 == -16096)
      {
        return 80;
      }

      v5 = -16095;
LABEL_191:
      if (a1 != v5)
      {
        return 0;
      }

      return 62;
    }

    if (a1 > -15892)
    {
      if (a1 > -15716)
      {
        if (a1 > -15691)
        {
          if (a1 <= -15621)
          {
            if ((a1 + 15690) >= 3)
            {
              v3 = -15673;
              goto LABEL_216;
            }

            return 80;
          }

          if ((a1 + 15615) < 2)
          {
            return 16;
          }

          if (a1 != -15620)
          {
            if (a1 != -15613)
            {
              return 0;
            }

            return 37;
          }

          return 44;
        }

        if (a1 <= -15702)
        {
          if ((a1 + 15715) < 2)
          {
            return 18;
          }

          if (a1 != -15707)
          {
            v12 = -15705;
            goto LABEL_229;
          }

          return 22;
        }

        if (a1 == -15701)
        {
          return 25;
        }

        if (a1 == -15695)
        {
          return 37;
        }

        v5 = -15693;
        goto LABEL_191;
      }

      if (a1 > -15778)
      {
        if (a1 > -15739)
        {
          if ((a1 + 15731) < 2)
          {
            return 43;
          }

          if (a1 != -15738)
          {
            if (a1 == -15717)
            {
              return 19;
            }

            return 0;
          }

          return 71;
        }

        if (a1 != -15777 && a1 != -15775)
        {
          if (a1 == -15740)
          {
            return 29;
          }

          return 0;
        }

        return 80;
      }

      if (a1 <= -15848)
      {
        if (a1 != -15891)
        {
          if (a1 != -15870)
          {
            if (a1 == -15848)
            {
              return 31;
            }

            return 0;
          }

          return 74;
        }

        return 64;
      }

      if (a1 <= -15794)
      {
        if (a1 != -15847)
        {
          if (a1 == -15830)
          {
            return 43;
          }

          return 0;
        }

        return 62;
      }

      if (a1 == -15793)
      {
        return 68;
      }

      v12 = -15778;
LABEL_229:
      if (a1 == v12)
      {
        return 22;
      }

      return 0;
    }

    if (a1 <= -16014)
    {
      if (a1 > -16039)
      {
        if (a1 > -16030)
        {
          if (a1 != -16029 && a1 != -16018)
          {
            v7 = -16014;
LABEL_183:
            if (a1 == v7)
            {
              return 28;
            }

            return 0;
          }

          return 62;
        }

        if ((a1 + 16031) >= 2)
        {
          if (a1 == -16038)
          {
            return 43;
          }

          v2 = -16037;
LABEL_92:
          if (a1 != v2)
          {
            return 0;
          }

          return 18;
        }

        return 80;
      }

      if (a1 <= -16054)
      {
        if ((a1 + 16082) >= 2)
        {
          if (a1 == -16075)
          {
            return 67;
          }

          return 0;
        }

        return 43;
      }

      if ((a1 + 16053) < 3)
      {
        return 18;
      }

      v5 = -16039;
      goto LABEL_191;
    }

    if (a1 > -15923)
    {
      if (a1 <= -15914)
      {
        if (a1 == -15922)
        {
          return 59;
        }

        if (a1 == -15921)
        {
          return 58;
        }

        v12 = -15914;
        goto LABEL_229;
      }

      if (a1 > -15910)
      {
        if (a1 != -15909)
        {
          if (a1 == -15900)
          {
            return 73;
          }

          return 0;
        }

        return 76;
      }

      if (a1 == -15913)
      {
        return 80;
      }

      v11 = -15912;
    }

    else
    {
      if (a1 > -15981)
      {
        if ((a1 + 15980) < 2)
        {
          return 80;
        }

        if (a1 != -15972)
        {
          if (a1 == -15969)
          {
            return 57;
          }

          return 0;
        }

        return 22;
      }

      if (a1 == -16013)
      {
        return 82;
      }

      if (a1 == -15997)
      {
        return 38;
      }

      v11 = -15996;
    }

    if (a1 != v11)
    {
      return 0;
    }

    return 76;
  }

  if (a1 <= -15297)
  {
    if (a1 > -15465)
    {
      if (a1 <= -15357)
      {
        switch(a1)
        {
          case -15464:
            return 16;
          case -15463:
          case -15444:
          case -15437:
          case -15436:
            return 44;
          case -15462:
          case -15443:
          case -15442:
          case -15441:
            return 60;
          case -15461:
          case -15406:
          case -15405:
          case -15404:
          case -15403:
            return 71;
          case -15460:
          case -15440:
          case -15439:
          case -15438:
            return 83;
          case -15459:
          case -15458:
          case -15457:
          case -15456:
          case -15455:
          case -15454:
          case -15453:
          case -15452:
          case -15451:
          case -15450:
          case -15449:
          case -15448:
          case -15447:
          case -15446:
          case -15445:
          case -15433:
          case -15432:
          case -15431:
          case -15426:
          case -15424:
          case -15423:
          case -15422:
          case -15418:
          case -15417:
          case -15416:
          case -15415:
          case -15414:
          case -15413:
          case -15412:
          case -15411:
          case -15410:
          case -15409:
          case -15408:
          case -15407:
            return 0;
          case -15435:
          case -15434:
          case -15425:
          case -15421:
          case -15420:
          case -15419:
            return 62;
          case -15430:
          case -15429:
          case -15428:
          case -15427:
            return 43;
          default:
            if ((a1 + 15359) < 2)
            {
              return 16;
            }

            v3 = -15364;
            break;
        }

LABEL_216:
        if (a1 == v3)
        {
          return 17;
        }

        return 0;
      }

      if (a1 >= -15350)
      {
        if (a1 > -15318)
        {
          if (a1 == -15317)
          {
            return 33;
          }

          if (a1 != -15306)
          {
            if (a1 == -15299)
            {
              return 55;
            }

            return 0;
          }

          return 51;
        }

        if (a1 == -15350)
        {
          return 52;
        }

        if (a1 != -15348)
        {
          v8 = -15333;
          goto LABEL_106;
        }

        return 53;
      }

      return 16;
    }

    if (a1 <= -15552)
    {
      if (a1 <= -15586)
      {
        if ((a1 + 15609) >= 2)
        {
          if (a1 == -15587)
          {
            return 21;
          }

          v7 = -15586;
          goto LABEL_183;
        }

        return 43;
      }

      if (a1 <= -15579)
      {
        if (a1 != -15585)
        {
          v7 = -15584;
          goto LABEL_183;
        }

        return 74;
      }

      if (a1 == -15578)
      {
        return 83;
      }

      v10 = -15577;
LABEL_220:
      if (a1 == v10)
      {
        return 60;
      }

      return 0;
    }

    if (a1 <= -15532)
    {
      if ((a1 + 15551) < 2)
      {
        return 43;
      }

      if (a1 != -15541)
      {
        v10 = -15540;
        goto LABEL_220;
      }

      return 29;
    }

    if (a1 > -15507)
    {
      if (a1 != -15506)
      {
        if (a1 == -15496)
        {
          return 61;
        }

        return 0;
      }

      return 16;
    }

    if (a1 != -15531)
    {
      v12 = -15509;
      goto LABEL_229;
    }

    return 37;
  }

  if (a1 > -14870)
  {
    if (a1 > -6656)
    {
      if (a1 > -6123)
      {
        if (a1 > -6111)
        {
          if (a1 > -6097)
          {
            if (a1 != -6096)
            {
              if (a1 == -6095)
              {
                return 12;
              }

              return 0;
            }

            return 14;
          }

          else
          {
            if (a1 != -6110)
            {
              if (a1 == -6109)
              {
                return 7;
              }

              return 0;
            }

            return 9;
          }
        }

        if (a1 > -6117)
        {
          if (a1 != -6116)
          {
            if (a1 == -6111)
            {
              return 6;
            }

            return 0;
          }

          return 8;
        }

        if (a1 == -6122)
        {
          return 10;
        }

        v4 = -6119;
LABEL_237:
        if (a1 != v4)
        {
          return 0;
        }

        return 8;
      }

      if (a1 > -6135)
      {
        if (a1 <= -6132)
        {
          if (a1 == -6134)
          {
            return 11;
          }

          v4 = -6133;
          goto LABEL_237;
        }

        if (a1 != -6131)
        {
          v4 = -6129;
          goto LABEL_237;
        }

        return 5;
      }

      if (a1 != -6655)
      {
        if (a1 != -6143)
        {
          v4 = -6141;
          goto LABEL_237;
        }

        return 5;
      }

      return 2;
    }

    if (a1 <= -14803)
    {
      if (a1 <= -14837)
      {
        if ((a1 + 14869) < 2)
        {
          return 106;
        }

        if (a1 == -14867)
        {
          return 71;
        }

        if (a1 != -14840)
        {
          return 0;
        }

        return 101;
      }

      if (a1 == -14836)
      {
        return 71;
      }

      if (a1 != -14835)
      {
        v13 = -14834;
        goto LABEL_198;
      }

      return 44;
    }

    if (a1 <= -10238)
    {
      if ((a1 + 14802) < 2)
      {
        return 80;
      }

      if (a1 != -12544)
      {
        v8 = -12543;
LABEL_106:
        if (a1 != v8)
        {
          return 0;
        }

        return 51;
      }

      return 25;
    }

    if (a1 != -10237)
    {
      if (a1 == -7167)
      {
        return 80;
      }

      if (a1 != -7166)
      {
        return 0;
      }

      return 2;
    }

    return 22;
  }

  if (a1 > -15142)
  {
    if (a1 <= -14970)
    {
      v9 = a1 + 35;
      if ((a1 + 15139) > 9)
      {
        goto LABEL_55;
      }

      if (((1 << v9) & 0xF) != 0)
      {
        return 37;
      }

      if (((1 << v9) & 0x30) == 0)
      {
        if (((1 << v9) & 0x300) == 0)
        {
LABEL_55:
          if ((a1 + 15141) < 2)
          {
            return 29;
          }

          return 0;
        }

        return 71;
      }

      return 62;
    }

    if (a1 > -14872)
    {
      return 29;
    }

    if (a1 != -14969)
    {
      if (a1 != -14959)
      {
        if (a1 == -14884)
        {
          return 105;
        }

        return 0;
      }

      return 101;
    }

    return 80;
  }

  if (a1 > -15197)
  {
    if (a1 > -15190)
    {
      if ((a1 + 15166) < 2)
      {
        return 98;
      }

      if (a1 != -15189)
      {
        if (a1 == -15171)
        {
          return 95;
        }

        return 0;
      }

      return 100;
    }

    if (a1 == -15196)
    {
      return 91;
    }

    if (a1 == -15194)
    {
      return 93;
    }

    v13 = -15190;
LABEL_198:
    if (a1 == v13)
    {
      return 92;
    }

    return 0;
  }

  if (a1 <= -15246)
  {
    if ((a1 + 15260) < 2 || a1 == -15296)
    {
      return 53;
    }

    v2 = -15261;
    goto LABEL_92;
  }

  if ((a1 + 15198) < 2)
  {
    return 90;
  }

  if (a1 != -15245)
  {
    if (a1 == -15200)
    {
      return 88;
    }

    return 0;
  }

  return 72;
}