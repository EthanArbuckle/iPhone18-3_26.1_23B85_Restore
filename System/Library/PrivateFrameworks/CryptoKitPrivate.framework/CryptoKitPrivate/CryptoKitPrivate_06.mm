uint64_t sub_1C0D4EB2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, _DWORD *a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20)
{
  v21 = v20;
  v22 = a19;
  v24 = a15;
  v23 = a16;
  v25 = a14;
  v26 = a11;
  v144 = *MEMORY[0x1E69E9840];
  v27 = a2 >> 62;
  v28 = a10;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v29 = a6 >> 62;
      if ((a6 >> 62) > 1)
      {
        if (v29 != 2)
        {
          result = ccrng();
          if (result)
          {
            v32 = a11;
            v71 = a11 >> 62;
            v34 = a16;
            if ((a11 >> 62) <= 1)
            {
              v36 = a20;
              v35 = a12;
              v23 = a10;
              if (!v71 || !__OFSUB__(HIDWORD(a10), a10))
              {
                goto LABEL_207;
              }

              goto LABEL_583;
            }

            goto LABEL_117;
          }

          goto LABEL_631;
        }

        v137 = a14;
        v138 = a10;
        v25 = a15;
        v47 = *(a5 + 16);
        v28 = sub_1C0D7812C();
        if (v28)
        {
          v48 = sub_1C0D7815C();
          if (__OFSUB__(v47, v48))
          {
LABEL_573:
            __break(1u);
LABEL_574:
            __break(1u);
            goto LABEL_575;
          }

          v28 += v47 - v48;
        }

        v21 = v20;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v22 = a19;
          v34 = a16;
          v49 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v49)
            {
              goto LABEL_259;
            }

            goto LABEL_265;
          }

LABEL_125:
          v24 = v25;
          if (v49 == 2)
          {
            v25 = v137;
            v55 = *(v138 + 24);
            if (!__OFSUB__(v55, *(v138 + 16)))
            {
              goto LABEL_266;
            }

            __break(1u);
            goto LABEL_129;
          }

LABEL_265:
          v25 = v137;
          goto LABEL_266;
        }

        goto LABEL_633;
      }

      if (!v29)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v33 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (!v33)
            {
              goto LABEL_191;
            }

LABEL_183:
            if (!__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_191;
            }

            goto LABEL_581;
          }

          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (v33 != 2 || (v46 = *(a10 + 24), !__OFSUB__(v46, *(a10 + 16))))
          {
LABEL_191:
            if (v35)
            {
              v81 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (!v81)
                {
                  goto LABEL_224;
                }

                goto LABEL_223;
              }

              if (v81 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
LABEL_224:
                if (v34)
                {
                  v85 = v22 >> 62;
                  if ((v22 >> 62) <= 1)
                  {
                    if (!v85)
                    {
                      goto LABEL_304;
                    }

                    goto LABEL_303;
                  }

                  if (v85 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                  {
LABEL_304:
                    if (!v36)
                    {
                      __break(1u);
LABEL_306:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_307;
                      }

                      goto LABEL_594;
                    }

                    goto LABEL_314;
                  }

                  __break(1u);
LABEL_232:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_233;
                  }

LABEL_586:
                  __break(1u);
                  goto LABEL_587;
                }

LABEL_646:
                __break(1u);
                goto LABEL_647;
              }

              __break(1u);
LABEL_199:
              if (v35)
              {
                v82 = v24 >> 62;
                if ((v24 >> 62) <= 1)
                {
                  if (v82)
                  {
                    goto LABEL_232;
                  }

LABEL_233:
                  if (v34)
                  {
                    v86 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v86)
                      {
                        goto LABEL_306;
                      }

LABEL_307:
                      if (v36)
                      {
                        v93 = *a9;
                        v94 = a9[1];
                        v131 = a9[4];
                        v126 = a9[3];
                        *a7 = ccspake_verifier_initialize();
                        sub_1C0CF448C(a3, a4);
                        sub_1C0CF448C(a5, v26);
LABEL_565:
                        sub_1C0CF448C(v23, v32);
                        sub_1C0CF448C(v25, v24);
                        result = sub_1C0CF448C(a18, v22);
                        v125 = *MEMORY[0x1E69E9840];
                        return result;
                      }

                      goto LABEL_656;
                    }

                    if (v86 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_307;
                    }

                    __break(1u);
LABEL_241:
                    if (!__OFSUB__(HIDWORD(v25), v25))
                    {
                      goto LABEL_242;
                    }

LABEL_587:
                    __break(1u);
                    goto LABEL_588;
                  }

LABEL_647:
                  __break(1u);
                  goto LABEL_648;
                }

                if (v82 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  goto LABEL_233;
                }

                __break(1u);
LABEL_207:
                if (v35)
                {
                  v83 = v24 >> 62;
                  if ((v24 >> 62) <= 1)
                  {
                    if (v83)
                    {
                      goto LABEL_241;
                    }

LABEL_242:
                    if (v34)
                    {
                      v87 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (v87 && __OFSUB__(HIDWORD(a18), a18))
                        {
                          goto LABEL_595;
                        }

                        goto LABEL_310;
                      }

                      if (v87 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
LABEL_310:
                        if (v36)
                        {
LABEL_314:
                          v95 = *a9;
                          v96 = a9[1];
                          v132 = a9[4];
                          v127 = a9[3];
LABEL_510:
                          *a7 = ccspake_verifier_initialize();
                          sub_1C0CF448C(a3, a4);
                          sub_1C0CF448C(a5, a6);
                          goto LABEL_565;
                        }

                        __break(1u);
                        goto LABEL_312;
                      }

                      __break(1u);
LABEL_250:
                      if (!__OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_251;
                      }

LABEL_588:
                      __break(1u);
LABEL_589:
                      __break(1u);
                      goto LABEL_590;
                    }

LABEL_648:
                    __break(1u);
                    goto LABEL_649;
                  }

                  if (v83 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                  {
                    goto LABEL_242;
                  }

                  __break(1u);
                  goto LABEL_215;
                }

LABEL_640:
                __break(1u);
LABEL_641:
                __break(1u);
                goto LABEL_642;
              }

LABEL_639:
              __break(1u);
              goto LABEL_640;
            }

LABEL_638:
            __break(1u);
            goto LABEL_639;
          }

          __break(1u);
          goto LABEL_113;
        }

        __break(1u);
LABEL_630:
        __break(1u);
LABEL_631:
        __break(1u);
LABEL_632:
        __break(1u);
LABEL_633:
        __break(1u);
LABEL_634:
        __break(1u);
        goto LABEL_635;
      }

      v137 = a14;
      v138 = a10;
      v64 = a5;
      if (a5 <= a5 >> 32)
      {
        v25 = a15;
        v28 = sub_1C0D7812C();
        if (!v28)
        {
LABEL_69:
          v21 = v20;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_643:
            __break(1u);
            goto LABEL_644;
          }

          v32 = a11;
          v22 = a19;
          v34 = a16;
          v66 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v66)
            {
              v25 = a14;
              if (__OFSUB__(HIDWORD(a10), a10))
              {
LABEL_603:
                __break(1u);
                goto LABEL_604;
              }

              goto LABEL_378;
            }

            goto LABEL_377;
          }

LABEL_145:
          v24 = v25;
          if (v66 != 2)
          {
LABEL_377:
            v25 = v137;
LABEL_378:
            v23 = v138;
            if (!v35)
            {
LABEL_664:
              __break(1u);
              goto LABEL_665;
            }

            v103 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v103)
              {
LABEL_440:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_612:
                  __break(1u);
                  goto LABEL_613;
                }
              }

LABEL_441:
              if (!v34)
              {
LABEL_674:
                __break(1u);
                goto LABEL_675;
              }

              v108 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (!v108)
                {
                  goto LABEL_499;
                }

                goto LABEL_498;
              }

              if (v108 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_499;
              }

              __break(1u);
              goto LABEL_449;
            }

            if (v103 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_441;
            }

            __break(1u);
            goto LABEL_386;
          }

          v25 = v137;
          v78 = *(v138 + 24);
          if (!__OFSUB__(v78, *(v138 + 16)))
          {
            goto LABEL_378;
          }

          __break(1u);
LABEL_149:
          v25 = v137;
          if (v78 != 2)
          {
LABEL_386:
            v23 = v138;
LABEL_387:
            if (!v35)
            {
LABEL_665:
              __break(1u);
              goto LABEL_666;
            }

            v104 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v104)
              {
LABEL_449:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_613:
                  __break(1u);
                  goto LABEL_614;
                }
              }

LABEL_450:
              if (!v34)
              {
LABEL_675:
                __break(1u);
                goto LABEL_676;
              }

              v109 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v109)
                {
                  goto LABEL_502;
                }

LABEL_503:
                if (!v36)
                {
LABEL_683:
                  __break(1u);
                  goto LABEL_684;
                }

                if (!v21)
                {
LABEL_685:
                  __break(1u);
                  goto LABEL_686;
                }

LABEL_505:
                v113 = *a9;
                v114 = a9[1];
                v133 = a9[4];
                v128 = a9[3];
                *a7 = ccspake_verifier_initialize();
                sub_1C0CF448C(a3, a4);
                v115 = a5;
                v116 = v28;
LABEL_564:
                sub_1C0CF448C(v115, v116);
                goto LABEL_565;
              }

              if (v109 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_503;
              }

              __break(1u);
              goto LABEL_458;
            }

            if (v104 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_450;
            }

            __break(1u);
            goto LABEL_395;
          }

          v23 = v138;
          v63 = *(v138 + 24);
          if (!__OFSUB__(v63, *(v138 + 16)))
          {
            goto LABEL_387;
          }

          __break(1u);
          goto LABEL_153;
        }

        v65 = sub_1C0D7815C();
        if (!__OFSUB__(v64, v65))
        {
          v28 += v64 - v65;
          goto LABEL_69;
        }

        goto LABEL_576;
      }

      goto LABEL_569;
    }

    v136 = v20;
    v41 = a1;
    if (a1 <= a1 >> 32)
    {
      v137 = a14;
      v138 = a10;
      v25 = a15;
      v42 = sub_1C0D7812C();
      if (!v42)
      {
        v21 = 0;
        goto LABEL_51;
      }

      v43 = v42;
      v44 = sub_1C0D7815C();
      if (!__OFSUB__(v41, v44))
      {
        v21 = v41 - v44 + v43;
LABEL_51:
        sub_1C0D7814C();
        v28 = a6;
        v59 = a6 >> 62;
        if ((a6 >> 62) > 1)
        {
          if (v59 != 2)
          {
            result = ccrng();
            if (!result)
            {
LABEL_644:
              __break(1u);
              goto LABEL_645;
            }

            v22 = a19;
            v32 = a11;
            v34 = a16;
            v78 = a11 >> 62;
            v24 = a15;
            v36 = a20;
            v35 = a12;
            if ((a11 >> 62) <= 1)
            {
              v25 = a14;
              if (v78)
              {
                v23 = a10;
                if (__OFSUB__(HIDWORD(a10), a10))
                {
LABEL_604:
                  __break(1u);
                  goto LABEL_605;
                }

                goto LABEL_387;
              }

              goto LABEL_386;
            }

            goto LABEL_149;
          }

          v61 = *(a5 + 16);
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v62 = sub_1C0D7815C();
            if (__OFSUB__(v61, v62))
            {
LABEL_578:
              __break(1u);
              goto LABEL_579;
            }

            v28 += v61 - v62;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_654:
            __break(1u);
            goto LABEL_655;
          }

          v22 = a19;
          v34 = a16;
          v63 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v63)
            {
LABEL_467:
              v25 = v137;
              if (__OFSUB__(HIDWORD(v138), v138))
              {
LABEL_615:
                __break(1u);
                goto LABEL_616;
              }

              goto LABEL_472;
            }

            goto LABEL_471;
          }

LABEL_153:
          v24 = v25;
          if (v63 == 2)
          {
            v25 = v137;
            v74 = *(v138 + 24);
            if (!__OFSUB__(v74, *(v138 + 16)))
            {
              goto LABEL_472;
            }

            __break(1u);
LABEL_157:
            v24 = v25;
            if (v74 == 2)
            {
              v25 = v137;
              v77 = *(v138 + 24);
              if (!__OFSUB__(v77, *(v138 + 16)))
              {
                goto LABEL_481;
              }

              __break(1u);
              goto LABEL_161;
            }

LABEL_480:
            v25 = v137;
            goto LABEL_481;
          }

LABEL_471:
          v25 = v137;
LABEL_472:
          v23 = v138;
          if (!v35)
          {
LABEL_677:
            __break(1u);
            goto LABEL_678;
          }

          v111 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v111 && __OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_622;
            }

            goto LABEL_512;
          }

          if (v111 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
LABEL_512:
            if (!v34)
            {
LABEL_687:
              __break(1u);
              goto LABEL_688;
            }

            v119 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (!v119)
              {
LABEL_541:
                if (!v31)
                {
LABEL_690:
                  __break(1u);
                  goto LABEL_691;
                }

                if (!v21)
                {
LABEL_692:
                  __break(1u);
                  goto LABEL_693;
                }

                if (v28)
                {
                  goto LABEL_563;
                }

                __break(1u);
                goto LABEL_545;
              }

LABEL_540:
              if (__OFSUB__(HIDWORD(a18), a18))
              {
LABEL_625:
                __break(1u);
                goto LABEL_626;
              }

              goto LABEL_541;
            }

            if (v119 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_541;
            }

            __break(1u);
LABEL_520:
            if (__OFSUB__(HIDWORD(v25), v25))
            {
LABEL_623:
              __break(1u);
              goto LABEL_624;
            }

            goto LABEL_521;
          }

          __break(1u);
          goto LABEL_480;
        }

        if (!v59)
        {
          v22 = a19;
          result = ccrng();
          if (!result)
          {
LABEL_642:
            __break(1u);
            goto LABEL_643;
          }

          v32 = a11;
          v34 = a16;
          v60 = a11 >> 62;
          v24 = a15;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v25 = a14;
            if (v60)
            {
LABEL_362:
              v23 = v138;
              if (__OFSUB__(HIDWORD(v138), v138))
              {
LABEL_602:
                __break(1u);
                goto LABEL_603;
              }

              goto LABEL_369;
            }

            goto LABEL_368;
          }

LABEL_141:
          v25 = v137;
          if (v60 == 2)
          {
            v23 = v138;
            v66 = *(v138 + 24);
            if (!__OFSUB__(v66, *(v138 + 16)))
            {
              goto LABEL_369;
            }

            __break(1u);
            goto LABEL_145;
          }

LABEL_368:
          v23 = v138;
LABEL_369:
          if (!v35)
          {
LABEL_663:
            __break(1u);
            goto LABEL_664;
          }

          v102 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v102)
            {
LABEL_431:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_611:
                __break(1u);
                goto LABEL_612;
              }
            }

LABEL_432:
            if (!v34)
            {
LABEL_673:
              __break(1u);
              goto LABEL_674;
            }

            v107 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v107)
              {
                goto LABEL_494;
              }

LABEL_495:
              if (!v36)
              {
LABEL_681:
                __break(1u);
                goto LABEL_682;
              }

              if (v21)
              {
                goto LABEL_505;
              }

              __break(1u);
LABEL_498:
              if (__OFSUB__(HIDWORD(a18), a18))
              {
LABEL_619:
                __break(1u);
                goto LABEL_620;
              }

LABEL_499:
              if (!v31)
              {
LABEL_682:
                __break(1u);
                goto LABEL_683;
              }

              if (!v28)
              {
                __break(1u);
LABEL_502:
                if (__OFSUB__(HIDWORD(a18), a18))
                {
LABEL_620:
                  __break(1u);
LABEL_621:
                  __break(1u);
LABEL_622:
                  __break(1u);
                  goto LABEL_623;
                }

                goto LABEL_503;
              }

LABEL_509:
              v117 = *a9;
              v118 = a9[1];
              v134 = a9[4];
              v129 = a9[3];
              goto LABEL_510;
            }

            if (v107 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_495;
            }

            __break(1u);
            goto LABEL_440;
          }

          if (v102 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_432;
          }

          __break(1u);
          goto LABEL_377;
        }

        if (a5 <= a5 >> 32)
        {
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v76 = sub_1C0D7815C();
            if (__OFSUB__(a5, v76))
            {
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
              goto LABEL_585;
            }

            v28 += a5 - v76;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_671:
            __break(1u);
            goto LABEL_672;
          }

          v22 = a19;
          v34 = a16;
          v77 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v77)
            {
LABEL_529:
              v25 = v137;
              if (__OFSUB__(HIDWORD(v138), v138))
              {
LABEL_624:
                __break(1u);
                goto LABEL_625;
              }

              goto LABEL_532;
            }

            goto LABEL_531;
          }

LABEL_161:
          v24 = v25;
          if (v77 == 2)
          {
            v25 = v137;
            if (!__OFSUB__(*(v138 + 24), *(v138 + 16)))
            {
              goto LABEL_532;
            }

            __break(1u);
            goto LABEL_165;
          }

LABEL_531:
          v25 = v137;
