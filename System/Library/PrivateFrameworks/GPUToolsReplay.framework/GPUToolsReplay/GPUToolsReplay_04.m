uint64_t agxps_timeseries_select_ttt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = 0;
  if (a1 && a2 && a3 && a4)
  {
    if ((*(a4 + 32) & 1) == 0 && (v7 = *(a1 + 8), v7 == *(a2 + 8)) && v7 == *(a3 + 8) && v7 == *(a4 + 8))
    {
      sub_24D788F48(a1, a2, a3, a4, *a2, *a3, a5);
      return a4;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

int *sub_24D788F48(int *a1, uint64_t a2, uint64_t a3, int *a4, int a5, int a6, double a7)
{
  if (a4)
  {
    v7 = *(a4 + 1);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *a1;
  if (a4)
  {
LABEL_4:
    v9 = *a4;
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:
  switch(v8)
  {
    case 2:
      switch(a5)
      {
        case 2:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v590 = *(a1 + 2);
                  }

                  else
                  {
                    v590 = 0;
                  }

                  if (a2)
                  {
                    v631 = *(a2 + 16);
                  }

                  else
                  {
                    v631 = 0;
                  }

                  if (a3)
                  {
                    v632 = *(a3 + 16);
                  }

                  else
                  {
                    v632 = 0;
                  }

                  if (a4)
                  {
                    v633 = *(a4 + 2);
                  }

                  else
                  {
                    v633 = 0;
                  }

                  for (; v7; --v7)
                  {
                    if (*v590++)
                    {
                      v635 = v631;
                    }

                    else
                    {
                      v635 = v632;
                    }

                    *v633++ = *v635;
                    ++v632;
                    ++v631;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v588 = *(a1 + 2);
                  }

                  else
                  {
                    v588 = 0;
                  }

                  if (a2)
                  {
                    v603 = *(a2 + 16);
                  }

                  else
                  {
                    v603 = 0;
                  }

                  if (a3)
                  {
                    v605 = *(a3 + 16);
                  }

                  else
                  {
                    v605 = 0;
                  }

                  if (a4)
                  {
                    v607 = *(a4 + 2);
                  }

                  else
                  {
                    v607 = 0;
                  }

                  for (; v7; --v7)
                  {
                    if (*v588++)
                    {
                      v611 = v603;
                    }

                    else
                    {
                      v611 = v605;
                    }

                    *v607++ = *v611;
                    ++v605;
                    ++v603;
                  }

                  break;
                case 0:
                  v585 = a1 ? *(a1 + 2) : 0;
                  v636 = a2 ? *(a2 + 16) : 0;
                  v638 = a3 ? *(a3 + 16) : 0;
                  for (i = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    if (*v585++)
                    {
                      v643 = v636;
                    }

                    else
                    {
                      v643 = v638;
                    }

                    LOBYTE(a7) = *v643;
                    a7 = *&a7;
                    *i++ = a7;
                    ++v638;
                    ++v636;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v587 = *(a1 + 2);
                  }

                  else
                  {
                    v587 = 0;
                  }

                  if (a2)
                  {
                    v602 = *(a2 + 16);
                  }

                  else
                  {
                    v602 = 0;
                  }

                  if (a3)
                  {
                    v604 = *(a3 + 16);
                  }

                  else
                  {
                    v604 = 0;
                  }

                  if (a4)
                  {
                    v606 = *(a4 + 2);
                  }

                  else
                  {
                    v606 = 0;
                  }

                  for (; v7; --v7)
                  {
                    if (*v587++)
                    {
                      v609 = v602;
                    }

                    else
                    {
                      v609 = v604;
                    }

                    *v606++ = *v609;
                    v604 += 8;
                    ++v602;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v586 = *(a1 + 2);
                  }

                  else
                  {
                    v586 = 0;
                  }

                  if (a2)
                  {
                    v592 = *(a2 + 16);
                  }

                  else
                  {
                    v592 = 0;
                  }

                  if (a3)
                  {
                    v593 = *(a3 + 16);
                  }

                  else
                  {
                    v593 = 0;
                  }

                  if (a4)
                  {
                    v594 = *(a4 + 2);
                  }

                  else
                  {
                    v594 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v596 = *v586++;
                    v595 = v596;
                    v598 = *v592++;
                    v597 = v598;
                    v600 = *v593++;
                    v599 = v600;
                    if (v595)
                    {
                      v601 = v597;
                    }

                    else
                    {
                      v601 = v599;
                    }

                    *v594++ = v601;
                  }

                  break;
                case 0:
                  v584 = a1 ? *(a1 + 2) : 0;
                  v612 = a2 ? *(a2 + 16) : 0;
                  v614 = a3 ? *(a3 + 16) : 0;
                  for (j = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    v619 = *v584++;
                    v618 = v619;
                    v620 = *v612++;
                    v621 = v620;
                    v622 = *v614++;
                    v623 = v622;
                    if (!v618)
                    {
                      v621 = v623;
                    }

                    *j++ = v621;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v591 = *(a1 + 2);
                  }

                  else
                  {
                    v591 = 0;
                  }

                  if (a2)
                  {
                    v637 = *(a2 + 16);
                  }

                  else
                  {
                    v637 = 0;
                  }

                  if (a3)
                  {
                    v639 = *(a3 + 16);
                  }

                  else
                  {
                    v639 = 0;
                  }

                  if (a4)
                  {
                    v641 = *(a4 + 2);
                  }

                  else
                  {
                    v641 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v645 = *v591++;
                    v644 = v645;
                    LOBYTE(v645) = *v637++;
                    v646 = v645;
                    v647 = *v639++;
                    v648 = v647;
                    if (v644)
                    {
                      v649 = v646;
                    }

                    else
                    {
                      v649 = v648;
                    }

                    *v641++ = v649;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v589 = *(a1 + 2);
                  }

                  else
                  {
                    v589 = 0;
                  }

                  if (a2)
                  {
                    v613 = *(a2 + 16);
                  }

                  else
                  {
                    v613 = 0;
                  }

                  if (a3)
                  {
                    v615 = *(a3 + 16);
                  }

                  else
                  {
                    v615 = 0;
                  }

                  if (a4)
                  {
                    v617 = *(a4 + 2);
                  }

                  else
                  {
                    v617 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v625 = *v589++;
                    v624 = v625;
                    v627 = *v613++;
                    v626 = v627;
                    v628 = *v615++;
                    v629 = v628;
                    if (v624)
                    {
                      v630 = v626;
                    }

                    else
                    {
                      v630 = v629;
                    }

                    *v617++ = v630;
                  }

                  break;
                case 0:
                  v583 = a1 ? *(a1 + 2) : 0;
                  v650 = a2 ? *(a2 + 16) : 0;
                  v651 = a3 ? *(a3 + 16) : 0;
                  for (k = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    v654 = *v583++;
                    v653 = v654;
                    v655 = *v650++;
                    v656 = v655;
                    v657 = *v651++;
                    v658 = v657;
                    if (!v653)
                    {
                      v656 = v658;
                    }

                    *k++ = v656;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v47 = *(a1 + 2);
                  }

                  else
                  {
                    v47 = 0;
                  }

                  if (a2)
                  {
                    v237 = *(a2 + 16);
                  }

                  else
                  {
                    v237 = 0;
                  }

                  if (a3)
                  {
                    v244 = *(a3 + 16);
                  }

                  else
                  {
                    v244 = 0;
                  }

                  if (a4)
                  {
                    v251 = *(a4 + 2);
                  }

                  else
                  {
                    v251 = 0;
                  }

                  if (v7)
                  {
                    v282 = v7;
                    do
                    {
                      if (*v47++)
                      {
                        v284 = v237;
                      }

                      else
                      {
                        v284 = v244;
                      }

                      *v251++ = *v284;
                      ++v244;
                      v237 += 8;
                      --v282;
                    }

                    while (v282);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v37 = *(a1 + 2);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  if (a2)
                  {
                    v128 = *(a2 + 16);
                  }

                  else
                  {
                    v128 = 0;
                  }

                  if (a3)
                  {
                    v131 = *(a3 + 16);
                  }

                  else
                  {
                    v131 = 0;
                  }

                  if (a4)
                  {
                    v134 = *(a4 + 2);
                  }

                  else
                  {
                    v134 = 0;
                  }

                  if (v7)
                  {
                    v141 = v7;
                    do
                    {
                      v143 = *v37++;
                      v142 = v143;
                      v145 = *v128++;
                      v144 = v145;
                      LODWORD(v145) = *v131++;
                      v146 = v145;
                      if (v142)
                      {
                        v147 = v144;
                      }

                      else
                      {
                        v147 = v146;
                      }

                      *v134++ = v147;
                      --v141;
                    }

                    while (v141);
                  }

                  break;
                case 0:
                  v21 = a1 ? *(a1 + 2) : 0;
                  v293 = a2 ? *(a2 + 16) : 0;
                  v299 = a3 ? *(a3 + 16) : 0;
                  v305 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v311 = v7;
                    do
                    {
                      v313 = *v21++;
                      v312 = v313;
                      v314 = *v293++;
                      v315 = v314;
                      LODWORD(v314) = *v299++;
                      v316 = v314;
                      v317 = v315;
                      if (!v312)
                      {
                        v317 = v316;
                      }

                      *v305++ = v317;
                      --v311;
                    }

                    while (v311);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v36 = *(a1 + 2);
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (a2)
                  {
                    v127 = *(a2 + 16);
                  }

                  else
                  {
                    v127 = 0;
                  }

                  if (a3)
                  {
                    v130 = *(a3 + 16);
                  }

                  else
                  {
                    v130 = 0;
                  }

                  if (a4)
                  {
                    v133 = *(a4 + 2);
                  }

                  else
                  {
                    v133 = 0;
                  }

                  if (v7)
                  {
                    v138 = v7;
                    do
                    {
                      if (*v36++)
                      {
                        v140 = v127;
                      }

                      else
                      {
                        v140 = v130;
                      }

                      *v133++ = *v140;
                      ++v130;
                      ++v127;
                      --v138;
                    }

                    while (v138);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v31 = *(a1 + 2);
                  }

                  else
                  {
                    v31 = 0;
                  }

                  if (a2)
                  {
                    v72 = *(a2 + 16);
                  }

                  else
                  {
                    v72 = 0;
                  }

                  if (a3)
                  {
                    v75 = *(a3 + 16);
                  }

                  else
                  {
                    v75 = 0;
                  }

                  if (a4)
                  {
                    v78 = *(a4 + 2);
                  }

                  else
                  {
                    v78 = 0;
                  }

                  if (v7)
                  {
                    v89 = v7;
                    do
                    {
                      if (*v31++)
                      {
                        v91 = v72;
                      }

                      else
                      {
                        v91 = v75;
                      }

                      *v78++ = *v91;
                      ++v75;
                      ++v72;
                      --v89;
                    }

                    while (v89);
                  }

                  break;
                case 0:
                  v18 = a1 ? *(a1 + 2) : 0;
                  v149 = a2 ? *(a2 + 16) : 0;
                  v158 = a3 ? *(a3 + 16) : 0;
                  v167 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v182 = v7;
                    do
                    {
                      if (*v18++)
                      {
                        v184 = v149;
                      }

                      else
                      {
                        v184 = v158;
                      }

                      *v167++ = *v184;
                      ++v158;
                      ++v149;
                      --v182;
                    }

                    while (v182);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v49 = *(a1 + 2);
                  }

                  else
                  {
                    v49 = 0;
                  }

                  if (a2)
                  {
                    v294 = *(a2 + 16);
                  }

                  else
                  {
                    v294 = 0;
                  }

                  if (a3)
                  {
                    v300 = *(a3 + 16);
                  }

                  else
                  {
                    v300 = 0;
                  }

                  if (a4)
                  {
                    v306 = *(a4 + 2);
                  }

                  else
                  {
                    v306 = 0;
                  }

                  if (v7)
                  {
                    v318 = v7;
                    do
                    {
                      v320 = *v49++;
                      v319 = v320;
                      LOBYTE(v320) = *v294;
                      v294 += 8;
                      v321 = v320;
                      v322 = *v300++;
                      v323 = v322;
                      if (v319)
                      {
                        v324 = v321;
                      }

                      else
                      {
                        v324 = v323;
                      }

                      *v306++ = v324;
                      --v318;
                    }

                    while (v318);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v39 = *(a1 + 2);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  if (a2)
                  {
                    v151 = *(a2 + 16);
                  }

                  else
                  {
                    v151 = 0;
                  }

                  if (a3)
                  {
                    v160 = *(a3 + 16);
                  }

                  else
                  {
                    v160 = 0;
                  }

                  if (a4)
                  {
                    v169 = *(a4 + 2);
                  }

                  else
                  {
                    v169 = 0;
                  }

                  if (v7)
                  {
                    v192 = v7;
                    do
                    {
                      v194 = *v39++;
                      v193 = v194;
                      v196 = *v151++;
                      v195 = v196;
                      v197 = *v160++;
                      v198 = v197;
                      if (v193)
                      {
                        v199 = v195;
                      }

                      else
                      {
                        v199 = v198;
                      }

                      *v169++ = v199;
                      --v192;
                    }

                    while (v192);
                  }

                  break;
                case 0:
                  v14 = a1 ? *(a1 + 2) : 0;
                  v348 = a2 ? *(a2 + 16) : 0;
                  v357 = a3 ? *(a3 + 16) : 0;
                  v366 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v375 = v7;
                    do
                    {
                      v377 = *v14++;
                      v376 = v377;
                      v378 = *v348++;
                      v379 = v378;
                      v380 = *v357++;
                      v381 = v380;
                      v382 = v379;
                      if (!v376)
                      {
                        v382 = v381;
                      }

                      *v366++ = v382;
                      --v375;
                    }

                    while (v375);
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v60 = *(a1 + 2);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if (a2)
                  {
                    v435 = *(a2 + 16);
                  }

                  else
                  {
                    v435 = 0;
                  }

                  if (a3)
                  {
                    v440 = *(a3 + 16);
                  }

                  else
                  {
                    v440 = 0;
                  }

                  if (a4)
                  {
                    v445 = *(a4 + 2);
                  }

                  else
                  {
                    v445 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v542 = *v60++;
                    v541 = v542;
                    v543 = *v435++;
                    v544 = v543;
                    LOBYTE(v543) = *v440++;
                    v545 = LOBYTE(v543);
                    if (v541)
                    {
                      v546 = v544;
                    }

                    else
                    {
                      v546 = v545;
                    }

                    *v445++ = v546;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v53 = *(a1 + 2);
                  }

                  else
                  {
                    v53 = 0;
                  }

                  if (a2)
                  {
                    v298 = *(a2 + 16);
                  }

                  else
                  {
                    v298 = 0;
                  }

                  if (a3)
                  {
                    v304 = *(a3 + 16);
                  }

                  else
                  {
                    v304 = 0;
                  }

                  if (a4)
                  {
                    v310 = *(a4 + 2);
                  }

                  else
                  {
                    v310 = 0;
                  }

                  if (v7)
                  {
                    v341 = v7;
                    do
                    {
                      v343 = *v53++;
                      v342 = v343;
                      v344 = *v298++;
                      v345 = v344;
                      LODWORD(v344) = *v304++;
                      v346 = LODWORD(v344);
                      if (v342)
                      {
                        v347 = v345;
                      }

                      else
                      {
                        v347 = v346;
                      }

                      *v310++ = v347;
                      --v341;
                    }

                    while (v341);
                  }

                  break;
                case 0:
                  v26 = a1 ? *(a1 + 2) : 0;
                  v547 = a2 ? *(a2 + 16) : 0;
                  v550 = a3 ? *(a3 + 16) : 0;
                  v553 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v556 = v7;
                    do
                    {
                      v558 = *v26++;
                      v557 = v558;
                      v559 = *v547++;
                      v560 = v559;
                      LODWORD(v559) = *v550++;
                      v561 = LODWORD(v559);
                      if (!v557)
                      {
                        v560 = v561;
                      }

                      *v553++ = v560;
                      --v556;
                    }

                    while (v556);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v51 = *(a1 + 2);
                  }

                  else
                  {
                    v51 = 0;
                  }

                  if (a2)
                  {
                    v296 = *(a2 + 16);
                  }

                  else
                  {
                    v296 = 0;
                  }

                  if (a3)
                  {
                    v302 = *(a3 + 16);
                  }

                  else
                  {
                    v302 = 0;
                  }

                  if (a4)
                  {
                    v308 = *(a4 + 2);
                  }

                  else
                  {
                    v308 = 0;
                  }

                  if (v7)
                  {
                    v331 = v7;
                    do
                    {
                      v333 = *v51++;
                      v332 = v333;
                      v334 = *v296++;
                      v335 = v334;
                      LOBYTE(v334) = *v302;
                      v302 += 8;
                      v336 = LOBYTE(v334);
                      if (v332)
                      {
                        v337 = v335;
                      }

                      else
                      {
                        v337 = v336;
                      }

                      *v308++ = v337;
                      --v331;
                    }

                    while (v331);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v43 = *(a1 + 2);
                  }

                  else
                  {
                    v43 = 0;
                  }

                  if (a2)
                  {
                    v155 = *(a2 + 16);
                  }

                  else
                  {
                    v155 = 0;
                  }

                  if (a3)
                  {
                    v164 = *(a3 + 16);
                  }

                  else
                  {
                    v164 = 0;
                  }

                  if (a4)
                  {
                    v173 = *(a4 + 2);
                  }

                  else
                  {
                    v173 = 0;
                  }

                  if (v7)
                  {
                    v217 = v7;
                    do
                    {
                      v219 = *v43++;
                      v218 = v219;
                      v220 = *v155++;
                      v221 = v220;
                      v223 = *v164++;
                      v222 = v223;
                      if (v218)
                      {
                        v224 = v221;
                      }

                      else
                      {
                        v224 = v222;
                      }

                      *v173++ = v224;
                      --v217;
                    }

                    while (v217);
                  }

                  break;
                case 0:
                  v23 = a1 ? *(a1 + 2) : 0;
                  v350 = a2 ? *(a2 + 16) : 0;
                  v359 = a3 ? *(a3 + 16) : 0;
                  v368 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v389 = v7;
                    do
                    {
                      v391 = *v23++;
                      v390 = v391;
                      v392 = *v350++;
                      v393 = v392;
                      v394 = *v359++;
                      v395 = v394;
                      if (!v390)
                      {
                        v393 = v395;
                      }

                      *v368++ = v393;
                      --v389;
                    }

                    while (v389);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v61 = *(a1 + 2);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  if (a2)
                  {
                    v548 = *(a2 + 16);
                  }

                  else
                  {
                    v548 = 0;
                  }

                  if (a3)
                  {
                    v551 = *(a3 + 16);
                  }

                  else
                  {
                    v551 = 0;
                  }

                  if (a4)
                  {
                    v554 = *(a4 + 2);
                  }

                  else
                  {
                    v554 = 0;
                  }

                  if (v7)
                  {
                    v562 = v7;
                    do
                    {
                      if (*v61++)
                      {
                        v564 = v548;
                      }

                      else
                      {
                        v564 = v551;
                      }

                      *v554++ = *v564;
                      ++v551;
                      ++v548;
                      --v562;
                    }

                    while (v562);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v55 = *(a1 + 2);
                  }

                  else
                  {
                    v55 = 0;
                  }

                  if (a2)
                  {
                    v353 = *(a2 + 16);
                  }

                  else
                  {
                    v353 = 0;
                  }

                  if (a3)
                  {
                    v362 = *(a3 + 16);
                  }

                  else
                  {
                    v362 = 0;
                  }

                  if (a4)
                  {
                    v371 = *(a4 + 2);
                  }

                  else
                  {
                    v371 = 0;
                  }

                  if (v7)
                  {
                    v407 = v7;
                    do
                    {
                      if (*v55++)
                      {
                        v409 = v353;
                      }

                      else
                      {
                        v409 = v362;
                      }

                      *v371++ = *v409;
                      ++v362;
                      ++v353;
                      --v407;
                    }

                    while (v407);
                  }

                  break;
                case 0:
                  v12 = a1 ? *(a1 + 2) : 0;
                  v571 = a2 ? *(a2 + 16) : 0;
                  v574 = a3 ? *(a3 + 16) : 0;
                  v577 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v580 = v7;
                    do
                    {
                      if (*v12++)
                      {
                        v582 = v571;
                      }

                      else
                      {
                        v582 = v574;
                      }

                      *v577++ = *v582;
                      ++v574;
                      ++v571;
                      --v580;
                    }

                    while (v580);
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
    case 1:
      switch(a5)
      {
        case 2:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v456 = *(a1 + 2);
                  }

                  else
                  {
                    v456 = 0;
                  }

                  if (a2)
                  {
                    v494 = *(a2 + 16);
                  }

                  else
                  {
                    v494 = 0;
                  }

                  if (a3)
                  {
                    v495 = *(a3 + 16);
                  }

                  else
                  {
                    v495 = 0;
                  }

                  if (a4)
                  {
                    v496 = *(a4 + 2);
                  }

                  else
                  {
                    v496 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v497 = *v456;
                    v456 += 8;
                    if (v497)
                    {
                      v498 = v494;
                    }

                    else
                    {
                      v498 = v495;
                    }

                    *v496++ = *v498;
                    ++v495;
                    ++v494;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v454 = *(a1 + 2);
                  }

                  else
                  {
                    v454 = 0;
                  }

                  if (a2)
                  {
                    v468 = *(a2 + 16);
                  }

                  else
                  {
                    v468 = 0;
                  }

                  if (a3)
                  {
                    v470 = *(a3 + 16);
                  }

                  else
                  {
                    v470 = 0;
                  }

                  if (a4)
                  {
                    v472 = *(a4 + 2);
                  }

                  else
                  {
                    v472 = 0;
                  }

                  for (; v7; --v7)
                  {
                    if (*v454++)
                    {
                      v476 = v468;
                    }

                    else
                    {
                      v476 = v470;
                    }

                    *v472++ = *v476;
                    ++v470;
                    ++v468;
                  }

                  break;
                case 0:
                  v451 = a1 ? *(a1 + 2) : 0;
                  v499 = a2 ? *(a2 + 16) : 0;
                  v501 = a3 ? *(a3 + 16) : 0;
                  for (m = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    if (*v451++)
                    {
                      v506 = v499;
                    }

                    else
                    {
                      v506 = v501;
                    }

                    LOBYTE(a7) = *v506;
                    a7 = *&a7;
                    *m++ = a7;
                    ++v501;
                    ++v499;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v453 = *(a1 + 2);
                  }

                  else
                  {
                    v453 = 0;
                  }

                  if (a2)
                  {
                    v467 = *(a2 + 16);
                  }

                  else
                  {
                    v467 = 0;
                  }

                  if (a3)
                  {
                    v469 = *(a3 + 16);
                  }

                  else
                  {
                    v469 = 0;
                  }

                  if (a4)
                  {
                    v471 = *(a4 + 2);
                  }

                  else
                  {
                    v471 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v473 = *v453;
                    v453 += 8;
                    if (v473)
                    {
                      v474 = v467;
                    }

                    else
                    {
                      v474 = v469;
                    }

                    *v471++ = *v474;
                    v469 += 8;
                    ++v467;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v452 = *(a1 + 2);
                  }

                  else
                  {
                    v452 = 0;
                  }

                  if (a2)
                  {
                    v458 = *(a2 + 16);
                  }

                  else
                  {
                    v458 = 0;
                  }

                  if (a3)
                  {
                    v459 = *(a3 + 16);
                  }

                  else
                  {
                    v459 = 0;
                  }

                  if (a4)
                  {
                    v460 = *(a4 + 2);
                  }

                  else
                  {
                    v460 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v462 = *v452++;
                    v461 = v462;
                    LODWORD(v462) = *v458++;
                    v463 = v462;
                    v465 = *v459++;
                    v464 = v465;
                    if (v461)
                    {
                      v466 = v463;
                    }

                    else
                    {
                      v466 = v464;
                    }

                    *v460++ = v466;
                  }

                  break;
                case 0:
                  v450 = a1 ? *(a1 + 2) : 0;
                  v477 = a2 ? *(a2 + 16) : 0;
                  v479 = a3 ? *(a3 + 16) : 0;
                  for (n = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    v484 = *v450++;
                    v483 = v484;
                    LODWORD(v484) = *v477++;
                    v485 = v484;
                    v486 = *v479++;
                    v487 = v486;
                    if (!v483)
                    {
                      v485 = v487;
                    }

                    *n++ = v485;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v457 = *(a1 + 2);
                  }

                  else
                  {
                    v457 = 0;
                  }

                  if (a2)
                  {
                    v500 = *(a2 + 16);
                  }

                  else
                  {
                    v500 = 0;
                  }

                  if (a3)
                  {
                    v502 = *(a3 + 16);
                  }

                  else
                  {
                    v502 = 0;
                  }

                  if (a4)
                  {
                    v504 = *(a4 + 2);
                  }

                  else
                  {
                    v504 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v508 = *v457;
                    v457 += 8;
                    v507 = v508;
                    LOBYTE(v508) = *v500++;
                    v509 = v508;
                    v510 = *v502++;
                    v511 = v510;
                    if (v507)
                    {
                      v512 = v509;
                    }

                    else
                    {
                      v512 = v511;
                    }

                    *v504++ = v512;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v455 = *(a1 + 2);
                  }

                  else
                  {
                    v455 = 0;
                  }

                  if (a2)
                  {
                    v478 = *(a2 + 16);
                  }

                  else
                  {
                    v478 = 0;
                  }

                  if (a3)
                  {
                    v480 = *(a3 + 16);
                  }

                  else
                  {
                    v480 = 0;
                  }

                  if (a4)
                  {
                    v482 = *(a4 + 2);
                  }

                  else
                  {
                    v482 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v489 = *v455++;
                    v488 = v489;
                    LODWORD(v489) = *v478++;
                    v490 = v489;
                    v491 = *v480++;
                    v492 = v491;
                    if (v488)
                    {
                      v493 = v490;
                    }

                    else
                    {
                      v493 = v492;
                    }

                    *v482++ = v493;
                  }

                  break;
                case 0:
                  v449 = a1 ? *(a1 + 2) : 0;
                  v513 = a2 ? *(a2 + 16) : 0;
                  v514 = a3 ? *(a3 + 16) : 0;
                  for (ii = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    v517 = *v449++;
                    v516 = v517;
                    LODWORD(v517) = *v513++;
                    v518 = v517;
                    v519 = *v514++;
                    v520 = v519;
                    if (!v516)
                    {
                      v518 = v520;
                    }

                    *ii++ = v518;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v35 = *(a1 + 2);
                  }

                  else
                  {
                    v35 = 0;
                  }

                  if (a2)
                  {
                    v126 = *(a2 + 16);
                  }

                  else
                  {
                    v126 = 0;
                  }

                  if (a3)
                  {
                    v129 = *(a3 + 16);
                  }

                  else
                  {
                    v129 = 0;
                  }

                  if (a4)
                  {
                    v132 = *(a4 + 2);
                  }

                  else
                  {
                    v132 = 0;
                  }

                  if (v7)
                  {
                    v135 = v7;
                    do
                    {
                      v136 = *v35;
                      v35 += 8;
                      if (v136)
                      {
                        v137 = v126;
                      }

                      else
                      {
                        v137 = v129;
                      }

                      *v132++ = *v137;
                      ++v129;
                      v126 += 8;
                      --v135;
                    }

                    while (v135);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v30 = *(a1 + 2);
                  }

                  else
                  {
                    v30 = 0;
                  }

                  if (a2)
                  {
                    v71 = *(a2 + 16);
                  }

                  else
                  {
                    v71 = 0;
                  }

                  if (a3)
                  {
                    v74 = *(a3 + 16);
                  }

                  else
                  {
                    v74 = 0;
                  }

                  if (a4)
                  {
                    v77 = *(a4 + 2);
                  }

                  else
                  {
                    v77 = 0;
                  }

                  if (v7)
                  {
                    v82 = v7;
                    do
                    {
                      v84 = *v30++;
                      v83 = v84;
                      v86 = *v71++;
                      v85 = v86;
                      LODWORD(v86) = *v74++;
                      v87 = v86;
                      if (v83)
                      {
                        v88 = v85;
                      }

                      else
                      {
                        v88 = v87;
                      }

                      *v77++ = v88;
                      --v82;
                    }

                    while (v82);
                  }

                  break;
                case 0:
                  v17 = a1 ? *(a1 + 2) : 0;
                  v148 = a2 ? *(a2 + 16) : 0;
                  v157 = a3 ? *(a3 + 16) : 0;
                  v166 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v175 = v7;
                    do
                    {
                      v177 = *v17++;
                      v176 = v177;
                      v178 = *v148++;
                      v179 = v178;
                      LODWORD(v178) = *v157++;
                      v180 = v178;
                      v181 = v179;
                      if (!v176)
                      {
                        v181 = v180;
                      }

                      *v166++ = v181;
                      --v175;
                    }

                    while (v175);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v29 = *(a1 + 2);
                  }

                  else
                  {
                    v29 = 0;
                  }

                  if (a2)
                  {
                    v70 = *(a2 + 16);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if (a3)
                  {
                    v73 = *(a3 + 16);
                  }

                  else
                  {
                    v73 = 0;
                  }

                  if (a4)
                  {
                    v76 = *(a4 + 2);
                  }

                  else
                  {
                    v76 = 0;
                  }

                  if (v7)
                  {
                    v79 = v7;
                    do
                    {
                      v80 = *v29;
                      v29 += 8;
                      if (v80)
                      {
                        v81 = v70;
                      }

                      else
                      {
                        v81 = v73;
                      }

                      *v76++ = *v81;
                      ++v73;
                      ++v70;
                      --v79;
                    }

                    while (v79);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v28 = *(a1 + 2);
                  }

                  else
                  {
                    v28 = 0;
                  }

                  if (a2)
                  {
                    v64 = *(a2 + 16);
                  }

                  else
                  {
                    v64 = 0;
                  }

                  if (a3)
                  {
                    v65 = *(a3 + 16);
                  }

                  else
                  {
                    v65 = 0;
                  }

                  if (a4)
                  {
                    v66 = *(a4 + 2);
                  }

                  else
                  {
                    v66 = 0;
                  }

                  if (v7)
                  {
                    v67 = v7;
                    do
                    {
                      if (*v28++)
                      {
                        v69 = v64;
                      }

                      else
                      {
                        v69 = v65;
                      }

                      *v66++ = *v69;
                      ++v65;
                      ++v64;
                      --v67;
                    }

                    while (v67);
                  }

                  break;
                case 0:
                  v16 = a1 ? *(a1 + 2) : 0;
                  v92 = a2 ? *(a2 + 16) : 0;
                  v96 = a3 ? *(a3 + 16) : 0;
                  v100 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v104 = v7;
                    do
                    {
                      if (*v16++)
                      {
                        v106 = v92;
                      }

                      else
                      {
                        v106 = v96;
                      }

                      *v100++ = *v106;
                      ++v96;
                      ++v92;
                      --v104;
                    }

                    while (v104);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v38 = *(a1 + 2);
                  }

                  else
                  {
                    v38 = 0;
                  }

                  if (a2)
                  {
                    v150 = *(a2 + 16);
                  }

                  else
                  {
                    v150 = 0;
                  }

                  if (a3)
                  {
                    v159 = *(a3 + 16);
                  }

                  else
                  {
                    v159 = 0;
                  }

                  if (a4)
                  {
                    v168 = *(a4 + 2);
                  }

                  else
                  {
                    v168 = 0;
                  }

                  if (v7)
                  {
                    v185 = v7;
                    do
                    {
                      v187 = *v38;
                      v38 += 8;
                      v186 = v187;
                      LOBYTE(v187) = *v150;
                      v150 += 8;
                      v188 = v187;
                      v189 = *v159++;
                      v190 = v189;
                      if (v186)
                      {
                        v191 = v188;
                      }

                      else
                      {
                        v191 = v190;
                      }

                      *v168++ = v191;
                      --v185;
                    }

                    while (v185);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v32 = *(a1 + 2);
                  }

                  else
                  {
                    v32 = 0;
                  }

                  if (a2)
                  {
                    v93 = *(a2 + 16);
                  }

                  else
                  {
                    v93 = 0;
                  }

                  if (a3)
                  {
                    v97 = *(a3 + 16);
                  }

                  else
                  {
                    v97 = 0;
                  }

                  if (a4)
                  {
                    v101 = *(a4 + 2);
                  }

                  else
                  {
                    v101 = 0;
                  }

                  if (v7)
                  {
                    v107 = v7;
                    do
                    {
                      v109 = *v32++;
                      v108 = v109;
                      v111 = *v93++;
                      v110 = v111;
                      v112 = *v97++;
                      v113 = v112;
                      if (v108)
                      {
                        v114 = v110;
                      }

                      else
                      {
                        v114 = v113;
                      }

                      *v101++ = v114;
                      --v107;
                    }

                    while (v107);
                  }

                  break;
                case 0:
                  v13 = a1 ? *(a1 + 2) : 0;
                  v232 = a2 ? *(a2 + 16) : 0;
                  v239 = a3 ? *(a3 + 16) : 0;
                  v246 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v253 = v7;
                    do
                    {
                      v255 = *v13++;
                      v254 = v255;
                      v256 = *v232++;
                      v257 = v256;
                      v258 = *v239++;
                      v259 = v258;
                      v260 = v257;
                      if (!v254)
                      {
                        v260 = v259;
                      }

                      *v246++ = v260;
                      --v253;
                    }

                    while (v253);
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v50 = *(a1 + 2);
                  }

                  else
                  {
                    v50 = 0;
                  }

                  if (a2)
                  {
                    v295 = *(a2 + 16);
                  }

                  else
                  {
                    v295 = 0;
                  }

                  if (a3)
                  {
                    v301 = *(a3 + 16);
                  }

                  else
                  {
                    v301 = 0;
                  }

                  if (a4)
                  {
                    v307 = *(a4 + 2);
                  }

                  else
                  {
                    v307 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v326 = *v50;
                    v50 += 8;
                    v325 = v326;
                    v327 = *v295++;
                    v328 = v327;
                    LOBYTE(v327) = *v301++;
                    v329 = LOBYTE(v327);
                    if (v325)
                    {
                      v330 = v328;
                    }

                    else
                    {
                      v330 = v329;
                    }

                    *v307++ = v330;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v42 = *(a1 + 2);
                  }

                  else
                  {
                    v42 = 0;
                  }

                  if (a2)
                  {
                    v154 = *(a2 + 16);
                  }

                  else
                  {
                    v154 = 0;
                  }

                  if (a3)
                  {
                    v163 = *(a3 + 16);
                  }

                  else
                  {
                    v163 = 0;
                  }

                  if (a4)
                  {
                    v172 = *(a4 + 2);
                  }

                  else
                  {
                    v172 = 0;
                  }

                  if (v7)
                  {
                    v210 = v7;
                    do
                    {
                      v212 = *v42++;
                      v211 = v212;
                      v213 = *v154++;
                      v214 = v213;
                      LODWORD(v213) = *v163++;
                      v215 = LODWORD(v213);
                      if (v211)
                      {
                        v216 = v214;
                      }

                      else
                      {
                        v216 = v215;
                      }

                      *v172++ = v216;
                      --v210;
                    }

                    while (v210);
                  }

                  break;
                case 0:
                  v22 = a1 ? *(a1 + 2) : 0;
                  v349 = a2 ? *(a2 + 16) : 0;
                  v358 = a3 ? *(a3 + 16) : 0;
                  v367 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v383 = v7;
                    do
                    {
                      v385 = *v22++;
                      v384 = v385;
                      v386 = *v349++;
                      v387 = v386;
                      LODWORD(v386) = *v358++;
                      v388 = LODWORD(v386);
                      if (!v384)
                      {
                        v387 = v388;
                      }

                      *v367++ = v387;
                      --v383;
                    }

                    while (v383);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v40 = *(a1 + 2);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (a2)
                  {
                    v152 = *(a2 + 16);
                  }

                  else
                  {
                    v152 = 0;
                  }

                  if (a3)
                  {
                    v161 = *(a3 + 16);
                  }

                  else
                  {
                    v161 = 0;
                  }

                  if (a4)
                  {
                    v170 = *(a4 + 2);
                  }

                  else
                  {
                    v170 = 0;
                  }

                  if (v7)
                  {
                    v200 = v7;
                    do
                    {
                      v202 = *v40;
                      v40 += 8;
                      v201 = v202;
                      v203 = *v152++;
                      v204 = v203;
                      LOBYTE(v203) = *v161;
                      v161 += 8;
                      v205 = LOBYTE(v203);
                      if (v201)
                      {
                        v206 = v204;
                      }

                      else
                      {
                        v206 = v205;
                      }

                      *v170++ = v206;
                      --v200;
                    }

                    while (v200);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v33 = *(a1 + 2);
                  }

                  else
                  {
                    v33 = 0;
                  }

                  if (a2)
                  {
                    v94 = *(a2 + 16);
                  }

                  else
                  {
                    v94 = 0;
                  }

                  if (a3)
                  {
                    v98 = *(a3 + 16);
                  }

                  else
                  {
                    v98 = 0;
                  }

                  if (a4)
                  {
                    v102 = *(a4 + 2);
                  }

                  else
                  {
                    v102 = 0;
                  }

                  if (v7)
                  {
                    v115 = v7;
                    do
                    {
                      v117 = *v33++;
                      v116 = v117;
                      v118 = *v94++;
                      v119 = v118;
                      v121 = *v98++;
                      v120 = v121;
                      if (v116)
                      {
                        v122 = v119;
                      }

                      else
                      {
                        v122 = v120;
                      }

                      *v102++ = v122;
                      --v115;
                    }

                    while (v115);
                  }

                  break;
                case 0:
                  v19 = a1 ? *(a1 + 2) : 0;
                  v233 = a2 ? *(a2 + 16) : 0;
                  v240 = a3 ? *(a3 + 16) : 0;
                  v247 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v261 = v7;
                    do
                    {
                      v263 = *v19++;
                      v262 = v263;
                      v264 = *v233++;
                      v265 = v264;
                      v266 = *v240++;
                      v267 = v266;
                      if (!v262)
                      {
                        v265 = v267;
                      }

                      *v247++ = v265;
                      --v261;
                    }

                    while (v261);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v54 = *(a1 + 2);
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if (a2)
                  {
                    v352 = *(a2 + 16);
                  }

                  else
                  {
                    v352 = 0;
                  }

                  if (a3)
                  {
                    v361 = *(a3 + 16);
                  }

                  else
                  {
                    v361 = 0;
                  }

                  if (a4)
                  {
                    v370 = *(a4 + 2);
                  }

                  else
                  {
                    v370 = 0;
                  }

                  if (v7)
                  {
                    v404 = v7;
                    do
                    {
                      v405 = *v54;
                      v54 += 8;
                      if (v405)
                      {
                        v406 = v352;
                      }

                      else
                      {
                        v406 = v361;
                      }

                      *v370++ = *v406;
                      ++v361;
                      ++v352;
                      --v404;
                    }

                    while (v404);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v45 = *(a1 + 2);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (a2)
                  {
                    v235 = *(a2 + 16);
                  }

                  else
                  {
                    v235 = 0;
                  }

                  if (a3)
                  {
                    v242 = *(a3 + 16);
                  }

                  else
                  {
                    v242 = 0;
                  }

                  if (a4)
                  {
                    v249 = *(a4 + 2);
                  }

                  else
                  {
                    v249 = 0;
                  }

                  if (v7)
                  {
                    v271 = v7;
                    do
                    {
                      if (*v45++)
                      {
                        v273 = v235;
                      }

                      else
                      {
                        v273 = v242;
                      }

                      *v249++ = *v273;
                      ++v242;
                      ++v235;
                      --v271;
                    }

                    while (v271);
                  }

                  break;
                case 0:
                  v11 = a1 ? *(a1 + 2) : 0;
                  v431 = a2 ? *(a2 + 16) : 0;
                  v436 = a3 ? *(a3 + 16) : 0;
                  v441 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v446 = v7;
                    do
                    {
                      if (*v11++)
                      {
                        v448 = v431;
                      }

                      else
                      {
                        v448 = v436;
                      }

                      *v441++ = *v448;
                      ++v436;
                      ++v431;
                      --v446;
                    }

                    while (v446);
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
    case 0:
      switch(a5)
      {
        case 2:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v682 = *(a1 + 2);
                  }

                  else
                  {
                    v682 = 0;
                  }

                  if (a2)
                  {
                    v721 = *(a2 + 16);
                  }

                  else
                  {
                    v721 = 0;
                  }

                  if (a3)
                  {
                    v722 = *(a3 + 16);
                  }

                  else
                  {
                    v722 = 0;
                  }

                  if (a4)
                  {
                    v723 = *(a4 + 2);
                  }

                  else
                  {
                    v723 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v724 = *v682++;
                    if (v724)
                    {
                      v725 = v721;
                    }

                    else
                    {
                      v725 = v722;
                    }

                    *v723++ = *v725;
                    ++v722;
                    ++v721;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v680 = *(a1 + 2);
                  }

                  else
                  {
                    v680 = 0;
                  }

                  if (a2)
                  {
                    v694 = *(a2 + 16);
                  }

                  else
                  {
                    v694 = 0;
                  }

                  if (a3)
                  {
                    v696 = *(a3 + 16);
                  }

                  else
                  {
                    v696 = 0;
                  }

                  if (a4)
                  {
                    v698 = *(a4 + 2);
                  }

                  else
                  {
                    v698 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v701 = *v680++;
                    if (v701)
                    {
                      v702 = v694;
                    }

                    else
                    {
                      v702 = v696;
                    }

                    *v698++ = *v702;
                    ++v696;
                    ++v694;
                  }

                  break;
                case 0:
                  v677 = a1 ? *(a1 + 2) : 0;
                  v726 = a2 ? *(a2 + 16) : 0;
                  v728 = a3 ? *(a3 + 16) : 0;
                  for (jj = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    v732 = *v677++;
                    v733 = *&v732;
                    if (v732 == 0.0)
                    {
                      v734 = v728;
                    }

                    else
                    {
                      v734 = v726;
                    }

                    LOBYTE(v733) = *v734;
                    *jj++ = v733;
                    ++v728;
                    ++v726;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v679 = *(a1 + 2);
                  }

                  else
                  {
                    v679 = 0;
                  }

                  if (a2)
                  {
                    v693 = *(a2 + 16);
                  }

                  else
                  {
                    v693 = 0;
                  }

                  if (a3)
                  {
                    v695 = *(a3 + 16);
                  }

                  else
                  {
                    v695 = 0;
                  }

                  if (a4)
                  {
                    v697 = *(a4 + 2);
                  }

                  else
                  {
                    v697 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v699 = *v679++;
                    if (v699)
                    {
                      v700 = v693;
                    }

                    else
                    {
                      v700 = v695;
                    }

                    *v697++ = *v700;
                    v695 += 8;
                    ++v693;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v678 = *(a1 + 2);
                  }

                  else
                  {
                    v678 = 0;
                  }

                  if (a2)
                  {
                    v684 = *(a2 + 16);
                  }

                  else
                  {
                    v684 = 0;
                  }

                  if (a3)
                  {
                    v685 = *(a3 + 16);
                  }

                  else
                  {
                    v685 = 0;
                  }

                  if (a4)
                  {
                    v686 = *(a4 + 2);
                  }

                  else
                  {
                    v686 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v687 = *v678++;
                    v688 = v687;
                    LODWORD(v687) = *v684++;
                    v689 = LODWORD(v687);
                    v691 = *v685++;
                    v690 = v691;
                    if (v688)
                    {
                      v692 = v689;
                    }

                    else
                    {
                      v692 = v690;
                    }

                    *v686++ = v692;
                  }

                  break;
                case 0:
                  v676 = a1 ? *(a1 + 2) : 0;
                  v703 = a2 ? *(a2 + 16) : 0;
                  v705 = a3 ? *(a3 + 16) : 0;
                  for (kk = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    v709 = *v676++;
                    v710 = v709;
                    LODWORD(v709) = *v703++;
                    v711 = LODWORD(v709);
                    v712 = *v705++;
                    v713 = v712;
                    if (v710 == 0.0)
                    {
                      v714 = v713;
                    }

                    else
                    {
                      v714 = v711;
                    }

                    *kk++ = v714;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v683 = *(a1 + 2);
                  }

                  else
                  {
                    v683 = 0;
                  }

                  if (a2)
                  {
                    v727 = *(a2 + 16);
                  }

                  else
                  {
                    v727 = 0;
                  }

                  if (a3)
                  {
                    v729 = *(a3 + 16);
                  }

                  else
                  {
                    v729 = 0;
                  }

                  if (a4)
                  {
                    v731 = *(a4 + 2);
                  }

                  else
                  {
                    v731 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v735 = *v683++;
                    v736 = v735;
                    LOBYTE(v735) = *v727++;
                    v737 = LOBYTE(v735);
                    v738 = *v729++;
                    v739 = v738;
                    if (v736)
                    {
                      v740 = v737;
                    }

                    else
                    {
                      v740 = v739;
                    }

                    *v731++ = v740;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v681 = *(a1 + 2);
                  }

                  else
                  {
                    v681 = 0;
                  }

                  if (a2)
                  {
                    v704 = *(a2 + 16);
                  }

                  else
                  {
                    v704 = 0;
                  }

                  if (a3)
                  {
                    v706 = *(a3 + 16);
                  }

                  else
                  {
                    v706 = 0;
                  }

                  if (a4)
                  {
                    v708 = *(a4 + 2);
                  }

                  else
                  {
                    v708 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v715 = *v681++;
                    v716 = v715;
                    LODWORD(v715) = *v704++;
                    v717 = LODWORD(v715);
                    v718 = *v706++;
                    v719 = v718;
                    if (v716)
                    {
                      v720 = v717;
                    }

                    else
                    {
                      v720 = v719;
                    }

                    *v708++ = v720;
                  }

                  break;
                case 0:
                  v675 = a1 ? *(a1 + 2) : 0;
                  v741 = a2 ? *(a2 + 16) : 0;
                  v742 = a3 ? *(a3 + 16) : 0;
                  for (mm = a4 ? *(a4 + 2) : 0; v7; --v7)
                  {
                    v744 = *v675++;
                    v745 = v744;
                    LODWORD(v744) = *v741++;
                    v746 = LODWORD(v744);
                    v747 = *v742++;
                    v748 = v747;
                    if (v745 == 0.0)
                    {
                      v749 = v748;
                    }

                    else
                    {
                      v749 = v746;
                    }

                    *mm++ = v749;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v52 = *(a1 + 2);
                  }

                  else
                  {
                    v52 = 0;
                  }

                  if (a2)
                  {
                    v297 = *(a2 + 16);
                  }

                  else
                  {
                    v297 = 0;
                  }

                  if (a3)
                  {
                    v303 = *(a3 + 16);
                  }

                  else
                  {
                    v303 = 0;
                  }

                  if (a4)
                  {
                    v309 = *(a4 + 2);
                  }

                  else
                  {
                    v309 = 0;
                  }

                  if (v7)
                  {
                    v338 = v7;
                    do
                    {
                      v339 = *v52++;
                      if (v339)
                      {
                        v340 = v297;
                      }

                      else
                      {
                        v340 = v303;
                      }

                      *v309++ = *v340;
                      ++v303;
                      v297 += 8;
                      --v338;
                    }

                    while (v338);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v44 = *(a1 + 2);
                  }

                  else
                  {
                    v44 = 0;
                  }

                  if (a2)
                  {
                    v156 = *(a2 + 16);
                  }

                  else
                  {
                    v156 = 0;
                  }

                  if (a3)
                  {
                    v165 = *(a3 + 16);
                  }

                  else
                  {
                    v165 = 0;
                  }

                  if (a4)
                  {
                    v174 = *(a4 + 2);
                  }

                  else
                  {
                    v174 = 0;
                  }

                  if (v7)
                  {
                    v225 = v7;
                    do
                    {
                      v226 = *v44++;
                      v227 = v226;
                      v229 = *v156++;
                      v228 = v229;
                      LODWORD(v229) = *v165++;
                      v230 = v229;
                      if (v227)
                      {
                        v231 = v228;
                      }

                      else
                      {
                        v231 = v230;
                      }

                      *v174++ = v231;
                      --v225;
                    }

                    while (v225);
                  }

                  break;
                case 0:
                  v24 = a1 ? *(a1 + 2) : 0;
                  v351 = a2 ? *(a2 + 16) : 0;
                  v360 = a3 ? *(a3 + 16) : 0;
                  v369 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v396 = v7;
                    do
                    {
                      v397 = *v24++;
                      v398 = v397;
                      v399 = *v351++;
                      v400 = v399;
                      LODWORD(v399) = *v360++;
                      v401 = v399;
                      v402 = v400;
                      if (v398 == 0.0)
                      {
                        v403 = v401;
                      }

                      else
                      {
                        v403 = v402;
                      }

                      *v369++ = v403;
                      --v396;
                    }

                    while (v396);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v41 = *(a1 + 2);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  if (a2)
                  {
                    v153 = *(a2 + 16);
                  }

                  else
                  {
                    v153 = 0;
                  }

                  if (a3)
                  {
                    v162 = *(a3 + 16);
                  }

                  else
                  {
                    v162 = 0;
                  }

                  if (a4)
                  {
                    v171 = *(a4 + 2);
                  }

                  else
                  {
                    v171 = 0;
                  }

                  if (v7)
                  {
                    v207 = v7;
                    do
                    {
                      v208 = *v41++;
                      if (v208)
                      {
                        v209 = v153;
                      }

                      else
                      {
                        v209 = v162;
                      }

                      *v171++ = *v209;
                      ++v162;
                      ++v153;
                      --v207;
                    }

                    while (v207);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v34 = *(a1 + 2);
                  }

                  else
                  {
                    v34 = 0;
                  }

                  if (a2)
                  {
                    v95 = *(a2 + 16);
                  }

                  else
                  {
                    v95 = 0;
                  }

                  if (a3)
                  {
                    v99 = *(a3 + 16);
                  }

                  else
                  {
                    v99 = 0;
                  }

                  if (a4)
                  {
                    v103 = *(a4 + 2);
                  }

                  else
                  {
                    v103 = 0;
                  }

                  if (v7)
                  {
                    v123 = v7;
                    do
                    {
                      v124 = *v34++;
                      if (v124)
                      {
                        v125 = v95;
                      }

                      else
                      {
                        v125 = v99;
                      }

                      *v103++ = *v125;
                      ++v99;
                      ++v95;
                      --v123;
                    }

                    while (v123);
                  }

                  break;
                case 0:
                  v20 = a1 ? *(a1 + 2) : 0;
                  v234 = a2 ? *(a2 + 16) : 0;
                  v241 = a3 ? *(a3 + 16) : 0;
                  v248 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v268 = v7;
                    do
                    {
                      v269 = *v20++;
                      if (v269 == 0.0)
                      {
                        v270 = v241;
                      }

                      else
                      {
                        v270 = v234;
                      }

                      *v248++ = *v270;
                      ++v241;
                      ++v234;
                      --v268;
                    }

                    while (v268);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v56 = *(a1 + 2);
                  }

                  else
                  {
                    v56 = 0;
                  }

                  if (a2)
                  {
                    v354 = *(a2 + 16);
                  }

                  else
                  {
                    v354 = 0;
                  }

                  if (a3)
                  {
                    v363 = *(a3 + 16);
                  }

                  else
                  {
                    v363 = 0;
                  }

                  if (a4)
                  {
                    v372 = *(a4 + 2);
                  }

                  else
                  {
                    v372 = 0;
                  }

                  if (v7)
                  {
                    v410 = v7;
                    do
                    {
                      v411 = *v56++;
                      v412 = v411;
                      LOBYTE(v411) = *v354;
                      v354 += 8;
                      v413 = LOBYTE(v411);
                      v414 = *v363++;
                      v415 = v414;
                      if (v412)
                      {
                        v416 = v413;
                      }

                      else
                      {
                        v416 = v415;
                      }

                      *v372++ = v416;
                      --v410;
                    }

                    while (v410);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v46 = *(a1 + 2);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if (a2)
                  {
                    v236 = *(a2 + 16);
                  }

                  else
                  {
                    v236 = 0;
                  }

                  if (a3)
                  {
                    v243 = *(a3 + 16);
                  }

                  else
                  {
                    v243 = 0;
                  }

                  if (a4)
                  {
                    v250 = *(a4 + 2);
                  }

                  else
                  {
                    v250 = 0;
                  }

                  if (v7)
                  {
                    v274 = v7;
                    do
                    {
                      v275 = *v46++;
                      v276 = v275;
                      v278 = *v236++;
                      v277 = v278;
                      v279 = *v243++;
                      v280 = v279;
                      if (v276)
                      {
                        v281 = v277;
                      }

                      else
                      {
                        v281 = v280;
                      }

                      *v250++ = v281;
                      --v274;
                    }

                    while (v274);
                  }

                  break;
                case 0:
                  v15 = a1 ? *(a1 + 2) : 0;
                  v432 = a2 ? *(a2 + 16) : 0;
                  v437 = a3 ? *(a3 + 16) : 0;
                  v442 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v521 = v7;
                    do
                    {
                      v522 = *v15++;
                      v523 = v522;
                      v524 = *v432++;
                      v525 = v524;
                      v526 = *v437++;
                      v527 = v526;
                      v528 = v525;
                      if (v523 == 0.0)
                      {
                        v529 = v527;
                      }

                      else
                      {
                        v529 = v528;
                      }

                      *v442++ = v529;
                      --v521;
                    }

                    while (v521);
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a6)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v62 = *(a1 + 2);
                  }

                  else
                  {
                    v62 = 0;
                  }

                  if (a2)
                  {
                    v549 = *(a2 + 16);
                  }

                  else
                  {
                    v549 = 0;
                  }

                  if (a3)
                  {
                    v552 = *(a3 + 16);
                  }

                  else
                  {
                    v552 = 0;
                  }

                  if (a4)
                  {
                    v555 = *(a4 + 2);
                  }

                  else
                  {
                    v555 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v565 = *v62++;
                    v566 = v565;
                    v567 = *v549++;
                    v568 = v567;
                    LOBYTE(v567) = *v552++;
                    v569 = LOBYTE(v567);
                    if (v566)
                    {
                      v570 = v568;
                    }

                    else
                    {
                      v570 = v569;
                    }

                    *v555++ = v570;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v58 = *(a1 + 2);
                  }

                  else
                  {
                    v58 = 0;
                  }

                  if (a2)
                  {
                    v356 = *(a2 + 16);
                  }

                  else
                  {
                    v356 = 0;
                  }

                  if (a3)
                  {
                    v365 = *(a3 + 16);
                  }

                  else
                  {
                    v365 = 0;
                  }

                  if (a4)
                  {
                    v374 = *(a4 + 2);
                  }

                  else
                  {
                    v374 = 0;
                  }

                  if (v7)
                  {
                    v424 = v7;
                    do
                    {
                      v425 = *v58++;
                      v426 = v425;
                      v427 = *v356++;
                      v428 = v427;
                      LODWORD(v427) = *v365++;
                      v429 = LODWORD(v427);
                      if (v426)
                      {
                        v430 = v428;
                      }

                      else
                      {
                        v430 = v429;
                      }

                      *v374++ = v430;
                      --v424;
                    }

                    while (v424);
                  }

                  break;
                case 0:
                  v27 = a1 ? *(a1 + 2) : 0;
                  v572 = a2 ? *(a2 + 16) : 0;
                  v575 = a3 ? *(a3 + 16) : 0;
                  v578 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v659 = v7;
                    do
                    {
                      v660 = *v27++;
                      v661 = v660;
                      v662 = *v572++;
                      v663 = v662;
                      LODWORD(v662) = *v575++;
                      v664 = LODWORD(v662);
                      if (v661 == 0.0)
                      {
                        v665 = v664;
                      }

                      else
                      {
                        v665 = v663;
                      }

                      *v578++ = v665;
                      --v659;
                    }

                    while (v659);
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v57 = *(a1 + 2);
                  }

                  else
                  {
                    v57 = 0;
                  }

                  if (a2)
                  {
                    v355 = *(a2 + 16);
                  }

                  else
                  {
                    v355 = 0;
                  }

                  if (a3)
                  {
                    v364 = *(a3 + 16);
                  }

                  else
                  {
                    v364 = 0;
                  }

                  if (a4)
                  {
                    v373 = *(a4 + 2);
                  }

                  else
                  {
                    v373 = 0;
                  }

                  if (v7)
                  {
                    v417 = v7;
                    do
                    {
                      v418 = *v57++;
                      v419 = v418;
                      v420 = *v355++;
                      v421 = v420;
                      LOBYTE(v420) = *v364;
                      v364 += 8;
                      v422 = LOBYTE(v420);
                      if (v419)
                      {
                        v423 = v421;
                      }

                      else
                      {
                        v423 = v422;
                      }

                      *v373++ = v423;
                      --v417;
                    }

                    while (v417);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v48 = *(a1 + 2);
                  }

                  else
                  {
                    v48 = 0;
                  }

                  if (a2)
                  {
                    v238 = *(a2 + 16);
                  }

                  else
                  {
                    v238 = 0;
                  }

                  if (a3)
                  {
                    v245 = *(a3 + 16);
                  }

                  else
                  {
                    v245 = 0;
                  }

                  if (a4)
                  {
                    v252 = *(a4 + 2);
                  }

                  else
                  {
                    v252 = 0;
                  }

                  if (v7)
                  {
                    v285 = v7;
                    do
                    {
                      v286 = *v48++;
                      v287 = v286;
                      v288 = *v238++;
                      v289 = v288;
                      v291 = *v245++;
                      v290 = v291;
                      if (v287)
                      {
                        v292 = v289;
                      }

                      else
                      {
                        v292 = v290;
                      }

                      *v252++ = v292;
                      --v285;
                    }

                    while (v285);
                  }

                  break;
                case 0:
                  v25 = a1 ? *(a1 + 2) : 0;
                  v433 = a2 ? *(a2 + 16) : 0;
                  v438 = a3 ? *(a3 + 16) : 0;
                  v443 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v530 = v7;
                    do
                    {
                      v531 = *v25++;
                      v532 = v531;
                      v533 = *v433++;
                      v534 = v533;
                      v535 = *v438++;
                      v536 = v535;
                      if (v532 == 0.0)
                      {
                        v537 = v536;
                      }

                      else
                      {
                        v537 = v534;
                      }

                      *v443++ = v537;
                      --v530;
                    }

                    while (v530);
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v63 = *(a1 + 2);
                  }

                  else
                  {
                    v63 = 0;
                  }

                  if (a2)
                  {
                    v573 = *(a2 + 16);
                  }

                  else
                  {
                    v573 = 0;
                  }

                  if (a3)
                  {
                    v576 = *(a3 + 16);
                  }

                  else
                  {
                    v576 = 0;
                  }

                  if (a4)
                  {
                    v579 = *(a4 + 2);
                  }

                  else
                  {
                    v579 = 0;
                  }

                  if (v7)
                  {
                    v666 = v7;
                    do
                    {
                      v667 = *v63++;
                      if (v667)
                      {
                        v668 = v573;
                      }

                      else
                      {
                        v668 = v576;
                      }

                      *v579++ = *v668;
                      ++v576;
                      ++v573;
                      --v666;
                    }

                    while (v666);
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v59 = *(a1 + 2);
                  }

                  else
                  {
                    v59 = 0;
                  }

                  if (a2)
                  {
                    v434 = *(a2 + 16);
                  }

                  else
                  {
                    v434 = 0;
                  }

                  if (a3)
                  {
                    v439 = *(a3 + 16);
                  }

                  else
                  {
                    v439 = 0;
                  }

                  if (a4)
                  {
                    v444 = *(a4 + 2);
                  }

                  else
                  {
                    v444 = 0;
                  }

                  if (v7)
                  {
                    v538 = v7;
                    do
                    {
                      v539 = *v59++;
                      if (v539)
                      {
                        v540 = v434;
                      }

                      else
                      {
                        v540 = v439;
                      }

                      *v444++ = *v540;
                      ++v439;
                      ++v434;
                      --v538;
                    }

                    while (v538);
                  }

                  break;
                case 0:
                  v10 = a1 ? *(a1 + 2) : 0;
                  v669 = a2 ? *(a2 + 16) : 0;
                  v670 = a3 ? *(a3 + 16) : 0;
                  v671 = a4 ? *(a4 + 2) : 0;
                  if (v7)
                  {
                    v672 = v7;
                    do
                    {
                      v673 = *v10++;
                      if (v673 == 0.0)
                      {
                        v674 = v670;
                      }

                      else
                      {
                        v674 = v669;
                      }

                      *v671++ = *v674;
                      ++v670;
                      ++v669;
                      --v672;
                    }

                    while (v672);
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
  }

  return a4;
}