LABEL_532:
          v23 = v138;
          if (!v35)
          {
LABEL_689:
            __break(1u);
            goto LABEL_690;
          }

          v121 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (!v121)
            {
              goto LABEL_551;
            }

            goto LABEL_550;
          }

          if (v121 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_551;
          }

          __break(1u);
          goto LABEL_540;
        }

        goto LABEL_572;
      }

LABEL_568:
      __break(1u);
LABEL_569:
      __break(1u);
LABEL_570:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_571:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_572:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_573;
    }

    __break(1u);
LABEL_567:
    __break(1u);
    goto LABEL_568;
  }

  if (v27 != 2)
  {
    v45 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v45 != 2)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v72 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (v72 && __OFSUB__(HIDWORD(a10), a10))
            {
              goto LABEL_584;
            }

LABEL_215:
            if (v35)
            {
              v84 = v24 >> 62;
              if ((v24 >> 62) > 1)
              {
                if (v84 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  __break(1u);
LABEL_223:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_224;
                  }

LABEL_585:
                  __break(1u);
                  goto LABEL_586;
                }
              }

              else if (v84)
              {
                goto LABEL_250;
              }

LABEL_251:
              if (v34)
              {
                v88 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v88)
                  {
LABEL_312:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_596:
                      __break(1u);
LABEL_597:
                      __break(1u);
                      goto LABEL_598;
                    }
                  }

LABEL_313:
                  if (!v36)
                  {
LABEL_657:
                    __break(1u);
                    goto LABEL_658;
                  }

                  goto LABEL_314;
                }

                if (v88 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_313;
                }

                __break(1u);
LABEL_259:
                v25 = v137;
                if (!__OFSUB__(HIDWORD(v138), v138))
                {
LABEL_266:
                  v23 = v138;
                  if (v35)
                  {
                    v89 = v24 >> 62;
                    if ((v24 >> 62) <= 1)
                    {
                      if (v89 && __OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_597;
                      }

                      goto LABEL_316;
                    }

                    if (v89 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
LABEL_316:
                      if (!v34)
                      {
LABEL_658:
                        __break(1u);
                        goto LABEL_659;
                      }

                      v97 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (!v97)
                        {
LABEL_407:
                          if (!v31)
                          {
LABEL_667:
                            __break(1u);
                            goto LABEL_668;
                          }

                          if (v28)
                          {
                            goto LABEL_509;
                          }

                          __break(1u);
                          goto LABEL_410;
                        }

LABEL_406:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_606:
                          __break(1u);
                          goto LABEL_607;
                        }

                        goto LABEL_407;
                      }

                      if (v97 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
                        goto LABEL_407;
                      }

                      __break(1u);
                      goto LABEL_324;
                    }

                    __break(1u);
                    goto LABEL_274;
                  }

LABEL_650:
                  __break(1u);
                  goto LABEL_651;
                }

                goto LABEL_589;
              }

LABEL_649:
              __break(1u);
              goto LABEL_650;
            }

            goto LABEL_641;
          }

          goto LABEL_121;
        }

        goto LABEL_632;
      }

      v137 = a14;
      v138 = a10;
      v136 = a15;
      v24 = a19;
      v50 = *(a5 + 16);
      v51 = sub_1C0D7812C();
      if (!v51)
      {
LABEL_165:
        v28 = 0;
LABEL_166:
        v32 = v26;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v22 = v24;
          v34 = v23;
          v79 = v26 >> 62;
          v31 = a20;
          v35 = a12;
          if ((v26 >> 62) <= 1)
          {
            v24 = v136;
            if (v79)
            {
              goto LABEL_292;
            }

LABEL_294:
            v25 = v137;
            goto LABEL_295;
          }

          v24 = v136;
          if (v79 != 2)
          {
            goto LABEL_294;
          }

          v25 = v137;
          if (!__OFSUB__(*(v138 + 24), *(v138 + 16)))
          {
            goto LABEL_295;
          }

          __break(1u);
          goto LABEL_174;
        }

        goto LABEL_636;
      }

      v52 = v51;
      v53 = sub_1C0D7815C();
      if (!__OFSUB__(v50, v53))
      {
        v28 = v50 - v53 + v52;
        goto LABEL_166;
      }

      goto LABEL_574;
    }

    if (!v45)
    {
      v32 = a11;
      v26 = a6;
      result = ccrng();
      if (result)
      {
        v46 = a11 >> 62;
        v34 = a16;
        if ((a11 >> 62) <= 1)
        {
          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (!v46 || !__OFSUB__(HIDWORD(a10), a10))
          {
            goto LABEL_199;
          }

          goto LABEL_582;
        }

LABEL_113:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v46 != 2)
        {
          goto LABEL_199;
        }

        v71 = *(a10 + 24);
        if (!__OFSUB__(v71, *(a10 + 16)))
        {
          goto LABEL_199;
        }

        __break(1u);
LABEL_117:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v71 != 2)
        {
          goto LABEL_207;
        }

        v72 = *(a10 + 24);
        if (!__OFSUB__(v72, *(a10 + 16)))
        {
          goto LABEL_207;
        }

        __break(1u);
LABEL_121:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v72 != 2)
        {
          goto LABEL_215;
        }

        v49 = *(a10 + 24);
        if (!__OFSUB__(v49, *(a10 + 16)))
        {
          goto LABEL_215;
        }

        __break(1u);
        goto LABEL_125;
      }

      goto LABEL_630;
    }

    v137 = a14;
    v138 = a10;
    v136 = a15;
    v67 = a5;
    if (a5 <= a5 >> 32)
    {
      v24 = a19;
      v68 = sub_1C0D7812C();
      if (!v68)
      {
LABEL_174:
        v28 = 0;
LABEL_175:
        sub_1C0D7814C();
        result = ccrng();
        if (!result)
        {
LABEL_645:
          __break(1u);
          goto LABEL_646;
        }

        v32 = v26;
        v22 = v24;
        v34 = v23;
        v80 = v26 >> 62;
        v31 = a20;
        v35 = a12;
        if ((v26 >> 62) > 1)
        {
          v24 = v136;
          if (v80 == 2)
          {
            v25 = v137;
            if (!__OFSUB__(*(v138 + 24), *(v138 + 16)))
            {
              goto LABEL_398;
            }

            __break(1u);
            goto LABEL_183;
          }
        }

        else
        {
          v24 = v136;
          if (v80)
          {
LABEL_395:
            v25 = v137;
            if (__OFSUB__(HIDWORD(v138), v138))
            {
LABEL_605:
              __break(1u);
              goto LABEL_606;
            }

LABEL_398:
            v23 = v138;
            if (!v35)
            {
LABEL_666:
              __break(1u);
              goto LABEL_667;
            }

            v105 = v24 >> 62;
            if ((v24 >> 62) > 1)
            {
              if (v105 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                __break(1u);
                goto LABEL_406;
              }
            }

            else if (v105)
            {
LABEL_458:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_614:
                __break(1u);
                goto LABEL_615;
              }
            }

            if (!v34)
            {
LABEL_676:
              __break(1u);
              goto LABEL_677;
            }

            v110 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v110 && __OFSUB__(HIDWORD(a18), a18))
              {
                goto LABEL_621;
              }

              goto LABEL_507;
            }

            if (v110 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
LABEL_507:
              if (!v31)
              {
LABEL_684:
                __break(1u);
                goto LABEL_685;
              }

              if (!v28)
              {
LABEL_686:
                __break(1u);
                goto LABEL_687;
              }

              goto LABEL_509;
            }

            __break(1u);
            goto LABEL_467;
          }
        }

        v25 = v137;
        goto LABEL_398;
      }

      v69 = v68;
      v70 = sub_1C0D7815C();
      if (!__OFSUB__(v67, v70))
      {
        v28 = v67 - v70 + v69;
        goto LABEL_175;
      }

      goto LABEL_577;
    }

    goto LABEL_570;
  }

  v137 = a14;
  v138 = a10;
  v25 = a15;
  v136 = v20;
  v37 = *(a1 + 16);
  v38 = sub_1C0D7812C();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1C0D7815C();
    if (__OFSUB__(v37, v40))
    {
      goto LABEL_567;
    }

    v21 = v37 - v40 + v39;
  }

  else
  {
    v21 = 0;
  }

  sub_1C0D7814C();
  v28 = a6;
  v54 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v54 != 2)
    {
      result = ccrng();
      if (result)
      {
        v22 = a19;
        v32 = a11;
        v34 = a16;
        v75 = a11 >> 62;
        v24 = a15;
        v36 = a20;
        v35 = a12;
        if ((a11 >> 62) <= 1)
        {
          v25 = a14;
          if (v75)
          {
            v23 = a10;
            if (__OFSUB__(HIDWORD(a10), a10))
            {
LABEL_591:
              __break(1u);
              goto LABEL_592;
            }

LABEL_284:
            if (v35)
            {
              v91 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (v91)
                {
LABEL_333:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_599:
                    __break(1u);
                    goto LABEL_600;
                  }
                }

LABEL_334:
                if (!v34)
                {
LABEL_660:
                  __break(1u);
                  goto LABEL_661;
                }

                v99 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v99)
                  {
LABEL_414:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_608:
                      __break(1u);
                      goto LABEL_609;
                    }
                  }

LABEL_415:
                  if (!v36)
                  {
LABEL_669:
                    __break(1u);
                    goto LABEL_670;
                  }

                  if (v21)
                  {
                    goto LABEL_505;
                  }

                  __break(1u);
                  goto LABEL_418;
                }

                if (v99 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_415;
                }

                __break(1u);
                goto LABEL_342;
              }

              if (v91 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                goto LABEL_334;
              }

              __break(1u);
LABEL_292:
              v25 = v137;
              if (!__OFSUB__(HIDWORD(v138), v138))
              {
LABEL_295:
                v23 = v138;
                if (v35)
                {
                  v92 = v24 >> 62;
                  if ((v24 >> 62) > 1)
                  {
                    if (v92 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
                      __break(1u);
LABEL_303:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_304;
                      }

LABEL_593:
                      __break(1u);
LABEL_594:
                      __break(1u);
LABEL_595:
                      __break(1u);
                      goto LABEL_596;
                    }

                    goto LABEL_343;
                  }

                  if (!v92)
                  {
LABEL_343:
                    if (!v34)
                    {
LABEL_661:
                      __break(1u);
                      goto LABEL_662;
                    }

                    v100 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v100)
                      {
LABEL_418:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_609:
                          __break(1u);
                          goto LABEL_610;
                        }
                      }

LABEL_419:
                      if (!v31)
                      {
LABEL_670:
                        __break(1u);
                        goto LABEL_671;
                      }

                      if (v28)
                      {
                        goto LABEL_509;
                      }

                      __break(1u);
                      goto LABEL_422;
                    }

                    if (v100 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_419;
                    }

                    __break(1u);
                    goto LABEL_351;
                  }

LABEL_342:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_600:
                    __break(1u);
                    goto LABEL_601;
                  }

                  goto LABEL_343;
                }

                goto LABEL_653;
              }

LABEL_592:
              __break(1u);
              goto LABEL_593;
            }

LABEL_652:
            __break(1u);
LABEL_653:
            __break(1u);
            goto LABEL_654;
          }

          goto LABEL_283;
        }

LABEL_133:
        v25 = v137;
        if (v75 == 2)
        {
          v23 = v138;
          v58 = *(v138 + 24);
          if (!__OFSUB__(v58, *(v138 + 16)))
          {
            goto LABEL_284;
          }

          __break(1u);
          goto LABEL_137;
        }

LABEL_283:
        v23 = v138;
        goto LABEL_284;
      }

LABEL_635:
      __break(1u);
LABEL_636:
      __break(1u);
      goto LABEL_637;
    }

    v56 = *(a5 + 16);
    v28 = sub_1C0D7812C();
    if (v28)
    {
      v57 = sub_1C0D7815C();
      if (__OFSUB__(v56, v57))
      {
LABEL_575:
        __break(1u);
LABEL_576:
        __break(1u);
LABEL_577:
        __break(1u);
        goto LABEL_578;
      }

      v28 += v56 - v57;
    }

    v32 = a11;
    sub_1C0D7814C();
    result = ccrng();
    if (!result)
    {
LABEL_637:
      __break(1u);
      goto LABEL_638;
    }

    v22 = a19;
    v34 = a16;
    v58 = a11 >> 62;
    v31 = a20;
    v35 = a12;
    if ((a11 >> 62) <= 1)
    {
      v24 = a15;
      if (v58)
      {
LABEL_351:
        v25 = v137;
        if (__OFSUB__(HIDWORD(v138), v138))
        {
LABEL_601:
          __break(1u);
          goto LABEL_602;
        }

        goto LABEL_354;
      }

      goto LABEL_353;
    }

LABEL_137:
    v24 = v25;
    if (v58 == 2)
    {
      v25 = v137;
      v60 = *(v138 + 24);
      if (!__OFSUB__(v60, *(v138 + 16)))
      {
        goto LABEL_354;
      }

      __break(1u);
      goto LABEL_141;
    }

LABEL_353:
    v25 = v137;
LABEL_354:
    v23 = v138;
    if (!v35)
    {
LABEL_662:
      __break(1u);
      goto LABEL_663;
    }

    v101 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v101)
      {
LABEL_422:
        if (__OFSUB__(HIDWORD(v25), v25))
        {
LABEL_610:
          __break(1u);
          goto LABEL_611;
        }
      }

LABEL_423:
      if (!v34)
      {
LABEL_672:
        __break(1u);
        goto LABEL_673;
      }

      v106 = v22 >> 62;
      if ((v22 >> 62) <= 1)
      {
        if (!v106)
        {
          goto LABEL_490;
        }

        goto LABEL_489;
      }

      if (v106 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
      {
        goto LABEL_490;
      }

      __break(1u);
      goto LABEL_431;
    }

    if (v101 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
    {
      goto LABEL_423;
    }

    __break(1u);
    goto LABEL_362;
  }

  if (!v54)
  {
    v22 = a19;
    result = ccrng();
    if (result)
    {
      v32 = a11;
      v34 = a16;
      v55 = a11 >> 62;
      v24 = a15;
      v36 = a20;
      v35 = a12;
      if ((a11 >> 62) <= 1)
      {
        v25 = a14;
        if (v55)
        {
          v23 = a10;
          if (__OFSUB__(HIDWORD(a10), a10))
          {
LABEL_590:
            __break(1u);
            goto LABEL_591;
          }

LABEL_275:
          if (v35)
          {
            v90 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v90)
              {
LABEL_324:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_598:
                  __break(1u);
                  goto LABEL_599;
                }
              }

LABEL_325:
              if (!v34)
              {
LABEL_659:
                __break(1u);
                goto LABEL_660;
              }

              v98 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v98)
                {
LABEL_410:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_607:
                    __break(1u);
                    goto LABEL_608;
                  }
                }

LABEL_411:
                if (!v36)
                {
LABEL_668:
                  __break(1u);
                  goto LABEL_669;
                }

                if (v21)
                {
                  goto LABEL_505;
                }

                __break(1u);
                goto LABEL_414;
              }

              if (v98 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_411;
              }

              __break(1u);
              goto LABEL_333;
            }

            if (v90 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_325;
            }

            __break(1u);
            goto LABEL_283;
          }

LABEL_651:
          __break(1u);
          goto LABEL_652;
        }

        goto LABEL_274;
      }

LABEL_129:
      v25 = v137;
      if (v55 == 2)
      {
        v23 = v138;
        v75 = *(v138 + 24);
        if (!__OFSUB__(v75, *(v138 + 16)))
        {
          goto LABEL_275;
        }

        __break(1u);
        goto LABEL_133;
      }

LABEL_274:
      v23 = v138;
      goto LABEL_275;
    }

    goto LABEL_634;
  }

  if (a5 > a5 >> 32)
  {
    goto LABEL_571;
  }

  v28 = sub_1C0D7812C();
  if (v28)
  {
    v73 = sub_1C0D7815C();
    if (__OFSUB__(a5, v73))
    {
LABEL_579:
      __break(1u);
      goto LABEL_580;
    }

    v28 += a5 - v73;
  }

  v32 = a11;
  sub_1C0D7814C();
  result = ccrng();
  if (!result)
  {
LABEL_655:
    __break(1u);
LABEL_656:
    __break(1u);
    goto LABEL_657;
  }

  v22 = a19;
  v34 = a16;
  v74 = a11 >> 62;
  v31 = a20;
  v35 = a12;
  if ((a11 >> 62) > 1)
  {
    goto LABEL_157;
  }

  v24 = a15;
  if (!v74)
  {
    goto LABEL_480;
  }

  v25 = a14;
  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_616:
    __break(1u);
    goto LABEL_617;
  }

LABEL_481:
  v23 = v138;
  if (!v35)
  {
LABEL_678:
    __break(1u);
    goto LABEL_679;
  }

  v112 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v112)
    {
      goto LABEL_521;
    }

    goto LABEL_520;
  }

  if (v112 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
  {
    __break(1u);
LABEL_489:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_617:
      __break(1u);
      goto LABEL_618;
    }

LABEL_490:
    if (!v31)
    {
LABEL_679:
      __break(1u);
      goto LABEL_680;
    }

    if (!v21)
    {
LABEL_680:
      __break(1u);
      goto LABEL_681;
    }

    if (!v28)
    {
      __break(1u);
LABEL_494:
      if (__OFSUB__(HIDWORD(a18), a18))
      {
LABEL_618:
        __break(1u);
        goto LABEL_619;
      }

      goto LABEL_495;
    }

LABEL_563:
    v123 = *a9;
    v124 = a9[1];
    v135 = a9[4];
    v130 = a9[3];
    *a7 = ccspake_verifier_initialize();
    sub_1C0CF448C(a3, a4);
    v115 = a5;
    v116 = a6;
    goto LABEL_564;
  }

LABEL_521:
  if (!v34)
  {
LABEL_688:
    __break(1u);
    goto LABEL_689;
  }

  v120 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v120 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_546;
    }

    __break(1u);
    goto LABEL_529;
  }

  if (v120)
  {
LABEL_545:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_626:
      __break(1u);
      goto LABEL_627;
    }
  }

LABEL_546:
  if (!v31)
  {
LABEL_691:
    __break(1u);
    goto LABEL_692;
  }

  if (!v21)
  {
LABEL_693:
    __break(1u);
    goto LABEL_694;
  }

  if (v28)
  {
    goto LABEL_563;
  }

  __break(1u);
LABEL_550:
  if (__OFSUB__(HIDWORD(v25), v25))
  {
LABEL_627:
    __break(1u);
LABEL_628:
    __break(1u);
  }

LABEL_551:
  if (!v34)
  {
LABEL_694:
    __break(1u);
    goto LABEL_695;
  }

  v122 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v122 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_560;
    }

    __break(1u);
  }

  else if (!v122)
  {
    goto LABEL_560;
  }

  if (__OFSUB__(HIDWORD(a18), a18))
  {
    goto LABEL_628;
  }

LABEL_560:
  if (!v31)
  {
LABEL_695:
    __break(1u);
    goto LABEL_696;
  }

  if (!v21)
  {
LABEL_696:
    __break(1u);
    goto LABEL_697;
  }

  if (v28)
  {
    goto LABEL_563;
  }

LABEL_697:
  __break(1u);
  return result;
}