uint64_t agxps_timeseries_select_tst(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  if (a1 && a4 && a5)
  {
    if ((*(a5 + 32) & 1) == 0 && (v7 = *(a1 + 8), v7 == *(a4 + 8)) && v7 == *(a5 + 8))
    {
      sub_24D78B68C(a1, a2, a3, a4, a5, a2, *a4);
      return a5;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

int *sub_24D78B68C(int *a1, uint64_t a2, unint64_t a3, uint64_t a4, int *a5, int a6, int a7)
{
  if (a5)
  {
    v7 = *(a5 + 1);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *a1;
  if (a5)
  {
LABEL_4:
    v9 = *a5;
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:
  switch(v8)
  {
    case 2:
      switch(a6)
      {
        case 2:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v81 = *(a1 + 2);
                  }

                  else
                  {
                    v81 = 0;
                  }

                  if (a4)
                  {
                    v423 = *(a4 + 16);
                  }

                  else
                  {
                    v423 = 0;
                  }

                  if (a5)
                  {
                    v436 = *(a5 + 2);
                  }

                  else
                  {
                    v436 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v485 = *v81++;
                    v484 = v485;
                    LOBYTE(v485) = *v423++;
                    v486 = v485;
                    if (v484)
                    {
                      v487 = a3;
                    }

                    else
                    {
                      v487 = v486;
                    }

                    *v436++ = v487;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v66 = *(a1 + 2);
                  }

                  else
                  {
                    v66 = 0;
                  }

                  if (a4)
                  {
                    v280 = *(a4 + 16);
                  }

                  else
                  {
                    v280 = 0;
                  }

                  if (a5)
                  {
                    v290 = *(a5 + 2);
                  }

                  else
                  {
                    v290 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v331 = *v66++;
                    v330 = v331;
                    v333 = *v280++;
                    v332 = v333;
                    if (v330)
                    {
                      v334 = a3;
                    }

                    else
                    {
                      v334 = v332;
                    }

                    *v290++ = v334;
                  }

                  break;
                case 0:
                  v33 = a1 ? *(a1 + 2) : 0;
                  v495 = a4 ? *(a4 + 16) : 0;
                  for (i = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v523 = *v33++;
                    v522 = v523;
                    LOBYTE(v523) = *v495++;
                    v524 = v523;
                    if (v522)
                    {
                      v525 = a3;
                    }

                    else
                    {
                      v525 = v524;
                    }

                    *i++ = v525;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v64 = *(a1 + 2);
                  }

                  else
                  {
                    v64 = 0;
                  }

                  if (a4)
                  {
                    v278 = *(a4 + 16);
                  }

                  else
                  {
                    v278 = 0;
                  }

                  if (a5)
                  {
                    v288 = *(a5 + 2);
                  }

                  else
                  {
                    v288 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v321 = *v64++;
                    v320 = v321;
                    v323 = *v278++;
                    v322 = v323;
                    if (v320)
                    {
                      v324 = a3;
                    }

                    else
                    {
                      v324 = v322;
                    }

                    *v288++ = v324;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v50 = *(a1 + 2);
                  }

                  else
                  {
                    v50 = 0;
                  }

                  if (a4)
                  {
                    v158 = *(a4 + 16);
                  }

                  else
                  {
                    v158 = 0;
                  }

                  if (a5)
                  {
                    v164 = *(a5 + 2);
                  }

                  else
                  {
                    v164 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v189 = *v50++;
                    v188 = v189;
                    v191 = *v158++;
                    v190 = v191;
                    if (v188)
                    {
                      v192 = a3;
                    }

                    else
                    {
                      v192 = v190;
                    }

                    *v164++ = v192;
                  }

                  break;
                case 0:
                  v27 = a1 ? *(a1 + 2) : 0;
                  v337 = a4 ? *(a4 + 16) : 0;
                  for (j = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v368 = *v27++;
                    v367 = v368;
                    v369 = *v337++;
                    v370 = v369;
                    if (v367)
                    {
                      v370 = a3;
                    }

                    *j++ = v370;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v84 = *(a1 + 2);
                  }

                  else
                  {
                    v84 = 0;
                  }

                  if (a4)
                  {
                    v497 = *(a4 + 16);
                  }

                  else
                  {
                    v497 = 0;
                  }

                  if (a5)
                  {
                    v505 = *(a5 + 2);
                  }

                  else
                  {
                    v505 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v531 = *v84++;
                    v530 = v531;
                    v532 = *v497++;
                    v533 = v532;
                    if (v530)
                    {
                      v534 = a3;
                    }

                    else
                    {
                      v534 = v533;
                    }

                    *v505++ = v534;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v69 = *(a1 + 2);
                  }

                  else
                  {
                    v69 = 0;
                  }

                  if (a4)
                  {
                    v340 = *(a4 + 16);
                  }

                  else
                  {
                    v340 = 0;
                  }

                  if (a5)
                  {
                    v352 = *(a5 + 2);
                  }

                  else
                  {
                    v352 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v382 = *v69++;
                    v381 = v382;
                    v383 = *v340++;
                    v384 = v383;
                    if (v381)
                    {
                      v385 = a3;
                    }

                    else
                    {
                      v385 = v384;
                    }

                    *v352++ = v385;
                  }

                  break;
                case 0:
                  v17 = a1 ? *(a1 + 2) : 0;
                  v543 = a4 ? *(a4 + 16) : 0;
                  for (k = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v556 = *v17++;
                    v555 = v556;
                    v557 = *v543++;
                    v558 = v557;
                    if (v555)
                    {
                      v558 = a3;
                    }

                    *k++ = v558;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v63 = *(a1 + 2);
                  }

                  else
                  {
                    v63 = 0;
                  }

                  if (a4)
                  {
                    v277 = *(a4 + 16);
                  }

                  else
                  {
                    v277 = 0;
                  }

                  if (a5)
                  {
                    v287 = *(a5 + 2);
                  }

                  else
                  {
                    v287 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v317 = *v63++;
                    v316 = v317;
                    LOBYTE(v317) = *v277++;
                    v318 = v317;
                    if (v316)
                    {
                      v319 = a3;
                    }

                    else
                    {
                      v319 = v318;
                    }

                    *v287++ = v319;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v49 = *(a1 + 2);
                  }

                  else
                  {
                    v49 = 0;
                  }

                  if (a4)
                  {
                    v157 = *(a4 + 16);
                  }

                  else
                  {
                    v157 = 0;
                  }

                  if (a5)
                  {
                    v163 = *(a5 + 2);
                  }

                  else
                  {
                    v163 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v184 = *v49++;
                    v183 = v184;
                    v186 = *v157++;
                    v185 = v186;
                    if (v183)
                    {
                      v187 = a3;
                    }

                    else
                    {
                      v187 = v185;
                    }

                    *v163++ = v187;
                  }

                  break;
                case 0:
                  v26 = a1 ? *(a1 + 2) : 0;
                  v336 = a4 ? *(a4 + 16) : 0;
                  for (m = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v364 = *v26++;
                    v363 = v364;
                    v365 = *v336++;
                    v366 = v365;
                    if (v363)
                    {
                      v366 = a3;
                    }

                    *m++ = v366;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v47 = *(a1 + 2);
                  }

                  else
                  {
                    v47 = 0;
                  }

                  if (a4)
                  {
                    v155 = *(a4 + 16);
                  }

                  else
                  {
                    v155 = 0;
                  }

                  if (a5)
                  {
                    v161 = *(a5 + 2);
                  }

                  else
                  {
                    v161 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v175 = *v47++;
                    v174 = v175;
                    v177 = *v155++;
                    v176 = v177;
                    if (v174)
                    {
                      v178 = a3;
                    }

                    else
                    {
                      v178 = v176;
                    }

                    *v161++ = v178;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v41 = *(a1 + 2);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  if (a4)
                  {
                    v101 = *(a4 + 16);
                  }

                  else
                  {
                    v101 = 0;
                  }

                  if (a5)
                  {
                    v105 = *(a5 + 2);
                  }

                  else
                  {
                    v105 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v121 = *v41++;
                    v120 = v121;
                    v123 = *v101++;
                    v122 = v123;
                    if (v120)
                    {
                      v124 = a3;
                    }

                    else
                    {
                      v124 = v122;
                    }

                    *v105++ = v124;
                  }

                  break;
                case 0:
                  v22 = a1 ? *(a1 + 2) : 0;
                  v195 = a4 ? *(a4 + 16) : 0;
                  for (n = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v225 = *v22++;
                    v224 = v225;
                    v227 = *v195++;
                    v226 = v227;
                    if (v224)
                    {
                      v228 = a3;
                    }

                    else
                    {
                      v228 = v226;
                    }

                    *n++ = v228;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v68 = *(a1 + 2);
                  }

                  else
                  {
                    v68 = 0;
                  }

                  if (a4)
                  {
                    v339 = *(a4 + 16);
                  }

                  else
                  {
                    v339 = 0;
                  }

                  if (a5)
                  {
                    v351 = *(a5 + 2);
                  }

                  else
                  {
                    v351 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v377 = *v68++;
                    v376 = v377;
                    v378 = *v339++;
                    v379 = v378;
                    if (v376)
                    {
                      v380 = a3;
                    }

                    else
                    {
                      v380 = v379;
                    }

                    *v351++ = v380;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v53 = *(a1 + 2);
                  }

                  else
                  {
                    v53 = 0;
                  }

                  if (a4)
                  {
                    v198 = *(a4 + 16);
                  }

                  else
                  {
                    v198 = 0;
                  }

                  if (a5)
                  {
                    v210 = *(a5 + 2);
                  }

                  else
                  {
                    v210 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v240 = *v53++;
                    v239 = v240;
                    v241 = *v198++;
                    v242 = v241;
                    if (v239)
                    {
                      v243 = a3;
                    }

                    else
                    {
                      v243 = v242;
                    }

                    *v210++ = v243;
                  }

                  break;
                case 0:
                  v15 = a1 ? *(a1 + 2) : 0;
                  v413 = a4 ? *(a4 + 16) : 0;
                  for (ii = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v443 = *v15++;
                    v442 = v443;
                    v444 = *v413++;
                    v445 = v444;
                    if (v442)
                    {
                      v445 = a3;
                    }

                    *ii++ = v445;
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v85 = *(a1 + 2);
                  }

                  else
                  {
                    v85 = 0;
                  }

                  if (a4)
                  {
                    v498 = *(a4 + 16);
                  }

                  else
                  {
                    v498 = 0;
                  }

                  if (a5)
                  {
                    v506 = *(a5 + 2);
                  }

                  else
                  {
                    v506 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v536 = *v85++;
                    v535 = v536;
                    LOBYTE(v536) = *v498++;
                    v537 = v536;
                    if (v535)
                    {
                      v538 = *&a3;
                    }

                    else
                    {
                      v538 = v537;
                    }

                    *v506++ = v538;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v74 = *(a1 + 2);
                  }

                  else
                  {
                    v74 = 0;
                  }

                  if (a4)
                  {
                    v345 = *(a4 + 16);
                  }

                  else
                  {
                    v345 = 0;
                  }

                  if (a5)
                  {
                    v357 = *(a5 + 2);
                  }

                  else
                  {
                    v357 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v404 = *v74++;
                    v403 = v404;
                    v406 = *v345++;
                    v405 = v406;
                    if (v403)
                    {
                      v407 = *&a3;
                    }

                    else
                    {
                      v407 = v405;
                    }

                    *v357++ = v407;
                  }

                  break;
                case 0:
                  v34 = a1 ? *(a1 + 2) : 0;
                  v544 = a4 ? *(a4 + 16) : 0;
                  for (jj = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v560 = *v34++;
                    v559 = v560;
                    v561 = *v544++;
                    v562 = v561;
                    if (v559)
                    {
                      v562 = *&a3;
                    }

                    *jj++ = v562;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v71 = *(a1 + 2);
                  }

                  else
                  {
                    v71 = 0;
                  }

                  if (a4)
                  {
                    v342 = *(a4 + 16);
                  }

                  else
                  {
                    v342 = 0;
                  }

                  if (a5)
                  {
                    v354 = *(a5 + 2);
                  }

                  else
                  {
                    v354 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v391 = *v71++;
                    v390 = v391;
                    LOBYTE(v391) = *v342;
                    v342 += 8;
                    v392 = v391;
                    if (v390)
                    {
                      v393 = *&a3;
                    }

                    else
                    {
                      v393 = v392;
                    }

                    *v354++ = v393;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v57 = *(a1 + 2);
                  }

                  else
                  {
                    v57 = 0;
                  }

                  if (a4)
                  {
                    v202 = *(a4 + 16);
                  }

                  else
                  {
                    v202 = 0;
                  }

                  if (a5)
                  {
                    v214 = *(a5 + 2);
                  }

                  else
                  {
                    v214 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v258 = *v57++;
                    v257 = v258;
                    v260 = *v202++;
                    v259 = v260;
                    if (v257)
                    {
                      v261 = *&a3;
                    }

                    else
                    {
                      v261 = v259;
                    }

                    *v214++ = v261;
                  }

                  break;
                case 0:
                  v29 = a1 ? *(a1 + 2) : 0;
                  v415 = a4 ? *(a4 + 16) : 0;
                  for (kk = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v450 = *v29++;
                    v449 = v450;
                    v451 = *v415++;
                    v452 = v451;
                    if (v449)
                    {
                      v452 = *&a3;
                    }

                    *kk++ = v452;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v87 = *(a1 + 2);
                  }

                  else
                  {
                    v87 = 0;
                  }

                  if (a4)
                  {
                    v546 = *(a4 + 16);
                  }

                  else
                  {
                    v546 = 0;
                  }

                  if (a5)
                  {
                    v552 = *(a5 + 2);
                  }

                  else
                  {
                    v552 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v567 = *v87++;
                    v566 = v567;
                    v568 = *v546++;
                    v569 = v568;
                    if (v566)
                    {
                      v569 = *&a3;
                    }

                    *v552++ = v569;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v77 = *(a1 + 2);
                  }

                  else
                  {
                    v77 = 0;
                  }

                  if (a4)
                  {
                    v419 = *(a4 + 16);
                  }

                  else
                  {
                    v419 = 0;
                  }

                  if (a5)
                  {
                    v432 = *(a5 + 2);
                  }

                  else
                  {
                    v432 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v467 = *v77++;
                    v466 = v467;
                    v468 = *v419++;
                    v469 = v468;
                    if (v466)
                    {
                      v469 = *&a3;
                    }

                    *v432++ = v469;
                  }

                  break;
                case 0:
                  v12 = a1 ? *(a1 + 2) : 0;
                  v579 = a4 ? *(a4 + 16) : 0;
                  for (mm = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v588 = *v12++;
                    v587 = v588;
                    v589 = *v579++;
                    v590 = v589;
                    if (v587)
                    {
                      v590 = *&a3;
                    }

                    *mm++ = v590;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
    case 1:
      switch(a6)
      {
        case 2:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v62 = *(a1 + 2);
                  }

                  else
                  {
                    v62 = 0;
                  }

                  if (a4)
                  {
                    v276 = *(a4 + 16);
                  }

                  else
                  {
                    v276 = 0;
                  }

                  if (a5)
                  {
                    v286 = *(a5 + 2);
                  }

                  else
                  {
                    v286 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v313 = *v62;
                    v62 += 8;
                    v312 = v313;
                    LOBYTE(v313) = *v276++;
                    v314 = v313;
                    if (v312)
                    {
                      v315 = a3;
                    }

                    else
                    {
                      v315 = v314;
                    }

                    *v286++ = v315;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v48 = *(a1 + 2);
                  }

                  else
                  {
                    v48 = 0;
                  }

                  if (a4)
                  {
                    v156 = *(a4 + 16);
                  }

                  else
                  {
                    v156 = 0;
                  }

                  if (a5)
                  {
                    v162 = *(a5 + 2);
                  }

                  else
                  {
                    v162 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v180 = *v48++;
                    v179 = v180;
                    LODWORD(v180) = *v156++;
                    v181 = v180;
                    if (v179)
                    {
                      v182 = a3;
                    }

                    else
                    {
                      v182 = v181;
                    }

                    *v162++ = v182;
                  }

                  break;
                case 0:
                  v25 = a1 ? *(a1 + 2) : 0;
                  v335 = a4 ? *(a4 + 16) : 0;
                  for (nn = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v360 = *v25++;
                    v359 = v360;
                    LOBYTE(v360) = *v335++;
                    v361 = v360;
                    if (v359)
                    {
                      v362 = a3;
                    }

                    else
                    {
                      v362 = v361;
                    }

                    *nn++ = v362;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v46 = *(a1 + 2);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if (a4)
                  {
                    v154 = *(a4 + 16);
                  }

                  else
                  {
                    v154 = 0;
                  }

                  if (a5)
                  {
                    v160 = *(a5 + 2);
                  }

                  else
                  {
                    v160 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v170 = *v46;
                    v46 += 8;
                    v169 = v170;
                    v172 = *v154++;
                    v171 = v172;
                    if (v169)
                    {
                      v173 = a3;
                    }

                    else
                    {
                      v173 = v171;
                    }

                    *v160++ = v173;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v40 = *(a1 + 2);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (a4)
                  {
                    v100 = *(a4 + 16);
                  }

                  else
                  {
                    v100 = 0;
                  }

                  if (a5)
                  {
                    v104 = *(a5 + 2);
                  }

                  else
                  {
                    v104 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v116 = *v40++;
                    v115 = v116;
                    v118 = *v100++;
                    v117 = v118;
                    if (v115)
                    {
                      v119 = a3;
                    }

                    else
                    {
                      v119 = v117;
                    }

                    *v104++ = v119;
                  }

                  break;
                case 0:
                  v21 = a1 ? *(a1 + 2) : 0;
                  v194 = a4 ? *(a4 + 16) : 0;
                  for (i1 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v221 = *v21++;
                    v220 = v221;
                    v222 = *v194++;
                    v223 = v222;
                    if (v220)
                    {
                      v223 = a3;
                    }

                    *i1++ = v223;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v67 = *(a1 + 2);
                  }

                  else
                  {
                    v67 = 0;
                  }

                  if (a4)
                  {
                    v338 = *(a4 + 16);
                  }

                  else
                  {
                    v338 = 0;
                  }

                  if (a5)
                  {
                    v350 = *(a5 + 2);
                  }

                  else
                  {
                    v350 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v372 = *v67;
                    v67 += 8;
                    v371 = v372;
                    v373 = *v338++;
                    v374 = v373;
                    if (v371)
                    {
                      v375 = a3;
                    }

                    else
                    {
                      v375 = v374;
                    }

                    *v350++ = v375;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v52 = *(a1 + 2);
                  }

                  else
                  {
                    v52 = 0;
                  }

                  if (a4)
                  {
                    v197 = *(a4 + 16);
                  }

                  else
                  {
                    v197 = 0;
                  }

                  if (a5)
                  {
                    v209 = *(a5 + 2);
                  }

                  else
                  {
                    v209 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v235 = *v52++;
                    v234 = v235;
                    v236 = *v197++;
                    v237 = v236;
                    if (v234)
                    {
                      v238 = a3;
                    }

                    else
                    {
                      v238 = v237;
                    }

                    *v209++ = v238;
                  }

                  break;
                case 0:
                  v14 = a1 ? *(a1 + 2) : 0;
                  v412 = a4 ? *(a4 + 16) : 0;
                  for (i2 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v439 = *v14++;
                    v438 = v439;
                    v440 = *v412++;
                    v441 = v440;
                    if (v438)
                    {
                      v441 = a3;
                    }

                    *i2++ = v441;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v45 = *(a1 + 2);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (a4)
                  {
                    v153 = *(a4 + 16);
                  }

                  else
                  {
                    v153 = 0;
                  }

                  if (a5)
                  {
                    v159 = *(a5 + 2);
                  }

                  else
                  {
                    v159 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v166 = *v45;
                    v45 += 8;
                    v165 = v166;
                    LOBYTE(v166) = *v153++;
                    v167 = v166;
                    if (v165)
                    {
                      v168 = a3;
                    }

                    else
                    {
                      v168 = v167;
                    }

                    *v159++ = v168;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v39 = *(a1 + 2);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  if (a4)
                  {
                    v99 = *(a4 + 16);
                  }

                  else
                  {
                    v99 = 0;
                  }

                  if (a5)
                  {
                    v103 = *(a5 + 2);
                  }

                  else
                  {
                    v103 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v112 = *v39++;
                    v111 = v112;
                    LODWORD(v112) = *v99++;
                    v113 = v112;
                    if (v111)
                    {
                      v114 = a3;
                    }

                    else
                    {
                      v114 = v113;
                    }

                    *v103++ = v114;
                  }

                  break;
                case 0:
                  v20 = a1 ? *(a1 + 2) : 0;
                  v193 = a4 ? *(a4 + 16) : 0;
                  for (i3 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v218 = *v20++;
                    v217 = v218;
                    LODWORD(v218) = *v193++;
                    v219 = v218;
                    if (v217)
                    {
                      v219 = a3;
                    }

                    *i3++ = v219;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v38 = *(a1 + 2);
                  }

                  else
                  {
                    v38 = 0;
                  }

                  if (a4)
                  {
                    v98 = *(a4 + 16);
                  }

                  else
                  {
                    v98 = 0;
                  }

                  if (a5)
                  {
                    v102 = *(a5 + 2);
                  }

                  else
                  {
                    v102 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v107 = *v38;
                    v38 += 8;
                    v106 = v107;
                    v109 = *v98++;
                    v108 = v109;
                    if (v106)
                    {
                      v110 = a3;
                    }

                    else
                    {
                      v110 = v108;
                    }

                    *v102++ = v110;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v37 = *(a1 + 2);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  if (a4)
                  {
                    v91 = *(a4 + 16);
                  }

                  else
                  {
                    v91 = 0;
                  }

                  if (a5)
                  {
                    v92 = *(a5 + 2);
                  }

                  else
                  {
                    v92 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v94 = *v37++;
                    v93 = v94;
                    v96 = *v91++;
                    v95 = v96;
                    if (v93)
                    {
                      v97 = a3;
                    }

                    else
                    {
                      v97 = v95;
                    }

                    *v92++ = v97;
                  }

                  break;
                case 0:
                  v19 = a1 ? *(a1 + 2) : 0;
                  v125 = a4 ? *(a4 + 16) : 0;
                  for (i4 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v134 = *v19++;
                    v133 = v134;
                    v136 = *v125++;
                    v135 = v136;
                    if (v133)
                    {
                      v137 = a3;
                    }

                    else
                    {
                      v137 = v135;
                    }

                    *i4++ = v137;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v51 = *(a1 + 2);
                  }

                  else
                  {
                    v51 = 0;
                  }

                  if (a4)
                  {
                    v196 = *(a4 + 16);
                  }

                  else
                  {
                    v196 = 0;
                  }

                  if (a5)
                  {
                    v208 = *(a5 + 2);
                  }

                  else
                  {
                    v208 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v230 = *v51;
                    v51 += 8;
                    v229 = v230;
                    v231 = *v196++;
                    v232 = v231;
                    if (v229)
                    {
                      v233 = a3;
                    }

                    else
                    {
                      v233 = v232;
                    }

                    *v208++ = v233;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v42 = *(a1 + 2);
                  }

                  else
                  {
                    v42 = 0;
                  }

                  if (a4)
                  {
                    v126 = *(a4 + 16);
                  }

                  else
                  {
                    v126 = 0;
                  }

                  if (a5)
                  {
                    v130 = *(a5 + 2);
                  }

                  else
                  {
                    v130 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v139 = *v42++;
                    v138 = v139;
                    v140 = *v126++;
                    v141 = v140;
                    if (v138)
                    {
                      v142 = a3;
                    }

                    else
                    {
                      v142 = v141;
                    }

                    *v130++ = v142;
                  }

                  break;
                case 0:
                  v13 = a1 ? *(a1 + 2) : 0;
                  v271 = a4 ? *(a4 + 16) : 0;
                  for (i5 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v292 = *v13++;
                    v291 = v292;
                    v293 = *v271++;
                    v294 = v293;
                    if (v291)
                    {
                      v294 = a3;
                    }

                    *i5++ = v294;
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v70 = *(a1 + 2);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if (a4)
                  {
                    v341 = *(a4 + 16);
                  }

                  else
                  {
                    v341 = 0;
                  }

                  if (a5)
                  {
                    v353 = *(a5 + 2);
                  }

                  else
                  {
                    v353 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v387 = *v70;
                    v70 += 8;
                    v386 = v387;
                    LOBYTE(v387) = *v341++;
                    v388 = v387;
                    if (v386)
                    {
                      v389 = *&a3;
                    }

                    else
                    {
                      v389 = v388;
                    }

                    *v353++ = v389;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v56 = *(a1 + 2);
                  }

                  else
                  {
                    v56 = 0;
                  }

                  if (a4)
                  {
                    v201 = *(a4 + 16);
                  }

                  else
                  {
                    v201 = 0;
                  }

                  if (a5)
                  {
                    v213 = *(a5 + 2);
                  }

                  else
                  {
                    v213 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v254 = *v56++;
                    v253 = v254;
                    LODWORD(v254) = *v201++;
                    v255 = v254;
                    if (v253)
                    {
                      v256 = *&a3;
                    }

                    else
                    {
                      v256 = v255;
                    }

                    *v213++ = v256;
                  }

                  break;
                case 0:
                  v28 = a1 ? *(a1 + 2) : 0;
                  v414 = a4 ? *(a4 + 16) : 0;
                  for (i6 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v447 = *v28++;
                    v446 = v447;
                    LODWORD(v447) = *v414++;
                    v448 = v447;
                    if (v446)
                    {
                      v448 = *&a3;
                    }

                    *i6++ = v448;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v54 = *(a1 + 2);
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if (a4)
                  {
                    v199 = *(a4 + 16);
                  }

                  else
                  {
                    v199 = 0;
                  }

                  if (a5)
                  {
                    v211 = *(a5 + 2);
                  }

                  else
                  {
                    v211 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v245 = *v54;
                    v54 += 8;
                    v244 = v245;
                    LOBYTE(v245) = *v199;
                    v199 += 8;
                    v246 = v245;
                    if (v244)
                    {
                      v247 = *&a3;
                    }

                    else
                    {
                      v247 = v246;
                    }

                    *v211++ = v247;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v43 = *(a1 + 2);
                  }

                  else
                  {
                    v43 = 0;
                  }

                  if (a4)
                  {
                    v127 = *(a4 + 16);
                  }

                  else
                  {
                    v127 = 0;
                  }

                  if (a5)
                  {
                    v131 = *(a5 + 2);
                  }

                  else
                  {
                    v131 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v144 = *v43++;
                    v143 = v144;
                    v146 = *v127++;
                    v145 = v146;
                    if (v143)
                    {
                      v147 = *&a3;
                    }

                    else
                    {
                      v147 = v145;
                    }

                    *v131++ = v147;
                  }

                  break;
                case 0:
                  v23 = a1 ? *(a1 + 2) : 0;
                  v272 = a4 ? *(a4 + 16) : 0;
                  for (i7 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v296 = *v23++;
                    v295 = v296;
                    v297 = *v272++;
                    v298 = v297;
                    if (v295)
                    {
                      v298 = *&a3;
                    }

                    *i7++ = v298;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v76 = *(a1 + 2);
                  }

                  else
                  {
                    v76 = 0;
                  }

                  if (a4)
                  {
                    v418 = *(a4 + 16);
                  }

                  else
                  {
                    v418 = 0;
                  }

                  if (a5)
                  {
                    v431 = *(a5 + 2);
                  }

                  else
                  {
                    v431 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v463 = *v76;
                    v76 += 8;
                    v462 = v463;
                    v464 = *v418++;
                    v465 = v464;
                    if (v462)
                    {
                      v465 = *&a3;
                    }

                    *v431++ = v465;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v60 = *(a1 + 2);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if (a4)
                  {
                    v274 = *(a4 + 16);
                  }

                  else
                  {
                    v274 = 0;
                  }

                  if (a5)
                  {
                    v284 = *(a5 + 2);
                  }

                  else
                  {
                    v284 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v304 = *v60++;
                    v303 = v304;
                    v305 = *v274++;
                    v306 = v305;
                    if (v303)
                    {
                      v306 = *&a3;
                    }

                    *v284++ = v306;
                  }

                  break;
                case 0:
                  v11 = a1 ? *(a1 + 2) : 0;
                  v492 = a4 ? *(a4 + 16) : 0;
                  for (i8 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v509 = *v11++;
                    v508 = v509;
                    v510 = *v492++;
                    v511 = v510;
                    if (v508)
                    {
                      v511 = *&a3;
                    }

                    *i8++ = v511;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
    case 0:
      switch(a6)
      {
        case 2:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v86 = *(a1 + 2);
                  }

                  else
                  {
                    v86 = 0;
                  }

                  if (a4)
                  {
                    v499 = *(a4 + 16);
                  }

                  else
                  {
                    v499 = 0;
                  }

                  if (a5)
                  {
                    v507 = *(a5 + 2);
                  }

                  else
                  {
                    v507 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v539 = *v86++;
                    v540 = v539;
                    LOBYTE(v539) = *v499++;
                    v541 = LOBYTE(v539);
                    if (v540)
                    {
                      v542 = a3;
                    }

                    else
                    {
                      v542 = v541;
                    }

                    *v507++ = v542;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v75 = *(a1 + 2);
                  }

                  else
                  {
                    v75 = 0;
                  }

                  if (a4)
                  {
                    v346 = *(a4 + 16);
                  }

                  else
                  {
                    v346 = 0;
                  }

                  if (a5)
                  {
                    v358 = *(a5 + 2);
                  }

                  else
                  {
                    v358 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v408 = *v75++;
                    v409 = v408;
                    LODWORD(v408) = *v346++;
                    v410 = LODWORD(v408);
                    if (v409)
                    {
                      v411 = a3;
                    }

                    else
                    {
                      v411 = v410;
                    }

                    *v358++ = v411;
                  }

                  break;
                case 0:
                  v35 = a1 ? *(a1 + 2) : 0;
                  v545 = a4 ? *(a4 + 16) : 0;
                  for (i9 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v563 = *v35++;
                    v564 = v563;
                    LOBYTE(v563) = *v545++;
                    v565 = LOBYTE(v563);
                    if (v564 != 0.0)
                    {
                      v565 = a3;
                    }

                    *i9++ = v565;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v73 = *(a1 + 2);
                  }

                  else
                  {
                    v73 = 0;
                  }

                  if (a4)
                  {
                    v344 = *(a4 + 16);
                  }

                  else
                  {
                    v344 = 0;
                  }

                  if (a5)
                  {
                    v356 = *(a5 + 2);
                  }

                  else
                  {
                    v356 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v398 = *v73++;
                    v399 = v398;
                    v401 = *v344++;
                    v400 = v401;
                    if (v399)
                    {
                      v402 = a3;
                    }

                    else
                    {
                      v402 = v400;
                    }

                    *v356++ = v402;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v59 = *(a1 + 2);
                  }

                  else
                  {
                    v59 = 0;
                  }

                  if (a4)
                  {
                    v204 = *(a4 + 16);
                  }

                  else
                  {
                    v204 = 0;
                  }

                  if (a5)
                  {
                    v216 = *(a5 + 2);
                  }

                  else
                  {
                    v216 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v266 = *v59++;
                    v267 = v266;
                    v269 = *v204++;
                    v268 = v269;
                    if (v267)
                    {
                      v270 = a3;
                    }

                    else
                    {
                      v270 = v268;
                    }

                    *v216++ = v270;
                  }

                  break;
                case 0:
                  v31 = a1 ? *(a1 + 2) : 0;
                  v417 = a4 ? *(a4 + 16) : 0;
                  for (i10 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v457 = *v31++;
                    v458 = v457;
                    v459 = *v417++;
                    v460 = v459;
                    if (v458 == 0.0)
                    {
                      v461 = v460;
                    }

                    else
                    {
                      v461 = a3;
                    }

                    *i10++ = v461;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v88 = *(a1 + 2);
                  }

                  else
                  {
                    v88 = 0;
                  }

                  if (a4)
                  {
                    v547 = *(a4 + 16);
                  }

                  else
                  {
                    v547 = 0;
                  }

                  if (a5)
                  {
                    v553 = *(a5 + 2);
                  }

                  else
                  {
                    v553 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v570 = *v88++;
                    v571 = v570;
                    v572 = *v547++;
                    v573 = v572;
                    if (v571)
                    {
                      v574 = a3;
                    }

                    else
                    {
                      v574 = v573;
                    }

                    *v553++ = v574;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v79 = *(a1 + 2);
                  }

                  else
                  {
                    v79 = 0;
                  }

                  if (a4)
                  {
                    v421 = *(a4 + 16);
                  }

                  else
                  {
                    v421 = 0;
                  }

                  if (a5)
                  {
                    v434 = *(a5 + 2);
                  }

                  else
                  {
                    v434 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v475 = *v79++;
                    v476 = v475;
                    v477 = *v421++;
                    v478 = v477;
                    if (v476)
                    {
                      v479 = a3;
                    }

                    else
                    {
                      v479 = v478;
                    }

                    *v434++ = v479;
                  }

                  break;
                case 0:
                  v18 = a1 ? *(a1 + 2) : 0;
                  v580 = a4 ? *(a4 + 16) : 0;
                  for (i11 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v591 = *v18++;
                    v592 = v591;
                    v593 = *v580++;
                    v594 = v593;
                    if (v592 == 0.0)
                    {
                      v595 = v594;
                    }

                    else
                    {
                      v595 = a3;
                    }

                    *i11++ = v595;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v72 = *(a1 + 2);
                  }

                  else
                  {
                    v72 = 0;
                  }

                  if (a4)
                  {
                    v343 = *(a4 + 16);
                  }

                  else
                  {
                    v343 = 0;
                  }

                  if (a5)
                  {
                    v355 = *(a5 + 2);
                  }

                  else
                  {
                    v355 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v394 = *v72++;
                    v395 = v394;
                    LOBYTE(v394) = *v343++;
                    v396 = LOBYTE(v394);
                    if (v395)
                    {
                      v397 = a3;
                    }

                    else
                    {
                      v397 = v396;
                    }

                    *v355++ = v397;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v58 = *(a1 + 2);
                  }

                  else
                  {
                    v58 = 0;
                  }

                  if (a4)
                  {
                    v203 = *(a4 + 16);
                  }

                  else
                  {
                    v203 = 0;
                  }

                  if (a5)
                  {
                    v215 = *(a5 + 2);
                  }

                  else
                  {
                    v215 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v262 = *v58++;
                    v263 = v262;
                    LODWORD(v262) = *v203++;
                    v264 = LODWORD(v262);
                    if (v263)
                    {
                      v265 = a3;
                    }

                    else
                    {
                      v265 = v264;
                    }

                    *v215++ = v265;
                  }

                  break;
                case 0:
                  v30 = a1 ? *(a1 + 2) : 0;
                  v416 = a4 ? *(a4 + 16) : 0;
                  for (i12 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v453 = *v30++;
                    v454 = v453;
                    LODWORD(v453) = *v416++;
                    v455 = LODWORD(v453);
                    if (v454 == 0.0)
                    {
                      v456 = v455;
                    }

                    else
                    {
                      v456 = a3;
                    }

                    *i12++ = v456;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v55 = *(a1 + 2);
                  }

                  else
                  {
                    v55 = 0;
                  }

                  if (a4)
                  {
                    v200 = *(a4 + 16);
                  }

                  else
                  {
                    v200 = 0;
                  }

                  if (a5)
                  {
                    v212 = *(a5 + 2);
                  }

                  else
                  {
                    v212 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v248 = *v55++;
                    v249 = v248;
                    v251 = *v200++;
                    v250 = v251;
                    if (v249)
                    {
                      v252 = a3;
                    }

                    else
                    {
                      v252 = v250;
                    }

                    *v212++ = v252;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v44 = *(a1 + 2);
                  }

                  else
                  {
                    v44 = 0;
                  }

                  if (a4)
                  {
                    v128 = *(a4 + 16);
                  }

                  else
                  {
                    v128 = 0;
                  }

                  if (a5)
                  {
                    v132 = *(a5 + 2);
                  }

                  else
                  {
                    v132 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v148 = *v44++;
                    v149 = v148;
                    v151 = *v128++;
                    v150 = v151;
                    if (v149)
                    {
                      v152 = a3;
                    }

                    else
                    {
                      v152 = v150;
                    }

                    *v132++ = v152;
                  }

                  break;
                case 0:
                  v24 = a1 ? *(a1 + 2) : 0;
                  v273 = a4 ? *(a4 + 16) : 0;
                  for (i13 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v299 = *v24++;
                    v300 = v299;
                    v302 = *v273++;
                    v301 = v302;
                    if (v300 != 0.0)
                    {
                      v301 = a3;
                    }

                    *i13++ = v301;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v78 = *(a1 + 2);
                  }

                  else
                  {
                    v78 = 0;
                  }

                  if (a4)
                  {
                    v420 = *(a4 + 16);
                  }

                  else
                  {
                    v420 = 0;
                  }

                  if (a5)
                  {
                    v433 = *(a5 + 2);
                  }

                  else
                  {
                    v433 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v470 = *v78++;
                    v471 = v470;
                    v472 = *v420++;
                    v473 = v472;
                    if (v471)
                    {
                      v474 = a3;
                    }

                    else
                    {
                      v474 = v473;
                    }

                    *v433++ = v474;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v61 = *(a1 + 2);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  if (a4)
                  {
                    v275 = *(a4 + 16);
                  }

                  else
                  {
                    v275 = 0;
                  }

                  if (a5)
                  {
                    v285 = *(a5 + 2);
                  }

                  else
                  {
                    v285 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v307 = *v61++;
                    v308 = v307;
                    v309 = *v275++;
                    v310 = v309;
                    if (v308)
                    {
                      v311 = a3;
                    }

                    else
                    {
                      v311 = v310;
                    }

                    *v285++ = v311;
                  }

                  break;
                case 0:
                  v16 = a1 ? *(a1 + 2) : 0;
                  v493 = a4 ? *(a4 + 16) : 0;
                  for (i14 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v512 = *v16++;
                    v513 = v512;
                    v514 = *v493++;
                    v515 = v514;
                    if (v513 == 0.0)
                    {
                      v516 = v515;
                    }

                    else
                    {
                      v516 = a3;
                    }

                    *i14++ = v516;
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v89 = *(a1 + 2);
                  }

                  else
                  {
                    v89 = 0;
                  }

                  if (a4)
                  {
                    v548 = *(a4 + 16);
                  }

                  else
                  {
                    v548 = 0;
                  }

                  if (a5)
                  {
                    v554 = *(a5 + 2);
                  }

                  else
                  {
                    v554 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v575 = *v89++;
                    v576 = v575;
                    LOBYTE(v575) = *v548++;
                    v577 = LOBYTE(v575);
                    if (v576)
                    {
                      v578 = *&a3;
                    }

                    else
                    {
                      v578 = v577;
                    }

                    *v554++ = v578;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v82 = *(a1 + 2);
                  }

                  else
                  {
                    v82 = 0;
                  }

                  if (a4)
                  {
                    v424 = *(a4 + 16);
                  }

                  else
                  {
                    v424 = 0;
                  }

                  if (a5)
                  {
                    v437 = *(a5 + 2);
                  }

                  else
                  {
                    v437 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v488 = *v82++;
                    v489 = v488;
                    LODWORD(v488) = *v424++;
                    v490 = LODWORD(v488);
                    if (v489)
                    {
                      v491 = *&a3;
                    }

                    else
                    {
                      v491 = v490;
                    }

                    *v437++ = v491;
                  }

                  break;
                case 0:
                  v36 = a1 ? *(a1 + 2) : 0;
                  v581 = a4 ? *(a4 + 16) : 0;
                  for (i15 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v596 = *v36++;
                    v597 = v596;
                    LODWORD(v596) = *v581++;
                    v598 = LODWORD(v596);
                    if (v597 == 0.0)
                    {
                      v599 = v598;
                    }

                    else
                    {
                      v599 = *&a3;
                    }

                    *i15++ = v599;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v80 = *(a1 + 2);
                  }

                  else
                  {
                    v80 = 0;
                  }

                  if (a4)
                  {
                    v422 = *(a4 + 16);
                  }

                  else
                  {
                    v422 = 0;
                  }

                  if (a5)
                  {
                    v435 = *(a5 + 2);
                  }

                  else
                  {
                    v435 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v480 = *v80++;
                    v481 = v480;
                    LOBYTE(v480) = *v422;
                    v422 += 8;
                    v482 = LOBYTE(v480);
                    if (v481)
                    {
                      v483 = *&a3;
                    }

                    else
                    {
                      v483 = v482;
                    }

                    *v435++ = v483;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v65 = *(a1 + 2);
                  }

                  else
                  {
                    v65 = 0;
                  }

                  if (a4)
                  {
                    v279 = *(a4 + 16);
                  }

                  else
                  {
                    v279 = 0;
                  }

                  if (a5)
                  {
                    v289 = *(a5 + 2);
                  }

                  else
                  {
                    v289 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v325 = *v65++;
                    v326 = v325;
                    v328 = *v279++;
                    v327 = v328;
                    if (v326)
                    {
                      v329 = *&a3;
                    }

                    else
                    {
                      v329 = v327;
                    }

                    *v289++ = v329;
                  }

                  break;
                case 0:
                  v32 = a1 ? *(a1 + 2) : 0;
                  v494 = a4 ? *(a4 + 16) : 0;
                  for (i16 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v517 = *v32++;
                    v518 = v517;
                    v519 = *v494++;
                    v520 = v519;
                    if (v518 == 0.0)
                    {
                      v521 = v520;
                    }

                    else
                    {
                      v521 = *&a3;
                    }

                    *i16++ = v521;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v90 = *(a1 + 2);
                  }

                  else
                  {
                    v90 = 0;
                  }

                  if (a4)
                  {
                    v582 = *(a4 + 16);
                  }

                  else
                  {
                    v582 = 0;
                  }

                  if (a5)
                  {
                    v586 = *(a5 + 2);
                  }

                  else
                  {
                    v586 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v600 = *v90++;
                    v601 = v600;
                    v602 = *v582++;
                    v603 = v602;
                    if (v601)
                    {
                      v603 = *&a3;
                    }

                    *v586++ = v603;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v83 = *(a1 + 2);
                  }

                  else
                  {
                    v83 = 0;
                  }

                  if (a4)
                  {
                    v496 = *(a4 + 16);
                  }

                  else
                  {
                    v496 = 0;
                  }

                  if (a5)
                  {
                    v504 = *(a5 + 2);
                  }

                  else
                  {
                    v504 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v526 = *v83++;
                    v527 = v526;
                    v528 = *v496++;
                    v529 = v528;
                    if (v527)
                    {
                      v529 = *&a3;
                    }

                    *v504++ = v529;
                  }

                  break;
                case 0:
                  v10 = a1 ? *(a1 + 2) : 0;
                  v604 = a4 ? *(a4 + 16) : 0;
                  for (i17 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v606 = *v10++;
                    v607 = v606;
                    v608 = *v604++;
                    v609 = v608;
                    if (v607 == 0.0)
                    {
                      v610 = v609;
                    }

                    else
                    {
                      v610 = *&a3;
                    }

                    *i17++ = v610;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
  }

  return a5;
}

uint64_t agxps_timeseries_select_tts(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = 0;
  if (a1 && a2 && a5)
  {
    if ((*(a5 + 32) & 1) == 0 && (v7 = *(a1 + 8), v7 == *(a2 + 8)) && v7 == *(a5 + 8))
    {
      sub_24D78D66C(a1, a2, a3, a4, a5, *a2, a3);
      return a5;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

int *sub_24D78D66C(int *a1, uint64_t a2, uint64_t a3, unint64_t a4, int *a5, int a6, int a7)
{
  if (a5)
  {
    v7 = *(a5 + 1);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = *a1;
  if (a5)
  {
LABEL_4:
    v9 = *a5;
    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:
  switch(v8)
  {
    case 2:
      switch(a6)
      {
        case 2:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v81 = *(a1 + 2);
                  }

                  else
                  {
                    v81 = 0;
                  }

                  if (a2)
                  {
                    v423 = *(a2 + 16);
                  }

                  else
                  {
                    v423 = 0;
                  }

                  if (a5)
                  {
                    v436 = *(a5 + 2);
                  }

                  else
                  {
                    v436 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v484 = *v81++;
                    v483 = v484;
                    LOBYTE(v484) = *v423++;
                    v485 = v484;
                    if (v483)
                    {
                      v486 = v485;
                    }

                    else
                    {
                      v486 = a4;
                    }

                    *v436++ = v486;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v66 = *(a1 + 2);
                  }

                  else
                  {
                    v66 = 0;
                  }

                  if (a2)
                  {
                    v280 = *(a2 + 16);
                  }

                  else
                  {
                    v280 = 0;
                  }

                  if (a5)
                  {
                    v290 = *(a5 + 2);
                  }

                  else
                  {
                    v290 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v331 = *v66++;
                    v330 = v331;
                    v333 = *v280++;
                    v332 = v333;
                    if (v330)
                    {
                      v334 = v332;
                    }

                    else
                    {
                      v334 = a4;
                    }

                    *v290++ = v334;
                  }

                  break;
                case 0:
                  v33 = a1 ? *(a1 + 2) : 0;
                  v495 = a2 ? *(a2 + 16) : 0;
                  for (i = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v523 = *v33++;
                    v522 = v523;
                    LOBYTE(v523) = *v495++;
                    v524 = v523;
                    if (v522)
                    {
                      v525 = v524;
                    }

                    else
                    {
                      v525 = a4;
                    }

                    *i++ = v525;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v64 = *(a1 + 2);
                  }

                  else
                  {
                    v64 = 0;
                  }

                  if (a2)
                  {
                    v278 = *(a2 + 16);
                  }

                  else
                  {
                    v278 = 0;
                  }

                  if (a5)
                  {
                    v288 = *(a5 + 2);
                  }

                  else
                  {
                    v288 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v322 = *v64++;
                    v321 = v322;
                    LOBYTE(v322) = *v278++;
                    v323 = v322;
                    if (v321)
                    {
                      v324 = v323;
                    }

                    else
                    {
                      v324 = a4;
                    }

                    *v288++ = v324;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v50 = *(a1 + 2);
                  }

                  else
                  {
                    v50 = 0;
                  }

                  if (a2)
                  {
                    v158 = *(a2 + 16);
                  }

                  else
                  {
                    v158 = 0;
                  }

                  if (a5)
                  {
                    v164 = *(a5 + 2);
                  }

                  else
                  {
                    v164 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v189 = *v50++;
                    v188 = v189;
                    v191 = *v158++;
                    v190 = v191;
                    if (v188)
                    {
                      v192 = v190;
                    }

                    else
                    {
                      v192 = a4;
                    }

                    *v164++ = v192;
                  }

                  break;
                case 0:
                  v27 = a1 ? *(a1 + 2) : 0;
                  v337 = a2 ? *(a2 + 16) : 0;
                  for (j = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v368 = *v27++;
                    v367 = v368;
                    v369 = *v337++;
                    v370 = v369;
                    if (!v367)
                    {
                      v370 = a4;
                    }

                    *j++ = v370;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v84 = *(a1 + 2);
                  }

                  else
                  {
                    v84 = 0;
                  }

                  if (a2)
                  {
                    v497 = *(a2 + 16);
                  }

                  else
                  {
                    v497 = 0;
                  }

                  if (a5)
                  {
                    v505 = *(a5 + 2);
                  }

                  else
                  {
                    v505 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v531 = *v84++;
                    v530 = v531;
                    LOBYTE(v531) = *v497++;
                    v532 = v531;
                    if (v530)
                    {
                      v533 = v532;
                    }

                    else
                    {
                      v533 = *&a4;
                    }

                    *v505++ = v533;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v69 = *(a1 + 2);
                  }

                  else
                  {
                    v69 = 0;
                  }

                  if (a2)
                  {
                    v340 = *(a2 + 16);
                  }

                  else
                  {
                    v340 = 0;
                  }

                  if (a5)
                  {
                    v352 = *(a5 + 2);
                  }

                  else
                  {
                    v352 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v380 = *v69++;
                    v379 = v380;
                    v382 = *v340++;
                    v381 = v382;
                    if (v379)
                    {
                      v383 = v381;
                    }

                    else
                    {
                      v383 = *&a4;
                    }

                    *v352++ = v383;
                  }

                  break;
                case 0:
                  v17 = a1 ? *(a1 + 2) : 0;
                  v543 = a2 ? *(a2 + 16) : 0;
                  for (k = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v556 = *v17++;
                    v555 = v556;
                    v557 = *v543++;
                    v558 = v557;
                    if (!v555)
                    {
                      v558 = *&a4;
                    }

                    *k++ = v558;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v63 = *(a1 + 2);
                  }

                  else
                  {
                    v63 = 0;
                  }

                  if (a2)
                  {
                    v277 = *(a2 + 16);
                  }

                  else
                  {
                    v277 = 0;
                  }

                  if (a5)
                  {
                    v287 = *(a5 + 2);
                  }

                  else
                  {
                    v287 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v317 = *v63++;
                    v316 = v317;
                    v319 = *v277++;
                    v318 = v319;
                    if (v316)
                    {
                      v320 = v318;
                    }

                    else
                    {
                      v320 = a4;
                    }

                    *v287++ = v320;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v49 = *(a1 + 2);
                  }

                  else
                  {
                    v49 = 0;
                  }

                  if (a2)
                  {
                    v157 = *(a2 + 16);
                  }

                  else
                  {
                    v157 = 0;
                  }

                  if (a5)
                  {
                    v163 = *(a5 + 2);
                  }

                  else
                  {
                    v163 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v184 = *v49++;
                    v183 = v184;
                    v186 = *v157++;
                    v185 = v186;
                    if (v183)
                    {
                      v187 = v185;
                    }

                    else
                    {
                      v187 = a4;
                    }

                    *v163++ = v187;
                  }

                  break;
                case 0:
                  v26 = a1 ? *(a1 + 2) : 0;
                  v336 = a2 ? *(a2 + 16) : 0;
                  for (m = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v364 = *v26++;
                    v363 = v364;
                    v365 = *v336++;
                    v366 = v365;
                    if (!v363)
                    {
                      v366 = a4;
                    }

                    *m++ = v366;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v47 = *(a1 + 2);
                  }

                  else
                  {
                    v47 = 0;
                  }

                  if (a2)
                  {
                    v155 = *(a2 + 16);
                  }

                  else
                  {
                    v155 = 0;
                  }

                  if (a5)
                  {
                    v161 = *(a5 + 2);
                  }

                  else
                  {
                    v161 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v175 = *v47++;
                    v174 = v175;
                    v177 = *v155++;
                    v176 = v177;
                    if (v174)
                    {
                      v178 = v176;
                    }

                    else
                    {
                      v178 = a4;
                    }

                    *v161++ = v178;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v41 = *(a1 + 2);
                  }

                  else
                  {
                    v41 = 0;
                  }

                  if (a2)
                  {
                    v101 = *(a2 + 16);
                  }

                  else
                  {
                    v101 = 0;
                  }

                  if (a5)
                  {
                    v105 = *(a5 + 2);
                  }

                  else
                  {
                    v105 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v121 = *v41++;
                    v120 = v121;
                    v123 = *v101++;
                    v122 = v123;
                    if (v120)
                    {
                      v124 = v122;
                    }

                    else
                    {
                      v124 = a4;
                    }

                    *v105++ = v124;
                  }

                  break;
                case 0:
                  v22 = a1 ? *(a1 + 2) : 0;
                  v195 = a2 ? *(a2 + 16) : 0;
                  for (n = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v225 = *v22++;
                    v224 = v225;
                    v227 = *v195++;
                    v226 = v227;
                    if (v224)
                    {
                      v228 = v226;
                    }

                    else
                    {
                      v228 = a4;
                    }

                    *n++ = v228;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v68 = *(a1 + 2);
                  }

                  else
                  {
                    v68 = 0;
                  }

                  if (a2)
                  {
                    v339 = *(a2 + 16);
                  }

                  else
                  {
                    v339 = 0;
                  }

                  if (a5)
                  {
                    v351 = *(a5 + 2);
                  }

                  else
                  {
                    v351 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v376 = *v68++;
                    v375 = v376;
                    LOBYTE(v376) = *v339;
                    v339 += 8;
                    v377 = v376;
                    if (v375)
                    {
                      v378 = v377;
                    }

                    else
                    {
                      v378 = *&a4;
                    }

                    *v351++ = v378;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v53 = *(a1 + 2);
                  }

                  else
                  {
                    v53 = 0;
                  }

                  if (a2)
                  {
                    v198 = *(a2 + 16);
                  }

                  else
                  {
                    v198 = 0;
                  }

                  if (a5)
                  {
                    v210 = *(a5 + 2);
                  }

                  else
                  {
                    v210 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v238 = *v53++;
                    v237 = v238;
                    v240 = *v198++;
                    v239 = v240;
                    if (v237)
                    {
                      v241 = v239;
                    }

                    else
                    {
                      v241 = *&a4;
                    }

                    *v210++ = v241;
                  }

                  break;
                case 0:
                  v15 = a1 ? *(a1 + 2) : 0;
                  v413 = a2 ? *(a2 + 16) : 0;
                  for (ii = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v442 = *v15++;
                    v441 = v442;
                    v443 = *v413++;
                    v444 = v443;
                    if (!v441)
                    {
                      v444 = *&a4;
                    }

                    *ii++ = v444;
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v85 = *(a1 + 2);
                  }

                  else
                  {
                    v85 = 0;
                  }

                  if (a2)
                  {
                    v498 = *(a2 + 16);
                  }

                  else
                  {
                    v498 = 0;
                  }

                  if (a5)
                  {
                    v506 = *(a5 + 2);
                  }

                  else
                  {
                    v506 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v535 = *v85++;
                    v534 = v535;
                    v536 = *v498++;
                    v537 = v536;
                    if (v534)
                    {
                      v538 = v537;
                    }

                    else
                    {
                      v538 = a4;
                    }

                    *v506++ = v538;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v74 = *(a1 + 2);
                  }

                  else
                  {
                    v74 = 0;
                  }

                  if (a2)
                  {
                    v345 = *(a2 + 16);
                  }

                  else
                  {
                    v345 = 0;
                  }

                  if (a5)
                  {
                    v357 = *(a5 + 2);
                  }

                  else
                  {
                    v357 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v404 = *v74++;
                    v403 = v404;
                    v405 = *v345++;
                    v406 = v405;
                    if (v403)
                    {
                      v407 = v406;
                    }

                    else
                    {
                      v407 = a4;
                    }

                    *v357++ = v407;
                  }

                  break;
                case 0:
                  v34 = a1 ? *(a1 + 2) : 0;
                  v544 = a2 ? *(a2 + 16) : 0;
                  for (jj = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v560 = *v34++;
                    v559 = v560;
                    v561 = *v544++;
                    v562 = v561;
                    if (!v559)
                    {
                      v562 = a4;
                    }

                    *jj++ = v562;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v71 = *(a1 + 2);
                  }

                  else
                  {
                    v71 = 0;
                  }

                  if (a2)
                  {
                    v342 = *(a2 + 16);
                  }

                  else
                  {
                    v342 = 0;
                  }

                  if (a5)
                  {
                    v354 = *(a5 + 2);
                  }

                  else
                  {
                    v354 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v390 = *v71++;
                    v389 = v390;
                    v391 = *v342++;
                    v392 = v391;
                    if (v389)
                    {
                      v393 = v392;
                    }

                    else
                    {
                      v393 = a4;
                    }

                    *v354++ = v393;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v57 = *(a1 + 2);
                  }

                  else
                  {
                    v57 = 0;
                  }

                  if (a2)
                  {
                    v202 = *(a2 + 16);
                  }

                  else
                  {
                    v202 = 0;
                  }

                  if (a5)
                  {
                    v214 = *(a5 + 2);
                  }

                  else
                  {
                    v214 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v258 = *v57++;
                    v257 = v258;
                    v259 = *v202++;
                    v260 = v259;
                    if (v257)
                    {
                      v261 = v260;
                    }

                    else
                    {
                      v261 = a4;
                    }

                    *v214++ = v261;
                  }

                  break;
                case 0:
                  v29 = a1 ? *(a1 + 2) : 0;
                  v415 = a2 ? *(a2 + 16) : 0;
                  for (kk = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v450 = *v29++;
                    v449 = v450;
                    v451 = *v415++;
                    v452 = v451;
                    if (!v449)
                    {
                      v452 = a4;
                    }

                    *kk++ = v452;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v87 = *(a1 + 2);
                  }

                  else
                  {
                    v87 = 0;
                  }

                  if (a2)
                  {
                    v546 = *(a2 + 16);
                  }

                  else
                  {
                    v546 = 0;
                  }

                  if (a5)
                  {
                    v552 = *(a5 + 2);
                  }

                  else
                  {
                    v552 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v567 = *v87++;
                    v566 = v567;
                    v568 = *v546++;
                    v569 = v568;
                    if (!v566)
                    {
                      v569 = *&a4;
                    }

                    *v552++ = v569;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v77 = *(a1 + 2);
                  }

                  else
                  {
                    v77 = 0;
                  }

                  if (a2)
                  {
                    v419 = *(a2 + 16);
                  }

                  else
                  {
                    v419 = 0;
                  }

                  if (a5)
                  {
                    v432 = *(a5 + 2);
                  }

                  else
                  {
                    v432 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v467 = *v77++;
                    v466 = v467;
                    v468 = *v419++;
                    v469 = v468;
                    if (!v466)
                    {
                      v469 = *&a4;
                    }

                    *v432++ = v469;
                  }

                  break;
                case 0:
                  v12 = a1 ? *(a1 + 2) : 0;
                  v579 = a2 ? *(a2 + 16) : 0;
                  for (mm = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v588 = *v12++;
                    v587 = v588;
                    v589 = *v579++;
                    v590 = v589;
                    if (!v587)
                    {
                      v590 = *&a4;
                    }

                    *mm++ = v590;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
    case 1:
      switch(a6)
      {
        case 2:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v62 = *(a1 + 2);
                  }

                  else
                  {
                    v62 = 0;
                  }

                  if (a2)
                  {
                    v276 = *(a2 + 16);
                  }

                  else
                  {
                    v276 = 0;
                  }

                  if (a5)
                  {
                    v286 = *(a5 + 2);
                  }

                  else
                  {
                    v286 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v313 = *v62;
                    v62 += 8;
                    v312 = v313;
                    LOBYTE(v313) = *v276++;
                    v314 = v313;
                    if (v312)
                    {
                      v315 = v314;
                    }

                    else
                    {
                      v315 = a4;
                    }

                    *v286++ = v315;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v48 = *(a1 + 2);
                  }

                  else
                  {
                    v48 = 0;
                  }

                  if (a2)
                  {
                    v156 = *(a2 + 16);
                  }

                  else
                  {
                    v156 = 0;
                  }

                  if (a5)
                  {
                    v162 = *(a5 + 2);
                  }

                  else
                  {
                    v162 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v180 = *v48++;
                    v179 = v180;
                    LODWORD(v180) = *v156++;
                    v181 = v180;
                    if (v179)
                    {
                      v182 = v181;
                    }

                    else
                    {
                      v182 = a4;
                    }

                    *v162++ = v182;
                  }

                  break;
                case 0:
                  v25 = a1 ? *(a1 + 2) : 0;
                  v335 = a2 ? *(a2 + 16) : 0;
                  for (nn = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v360 = *v25++;
                    v359 = v360;
                    LOBYTE(v360) = *v335++;
                    v361 = v360;
                    if (v359)
                    {
                      v362 = v361;
                    }

                    else
                    {
                      v362 = a4;
                    }

                    *nn++ = v362;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v46 = *(a1 + 2);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if (a2)
                  {
                    v154 = *(a2 + 16);
                  }

                  else
                  {
                    v154 = 0;
                  }

                  if (a5)
                  {
                    v160 = *(a5 + 2);
                  }

                  else
                  {
                    v160 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v171 = *v46;
                    v46 += 8;
                    v170 = v171;
                    LOBYTE(v171) = *v154++;
                    v172 = v171;
                    if (v170)
                    {
                      v173 = v172;
                    }

                    else
                    {
                      v173 = a4;
                    }

                    *v160++ = v173;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v40 = *(a1 + 2);
                  }

                  else
                  {
                    v40 = 0;
                  }

                  if (a2)
                  {
                    v100 = *(a2 + 16);
                  }

                  else
                  {
                    v100 = 0;
                  }

                  if (a5)
                  {
                    v104 = *(a5 + 2);
                  }

                  else
                  {
                    v104 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v117 = *v40++;
                    v116 = v117;
                    LODWORD(v117) = *v100++;
                    v118 = v117;
                    if (v116)
                    {
                      v119 = v118;
                    }

                    else
                    {
                      v119 = a4;
                    }

                    *v104++ = v119;
                  }

                  break;
                case 0:
                  v21 = a1 ? *(a1 + 2) : 0;
                  v194 = a2 ? *(a2 + 16) : 0;
                  for (i1 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v222 = *v21++;
                    v221 = v222;
                    LODWORD(v222) = *v194++;
                    v223 = v222;
                    if (!v221)
                    {
                      v223 = a4;
                    }

                    *i1++ = v223;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v67 = *(a1 + 2);
                  }

                  else
                  {
                    v67 = 0;
                  }

                  if (a2)
                  {
                    v338 = *(a2 + 16);
                  }

                  else
                  {
                    v338 = 0;
                  }

                  if (a5)
                  {
                    v350 = *(a5 + 2);
                  }

                  else
                  {
                    v350 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v372 = *v67;
                    v67 += 8;
                    v371 = v372;
                    LOBYTE(v372) = *v338++;
                    v373 = v372;
                    if (v371)
                    {
                      v374 = v373;
                    }

                    else
                    {
                      v374 = *&a4;
                    }

                    *v350++ = v374;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v52 = *(a1 + 2);
                  }

                  else
                  {
                    v52 = 0;
                  }

                  if (a2)
                  {
                    v197 = *(a2 + 16);
                  }

                  else
                  {
                    v197 = 0;
                  }

                  if (a5)
                  {
                    v209 = *(a5 + 2);
                  }

                  else
                  {
                    v209 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v234 = *v52++;
                    v233 = v234;
                    LODWORD(v234) = *v197++;
                    v235 = v234;
                    if (v233)
                    {
                      v236 = v235;
                    }

                    else
                    {
                      v236 = *&a4;
                    }

                    *v209++ = v236;
                  }

                  break;
                case 0:
                  v14 = a1 ? *(a1 + 2) : 0;
                  v412 = a2 ? *(a2 + 16) : 0;
                  for (i2 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v439 = *v14++;
                    v438 = v439;
                    LODWORD(v439) = *v412++;
                    v440 = v439;
                    if (!v438)
                    {
                      v440 = *&a4;
                    }

                    *i2++ = v440;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v45 = *(a1 + 2);
                  }

                  else
                  {
                    v45 = 0;
                  }

                  if (a2)
                  {
                    v153 = *(a2 + 16);
                  }

                  else
                  {
                    v153 = 0;
                  }

                  if (a5)
                  {
                    v159 = *(a5 + 2);
                  }

                  else
                  {
                    v159 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v166 = *v45;
                    v45 += 8;
                    v165 = v166;
                    v168 = *v153++;
                    v167 = v168;
                    if (v165)
                    {
                      v169 = v167;
                    }

                    else
                    {
                      v169 = a4;
                    }

                    *v159++ = v169;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v39 = *(a1 + 2);
                  }

                  else
                  {
                    v39 = 0;
                  }

                  if (a2)
                  {
                    v99 = *(a2 + 16);
                  }

                  else
                  {
                    v99 = 0;
                  }

                  if (a5)
                  {
                    v103 = *(a5 + 2);
                  }

                  else
                  {
                    v103 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v112 = *v39++;
                    v111 = v112;
                    v114 = *v99++;
                    v113 = v114;
                    if (v111)
                    {
                      v115 = v113;
                    }

                    else
                    {
                      v115 = a4;
                    }

                    *v103++ = v115;
                  }

                  break;
                case 0:
                  v20 = a1 ? *(a1 + 2) : 0;
                  v193 = a2 ? *(a2 + 16) : 0;
                  for (i3 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v218 = *v20++;
                    v217 = v218;
                    v219 = *v193++;
                    v220 = v219;
                    if (!v217)
                    {
                      v220 = a4;
                    }

                    *i3++ = v220;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v38 = *(a1 + 2);
                  }

                  else
                  {
                    v38 = 0;
                  }

                  if (a2)
                  {
                    v98 = *(a2 + 16);
                  }

                  else
                  {
                    v98 = 0;
                  }

                  if (a5)
                  {
                    v102 = *(a5 + 2);
                  }

                  else
                  {
                    v102 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v107 = *v38;
                    v38 += 8;
                    v106 = v107;
                    v109 = *v98++;
                    v108 = v109;
                    if (v106)
                    {
                      v110 = v108;
                    }

                    else
                    {
                      v110 = a4;
                    }

                    *v102++ = v110;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v37 = *(a1 + 2);
                  }

                  else
                  {
                    v37 = 0;
                  }

                  if (a2)
                  {
                    v91 = *(a2 + 16);
                  }

                  else
                  {
                    v91 = 0;
                  }

                  if (a5)
                  {
                    v92 = *(a5 + 2);
                  }

                  else
                  {
                    v92 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v94 = *v37++;
                    v93 = v94;
                    v96 = *v91++;
                    v95 = v96;
                    if (v93)
                    {
                      v97 = v95;
                    }

                    else
                    {
                      v97 = a4;
                    }

                    *v92++ = v97;
                  }

                  break;
                case 0:
                  v19 = a1 ? *(a1 + 2) : 0;
                  v125 = a2 ? *(a2 + 16) : 0;
                  for (i4 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v134 = *v19++;
                    v133 = v134;
                    v136 = *v125++;
                    v135 = v136;
                    if (v133)
                    {
                      v137 = v135;
                    }

                    else
                    {
                      v137 = a4;
                    }

                    *i4++ = v137;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v51 = *(a1 + 2);
                  }

                  else
                  {
                    v51 = 0;
                  }

                  if (a2)
                  {
                    v196 = *(a2 + 16);
                  }

                  else
                  {
                    v196 = 0;
                  }

                  if (a5)
                  {
                    v208 = *(a5 + 2);
                  }

                  else
                  {
                    v208 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v230 = *v51;
                    v51 += 8;
                    v229 = v230;
                    LOBYTE(v230) = *v196;
                    v196 += 8;
                    v231 = v230;
                    if (v229)
                    {
                      v232 = v231;
                    }

                    else
                    {
                      v232 = *&a4;
                    }

                    *v208++ = v232;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v42 = *(a1 + 2);
                  }

                  else
                  {
                    v42 = 0;
                  }

                  if (a2)
                  {
                    v126 = *(a2 + 16);
                  }

                  else
                  {
                    v126 = 0;
                  }

                  if (a5)
                  {
                    v130 = *(a5 + 2);
                  }

                  else
                  {
                    v130 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v139 = *v42++;
                    v138 = v139;
                    v141 = *v126++;
                    v140 = v141;
                    if (v138)
                    {
                      v142 = v140;
                    }

                    else
                    {
                      v142 = *&a4;
                    }

                    *v130++ = v142;
                  }

                  break;
                case 0:
                  v13 = a1 ? *(a1 + 2) : 0;
                  v271 = a2 ? *(a2 + 16) : 0;
                  for (i5 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v292 = *v13++;
                    v291 = v292;
                    v293 = *v271++;
                    v294 = v293;
                    if (!v291)
                    {
                      v294 = *&a4;
                    }

                    *i5++ = v294;
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v70 = *(a1 + 2);
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if (a2)
                  {
                    v341 = *(a2 + 16);
                  }

                  else
                  {
                    v341 = 0;
                  }

                  if (a5)
                  {
                    v353 = *(a5 + 2);
                  }

                  else
                  {
                    v353 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v385 = *v70;
                    v70 += 8;
                    v384 = v385;
                    v386 = *v341++;
                    v387 = v386;
                    if (v384)
                    {
                      v388 = v387;
                    }

                    else
                    {
                      v388 = a4;
                    }

                    *v353++ = v388;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v56 = *(a1 + 2);
                  }

                  else
                  {
                    v56 = 0;
                  }

                  if (a2)
                  {
                    v201 = *(a2 + 16);
                  }

                  else
                  {
                    v201 = 0;
                  }

                  if (a5)
                  {
                    v213 = *(a5 + 2);
                  }

                  else
                  {
                    v213 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v253 = *v56++;
                    v252 = v253;
                    v254 = *v201++;
                    v255 = v254;
                    if (v252)
                    {
                      v256 = v255;
                    }

                    else
                    {
                      v256 = a4;
                    }

                    *v213++ = v256;
                  }

                  break;
                case 0:
                  v28 = a1 ? *(a1 + 2) : 0;
                  v414 = a2 ? *(a2 + 16) : 0;
                  for (i6 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v446 = *v28++;
                    v445 = v446;
                    v447 = *v414++;
                    v448 = v447;
                    if (!v445)
                    {
                      v448 = a4;
                    }

                    *i6++ = v448;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v54 = *(a1 + 2);
                  }

                  else
                  {
                    v54 = 0;
                  }

                  if (a2)
                  {
                    v199 = *(a2 + 16);
                  }

                  else
                  {
                    v199 = 0;
                  }

                  if (a5)
                  {
                    v211 = *(a5 + 2);
                  }

                  else
                  {
                    v211 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v243 = *v54;
                    v54 += 8;
                    v242 = v243;
                    v244 = *v199++;
                    v245 = v244;
                    if (v242)
                    {
                      v246 = v245;
                    }

                    else
                    {
                      v246 = a4;
                    }

                    *v211++ = v246;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v43 = *(a1 + 2);
                  }

                  else
                  {
                    v43 = 0;
                  }

                  if (a2)
                  {
                    v127 = *(a2 + 16);
                  }

                  else
                  {
                    v127 = 0;
                  }

                  if (a5)
                  {
                    v131 = *(a5 + 2);
                  }

                  else
                  {
                    v131 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v144 = *v43++;
                    v143 = v144;
                    v145 = *v127++;
                    v146 = v145;
                    if (v143)
                    {
                      v147 = v146;
                    }

                    else
                    {
                      v147 = a4;
                    }

                    *v131++ = v147;
                  }

                  break;
                case 0:
                  v23 = a1 ? *(a1 + 2) : 0;
                  v272 = a2 ? *(a2 + 16) : 0;
                  for (i7 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v296 = *v23++;
                    v295 = v296;
                    v297 = *v272++;
                    v298 = v297;
                    if (!v295)
                    {
                      v298 = a4;
                    }

                    *i7++ = v298;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v76 = *(a1 + 2);
                  }

                  else
                  {
                    v76 = 0;
                  }

                  if (a2)
                  {
                    v418 = *(a2 + 16);
                  }

                  else
                  {
                    v418 = 0;
                  }

                  if (a5)
                  {
                    v431 = *(a5 + 2);
                  }

                  else
                  {
                    v431 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v463 = *v76;
                    v76 += 8;
                    v462 = v463;
                    v464 = *v418++;
                    v465 = v464;
                    if (!v462)
                    {
                      v465 = *&a4;
                    }

                    *v431++ = v465;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v60 = *(a1 + 2);
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if (a2)
                  {
                    v274 = *(a2 + 16);
                  }

                  else
                  {
                    v274 = 0;
                  }

                  if (a5)
                  {
                    v284 = *(a5 + 2);
                  }

                  else
                  {
                    v284 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v304 = *v60++;
                    v303 = v304;
                    v305 = *v274++;
                    v306 = v305;
                    if (!v303)
                    {
                      v306 = *&a4;
                    }

                    *v284++ = v306;
                  }

                  break;
                case 0:
                  v11 = a1 ? *(a1 + 2) : 0;
                  v492 = a2 ? *(a2 + 16) : 0;
                  for (i8 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v509 = *v11++;
                    v508 = v509;
                    v510 = *v492++;
                    v511 = v510;
                    if (!v508)
                    {
                      v511 = *&a4;
                    }

                    *i8++ = v511;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
    case 0:
      switch(a6)
      {
        case 2:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v86 = *(a1 + 2);
                  }

                  else
                  {
                    v86 = 0;
                  }

                  if (a2)
                  {
                    v499 = *(a2 + 16);
                  }

                  else
                  {
                    v499 = 0;
                  }

                  if (a5)
                  {
                    v507 = *(a5 + 2);
                  }

                  else
                  {
                    v507 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v539 = *v86++;
                    v540 = v539;
                    LOBYTE(v539) = *v499++;
                    v541 = LOBYTE(v539);
                    if (v540)
                    {
                      v542 = v541;
                    }

                    else
                    {
                      v542 = a4;
                    }

                    *v507++ = v542;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v75 = *(a1 + 2);
                  }

                  else
                  {
                    v75 = 0;
                  }

                  if (a2)
                  {
                    v346 = *(a2 + 16);
                  }

                  else
                  {
                    v346 = 0;
                  }

                  if (a5)
                  {
                    v358 = *(a5 + 2);
                  }

                  else
                  {
                    v358 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v408 = *v75++;
                    v409 = v408;
                    LODWORD(v408) = *v346++;
                    v410 = LODWORD(v408);
                    if (v409)
                    {
                      v411 = v410;
                    }

                    else
                    {
                      v411 = a4;
                    }

                    *v358++ = v411;
                  }

                  break;
                case 0:
                  v35 = a1 ? *(a1 + 2) : 0;
                  v545 = a2 ? *(a2 + 16) : 0;
                  for (i9 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v563 = *v35++;
                    v564 = v563;
                    LOBYTE(v563) = *v545++;
                    v565 = LOBYTE(v563);
                    if (v564 == 0.0)
                    {
                      v565 = a4;
                    }

                    *i9++ = v565;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v73 = *(a1 + 2);
                  }

                  else
                  {
                    v73 = 0;
                  }

                  if (a2)
                  {
                    v344 = *(a2 + 16);
                  }

                  else
                  {
                    v344 = 0;
                  }

                  if (a5)
                  {
                    v356 = *(a5 + 2);
                  }

                  else
                  {
                    v356 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v399 = *v73++;
                    v400 = v399;
                    LOBYTE(v399) = *v344++;
                    v401 = LOBYTE(v399);
                    if (v400)
                    {
                      v402 = v401;
                    }

                    else
                    {
                      v402 = a4;
                    }

                    *v356++ = v402;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v59 = *(a1 + 2);
                  }

                  else
                  {
                    v59 = 0;
                  }

                  if (a2)
                  {
                    v204 = *(a2 + 16);
                  }

                  else
                  {
                    v204 = 0;
                  }

                  if (a5)
                  {
                    v216 = *(a5 + 2);
                  }

                  else
                  {
                    v216 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v267 = *v59++;
                    v268 = v267;
                    LODWORD(v267) = *v204++;
                    v269 = LODWORD(v267);
                    if (v268)
                    {
                      v270 = v269;
                    }

                    else
                    {
                      v270 = a4;
                    }

                    *v216++ = v270;
                  }

                  break;
                case 0:
                  v31 = a1 ? *(a1 + 2) : 0;
                  v417 = a2 ? *(a2 + 16) : 0;
                  for (i10 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v458 = *v31++;
                    v459 = v458;
                    LODWORD(v458) = *v417++;
                    v460 = LODWORD(v458);
                    if (v459 == 0.0)
                    {
                      v461 = a4;
                    }

                    else
                    {
                      v461 = v460;
                    }

                    *i10++ = v461;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v88 = *(a1 + 2);
                  }

                  else
                  {
                    v88 = 0;
                  }

                  if (a2)
                  {
                    v547 = *(a2 + 16);
                  }

                  else
                  {
                    v547 = 0;
                  }

                  if (a5)
                  {
                    v553 = *(a5 + 2);
                  }

                  else
                  {
                    v553 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v570 = *v88++;
                    v571 = v570;
                    LOBYTE(v570) = *v547++;
                    v572 = LOBYTE(v570);
                    if (v571)
                    {
                      v573 = v572;
                    }

                    else
                    {
                      v573 = *&a4;
                    }

                    *v553++ = v573;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v79 = *(a1 + 2);
                  }

                  else
                  {
                    v79 = 0;
                  }

                  if (a2)
                  {
                    v421 = *(a2 + 16);
                  }

                  else
                  {
                    v421 = 0;
                  }

                  if (a5)
                  {
                    v434 = *(a5 + 2);
                  }

                  else
                  {
                    v434 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v474 = *v79++;
                    v475 = v474;
                    LODWORD(v474) = *v421++;
                    v476 = LODWORD(v474);
                    if (v475)
                    {
                      v477 = v476;
                    }

                    else
                    {
                      v477 = *&a4;
                    }

                    *v434++ = v477;
                  }

                  break;
                case 0:
                  v18 = a1 ? *(a1 + 2) : 0;
                  v580 = a2 ? *(a2 + 16) : 0;
                  for (i11 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v591 = *v18++;
                    v592 = v591;
                    LODWORD(v591) = *v580++;
                    v593 = LODWORD(v591);
                    if (v592 == 0.0)
                    {
                      v594 = *&a4;
                    }

                    else
                    {
                      v594 = v593;
                    }

                    *i11++ = v594;
                  }

                  break;
              }

              break;
          }

          break;
        case 1:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v72 = *(a1 + 2);
                  }

                  else
                  {
                    v72 = 0;
                  }

                  if (a2)
                  {
                    v343 = *(a2 + 16);
                  }

                  else
                  {
                    v343 = 0;
                  }

                  if (a5)
                  {
                    v355 = *(a5 + 2);
                  }

                  else
                  {
                    v355 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v394 = *v72++;
                    v395 = v394;
                    v397 = *v343++;
                    v396 = v397;
                    if (v395)
                    {
                      v398 = v396;
                    }

                    else
                    {
                      v398 = a4;
                    }

                    *v355++ = v398;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v58 = *(a1 + 2);
                  }

                  else
                  {
                    v58 = 0;
                  }

                  if (a2)
                  {
                    v203 = *(a2 + 16);
                  }

                  else
                  {
                    v203 = 0;
                  }

                  if (a5)
                  {
                    v215 = *(a5 + 2);
                  }

                  else
                  {
                    v215 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v262 = *v58++;
                    v263 = v262;
                    v265 = *v203++;
                    v264 = v265;
                    if (v263)
                    {
                      v266 = v264;
                    }

                    else
                    {
                      v266 = a4;
                    }

                    *v215++ = v266;
                  }

                  break;
                case 0:
                  v30 = a1 ? *(a1 + 2) : 0;
                  v416 = a2 ? *(a2 + 16) : 0;
                  for (i12 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v453 = *v30++;
                    v454 = v453;
                    v455 = *v416++;
                    v456 = v455;
                    if (v454 == 0.0)
                    {
                      v457 = a4;
                    }

                    else
                    {
                      v457 = v456;
                    }

                    *i12++ = v457;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v55 = *(a1 + 2);
                  }

                  else
                  {
                    v55 = 0;
                  }

                  if (a2)
                  {
                    v200 = *(a2 + 16);
                  }

                  else
                  {
                    v200 = 0;
                  }

                  if (a5)
                  {
                    v212 = *(a5 + 2);
                  }

                  else
                  {
                    v212 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v247 = *v55++;
                    v248 = v247;
                    v250 = *v200++;
                    v249 = v250;
                    if (v248)
                    {
                      v251 = v249;
                    }

                    else
                    {
                      v251 = a4;
                    }

                    *v212++ = v251;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v44 = *(a1 + 2);
                  }

                  else
                  {
                    v44 = 0;
                  }

                  if (a2)
                  {
                    v128 = *(a2 + 16);
                  }

                  else
                  {
                    v128 = 0;
                  }

                  if (a5)
                  {
                    v132 = *(a5 + 2);
                  }

                  else
                  {
                    v132 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v148 = *v44++;
                    v149 = v148;
                    v151 = *v128++;
                    v150 = v151;
                    if (v149)
                    {
                      v152 = v150;
                    }

                    else
                    {
                      v152 = a4;
                    }

                    *v132++ = v152;
                  }

                  break;
                case 0:
                  v24 = a1 ? *(a1 + 2) : 0;
                  v273 = a2 ? *(a2 + 16) : 0;
                  for (i13 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v299 = *v24++;
                    v300 = v299;
                    v302 = *v273++;
                    v301 = v302;
                    if (v300 == 0.0)
                    {
                      v301 = a4;
                    }

                    *i13++ = v301;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v78 = *(a1 + 2);
                  }

                  else
                  {
                    v78 = 0;
                  }

                  if (a2)
                  {
                    v420 = *(a2 + 16);
                  }

                  else
                  {
                    v420 = 0;
                  }

                  if (a5)
                  {
                    v433 = *(a5 + 2);
                  }

                  else
                  {
                    v433 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v470 = *v78++;
                    v471 = v470;
                    LOBYTE(v470) = *v420;
                    v420 += 8;
                    v472 = LOBYTE(v470);
                    if (v471)
                    {
                      v473 = v472;
                    }

                    else
                    {
                      v473 = *&a4;
                    }

                    *v433++ = v473;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v61 = *(a1 + 2);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  if (a2)
                  {
                    v275 = *(a2 + 16);
                  }

                  else
                  {
                    v275 = 0;
                  }

                  if (a5)
                  {
                    v285 = *(a5 + 2);
                  }

                  else
                  {
                    v285 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v307 = *v61++;
                    v308 = v307;
                    v310 = *v275++;
                    v309 = v310;
                    if (v308)
                    {
                      v311 = v309;
                    }

                    else
                    {
                      v311 = *&a4;
                    }

                    *v285++ = v311;
                  }

                  break;
                case 0:
                  v16 = a1 ? *(a1 + 2) : 0;
                  v493 = a2 ? *(a2 + 16) : 0;
                  for (i14 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v512 = *v16++;
                    v513 = v512;
                    v514 = *v493++;
                    v515 = v514;
                    if (v513 == 0.0)
                    {
                      v516 = *&a4;
                    }

                    else
                    {
                      v516 = v515;
                    }

                    *i14++ = v516;
                  }

                  break;
              }

              break;
          }

          break;
        case 0:
          switch(a7)
          {
            case 2:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v89 = *(a1 + 2);
                  }

                  else
                  {
                    v89 = 0;
                  }

                  if (a2)
                  {
                    v548 = *(a2 + 16);
                  }

                  else
                  {
                    v548 = 0;
                  }

                  if (a5)
                  {
                    v554 = *(a5 + 2);
                  }

                  else
                  {
                    v554 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v574 = *v89++;
                    v575 = v574;
                    v576 = *v548++;
                    v577 = v576;
                    if (v575)
                    {
                      v578 = v577;
                    }

                    else
                    {
                      v578 = a4;
                    }

                    *v554++ = v578;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v82 = *(a1 + 2);
                  }

                  else
                  {
                    v82 = 0;
                  }

                  if (a2)
                  {
                    v424 = *(a2 + 16);
                  }

                  else
                  {
                    v424 = 0;
                  }

                  if (a5)
                  {
                    v437 = *(a5 + 2);
                  }

                  else
                  {
                    v437 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v487 = *v82++;
                    v488 = v487;
                    v489 = *v424++;
                    v490 = v489;
                    if (v488)
                    {
                      v491 = v490;
                    }

                    else
                    {
                      v491 = a4;
                    }

                    *v437++ = v491;
                  }

                  break;
                case 0:
                  v36 = a1 ? *(a1 + 2) : 0;
                  v581 = a2 ? *(a2 + 16) : 0;
                  for (i15 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v595 = *v36++;
                    v596 = v595;
                    v597 = *v581++;
                    v598 = v597;
                    if (v596 == 0.0)
                    {
                      v599 = a4;
                    }

                    else
                    {
                      v599 = v598;
                    }

                    *i15++ = v599;
                  }

                  break;
              }

              break;
            case 1:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v80 = *(a1 + 2);
                  }

                  else
                  {
                    v80 = 0;
                  }

                  if (a2)
                  {
                    v422 = *(a2 + 16);
                  }

                  else
                  {
                    v422 = 0;
                  }

                  if (a5)
                  {
                    v435 = *(a5 + 2);
                  }

                  else
                  {
                    v435 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v478 = *v80++;
                    v479 = v478;
                    v480 = *v422++;
                    v481 = v480;
                    if (v479)
                    {
                      v482 = v481;
                    }

                    else
                    {
                      v482 = a4;
                    }

                    *v435++ = v482;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v65 = *(a1 + 2);
                  }

                  else
                  {
                    v65 = 0;
                  }

                  if (a2)
                  {
                    v279 = *(a2 + 16);
                  }

                  else
                  {
                    v279 = 0;
                  }

                  if (a5)
                  {
                    v289 = *(a5 + 2);
                  }

                  else
                  {
                    v289 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v325 = *v65++;
                    v326 = v325;
                    v327 = *v279++;
                    v328 = v327;
                    if (v326)
                    {
                      v329 = v328;
                    }

                    else
                    {
                      v329 = a4;
                    }

                    *v289++ = v329;
                  }

                  break;
                case 0:
                  v32 = a1 ? *(a1 + 2) : 0;
                  v494 = a2 ? *(a2 + 16) : 0;
                  for (i16 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v517 = *v32++;
                    v518 = v517;
                    v519 = *v494++;
                    v520 = v519;
                    if (v518 == 0.0)
                    {
                      v521 = a4;
                    }

                    else
                    {
                      v521 = v520;
                    }

                    *i16++ = v521;
                  }

                  break;
              }

              break;
            case 0:
              switch(v9)
              {
                case 2:
                  if (a1)
                  {
                    v90 = *(a1 + 2);
                  }

                  else
                  {
                    v90 = 0;
                  }

                  if (a2)
                  {
                    v582 = *(a2 + 16);
                  }

                  else
                  {
                    v582 = 0;
                  }

                  if (a5)
                  {
                    v586 = *(a5 + 2);
                  }

                  else
                  {
                    v586 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v600 = *v90++;
                    v601 = v600;
                    v602 = *v582++;
                    v603 = v602;
                    if (!v601)
                    {
                      v603 = *&a4;
                    }

                    *v586++ = v603;
                  }

                  break;
                case 1:
                  if (a1)
                  {
                    v83 = *(a1 + 2);
                  }

                  else
                  {
                    v83 = 0;
                  }

                  if (a2)
                  {
                    v496 = *(a2 + 16);
                  }

                  else
                  {
                    v496 = 0;
                  }

                  if (a5)
                  {
                    v504 = *(a5 + 2);
                  }

                  else
                  {
                    v504 = 0;
                  }

                  for (; v7; --v7)
                  {
                    v526 = *v83++;
                    v527 = v526;
                    v528 = *v496++;
                    v529 = v528;
                    if (!v527)
                    {
                      v529 = *&a4;
                    }

                    *v504++ = v529;
                  }

                  break;
                case 0:
                  v10 = a1 ? *(a1 + 2) : 0;
                  v604 = a2 ? *(a2 + 16) : 0;
                  for (i17 = a5 ? *(a5 + 2) : 0; v7; --v7)
                  {
                    v606 = *v10++;
                    v607 = v606;
                    v608 = *v604++;
                    v609 = v608;
                    if (v607 == 0.0)
                    {
                      v610 = *&a4;
                    }

                    else
                    {
                      v610 = v609;
                    }

                    *i17++ = v610;
                  }

                  break;
              }

              break;
          }

          break;
      }

      break;
  }

  return a5;
}