uint64_t sub_1C0D507B4(uint64_t result, unint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, char **a8)
{
  v10 = a5;
  v11 = a3;
  v31 = *MEMORY[0x1E69E9840];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v23 = a6 >> 62;
      if ((a6 >> 62) <= 1)
      {
        if (v23 && __OFSUB__(HIDWORD(a5), a5))
        {
          goto LABEL_63;
        }

        goto LABEL_42;
      }

      goto LABEL_27;
    }

    v30 = a5;
    v15 = *(result + 16);
    v16 = sub_1C0D7812C();
    if (v16)
    {
      v17 = sub_1C0D7815C();
      if (__OFSUB__(v15, v17))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v16 += v15 - v17;
    }

    result = sub_1C0D7814C();
    v18 = a6 >> 62;
    v11 = a3;
    if ((a6 >> 62) <= 1)
    {
      if (v18)
      {
        v10 = v30;
        if (__OFSUB__(HIDWORD(v30), v30))
        {
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_31:
    if (v18 == 2)
    {
      v10 = v30;
      v22 = *(v30 + 24);
      if (!__OFSUB__(v22, *(v30 + 16)))
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_48:
    v10 = v30;
LABEL_49:
    if (v16)
    {
LABEL_55:
      v27 = *a8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1C0CF48F4(0, *(v27 + 2), 0, v27);
      }

      *a8 = v27;
      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (!v12)
  {
    v13 = a6 >> 62;
    if ((a6 >> 62) <= 1)
    {
      if (!v13)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v13 != 2 || (v23 = *(a5 + 24), !__OFSUB__(v23, *(a5 + 16))))
    {
LABEL_42:
      v25 = *a8;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_1C0CF48F4(0, *(v25 + 2), 0, v25);
      }

      *a8 = v25;
LABEL_58:
      *v11 = ccspake_mac_verify_and_get_session_key();
      result = sub_1C0CF448C(v10, a6);
      v29 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
LABEL_27:
    if (v23 != 2)
    {
      goto LABEL_42;
    }

    v24 = *(a5 + 16);
    v18 = *(a5 + 24);
    v16 = v18 - v24;
    if (!__OFSUB__(v18, v24))
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_31;
  }

  v30 = a5;
  v19 = result;
  if (result > result >> 32)
  {
    __break(1u);
    goto LABEL_60;
  }

  v16 = sub_1C0D7812C();
  if (!v16)
  {
    goto LABEL_17;
  }

  v21 = sub_1C0D7815C();
  if (__OFSUB__(v19, v21))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v16 += v19 - v21;
LABEL_17:
  result = sub_1C0D7814C();
  v22 = a6 >> 62;
  v11 = a3;
  if ((a6 >> 62) <= 1)
  {
    if (v22)
    {
LABEL_51:
      v10 = v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_65;
      }

      goto LABEL_54;
    }

LABEL_53:
    v10 = v30;
    goto LABEL_54;
  }

LABEL_35:
  if (v22 != 2)
  {
    goto LABEL_53;
  }

  v10 = v30;
  if (__OFSUB__(*(v30 + 24), *(v30 + 16)))
  {
    __break(1u);
LABEL_39:
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_42;
    }

    goto LABEL_62;
  }

LABEL_54:
  if (v16)
  {
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D50B94(uint64_t *a1, void *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v14 = sub_1C0D73074(0, a4, a6, a7);
    result = sub_1C0D73074(a4, a5, a6, a7);
    v16 = v14 + result;
    if (__OFADD__(v14, result))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v16 < v14)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v17 = 0;
    if (v16 != v14 && a3)
    {
      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      result = memcpy(a2, (a6 + v14), v17);
    }

    v18 = a4 + v17;
    if (__OFADD__(a4, v17))
    {
      goto LABEL_31;
    }

    v19 = a7 - a6;
    if (v18 < 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

LABEL_18:
    if (v19 >= v18)
    {
      a1[3] = a7;
      a1[4] = v18;
      *a1 = a4;
      a1[1] = a5;
      a1[2] = a6;
      return v17;
    }

    goto LABEL_28;
  }

  v20 = sub_1C0D73074(0, a4, 0, a7);
  result = sub_1C0D73074(a4, a5, 0, a7);
  v21 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v21 >= v20)
  {
    if (v21 == v20)
    {
      v17 = 0;
      v18 = a4;
      goto LABEL_17;
    }

    if (a3)
    {
      if (result >= a3)
      {
        v17 = a3;
      }

      else
      {
        v17 = result;
      }

      result = memcpy(a2, 0, v17);
      v18 = a4 + v17;
      if (!__OFADD__(a4, v17))
      {
LABEL_17:
        v19 = 0;
        if (v18 < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      __break(1u);
    }

    v19 = 0;
    v17 = 0;
    v18 = a4;
    if (a4 < 0)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_1C0D50D78()
{
  result = qword_1EBE6DCC0;
  if (!qword_1EBE6DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCC0);
  }

  return result;
}

unint64_t sub_1C0D50DCC()
{
  result = qword_1EBE6DCC8;
  if (!qword_1EBE6DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCC8);
  }

  return result;
}

uint64_t sub_1C0D50E20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C0D50E8C()
{
  result = qword_1EBE6DCD8;
  if (!qword_1EBE6DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCD8);
  }

  return result;
}

unint64_t sub_1C0D50EE4()
{
  result = qword_1EBE6DCE0;
  if (!qword_1EBE6DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SPAKE2.Spake2Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SPAKE2.Spake2Error(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0D510B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D5110C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1C0D5116C()
{
  if (!qword_1ED907E58)
  {
    type metadata accessor for SPAKE2.SPAKE2Framer(255);
    v0 = sub_1C0D78D3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED907E58);
    }
  }
}

uint64_t sub_1C0D511F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1C0D5123C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t SPAKE2.Verifier.processPeerShareAndGenerateVerificationTag(peerShare:)(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = SPAKE2.Prover.processPeerShareAndGenerateVerificationTag(peerShare:)(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D51398@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 16);
      v6 = sub_1C0D7812C();
      if (!v6)
      {
        sub_1C0D7814C();
        goto LABEL_18;
      }

      v7 = v6;
      v8 = sub_1C0D7815C();
      if (__OFSUB__(v5, v8))
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v9 = v5 - v8 + v7;
      sub_1C0D7814C();
      if (!v9)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

LABEL_13:
    result = cche_secret_key_generate_from_seed();
    *a3 = result;
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!v4)
  {
    goto LABEL_13;
  }

  v10 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1C0D7812C();
  if (!v11)
  {
LABEL_19:
    result = sub_1C0D7814C();
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_1C0D7815C();
  if (__OFSUB__(v10, v13))
  {
    goto LABEL_16;
  }

  v14 = v10 - v13 + v12;
  result = sub_1C0D7814C();
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t HE.SerializedSecretKey.seed.getter()
{
  v1 = *v0;
  sub_1C0CF6468(*v0, *(v0 + 8));
  return v1;
}

uint64_t HE.SerializedSecretKey.init(seed:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  result = cche_rng_seed_sizeof();
  if (v7 == result)
  {
    *a3 = v4;
    a3[1] = a2;
  }

  else
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v10 = 0;
    *(v10 + 4) = 1;
    swift_willThrow();
    return sub_1C0CF448C(v4, a2);
  }

  return result;
}

double HE.SerializedSecretKey.init()@<D0>(_OWORD *a1@<X8>)
{
  v2 = cche_rng_seed_sizeof();
  *&v5 = sub_1C0D0F990(v2);
  *(&v5 + 1) = v3;
  sub_1C0D51768(&v5);
  result = *&v5;
  *a1 = v5;
  return result;
}

uint64_t sub_1C0D516C8(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!result || a2 - result < 1)
  {
    goto LABEL_5;
  }

  result = ccrng();
  if (result)
  {
    result = ccrng_generate_bridge();
LABEL_5:
    v2 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D51768(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      *(&v20 + 7) = 0;
      *&v20 = 0;
      result = sub_1C0D516C8(&v20, &v20);
      goto LABEL_17;
    }

    v7 = *a1;

    sub_1C0CF448C(v3, v2);
    *&v20 = v3;
    *(&v20 + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v8 = *(&v20 + 1);
    v9 = *(v20 + 16);
    v10 = *(v20 + 24);
    result = sub_1C0D7812C();
    if (result)
    {
      v11 = result;
      v12 = sub_1C0D7815C();
      v13 = v9 - v12;
      if (__OFSUB__(v9, v12))
      {
        __break(1u);
      }

      else
      {
        v14 = __OFSUB__(v10, v9);
        v15 = v10 - v9;
        if (!v14)
        {
          v16 = sub_1C0D7814C();
          if (v16 >= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v16;
          }

          result = sub_1C0D516C8(v11 + v13, v11 + v13 + v17);
          *a1 = v20;
          a1[1] = v8 | 0x8000000000000000;
          goto LABEL_17;
        }
      }

      __break(1u);
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (v4)
    {

      sub_1C0CF448C(v3, v2);
      *&v20 = v3;
      *(&v20 + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      result = sub_1C0D51A10(&v20);
      v18 = *(&v20 + 1) | 0x4000000000000000;
      *a1 = v20;
      a1[1] = v18;
      goto LABEL_17;
    }

    result = sub_1C0CF448C(v3, v2);
    *&v20 = v3;
    WORD4(v20) = v2;
    BYTE10(v20) = BYTE2(v2);
    BYTE11(v20) = BYTE3(v2);
    BYTE12(v20) = BYTE4(v2);
    BYTE13(v20) = BYTE5(v2);
    BYTE14(v20) = BYTE6(v2);
    if (!BYTE6(v2))
    {
LABEL_6:
      v6 = DWORD2(v20) | ((WORD6(v20) | (BYTE14(v20) << 16)) << 32);
      *a1 = v20;
      a1[1] = v6;
LABEL_17:
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = ccrng();
    if (result)
    {
      result = ccrng_generate_bridge();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D51A10(int *a1)
{
  result = sub_1C0D7826C();
  v3 = *a1;
  v4 = a1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(a1 + 1);

  result = sub_1C0D7812C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_1C0D7815C();
  v7 = v3 - result;
  if (__OFSUB__(v3, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v4 - v3;
  v9 = sub_1C0D7814C();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  sub_1C0D516C8(v6 + v7, v6 + v7 + v10);
}

uint64_t sub_1C0D51AC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D51B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_1C0D51B84(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 32);
  v6 = cche_secret_key_sizeof();
  type metadata accessor for HE.ObjectStorageWithZeroize();
  v7 = swift_allocObject();
  v7[2] = a2;

  v8 = swift_slowAlloc();
  v7[3] = v8;
  v7[4] = v8 + v6;
  sub_1C0D51398(v3, v4, &v12);
  v9 = v12;

  sub_1C0CF448C(v3, v4);

  if (v9)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v10 = v9;
    *(v10 + 4) = 0;
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_1C0D51C90(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if ((result & (result - 1)) != 0)
  {
    return 1 << -__clz(result);
  }

  else if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t sub_1C0D51CC4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result & (result - 1)) != 0)
  {
    v7 = -__clz(result);
    if ((v7 & 0x3F) != 0x3FLL)
    {
      v8 = 1 << v7;
      goto LABEL_8;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (result <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = result;
  }

LABEL_8:
  v9 = *(a2 + 32);
  result = cche_param_ctx_polynomial_degree();
  if (!result)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = __clz(v8);
  v11 = v10 ^ 0x3F;
  v12 = __clz(result) ^ 0x3F;
  if (v12 < (v10 ^ 0x3F))
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v13 = 5;
    *(v13 + 4) = 1;
    return swift_willThrow();
  }

  if (v10 == 63)
  {
    goto LABEL_34;
  }

  v21 = a4;
  v22 = a3;
  v14 = v12 - (v10 ^ 0x3F) + 1;
  v15 = (v10 ^ 0x3F) - 1;
  v16 = MEMORY[0x1E69E7CC0];
  if (v10 == 0x3F)
  {
LABEL_13:

    return sub_1C0D615B8(a2, v16, v22, v21);
  }

  v23 = MEMORY[0x1E69E7CC0];
  result = sub_1C0CF7C90(0, (v10 ^ 0x3F) & ~((v10 ^ 0x3F) >> 63), 0);
  if (v15 >= -1)
  {
    v17 = 0;
    v16 = v23;
    while (!v17)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_30;
      }

      if (v14 <= 0x1F)
      {
        v18 = (1 << v14) + 1;
      }

      else
      {
        v18 = 1;
      }

      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1C0CF7C90((v19 > 1), v20 + 1, 1);
      }

      *(v23 + 16) = v20 + 1;
      *(v23 + 4 * v20 + 32) = v18;
      v17 = v14 == v12;
      if (v14 == v12)
      {
        v14 = 0;
      }

      else
      {
        ++v14;
      }

      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1C0D51ED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v9 = a1[1];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if ((a6 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(a6))
        {
          v21 = *(a4 + 32);
          result = ccrng();
          if (result)
          {
            v14 = cche_encrypt_symmetric();
            goto LABEL_32;
          }

          goto LABEL_49;
        }

        goto LABEL_38;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    swift_retain_n();
    sub_1C0CF6468(v10, v9);
    sub_1C0CF448C(v10, v9);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v15 = v9 & 0x3FFFFFFFFFFFFFFFLL;
    v16 = *(v10 + 16);

    result = sub_1C0D7812C();
    if (result)
    {
      if (__OFSUB__(v16, sub_1C0D7815C()))
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

      sub_1C0D7814C();
      if ((a6 & 0x8000000000000000) != 0)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if (HIDWORD(a6))
      {
LABEL_41:
        __break(1u);
        __break(1u);
        goto LABEL_42;
      }

      v17 = *(a4 + 32);
      result = ccrng();
      if (!result)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v14 = cche_encrypt_symmetric();

      v18 = v15 | 0x8000000000000000;
      *a1 = v10;
LABEL_31:
      a1[1] = v18;
      goto LABEL_32;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (!v11)
  {
    swift_retain_n();
    sub_1C0CF448C(v10, v9);
    LOWORD(v30) = v9;
    BYTE2(v30) = BYTE2(v9);
    HIBYTE(v30) = BYTE3(v9);
    LOBYTE(v31) = BYTE4(v9);
    HIBYTE(v31) = BYTE5(v9);
    if ((a6 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a6))
      {
        v12 = *(a4 + 32);
        result = ccrng();
        if (result)
        {
          v14 = cche_encrypt_symmetric();

          *a1 = v10;
          a1[1] = v30 | ((v31 | (BYTE6(v9) << 16)) << 32);
LABEL_32:
          v27 = *MEMORY[0x1E69E9840];
          return v14;
        }

        goto LABEL_48;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_34;
  }

  v19 = v9 & 0x3FFFFFFFFFFFFFFFLL;
  swift_retain_n();
  sub_1C0CF6468(v10, v9);
  sub_1C0CF448C(v10, v9);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  v20 = v10 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v20 < v10)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (sub_1C0D7812C() && __OFSUB__(v10, sub_1C0D7815C()))
    {
LABEL_45:
      __break(1u);
    }

    v22 = sub_1C0D7818C();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = sub_1C0D7810C();

    v19 = v25;
  }

  if (v20 < v10)
  {
    goto LABEL_36;
  }

  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_47;
  }

  if (__OFSUB__(v10, sub_1C0D7815C()))
  {
LABEL_40:
    __break(1u);
    __break(1u);
    goto LABEL_41;
  }

  sub_1C0D7814C();
  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(a6))
  {
LABEL_43:
    __break(1u);
    __break(1u);
    goto LABEL_44;
  }

  v26 = *(a4 + 32);
  result = ccrng();
  if (result)
  {
    v14 = cche_encrypt_symmetric();

    v18 = v19 | 0x4000000000000000;
    *a1 = v10;
    goto LABEL_31;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1C0D523F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_8;
  }

  result = sub_1C0D7815C();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C0D7814C();
  if (*(a4 + 24))
  {
    return cche_serialize_seeded_ciphertext_coeff();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *sub_1C0D52488(uint64_t *result, uint64_t a2)
{
  v4 = result;
  v25 = *MEMORY[0x1E69E9840];
  v6 = *result;
  v5 = result[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      swift_retain_n();
      result = sub_1C0CF448C(v6, v5);
      LOWORD(v22) = v5;
      BYTE2(v22) = BYTE2(v5);
      HIBYTE(v22) = BYTE3(v5);
      LOBYTE(v23) = BYTE4(v5);
      HIBYTE(v23) = BYTE5(v5);
      v24 = BYTE6(v5);
      if (*(a2 + 24))
      {
        v8 = cche_serialize_seeded_ciphertext_coeff();

        result = v8;
        *v4 = v6;
        v4[1] = v22 | ((v23 | (v24 << 16)) << 32);
LABEL_19:
        v21 = *MEMORY[0x1E69E9840];
        return result;
      }

      __break(1u);
      goto LABEL_24;
    }

    v15 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    sub_1C0CF6468(v6, v5);
    sub_1C0CF448C(v6, v5);
    *v4 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v16 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v16 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1C0D7812C() && __OFSUB__(v6, sub_1C0D7815C()))
      {
LABEL_22:
        __break(1u);
      }

      v17 = sub_1C0D7818C();
      v18 = *(v17 + 48);
      v19 = *(v17 + 52);
      swift_allocObject();
      v20 = sub_1C0D7810C();

      v15 = v20;
    }

    if (v16 >= v6)
    {

      v14 = sub_1C0D523F0(v6, v6 >> 32, v15, a2);

      *v4 = v6;
      v4[1] = v15 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_19;
      }

LABEL_18:
      result = v14;
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {
    swift_retain_n();
    v9 = v2;
    sub_1C0CF6468(v6, v5);
    sub_1C0CF448C(v6, v5);
    *v4 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v10 = v6;
    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    v13 = *(v10 + 16);
    v12 = *(v10 + 24);

    v14 = sub_1C0D523F0(v13, v12, v11, a2);

    *v4 = v10;
    v4[1] = v11 | 0x8000000000000000;
    if (v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(a2 + 24))
  {
    result = cche_serialize_seeded_ciphertext_coeff();
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C0D52840(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v117 = *MEMORY[0x1E69E9840];
  v114 = a2;
  v9 = *(a2 + 32);
  v10 = cche_param_ctx_polynomial_degree();
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (a4 + 32);
    v14 = *(a4 + 16);
    do
    {
      v15 = *v13++;
      v16 = __OFADD__(v12, v15);
      v12 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_97;
      }

      --v14;
    }

    while (v14);
  }

  else
  {
    v12 = 0;
  }

  v110 = a1;
  v106 = v11;
  v107 = a4;
  inited = v10;
  v18 = sub_1C0D33418(v10, v12);
  v19 = MEMORY[0x1E69E7CC0];
  if (inited)
  {
    v20 = sub_1C0D78C2C();
    *(v20 + 16) = inited;
    bzero((v20 + 32), 8 * inited);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1C0D5FC34(v20, v18);

  if (!inited)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v22 = v12 % inited;
  if (v12 % inited < 0)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if ((v22 & (v22 - 1)) != 0 && (-__clz(v22) & 0x3F) == 0x3F)
  {
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
    goto LABEL_119;
  }

  *&v116 = 0;
  LODWORD(v23) = cche_param_ctx_plaintext_modulus_inverse();
  if (v23 || (v24 = v116, *&v116 = 0, v23 = cche_param_ctx_plaintext_modulus_inverse(), v23))
  {
    v25 = v23;
    sub_1C0CF8DE0();
    swift_allocError();
    *v26 = v25;
    *(v26 + 4) = 0;
    swift_willThrow();

    goto LABEL_17;
  }

  v112 = v24;
  *&v113 = inited;
  v108 = v4;
  v109 = v9;
  v104 = a3;
  v105 = v21;
  v102 = v18;
  v103 = &v99;
  v111 = v116;
  v29 = v110;
  v30 = *(v110 + 16);
  v31 = v106;
  if (v106 >= v30)
  {
    v32 = *(v110 + 16);
  }

  else
  {
    v32 = v106;
  }

  *&v116 = v19;
  sub_1C0CF7C60(v23, v32, 0);
  v33 = v32;
  v12 = v116;
  v18 = 0;
  if (v32)
  {
    v5 = v29 + 32;
    inited = v107 + 32;
    v34 = v30;
    v35 = v31;
    v36 = v31;
    v37 = v30;
    while (v34)
    {
      if (!v35)
      {
        goto LABEL_100;
      }

      v38 = v18 + *v5;
      if (__OFADD__(v18, *v5))
      {
        goto LABEL_101;
      }

      v16 = __OFADD__(v18, *inited);
      v18 += *inited;
      if (v16)
      {
        goto LABEL_102;
      }

      *&v116 = v12;
      v40 = *(v12 + 16);
      v39 = *(v12 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v99 = v33;
        v100 = v37;
        v101 = v40 + 1;
        sub_1C0CF7C60((v39 > 1), v40 + 1, 1);
        v37 = v100;
        v41 = v101;
        v33 = v99;
        v36 = v106;
        v12 = v116;
      }

      --v35;
      *(v12 + 16) = v41;
      *(v12 + 8 * v40 + 32) = v38;
      --v34;
      inited += 8;
      v5 += 8;
      if (!--v32)
      {
        goto LABEL_32;
      }
    }

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
    goto LABEL_107;
  }

  v36 = v31;
  v37 = v30;
LABEL_32:
  if (v37 > v36)
  {
    v5 = v110 + 32;
    v42 = v107 + 32;
    inited = v105;
    while (v33 < v37)
    {
      v43 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_108;
      }

      if (v36 == v33)
      {
        goto LABEL_45;
      }

      if (v33 >= v36)
      {
        goto LABEL_109;
      }

      v44 = *(v5 + 8 * v33);
      v45 = v18 + v44;
      if (__OFADD__(v18, v44))
      {
        goto LABEL_110;
      }

      v46 = *(v42 + 8 * v33);
      v16 = __OFADD__(v18, v46);
      v18 += v46;
      if (v16)
      {
        goto LABEL_111;
      }

      *&v116 = v12;
      v48 = *(v12 + 16);
      v47 = *(v12 + 24);
      if (v48 >= v47 >> 1)
      {
        v99 = v33;
        v100 = v37;
        sub_1C0CF7C60((v47 > 1), v48 + 1, 1);
        v33 = v99;
        v37 = v100;
        v36 = v106;
        v12 = v116;
      }

      *(v12 + 16) = v48 + 1;
      *(v12 + 8 * v48 + 32) = v45;
      ++v33;
      if (v43 == v37)
      {
        goto LABEL_45;
      }
    }

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
    goto LABEL_112;
  }

  inited = v105;
LABEL_45:
  v5 = *(v12 + 16);
  if (v5)
  {
    v110 = v102 - 1;
    if (!__OFSUB__(v102, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v113;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_48;
      }

      goto LABEL_120;
    }

LABEL_119:
    __break(1u);
LABEL_120:
    inited = sub_1C0CFD6D4(inited);
LABEL_48:
    v50 = (v12 + 32);
    v51 = inited;
    v52 = inited + 32;
    do
    {
      v53 = *v50++;
      inited = v53;
      v18 = v53 / v18;
      if (v18 >= v110)
      {
        v54 = v112;
      }

      else
      {
        v54 = v111;
      }

      if (v18 < 0)
      {
        goto LABEL_103;
      }

      if (v18 >= *(v51 + 16))
      {
        goto LABEL_104;
      }

      v55 = *(v52 + 8 * v18);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + 8 * v18) = v55;
      if ((v56 & 1) == 0)
      {
        v55 = sub_1C0CFD6C0(v55);
        *(v52 + 8 * v18) = v55;
      }

      v57 = inited - v18 * v113;
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_105;
      }

      v18 = v113;
      if (v57 >= *(v55 + 2))
      {
        goto LABEL_106;
      }

      *&v55[8 * v57 + 32] = v54;
      --v5;
    }

    while (v5);
    inited = v51;
  }

  v58 = *(inited + 16);
  if (!v58)
  {

    a3 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v115 = MEMORY[0x1E69E7CC0];
  v12 = &v115;
  sub_1C0CF7A90(0, v58, 0);
  v5 = 0;
  a3 = v115;
  v105 = inited;
  while (1)
  {
    if (v5 >= *(inited + 16))
    {
      goto LABEL_115;
    }

    v18 = *(inited + 8 * v5 + 32);
    cche_plaintext_sizeof();
    sub_1C0D78BFC();

    v59 = swift_slowAlloc();
    if (HIDWORD(*(v18 + 16)))
    {
      goto LABEL_116;
    }

    v60 = v59;
    v61 = cche_encode_poly_uint64();
    if (v61)
    {
      v91 = v61;
      sub_1C0CF8DE0();
      swift_allocError();
      *v92 = v91;
      *(v92 + 4) = 0;
      swift_willThrow();

      MEMORY[0x1C68E4EB0](v60, -1, -1);

LABEL_93:

      goto LABEL_17;
    }

    *&v113 = a3;
    v62 = cche_param_ctx_ciphertext_ctx_nmoduli();
    v12 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    inited = swift_initStackObject();
    *(inited + 16) = v114;

    a3 = swift_slowAlloc();
    *(inited + 24) = a3;
    *(inited + 32) = a3 + v12;
    result = cche_rng_seed_sizeof();
    if (result)
    {
      v63 = result;
      if (result < 15)
      {
        if (result < 0)
        {
          goto LABEL_117;
        }

        result = 0;
        v68 = v111 & 0xF00000000000000 | (v63 << 48);
        v111 = v68;
      }

      else
      {
        v64 = sub_1C0D7818C();
        v65 = *(v64 + 48);
        v66 = *(v64 + 52);
        swift_allocObject();
        v67 = sub_1C0D7813C();
        if (v63 >= 0x7FFFFFFF)
        {
          sub_1C0D7828C();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v63;
          v68 = v67 | 0x8000000000000000;
        }

        else
        {
          result = v63 << 32;
          v68 = v67 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v68 = 0xC000000000000000;
    }

    *&v116 = result;
    *(&v116 + 1) = v68;
    v69 = *(v104 + 24);
    if (!v69)
    {
      __break(1u);
      return result;
    }

    v70 = v58;
    v71 = v62;
    v72 = v114;

    v73 = v69;
    v74 = v108;
    v75 = sub_1C0D51ED4(&v116, a3, v60, v72, v73, v71);

    if (v75)
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v93 = v75;
      *(v93 + 4) = 0;
      swift_willThrow();
      swift_setDeallocating();

      MEMORY[0x1C68E4EB0](a3, -1, -1);

      sub_1C0CF448C(v116, *(&v116 + 1));

      MEMORY[0x1C68E4EB0](v60, -1, -1);

      goto LABEL_93;
    }

    v12 = *(&v116 + 1);
    v76 = v116;
    sub_1C0CF6468(v116, *(&v116 + 1));
    v112 = v12;
    sub_1C0CF448C(v76, v12);
    v77 = cche_serialize_seeded_ciphertext_coeff_nbytes();
    if (v77)
    {
      v78 = v77;
      if (v77 <= 14)
      {
        if (v77 < 0)
        {
          goto LABEL_118;
        }

        v77 = 0;
        v83 = v110 & 0xF00000000000000 | (v78 << 48);
        v110 = v83;
      }

      else
      {
        v79 = sub_1C0D7818C();
        v80 = *(v79 + 48);
        v81 = *(v79 + 52);
        swift_allocObject();
        v82 = sub_1C0D7813C();
        if (v78 >= 0x7FFFFFFF)
        {
          sub_1C0D7828C();
          v77 = swift_allocObject();
          *(v77 + 16) = 0;
          *(v77 + 24) = v78;
          v83 = v82 | 0x8000000000000000;
        }

        else
        {
          v77 = v78 << 32;
          v83 = v82 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v83 = 0xC000000000000000;
    }

    *&v116 = v77;
    *(&v116 + 1) = v83;
    v84 = sub_1C0D52488(&v116, inited);
    v108 = v74;
    a3 = v113;
    if (v84)
    {
      break;
    }

    MEMORY[0x1C68E4EB0](v60, -1, -1);

    swift_setDeallocating();
    v12 = *(inited + 16);
    v85 = *(inited + 24);

    if (v85)
    {
      MEMORY[0x1C68E4EB0](v85, -1, -1);
    }

    inited = v105;

    v86 = v116;
    v115 = a3;
    v88 = *(a3 + 16);
    v87 = *(a3 + 24);
    if (v88 >= v87 >> 1)
    {
      v12 = &v115;
      v113 = v116;
      sub_1C0CF7A90((v87 > 1), v88 + 1, 1);
      v86 = v113;
      a3 = v115;
    }

    *(a3 + 16) = v88 + 1;
    v89 = a3 + 32 * v88;
    *(v89 + 32) = v86;
    ++v5;
    v90 = v112;
    *(v89 + 48) = v76;
    *(v89 + 56) = v90;
    v58 = v70;
    if (v70 == v5)
    {

      goto LABEL_17;
    }
  }

  v94 = v84;

  sub_1C0CF8DE0();
  swift_allocError();
  *v95 = v94;
  *(v95 + 4) = 0;
  swift_willThrow();

  MEMORY[0x1C68E4EB0](v60, -1, -1);

  sub_1C0CF448C(v76, v112);
  swift_setDeallocating();
  v96 = *(inited + 16);
  v97 = *(inited + 24);
  if (v97)
  {
    v98 = *(inited + 16);

    MEMORY[0x1C68E4EB0](v97, -1, -1);
    goto LABEL_98;
  }

LABEL_97:

LABEL_98:

  sub_1C0CF448C(v116, *(&v116 + 1));

LABEL_17:
  v27 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t SKANUTClient.input.getter()
{
  v1 = *(v0 + 24);
  sub_1C0CF6468(v1, *(v0 + 32));
  return v1;
}

uint64_t static SKANUTClient.defaultToken()()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = sub_1C0D7825C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v18 - v6);
  type metadata accessor for SecureBytes.Backing();
  v8 = swift_allocObject();
  v8[1] = xmmword_1C0D7DE00;
  if (_swift_stdlib_malloc_size(v8) < 64)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18[0] = 0;
  if (!ccrng())
  {
    goto LABEL_10;
  }

  if (v18[0])
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  ccrng_generate_bridge();
  swift_beginAccess();
  *(v8 + 2) = 32;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *v7 = sub_1C0D051CC;
  v7[1] = v9;
  (*(v1 + 104))(v7, *MEMORY[0x1E6969028], v0);

  sub_1C0D7824C();
  v10 = sub_1C0D7818C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  sub_1C0D7810C();
  (*(v1 + 16))(v5, v7, v0);
  if ((*(v1 + 88))(v5, v0) == *MEMORY[0x1E6969010])
  {
    v13 = sub_1C0D7817C();
    *v14 |= 0x8000000000000000;
    v13(v18, 0);

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    v15 = *(v1 + 8);
    v15(v5, v0);

    v15(v7, v0);
  }

  v16 = *MEMORY[0x1E69E9840];
  return 0x2000000000;
}

void SKANUTClient.init(privateInput:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0D54A1C();
  sub_1C0D786EC();
  v11 = sub_1C0D786BC();
  (*(v7 + 8))(v10, v6);
  v12 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C0D1AAB4(&v17, a1, a2, v12, 2u, 4uLL, 0);
    sub_1C0CF448C(a1, a2);

    v15 = v17;
    v16 = v18;
    *a3 = 2;
    *(a3 + 8) = 4;
    *(a3 + 16) = v16;
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
    *(a3 + 40) = v14;
    *(a3 + 48) = v15;
  }

  else
  {
    __break(1u);
  }
}

id SKANUTClient.blindedElement()()
{
  result = [*(v0 + 48) serializedPublicKey_];
  if (result)
  {
    v2 = result;
    v3 = sub_1C0D7832C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *SKANUTClient.finalize(publicInput:evaluatedElement:proof:publicKey:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v102 = a7;
  v99 = a3;
  v100 = a4;
  v111 = *MEMORY[0x1E69E9840];
  v107 = sub_1C0D786CC();
  v15 = *(v107 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v8;
  v20 = *(v8 + 1);
  v21 = v8[16];
  v22 = *(v8 + 3);
  v23 = *(v8 + 4);
  v24 = a6 >> 62;
  v25 = *(v8 + 5);
  v103 = a8;
  if ((a6 >> 62) > 1)
  {
    v26 = 0;
    if (v24 != 2)
    {
      goto LABEL_10;
    }

    v28 = a5[2];
    v27 = a5[3];
    v26 = v27 - v28;
    if (!__OFSUB__(v27, v28))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v24)
  {
    v26 = BYTE6(a6);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a5), a5))
  {
    goto LABEL_32;
  }

  v26 = HIDWORD(a5) - a5;
LABEL_10:
  v98 = v9;
  v106 = a6;
  v90 = v21;
  v91 = v20;
  v92 = v25;
  v93 = v23;
  v94 = v22;
  v95 = v19;
  v96 = a1;
  v97 = a2;
  v29 = objc_opt_self();
  sub_1C0D7896C();
  v30 = sub_1C0D54A1C();
  sub_1C0D786EC();
  v31 = sub_1C0D786BC();
  v33 = *(v15 + 8);
  v32 = v15 + 8;
  v34 = v33;
  v33(v18, v107);
  v35 = [v29 groupOrderByteCountForCP_];
  if (v35 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v35 + 0x4000000000000000 < 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (v26 != 2 * v35)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
    goto LABEL_27;
  }

  sub_1C0CF6468(a5, v106);
  v36 = v30;
  sub_1C0D786EC();
  v37 = sub_1C0D786BC();
  v38 = v32;
  v39 = v107;
  v105 = v38;
  v34(v18, v107);
  v40 = [v29 groupOrderByteCountForCP_];
  if (v40 < 0)
  {
    goto LABEL_30;
  }

  v89 = a5;
  sub_1C0D01560(v40, a5, v106, &v109);
  a5 = v109;
  v41 = v110;
  v108 = 0;
  sub_1C0CF6468(v109, v110);
  sub_1C0D786EC();
  v42 = sub_1C0D786BC();
  v34(v18, v39);
  v43 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v104 = v34;
  v44 = v43;
  v45 = sub_1C0D7830C();
  v101 = v36;
  v46 = v45;
  v47 = [v44 initWithData:v45 inGroup:v42 reduction:0 corecryptoError:&v108];

  sub_1C0CF448C(a5, v41);
  if (!v47)
  {
    v75 = v108;
    sub_1C0CF8DE0();
    swift_allocError();
    *v76 = v75;
    *(v76 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(a5, v41);
    goto LABEL_27;
  }

  v88 = v47;
  sub_1C0CF448C(a5, v41);
  v48 = v89;
  v49 = v106;
  sub_1C0CF6468(v89, v106);
  sub_1C0D786EC();
  v50 = sub_1C0D786BC();
  v104(v18, v39);
  v51 = [v29 groupOrderByteCountForCP_];
  if (v51 < 0)
  {
    goto LABEL_31;
  }

  v52 = v39;
  sub_1C0D403E4(v51, v48, v49, &v109);
  v53 = v109;
  v54 = v110;
  v108 = 0;
  sub_1C0CF6468(v109, v110);
  sub_1C0D786EC();
  v55 = sub_1C0D786BC();
  v104(v18, v52);
  v56 = objc_allocWithZone(MEMORY[0x1E6999650]);
  a5 = sub_1C0D7830C();
  v57 = [v56 initWithData:a5 inGroup:v55 reduction:0 corecryptoError:&v108];

  sub_1C0CF448C(v53, v54);
  if (v57)
  {
    sub_1C0CF448C(v53, v54);
    LODWORD(v109) = 0;
    v59 = v102;
    v58 = v103;
    sub_1C0CF6468(v102, v103);
    sub_1C0CF6468(v59, v58);
    v106 = v88;
    v60 = v57;
    sub_1C0D786EC();
    v61 = sub_1C0D786BC();
    v104(v18, v52);
    v62 = objc_allocWithZone(MEMORY[0x1E6999648]);
    a5 = sub_1C0D7830C();
    v63 = [v62 initFromPublicKeyBytes:a5 inGroup:v61 compressed:1 corecryptoError:&v109];

    sub_1C0CF448C(v59, v58);
    v89 = v63;
    if (v63)
    {
      v88 = v60;
      v64 = v106;
      sub_1C0CF448C(v59, v58);
      LODWORD(v109) = 0;
      v65 = v99;
      v66 = v100;
      sub_1C0CF6468(v99, v100);
      sub_1C0CF6468(v65, v66);
      sub_1C0D786EC();
      v67 = sub_1C0D786BC();
      v104(v18, v52);
      v68 = objc_allocWithZone(MEMORY[0x1E6999648]);
      a5 = sub_1C0D7830C();
      v69 = [v68 initFromPublicKeyBytes:a5 inGroup:v67 compressed:1 corecryptoError:&v109];

      sub_1C0CF448C(v65, v66);
      if (v69)
      {
        sub_1C0CF448C(v65, v66);

        v70 = v88;
        v71 = v89;
        v72 = v98;
        sub_1C0D1BA14(v94, v93, v96, v97, v92, v69, v64, v70, v89, v95, v91, v90);
        if (!v72)
        {
          a5 = v73;
        }
      }

      else
      {
        v82 = v109;
        sub_1C0CF8DE0();
        swift_allocError();
        *v83 = v82;
        *(v83 + 4) = 0;
        swift_willThrow();
        sub_1C0CF448C(v65, v66);

        v84 = v88;
      }
    }

    else
    {
      v79 = v109;
      sub_1C0CF8DE0();
      swift_allocError();
      *v80 = v79;
      *(v80 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v59, v58);

      v81 = v106;
    }
  }

  else
  {
    v77 = v108;
    sub_1C0CF8DE0();
    swift_allocError();
    *v78 = v77;
    *(v78 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v53, v54);
  }

LABEL_27:
  v85 = *MEMORY[0x1E69E9840];
  return a5;
}

id SKANUTTestServer.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7896C();
  sub_1C0D54A1C();
  sub_1C0D786EC();
  v7 = sub_1C0D786BC();
  (*(v3 + 8))(v6, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    *a1 = 2;
    *(a1 + 8) = 4;
    *(a1 + 16) = result;
    *(a1 + 24) = 0;
    *(a1 + 32) = result;

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SKANUTTestServer.publicKey()()
{
  v1 = sub_1C0D786CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C0D7887C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  sub_1C0D7896C();
  sub_1C0D54A1C();
  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  (*(v2 + 8))(v5, v1);
  v13 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v14 = sub_1C0D13834(v11, v13);

  v15 = [v14 serializedPublicKey_];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1C0D7832C();
    v19 = v18;

    v23[2] = v17;
    v23[3] = v19;
    v20 = sub_1C0D7886C();
    v21 = MEMORY[0x1C68E3840](v20);
    (*(v7 + 8))(v10, v6);
    return v21;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t SKANUTTestServer.evaluate(blindedElement:publicInput:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v61 = *MEMORY[0x1E69E9840];
  v7 = sub_1C0D786CC();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v52) = *v4;
  v12 = *(v4 + 1);
  v46 = *(v4 + 2);
  v47 = v12;
  LODWORD(v51) = v4[24];
  LODWORD(v55) = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(a1, a2);
  v53 = sub_1C0D54A1C();
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v14 = *(v8 + 8);
  v54 = v7;
  v14(v11, v7);
  v15 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v16 = sub_1C0D7830C();
  v17 = [v15 initFromPublicKeyBytes:v16 inGroup:v13 compressed:1 corecryptoError:&v55];

  sub_1C0CF448C(a1, a2);
  if (!v17)
  {
    v40 = v55;
    sub_1C0CF8DE0();
    swift_allocError();
    *v41 = v40;
    *(v41 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(a1, a2);
    goto LABEL_13;
  }

  sub_1C0CF448C(a1, a2);
  sub_1C0D786EC();
  v18 = sub_1C0D786BC();
  v14(v11, v54);
  v19 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  if (!((v52 != 1) | v51 & 1))
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v42 = 2;
    swift_willThrow();

    goto LABEL_12;
  }

  v21 = v50;
  v22 = sub_1C0D3D2A4(&v55, v17, v48, v49, v19, v52, v47, v46, v51);

  if (v21)
  {
LABEL_12:

    goto LABEL_13;
  }

  v23 = v55;
  if (!v55)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v56;
  v25 = [v55 serializedBigEndianScalar];
  if (!v25)
  {
    goto LABEL_17;
  }

  v26 = v25;
  v54 = v23;
  v27 = sub_1C0D7832C();
  v29 = v28;

  v53 = v24;
  v30 = [v24 serializedBigEndianScalar];
  if (!v30)
  {
    goto LABEL_17;
  }

  v31 = v30;
  v32 = sub_1C0D7832C();
  v34 = v33;

  v59 = v27;
  v60 = v29;
  v57 = MEMORY[0x1E6969080];
  v58 = MEMORY[0x1E6969078];
  v55 = v32;
  v56 = v34;
  v35 = __swift_project_boxed_opaque_existential_1(&v55, MEMORY[0x1E6969080]);
  v36 = *v35;
  v37 = v35[1];
  v51 = v29;
  v52 = v27;
  sub_1C0CF6468(v27, v29);
  sub_1C0CF6468(v32, v34);
  sub_1C0D4268C(v36, v37);
  __swift_destroy_boxed_opaque_existential_1(&v55);
  v14 = v59;
  v38 = [v22 serializedPublicKey_];
  v50 = v22;
  if (v38)
  {
    v39 = v38;
    sub_1C0D7832C();

    sub_1C0CF448C(v32, v34);
    sub_1C0CF448C(v52, v51);

LABEL_13:
    v43 = *MEMORY[0x1E69E9840];
    return v14;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D54938(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1C0D7828C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1C0D7812C();
  if (v3)
  {
    result = sub_1C0D7815C();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1C0D7814C();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C0D77CE4(v3, v7);

  return v8;
}

unint64_t sub_1C0D54A1C()
{
  result = qword_1ED9076B0;
  if (!qword_1ED9076B0)
  {
    sub_1C0D7896C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9076B0);
  }

  return result;
}

uint64_t sub_1C0D54A74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D54ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D54B28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = _s13ClientSecretsVMa_0();
  if (v7 <= 0x3F)
  {
    result = _s14KeyCommitmentsVMa();
    if (v8 <= 0x3F)
    {
      result = type metadata accessor for ATHM.Ciphersuite();
      if (v9 <= 0x3F)
      {
        if (v5 > 0x3F)
        {
          return AssociatedTypeWitness;
        }

        else
        {
          result = _s12TokenRequestVMa();
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0D54CF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v43 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_checkMetadataState() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= v11)
  {
    v17 = *(v10 + 84);
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  if (v11 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v13 | 7;
  v21 = v13 | 7 | v14;
  v22 = ((v12 + v13) & ~v13) + v12 + v21;
  v23 = v15 + v14;
  v24 = v12 + 7;
  v25 = (v24 & 0xFFFFFFFFFFFFFFF8) + ((v20 + v15 + ((v15 + v14 + ((v15 + v14) & ~v14)) & ~v14)) & ~v20) + 8;
  v26 = v14 + 8;
  v27 = v15 + 7;
  if (v19 < a2)
  {
    v28 = ((((v27 + ((v23 + ((v23 + ((v26 + (v22 & ~v21) + v25) & ~v14)) & ~v14)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v29 = a2 - v19;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = v29 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *(a1 + v28);
        if (!*(a1 + v28))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v33 = *(a1 + v28);
        if (!v33)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (!v32)
      {
        goto LABEL_36;
      }

      v33 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_36;
      }
    }

    v35 = v33 - 1;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v35 = 0;
      v36 = *a1;
    }

    else
    {
      v36 = 0;
    }

    return v19 + (v36 | v35) + 1;
  }

LABEL_36:
  if (v9 == v19)
  {
    v37 = *(v43 + 48);
    v38 = a1;
LABEL_38:

    return v37(v38, v9, AssociatedTypeWitness);
  }

  v39 = ~v14;
  v40 = (a1 + v22) & ~v21;
  if (v17 == v19)
  {
    if (v11 < v16)
    {
      v38 = ((v20 + v15 + ((v23 + ((v23 + v40) & v39)) & v39)) & ~v20);
      if (v9 >= 0x7FFFFFFF)
      {
        v37 = *(v43 + 48);
        goto LABEL_38;
      }

      v41 = *((v38 + v24) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_53;
    }
  }

  else
  {
    v40 = (v26 + v40 + v25) & v39;
    if (v11 < v18)
    {
      v41 = *(((((v27 + ((v23 + ((v23 + v40) & v39)) & v39)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_53:
      if (v41 >= 0xFFFFFFFF)
      {
        LODWORD(v41) = -1;
      }

      return (v41 + 1);
    }
  }

  v42 = *(v10 + 48);

  return v42(v40);
}

void sub_1C0D55110(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v49 = v10;
  v11 = *(v10 + 84);
  v12 = *(swift_checkMetadataState() - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v10 + 80);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v11 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= v13)
  {
    v19 = *(v12 + 84);
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v19;
  }

  if (v13 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(v12 + 84);
  }

  v22 = ((v14 + v15) & ~v15) + v14;
  v23 = v15 | 7;
  v24 = v23 | v16;
  v25 = v22 + (v23 | v16);
  v26 = v17 + v16;
  v27 = v23 + v17;
  v28 = v14 + 7;
  v29 = (v28 & 0xFFFFFFFFFFFFFFF8) + 8;
  v30 = ((v23 + v17 + ((v17 + v16 + ((v17 + v16) & ~v16)) & ~v16)) & ~v23) + v29;
  v31 = v16 + 8;
  v32 = (v17 + v16 + ((v17 + v16 + ((v16 + 8 + (v25 & ~(v23 | v16)) + v30) & ~v16)) & ~v16)) & ~v16;
  v33 = v17 + 7;
  v34 = ((((v33 + v32) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v21 >= a3)
  {
    v38 = 0;
    v39 = a2 - v21;
    if (a2 <= v21)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (v34)
    {
      v40 = 1;
    }

    else
    {
      v40 = v39;
    }

    if (v34)
    {
      v41 = ~v21 + a2;
      bzero(a1, v34);
      *a1 = v41;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        *(a1 + v34) = v40;
      }

      else
      {
        *(a1 + v34) = v40;
      }
    }

    else if (v38)
    {
      *(a1 + v34) = v40;
    }

    return;
  }

  v35 = a3 - v21;
  if (v34)
  {
    v36 = 2;
  }

  else
  {
    v36 = v35 + 1;
  }

  if (v36 >= 0x10000)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2;
  }

  if (v36 < 0x100)
  {
    v37 = 1;
  }

  if (v36 >= 2)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = a2 - v21;
  if (a2 > v21)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v38 > 1)
  {
    if (v38 != 2)
    {
      *(a1 + v34) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v34) = 0;
  }

  else if (v38)
  {
    *(a1 + v34) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v11 == v21)
  {
LABEL_43:
    v42 = *(v49 + 56);

    v42(a1, a2, v11, AssociatedTypeWitness);
    return;
  }

  v43 = ~v16;
  v44 = (a1 + v25) & ~v24;
  if (v19 != v21)
  {
    v44 = (v31 + v44 + v30) & v43;
    if (v13 < v20)
    {
      v46 = ((((v33 + ((v26 + ((v26 + v44) & v43)) & v43)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v46 = a2 & 0x7FFFFFFF;
        v46[1] = 0;
      }

      else
      {
        v46[1] = (a2 - 1);
      }

      return;
    }

    goto LABEL_60;
  }

  if (v13 >= v18)
  {
LABEL_60:
    v47 = *(v12 + 56);

    v47(v44, a2);
    return;
  }

  a1 = ((v27 + ((v26 + ((v26 + v44) & v43)) & v43)) & ~v23);
  if (v18 >= a2)
  {
    if (v11 >= 0x7FFFFFFF)
    {
      goto LABEL_43;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v48 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v48 = (a2 - 1);
    }

    *((a1 + v28) & 0xFFFFFFFFFFFFFFF8) = v48;
  }

  else if ((v28 & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v45 = ~v18 + a2;
    bzero(((v27 + ((v26 + ((v26 + v44) & v43)) & v43)) & ~v23), v29);
    *a1 = v45;
  }
}

uint64_t sub_1C0D555C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D55634(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1C0D55784(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for CryptoKitSecretSharing_SecretShare()
{
  result = qword_1EBE6DDF0;
  if (!qword_1EBE6DDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0D55A10()
{
  sub_1C0D783EC();
  if (v0 <= 0x3F)
  {
    sub_1C0D55AF0(319, &qword_1EBE6DE00);
    if (v1 <= 0x3F)
    {
      sub_1C0D55AF0(319, &qword_1ED907EB0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C0D55AF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C0D78D3C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C0D55B3C()
{
  v0 = sub_1C0D7859C();
  __swift_allocate_value_buffer(v0, qword_1EBE72DA8);
  __swift_project_value_buffer(v0, qword_1EBE72DA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC0, &qword_1C0D7D2D0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6DAC8, &qword_1C0D7D2D8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C0D7CAE0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "version";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C0D7857C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "share_x";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "share_y";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "threshold";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "iv";
  *(v16 + 1) = 2;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ciphertext";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "tag";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "associated_data";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v8();
  return sub_1C0D7858C();
}

uint64_t sub_1C0D55EA0()
{
  while (1)
  {
    result = sub_1C0D7844C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result >= 8)
      {
        if (result == 8)
        {
          v4 = *(type metadata accessor for CryptoKitSecretSharing_SecretShare() + 48);
          sub_1C0D7847C();
        }
      }

      else
      {
LABEL_2:
        sub_1C0D7848C();
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      v3 = *(type metadata accessor for CryptoKitSecretSharing_SecretShare() + 44);
      sub_1C0D7849C();
    }

    else if (result == 1 || result == 2)
    {
      sub_1C0D784AC();
    }
  }
}

uint64_t sub_1C0D55FF8()
{
  if (!*v0 || (result = sub_1C0D7855C(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_1C0D7855C(), !v1))
    {
      v3 = *(v0 + 8);
      v4 = *(v0 + 16);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 != 2)
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 16);
        v7 = *(v3 + 24);
      }

      else
      {
        if (!v5)
        {
          if ((v4 & 0xFF000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v6 = v3;
        v7 = v3 >> 32;
      }

      if (v6 == v7)
      {
        goto LABEL_14;
      }

LABEL_13:
      result = sub_1C0D7854C();
      if (v1)
      {
        return result;
      }

LABEL_14:
      result = sub_1C0D56230(v0);
      if (v1)
      {
        return result;
      }

      v8 = *(v0 + 24);
      v9 = *(v0 + 32);
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          goto LABEL_25;
        }

        v11 = *(v8 + 16);
        v12 = *(v8 + 24);
      }

      else
      {
        if (!v10)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
LABEL_25:
            v13 = *(v0 + 40);
            v14 = *(v0 + 48);
            v15 = v14 >> 62;
            if ((v14 >> 62) > 1)
            {
              if (v15 != 2)
              {
                goto LABEL_34;
              }

              v16 = *(v13 + 16);
              v17 = *(v13 + 24);
            }

            else
            {
              if (!v15)
              {
                if ((v14 & 0xFF000000000000) == 0)
                {
LABEL_34:
                  v18 = *(v0 + 56);
                  v19 = *(v0 + 64);
                  v20 = v19 >> 62;
                  if ((v19 >> 62) > 1)
                  {
                    if (v20 != 2)
                    {
                      goto LABEL_43;
                    }

                    v21 = *(v18 + 16);
                    v22 = *(v18 + 24);
                  }

                  else
                  {
                    if (!v20)
                    {
                      if ((v19 & 0xFF000000000000) == 0)
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_42;
                    }

                    v21 = v18;
                    v22 = v18 >> 32;
                  }

                  if (v21 != v22)
                  {
LABEL_42:
                    sub_1C0D7854C();
                  }

LABEL_43:
                  sub_1C0D562A8(v0);
                  v23 = v0 + *(type metadata accessor for CryptoKitSecretSharing_SecretShare() + 40);
                  return sub_1C0D783CC();
                }

LABEL_33:
                sub_1C0D7854C();
                goto LABEL_34;
              }

              v16 = v13;
              v17 = v13 >> 32;
            }

            if (v16 == v17)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }

LABEL_24:
          sub_1C0D7854C();
          goto LABEL_25;
        }

        v11 = v8;
        v12 = v8 >> 32;
      }

      if (v11 == v12)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_1C0D56230(uint64_t a1)
{
  result = type metadata accessor for CryptoKitSecretSharing_SecretShare();
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C0D7855C();
  }

  return result;
}

uint64_t sub_1C0D562A8(uint64_t a1)
{
  result = type metadata accessor for CryptoKitSecretSharing_SecretShare();
  v3 = a1 + *(result + 48);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_1C0CF6468(*v3, *(v3 + 8));
    sub_1C0D7854C();
    return sub_1C0D13830(v5, v4);
  }

  return result;
}

double sub_1C0D56348@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_1C0D7DF40;
  *(a2 + 32) = xmmword_1C0D7DF40;
  *(a2 + 48) = xmmword_1C0D7DF40;
  *(a2 + 64) = 0xC000000000000000;
  v4 = a2 + a1[10];
  sub_1C0D783DC();
  v5 = a1[12];
  v6 = a2 + a1[11];
  *v6 = 0;
  *(v6 + 4) = 1;
  result = 0.0;
  *(a2 + v5) = xmmword_1C0D7D9D0;
  return result;
}

uint64_t sub_1C0D563D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0D56444(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1C0D783EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C0D564B8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1C0D5650C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0D56A5C(&qword_1EBE6DE28, type metadata accessor for CryptoKitSecretSharing_SecretShare);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C0D56588@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE6CCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C0D7859C();
  v3 = __swift_project_value_buffer(v2, qword_1EBE72DA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C0D56630(uint64_t a1)
{
  v2 = sub_1C0D56A5C(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C0D5669C()
{
  sub_1C0D56A5C(&qword_1EBE6DE10, type metadata accessor for CryptoKitSecretSharing_SecretShare);

  return sub_1C0D7850C();
}

uint64_t sub_1C0D5683C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || (sub_1C0D04660(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CryptoKitSecretSharing_SecretShare();
  v5 = v4[11];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((sub_1C0D04660(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0 || (sub_1C0D04660(*(a1 + 40), *(a1 + 48), *(a2 + 40), *(a2 + 48)) & 1) == 0 || (sub_1C0D04660(*(a1 + 56), *(a1 + 64), *(a2 + 56), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[12];
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 != 15)
  {
    if (v14 >> 60 != 15)
    {
      sub_1C0D134D0(v12, v11);
      sub_1C0D134D0(v15, v14);
      v17 = sub_1C0D04660(v12, v11, v15, v14);
      sub_1C0D13830(v15, v14);
      sub_1C0D13830(v12, v11);
      if (v17)
      {
        goto LABEL_20;
      }

      return 0;
    }

LABEL_17:
    sub_1C0D134D0(v12, v11);
    sub_1C0D134D0(v15, v14);
    sub_1C0D13830(v12, v11);
    sub_1C0D13830(v15, v14);
    return 0;
  }

  if (v14 >> 60 != 15)
  {
    goto LABEL_17;
  }

  sub_1C0D134D0(v12, v11);
  sub_1C0D134D0(v15, v14);
  sub_1C0D13830(v12, v11);
LABEL_20:
  v18 = v4[10];
  sub_1C0D783EC();
  sub_1C0D56A5C(&qword_1EBE6DAE0, MEMORY[0x1E69AAC08]);
  return sub_1C0D78A7C() & 1;
}

uint64_t sub_1C0D56A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CryptoKitError.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1C68E3FF0](v2);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    return sub_1C0D7901C();
  }
}

uint64_t CryptoKitError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1C0D78FFC();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1C68E3FF0](v3);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    sub_1C0D7901C();
  }

  return sub_1C0D7902C();
}

uint64_t sub_1C0D56C08()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else if (v1 == 4)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1C68E3FF0](v2);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    return sub_1C0D7901C();
  }
}

uint64_t sub_1C0D56CA4()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1C0D78FFC();
  if (v2 == 1)
  {
    if (v1 > 2)
    {
      if (v1 == 3)
      {
        v3 = 4;
      }

      else if (v1 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }
    }

    else if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1C68E3FF0](v3);
  }

  else
  {
    MEMORY[0x1C68E3FF0](3);
    sub_1C0D7901C();
  }

  return sub_1C0D7902C();
}

uint64_t CryptoKitASN1Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

uint64_t _s16CryptoKitPrivate0aB5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 3)
  {
    if (v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 4)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_1C0D56EB4()
{
  result = qword_1EBE6DE30;
  if (!qword_1EBE6DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DE30);
  }

  return result;
}

unint64_t sub_1C0D56F0C()
{
  result = qword_1EBE6DE38;
  if (!qword_1EBE6DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DE38);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CryptoKitError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1C0D56FC0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0D56FDC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CryptoKitASN1Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CryptoKitASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0D5715C(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    sub_1C0CF2CF4(v5 + 32, v5 + 32 + *(v5 + 16), v8);
    v6 = v8[0];

    *v1 = v6;
    v5 = v6;
  }

  swift_beginAccess();
  return a1(v5 + 32, v5 + 32 + *(v5 + 16));
}

uint64_t sub_1C0D57230()
{
  result = cckem_kyber768();
  if (result)
  {
    qword_1EBE6DE40 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Kyber768.PublicKey.init<A>(dataRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v7 = cckem_sizeof_pub_ctx();
  v10 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C0D58B18(v10, sub_1C0D5748C);
  if (!v3)
  {
    *a3 = v8;
  }

  return (*(*(a2 - 8) + 8))(a1, a2);
}

void *sub_1C0D57364(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    if (qword_1EBE6CCD8 != -1)
    {
      swift_once();
    }

    cckem_pub_ctx_init();
    v7 = *(a3 + 16);
    result = cckem_import_pubkey();
    if (result)
    {
      v8 = result;
      sub_1C0CF8DE0();
      swift_allocError();
      *v9 = v8;
      *(v9 + 4) = 0;
      return swift_willThrow();
    }

    else
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D57448(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = *a1;
  if (result)
  {
    return sub_1C0D574AC(result, a3, a2, a4, a5, a6, &v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D574AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v11 = cckem_pub_ctx_init();
  MEMORY[0x1EEE9AC00](v11);
  result = sub_1C0D7819C();
  if (v7)
  {
    *a7 = v7;
  }

  else
  {
    *a3 = a4;
  }

  return result;
}

uint64_t sub_1C0D575BC(uint64_t result)
{
  v1 = result;
  if (qword_1EBE6CCD8 == -1)
  {
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return result;
  }

  result = swift_once();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = cckem_import_pubkey();
  if (result)
  {
    v2 = result;
    sub_1C0CF8DE0();
    swift_allocError();
    *v3 = v2;
    *(v3 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t Kyber768.PublicKey.dataRepresentation.getter()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v2 = cckem_pubkey_nbytes_info();
  v6[0] = sub_1C0D0F990(v2);
  v6[1] = v3;
  sub_1C0D42424(v6, 0);
  sub_1C0D58C18(v6);
  result = v6[0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Kyber768.PublicKey.encapsulate()()
{
  v1 = *v0;
  v4[3] = type metadata accessor for Rng();
  v4[4] = &off_1F40367A0;
  v4[0] = swift_allocObject();
  sub_1C0D577E8(v1 + 32, v4, &v3);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *sub_1C0D577E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1C0D786AC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v9 = cckem_shared_key_nbytes_info();
  if (qword_1EBE6CB98 != -1)
  {
    swift_once();
  }

  result = off_1EBE6CBA0;
  *&v16 = off_1EBE6CBA0;
  if (v9)
  {
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1C0D64E2C(v9, 0);
    v11 = v16;
  }

  else
  {
  }

  v17 = v11;
  v12 = cckem_encapsulated_key_nbytes_info();
  *&v15 = sub_1C0D0F990(v12);
  *(&v15 + 1) = v13;
  v14 = sub_1C0D42424(&v15, 0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v14);
  *(&v15 - 4) = &v16;
  *(&v15 - 3) = a2;
  *(&v15 - 2) = a1;
  sub_1C0D5715C(sub_1C0D59574);
  if (v3)
  {

    result = sub_1C0CF448C(v16, *(&v16 + 1));
    *a3 = v3;
  }

  else
  {
    *&v15 = v17;
    sub_1C0CF39A8();

    sub_1C0D7868C();
    sub_1C0CF6468(v16, *(&v16 + 1));
    sub_1C0D787DC();

    return sub_1C0CF448C(v16, *(&v16 + 1));
  }

  return result;
}

void sub_1C0D57A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = cckem_encapsulate();
  if (v5)
  {
    v6 = v5;
    sub_1C0CF8DE0();
    swift_allocError();
    *v7 = v6;
    *(v7 + 4) = 0;
    swift_willThrow();
  }
}

uint64_t sub_1C0D57AC4()
{
  v1 = *v0;
  v4[3] = type metadata accessor for Rng();
  v4[4] = &off_1F40367A0;
  v4[0] = swift_allocObject();
  sub_1C0D577E8(v1 + 32, v4, &v3);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t Kyber768.PrivateKey.init<A>(bytes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v7 = cckem_sizeof_full_ctx();
  v10 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C0CF3FD0(v10, sub_1C0D5942C);
  if (!v3)
  {
    *a3 = v8;
  }

  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t *sub_1C0D57C64(uint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    v7 = *result;
    result = sub_1C0D7819C();
    if (!v4)
    {
      *a2 = a4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D57CE4(uint64_t a1, uint64_t a2)
{
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v4 = cckem_privkey_nbytes_info();
  result = cckem_pubkey_nbytes_info();
  v6 = v4 + result;
  if (__OFADD__(v4, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!a1)
  {
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 != a2 - a1)
  {
LABEL_11:
    v7 = 1;
    v8 = 1;
    goto LABEL_12;
  }

  LODWORD(result) = cckem_import_privkey();
  if (!result)
  {
    result = cckem_public_ctx();
    if (result)
    {
      result = cckem_import_pubkey();
      if (!result)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return result;
  }

LABEL_9:
  v7 = result;
  v8 = 0;
LABEL_12:
  sub_1C0CF8DE0();
  swift_allocError();
  *v9 = v7;
  *(v9 + 4) = v8;
  return swift_willThrow();
}

uint64_t Kyber768.PrivateKey.dataRepresentation.getter()
{
  v9[3] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v2 = cckem_privkey_nbytes_info();
  v3 = cckem_pubkey_nbytes_info();
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  v9[0] = sub_1C0D0F990(v2 + v3);
  v9[1] = v5;
  sub_1C0D42424(v9, 0);
  v8 = v4;
  sub_1C0D58F98(v9, v1 + 32, &v8, v4);
  result = v9[0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static Kyber768.PrivateKey.generate()@<X0>(unint64_t *a1@<X8>)
{
  v7[3] = type metadata accessor for Rng();
  v7[4] = &off_1F40367A0;
  v7[0] = swift_allocObject();
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v3 = cckem_sizeof_full_ctx();
  v6 = MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C0CF3FD0(v6, sub_1C0D5944C);
  if (!v1)
  {
    *a1 = v4;
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *sub_1C0D58014(void *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    if (qword_1EBE6CCD8 != -1)
    {
      swift_once();
    }

    cckem_full_ctx_init();
    v4 = a3[4];
    v5 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    MEMORY[0x1EEE9AC00](v5);
    return (*(v4 + 8))(sub_1C0D59510);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *Kyber768.PrivateKey.decapsulate(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  return sub_1C0D58198((v5 + 32), v5 + 32 + *(v5 + 16), a1, a2);
}

void *sub_1C0D58198(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = result;
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v8 = cckem_shared_key_nbytes_info();
  if (qword_1EBE6CB98 != -1)
  {
    swift_once();
  }

  result = off_1EBE6CBA0;
  v10 = off_1EBE6CBA0;
  if (v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {

      sub_1C0D64E2C(v8, 0);
      v9 = v10;
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_10:
  v11 = v9;
  sub_1C0CF6468(a3, a4);
  sub_1C0CF2838(&v11, a3, a4, v7);
  if (v4)
  {
  }

  sub_1C0CF39A8();
  return sub_1C0D7868C();
}

uint64_t sub_1C0D582F8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = result;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      if (result)
      {
        goto LABEL_25;
      }

      goto LABEL_33;
    }

    v9 = *(a3 + 16);
    v8 = *(a3 + 24);
    v10 = sub_1C0D7812C();
    if (v10)
    {
      v11 = sub_1C0D7815C();
      if (__OFSUB__(v9, v11))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v10 += v9 - v11;
    }

    v12 = __OFSUB__(v8, v9);
    v13 = v8 - v9;
    if (!v12)
    {
      v14 = sub_1C0D7814C();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

LABEL_20:
      v20 = v15 + v10;
      if (v10)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      result = sub_1C0D5854C(v10, v21, a5, v6);
      goto LABEL_27;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v16 = a3;
    v17 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      v10 = sub_1C0D7812C();
      if (!v10)
      {
        goto LABEL_17;
      }

      v18 = sub_1C0D7815C();
      if (!__OFSUB__(v16, v18))
      {
        v10 += v16 - v18;
LABEL_17:
        v19 = sub_1C0D7814C();
        if (v19 >= v17)
        {
          v15 = v17;
        }

        else
        {
          v15 = v19;
        }

        goto LABEL_20;
      }

LABEL_31:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (result)
  {
LABEL_25:
    result = cckem_decapsulate();
    if (result)
    {
      v22 = result;
      sub_1C0CF8DE0();
      swift_allocError();
      *v23 = v22;
      *(v23 + 4) = 0;
      result = swift_willThrow();
    }

LABEL_27:
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1C0D5854C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = cckem_decapsulate();
  if (result)
  {
    v4 = result;
    sub_1C0CF8DE0();
    swift_allocError();
    *v5 = v4;
    *(v5 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t Kyber768.PrivateKey.publicKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v4 = cckem_sizeof_pub_ctx();
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  if (v4)
  {
    v6 = sub_1C0D78C2C();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
LABEL_12:
    __break(1u);
  }

  if (cckem_export_pubkey())
  {
LABEL_11:
    __break(1u);
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 16) = v5;
  v7 = cckem_sizeof_pub_ctx();
  v11 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C0D58B18(v11, sub_1C0D59468);

  *a1 = v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D5877C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v4 = cckem_sizeof_pub_ctx();
  if (v4 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  if (v4)
  {
    v6 = sub_1C0D78C2C();
    *(v6 + 16) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if (!cckem_public_ctx())
  {
LABEL_15:
    __break(1u);
  }

  if (cckem_export_pubkey())
  {
    goto LABEL_13;
  }

  *(v6 + 16) = v5;
  v7 = cckem_sizeof_pub_ctx();
  v12 = MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C0D58B18(v12, sub_1C0D596B4);
  if (v2)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v9 = v8;

    *a2 = v9;
    v11 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1C0D58940@<X0>(unint64_t *a1@<X8>)
{
  v7[3] = type metadata accessor for Rng();
  v7[4] = &off_1F40367A0;
  v7[0] = swift_allocObject();
  if (qword_1EBE6CCD8 != -1)
  {
    swift_once();
  }

  v3 = cckem_sizeof_full_ctx();
  v6 = MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C0CF3FD0(v6, sub_1C0D596CC);
  if (!v1)
  {
    *a1 = v4;
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *sub_1C0D58A3C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  return sub_1C0D58198((v5 + 32), v5 + 32 + *(v5 + 16), a1, a2);
}

uint64_t sub_1C0D58AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3 + 32 + *(v3 + 16);
  return sub_1C0D5877C(v3 + 32, a1);
}

uint64_t sub_1C0D58B18(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1C0D78C2C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C0D58C18(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      sub_1C0CF448C(v5, v4);
      LOWORD(v19) = v4;
      BYTE2(v19) = BYTE2(v4);
      HIBYTE(v19) = BYTE3(v4);
      LOBYTE(v20) = BYTE4(v4);
      HIBYTE(v20) = BYTE5(v4);
      result = cckem_export_pubkey();
      if (!result)
      {
        *a1 = v5;
        a1[1] = v19 | ((v20 | (BYTE6(v4) << 16)) << 32);
LABEL_24:
        v18 = *MEMORY[0x1E69E9840];
        return result;
      }

      __break(1u);
      goto LABEL_26;
    }

    v12 = v4 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1C0CF448C(v5, v4);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    v2 = v5;
    v1 = v5 >> 32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_18:
      if (v1 < v2)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      result = sub_1C0D7812C();
      if (result)
      {
        if (__OFSUB__(v2, sub_1C0D7815C()))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        sub_1C0D7814C();
        v17 = cckem_export_pubkey();

        if (v17)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v11 = v12 | 0x4000000000000000;
        *a1 = v5;
        goto LABEL_23;
      }

      goto LABEL_34;
    }

    if (v1 < v5)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1C0D7812C() && __OFSUB__(v5, sub_1C0D7815C()))
    {
LABEL_32:
      __break(1u);
    }

LABEL_17:
    v13 = sub_1C0D7818C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1C0D7810C();

    v12 = v16;
    goto LABEL_18;
  }

  if (v6 != 2)
  {
    result = cckem_export_pubkey();
    if (!result)
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_17;
  }

  v8 = *a1;

  sub_1C0CF448C(v5, v4);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v10 = *(v5 + 16);
  result = sub_1C0D7812C();
  if (result)
  {
    if (__OFSUB__(v10, sub_1C0D7815C()))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1C0D7814C();
    result = cckem_export_pubkey();
    if (result)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = v9 | 0x8000000000000000;
    *a1 = v5;
LABEL_23:
    a1[1] = v11;
    goto LABEL_24;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C0D58F98(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v13 = *a1;

      sub_1C0CF448C(v9, v8);
      *a1 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      sub_1C0D7823C();
      v14 = v8 & 0x3FFFFFFFFFFFFFFFLL;
      v15 = *(v9 + 16);
      result = sub_1C0D7812C();
      if (result)
      {
        if (!__OFSUB__(v15, sub_1C0D7815C()))
        {
          sub_1C0D7814C();
          if (!cckem_export_privkey())
          {
            if (__OFSUB__(v5, *a3))
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v28 = v5 - *a3;
            result = cckem_public_ctx();
            if (result)
            {
              v16 = *a3;
              result = cckem_export_pubkey();
              if (!result)
              {
                *a1 = v9;
                a1[1] = v14 | 0x8000000000000000;
                goto LABEL_35;
              }

              goto LABEL_47;
            }

            goto LABEL_56;
          }

          goto LABEL_42;
        }

        goto LABEL_38;
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (cckem_export_privkey())
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v5, *a3))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v29 = v5 - *a3;
    result = cckem_public_ctx();
    if (!result)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v18 = *a3;
    result = cckem_export_pubkey();
    if (!result)
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_26;
  }

  v26 = a4;
  if (!v10)
  {
    sub_1C0CF448C(v9, v8);
    LOWORD(v31) = v8;
    BYTE2(v31) = BYTE2(v8);
    HIBYTE(v31) = BYTE3(v8);
    LOBYTE(v32) = BYTE4(v8);
    HIBYTE(v32) = BYTE5(v8);
    if (!cckem_export_privkey())
    {
      if (!__OFSUB__(v26, *a3))
      {
        v27 = v26 - *a3;
        result = cckem_public_ctx();
        if (result)
        {
          v12 = *a3;
          result = cckem_export_pubkey();
          if (!result)
          {
            *a1 = v9;
            a1[1] = v31 | ((v32 | (BYTE6(v8) << 16)) << 32);
LABEL_35:
            v25 = *MEMORY[0x1E69E9840];
            return result;
          }

          goto LABEL_44;
        }

        goto LABEL_54;
      }

      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_37;
  }

  v17 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v9, v8);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  v5 = v9;
  v4 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v4 < v9)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (sub_1C0D7812C() && __OFSUB__(v9, sub_1C0D7815C()))
    {
LABEL_51:
      __break(1u);
    }

LABEL_26:
    v19 = sub_1C0D7818C();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_1C0D7810C();

    v17 = v22;
  }

  if (v4 < v5)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_1C0D7812C();
  if (!result)
  {
    goto LABEL_53;
  }

  if (__OFSUB__(v5, sub_1C0D7815C()))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_1C0D7814C();
  if (cckem_export_privkey())
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (__OFSUB__(v26, *a3))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v30 = v26 - *a3;
  result = cckem_public_ctx();
  if (result)
  {
    v23 = *a3;
    v24 = cckem_export_pubkey();

    if (!v24)
    {
      *a1 = v9;
      a1[1] = v17 | 0x4000000000000000;
      goto LABEL_35;
    }

    goto LABEL_49;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t *sub_1C0D5942C(uint64_t *a1, void *a2)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_1C0D57C64(a1, a2, v2[4], v2[5]);
}

unint64_t sub_1C0D5948C()
{
  result = qword_1EBE6DE48[0];
  if (!qword_1EBE6DE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6DE48);
  }

  return result;
}

uint64_t sub_1C0D59510()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  result = cckem_generate_key();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *v2 = v3;
  }

  return result;
}

uint64_t sub_1C0D59574()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  return sub_1C0D77794(sub_1C0D595C8);
}

uint64_t sub_1C0D595C8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  v12[2] = v6;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v7;
  v12[6] = v8;
  return (*(v10 + 8))(sub_1C0D59674, v12, v9, v10);
}

uint64_t sub_1C0D596E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C0D59720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C0D59768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D597CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C0D5986C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for Proof();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D59970(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v8 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v13 + v14;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = v13 + v18;
  v20 = *(*(v10 - 8) + 64) + 7;
  if (v16 >= a2)
  {
    goto LABEL_30;
  }

  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + ((v19 + ((v17 + (v17 & ~v14)) & ~v14)) & ~v18) + 8;
  v22 = v21 & 0xFFFFFFF8;
  if ((v21 & 0xFFFFFFF8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = a2 - v16 + 1;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v26 = *(a1 + v21);
      if (!v26)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v28 = v26 - 1;
    if (v22)
    {
      v28 = 0;
      v29 = *a1;
    }

    else
    {
      v29 = 0;
    }

    return v16 + (v29 | v28) + 1;
  }

  if (v25)
  {
    v26 = *(a1 + v21);
    if (v26)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 >= v15)
  {
    v32 = *(v8 + 48);

    return v32(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    v30 = (v19 + ((v17 + ((a1 + v17) & ~v14)) & ~v14)) & ~v18;
    if (v12 < 0x7FFFFFFF)
    {
      v33 = *((v20 + v30) & 0xFFFFFFFFFFFFFFF8);
      if (v33 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      return (v33 + 1);
    }

    else
    {
      v31 = *(v11 + 48);

      return v31(v30);
    }
  }
}

void sub_1C0D59CC0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 64);
  v16 = *(v10 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (v17 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v17;
  }

  v19 = v15 + v16;
  v20 = (v15 + v16 + ((v15 + v16) & ~v16)) & ~v16;
  v21 = *(v13 + 80) & 0xF8 | 7;
  v22 = v15 + v21;
  v23 = *(*(v12 - 8) + 64) + 7;
  v24 = (v23 & 0xFFFFFFFFFFFFFFF8) + 8;
  v25 = ((v22 + v20) & ~v21) + v24;
  if (v18 >= a3)
  {
    v28 = 0;
    v29 = a2 - v18;
    if (a2 <= v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = a3 - v18 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = a2 - v18;
    if (a2 <= v18)
    {
LABEL_20:
      if (v28 > 1)
      {
        if (v28 != 2)
        {
          *(a1 + v25) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v25) = 0;
      }

      else if (v28)
      {
        *(a1 + v25) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v11 >= v17)
        {
          v34 = *(v10 + 56);

          v34(a1, a2, v11, AssociatedTypeWitness);
        }

        else
        {
          v32 = ((v22 + ((v19 + ((a1 + v19) & ~v16)) & ~v16)) & ~v21);
          if (v17 >= a2)
          {
            if (v14 < 0x7FFFFFFF)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v36 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v36 = (a2 - 1);
              }

              *((v32 + v23) & 0xFFFFFFFFFFFFFFF8) = v36;
            }

            else
            {
              v35 = *(v13 + 56);

              v35(v32, a2);
            }
          }

          else if ((v23 & 0xFFFFFFF8) != 0xFFFFFFF8)
          {
            v33 = ~v17 + a2;
            bzero(v32, v24);
            *v32 = v33;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v25)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  if (v25)
  {
    v31 = ~v18 + a2;
    bzero(a1, v25);
    *a1 = v31;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      *(a1 + v25) = v30;
    }

    else
    {
      *(a1 + v25) = v30;
    }
  }

  else if (v28)
  {
    *(a1 + v25) = v30;
  }
}

uint64_t sub_1C0D5A090(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = v6;
  v11 = a1;
  v12 = 0;
  v13 = a1;
  while (1)
  {
    v14 = v13 <= a2;
    if (a3 > 0)
    {
      v14 = v13 >= a2;
    }

    if (v14)
    {
      break;
    }

    v15 = __OFADD__(v13, a3);
    v13 += a3;
    if (v15)
    {
      v13 = (v13 >> 63) ^ 0x8000000000000000;
    }

    v15 = __OFADD__(v12++, 1);
    if (v15)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  result = sub_1C0D78E3C();
  if (v12)
  {
    while (1)
    {
      v17 = v11 <= a2;
      if (a3 > 0)
      {
        v17 = v11 >= a2;
      }

      if (v17)
      {
        break;
      }

      if (__OFADD__(v11, a3))
      {
        v18 = ((v11 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v18 = v11 + a3;
      }

      v19 = v11 + a4;
      if (__OFADD__(v11, a4))
      {
        goto LABEL_55;
      }

      v20 = *(a5 + 16);
      if (v20 < v19)
      {
        v19 = *(a5 + 16);
      }

      if (v19 < v11)
      {
        goto LABEL_56;
      }

      if (v11 < 0)
      {
        goto LABEL_57;
      }

      if (v20 == v19 - v11)
      {
        sub_1C0D78BFC();
        v21 = a5;
      }

      else
      {
        sub_1C0D5F9FC(a5, a5 + 32, v11, (2 * v19) | 1);
        v21 = v25;
      }

      v22 = *a6;
      v23 = qword_1EBE6CC50;
      sub_1C0D78BFC();
      if (v23 != -1)
      {
        swift_once();
      }

      sub_1C0D3CF34(v21, 1, 0, qword_1EBE72CC8, v22);
      if (v7)
      {
LABEL_53:
      }

      sub_1C0D78E0C();
      v24 = *(v38 + 16);
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      result = sub_1C0D78E1C();
      v11 = v18;
      if (!--v12)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    v18 = v11;
LABEL_31:
    v26 = v18 <= a2;
    if (a3 > 0)
    {
      v26 = v18 >= a2;
    }

    if (v26)
    {
LABEL_34:

      return v38;
    }

    while (1)
    {
      v27 = __OFADD__(v18, a3) ? ((v18 + a3) >> 63) ^ 0x8000000000000000 : v18 + a3;
      v28 = v18 + a4;
      if (__OFADD__(v18, a4))
      {
        break;
      }

      v29 = *(a5 + 16);
      if (v29 < v28)
      {
        v28 = *(a5 + 16);
      }

      if (v28 < v18)
      {
        goto LABEL_59;
      }

      if (v18 < 0)
      {
        goto LABEL_60;
      }

      if (v29 == v28 - v18)
      {
        sub_1C0D78BFC();
        v30 = a5;
      }

      else
      {
        sub_1C0D5F9FC(a5, a5 + 32, v18, (2 * v28) | 1);
        v30 = v35;
      }

      v31 = *a6;
      v32 = qword_1EBE6CC50;
      sub_1C0D78BFC();
      if (v32 != -1)
      {
        swift_once();
      }

      sub_1C0D3CF34(v30, 1, 0, qword_1EBE72CC8, v31);
      if (v7)
      {
        goto LABEL_53;
      }

      sub_1C0D78E0C();
      v33 = *(v38 + 16);
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      result = sub_1C0D78E1C();
      v34 = v27 <= a2;
      if (a3 > 0)
      {
        v34 = v27 >= a2;
      }

      v18 = v27;
      if (v34)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1C0D5A404(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  result = sub_1C0D78C2C();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t PIR.IndexPirClient.init(pirParams:secretKey:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 18);
  v19 = *(a1 + 2);
  v20 = v8;
  *v21 = *(a1 + 34);
  *&v21[16] = *(a1 + 50);
  v10 = *a2;
  v9 = a2[1];
  v15[0] = v6;
  v15[1] = v7 & 1;
  _s12ParamContextCMa();
  swift_allocObject();
  v11 = sub_1C0D14150(v15);
  if (v3)
  {
    sub_1C0CF448C(v10, v9);
    v15[0] = v6;
    v15[1] = v7;
    *&v15[2] = *(a1 + 2);
    v16 = *(a1 + 18);
    v17 = *(a1 + 34);
    v18 = *(a1 + 50);
    return sub_1C0D3B80C(v15);
  }

  else
  {
    *v15 = v10;
    *&v15[8] = v9;

    v12 = sub_1C0D51B84(v15, v11);

    *a3 = v6;
    *(a3 + 1) = v7;
    v14 = v20;
    *(a3 + 2) = v19;
    *(a3 + 18) = v14;
    *(a3 + 34) = *v21;
    *(a3 + 48) = *&v21[14];
    *(a3 + 64) = v11;
    *(a3 + 72) = v12;
  }

  return result;
}

unint64_t PIR.IndexPirClient.generateGaloisKey()@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 2);
  v5 = *(v1 + 64);
  v6 = *(v3 + 72);
  if (v4 == 2)
  {
    v7 = *(v3 + 40);
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 / 2;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        v10 = *(v3 + 57);
        result = sub_1C0D1429C();
        if (!v2)
        {
          v12 = result;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0C8, &qword_1C0D7B7B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C0D7B690;
          *(inited + 32) = v12;
          if (v10)
          {
            v20 = sub_1C0D1435C();
            inited = sub_1C0CF50C0(1, 2, 1, inited);
            *(inited + 16) = 2;
            *(inited + 36) = v20;
          }

          result = sub_1C0D615B8(v5, inited, v6, a1);
        }

        goto LABEL_18;
      }

LABEL_21:
      __break(1u);
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = *(v3 + 24);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 32);
    while (1)
    {
      v18 = *v17++;
      v19 = __OFADD__(v16, v18);
      v16 += v18;
      if (v19)
      {
        break;
      }

      if (!--v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v16 = 0;
LABEL_16:
  result = sub_1C0D51CC4(v16, v5, v6, a1);
LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PIR.IndexPirClient.generateRelinKey()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);

  return sub_1C0D61224(v4, v3, a1);
}

uint64_t PIR.IndexPirClient.query(indices:)(uint64_t a1)
{
  if (*(v1 + 2) == 2)
  {
    v4 = *v1;
    v8 = *(v1 + 19);
    v10 = *(v1 + 35);
    *v12 = *(v1 + 51);
    *&v12[13] = *(v1 + 4);
    v6 = *(v1 + 3);
    return sub_1C0D5BA94(a1);
  }

  else
  {
    v5 = *v1;
    v9 = *(v1 + 19);
    v11 = *(v1 + 35);
    *v13 = *(v1 + 51);
    *&v13[13] = *(v1 + 4);
    v7 = *(v1 + 3);
    v3 = sub_1C0D78BFC();
    return sub_1C0D5BBD0(v3);
  }
}

void PIR.IndexPirClient.decryptVectorizedPirReply(reply:indices:)(uint64_t a1, uint64_t a2)
{
  if (v2[2] != 2)
  {
    goto LABEL_11;
  }

  v4 = *(v2 + 6);
  if (v2[56])
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v2 + 6);
  }

  if (!v5)
  {
    goto LABEL_183;
  }

  v6 = *(v2 + 5);
  if (v6 == 0x8000000000000000 && v5 == -1)
  {
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v6 / v5 < *(a2 + 16))
  {
LABEL_11:
    sub_1C0CF8DE0();
    swift_allocError();
    *v8 = 5;
    *(v8 + 4) = 1;
    swift_willThrow();
    return;
  }

  v149 = v6 / v5;
  v151 = *(a2 + 16);
  v160 = v5;
  v152 = *v2;
  v9 = v2[57];
  v10 = *(v2 + 8);
  v11 = *(v2 + 9);
  if (v6 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v6 / 2;
  }

  v157 = *v2;
  v154 = v2[1];
  *&v171 = *(v2 + 3);
  v13 = *(v2 + 2);
  *(&v171 + 5) = *(v2 + 1);
  v173 = *(v2 + 24);
  v175 = *(v2 + 58);
  v177 = *(v2 + 31);
  v14 = sub_1C0D5F79C(a2, v12);
  if (!v3)
  {
    v146 = v13;
    v162 = v11;
    v142 = v9;
    v167 = v10;
    v144 = v14;
    v153 = v12;
    if (v12 >= v160)
    {
      v15 = v12 / v160;
    }

    else
    {
      v15 = 1;
    }

    v16 = v146;
    *&v172 = *(v2 + 3);
    *(&v172 + 5) = *(v2 + 1);
    v174 = *(v2 + 24);
    v17 = v9;
    v176 = *(v2 + 58);
    v178 = *(v2 + 31);
    v18 = v162;
    v19 = 0;
    v20 = sub_1C0D5E4A8(a1);
    v21 = *(v20 + 16);
    v159 = v15;
    if (v21)
    {
      v169 = MEMORY[0x1E69E7CC0];
      v147 = *(v20 + 16);
      sub_1C0CF7CB0(0, v21, 0);
      v22 = 0;
      v23 = v169;
      v155 = v20;
      while (1)
      {
        v165 = v23;
        if (v22 >= *(v20 + 16))
        {
          goto LABEL_185;
        }

        v24 = *(v20 + 8 * v22 + 32);
        v25 = *(v10 + 32);
        cche_plaintext_sizeof();

        v26 = swift_slowAlloc();
        if (!*(v24 + 24))
        {
          goto LABEL_216;
        }

        if (!*(v18 + 24))
        {
          goto LABEL_217;
        }

        v27 = v26;
        v28 = cche_decrypt();
        if (v28)
        {
          v38 = v28;
          sub_1C0CF8DE0();
          swift_allocError();
          *v39 = v38;
          *(v39 + 4) = 0;
          swift_willThrow();

          MEMORY[0x1C68E4EB0](v27, -1, -1);

          goto LABEL_38;
        }

        v29 = v10;
        v30 = *(v10 + 32);
        v31 = cche_param_ctx_polynomial_degree();
        if (v31)
        {
          v32 = sub_1C0D78C2C();
          *(v32 + 16) = v31;
          v33 = *(v29 + 32);
        }

        else
        {
          v32 = MEMORY[0x1E69E7CC0];
        }

        v34 = cche_decode_simd_uint64();
        if (v34)
        {
          break;
        }

        v35 = cche_param_ctx_polynomial_degree();
        if (v31 < v35)
        {
          goto LABEL_186;
        }

        *(v32 + 16) = v35;

        v10 = v167;

        MEMORY[0x1C68E4EB0](v27, -1, -1);

        v23 = v165;
        v37 = *(v165 + 16);
        v36 = *(v165 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1C0CF7CB0((v36 > 1), v37 + 1, 1);
          v23 = v165;
        }

        ++v22;
        *(v23 + 16) = v37 + 1;
        *(v23 + 8 * v37 + 32) = v32;
        v15 = v159;
        v18 = v162;
        v20 = v155;
        if (v147 == v22)
        {

          v19 = 0;
          v42 = v152;
          v16 = v146;
          v17 = v142;
          goto LABEL_39;
        }
      }

      v40 = v34;
      sub_1C0CF8DE0();
      swift_allocError();
      *v41 = v40;
      *(v41 + 4) = 0;
      swift_willThrow();
      *(v32 + 16) = 0;

      MEMORY[0x1C68E4EB0](v27, -1, -1);

LABEL_38:

      return;
    }

    v23 = MEMORY[0x1E69E7CC0];
    v42 = v152;
LABEL_39:
    v43 = dword_1C0D7E4A4[v42];
    v143 = cche_encryption_params_polynomial_degree();
    if (v153)
    {
      if (!v151)
      {
LABEL_160:

        return;
      }

      v44 = v143 >> 1;
      v45 = v6 == 1;
      v170 = MEMORY[0x1E69E7CC0];
      sub_1C0CF7C00(0, v151, 0);
      v46 = 0;
      v47 = v170;
      v145 = *(v23 + 16);
      v48 = v144;
      v156 = v144 + 32;
      v141 = v23 + 32;
      v50 = v160 > 1 && v149 == 1;
      v140 = v50;
      v134 = (2 * v16) | 1;
      v136 = v45 & v17;
      v166 = v23;
      while (1)
      {
        v135 = v47;
        if (v46 >= *(v48 + 16))
        {
          goto LABEL_208;
        }

        v51 = *(v156 + 8 * v46) >= v44 / v153 ? v143 >> 1 : 0;
        v138 = v46;
        if (v145)
        {
          break;
        }

LABEL_154:
        v124 = dword_1C0D7E4A4[v152];
        v125 = cche_encryption_params_plaintext_modulus();
        if (!v125)
        {
          goto LABEL_212;
        }

        v126 = sub_1C0D74850(__clz(v125) ^ 0x3F);

        if ((v146 & 0x8000000000000000) != 0)
        {
          goto LABEL_213;
        }

        if (*(v126 + 16) < v146)
        {
          goto LABEL_214;
        }

        sub_1C0D07BB8(v126, (v126 + 32), 0, v134);
        v47 = v135;
        v130 = *(v135 + 16);
        v129 = *(v135 + 24);
        if (v130 >= v129 >> 1)
        {
          v132 = v127;
          v133 = v128;
          sub_1C0CF7C00((v129 > 1), v130 + 1, 1);
          v128 = v133;
          v127 = v132;
          v47 = v135;
        }

        *(v47 + 16) = v130 + 1;
        v131 = v47 + 16 * v130;
        v46 = v138 + 1;
        *(v131 + 32) = v127;
        *(v131 + 40) = v128;
        v19 = 0;
        v48 = v144;
        if (v138 + 1 == v151)
        {
          goto LABEL_160;
        }
      }

      v52 = 0;
      v53 = v44 - v51;
      v148 = v46 >> 1;
      v54 = MEMORY[0x1E69E7CC0];
      v137 = v51;
      v139 = v44 - v51;
      while (1)
      {
        if (v52 >= *(v23 + 16))
        {
          goto LABEL_187;
        }

        v161 = v54;
        v163 = *(v141 + 8 * v52);
        v56 = *(v156 + 8 * v46);
        v57 = v56 * v153;
        v58 = (v56 * v153) >> 64 != (v56 * v153) >> 63;
        v158 = v19;
        v150 = v52;
        if (v140)
        {
          if (v58)
          {
            goto LABEL_192;
          }

          v59 = v57 + v148;
          if (__OFADD__(v57, v148))
          {
            goto LABEL_193;
          }

          if (!v15)
          {
            goto LABEL_196;
          }

          v60 = v44 / v15;
          sub_1C0D78BFC();
          v61 = sub_1C0D5A404(0, v44 / v15);
          if (v44 / v15 < 0)
          {
            goto LABEL_197;
          }

          v62 = v61;
          if (v60)
          {
            if (v143 < 2)
            {
              goto LABEL_202;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_1C0CFD6C0(v62);
            }

            v63 = 0;
            v64 = *(v163 + 16);
            while (1)
            {
              v65 = v63 * v15;
              if ((v63 * v15) >> 64 != (v63 * v15) >> 63)
              {
                break;
              }

              v66 = __OFADD__(v59, v65);
              v67 = v59 + v65;
              if (v66)
              {
                goto LABEL_164;
              }

              v68 = v67 % v44 + v137;
              if (v68 >= v64)
              {
                goto LABEL_166;
              }

              if (v63 >= *(v62 + 2))
              {
                goto LABEL_169;
              }

              *&v62[8 * v63++ + 32] = *(v163 + 32 + 8 * v68);
              if (v60 == v63)
              {
                goto LABEL_72;
              }
            }

LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);

            return;
          }

LABEL_72:
          v69 = *(v156 + 8 * v46);
          v70 = v69 * v153;
          if ((v69 * v153) >> 64 != (v69 * v153) >> 63)
          {
            goto LABEL_199;
          }

          v71 = v70 + v148;
          if (__OFADD__(v70, v148))
          {
            goto LABEL_200;
          }

          v72 = sub_1C0D5A404(0, v44 / v15);
          if (v60)
          {
            if (v143 < 2)
            {
              goto LABEL_204;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = sub_1C0CFD6C0(v72);
            }

            v73 = 0;
            v74 = *(v163 + 16);
            do
            {
              v75 = v73 * v15;
              if ((v73 * v15) >> 64 != (v73 * v15) >> 63)
              {
                goto LABEL_170;
              }

              v66 = __OFADD__(v71, v75);
              v76 = v71 + v75;
              if (v66)
              {
                goto LABEL_171;
              }

              v77 = v76 % v44 + v53;
              if (v77 >= v74)
              {
                goto LABEL_172;
              }

              if (v73 >= *(v72 + 16))
              {
                goto LABEL_173;
              }

              *(v72 + 8 * v73++ + 32) = *(v163 + 32 + 8 * v77);
            }

            while (v60 != v73);
          }

          v78 = *(v62 + 2);
          if (v78)
          {
            v168 = -v78;
            v79 = 4;
            v80 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              v81 = v79 - 4;
              if ((v79 - 4) >= *(v62 + 2))
              {
                goto LABEL_175;
              }

              v82 = *(v72 + 16);
              if (v81 == v82)
              {
                goto LABEL_126;
              }

              if (v81 >= v82)
              {
                goto LABEL_179;
              }

              v83 = *&v62[8 * v79];
              v84 = *(v72 + 8 * v79);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0C0, &qword_1C0D7B840);
              inited = swift_initStackObject();
              *(inited + 32) = v83;
              v86 = (inited + 32);
              *(inited + 40) = v84;
              v87 = *(v80 + 16);
              v88 = v87 + 2;
              if (__OFADD__(v87, 2))
              {
                goto LABEL_180;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || (v90 = *(v80 + 24) >> 1, v90 < v88))
              {
                if (v87 <= v88)
                {
                  v91 = v87 + 2;
                }

                else
                {
                  v91 = v87;
                }

                v80 = sub_1C0CF4C3C(isUniquelyReferenced_nonNull_native, v91, 1, v80);
                v90 = *(v80 + 24) >> 1;
              }

              v92 = *(v80 + 16);
              if (v90 - v92 < 2)
              {
                goto LABEL_181;
              }

              *(v80 + 8 * v92 + 32) = *v86;
              swift_setDeallocating();
              v93 = *(v80 + 16);
              v66 = __OFADD__(v93, 2);
              v94 = v93 + 2;
              if (v66)
              {
                goto LABEL_182;
              }

              *(v80 + 16) = v94;
              ++v79;
              if (v168 + v79 == 4)
              {
                goto LABEL_126;
              }
            }
          }

          v80 = MEMORY[0x1E69E7CC0];
LABEL_126:

          v15 = v159;
LABEL_127:
          v46 = v138;
          goto LABEL_128;
        }

        if (v58)
        {
          goto LABEL_191;
        }

        v95 = v57 + v148;
        if (__OFADD__(v57, v148))
        {
          goto LABEL_194;
        }

        if (!v15)
        {
          goto LABEL_195;
        }

        v96 = v44 / v15;
        if (v44 / v15 < 0)
        {
          goto LABEL_198;
        }

        sub_1C0D78BFC();
        if (v96)
        {
          v80 = sub_1C0D78C2C();
          *(v80 + 16) = v96;
          bzero((v80 + 32), 8 * v96);
          if (v143 < 2)
          {
            goto LABEL_203;
          }

          v97 = 0;
          v98 = *(v163 + 16);
          do
          {
            v99 = v97 * v15;
            if ((v97 * v15) >> 64 != (v97 * v15) >> 63)
            {
              __break(1u);
              goto LABEL_163;
            }

            v66 = __OFADD__(v95, v99);
            v100 = v95 + v99;
            if (v66)
            {
              goto LABEL_165;
            }

            v101 = v100 % v44 + v137;
            if (v101 >= v98)
            {
              goto LABEL_167;
            }

            if (v97 >= v96)
            {
              goto LABEL_168;
            }

            *(v80 + 8 * v97++ + 32) = *(v163 + 32 + 8 * v101);
          }

          while (v96 != v97);
          if (v136)
          {
            goto LABEL_115;
          }

          goto LABEL_128;
        }

        v80 = MEMORY[0x1E69E7CC0];
        if ((v136 & 1) == 0)
        {
          goto LABEL_128;
        }

LABEL_115:
        v102 = *(v156 + 8 * v46);
        v103 = v102 + v148;
        if (__OFADD__(v102, v148))
        {
          goto LABEL_205;
        }

        if (v96)
        {
          v104 = sub_1C0D78C2C();
          *(v104 + 16) = v96;
          bzero((v104 + 32), 8 * v96);
          if (v143 < 2)
          {
            goto LABEL_209;
          }

          v105 = 0;
          v106 = *(v163 + 16);
          while (1)
          {
            v107 = v105 * v15;
            if ((v105 * v15) >> 64 != (v105 * v15) >> 63)
            {
              break;
            }

            v66 = __OFADD__(v103, v107);
            v108 = v103 + v107;
            if (v66)
            {
              goto LABEL_176;
            }

            v109 = v108 % v44 + v53;
            if (v109 >= v106)
            {
              goto LABEL_177;
            }

            if (v105 >= v96)
            {
              goto LABEL_178;
            }

            *(v104 + 8 * v105++ + 32) = *(v163 + 32 + 8 * v109);
            if (v96 == v105)
            {
              goto LABEL_141;
            }
          }

          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }

        v104 = MEMORY[0x1E69E7CC0];
        v96 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_141:
        v118 = *(v80 + 16);
        v119 = v118 + v96;
        if (__OFADD__(v118, v96))
        {
          goto LABEL_206;
        }

        v120 = *(v80 + 24) >> 1;
        if (v120 < v119)
        {
          if (v118 <= v119)
          {
            v123 = v118 + v96;
          }

          else
          {
            v123 = *(v80 + 16);
          }

          v80 = sub_1C0CF4C3C(1, v123, 1, v80);
          v118 = *(v80 + 16);
          v120 = *(v80 + 24) >> 1;
          if (!*(v104 + 16))
          {
LABEL_152:

            v46 = v138;
            if (v96)
            {
              goto LABEL_207;
            }

            goto LABEL_128;
          }
        }

        else if (!v96)
        {
          goto LABEL_152;
        }

        if ((v120 - v118) < v96)
        {
          goto LABEL_210;
        }

        memcpy((v80 + 8 * v118 + 32), (v104 + 32), 8 * v96);

        if (!v96)
        {
          goto LABEL_127;
        }

        v121 = *(v80 + 16);
        v66 = __OFADD__(v121, v96);
        v122 = v121 + v96;
        v46 = v138;
        if (v66)
        {
          goto LABEL_215;
        }

        *(v80 + 16) = v122;
LABEL_128:

        v110 = *(v80 + 16);
        v54 = v161;
        v111 = *(v161 + 2);
        v112 = v111 + v110;
        if (__OFADD__(v111, v110))
        {
          goto LABEL_188;
        }

        v113 = swift_isUniquelyReferenced_nonNull_native();
        if ((v113 & 1) == 0 || v112 > *(v161 + 3) >> 1)
        {
          if (v111 <= v112)
          {
            v114 = v111 + v110;
          }

          else
          {
            v114 = v111;
          }

          v54 = sub_1C0CF4C3C(v113, v114, 1, v161);
        }

        v53 = v139;
        if (*(v80 + 16))
        {
          v115 = *(v54 + 2);
          if ((*(v54 + 3) >> 1) - v115 < v110)
          {
            goto LABEL_190;
          }

          memcpy(&v54[8 * v115 + 32], (v80 + 32), 8 * v110);

          v23 = v166;
          v55 = v150;
          if (v110)
          {
            v116 = *(v54 + 2);
            v66 = __OFADD__(v116, v110);
            v117 = v116 + v110;
            if (v66)
            {
              goto LABEL_201;
            }

            *(v54 + 2) = v117;
          }
        }

        else
        {

          v23 = v166;
          v55 = v150;
          if (v110)
          {
            goto LABEL_189;
          }
        }

        v52 = v55 + 1;
        v19 = v158;
        if (v52 == v145)
        {
          goto LABEL_154;
        }
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
  }
}