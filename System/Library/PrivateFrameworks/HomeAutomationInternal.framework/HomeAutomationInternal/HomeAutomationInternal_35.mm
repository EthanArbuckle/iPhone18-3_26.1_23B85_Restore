void sub_252BB2B50(uint64_t a1)
{
  v279 = *v1;
  v280 = v1[1];
  v222 = *(v1 + 4);
  v214 = *(v1 + 5);
  v226 = *(v1 + 6);
  v277 = *(v1 + 56);
  v216 = *(v1 + 10);
  v278 = *(v1 + 9);
  v217 = *(v1 + 88);
  v4 = *(v1 + 16);
  v223 = *(v1 + 15);
  v224 = *(v1 + 14);
  v5 = *(v1 + 18);
  v231 = *(v1 + 19);
  v225 = *(v1 + 20);
  v227 = *(v1 + 21);
  v274 = v1[11];
  v275 = v1[12];
  v276 = v1[13];
  v228 = *(v1 + 28);
  v229 = *(v1 + 13);
  v273 = *(v1 + 232);
  *&v272 = *(v1 + 233);
  *(&v272 + 7) = *(v1 + 30);
  v271 = v1[16];
  *&v221 = *(v1 + 34);
  *(&v221 + 1) = *(v1 + 31);
  *&v270[13] = *(v1 + 373);
  *v270 = *(v1 + 360);
  v269 = *(v1 + 344);
  v265 = *(v1 + 280);
  v266 = *(v1 + 296);
  v267 = *(v1 + 312);
  v268 = *(v1 + 328);
  v264 = *(v1 + 389);
  v258 = *(v1 + 422);
  v259 = *(v1 + 438);
  v256 = *(v1 + 390);
  v257 = *(v1 + 406);
  v263 = *(v1 + 251);
  v261 = *(v1 + 470);
  v262 = *(v1 + 486);
  v260 = *(v1 + 454);
  v241 = sub_252A47B1C(*(v1 + 17));
  v232 = sub_252A47B1C(v5);
  v250 = a1 >> 62;
  v246 = *(v4 + 16);
  v230 = v4;
  if (!v246)
  {
LABEL_60:
    v8 = 0;
    v5 = 0;
LABEL_61:
    v215 = v8;
    v220 = v5;
    v246 = *(v231 + 16);
    if (v246)
    {
      v5 = 0;
      v55 = a1 & 0xFFFFFFFFFFFFFF8;
      v254 = (a1 & 0xFFFFFFFFFFFFFF8);
      if (a1 < 0)
      {
        v55 = a1;
      }

      v245 = v55;
      v56 = v231;
LABEL_68:
      if (v5 >= *(v56 + 16))
      {
        goto LABEL_394;
      }

      v57 = (v231 + 32 + 16 * v5);
      v9 = *v57;
      v255 = v57[1];
      if (v250)
      {
        v58 = sub_252E378C4();
        if (v58)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v58 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
LABEL_71:
          ++v5;

          v59 = 0;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v60 = MEMORY[0x2530ADF00](v59, a1);
            }

            else
            {
              if (v59 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_383;
              }

              v60 = *(a1 + 8 * v59 + 32);
            }

            v61 = v60;
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              goto LABEL_382;
            }

            v63 = [v60 homeName];
            if (v63)
            {
              v64 = v63;
              v2 = sub_252E36F34();
              v66 = v65;

              if (v2 == v9 && v66 == v255)
              {
LABEL_116:

LABEL_66:

                goto LABEL_67;
              }

              v68 = sub_252E37DB4();

              if (v68)
              {
                goto LABEL_117;
              }
            }

            v69 = [v61 roomName];
            if (v69)
            {
              v2 = v69;
              v70 = sub_252E36F34();
              v72 = v71;

              if (v70 == v9 && v72 == v255)
              {
                goto LABEL_116;
              }

              v73 = sub_252E37DB4();

              if (v73)
              {
                goto LABEL_117;
              }
            }

            v74 = [v61 groupName];
            if (v74)
            {
              v75 = v74;
              v2 = sub_252E36F34();
              v77 = v76;

              if (v2 == v9 && v77 == v255)
              {
                goto LABEL_116;
              }

              v78 = sub_252E37DB4();

              if (v78)
              {
LABEL_117:

                goto LABEL_66;
              }
            }

            v79 = [v61 zoneName];
            if (v79)
            {
              v80 = v79;
              v2 = sub_252E36F34();
              v82 = v81;

              if (v2 == v9 && v82 == v255)
              {
LABEL_65:

                goto LABEL_66;
              }

              v83 = sub_252E37DB4();

              if (v83)
              {
                goto LABEL_115;
              }
            }

            v84 = [v61 homeEntityName];
            if (v84)
            {
              v85 = v84;
              v2 = sub_252E36F34();
              v87 = v86;

              if (v2 == v9 && v87 == v255)
              {
                goto LABEL_65;
              }

              v88 = sub_252E37DB4();

              if (v88)
              {
                goto LABEL_115;
              }
            }

            v89 = [v61 outerDeviceName];
            if (v89)
            {
              v90 = v89;
              v2 = sub_252E36F34();
              v92 = v91;

              if (v2 == v9 && v92 == v255)
              {
                goto LABEL_65;
              }

              v93 = sub_252E37DB4();

              if (v93)
              {
                goto LABEL_115;
              }
            }

            v94 = [v61 targetArea];
            if (v94)
            {
              v95 = v94;
              v2 = sub_252E36F34();
              v97 = v96;

              if (v2 == v9 && v97 == v255)
              {
                goto LABEL_65;
              }

              v98 = sub_252E37DB4();

              if (v98)
              {
LABEL_115:

LABEL_67:
                v56 = v231;
                if (v5 == v246)
                {
                  goto LABEL_120;
                }

                goto LABEL_68;
              }
            }

            v99 = [v61 targetMap];
            if (v99)
            {
              v100 = v99;
              v2 = sub_252E36F34();
              v102 = v101;

              if (v2 == v9 && v102 == v255)
              {
                goto LABEL_65;
              }

              v103 = sub_252E37DB4();

              if (v103)
              {
                goto LABEL_66;
              }
            }

            else
            {
            }

            ++v59;
            if (v62 == v58)
            {
              goto LABEL_121;
            }
          }
        }
      }
    }

    else
    {
LABEL_120:
      v9 = 0;
      v255 = 0;
    }

LABEL_121:
    v104 = v229;
    v105 = v227;
    v254 = *(v227 + 16);
    if (v254)
    {
      v106 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_123:
      if (v106 >= *(v105 + 16))
      {
        goto LABEL_401;
      }

      v107 = (v227 + 32 + 16 * v106);
      v237 = *v107;
      v246 = v107[1];
      if (v250)
      {
        v108 = sub_252E378C4();
      }

      else
      {
        v108 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v108)
      {
        v109 = 0;
        ++v106;
        while (v108 != v109)
        {
          if (v5)
          {
            v110 = MEMORY[0x2530ADF00](v109, a1);
          }

          else
          {
            if (v109 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_371;
            }

            v110 = *(a1 + 8 * v109 + 32);
          }

          v111 = v110;
          if (__OFADD__(v109, 1))
          {
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
            goto LABEL_380;
          }

          v2 = sub_252A1FCFC(v237, v246);

          ++v109;
          if (v2)
          {

            v105 = v227;
            if (v106 == v254)
            {
              v237 = 0;
              v246 = 0;
              break;
            }

            goto LABEL_123;
          }
        }
      }

      v104 = v229;
    }

    else
    {
      v237 = 0;
      v246 = 0;
    }

    v112 = v228;
    v219 = *(v228 + 16);
    if (v219)
    {
      v5 = 0;
      if (a1 < 0)
      {
        v113 = a1;
      }

      else
      {
        v113 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v254 = v113;
LABEL_146:
      if (v5 >= *(v112 + 16))
      {
        goto LABEL_402;
      }

      v114 = (v228 + 32 + 16 * v5);
      v236 = *v114;
      v245 = v114[1];
      if (v250)
      {
        v115 = sub_252E378C4();
      }

      else
      {
        v115 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v115)
      {
        v116 = 0;
        ++v5;
        while (v115 != v116)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v117 = MEMORY[0x2530ADF00](v116, a1);
          }

          else
          {
            if (v116 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_373;
            }

            v117 = *(a1 + 8 * v116 + 32);
          }

          v118 = v117;
          if (__OFADD__(v116, 1))
          {
            goto LABEL_372;
          }

          v2 = sub_252A1FCFC(v236, v245);

          ++v116;
          if (v2)
          {

            v112 = v228;
            if (v5 == v219)
            {
              v236 = 0;
              v245 = 0;
              break;
            }

            goto LABEL_146;
          }
        }
      }

      v104 = v229;
    }

    else
    {
      v236 = 0;
      v245 = 0;
    }

    v218 = *(v104 + 16);
    if (v218)
    {
      v119 = v104;
      v5 = 0;
      v120 = v104 + 32;
      if (a1 < 0)
      {
        v121 = a1;
      }

      else
      {
        v121 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v254 = v121;
LABEL_169:
      if (v5 >= *(v119 + 16))
      {
        goto LABEL_403;
      }

      v122 = (v120 + 16 * v5);
      v235 = *v122;
      v240 = v122[1];
      if (v250)
      {
        v123 = sub_252E378C4();
      }

      else
      {
        v123 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v123)
      {
        v124 = 0;
        ++v5;
        while (v123 != v124)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v125 = MEMORY[0x2530ADF00](v124, a1);
          }

          else
          {
            if (v124 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_375;
            }

            v125 = *(a1 + 8 * v124 + 32);
          }

          v126 = v125;
          if (__OFADD__(v124, 1))
          {
            goto LABEL_374;
          }

          v2 = sub_252A1FCFC(v235, v240);

          ++v124;
          if (v2)
          {

            v119 = v229;
            if (v5 != v218)
            {
              goto LABEL_169;
            }

            goto LABEL_185;
          }
        }
      }
    }

    else
    {
LABEL_185:
      v235 = 0;
      v240 = 0;
    }

    v127 = v226;
    v254 = *(v226 + 16);
    if (v254)
    {
      v128 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_188:
      if (v128 >= *(v127 + 16))
      {
        goto LABEL_404;
      }

      v129 = (v226 + 32 + 16 * v128);
      v234 = *v129;
      v239 = v129[1];
      if (v250)
      {
        v130 = sub_252E378C4();
      }

      else
      {
        v130 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v130)
      {
        v131 = 0;
        ++v128;
        while (v130 != v131)
        {
          if (v5)
          {
            v132 = MEMORY[0x2530ADF00](v131, a1);
          }

          else
          {
            if (v131 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_377;
            }

            v132 = *(a1 + 8 * v131 + 32);
          }

          v133 = v132;
          if (__OFADD__(v131, 1))
          {
            goto LABEL_376;
          }

          v2 = sub_252A1FCFC(v234, v239);

          ++v131;
          if (v2)
          {

            v127 = v226;
            if (v128 != v254)
            {
              goto LABEL_188;
            }

            goto LABEL_204;
          }
        }
      }
    }

    else
    {
LABEL_204:
      v234 = 0;
      v239 = 0;
    }

    v134 = v225;
    v254 = *(v225 + 16);
    if (v254)
    {
      v135 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_207:
      if (v135 >= *(v134 + 16))
      {
        goto LABEL_405;
      }

      v136 = (v225 + 32 + 16 * v135);
      v233 = *v136;
      v238 = v136[1];
      if (v250)
      {
        v137 = sub_252E378C4();
      }

      else
      {
        v137 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v137)
      {
        v138 = 0;
        ++v135;
        while (v137 != v138)
        {
          if (v5)
          {
            v139 = MEMORY[0x2530ADF00](v138, a1);
          }

          else
          {
            if (v138 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_379;
            }

            v139 = *(a1 + 8 * v138 + 32);
          }

          v140 = v139;
          if (__OFADD__(v138, 1))
          {
            goto LABEL_378;
          }

          v2 = sub_252A1FCFC(v233, v238);

          ++v138;
          if (v2)
          {

            v134 = v225;
            if (v135 != v254)
            {
              goto LABEL_207;
            }

            goto LABEL_223;
          }
        }
      }
    }

    else
    {
LABEL_223:
      v233 = 0;
      v238 = 0;
    }

    v141 = v241;
    v248 = *(v241 + 16);
    if (!v248)
    {
LABEL_244:

      v254 = 0;
LABEL_245:
      v147 = v232;
      v242 = *(v232 + 16);
      if (!v242)
      {
LABEL_265:

        v2 = 0;
        goto LABEL_266;
      }

      v148 = 0;
      v5 = a1 & 0xC000000000000001;
LABEL_247:
      if (v148 >= *(v147 + 16))
      {
        goto LABEL_400;
      }

      v2 = *(v232 + 32 + 8 * v148);
      if (v250)
      {
        v149 = sub_252E378C4();
        if (v149)
        {
LABEL_250:
          v150 = v148;
          v151 = 0;
          v252 = v150 + 1;
          while (v149 != v151)
          {
            if (v5)
            {
              v152 = MEMORY[0x2530ADF00](v151, a1);
            }

            else
            {
              if (v151 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_391;
              }

              v152 = *(a1 + 8 * v151 + 32);
            }

            v153 = v152;
            if (__OFADD__(v151, 1))
            {
              goto LABEL_390;
            }

            if ([v152 deviceType] == v2)
            {

LABEL_261:
              v148 = v252;
              v147 = v232;
              if (v252 != v242)
              {
                goto LABEL_247;
              }

              goto LABEL_265;
            }

            v154 = [v153 outerDeviceType];

            ++v151;
            if (v154 == v2)
            {
              goto LABEL_261;
            }
          }
        }
      }

      else
      {
        v149 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v149)
        {
          goto LABEL_250;
        }
      }

LABEL_266:
      v155 = v224;
      v232 = v2;
      v243 = *(v224 + 16);
      if (!v243)
      {
LABEL_285:
        v249 = 0;
        v253 = 0;
LABEL_286:
        v162 = v223;
        v213 = *(v223 + 16);
        if (!v213)
        {
LABEL_305:
          v244 = 0;
          v166 = 0;
LABEL_306:
          v171 = v230;
          if (v221 != 0 && (sub_252CDFDD4() & 1) != 0)
          {

            if (!v218)
            {
              v249 = 0;
              v253 = 0;
              if (v219)
              {
                goto LABEL_328;
              }

              goto LABEL_348;
            }

            v5 = 0;
            v172 = v229;
LABEL_310:
            if (v5 < *(v172 + 16))
            {
              v173 = (v229 + 32 + 16 * v5);
              v249 = *v173;
              v253 = v173[1];
              if (v250)
              {
                v174 = sub_252E378C4();
              }

              else
              {
                v174 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v174)
              {
                v175 = 0;
                ++v5;
                while (1)
                {
                  v2 = v232;
                  if (v174 == v175)
                  {
                    break;
                  }

                  if ((a1 & 0xC000000000000001) != 0)
                  {
                    v176 = MEMORY[0x2530ADF00](v175, a1);
                  }

                  else
                  {
                    if (v175 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_396;
                    }

                    v176 = *(a1 + 8 * v175 + 32);
                  }

                  v177 = v176;
                  if (__OFADD__(v175, 1))
                  {
                    goto LABEL_395;
                  }

                  v178 = sub_252A1FCFC(v249, v253);

                  ++v175;
                  if (v178)
                  {

                    v172 = v229;
                    v2 = v232;
                    if (v5 != v218)
                    {
                      goto LABEL_310;
                    }

                    goto LABEL_392;
                  }
                }
              }

              v235 = 0;
              v240 = 0;
              goto LABEL_327;
            }

            goto LABEL_414;
          }

LABEL_349:
          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          HomeFilter.Builder.init()();
          v189 = v188;
          if (v220)
          {
            v190 = v220;

            v191 = v215;
          }

          else
          {
            v191 = v9;
            v190 = v255;
          }

          v192 = (*(*v189 + 576))(v191, v190);

          if (v273 == 1)
          {
            if (*(v171 + 16) || sub_2529A6F1C(19, v216))
            {
              v193 = 5;
            }

            else
            {
              v193 = 7;
            }
          }

          else
          {
            v193 = 6;
          }

          v194 = (*(*v192 + 592))(v193);

          v195 = (*(*v194 + 600))(v2);

          v196 = (*(*v195 + 608))(v237, v246);

          v197 = (*(*v196 + 624))(v254);

          v198 = (*(*v197 + 632))(v234, v239);

          v199 = (*(*v198 + 648))(v236, v245);

          v200 = (*(*v199 + 696))(v249, v253);

          v201 = (*(*v200 + 712))(v244, v166);

          v202 = (*(*v201 + 664))(v233, v238);

          v203 = (*(*v202 + 680))(v235, v240);

          v204 = sub_2529A6DAC(2u, v222) || sub_2529A6DAC(3u, v222) || sub_2529A6F34(0, v217);
          v205 = (*(*v203 + 736))(v204);

          v206 = (*(*v205 + 744))(v264);

          v5 = (*(*v206 + 760))(v207);

          if (!v250)
          {
            v208 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v208)
            {
              return;
            }

            goto LABEL_363;
          }

LABEL_408:
          v208 = sub_252E378C4();
          if (!v208)
          {
            return;
          }

LABEL_363:
          v209 = __OFSUB__(v208, 1);
          v210 = v208 - 1;
          if (v209)
          {
            __break(1u);
          }

          else if ((a1 & 0xC000000000000001) == 0)
          {
            if ((v210 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v210 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v211 = *(a1 + 8 * v210 + 32);
LABEL_368:
              v212 = v211;
              sub_252A20280(v5);

              return;
            }

            __break(1u);
LABEL_414:
            __break(1u);
            goto LABEL_415;
          }

          v211 = MEMORY[0x2530ADF00](v210, a1);
          goto LABEL_368;
        }

        v163 = 0;
        v164 = v223 + 32;
        v5 = a1 & 0xC000000000000001;
        while (v163 < *(v162 + 16))
        {
          v165 = (v164 + 16 * v163);
          v166 = v165[1];
          v244 = *v165;
          if (v250)
          {
            v167 = sub_252E378C4();
          }

          else
          {
            v167 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v167)
          {
            goto LABEL_306;
          }

          v168 = 0;
          ++v163;
          do
          {
            if (v167 == v168)
            {
              v2 = v232;
              goto LABEL_306;
            }

            if (v5)
            {
              v169 = MEMORY[0x2530ADF00](v168, a1);
            }

            else
            {
              if (v168 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_389;
              }

              v169 = *(a1 + 8 * v168 + 32);
            }

            v170 = v169;
            if (__OFADD__(v168, 1))
            {
              goto LABEL_388;
            }

            v2 = sub_252A1FCFC(v244, v166);

            ++v168;
          }

          while ((v2 & 1) == 0);

          v164 = v223 + 32;
          v162 = v223;
          v2 = v232;
          if (v163 == v213)
          {
            goto LABEL_305;
          }
        }

LABEL_407:
        __break(1u);
        goto LABEL_408;
      }

      v156 = 0;
      v5 = a1 & 0xC000000000000001;
      while (v156 < *(v155 + 16))
      {
        v157 = (v224 + 32 + 16 * v156);
        v249 = *v157;
        v253 = v157[1];
        if (v250)
        {
          v158 = sub_252E378C4();
        }

        else
        {
          v158 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v158)
        {
          goto LABEL_286;
        }

        v159 = 0;
        ++v156;
        do
        {
          if (v158 == v159)
          {
            v2 = v232;
            goto LABEL_286;
          }

          if (v5)
          {
            v160 = MEMORY[0x2530ADF00](v159, a1);
          }

          else
          {
            if (v159 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_385;
            }

            v160 = *(a1 + 8 * v159 + 32);
          }

          v161 = v160;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_384;
          }

          v2 = sub_252A1FCFC(v249, v253);

          ++v159;
        }

        while ((v2 & 1) == 0);

        v155 = v224;
        v2 = v232;
        if (v156 == v243)
        {
          goto LABEL_285;
        }
      }

LABEL_406:
      __break(1u);
      goto LABEL_407;
    }

    v142 = 0;
    v5 = a1 & 0xC000000000000001;
LABEL_226:
    if (v142 >= *(v141 + 16))
    {
      goto LABEL_399;
    }

    v254 = *(v241 + 32 + 8 * v142);
    if (v250)
    {
      v143 = sub_252E378C4();
      if (v143)
      {
LABEL_229:
        v144 = 0;
        ++v142;
        while (v143 != v144)
        {
          if (v5)
          {
            v145 = MEMORY[0x2530ADF00](v144, a1);
          }

          else
          {
            if (v144 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_387;
            }

            v145 = *(a1 + 8 * v144 + 32);
          }

          v146 = v145;
          if (__OFADD__(v144, 1))
          {
            goto LABEL_386;
          }

          if ([v145 deviceType] == v254)
          {

LABEL_240:
            v141 = v241;
            if (v142 != v248)
            {
              goto LABEL_226;
            }

            goto LABEL_244;
          }

          v2 = [v146 outerDeviceType];

          ++v144;
          if (v2 == v254)
          {
            goto LABEL_240;
          }
        }
      }
    }

    else
    {
      v143 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v143)
      {
        goto LABEL_229;
      }
    }

    goto LABEL_245;
  }

  v2 = 0;
  v247 = v4 + 32;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v255 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v6 = a1;
  }

  v245 = v6;
  v254 = (a1 & 0xC000000000000001);
  while (1)
  {
    if (v2 >= *(v230 + 16))
    {
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
      goto LABEL_406;
    }

    v7 = (v247 + 16 * v2);
    v8 = *v7;
    v5 = v7[1];
    if (!v250)
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_59;
      }

      goto LABEL_11;
    }

    v9 = sub_252E378C4();
    if (!v9)
    {
LABEL_59:

      goto LABEL_61;
    }

LABEL_11:
    v251 = ++v2;

    v10 = 0;
LABEL_12:
    if (v254)
    {
      v11 = MEMORY[0x2530ADF00](v10, a1);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_381;
      }

      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v14 = [v11 homeName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_252E36F34();
      v18 = v17;

      if (v16 == v8 && v18 == v5)
      {
LABEL_56:

LABEL_6:

        goto LABEL_7;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_57;
      }
    }

    v20 = [v12 roomName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_252E36F34();
      v24 = v23;

      if (v22 == v8 && v24 == v5)
      {
        goto LABEL_56;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_57;
      }
    }

    v25 = [v12 groupName];
    if (v25)
    {
      v26 = v25;
      v27 = sub_252E36F34();
      v29 = v28;

      if (v27 == v8 && v29 == v5)
      {
        goto LABEL_56;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
LABEL_57:

        goto LABEL_6;
      }
    }

    v30 = [v12 zoneName];
    if (v30)
    {
      v31 = v30;
      v32 = sub_252E36F34();
      v34 = v33;

      if (v32 == v8 && v34 == v5)
      {
LABEL_5:

        goto LABEL_6;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_55;
      }
    }

    v35 = [v12 homeEntityName];
    if (v35)
    {
      v36 = v35;
      v37 = sub_252E36F34();
      v39 = v38;

      if (v37 == v8 && v39 == v5)
      {
        goto LABEL_5;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_55;
      }
    }

    v40 = [v12 outerDeviceName];
    if (v40)
    {
      v41 = v40;
      v42 = sub_252E36F34();
      v44 = v43;

      if (v42 == v8 && v44 == v5)
      {
        goto LABEL_5;
      }

      v2 = sub_252E37DB4();

      if (v2)
      {
        goto LABEL_55;
      }
    }

    v45 = [v12 targetArea];
    if (!v45)
    {
      goto LABEL_46;
    }

    v46 = v45;
    v47 = sub_252E36F34();
    v49 = v48;

    if (v47 == v8 && v49 == v5)
    {
      goto LABEL_5;
    }

    v2 = sub_252E37DB4();

    if ((v2 & 1) == 0)
    {
LABEL_46:
      v50 = [v12 targetMap];
      if (v50)
      {
        v51 = v50;
        v52 = sub_252E36F34();
        v54 = v53;

        if (v52 == v8 && v54 == v5)
        {
          goto LABEL_5;
        }

        v2 = sub_252E37DB4();

        if (v2)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_61;
      }

      goto LABEL_12;
    }

LABEL_55:

LABEL_7:
    v2 = v251;
    if (v251 == v246)
    {
      goto LABEL_60;
    }
  }

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
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  v249 = 0;
  v253 = 0;
LABEL_327:
  v171 = v230;
  if (!v219)
  {
LABEL_348:
    v244 = 0;
    v166 = 0;
    goto LABEL_349;
  }

LABEL_328:
  v179 = 0;
  v180 = v228;
  v181 = v228 + 32;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_329:
  if (v179 < *(v180 + 16))
  {
    v182 = (v181 + 16 * v179);
    v166 = v182[1];
    v244 = *v182;
    if (v250)
    {
      v183 = sub_252E378C4();
    }

    else
    {
      v183 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v183)
    {
      v184 = 0;
      ++v179;
      while (1)
      {
        v2 = v232;
        if (v183 == v184)
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v185 = MEMORY[0x2530ADF00](v184, a1);
        }

        else
        {
          if (v184 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_398;
          }

          v185 = *(a1 + 8 * v184 + 32);
        }

        v186 = v185;
        if (__OFADD__(v184, 1))
        {
          goto LABEL_397;
        }

        v187 = sub_252A1FCFC(v244, v166);

        ++v184;
        if (v187)
        {

          v180 = v228;
          v181 = v228 + 32;
          v2 = v232;
          if (v179 == v219)
          {
            v244 = 0;
            v166 = 0;
            goto LABEL_346;
          }

          goto LABEL_329;
        }
      }
    }

    v236 = 0;
    v245 = 0;
LABEL_346:
    v171 = v230;
    goto LABEL_349;
  }

LABEL_415:
  __break(1u);
}

unint64_t sub_252BB48FC(_OWORD *a1)
{
  v2 = v1[4];
  v16 = v1[13];
  v17 = v1[20];
  v18 = v1[21];
  v19 = v1[19];
  v15 = v1[28];
  v37 = a1;
  v36 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v20 = a1;
  while (1)
  {
    if (!v3)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = *v4;
    if (v6 > 1)
    {
      break;
    }

    *v4;
LABEL_3:
    v5 = sub_252E37DB4();

    ++v4;
    --v3;
    if (v5)
    {
      goto LABEL_13;
    }
  }

  if (v6 == 2 || v6 == 3)
  {
    goto LABEL_3;
  }

LABEL_13:
  if (!*(v19 + 16))
  {
    if (*(v18 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB4FC0;
      v11 = v18;
      goto LABEL_23;
    }

    if (*(v17 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB5340;
      v11 = v17;
      goto LABEL_23;
    }

    if (*(v16 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB55E0;
      v11 = v16;
      goto LABEL_23;
    }

    if (*(v15 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB5880;
      v11 = v15;
      goto LABEL_23;
    }

    v12 = v1;
    if (qword_27F53F4E8 != -1)
    {
LABEL_29:
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v35 = v21;
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E85EF0);
    v22 = *v12;
    v23 = v12[1];
    v24 = *(v12 + 40);
    v25 = *(v12 + 56);
    v26 = *(v12 + 72);
    v27 = *(v12 + 88);
    v28 = v12[7];
    v29 = v12[8];
    v30 = *(v12 + 18);
    v32 = v12[12];
    v33 = v12[13];
    v31 = v12[11];
    memcpy(v34, v12 + 232, sizeof(v34));
    v14 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v14);

    sub_252CC4050(v35, *(&v35 + 1), 0xD00000000000007ALL, 0x8000000252E85990, 0xD000000000000026, 0x8000000252E85F30, 351);

    return MEMORY[0x277D84F90];
  }

  v8 = v20;
  v9 = v20;
  v10 = sub_252BB4D20;
  v11 = v19;
LABEL_23:
  sub_252BBEE30(v11, v9, &v37, &v36, v10);

  v12 = v37;
  if (v36 >> 62 && sub_252E378C4() < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  sub_252D57BF4(0, 0, v12);

  return v36;
}

void sub_252BB4D20(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 576))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 homeEntityName];
  if (v15)
  {
    v31 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v31;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v31;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    v26 = *(v25 + 32);
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;

    v27 = sub_2529D0538();

    v28 = *v22;
    *v22 = v27;
  }

LABEL_7:
  v29 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v30 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB4FC0(uint64_t *a1, void *a2, id *a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v41 = v8;
  v12 = (*(*v11 + 608))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 homeEntityName];
  if (v15)
  {
    v16 = a2;
    v17 = v15;
    v18 = sub_252E36F34();
    v20 = v19;

    if (v18 == v7 && v20 == v41)
    {
    }

    else
    {
      v21 = sub_252E37DB4();

      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v22 = v16;
    v23 = sub_2529D0A90(v22);

    v24 = *(v23 + 32);
    *(v23 + 24) = 0;
    *(v23 + 32) = 0;

    v25 = sub_2529D0538();

    v26 = *a3;
    *a3 = v25;
  }

LABEL_7:
  v27 = [*a3 outerDeviceName];
  if (!v27)
  {
    goto LABEL_13;
  }

  v28 = v27;
  v29 = sub_252E36F34();
  v31 = v30;

  if (v29 == v7 && v31 == v41)
  {
  }

  else
  {
    v32 = sub_252E37DB4();

    if ((v32 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v33 = *a3;
  type metadata accessor for MutableMatterHomeFilter();
  swift_initStackObject();
  v34 = v33;
  v35 = sub_2529D0A90(v34);

  v36 = *(v35 + 64);
  *(v35 + 56) = 0;
  *(v35 + 64) = 0;

  v37 = sub_2529D0538();

  v38 = *a3;
  *a3 = v37;

LABEL_13:
  v39 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB5340(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 664))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 groupName];
  if (v15)
  {
    v31 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v31;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v31;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    v26 = *(v25 + 120);
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;

    v27 = sub_2529D0538();

    v28 = *v22;
    *v22 = v27;
  }

LABEL_7:
  v29 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v30 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB55E0(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 680))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 roomName];
  if (v15)
  {
    v31 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v31;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v31;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    v26 = *(v25 + 136);
    *(v25 + 128) = 0;
    *(v25 + 136) = 0;

    v27 = sub_2529D0538();

    v28 = *v22;
    *v22 = v27;
  }

LABEL_7:
  v29 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v30 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB5880(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 648))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 zoneName];
  if (v15)
  {
    v31 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v31;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v31;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    v26 = *(v25 + 104);
    *(v25 + 96) = 0;
    *(v25 + 104) = 0;

    v27 = sub_2529D0538();

    v28 = *v22;
    *v22 = v27;
  }

LABEL_7:
  v29 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v30 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_252E372A4();
  }

  sub_252E372D4();
}

unint64_t sub_252BB5B20(unint64_t result)
{
  v1 = result;
  v19 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      if ([v4 entityType] == 5)
      {
        type metadata accessor for HomeFilter.Builder();
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        *(inited + 32) = 0;
        *(inited + 40) = 7;
        *(inited + 48) = 0u;
        *(inited + 64) = 0u;
        *(inited + 80) = 0u;
        *(inited + 96) = 0u;
        *(inited + 112) = 0u;
        *(inited + 128) = 0u;
        *(inited + 144) = 0u;
        *(inited + 160) = 0u;
        *(inited + 175) = 0;
        v7 = [v5 homeEntityName];
        if (v7)
        {
          v8 = v7;
          v9 = sub_252E36F34();
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0;
        }

        *(inited + 24) = v9;
        *(inited + 32) = v11;
        *(inited + 40) = 5;
        v13 = [v5 homeName];
        if (v13)
        {
          v14 = v13;
          v15 = sub_252E36F34();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        *(inited + 80) = v15;
        *(inited + 88) = v17;
        sub_252B719E4();
        swift_setDeallocating();
        HomeFilter.Builder.deinit();
        v12 = swift_deallocClassInstance();
      }

      else
      {
        v12 = v5;
      }

      MEMORY[0x2530AD700](v12);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    return v19;
  }

  return result;
}

unint64_t sub_252BB5D44(unint64_t a1)
{
  v2 = *(v1 + 104);
  v115 = *(v1 + 224);
  v3 = MEMORY[0x277D84F90];
  v135 = MEMORY[0x277D84F90];
  v4 = type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = sub_2529DA2BC();

  v7 = v6;
  v134 = v3;
  if (v6 >> 62)
  {
    goto LABEL_148;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      v33 = MEMORY[0x277D84F90];
LABEL_43:

      v34 = sub_252C75848(v33);

      v133 = sub_252BBC1F0(v2, v34);
      v35 = static HomeStore.shared.getter();
      v36 = sub_2529DA2BC();

      v134 = v9;
      if (v36 >> 62)
      {
        v7 = sub_252E378C4();
        v37 = v7;
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = MEMORY[0x277D84F90];
      if (v37)
      {
        v38 = 0;
        v123 = v36 & 0xFFFFFFFFFFFFFF8;
        v126 = v36 & 0xC000000000000001;
        v114 = v36;
        v120 = v36 + 32;
        v117 = v37;
        while (1)
        {
          if (v126)
          {
            v7 = MEMORY[0x2530ADF00](v38, v114);
            v2 = v7;
            v11 = __OFADD__(v38++, 1);
            if (v11)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if (v38 >= *(v123 + 16))
            {
              goto LABEL_146;
            }

            v2 = *(v120 + 8 * v38);

            v11 = __OFADD__(v38++, 1);
            if (v11)
            {
              goto LABEL_145;
            }
          }

          v39 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
          v40 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v41 = *&v39[v40];
          if (v41 >> 62)
          {
            if (v41 < 0)
            {
              v46 = *&v39[v40];
            }

            v47 = sub_252E378C4();

            if (!v47)
            {
LABEL_62:
              v45 = v4;
              goto LABEL_63;
            }
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (!v42)
            {
              goto LABEL_62;
            }
          }

          v43 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
          v44 = sub_252AC11C8(v2);

          if (v44)
          {
            v45 = v44;
          }

          else
          {
            v45 = v4;
          }

LABEL_63:
          if (v45 >> 62)
          {
            v48 = sub_252E378C4();
            if (v48)
            {
LABEL_65:
              v49 = 0;
              do
              {
                v50 = v49;
                while (1)
                {
                  if ((v45 & 0xC000000000000001) != 0)
                  {
                    v51 = MEMORY[0x2530ADF00](v50, v45);
                  }

                  else
                  {
                    if (v50 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_140;
                    }

                    v51 = *(v45 + 8 * v50 + 32);
                  }

                  v52 = v51;
                  v49 = v50 + 1;
                  if (__OFADD__(v50, 1))
                  {
                    goto LABEL_139;
                  }

                  v53 = [v51 name];
                  if (v53)
                  {
                    break;
                  }

                  ++v50;
                  if (v49 == v48)
                  {
                    goto LABEL_47;
                  }
                }

                v54 = v53;
                v55 = sub_252E36F34();
                v129 = v56;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_2529F7A80(0, *(v4 + 16) + 1, 1, v4);
                }

                v2 = *(v4 + 16);
                v57 = *(v4 + 24);
                if (v2 >= v57 >> 1)
                {
                  v4 = sub_2529F7A80((v57 > 1), v2 + 1, 1, v4);
                }

                *(v4 + 16) = v2 + 1;
                v58 = v4 + 16 * v2;
                *(v58 + 32) = v55;
                *(v58 + 40) = v129;
              }

              while (v49 != v48);
            }
          }

          else
          {
            v48 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v48)
            {
              goto LABEL_65;
            }
          }

LABEL_47:

          v7 = sub_25297A744(v4);
          v4 = MEMORY[0x277D84F90];
          if (v38 == v117)
          {
            v4 = v9;
            break;
          }
        }
      }

      v59 = sub_252C75848(v4);

      v7 = sub_252BBC1F0(v115, v59);
      v4 = v7;
      if (!*(v133 + 16) && !*(v7 + 16))
      {
        goto LABEL_141;
      }

      v60 = a1;
      if (a1 >> 62)
      {
        v7 = sub_252E378C4();
        v60 = a1;
        v2 = v7;
        if (v7)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
LABEL_88:
          v61 = 0;
          v132 = v60 & 0xC000000000000001;
          v121 = v60 + 32;
          v124 = v60 & 0xFFFFFFFFFFFFFF8;
          v62 = v133 + 56;
          v127 = MEMORY[0x277D84F90];
          v130 = v2;
          v63 = v4 + 56;
          while (1)
          {
            if (v132)
            {
              v7 = MEMORY[0x2530ADF00](v61);
            }

            else
            {
              if (v61 >= *(v124 + 16))
              {
                goto LABEL_147;
              }

              v7 = *(v121 + 8 * v61);
            }

            v64 = v7;
            v11 = __OFADD__(v61++, 1);
            if (v11)
            {
              goto LABEL_144;
            }

            v65 = [v7 roomName];
            if (!v65)
            {
              v65 = [v64 zoneName];
              if (!v65)
              {
                v105 = v64;
                MEMORY[0x2530AD700]();
                if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v109 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_252E372A4();
                  v2 = v130;
                }

                sub_252E372D4();

                v127 = v135;
                goto LABEL_91;
              }
            }

            v66 = [v64 roomName];
            if (!v66)
            {
              goto LABEL_110;
            }

            v67 = v66;
            v68 = sub_252E36F34();
            v70 = v69;

            if (!*(v133 + 16))
            {
              break;
            }

            v71 = *(v133 + 40);
            sub_252E37EC4();
            sub_252E37044();
            v72 = sub_252E37F14();
            v73 = v133;
            v74 = -1 << *(v133 + 32);
            v75 = v72 & ~v74;
            if (((*(v62 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
            {
              break;
            }

            v76 = ~v74;
            while (1)
            {
              v77 = (*(v73 + 48) + 16 * v75);
              v78 = *v77 == v68 && v77[1] == v70;
              if (v78 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }

              v75 = (v75 + 1) & v76;
              v73 = v133;
              if (((*(v62 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
              {
                goto LABEL_109;
              }
            }

            type metadata accessor for HomeFilter.Builder();
            swift_allocObject();
            HomeFilter.Builder.init()();
            v94 = *(*v93 + 752);
            v95 = v64;
            v96 = v94(v64);

            v97 = (*(*v96 + 760))();

            [v97 setRoomName_];
            v98 = v97;
            MEMORY[0x2530AD700]();
            if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v107 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();

            v79 = 1;
            v127 = v135;
LABEL_111:
            v80 = [v64 zoneName];
            if (v80)
            {
              v81 = v80;
              v82 = sub_252E36F34();
              v84 = v83;

              if (*(v4 + 16))
              {
                v85 = *(v4 + 40);
                sub_252E37EC4();
                sub_252E37044();
                v86 = sub_252E37F14();
                v87 = -1 << *(v4 + 32);
                v88 = v86 & ~v87;
                if ((*(v63 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88))
                {
                  v89 = ~v87;
                  while (1)
                  {
                    v90 = (*(v4 + 48) + 16 * v88);
                    v91 = *v90 == v82 && v90[1] == v84;
                    if (v91 || (sub_252E37DB4() & 1) != 0)
                    {
                      break;
                    }

                    v88 = (v88 + 1) & v89;
                    if (((*(v63 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
                    {
                      goto LABEL_121;
                    }
                  }

                  type metadata accessor for HomeFilter.Builder();
                  swift_allocObject();
                  HomeFilter.Builder.init()();
                  v100 = *(*v99 + 752);
                  v101 = v64;
                  v102 = v100(v64);

                  v103 = (*(*v102 + 760))();

                  [v103 setZoneName_];
                  v104 = v103;
                  MEMORY[0x2530AD700]();
                  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v108 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_252E372A4();
                  }

                  sub_252E372D4();

                  goto LABEL_132;
                }
              }

LABEL_121:
            }

            if (!v79)
            {
              v92 = v64;
              MEMORY[0x2530AD700]();
              if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v106 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();

LABEL_132:
              v127 = v135;
              goto LABEL_90;
            }

LABEL_90:
            v2 = v130;
LABEL_91:
            if (v61 == v2)
            {

              return v127;
            }
          }

LABEL_109:

LABEL_110:
          v79 = 0;
          goto LABEL_111;
        }
      }

      return MEMORY[0x277D84F90];
    }

    v112 = v4;
    v113 = v2;
    v10 = 0;
    v125 = v7 & 0xFFFFFFFFFFFFFF8;
    v128 = v7 & 0xC000000000000001;
    v116 = v7;
    v119 = v8;
    v122 = v7 + 32;
LABEL_6:
    if (v128)
    {
      v7 = MEMORY[0x2530ADF00](v10, v116);
      v2 = v7;
      v11 = __OFADD__(v10++, 1);
      if (v11)
      {
        goto LABEL_142;
      }
    }

    else
    {
      if (v10 >= *(v125 + 16))
      {
        goto LABEL_143;
      }

      v2 = *(v122 + 8 * v10);

      v11 = __OFADD__(v10++, 1);
      if (v11)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        v111 = v7;
        v8 = sub_252E378C4();
        v7 = v111;
        continue;
      }
    }

    break;
  }

  v12 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v13 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v14 = *&v12[v13];
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v19 = *&v12[v13];
    }

    v20 = sub_252E378C4();

    if (v20)
    {
      goto LABEL_11;
    }

LABEL_20:
    v4 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_11:
  v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v17 = sub_252AC0F68(v2);

  v4 = MEMORY[0x277D84F90];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

LABEL_21:
  if (v18 >> 62)
  {
    v21 = sub_252E378C4();
    if (!v21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_5;
    }
  }

  v22 = 0;
  v2 = v18 & 0xC000000000000001;
LABEL_24:
  v23 = v22;
  while (1)
  {
    if (v2)
    {
      v24 = MEMORY[0x2530ADF00](v23, v18);
    }

    else
    {
      if (v23 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_138;
      }

      v24 = *(v18 + 8 * v23 + 32);
    }

    v25 = v24;
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    v26 = [v24 name];
    if (v26)
    {
      v27 = v26;
      v131 = sub_252E36F34();
      v29 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F7A80(0, *(v4 + 16) + 1, 1, v4);
      }

      v31 = *(v4 + 16);
      v30 = *(v4 + 24);
      if (v31 >= v30 >> 1)
      {
        v4 = sub_2529F7A80((v30 > 1), v31 + 1, 1, v4);
      }

      *(v4 + 16) = v31 + 1;
      v32 = v4 + 16 * v31;
      *(v32 + 32) = v131;
      *(v32 + 40) = v29;
      if (v22 != v21)
      {
        goto LABEL_24;
      }

LABEL_5:

      v7 = sub_25297A744(v4);
      if (v10 == v119)
      {
        v33 = v134;
        v2 = v113;
        v9 = MEMORY[0x277D84F90];
        goto LABEL_43;
      }

      goto LABEL_6;
    }

    ++v23;
    if (v22 == v21)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:

  return a1;
}

BOOL sub_252BB6A08(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 16);
  v44 = *v1;
  v47 = v1[1];
  v51 = *(v1 + 40);
  v54 = *(v1 + 56);
  v57 = *(v1 + 72);
  v42 = *(v1 + 11);
  v43 = *(v1 + 19);
  v33 = *(v1 + 12);
  v36 = *(v1 + 13);
  v60 = v1[7];
  v62 = *(v1 + 136);
  v39 = *(v1 + 20);
  v41 = *(v1 + 21);
  v84 = v1[21];
  v86 = v1[22];
  v88 = v1[23];
  v76 = v1[17];
  v78 = v1[18];
  v80 = v1[19];
  v82 = v1[20];
  v68 = v1[13];
  v70 = v1[14];
  v72 = v1[15];
  v74 = v1[16];
  v64 = v1[11];
  v66 = v1[12];
  v90 = *(v1 + 48);
  v37 = *(v1 + 49);
  v96 = v1[27];
  v98 = v1[28];
  v100 = v1[29];
  v102 = *(v1 + 60);
  v92 = v1[25];
  v94 = v1[26];
  v34 = (v1 + 488);
  v104 = *(v1 + 488);
  v38 = v3;
  if (sub_252A169C8())
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    v40 = v4;
    v6 = *(v3 + 16);
    v7 = (v3 + 32);
    v8 = v7;
    while (v6)
    {
      v10 = *v8;
      if (v10 > 1 && v10 != 3 && v10 != 4)
      {
LABEL_34:
        v4 = v40;
LABEL_43:

        goto LABEL_2;
      }

      v9 = sub_252E37DB4();

      ++v8;
      --v6;
      if (v9)
      {
LABEL_21:
        v5 = 1;
        v4 = v40;
        goto LABEL_22;
      }
    }

    v11 = *(v38 + 16);
    v4 = v40;
    while (v11)
    {
      v13 = *v7;
      if (v13 > 2 && v13 != 4)
      {
        goto LABEL_43;
      }

      v12 = sub_252E37DB4();

      ++v7;
      --v11;
      if (v12)
      {
        goto LABEL_2;
      }
    }

    v14 = *(v42 + 16);
    v15 = (v42 + 32);
    v16 = (v42 + 32);
    while (2)
    {
      if (v14)
      {
        switch(*v16)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v17 = sub_252E37DB4();

            ++v16;
            --v14;
            if ((v17 & 1) == 0)
            {
              continue;
            }

            goto LABEL_21;
          default:
            goto LABEL_34;
        }
      }

      break;
    }

    v25 = *(v42 + 16);
    HIDWORD(v31) = -385875968;
    v4 = v40;
    while (2)
    {
      v27 = v25-- != 0;
      v5 = v27;
      if (v27)
      {
        switch(*v15)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v26 = sub_252E37DB4();

            ++v15;
            if ((v26 & 1) == 0)
            {
              continue;
            }

            break;
          default:
            goto LABEL_43;
        }
      }

      break;
    }
  }

LABEL_22:
  if (*(v43 + 16) <= 1uLL)
  {
    v18 = *(v41 + 16) > 1uLL;
    if (*(v4 + 16))
    {
      return 0;
    }
  }

  else
  {
    v18 = 1;
    if (*(v4 + 16))
    {
      return 0;
    }
  }

  LODWORD(v31) = v18;
  v19 = *(v42 + 16);
  v20 = (v42 + 32);
  v21 = (v42 + 32);
  while (2)
  {
    if (v19)
    {
      switch(*v21)
      {
        case 2:

          goto LABEL_48;
        default:
          v22 = sub_252E37DB4();

          ++v21;
          --v19;
          if ((v22 & 1) == 0)
          {
            continue;
          }

          goto LABEL_48;
      }
    }

    break;
  }

  v23 = *(v42 + 16);
  while (2)
  {
    if (!v23)
    {
      goto LABEL_57;
    }

    switch(*v20)
    {
      case 1:

        break;
      default:
        v24 = sub_252E37DB4();

        ++v20;
        --v23;
        if ((v24 & 1) == 0)
        {
          continue;
        }

        break;
    }

    break;
  }

  if (*(v36 + 16))
  {
LABEL_57:
    v45 = *v2;
    v48 = v2[1];
    v52 = *(v2 + 40);
    v55 = *(v2 + 56);
    v58 = *(v2 + 72);
    v61 = v2[7];
    v63 = *(v2 + 136);
    v85 = v2[21];
    v87 = v2[22];
    v89 = v2[23];
    v77 = v2[17];
    v79 = v2[18];
    v81 = v2[19];
    v83 = v2[20];
    v69 = v2[13];
    v71 = v2[14];
    v73 = v2[15];
    v75 = v2[16];
    v65 = v2[11];
    v67 = v2[12];
    v91 = *(v2 + 48);
    v97 = v2[27];
    v99 = v2[28];
    v101 = v2[29];
    v103 = *(v2 + 60);
    v93 = v2[25];
    v95 = v2[26];
    v105 = *v34;
    v28 = sub_252A10C68([a1 attribute]);
    if (v5 & 1 | ((v28 & 1) == 0) | v32 & 1)
    {
      return 0;
    }
  }

LABEL_48:
  if (!*(v39 + 16))
  {
    if (v37 >> 62)
    {
      if (sub_252E378C4())
      {
        return 0;
      }
    }

    else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v50 = v2[27];
    v53 = v2[28];
    v56 = v2[29];
    v59 = *(v2 + 60);
    v46 = v2[25];
    v49 = v2[26];
    return sub_252C5CF44();
  }

  return 0;
}

unint64_t sub_252BB776C(unint64_t result)
{
  if (result != 1)
  {
    v2 = *v1;
    v3 = *(v1 + 8);
    v4 = *(v1 + 24);
    v5 = *(v1 + 25);
    v6 = *(v1 + 26);
    v7 = *(v1 + 208);
    v8 = *(v1 + 209);
    if (v7 == 9)
    {
      if (v8 == 2)
      {
        v9 = result;
        if ((sub_252B9D64C(result) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      return 4;
    }

    v9 = result;
    if ((sub_252A0D524(*(v1 + 208), 4u) & 1) == 0)
    {
      result = 4;
      if (v8 != 2)
      {
        return result;
      }

      if ((sub_252A0D524(v7, 1u) & 1) == 0)
      {
        if ((sub_252A0D524(v7, 3u) & 1) == 0)
        {
          sub_252B9D64C(v9);
          if (sub_252A0D524(v7, 2u))
          {
            return 6;
          }

LABEL_5:
          *&v13 = *(v1 + 9);
          *(&v13 + 7) = v1[2];
          v40 = *(v1 + 155);
          v43 = *(v1 + 171);
          *v46 = *(v1 + 187);
          *&v46[13] = v1[25];
          v28 = *(v1 + 91);
          v31 = *(v1 + 107);
          v34 = *(v1 + 123);
          v37 = *(v1 + 139);
          v16 = *(v1 + 27);
          v19 = *(v1 + 43);
          v22 = *(v1 + 59);
          v25 = *(v1 + 75);
          memcpy(v49, v1 + 210, sizeof(v49));
          if ((sub_252A10C68(v9) & 1) == 0)
          {
            return 0;
          }

          if (v4 == 2)
          {
            return 1;
          }

          if (v4)
          {
            v12 = sub_252E37DB4();
            swift_bridgeObjectRelease_n();
            if ((v12 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          if (sub_252BB7C30(v9))
          {
            *&v14 = *(v1 + 9);
            *(&v14 + 7) = v1[2];
            v41 = *(v1 + 155);
            v44 = *(v1 + 171);
            *v47 = *(v1 + 187);
            *&v47[13] = v1[25];
            v29 = *(v1 + 91);
            v32 = *(v1 + 107);
            v35 = *(v1 + 123);
            v38 = *(v1 + 139);
            v17 = *(v1 + 27);
            v20 = *(v1 + 43);
            v23 = *(v1 + 59);
            v26 = *(v1 + 75);
            memcpy(v49, v1 + 210, sizeof(v49));
            if (!sub_252A12698() && (v6 == 4 || (sub_252A0C910(v6, 1u) & 1) == 0))
            {
              return 2;
            }
          }

          if ((v4 & 1) == 0)
          {
            v11 = sub_252E37DB4();
            swift_bridgeObjectRelease_n();
            if ((v11 & 1) == 0)
            {
              return 1;
            }

            goto LABEL_31;
          }

LABEL_29:
          swift_bridgeObjectRelease_n();
LABEL_31:
          if (sub_252BB7C30(v9))
          {
            *&v15 = *(v1 + 9);
            *(&v15 + 7) = v1[2];
            v42 = *(v1 + 155);
            v45 = *(v1 + 171);
            *v48 = *(v1 + 187);
            *&v48[13] = v1[25];
            v30 = *(v1 + 91);
            v33 = *(v1 + 107);
            v36 = *(v1 + 123);
            v39 = *(v1 + 139);
            v18 = *(v1 + 27);
            v21 = *(v1 + 43);
            v24 = *(v1 + 59);
            v27 = *(v1 + 75);
            memcpy(v49, v1 + 210, sizeof(v49));
            if (!sub_252A12698() && (v6 == 4 || (sub_252A0C910(v6, 1u) & 1) == 0))
            {
              return 3;
            }
          }

          return 1;
        }

        return 4;
      }

      if (v3 <= 1)
      {
        if (!v3)
        {
          swift_bridgeObjectRelease_n();
          return 5;
        }

LABEL_21:
        v10 = sub_252E37DB4();

        if (v10)
        {
          return 5;
        }

        return 4;
      }

      if (v3 == 2)
      {
        goto LABEL_21;
      }
    }

    return 4;
  }

  return result;
}

uint64_t sub_252BB7C30(uint64_t a1)
{
  if (qword_27F53F3B0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27F575920;
  if (!*(qword_27F575920 + 16))
  {
    return 0;
  }

  v2 = sub_252A488EC(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_252974E7C(*(v1 + 56) + 32 * v2, v6);
  sub_252A00AF4(v6, v7);
  sub_252974E7C(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439F8, &qword_252E502D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
    return 1;
  }

  else
  {
    sub_252A00AF4(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A00, &qword_252E502D8);
    return swift_dynamicCast();
  }
}

unint64_t sub_252BB7D58(unint64_t a1)
{
  v2 = sub_252E36AD4();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeStore();
  v5 = static HomeStore.shared.getter();
  v6 = HomeStore.services(matching:supporting:)(a1, 0);
  v8 = v7;

  if (v8)
  {
    if (qword_27F53F4F8 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_3;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v57, qword_27F544D90);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_252E379F4();

  v61 = 0x616D206261636F56;
  v62 = 0xEF203A7365686374;
  v9 = type metadata accessor for Service();
  v10 = MEMORY[0x2530AD730](v6, v9);
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v61, v62, 0xD00000000000007ALL, 0x8000000252E85990);

LABEL_7:
  v61 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_22:
    v16 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_69;
  }

LABEL_9:
  v12 = 0;
  while ((v6 & 0xC000000000000001) == 0)
  {
    if (v12 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      v11 = sub_252E378C4();
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v13 = *(v6 + 8 * v12 + 32);

    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_17;
    }

LABEL_13:
    v15 = sub_252CD95D8();

    sub_25297A864(v15);
    ++v12;
    if (v14 == v11)
    {
      goto LABEL_18;
    }
  }

  MEMORY[0x2530ADF00](v12, v6);
  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v16 = v61;
  if (*(v61 + 16))
  {
    goto LABEL_69;
  }

LABEL_23:
  v17 = static HomeStore.shared.getter();
  v18 = HomeStore.accessories(matching:supporting:)(a1, 0);
  v20 = v19;

  if (v20)
  {
    sub_252929F10(v18, 1);
    goto LABEL_69;
  }

  v21 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    a1 = sub_252E378C4();
    if (!a1)
    {
      goto LABEL_56;
    }

LABEL_27:
    v22 = 0;
    v59 = v18 & 0xC000000000000001;
    v16 = MEMORY[0x277D84F90];
    v58 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v59)
      {
        v24 = v18;
        v25 = MEMORY[0x2530ADF00](v22, v18);
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v22 >= *(v21 + 16))
        {
          goto LABEL_49;
        }

        v24 = v18;
        v25 = *(v18 + 8 * v22 + 32);

        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          swift_once();
LABEL_3:
          __swift_project_value_buffer(v57, qword_27F544D90);
          v61 = 0;
          v62 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E85E30);
          v60 = v6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v61, v62, 0xD00000000000007ALL, 0x8000000252E85990, 0xD000000000000021, 0x8000000252E85E60, 636);

          sub_252929F10(v6, 1);
          v6 = MEMORY[0x277D84F90];
          goto LABEL_7;
        }
      }

      v27 = (*(*v25 + 336))();

      v28 = *(v27 + 16);
      v29 = *(v16 + 2);
      v30 = v29 + v28;
      if (__OFADD__(v29, v28))
      {
        goto LABEL_50;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v30 <= *(v16 + 3) >> 1)
      {
        if (*(v27 + 16))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v29 <= v30)
        {
          v32 = v29 + v28;
        }

        else
        {
          v32 = v29;
        }

        v16 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v32, 1, v16);
        if (*(v27 + 16))
        {
LABEL_42:
          v33 = *(v16 + 2);
          if ((*(v16 + 3) >> 1) - v33 < v28)
          {
            goto LABEL_52;
          }

          memcpy(&v16[8 * v33 + 32], (v27 + 32), 8 * v28);

          if (v28)
          {
            v34 = *(v16 + 2);
            v35 = __OFADD__(v34, v28);
            v36 = v34 + v28;
            if (v35)
            {
              goto LABEL_53;
            }

            *(v16 + 2) = v36;
          }

          goto LABEL_29;
        }
      }

      if (v28)
      {
        goto LABEL_51;
      }

LABEL_29:
      ++v22;
      v23 = v26 == a1;
      v21 = v58;
      v18 = v24;
      if (v23)
      {
        goto LABEL_57;
      }
    }
  }

  a1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a1)
  {
    goto LABEL_27;
  }

LABEL_56:
  v16 = MEMORY[0x277D84F90];
LABEL_57:
  sub_252929F10(v18, 0);
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v37 = v57;
  v38 = __swift_project_value_buffer(v57, qword_27F544D90);
  (*(v56 + 16))(v55, v38, v37);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E85DF0);
  v39 = *(v16 + 2);
  if (v39)
  {
    v40 = (v16 + 32);
    v41 = MEMORY[0x277D84F90];
    do
    {
      v42 = *v40++;
      v43 = HomeAttributeType.description.getter(v42);
      v45 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2529F7A80(0, *(v41 + 2) + 1, 1, v41);
      }

      v47 = *(v41 + 2);
      v46 = *(v41 + 3);
      if (v47 >= v46 >> 1)
      {
        v41 = sub_2529F7A80((v46 > 1), v47 + 1, 1, v41);
      }

      *(v41 + 2) = v47 + 1;
      v48 = &v41[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v49 = MEMORY[0x2530AD730](v41, MEMORY[0x277D837D0]);
  v51 = v50;

  MEMORY[0x2530AD570](v49, v51);

  v52 = v55;
  sub_252CC3D90(v61, v62, 0xD00000000000007ALL, 0x8000000252E85990);

  (*(v56 + 8))(v52, v57);
LABEL_69:
  v53 = sub_252DF9098(v16);

  sub_252BB00B0(v53);

  return v6;
}

uint64_t sub_252BB84E8()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v302 = *(v2 - 8);
  v3 = v302[8];
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v282 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v282 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v282 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v282 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v288 = &v282 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v291 = &v282 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  j = &v282 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v282 - v22;
  v24 = v1[11];
  v332 = v1[10];
  v333 = v24;
  v334 = v1[12];
  v25 = v1[7];
  v328 = v1[6];
  v329 = v25;
  v26 = v1[8];
  v331 = v1[9];
  v330 = v26;
  v27 = v1[3];
  v324 = v1[2];
  v325 = v27;
  v28 = v1[4];
  v327 = v1[5];
  v326 = v28;
  v29 = v1[1];
  v322 = *v1;
  v323 = v29;
  LODWORD(v30) = *(v1 + 208);
  memcpy(v321, v1 + 209, sizeof(v321));
  if (v30 != 9 && (sub_252A0D524(v30, 4u) & 1) != 0)
  {
    return 0;
  }

  v287 = v15;
  v284 = v6;
  v32 = v1[11];
  v316 = v1[10];
  v317 = v32;
  v318 = v1[12];
  v33 = v1[7];
  v312 = v1[6];
  v313 = v33;
  v34 = v1[9];
  v314 = v1[8];
  v315 = v34;
  v35 = v1[3];
  v308 = v1[2];
  v309 = v35;
  v36 = v1[5];
  v310 = v1[4];
  v311 = v36;
  v37 = v1[1];
  v306 = *v1;
  v307 = v37;
  v319 = v30;
  memcpy(v320, v1 + 209, sizeof(v320));
  v38 = sub_252A10F24();
  i = sub_252BB00B0(v38);

  v40 = v1[11];
  v316 = v1[10];
  v317 = v40;
  v318 = v1[12];
  v41 = v1[7];
  v312 = v1[6];
  v313 = v41;
  v42 = v1[9];
  v314 = v1[8];
  v315 = v42;
  v43 = v1[3];
  v308 = v1[2];
  v309 = v43;
  v44 = v1[5];
  v310 = v1[4];
  v311 = v44;
  v45 = v1[1];
  v306 = *v1;
  v307 = v45;
  v319 = v30;
  memcpy(v320, v1 + 209, sizeof(v320));
  v292 = sub_252BAC7E4();
  v303 = sub_252BB7D58(v292);
  v300 = v46;
  if (qword_27F53F4F8 == -1)
  {
    goto LABEL_5;
  }

  while (2)
  {
    swift_once();
LABEL_5:
    v286 = v12;
    v283 = v9;
    v47 = __swift_project_value_buffer(v2, qword_27F544D90);
    v48 = v302[2];
    v299 = v47;
    v301 = v2;
    v296 = v48;
    v297 = v302 + 2;
    (v48)(v23);
    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_252E379F4();

    v290 = 0xD000000000000012;
    *&v305 = 0xD000000000000012;
    *(&v305 + 1) = 0x8000000252E85A40;
    v316 = v332;
    v317 = v333;
    v318 = v334;
    v312 = v328;
    v313 = v329;
    v314 = v330;
    v315 = v331;
    v308 = v324;
    v309 = v325;
    v310 = v326;
    v311 = v327;
    v306 = v322;
    v307 = v323;
    v294 = v30;
    v319 = v30;
    memcpy(v320, v321, sizeof(v320));
    v49 = sub_252A10F24();
    v50 = *(v49 + 2);
    v289 = i;
    if (v50)
    {
      v51 = (v49 + 32);
      v2 = MEMORY[0x277D84F90];
      do
      {
        v52 = *v51++;
        v53 = HomeAttributeType.description.getter(v52);
        v55 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2529F7A80(0, *(v2 + 16) + 1, 1, v2);
        }

        v57 = *(v2 + 16);
        v56 = *(v2 + 24);
        if (v57 >= v56 >> 1)
        {
          v2 = sub_2529F7A80((v56 > 1), v57 + 1, 1, v2);
        }

        *(v2 + 16) = v57 + 1;
        v58 = v2 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
        --v50;
      }

      while (v50);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v59 = MEMORY[0x2530AD730](v2, MEMORY[0x277D837D0]);
    v61 = v60;

    MEMORY[0x2530AD570](v59, v61);

    v298 = "esult";
    sub_252CC3D90(v305, *(&v305 + 1), 0xD00000000000007ALL, 0x8000000252E85990);

    v62 = v302[1];
    v63 = v301;
    ++v302;
    v295 = v62;
    v62(v23, v301);
    v296(j, v299, v63);
    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v306 = 0xD000000000000011;
    *(&v306 + 1) = 0x8000000252E85A60;
    v23 = v300;
    v9 = v300 + 64;
    v64 = 1 << v300[32];
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v30 = v65 & *(v300 + 8);
    v66 = (v64 + 63) >> 6;

    v12 = 0;
    for (i = MEMORY[0x277D84F90]; v30; v23 = v300)
    {
LABEL_21:
      v68 = (v12 << 9) | (8 * __clz(__rbit64(v30)));
      v69 = *(*(v23 + 56) + v68);
      *&v305 = HomeAttributeType.description.getter(*(*(v23 + 48) + v68));
      *(&v305 + 1) = v70;
      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v304 = v69;
      v71 = sub_252E37D94();
      MEMORY[0x2530AD570](v71);

      v2 = *(&v305 + 1);
      v72 = v305;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_2529F7A80(0, *(i + 16) + 1, 1, i);
      }

      v74 = *(i + 16);
      v73 = *(i + 24);
      if (v74 >= v73 >> 1)
      {
        i = sub_2529F7A80((v73 > 1), v74 + 1, 1, i);
      }

      v30 &= v30 - 1;
      *(i + 16) = v74 + 1;
      v75 = i + 16 * v74;
      *(v75 + 32) = v72;
      *(v75 + 40) = v2;
    }

    while (1)
    {
      v67 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (v67 >= v66)
      {
        break;
      }

      v30 = *&v9[8 * v67];
      ++v12;
      if (v30)
      {
        v12 = v67;
        goto LABEL_21;
      }
    }

    v76 = MEMORY[0x2530AD730](i, MEMORY[0x277D837D0]);
    v78 = v77;

    MEMORY[0x2530AD570](v76, v78);

    v79 = j;
    sub_252CC3D90(v306, *(&v306 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000);

    v80 = v301;
    v81 = v295(v79, v301);
    v82 = v289;
    v83 = *(v289 + 16);
    if (*(v23 + 16))
    {
      v84 = v294;
      v85 = v290;
      if (!v83)
      {
        v81 = sub_252BAFB3C(v292);
        if (v81)
        {

          *&v306 = 0;
          *(&v306 + 1) = 0xE000000000000000;
          sub_252E379F4();
          v305 = v306;
          MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E85C20);
          v316 = v332;
          v317 = v333;
          v318 = v334;
          v312 = v328;
          v313 = v329;
          v314 = v330;
          v315 = v331;
          v308 = v324;
          v309 = v325;
          v310 = v326;
          v311 = v327;
          v306 = v322;
          v307 = v323;
          v319 = v84;
          memcpy(v320, v321, sizeof(v320));
          v86 = HomeAutomationIntent.description.getter();
          MEMORY[0x2530AD570](v86);

          v87 = v305;
          v88 = v298 | 0x8000000000000000;
          v89 = *(&v305 + 1);
          v90 = v85;
          v91 = 673;
          goto LABEL_103;
        }
      }
    }

    else
    {
      v92 = v294;
      v93 = v290;
      if (!v83)
      {

        *&v306 = 0;
        *(&v306 + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v305 = 0xD000000000000022;
        *(&v305 + 1) = 0x8000000252E85C60;
        v316 = v332;
        v317 = v333;
        v318 = v334;
        v312 = v328;
        v313 = v329;
        v314 = v330;
        v315 = v331;
        v308 = v324;
        v309 = v325;
        v310 = v326;
        v311 = v327;
        v306 = v322;
        v307 = v323;
        v319 = v92;
        memcpy(v320, v321, sizeof(v320));
        v159 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v159);

        v87 = v305;
        v88 = v298 | 0x8000000000000000;
        v89 = *(&v305 + 1);
        v90 = v93;
        v91 = 668;
LABEL_103:
        sub_252CC4050(v87, v89, 0xD00000000000007ALL, v88, v90, 0x8000000252E85B20, v91);

        return 0;
      }
    }

    v2 = &v282;
    MEMORY[0x28223BE20](v81);
    *(&v282 - 2) = v23;

    v9 = sub_252BBF018(v94, sub_252BBF450);

    v95 = *(v9 + 2);
    v285 = 0;
    if (v95)
    {
    }

    else
    {

      if (*(v82 + 2))
      {
        v9 = v82;
      }

      else
      {
        v9 = v23;
      }
    }

    v296(v291, v299, v80);
    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_252E379F4();

    j = 0xD00000000000001ELL;
    *&v306 = 0xD00000000000001ELL;
    *(&v306 + 1) = 0x8000000252E85A80;
    v96 = v9 + 64;
    v97 = 1 << v9[32];
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v30 = v98 & *(v9 + 8);
    v99 = (v97 + 63) >> 6;

    v23 = 0;
    v12 = MEMORY[0x277D84F90];
    v300 = v9;
    if (v30)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v100 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_105;
      }

      if (v100 >= v99)
      {
        break;
      }

      v30 = *&v96[8 * v100];
      ++v23;
      if (v30)
      {
        v23 = v100;
        do
        {
LABEL_44:
          v101 = (v23 << 9) | (8 * __clz(__rbit64(v30)));
          v102 = *(*(v9 + 7) + v101);
          *&v305 = HomeAttributeType.description.getter(*(*(v9 + 6) + v101));
          *(&v305 + 1) = v103;
          MEMORY[0x2530AD570](8250, 0xE200000000000000);
          v304 = v102;
          v104 = sub_252E37D94();
          MEMORY[0x2530AD570](v104);

          v2 = *(&v305 + 1);
          v105 = v305;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_2529F7A80(0, *(v12 + 16) + 1, 1, v12);
          }

          i = *(v12 + 16);
          v106 = *(v12 + 24);
          if (i >= v106 >> 1)
          {
            v12 = sub_2529F7A80((v106 > 1), i + 1, 1, v12);
          }

          v30 &= v30 - 1;
          *(v12 + 16) = i + 1;
          v107 = v12 + 16 * i;
          *(v107 + 32) = v105;
          *(v107 + 40) = v2;
          v9 = v300;
        }

        while (v30);
      }
    }

    v108 = MEMORY[0x2530AD730](v12, MEMORY[0x277D837D0]);
    v30 = v109;

    MEMORY[0x2530AD570](v108, v30);

    v110 = v291;
    sub_252CC3D90(v306, *(&v306 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000);

    v111 = v301;
    v295(v110, v301);
    v2 = v294;
    if (v294 == 9 || (sub_252A0D524(v294, 0) & 1) == 0)
    {
      v12 = v9;
    }

    else
    {
      v112 = v285;
      v2 = sub_252BBE2C0(v9, sub_252BBE604, sub_252BBE604);
      v285 = v112;

      v296(v288, v299, v111);
      *&v306 = 0;
      *(&v306 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v306 = j;
      *(&v306 + 1) = 0x8000000252E85C00;
      v113 = v2 + 64;
      v114 = 1 << *(v2 + 32);
      v115 = -1;
      if (v114 < 64)
      {
        v115 = ~(-1 << v114);
      }

      i = v115 & *(v2 + 64);
      v9 = ((v114 + 63) >> 6);
      v300 = v2;

      v116 = 0;
      v12 = MEMORY[0x277D84F90];
      if (i)
      {
        goto LABEL_59;
      }

      while (1)
      {
        v117 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_107;
        }

        if (v117 >= v9)
        {
          break;
        }

        i = *(v113 + 8 * v117);
        ++v116;
        if (i)
        {
          v116 = v117;
          do
          {
LABEL_59:
            v118 = (v116 << 9) | (8 * __clz(__rbit64(i)));
            v119 = *(*(v300 + 7) + v118);
            *&v305 = HomeAttributeType.description.getter(*(*(v300 + 6) + v118));
            *(&v305 + 1) = v120;
            MEMORY[0x2530AD570](8250, 0xE200000000000000);
            v304 = v119;
            v121 = sub_252E37D94();
            MEMORY[0x2530AD570](v121);

            v30 = *(&v305 + 1);
            v23 = v305;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_2529F7A80(0, *(v12 + 16) + 1, 1, v12);
            }

            v2 = *(v12 + 16);
            v122 = *(v12 + 24);
            if (v2 >= v122 >> 1)
            {
              v12 = sub_2529F7A80((v122 > 1), v2 + 1, 1, v12);
            }

            i &= i - 1;
            *(v12 + 16) = v2 + 1;
            v123 = v12 + 16 * v2;
            *(v123 + 32) = v23;
            *(v123 + 40) = v30;
          }

          while (i);
        }
      }

      v124 = v300;

      v125 = MEMORY[0x2530AD730](v12, MEMORY[0x277D837D0]);
      v127 = v126;
      v12 = v124;

      MEMORY[0x2530AD570](v125, v127);

      v128 = v288;
      sub_252CC3D90(v306, *(&v306 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000);

      v111 = v301;
      v295(v128, v301);
      v2 = v294;
    }

    v129 = v303;
    v130 = *(v12 + 16);
    v300 = v12;
    if (v130)
    {
      if (v130 != 1)
      {
        goto LABEL_83;
      }

      v296(v287, v299, v111);
      *&v306 = 0;
      *(&v306 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v306 = j;
      *(&v306 + 1) = 0x8000000252E85BE0;
      v131 = v12 + 64;
      v132 = 1 << *(v12 + 32);
      v133 = -1;
      if (v132 < 64)
      {
        v133 = ~(-1 << v132);
      }

      i = v133 & *(v12 + 64);
      v9 = ((v132 + 63) >> 6);

      v23 = 0;
      v30 = MEMORY[0x277D84F90];
      if (i)
      {
        goto LABEL_76;
      }

      while (1)
      {
        v134 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v134 >= v9)
        {

          v152 = MEMORY[0x2530AD730](v30, MEMORY[0x277D837D0]);
          v154 = v153;

          MEMORY[0x2530AD570](v152, v154);

          v155 = v287;
          sub_252CC3D90(v306, *(&v306 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000);

          v295(v155, v111);
          v156 = sub_252DA0A14(v12);
          v158 = v157;
          goto LABEL_253;
        }

        i = *(v131 + 8 * v134);
        ++v23;
        if (i)
        {
          v23 = v134;
          do
          {
LABEL_76:
            v135 = (v23 << 9) | (8 * __clz(__rbit64(i)));
            v136 = *(*(v12 + 56) + v135);
            *&v305 = HomeAttributeType.description.getter(*(*(v12 + 48) + v135));
            *(&v305 + 1) = v137;
            MEMORY[0x2530AD570](8250, 0xE200000000000000);
            v304 = v136;
            v138 = sub_252E37D94();
            MEMORY[0x2530AD570](v138);

            v139 = *(&v305 + 1);
            v2 = v305;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_2529F7A80(0, *(v30 + 16) + 1, 1, v30);
            }

            v141 = *(v30 + 16);
            v140 = *(v30 + 24);
            if (v141 >= v140 >> 1)
            {
              v30 = sub_2529F7A80((v140 > 1), v141 + 1, 1, v30);
            }

            i &= i - 1;
            *(v30 + 16) = v141 + 1;
            v142 = v30 + 16 * v141;
            *(v142 + 32) = v2;
            *(v142 + 40) = v139;
            v12 = v300;
            v111 = v301;
          }

          while (i);
        }
      }

LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      continue;
    }

    break;
  }

  *&v306 = 0;
  *(&v306 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v305 = 0xD000000000000021;
  *(&v305 + 1) = 0x8000000252E85BB0;
  v316 = v332;
  v317 = v333;
  v318 = v334;
  v312 = v328;
  v313 = v329;
  v314 = v330;
  v315 = v331;
  v308 = v324;
  v309 = v325;
  v310 = v326;
  v311 = v327;
  v306 = v322;
  v307 = v323;
  v319 = v2;
  v129 = v303;
  memcpy(v320, v321, sizeof(v320));
  v143 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v143);

  sub_252CC4050(v305, *(&v305 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000, v290, 0x8000000252E85B20, 701);

LABEL_83:
  v30 = v129 >> 62;
  v291 = (v129 >> 62);
  if (!(v129 >> 62))
  {
    v144 = v129 & 0xFFFFFFFFFFFFFF8;
    v12 = *(v144 + 16);
    if (v12 <= 1)
    {
      goto LABEL_117;
    }

    *&v306 = MEMORY[0x277D84F90];
LABEL_86:
    i = 0;
    v9 = (v303 & 0xC000000000000001);
    v145 = MEMORY[0x277D84F90];
    v23 = &off_279711000;
    while (1)
    {
      v2 = i;
      while (1)
      {
        if (v9)
        {
          v30 = MEMORY[0x2530ADF00](v2, v303);
          i = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v2 >= *(v144 + 16))
          {
            goto LABEL_109;
          }

          v30 = *(v303 + 8 * v2 + 32);

          i = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_108;
          }
        }

        v146 = [*(v30 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v146)
        {
          break;
        }

        ++v2;
        if (i == v12)
        {
          goto LABEL_114;
        }
      }

      v147 = v146;
      v148 = type metadata accessor for Accessory();
      v149 = *(v148 + 48);
      v150 = *(v148 + 52);
      swift_allocObject();
      sub_252D4CE7C(v147);

      MEMORY[0x2530AD700](v151);
      if (*((v306 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v306 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v306 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v145 = v306;
      if (i == v12)
      {
        goto LABEL_114;
      }
    }
  }

  v144 = v129 & 0xFFFFFFFFFFFFFF8;
  if (sub_252E378C4() < 2)
  {
LABEL_117:
    v162 = 0;
    goto LABEL_118;
  }

  *&v306 = MEMORY[0x277D84F90];
  v12 = sub_252E378C4();
  if (v12)
  {
    goto LABEL_86;
  }

  v145 = MEMORY[0x277D84F90];
LABEL_114:
  v160 = sub_252DF90B0(v145);

  v30 = v291;
  if (!(v160 >> 62))
  {
    v161 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_116;
  }

  while (2)
  {
    v161 = sub_252E378C4();
LABEL_116:

    v162 = v161 == 1;
LABEL_118:
    KeyPath = swift_getKeyPath();
    v164 = sub_2529304DC(KeyPath, v292);

    if ((v164 & 1) == 0)
    {
      v165 = swift_getKeyPath();
      v164 = sub_252BAF91C(v165, v292);

      if (((v164 | v162) & 1) == 0)
      {
        v186 = v303;
        goto LABEL_216;
      }
    }

    *&v306 = MEMORY[0x277D84F90];
    if (v30)
    {
      v166 = v303;
      v167 = sub_252E378C4();
      if (v167)
      {
        goto LABEL_124;
      }

      goto LABEL_147;
    }

    v166 = v303;
    v167 = *((v303 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v167)
    {
      goto LABEL_147;
    }

LABEL_124:
    v168 = 0;
    v169 = v166 & 0xC000000000000001;
    v170 = v166 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v169)
      {
        v171 = MEMORY[0x2530ADF00](v168, v166);
        v172 = v168 + 1;
        if (!__OFADD__(v168, 1))
        {
          goto LABEL_128;
        }

        break;
      }

      if (v168 >= *(v170 + 16))
      {
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      v171 = *(v166 + 8 * v168 + 32);

      v172 = v168 + 1;
      if (!__OFADD__(v168, 1))
      {
LABEL_128:
        v173 = [*(v171 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (!v173)
        {
          goto LABEL_139;
        }

        v174 = v173;
        v175 = type metadata accessor for Accessory();
        v176 = *(v175 + 48);
        v177 = *(v175 + 52);
        swift_allocObject();
        v164 = sub_252D4CE7C(v174);
        v178 = sub_252D4DFC8();

        if (v178)
        {
          v164 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;

          if ((sub_252E32E54() & 1) == 0 || *(v178 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
          {

            goto LABEL_139;
          }

          if (*(v178 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v178 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
          {
          }

          else
          {
            v164 = sub_252E37DB4();

            if ((v164 & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          sub_252E37A94();
          v164 = *(v306 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
LABEL_139:
        }

        ++v168;
        v166 = v303;
        if (v172 == v167)
        {
          goto LABEL_147;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_147:
    v164 = v306;
    *&v306 = MEMORY[0x277D84F90];
    if (v164 < 0 || (v164 & 0x4000000000000000) != 0)
    {
LABEL_163:
      v30 = sub_252E378C4();
      v180 = v301;
      if (!v30)
      {
        goto LABEL_164;
      }

LABEL_150:
      v181 = 0;
      while (1)
      {
        if ((v164 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v181, v164);
          v183 = v181 + 1;
          if (__OFADD__(v181, 1))
          {
            goto LABEL_158;
          }
        }

        else
        {
          if (v181 >= *(v164 + 16))
          {
            goto LABEL_162;
          }

          v182 = *(v164 + 8 * v181 + 32);

          v183 = v181 + 1;
          if (__OFADD__(v181, 1))
          {
LABEL_158:
            __break(1u);
LABEL_159:
            v185 = v306;
            v180 = v301;
            goto LABEL_165;
          }
        }

        v184 = sub_252CD95D8();

        sub_25297A864(v184);
        ++v181;
        if (v183 == v30)
        {
          goto LABEL_159;
        }
      }
    }

    v30 = *(v164 + 16);
    v180 = v301;
    if (v30)
    {
      goto LABEL_150;
    }

LABEL_164:
    v185 = MEMORY[0x277D84F90];
LABEL_165:

    v187 = *(v185 + 16);
    if (!v187)
    {

      v186 = v303;
      v30 = v291;
      goto LABEL_216;
    }

    v289 = v185;
    v296(v286, v299, v180);
    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000047, 0x8000000252E85AA0);
    v188 = v300 + 64;
    v189 = 1 << v300[32];
    v190 = -1;
    if (v189 < 64)
    {
      v190 = ~(-1 << v189);
    }

    v191 = v190 & *(v300 + 8);
    v192 = (v189 + 63) >> 6;

    v193 = 0;
    v194 = MEMORY[0x277D84F90];
    for (j = v188; v191; v188 = j)
    {
LABEL_173:
      v196 = HomeAttributeType.description.getter(*(*(v300 + 6) + ((v193 << 9) | (8 * __clz(__rbit64(v191))))));
      v30 = v197;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v194 = sub_2529F7A80(0, *(v194 + 2) + 1, 1, v194);
      }

      v199 = *(v194 + 2);
      v198 = *(v194 + 3);
      if (v199 >= v198 >> 1)
      {
        v194 = sub_2529F7A80((v198 > 1), v199 + 1, 1, v194);
      }

      v191 &= v191 - 1;
      *(v194 + 2) = v199 + 1;
      v200 = &v194[16 * v199];
      *(v200 + 4) = v196;
      *(v200 + 5) = v30;
      v180 = v301;
    }

    while (2)
    {
      v195 = v193 + 1;
      if (__OFADD__(v193, 1))
      {
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      if (v195 < v192)
      {
        v191 = *&v188[8 * v195];
        ++v193;
        if (!v191)
        {
          continue;
        }

        v193 = v195;
        goto LABEL_173;
      }

      break;
    }

    v201 = MEMORY[0x2530AD730](v194, MEMORY[0x277D837D0]);
    v203 = v202;

    MEMORY[0x2530AD570](v201, v203);

    MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E85AF0);
    v204 = MEMORY[0x277D84F90];
    v205 = 32;
    v206 = v289;
    do
    {
      v207 = HomeAttributeType.description.getter(*(v206 + v205));
      v209 = v208;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v204 = sub_2529F7A80(0, *(v204 + 2) + 1, 1, v204);
      }

      v211 = *(v204 + 2);
      v210 = *(v204 + 3);
      if (v211 >= v210 >> 1)
      {
        v204 = sub_2529F7A80((v210 > 1), v211 + 1, 1, v204);
      }

      *(v204 + 2) = v211 + 1;
      v212 = &v204[16 * v211];
      *(v212 + 4) = v207;
      *(v212 + 5) = v209;
      v205 += 8;
      --v187;
    }

    while (v187);
    v213 = MEMORY[0x2530AD730](v204, MEMORY[0x277D837D0]);
    v30 = v214;

    MEMORY[0x2530AD570](v213, v30);

    v215 = v286;
    sub_252CC4050(v306, *(&v306 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000, v290, 0x8000000252E85B20, 711);

    v295(v215, v180);
    v216 = v300;

    v217 = sub_252BBF2A0(v216, v206);

    swift_bridgeObjectRelease_n();
    if (*(v217 + 16))
    {

      v218 = *(v217 + 16);
      v300 = v217;
      goto LABEL_202;
    }

    v296(v283, v299, v180);
    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E85B60);
    v219 = 1 << *(v216 + 32);
    v220 = -1;
    if (v219 < 64)
    {
      v220 = ~(-1 << v219);
    }

    v221 = v220 & *(v216 + 64);
    v222 = (v219 + 63) >> 6;

    v223 = 0;
    v224 = MEMORY[0x277D84F90];
    for (k = j; v221; k = j)
    {
LABEL_195:
      v227 = HomeAttributeType.description.getter(*(*(v300 + 6) + ((v223 << 9) | (8 * __clz(__rbit64(v221))))));
      v229 = v228;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = sub_2529F7A80(0, *(v224 + 2) + 1, 1, v224);
      }

      v231 = *(v224 + 2);
      v230 = *(v224 + 3);
      v30 = v231 + 1;
      if (v231 >= v230 >> 1)
      {
        v224 = sub_2529F7A80((v230 > 1), v231 + 1, 1, v224);
      }

      v221 &= v221 - 1;
      *(v224 + 2) = v30;
      v232 = &v224[16 * v231];
      *(v232 + 4) = v227;
      *(v232 + 5) = v229;
    }

    while (2)
    {
      v226 = v223 + 1;
      if (__OFADD__(v223, 1))
      {
        goto LABEL_260;
      }

      if (v226 < v222)
      {
        v221 = *&k[8 * v226];
        ++v223;
        if (!v221)
        {
          continue;
        }

        v223 = v226;
        goto LABEL_195;
      }

      break;
    }

    v233 = v300;

    v234 = MEMORY[0x2530AD730](v224, MEMORY[0x277D837D0]);
    v236 = v235;

    MEMORY[0x2530AD570](v234, v236);

    v237 = v283;
    sub_252CC4050(v306, *(&v306 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000, v290, 0x8000000252E85B20, 718);

    v180 = v301;
    v295(v237, v301);
    v218 = *(v233 + 2);
LABEL_202:
    v186 = v303;
    v30 = v291;
    if (v218 != 1)
    {
LABEL_216:
      v254 = sub_252BAFC18(v292);

      if (v30)
      {
        result = sub_252E378C4();
        v255 = result;
      }

      else
      {
        v255 = *((v186 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v256 = v294;
      v30 = v300;
      if (v255)
      {
        v299 = v254;
        v257 = 0;
        v258 = v186 & 0xC000000000000001;
        v301 = v186 & 0xC000000000000001;
        v302 = (v186 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if (v255 == v257)
          {
            if (v258)
            {
              MEMORY[0x2530ADF00](0, v186);
              v256 = v294;
              v30 = v300;
            }

            else
            {
              v256 = v294;
              v30 = v300;
              if (!v302[2])
              {
                __break(1u);
                return result;
              }

              v274 = *(v186 + 32);
            }

            v254 = sub_252CD941C();

            goto LABEL_249;
          }

          if (v258)
          {
            v260 = MEMORY[0x2530ADF00](v257, v186);
            if (__OFADD__(v257, 1))
            {
              goto LABEL_257;
            }
          }

          else
          {
            if (v257 >= v302[2])
            {
              goto LABEL_258;
            }

            v260 = *(v186 + 8 * v257 + 32);

            if (__OFADD__(v257, 1))
            {
              goto LABEL_257;
            }
          }

          v261 = [*(v260 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v262 = sub_252E36F34();
          v30 = v263;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v264 = off_27F546230;
          if (*(off_27F546230 + 2) && (v265 = sub_252A44A10(v262, v30), (v266 & 1) != 0))
          {
            v267 = *(v264[7] + 8 * v265);
          }

          else
          {
            v267 = 0;
          }

          if (v258)
          {
            v30 = MEMORY[0x2530ADF00](0, v186);
          }

          else
          {
            if (!v302[2])
            {
              goto LABEL_261;
            }

            v30 = *(v186 + 32);
          }

          v268 = [*(v30 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v269 = sub_252E36F34();
          v271 = v270;

          if (v264[2] && (v272 = sub_252A44A10(v269, v271), (v273 & 1) != 0))
          {
            v259 = *(v264[7] + 8 * v272);
          }

          else
          {

            v259 = 0;
          }

          v258 = v301;
          ++v257;
          v186 = v303;
        }

        while (v267 == v259);

        v256 = v294;
        v254 = v299;
        v30 = v300;
      }

      else
      {
      }

LABEL_249:
      v316 = v332;
      v317 = v333;
      v318 = v334;
      v312 = v328;
      v313 = v329;
      v314 = v330;
      v315 = v331;
      v308 = v324;
      v309 = v325;
      v310 = v326;
      v311 = v327;
      v306 = v322;
      v307 = v323;
      v319 = v256;
      memcpy(v320, v321, sizeof(v320));
      if (sub_252A12D08())
      {

        return 67;
      }

      else
      {
        v316 = v332;
        v317 = v333;
        v318 = v334;
        v312 = v328;
        v313 = v329;
        v314 = v330;
        v315 = v331;
        v308 = v324;
        v309 = v325;
        v310 = v326;
        v311 = v327;
        v306 = v322;
        v307 = v323;
        v319 = v256;
        memcpy(v320, v321, sizeof(v320));
        v275 = sub_252BBA91C(v30, v254);

        return v275;
      }
    }

    v296(v284, v299, v180);
    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v306 = 0xD000000000000018;
    *(&v306 + 1) = 0x8000000252E85B40;
    v238 = v300 + 64;
    v239 = 1 << v300[32];
    v240 = -1;
    if (v239 < 64)
    {
      v240 = ~(-1 << v239);
    }

    v241 = v240 & *(v300 + 8);
    v242 = (v239 + 63) >> 6;

    v243 = 0;
    for (m = MEMORY[0x277D84F90]; v241; *(v253 + 5) = v30)
    {
LABEL_210:
      v246 = (v243 << 9) | (8 * __clz(__rbit64(v241)));
      v247 = *(*(v300 + 7) + v246);
      *&v305 = HomeAttributeType.description.getter(*(*(v300 + 6) + v246));
      *(&v305 + 1) = v248;
      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v304 = v247;
      v249 = sub_252E37D94();
      MEMORY[0x2530AD570](v249);

      v30 = *(&v305 + 1);
      v250 = v305;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        m = sub_2529F7A80(0, *(m + 2) + 1, 1, m);
      }

      v252 = *(m + 2);
      v251 = *(m + 3);
      if (v252 >= v251 >> 1)
      {
        m = sub_2529F7A80((v251 > 1), v252 + 1, 1, m);
      }

      v241 &= v241 - 1;
      *(m + 2) = v252 + 1;
      v253 = &m[16 * v252];
      *(v253 + 4) = v250;
    }

LABEL_206:
    v245 = v243 + 1;
    if (__OFADD__(v243, 1))
    {
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      continue;
    }

    break;
  }

  if (v245 < v242)
  {
    v241 = *&v238[8 * v245];
    ++v243;
    if (!v241)
    {
      goto LABEL_206;
    }

    v243 = v245;
    goto LABEL_210;
  }

  v276 = v300;

  v277 = MEMORY[0x2530AD730](m, MEMORY[0x277D837D0]);
  v279 = v278;

  MEMORY[0x2530AD570](v277, v279);

  v280 = v284;
  sub_252CC3D90(v306, *(&v306 + 1), 0xD00000000000007ALL, v298 | 0x8000000000000000);

  v295(v280, v301);
  v156 = sub_252DA0A14(v276);
  v158 = v281;
LABEL_253:

  if (v158)
  {
    return 0;
  }

  else
  {
    return v156;
  }
}

uint64_t sub_252BBA880(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(a3 + 48) + ((v8 << 9) | (8 * v9))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 0;
    }

    v6 = *(a3 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BBA91C(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v95 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v90 - v9;
  v11 = v2[3];
  v130 = v2[2];
  v131 = v11;
  v132 = v2[4];
  v12 = v2[1];
  v128 = *v2;
  v129 = v12;
  v13 = *(v2 + 24);
  v127 = *(v2 + 23);
  v14 = *(v2 + 10);
  v102 = v13;
  v103 = v14;
  v15 = *(v2 + 136);
  v16 = *(v2 + 168);
  v125 = *(v2 + 152);
  v126 = v16;
  v17 = *(v2 + 104);
  v121 = *(v2 + 88);
  v122 = v17;
  v123 = *(v2 + 120);
  v124 = v15;
  memcpy(v120, v2 + 200, sizeof(v120));
  v18 = qword_27F53F4F8;

  if (v18 == -1)
  {
    goto LABEL_2;
  }

LABEL_83:
  swift_once();
LABEL_2:
  v19 = __swift_project_value_buffer(v4, qword_27F544D90);
  v99 = v4;
  v100 = v5;
  v20 = v5[2];
  v5 += 2;
  v96 = v10;
  v98 = v19;
  v93 = v20;
  v94 = v5;
  (v20)(v10);
  *&v105 = 0;
  *(&v105 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v105 = 0xD000000000000028;
  *(&v105 + 1) = 0x8000000252E85C90;
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  v4 = (v22 + 63) >> 6;

  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  for (i = a1; v24; a1 = i)
  {
LABEL_9:
    v10 = HomeAttributeType.description.getter(*(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24))))));
    v29 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_2529F7A80(0, *(v26 + 2) + 1, 1, v26);
    }

    v31 = *(v26 + 2);
    v30 = *(v26 + 3);
    v5 = (v31 + 1);
    if (v31 >= v30 >> 1)
    {
      v26 = sub_2529F7A80((v30 > 1), v31 + 1, 1, v26);
    }

    v24 &= v24 - 1;
    *(v26 + 2) = v5;
    v32 = &v26[16 * v31];
    *(v32 + 4) = v10;
    *(v32 + 5) = v29;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v27 >= v4)
    {
      break;
    }

    v24 = *(v21 + 8 * v27);
    ++v25;
    if (v24)
    {
      v25 = v27;
      goto LABEL_9;
    }
  }

  v33 = MEMORY[0x2530AD730](v26, MEMORY[0x277D837D0]);
  v35 = v34;

  MEMORY[0x2530AD570](v33, v35);

  v36 = v96;
  sub_252CC3D90(v105, *(&v105 + 1), 0xD00000000000007ALL, 0x8000000252E85990);

  v5 = v99;
  v37 = v100 + 1;
  v38 = v100[1];
  v38(v36, v99);
  v107 = v130;
  v108 = v131;
  v109 = v132;
  v105 = v128;
  v106 = v129;
  v114 = v124;
  v115 = v125;
  v116 = v126;
  v111 = v121;
  v112 = v122;
  v110 = v103;
  v113 = v123;
  v117 = v127;
  v118 = v102;
  memcpy(v119, v120, sizeof(v119));
  v39 = sub_252A10A34();
  v97 = "esult";
  if (v39)
  {
    v91 = v38;
    v100 = v37;
    v40 = v98;
    sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E85D70, 0xD00000000000007ALL, 0x8000000252E85990);
    v10 = sub_252BBE2C0(a1, sub_252BBE430, sub_252BBE430);
    v96 = 0;

    v93(v95, v40, v5);
    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v105 = 0xD000000000000021;
    *(&v105 + 1) = 0x8000000252E85DC0;
    a1 = (v10 + 64);
    v41 = 1 << v10[32];
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v10 + 8);
    v4 = (v41 + 63) >> 6;

    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    if (v43)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_80;
      }

      if (v46 >= v4)
      {
        break;
      }

      v43 = *(a1 + 8 * v46);
      ++v44;
      if (v43)
      {
        v44 = v46;
        do
        {
LABEL_23:
          v47 = HomeAttributeType.description.getter(*(*(v10 + 6) + ((v44 << 9) | (8 * __clz(__rbit64(v43))))));
          v49 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          i = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v45 = sub_2529F7A80(0, *(v45 + 2) + 1, 1, v45);
          }

          v52 = *(v45 + 2);
          v51 = *(v45 + 3);
          v5 = (v52 + 1);
          if (v52 >= v51 >> 1)
          {
            v45 = sub_2529F7A80((v51 > 1), v52 + 1, 1, v45);
          }

          v43 &= v43 - 1;
          *(v45 + 2) = v5;
          v53 = &v45[16 * v52];
          v54 = i;
          *(v53 + 4) = v47;
          *(v53 + 5) = v54;
        }

        while (v43);
      }
    }

    v55 = MEMORY[0x2530AD730](v45, MEMORY[0x277D837D0]);
    v57 = v56;

    MEMORY[0x2530AD570](v55, v57);

    v5 = *(&v105 + 1);
    v58 = v95;
    sub_252CC3D90(v105, *(&v105 + 1), 0xD00000000000007ALL, v97 | 0x8000000000000000);

    v91(v58, v99);
  }

  else
  {
    v96 = 0;
    v10 = a1;
  }

  v59 = *(v103 + 16);
  if (v59)
  {
    if (qword_27F53F3A0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    i = v103 + 32;
    v60 = qword_27F575910;
    while (v4 < *(v103 + 16))
    {
      if (*(v60 + 16))
      {
        v61 = *(i + v4);
        v62 = sub_252A4525C(v61);
        if (v63)
        {
          v64 = *(*(v60 + 56) + 8 * v62);
          v65 = *(v64 + 16);
          if (v65)
          {
            v5 = (v64 + 32);
            while (1)
            {
              if (*(v10 + 2))
              {
                a1 = *v5;
                sub_252A488EC(*v5);
                if (v66)
                {
                  break;
                }
              }

              ++v5;
              if (!--v65)
              {
                goto LABEL_35;
              }
            }

            *&v105 = 0;
            *(&v105 + 1) = 0xE000000000000000;
            sub_252E379F4();

            *&v105 = 0x676E696B63695022;
            *(&v105 + 1) = 0xE900000000000020;
            v67 = HomeAttributeType.description.getter(a1);
            MEMORY[0x2530AD570](v67);

            MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E85D40);
            v104 = v61;
LABEL_59:
            v77 = sub_252E36F94();
            goto LABEL_60;
          }
        }
      }

LABEL_35:
      if (++v4 == v59)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_81;
  }

LABEL_45:
  v68 = *(v102 + 16);
  if (v68)
  {
    if (qword_27F53F3A8 != -1)
    {
      swift_once();
    }

    v4 = 0;
    v103 = v102 + 32;
    v69 = qword_27F575918;
    while (v4 < *(v102 + 16))
    {
      if (*(v69 + 16))
      {
        v70 = *(v103 + v4);
        v71 = sub_252A4509C(v70);
        if (v72)
        {
          v73 = *(*(v69 + 56) + 8 * v71);
          v74 = *(v73 + 16);
          if (v74)
          {
            v5 = (v73 + 32);
            while (1)
            {
              if (*(v10 + 2))
              {
                a1 = *v5;
                sub_252A488EC(*v5);
                if (v75)
                {
                  break;
                }
              }

              ++v5;
              if (!--v74)
              {
                goto LABEL_49;
              }
            }

            *&v105 = 0;
            *(&v105 + 1) = 0xE000000000000000;
            sub_252E379F4();

            *&v105 = 0x676E696B63695022;
            *(&v105 + 1) = 0xE900000000000020;
            v76 = HomeAttributeType.description.getter(a1);
            MEMORY[0x2530AD570](v76);

            MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E85D10);
            v104 = v70;
            goto LABEL_59;
          }
        }
      }

LABEL_49:
      if (++v4 == v68)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_82;
  }

LABEL_61:
  if (qword_27F53F398 != -1)
  {
    swift_once();
  }

  v78 = qword_27F575908;
  if (*(qword_27F575908 + 16) && (v79 = sub_252A488EC(v92), (v80 & 1) != 0) && (v81 = *(*(v78 + 56) + 8 * v79), (v82 = *(v81 + 16)) != 0))
  {
    v83 = (v81 + 32);
    while (1)
    {
      if (*(v10 + 2))
      {
        a1 = *v83;
        sub_252A488EC(*v83);
        if (v84)
        {
          break;
        }
      }

      ++v83;
      if (!--v82)
      {
        goto LABEL_71;
      }
    }

    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x676E696B63695022, 0xE900000000000020);
    v85 = HomeAttributeType.description.getter(a1);
    MEMORY[0x2530AD570](v85);

    MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E85CE0);
    v77 = HomeDeviceType.description.getter(v92);
LABEL_60:
    MEMORY[0x2530AD570](v77);
  }

  else
  {
LABEL_71:
    v86 = 0x20u;
    while (1)
    {
      if (*(v10 + 2))
      {
        a1 = *(&unk_2864A41F0 + v86);
        sub_252A488EC(a1);
        if (v87)
        {
          break;
        }
      }

      v86 += 8;
      if (v86 == 448)
      {
        a1 = 0;
        break;
      }
    }

    *&v105 = 0;
    *(&v105 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v105 = 0x20676E696B636950;
    *(&v105 + 1) = 0xE800000000000000;
    v88 = HomeAttributeType.description.getter(a1);
    MEMORY[0x2530AD570](v88);

    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E85CC0);
  }

  sub_252CC3D90(v105, *(&v105 + 1), 0xD00000000000007ALL, v97 | 0x8000000000000000);

  return a1;
}

id sub_252BBB45C(unint64_t a1)
{
  v3 = v1[1];
  v101 = *v1;
  v102 = v3;
  v4 = v1[3];
  v103 = v1[2];
  v104 = v4;
  v5 = *(v1 + 64);
  v6 = *(v1 + 81);
  v98 = *(v1 + 65);
  v99 = v6;
  v100[0] = *(v1 + 97);
  *(v100 + 15) = v1[7];
  v7 = *(v1 + 24);
  v97 = *(v1 + 23);
  v8 = *(v1 + 16);
  v96 = *(v1 + 168);
  v9 = *(v1 + 136);
  v95 = *(v1 + 152);
  v94 = v9;
  memcpy(__dst, v1 + 200, sizeof(__dst));
  v10 = v1[1];
  v78 = *v1;
  v79 = v10;
  v11 = v1[3];
  v80 = v1[2];
  v81 = v11;
  v82 = v5;
  v83 = *(v1 + 65);
  v84 = *(v1 + 81);
  *v85 = *(v1 + 97);
  *&v85[15] = v1[7];
  v12 = *(v1 + 23);
  v86 = v8;
  v90 = v12;
  v89 = *(v1 + 168);
  v88 = *(v1 + 152);
  v87 = *(v1 + 136);
  v91 = v7;
  memcpy(v92, v1 + 200, sizeof(v92));
  if (sub_252BB776C(a1) == 4)
  {
    return 0;
  }

  if (*(v8 + 16))
  {
    v14 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v15 = sub_252E36F04();
    v16 = [v14 initWithIdentifier:0 displayString:v15];

    v17 = v16;
    [v17 setBoolValue_];
    [v17 setType_];

    return v17;
  }

  v18 = v1[1];
  v78 = *v1;
  v79 = v18;
  v19 = v1[3];
  v80 = v1[2];
  v81 = v19;
  v82 = v5;
  v83 = *(v1 + 65);
  v84 = *(v1 + 81);
  *v85 = *(v1 + 97);
  *&v85[15] = v1[7];
  v87 = *(v1 + 136);
  v88 = *(v1 + 152);
  v89 = *(v1 + 168);
  v20 = *(v1 + 23);
  v86 = v8;
  v90 = v20;
  v91 = v7;
  memcpy(v92, v1 + 200, sizeof(v92));
  sub_252A10E18(v66);
  v21 = LOBYTE(v66[0]);
  v22 = v1[1];
  v78 = *v1;
  v79 = v22;
  v23 = v1[3];
  v80 = v1[2];
  v81 = v23;
  v82 = v5;
  v83 = *(v1 + 65);
  v84 = *(v1 + 81);
  *v85 = *(v1 + 97);
  *&v85[15] = v1[7];
  v87 = *(v1 + 136);
  v88 = *(v1 + 152);
  v89 = *(v1 + 168);
  v24 = *(v1 + 23);
  v86 = v8;
  v90 = v24;
  v91 = v7;
  memcpy(v92, v1 + 200, sizeof(v92));
  result = sub_252A1778C(a1, 0);
  if (v21 == 77)
  {
    goto LABEL_11;
  }

  v25 = result;
  LOBYTE(v78) = v21;
  LOBYTE(v66[0]) = 9;
  v26 = StateSemantic.rawValue.getter();
  v28 = v27;
  if (v26 == StateSemantic.rawValue.getter() && v28 == v29)
  {
    goto LABEL_8;
  }

  v30 = sub_252E37DB4();

  if (v30)
  {
LABEL_10:
    result = v25;
    if (v25)
    {
      return result;
    }

LABEL_11:
    v31 = result;
    LOBYTE(v78) = v21;
    v32 = sub_252A47DD4(&v78, a1, 0);
    if (v32)
    {
      goto LABEL_34;
    }

    if (qword_27F53F258 != -1)
    {
      swift_once();
    }

    v33 = qword_27F575740;
    if (*(qword_27F575740 + 16))
    {
      v34 = sub_252A488EC(a1);
      if (v35)
      {
        v36 = *(*(v33 + 56) + 8 * v34);
        v78 = v101;
        v79 = v102;
        v80 = v103;
        v81 = v104;
        v83 = v98;
        v84 = v99;
        *v85 = v100[0];
        *&v85[15] = *(v100 + 15);
        v89 = v96;
        v88 = v95;
        v82 = v5;
        v86 = v8;
        v90 = v97;
        v87 = v94;
        v91 = v7;
        memcpy(v92, __dst, sizeof(v92));
        v37 = v36;
        sub_252A10E18(v66);
        if (LOBYTE(v66[0]) != 77 && sub_2529A78B0(LOBYTE(v66[0]), &unk_2864A43B0))
        {
          goto LABEL_25;
        }
      }
    }

    if (qword_27F53F260 != -1)
    {
      swift_once();
    }

    v38 = qword_27F575748;
    if (*(qword_27F575748 + 16))
    {
      v39 = sub_252A488EC(a1);
      if (v40)
      {
        v41 = *(*(v38 + 56) + 8 * v39);
        v78 = v101;
        v79 = v102;
        v80 = v103;
        v81 = v104;
        v83 = v98;
        v84 = v99;
        *v85 = v100[0];
        *&v85[15] = *(v100 + 15);
        v89 = v96;
        v88 = v95;
        v82 = v5;
        v86 = v8;
        v90 = v97;
        v87 = v94;
        v91 = v7;
        memcpy(v92, __dst, sizeof(v92));
        v37 = v41;
        sub_252A10E18(v66);
        if (LOBYTE(v66[0]) != 77 && sub_2529A78B0(LOBYTE(v66[0]), &unk_2864A4440))
        {
LABEL_25:

          return v37;
        }
      }
    }

    v78 = v101;
    v79 = v102;
    v80 = v103;
    v81 = v104;
    v83 = v98;
    v84 = v99;
    *v85 = v100[0];
    *&v85[15] = *(v100 + 15);
    v89 = v96;
    v88 = v95;
    v82 = v5;
    v86 = v8;
    v90 = v97;
    v87 = v94;
    v91 = v7;
    memcpy(v92, __dst, sizeof(v92));
    v32 = sub_252A1778C(a1, 0);
    if (v32)
    {
      goto LABEL_34;
    }

    v78 = v101;
    v79 = v102;
    v80 = v103;
    v81 = v104;
    v83 = v98;
    v84 = v99;
    *v85 = v100[0];
    *&v85[15] = *(v100 + 15);
    v89 = v96;
    v88 = v95;
    v82 = v5;
    v86 = v8;
    v90 = v97;
    v87 = v94;
    v91 = v7;
    memcpy(v92, __dst, sizeof(v92));
    v32 = sub_252A17D08();
    if (v32)
    {
LABEL_34:
      v47 = v32;

      return v47;
    }

    if (v21 != 77)
    {
      if (qword_27F53F250 != -1)
      {
        swift_once();
      }

      v48 = qword_27F575738;
      if (*(qword_27F575738 + 16))
      {
        v49 = sub_252A4509C(v21);
        if (v50)
        {
          v51 = *(*(v48 + 56) + 8 * v49);
          if (a1 == 9)
          {
            v52 = v51;
            v53 = sub_252A0A6A0();

LABEL_80:
            return v53;
          }

          goto LABEL_78;
        }
      }

      LOBYTE(v78) = v21;
      LOBYTE(v66[0]) = 56;
      v54 = StateSemantic.rawValue.getter();
      v56 = v55;
      if (v54 == StateSemantic.rawValue.getter() && v56 == v57)
      {
      }

      else
      {
        v58 = sub_252E37DB4();

        if ((v58 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if (a1 == 27)
      {
        v59 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v60 = sub_252E36F04();
        v61 = [v59 initWithIdentifier:0 displayString:v60];

        v53 = v61;
        [v53 setBoolValue_];
        [v53 setType_];

        goto LABEL_80;
      }
    }

LABEL_49:
    v78 = v101;
    v79 = v102;
    v80 = v103;
    v81 = v104;
    v83 = v98;
    v84 = v99;
    *v85 = v100[0];
    *&v85[15] = *(v100 + 15);
    v87 = v94;
    v82 = v5;
    v88 = v95;
    v89 = v96;
    v86 = v8;
    v90 = v97;
    v91 = v7;
    memcpy(v92, __dst, sizeof(v92));
    if (sub_252A12574())
    {
      v66[0] = v101;
      v66[1] = v102;
      v66[2] = v103;
      v66[3] = v104;
      v68 = v98;
      v69 = v99;
      *v70 = v100[0];
      *&v70[15] = *(v100 + 15);
      v72 = v94;
      v67 = v5;
      v73 = v95;
      v74 = v96;
      v71 = v8;
      v75 = v97;
      v76 = v7;
      memcpy(v77, __dst, sizeof(v77));
      if (!sub_252A12D08())
      {
        if (qword_27F53F678 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AF0;
        goto LABEL_78;
      }
    }

    if (v5 != 4 && (sub_252A0CE08(v5, 1u) & 1) != 0)
    {
      v78 = v101;
      v79 = v102;
      v80 = v103;
      v81 = v104;
      v83 = v98;
      v84 = v99;
      *v85 = v100[0];
      *&v85[15] = *(v100 + 15);
      v87 = v94;
      v82 = v5;
      v88 = v95;
      v89 = v96;
      v86 = v8;
      v90 = v97;
      v91 = v7;
      memcpy(v92, __dst, sizeof(v92));
      if (!sub_252A12D08())
      {
        if (qword_27F53F680 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AF8;
        goto LABEL_78;
      }
    }

    if (a1 == 9)
    {
      if (sub_2529A78B0(9, v7) || sub_2529A78B0(0, v7))
      {
        if (qword_27F53F668 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AE0;
        goto LABEL_78;
      }

      if (sub_2529A78B0(10, v7) || sub_2529A78B0(1, v7))
      {
        if (qword_27F53F670 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AE8;
        goto LABEL_78;
      }
    }

    else
    {
      if (qword_27F53F290 != -1)
      {
        swift_once();
      }

      v62 = off_27F541CC0;
      if (*(off_27F541CC0 + 2))
      {
        v63 = sub_252A488EC(a1);
        if (v64)
        {
          v51 = *(v62[7] + 8 * v63);
LABEL_78:
          v65 = v51;
          goto LABEL_79;
        }
      }

      if (a1 == 67)
      {
        v78 = v101;
        v79 = v102;
        v80 = v103;
        v81 = v104;
        v83 = v98;
        v84 = v99;
        *v85 = v100[0];
        *&v85[15] = *(v100 + 15);
        v89 = v96;
        v88 = v95;
        v82 = v5;
        v86 = v8;
        v90 = v97;
        v87 = v94;
        v91 = v7;
        memcpy(v92, __dst, sizeof(v92));
        v65 = sub_252D5B220();
LABEL_79:
        v53 = v65;
        goto LABEL_80;
      }
    }

    return 0;
  }

  LOBYTE(v78) = v21;
  LOBYTE(v66[0]) = 10;
  v42 = StateSemantic.rawValue.getter();
  v44 = v43;
  if (v42 == StateSemantic.rawValue.getter() && v44 == v45)
  {
LABEL_8:

    goto LABEL_10;
  }

  v46 = sub_252E37DB4();

  result = v25;
  if ((v46 & 1) == 0 || !v25)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_252BBC050(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBC6D0(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_252BBF528(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x2530AED00](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_252BBC1F0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBCB20(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_252BBF458(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x2530AED00](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_252BBC390(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBCD00(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_252BBF4B0(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x2530AED00](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_252BBC530(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBDFCC(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_252BBF484(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x2530AED00](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_252BBC6D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service();
    sub_252BBF590(&qword_27F541EB0, type metadata accessor for Service);
    result = sub_252E373E4();
    v4 = v46;
    v6 = v47;
    v7 = v48;
    i = v49;
    v9 = v50;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    i = 0;
  }

  v35 = 0;
  v13 = (v7 + 64) >> 6;
  v43 = a4 + 56;
  v38 = v6;
  v39 = v4;
  v37 = v13;
  while (2)
  {
    v14 = i;
    v15 = v9;
    do
    {
      while (1)
      {
        if (v4 < 0)
        {
          if (!sub_252E37904())
          {
            goto LABEL_36;
          }

          type metadata accessor for Service();
          swift_dynamicCast();
          v19 = v45;
          i = v14;
          v18 = v15;
          if (!v45)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = v14;
          v17 = v15;
          for (i = v14; !v17; ++v16)
          {
            i = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              return result;
            }

            if (i >= v13)
            {
              goto LABEL_36;
            }

            v17 = *(v6 + 8 * i);
          }

          v18 = (v17 - 1) & v17;
          v19 = *(*(v4 + 48) + ((i << 9) | (8 * __clz(__rbit64(v17)))));

          if (!v19)
          {
            goto LABEL_36;
          }
        }

        v40 = v18;
        v20 = *(a4 + 40);
        sub_252E37EC4();
        sub_252E32E84();
        sub_252BBF590(&qword_27F540680, MEMORY[0x277CC95F0]);
        sub_252E36E94();
        v42 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
        MEMORY[0x2530AE390](*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
        v22 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v21 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        v41 = (v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

        sub_252E37044();

        v23 = sub_252E37F14();
        v24 = -1 << *(a4 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v43 + 8 * (v25 >> 6))) != 0)
        {
          break;
        }

LABEL_9:

        v14 = i;
        v4 = v39;
        v15 = v40;
        v13 = v37;
        v6 = v38;
      }

      v28 = ~v24;
      while (1)
      {
        v29 = *(*(a4 + 48) + 8 * v25);

        if ((sub_252E32E54() & 1) == 0 || *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v19 + v42))
        {

          goto LABEL_22;
        }

        if (*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v41 && *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v41[1])
        {
          break;
        }

        v31 = sub_252E37DB4();

        if (v31)
        {
          goto LABEL_32;
        }

LABEL_22:
        v25 = (v25 + 1) & v28;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if ((*(v43 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_9;
        }
      }

LABEL_32:

      v13 = v37;
      v32 = a1[v26];
      a1[v26] = v32 | v27;
      v14 = i;
      v4 = v39;
      v9 = v40;
      v15 = v40;
      v6 = v38;
    }

    while ((v32 & v27) != 0);
    if (!__OFADD__(v35++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_36:
  sub_25291AE30();

  return sub_252C53048(a1, a2, v35, a4);
}

uint64_t sub_252BBCB20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_252E37EC4();

          sub_252E37044();
          v14 = sub_252E37F14();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_252E37DB4() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_252C532DC(v26, a2, v25, a4);
}

uint64_t sub_252BBCD00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v8 = *(*(v156 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v156);
  v145 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v127 - v11;
  v169 = sub_252E36324();
  v13 = *(v169 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v169);
  v133 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v127 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v127 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v151 = &v127 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v153 = &v127 - v24;
  MEMORY[0x28223BE20](v23);
  v132 = &v127 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v149 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v135 = &v127 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v143 = &v127 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v142 = &v127 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v152 = &v127 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v127 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v134 = &v127 - v42;
  MEMORY[0x28223BE20](v41);
  v138 = &v127 - v43;
  v129 = v4;
  v128 = a2;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeAutomationEntityState(0);
    sub_252BBF590(&qword_27F540E40, type metadata accessor for HomeAutomationEntityState);
    result = sub_252E373E4();
    a3 = v171;
    v45 = v172;
    v47 = v173;
    v46 = v174;
    v48 = v175;
  }

  else
  {
    v49 = -1 << *(a3 + 32);
    v45 = a3 + 56;
    v47 = ~v49;
    v50 = -v49;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v48 = v51 & *(a3 + 56);

    v46 = 0;
  }

  v130 = 0;
  v127 = v47;
  v52 = (v47 + 64) >> 6;
  v159 = (v13 + 48);
  v160 = (v13 + 8);
  v155 = (v13 + 32);
  v166 = a4 + 56;
  v141 = a3;
  v162 = v40;
  v157 = v12;
  v140 = v45;
  v139 = v52;
  v158 = a4;
  while (2)
  {
    v53 = v46;
    while (2)
    {
      while (2)
      {
        if (a3 < 0)
        {
          v60 = sub_252E37904();
          if (!v60)
          {
            goto LABEL_79;
          }

          v176 = v60;
          type metadata accessor for HomeAutomationEntityState(0);
          swift_dynamicCast();
          v59 = v170;
          v147 = v53;
          v146 = v48;
          if (!v170)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v54 = v53;
          v55 = v48;
          v56 = v53;
          if (!v48)
          {
            while (1)
            {
              v56 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                break;
              }

              if (v56 >= v52)
              {
                goto LABEL_79;
              }

              v55 = *(v45 + 8 * v56);
              ++v54;
              if (v55)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
            return result;
          }

LABEL_15:
          v57 = __clz(__rbit64(v55));
          v146 = (v55 - 1) & v55;
          v58 = *(a3 + 48);
          v147 = v56;
          v59 = *(v58 + ((v56 << 9) | (8 * v57)));

          if (!v59)
          {
            goto LABEL_79;
          }
        }

        v61 = *(a4 + 40);
        sub_252E37EC4();
        v168 = v59;
        v165 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
        v62 = v59 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
        v63 = v138;
        sub_252956C1C(v62, v138);
        v167 = *v159;
        if (v167(v63, 1, v169) == 1)
        {
          sub_25293847C(v63, &qword_27F540298, &unk_252E3C270);
          sub_252E37EE4();
        }

        else
        {
          sub_252E36304();
          (*v160)(v63, v169);
          sub_252E37EE4();
          sub_252E37044();
        }

        v64 = v155;
        v154 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
        v65 = *(v168 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v65)
        {
          sub_252E37EE4();
          v66 = v134;
          sub_252956C1C(v65 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v134);
          if (v167(v66, 1, v169) == 1)
          {
            sub_25293847C(v66, &qword_27F540298, &unk_252E3C270);
            v67 = v156;
            if (*(v65 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
            {
              v68 = *(v65 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

              HomeAutomationAbstractMeasurement.hash(into:)();
            }

            else
            {
              v124 = *(v65 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
              sub_252E37EE4();
            }

            goto LABEL_29;
          }

          v69 = v132;
          v70 = v169;
          (*v64)(v132, v66, v169);
          sub_252E36304();
          sub_252E37044();

          (*v160)(v69, v70);
        }

        else
        {
          sub_252E37EE4();
        }

        v67 = v156;
LABEL_29:
        v71 = sub_252E37F14();
        v72 = -1 << *(a4 + 32);
        v73 = v71 & ~v72;
        v74 = v73 >> 6;
        v75 = 1 << v73;
        if (((1 << v73) & *(v166 + 8 * (v73 >> 6))) == 0)
        {
LABEL_9:

          v53 = v147;
          v48 = v146;
          a3 = v141;
          v45 = v140;
          v52 = v139;
          continue;
        }

        break;
      }

      v164 = ~v72;
      v150 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      while (1)
      {
        v163 = v74;
        v76 = *(*(a4 + 48) + 8 * v73);
        v77 = *(v67 + 48);
        sub_252956C1C(v76 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v12);
        sub_252956C1C(v168 + v165, &v12[v77]);
        v78 = v167;
        if (v167(v12, 1, v169) != 1)
        {
          break;
        }

        if (v78(&v12[v77], 1, v169) == 1)
        {

          sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
          goto LABEL_39;
        }

LABEL_32:
        sub_25293847C(v12, &qword_27F540758, &unk_252E4D160);
LABEL_33:
        v73 = (v73 + 1) & v164;
        v74 = v73 >> 6;
        v75 = 1 << v73;
        if ((*(v166 + 8 * (v73 >> 6)) & (1 << v73)) == 0)
        {
          goto LABEL_9;
        }
      }

      v161 = v75;
      v79 = v76;
      v80 = v162;
      sub_252956C1C(v12, v162);
      if (v78(&v12[v77], 1, v169) == 1)
      {
        (*v160)(v80, v169);
        goto LABEL_32;
      }

      v81 = &v12[v77];
      v82 = v169;
      v83 = a4;
      v84 = v153;
      (*v155)(v153, v81, v169);
      sub_252BBF590(&qword_27F540760, MEMORY[0x277D55C48]);

      v85 = sub_252E36EF4();
      v86 = *v160;
      v87 = v84;
      a4 = v83;
      (*v160)(v87, v82);
      v86(v162, v82);
      v76 = v79;
      v67 = v156;
      sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
      v75 = v161;
      if ((v85 & 1) == 0)
      {

        v12 = v157;
        goto LABEL_33;
      }

LABEL_39:
      v88 = *(v76 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      v89 = *(v168 + v154);
      if (!v88)
      {
        a4 = v158;
        v12 = v157;
        if (!v89)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      v12 = v157;
      if (!v89)
      {
        goto LABEL_50;
      }

      v161 = v76;
      v90 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
      v91 = v152;
      sub_252956C1C(v88 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v152);
      v92 = v167;
      if (v167(v91, 1, v169) != 1)
      {
        v97 = v169;
        v148 = *v155;
        (v148)(v151, v91, v169);
        v98 = v89 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
        v99 = v142;
        sub_252956C1C(v98, v142);
        v100 = v92(v99, 1, v97);
        v101 = v158;
        if (v100 == 1)
        {
          (*v160)(v151, v169);
          sub_25293847C(v99, &qword_27F540298, &unk_252E3C270);

          v67 = v156;
          a4 = v101;
          goto LABEL_33;
        }

        v104 = v169;
        v105 = v136;
        (v148)(v136, v99, v169);
        v106 = v151;
        LODWORD(v148) = sub_252E362E4();
        v107 = *v160;
        v108 = v105;
        v109 = v158;
        (*v160)(v108, v104);
        v110 = v106;
        a4 = v109;
        v107(v110, v104);
        goto LABEL_57;
      }

      v148 = v90;

      sub_25293847C(v91, &qword_27F540298, &unk_252E3C270);
      v93 = v169;
      v94 = v143;
      sub_252956C1C(v89 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v143);
      if (v92(v94, 1, v93) != 1)
      {
        v137 = *v155;
        v137(v144, v94, v93);
        v102 = v88 + v148;
        v103 = v135;
        sub_252956C1C(v102, v135);
        if (v92(v103, 1, v93) == 1)
        {

          (*v160)(v144, v169);
          sub_25293847C(v103, &qword_27F540298, &unk_252E3C270);

          a4 = v158;
          v67 = v156;
          goto LABEL_33;
        }

        v111 = v133;
        v112 = v169;
        v137(v133, v103, v169);
        v113 = v144;
        LODWORD(v148) = sub_252E362E4();

        v114 = *v160;
        (*v160)(v111, v112);
        v114(v113, v112);
        a4 = v158;
LABEL_57:
        v67 = v156;
        v76 = v161;
        if (v148)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      sub_25293847C(v94, &qword_27F540298, &unk_252E3C270);
      v95 = *(v88 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      v96 = *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      if (!v95)
      {
        v67 = v156;
        v76 = v161;
        if (v96)
        {

LABEL_50:

          goto LABEL_64;
        }

        v121 = *(v88 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
        v122 = *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

        v123 = v121 == v122;
        v67 = v156;
        a4 = v158;
        if (v123)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      a4 = v158;
      v67 = v156;
      v76 = v161;
      if (!v96)
      {

        goto LABEL_33;
      }

      v148 = v95;

      LODWORD(v137) = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v148, v96);

      if ((v137 & 1) == 0)
      {
LABEL_48:

        goto LABEL_33;
      }

LABEL_58:
      v115 = *(v67 + 48);
      v116 = v145;
      sub_252956C1C(v76 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v145);
      sub_252956C1C(v168 + v150, v116 + v115);
      v117 = v167;
      if (v167(v116, 1, v169) == 1)
      {

        if (v117(v116 + v115, 1, v169) == 1)
        {

          result = sub_25293847C(v116, &qword_27F540298, &unk_252E3C270);
          a4 = v158;
          goto LABEL_74;
        }

LABEL_63:
        sub_25293847C(v116, &qword_27F540758, &unk_252E4D160);
LABEL_64:
        a4 = v158;
        goto LABEL_33;
      }

      sub_252956C1C(v116, v149);
      if (v117(v116 + v115, 1, v169) == 1)
      {

        (*v160)(v149, v169);
        goto LABEL_63;
      }

      v118 = v169;
      (*v155)(v153, v116 + v115, v169);
      sub_252BBF590(&qword_27F540760, MEMORY[0x277D55C48]);
      v119 = sub_252E36EF4();

      v120 = *v160;
      (*v160)(v153, v118);
      v120(v149, v118);
      v67 = v156;
      sub_25293847C(v116, &qword_27F540298, &unk_252E3C270);
      a4 = v158;
      if ((v119 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_74:
      v125 = v131[v163];
      v131[v163] = v125 | v75;
      v46 = v147;
      v53 = v147;
      v48 = v146;
      v123 = (v125 & v75) == 0;
      a3 = v141;
      v45 = v140;
      v52 = v139;
      if (!v123)
      {
        continue;
      }

      break;
    }

    v126 = __OFADD__(v130++, 1);
    v48 = v146;
    if (!v126)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_79:
  sub_25291AE30();

  return sub_252C53768(v131, v128, v130, a4);
}

uint64_t sub_252BBDFCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + 8 * v7);
    v12 = *(a4 + 40);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v11);
    v13 = sub_252E37F14();
    v14 = -1 << *(a4 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
    {
      v18 = *(a4 + 48);
      if (*(v18 + 8 * v15) != v11)
      {
        v19 = ~v14;
        do
        {
          v15 = (v15 + 1) & v19;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v18 + 8 * v15) != v11);
      }

      v10 = a1[v16];
      a1[v16] = v10 | v17;
      if ((v10 & v17) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v6 = 0;
LABEL_15:

  return sub_252C53500(a1, a2, v6, a4);
}

unint64_t *sub_252BBE118(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_252BBF198(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_252BBE1A8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_252BBE230(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_252BBEEE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_252BBE2C0(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_252BBE1A8(v13, v7, v5, a3);
  result = MEMORY[0x2530AED00](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_252BBE430(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = vdupq_n_s64(*(*(a3 + 48) + 8 * v10));
    v14 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3BB0, v13), vceqq_s64(unk_2864A3BC0, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3BD0, v13), vceqq_s64(unk_2864A3BE0, v13))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3BF0, v13), vceqq_s64(unk_2864A3C00, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3C10, v13), vceqq_s64(unk_2864A3C20, v13)))), 7uLL)), xmmword_252E502B0);
    v15 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3C30, v13), vceqq_s64(unk_2864A3C40, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3C50, v13), vceqq_s64(unk_2864A3C60, v13))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3C70, v13), vceqq_s64(unk_2864A3C80, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3C90, v13), vceqq_s64(unk_2864A3CA0, v13)))), 7uLL)), xmmword_252E502B0);
    if (vaddvq_s16(vzip1q_s8(v14, vextq_s8(v14, v14, 8uLL))) | vaddvq_s16(vzip1q_s8(v15, vextq_s8(v15, v15, 8uLL))))
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_252BBE9CC(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_252BBE9CC(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_252BBE604(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = vdupq_n_s64(*(*(a3 + 48) + 8 * v10));
    if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3AD0, v13), vceqq_s64(unk_2864A3AE0, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3AF0, v13), vceqq_s64(unk_2864A3B00, v13))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B10, v13), vceqq_s64(unk_2864A3B20, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B30, v13), vceqq_s64(unk_2864A3B40, v13))))) & 1) == 0 && !vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B50, v13), vceqq_s64(unk_2864A3B60, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B70, v13), vceqq_s64(unk_2864A3B80, v13))), xmmword_252E502C0)))
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_252BBE9CC(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_252BBE9CC(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BBE78C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A50, &qword_252E50398);
  result = sub_252E37B54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_252E37EC4();

    v34 = v21;
    sub_252E37044();
    result = sub_252E37F14();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252BBE9CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
  result = sub_252E37B54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v28 = *(*(v4 + 56) + 8 * v16);
    v18 = *(v9 + 40);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v17);
    result = sub_252E37F14();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v28;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252BBEBEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A58, &unk_252E503A0);
  result = sub_252E37B54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_252E37EC4();

    sub_252E37044();
    result = sub_252E37F14();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252BBEE30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(result + 16);
  if (v6)
  {
    for (i = (result + 40); ; i += 2)
    {
      v12 = *i;
      v13[0] = *(i - 1);
      v13[1] = v12;

      a5(v13, a2, a3, a4);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_252BBEEE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = a4(*(*(a3 + 48) + 8 * v16), *(*(a3 + 56) + 8 * v16));
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_252BBE9CC(v19, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_252BBE9CC(v19, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BBF018(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_252BBEEE0(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_252BBE230(v11, v6, v4, a2);
  result = MEMORY[0x2530AED00](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_252BBF198(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_4:
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a4 + 16);
    v15 = (a4 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(a3 + 48) + 8 * v11))
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v5++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_252BBE9CC(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_252BBE9CC(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BBF2A0(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_252BBE118(v14, v7, a1, a2);
      MEMORY[0x2530AED00](v14, -1, -1);
      result = swift_bridgeObjectRelease_n();
      if (v2)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
  v10 = sub_252BBF198((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  if (v2)
  {
    swift_willThrow();
    result = swift_bridgeObjectRelease_n();
    goto LABEL_7;
  }

  v12 = v10;
  swift_bridgeObjectRelease_n();
LABEL_6:
  result = v12;
LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_252BBF4DC()
{
  result = qword_2814B0200;
  if (!qword_2814B0200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B0200);
  }

  return result;
}

uint64_t sub_252BBF554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_252BBF590(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_252BBF5D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v3;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v35)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v30);
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        goto LABEL_44;
      }

LABEL_9:
      v38 = v6;
      sub_252B9A780(&v38, &v37);
      if (v2)
      {
        goto LABEL_43;
      }

      v8 = v37;
      v9 = v37 >> 62;
      if (v37 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = sub_252E378C4();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_42:
          __break(1u);
LABEL_43:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v9)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v10 > 0)
          {
            goto LABEL_46;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v10)
      {
        goto LABEL_47;
      }

      v20 = v14 + 8 * v16 + 32;
      v31 = v14;
      if (v9)
      {
        if (v18 < 1)
        {
          goto LABEL_49;
        }

        sub_252BBFCB8();
        for (i = 0; i != v18; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A60, &unk_252E50420);
          v22 = sub_2529FBE00(v36, i, v8);
          v24 = *v23;

          (v22)(v36, 0);
          *(v20 + 8 * i) = v24;
        }
      }

      else
      {
        sub_252E36294();
        swift_arrayInitWithCopy();
      }

      v2 = 0;
      if (v10 >= 1)
      {
        v25 = *(v31 + 16);
        v7 = __OFADD__(v25, v10);
        v26 = v25 + v10;
        if (v7)
        {
          goto LABEL_48;
        }

        *(v31 + 16) = v26;
      }

LABEL_5:
      if (v4 == v32)
      {
        return v5;
      }
    }

    if (v4 >= *(v34 + 16))
    {
      goto LABEL_45;
    }

    v6 = *(v33 + 8 * v4);

    v7 = __OFADD__(v4++, 1);
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252BBF958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x73655265766C6176 && a2 == 0xEE007365736E6F70;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v8 = sub_252B9A254(&unk_27F5438E8, 33);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x8000000252E86380 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v8 = sub_252B9A34C(&unk_27F5438E9, &unk_2864ADF78);
LABEL_7:
    v9 = v8;
    result = swift_endAccess();
    if (v9)
    {
LABEL_8:
      result = type metadata accessor for HomeAutomationWaterSystemResponses();
LABEL_9:
      *(a3 + 24) = result;
      *a3 = v9;
      return result;
    }

    goto LABEL_23;
  }

  if (a1 == 0x6552657669746361 && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A4BC();
    if (result)
    {
LABEL_18:
      v9 = result;
      goto LABEL_8;
    }

LABEL_23:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 0xD000000000000011 && 0x8000000252E863A0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A4CC();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a1 == 0x7365526573556E69 && a2 == 0xEE007365736E6F70 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A600();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a1 == 0x6552646575657571 && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A610();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_252E37DB4() & 1) != 0)
  {
    v9 = sub_252BBF5D8(*(v3 + 24));
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A60, &unk_252E50420);
    goto LABEL_9;
  }

  return sub_252C86824(a1, a2, a3);
}

unint64_t sub_252BBFCB8()
{
  result = qword_27F543A68;
  if (!qword_27F543A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543A60, &unk_252E50420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543A68);
  }

  return result;
}

uint64_t sub_252BBFD44(void *a1)
{
  v1 = [a1 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    if (v3 == 1)
    {
      return sub_252C4E58C(&unk_2864AC3C0) & 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252BBFDC0()
{
  type metadata accessor for SetModeHandleDelegate();

  return swift_allocObject();
}

void sub_252BBFDF0(void *a1, void (*a2)(void))
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C3D0;
      *(inited + 32) = v5;
      v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v11 = v5;
      v12 = sub_252E36F04();
      v13 = [v10 initWithIdentifier:0 displayString:v12];

      v14 = v13;
      [v14 setBoolValue_];
      [v14 setType_];

      v15 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v16 = sub_252E36F04();
      v17 = [v15 initWithIdentifier:0 displayString:v16];

      v18 = v17;
      [v18 setTaskType_];
      [v18 setAttribute_];
      [v18 setValue_];

      *(inited + 40) = v18;
      v19 = sub_252B4CA9C(v8, inited, 0, 1);
      LOBYTE(v18) = v20;

      swift_setDeallocating();
      v21 = *(inited + 16);
      swift_arrayDestroy();
      if (v18)
      {
        v22 = v19;
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v23 = sub_252E36AD4();
        __swift_project_value_buffer(v23, qword_27F544C70);
        MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E86430, 0xD000000000000021, 0x8000000252E68B10, 41);

        v24 = parse(error:with:)(v19, a1);
        a2();

        sub_252927D3C(v19);
        v25 = v19;
      }

      else
      {
        v29 = v19;
        v30 = sub_252C2E8D0(0x1B);
        a2();

        sub_252927D3C(v19);
        v25 = v19;
      }

      sub_252927D3C(v25);
      goto LABEL_13;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007BLL, 0x8000000252E86430, 0xD000000000000021, 0x8000000252E68B10, 28);
  v11 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v27 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v11[v27] = 5;
  [v11 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v28 = sub_252E37254();
  [v11 setEntityResponses_];

  (a2)(v11);
LABEL_13:
}

unint64_t HomeAutomationSnippetModels.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TemperatureSnippetModel();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CallToActionSnippetModel();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AutomationSnippetModel();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CompletionSnippetModel();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ConfirmationSnippetModel();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DisambiguationSnippetModel(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for HomeAutomationSnippetModels();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252BC0700(v1, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v31 = type metadata accessor for ConfirmationSnippetModel;
        sub_252BC2B10(v29, v21, type metadata accessor for ConfirmationSnippetModel);
        v32 = ConfirmationSnippetModel.description.getter();
        v33 = v21;
      }

      else
      {
        v31 = type metadata accessor for CompletionSnippetModel;
        sub_252BC2B10(v29, v17, type metadata accessor for CompletionSnippetModel);
        v32 = CompletionSnippetModel.description.getter();
        v33 = v17;
      }
    }

    else
    {
      v31 = type metadata accessor for DisambiguationSnippetModel;
      sub_252BC2B10(v29, v25, type metadata accessor for DisambiguationSnippetModel);
      v32 = sub_252D48390();
      v33 = v25;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v31 = type metadata accessor for AutomationSnippetModel;
    sub_252BC2B10(v29, v13, type metadata accessor for AutomationSnippetModel);
    v32 = AutomationSnippetModel.description.getter();
    v33 = v13;
LABEL_12:
    v34 = v31;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v31 = type metadata accessor for TemperatureSnippetModel;
    sub_252BC2B10(v29, v5, type metadata accessor for TemperatureSnippetModel);
    v32 = TemperatureSnippetModel.description.getter();
    v33 = v5;
    goto LABEL_12;
  }

  sub_252BC2B10(v29, v9, type metadata accessor for CallToActionSnippetModel);
  v32 = CallToActionSnippetModel.description.getter();
  v33 = v9;
  v34 = type metadata accessor for CallToActionSnippetModel;
LABEL_13:
  sub_252BC0920(v33, v34);
  return v32;
}

uint64_t type metadata accessor for HomeAutomationSnippetModels()
{
  result = qword_27F543B48;
  if (!qword_27F543B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BC0700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAutomationSnippetModels();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeAutomationSnippetModels.snippetHidden(for:idiom:)()
{
  v1 = sub_252E35FD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeAutomationSnippetModels();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252BC0700(v0, v9);
  if ((swift_getEnumCaseMultiPayload() | 2) == 2)
  {
    v10 = 0;
  }

  else
  {
    (*(v2 + 104))(v5, *MEMORY[0x277D61BE8], v1);
    v10 = sub_252E35FC4();
    (*(v2 + 8))(v5, v1);
  }

  sub_252BC0920(v9, type metadata accessor for HomeAutomationSnippetModels);
  return v10 & 1;
}

uint64_t sub_252BC0920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252BC0980(uint64_t a1)
{
  v2 = sub_252BC1B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC09BC(uint64_t a1)
{
  v2 = sub_252BC1B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC09F8(uint64_t a1)
{
  v2 = sub_252BC1AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0A34(uint64_t a1)
{
  v2 = sub_252BC1AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_252BC0A70()
{
  v1 = *v0;
  v2 = 0x6974656C706D6F63;
  v3 = 0x6974616D6F747561;
  v4 = 0x74617265706D6574;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252BC0B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252BC36A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252BC0B70(uint64_t a1)
{
  v2 = sub_252BC1A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0BAC(uint64_t a1)
{
  v2 = sub_252BC1A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0BE8(uint64_t a1)
{
  v2 = sub_252BC1B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0C24(uint64_t a1)
{
  v2 = sub_252BC1B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0C60(uint64_t a1)
{
  v2 = sub_252BC1BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0C9C(uint64_t a1)
{
  v2 = sub_252BC1BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0CD8(uint64_t a1)
{
  v2 = sub_252BC1C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0D14(uint64_t a1)
{
  v2 = sub_252BC1C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0D50(uint64_t a1)
{
  v2 = sub_252BC1A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0D8C(uint64_t a1)
{
  v2 = sub_252BC1A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationSnippetModels.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A70, &qword_252E50460);
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v2);
  v88 = &v63 - v4;
  v86 = type metadata accessor for TemperatureSnippetModel();
  v5 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v87 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A78, &qword_252E50468);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7);
  v83 = &v63 - v9;
  v81 = type metadata accessor for CallToActionSnippetModel();
  v10 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v82 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A80, &qword_252E50470);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v12);
  v78 = &v63 - v14;
  v76 = type metadata accessor for AutomationSnippetModel();
  v15 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A88, &qword_252E50478);
  v74 = *(v75 - 8);
  v17 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v63 - v18;
  v71 = type metadata accessor for CompletionSnippetModel();
  v19 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v72 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A90, &qword_252E50480);
  v69 = *(v70 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - v22;
  v66 = type metadata accessor for ConfirmationSnippetModel();
  v23 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A98, &qword_252E50488);
  v64 = *(v65 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v27 = &v63 - v26;
  v28 = type metadata accessor for DisambiguationSnippetModel(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for HomeAutomationSnippetModels();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543AA0, &qword_252E50490);
  v92 = *(v36 - 8);
  v93 = v36;
  v37 = *(v92 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v63 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BC1A0C();
  v91 = v39;
  sub_252E37F84();
  sub_252BC0700(v94, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v51 = v77;
      sub_252BC2B10(v35, v77, type metadata accessor for AutomationSnippetModel);
      v98 = 3;
      sub_252BC1B08();
      v59 = v78;
      v49 = v93;
      v50 = v91;
      sub_252E37C84();
      sub_252BC2C08(&qword_27F543968, type metadata accessor for AutomationSnippetModel);
      v60 = v80;
      sub_252E37D54();
      (*(v79 + 8))(v59, v60);
      v54 = type metadata accessor for AutomationSnippetModel;
    }

    else
    {
      v49 = v93;
      v50 = v91;
      if (EnumCaseMultiPayload == 4)
      {
        v51 = v82;
        sub_252BC2B10(v35, v82, type metadata accessor for CallToActionSnippetModel);
        v99 = 4;
        sub_252BC1AB4();
        v52 = v83;
        sub_252E37C84();
        sub_252BC2C08(&qword_27F543AC0, type metadata accessor for CallToActionSnippetModel);
        v53 = v85;
        sub_252E37D54();
        (*(v84 + 8))(v52, v53);
        v54 = type metadata accessor for CallToActionSnippetModel;
      }

      else
      {
        v51 = v87;
        sub_252BC2B10(v35, v87, type metadata accessor for TemperatureSnippetModel);
        v100 = 5;
        sub_252BC1A60();
        v61 = v88;
        sub_252E37C84();
        sub_252BC2C08(&qword_27F542E48, type metadata accessor for TemperatureSnippetModel);
        v62 = v90;
        sub_252E37D54();
        (*(v89 + 8))(v61, v62);
        v54 = type metadata accessor for TemperatureSnippetModel;
      }
    }

    sub_252BC0920(v51, v54);
    return (*(v92 + 8))(v50, v49);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v42 = type metadata accessor for ConfirmationSnippetModel;
      v43 = v67;
      sub_252BC2B10(v35, v67, type metadata accessor for ConfirmationSnippetModel);
      v96 = 1;
      sub_252BC1BB0();
      v44 = v68;
      v45 = v93;
      v46 = v91;
      sub_252E37C84();
      sub_252BC2C08(&qword_27F542A68, type metadata accessor for ConfirmationSnippetModel);
      v47 = v70;
      sub_252E37D54();
      v48 = &v101;
    }

    else
    {
      v42 = type metadata accessor for CompletionSnippetModel;
      v43 = v72;
      sub_252BC2B10(v35, v72, type metadata accessor for CompletionSnippetModel);
      v97 = 2;
      sub_252BC1B5C();
      v44 = v73;
      v45 = v93;
      v46 = v91;
      sub_252E37C84();
      sub_252BC2C08(&qword_27F543590, type metadata accessor for CompletionSnippetModel);
      v47 = v75;
      sub_252E37D54();
      v48 = &v102;
    }

    (*(*(v48 - 32) + 8))(v44, v47);
    sub_252BC0920(v43, v42);
    return (*(v92 + 8))(v46, v45);
  }

  else
  {
    sub_252BC2B10(v35, v31, type metadata accessor for DisambiguationSnippetModel);
    v95 = 0;
    sub_252BC1C04();
    v55 = v93;
    v56 = v91;
    sub_252E37C84();
    sub_252BC2C08(&qword_27F543AE8, type metadata accessor for DisambiguationSnippetModel);
    v57 = v65;
    sub_252E37D54();
    (*(v64 + 8))(v27, v57);
    sub_252BC0920(v31, type metadata accessor for DisambiguationSnippetModel);
    return (*(v92 + 8))(v56, v55);
  }
}

unint64_t sub_252BC1A0C()
{
  result = qword_27F543AA8;
  if (!qword_27F543AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543AA8);
  }

  return result;
}

unint64_t sub_252BC1A60()
{
  result = qword_27F543AB0;
  if (!qword_27F543AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543AB0);
  }

  return result;
}

unint64_t sub_252BC1AB4()
{
  result = qword_27F543AB8;
  if (!qword_27F543AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543AB8);
  }

  return result;
}

unint64_t sub_252BC1B08()
{
  result = qword_27F543AC8;
  if (!qword_27F543AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543AC8);
  }

  return result;
}

unint64_t sub_252BC1B5C()
{
  result = qword_27F543AD0;
  if (!qword_27F543AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543AD0);
  }

  return result;
}

unint64_t sub_252BC1BB0()
{
  result = qword_27F543AD8;
  if (!qword_27F543AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543AD8);
  }

  return result;
}

unint64_t sub_252BC1C04()
{
  result = qword_27F543AE0;
  if (!qword_27F543AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543AE0);
  }

  return result;
}

uint64_t HomeAutomationSnippetModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543AF0, &qword_252E50498);
  v4 = *(v3 - 8);
  v107 = v3;
  v108 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v110 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543AF8, &qword_252E504A0);
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = *(v105 + 64);
  MEMORY[0x28223BE20](v7);
  v109 = &v89 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B00, &qword_252E504A8);
  v104 = *(v103 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  v115 = &v89 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B08, &qword_252E504B0);
  v102 = *(v99 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x28223BE20](v99);
  v114 = &v89 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B10, &qword_252E504B8);
  v100 = *(v101 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v113 = &v89 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B18, &qword_252E504C0);
  v97 = *(v98 - 8);
  v16 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v111 = &v89 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B20, &unk_252E504C8);
  v117 = *(v119 - 8);
  v18 = *(v117 + 64);
  MEMORY[0x28223BE20](v119);
  v20 = &v89 - v19;
  v118 = type metadata accessor for HomeAutomationSnippetModels();
  v21 = *(*(v118 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v118);
  v96 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v95 = &v89 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v89 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v89 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v89 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v89 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v89 - v38;
  v41 = a1[3];
  v40 = a1[4];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_252BC1A0C();
  v112 = v20;
  v42 = v120;
  sub_252E37F74();
  if (!v42)
  {
    v90 = v34;
    v91 = v31;
    v92 = v28;
    v93 = v37;
    v43 = v111;
    v45 = v113;
    v44 = v114;
    v120 = 0;
    v46 = v115;
    v94 = v39;
    v48 = v118;
    v47 = v119;
    v49 = v116;
    v50 = v112;
    v51 = sub_252E37C74();
    v52 = (2 * *(v51 + 16)) | 1;
    v122 = v51;
    v123 = v51 + 32;
    v124 = 0;
    v125 = v52;
    v53 = sub_252ABA29C();
    v54 = v47;
    if (v53 == 6 || v124 != v125 >> 1)
    {
      v60 = sub_252E37A74();
      swift_allocError();
      v62 = v61;
      v63 = v54;
      v64 = v50;
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C30, &qword_252E48200) + 48);
      *v62 = v48;
      sub_252E37B94();
      sub_252E37A64();
      (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
      swift_willThrow();
      (*(v117 + 8))(v64, v63);
    }

    else
    {
      if (v53 <= 2u)
      {
        if (v53)
        {
          v55 = v120;
          if (v53 != 1)
          {
            v126 = 2;
            sub_252BC1B5C();
            v78 = v44;
            sub_252E37B84();
            if (!v55)
            {
              type metadata accessor for CompletionSnippetModel();
              sub_252BC2C08(&qword_27F543588, type metadata accessor for CompletionSnippetModel);
              v85 = v91;
              v86 = v99;
              sub_252E37C64();
              v87 = v117;
              (*(v102 + 8))(v78, v86);
              (*(v87 + 8))(v50, v47);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v88 = v85;
              goto LABEL_27;
            }

            (*(v117 + 8))(v50, v47);
            goto LABEL_10;
          }

          v126 = 1;
          sub_252BC1BB0();
          v56 = v45;
          v57 = v47;
          sub_252E37B84();
          if (!v55)
          {
            type metadata accessor for ConfirmationSnippetModel();
            sub_252BC2C08(&qword_27F542A60, type metadata accessor for ConfirmationSnippetModel);
            v58 = v90;
            v59 = v101;
            sub_252E37C64();
            (*(v100 + 8))(v56, v59);
            (*(v117 + 8))(v50, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v88 = v58;
LABEL_27:
            v67 = v49;
            goto LABEL_28;
          }
        }

        else
        {
          v126 = 0;
          sub_252BC1C04();
          v57 = v47;
          v73 = v120;
          sub_252E37B84();
          if (!v73)
          {
            type metadata accessor for DisambiguationSnippetModel(0);
            sub_252BC2C08(&qword_27F543B30, type metadata accessor for DisambiguationSnippetModel);
            v74 = v93;
            v75 = v98;
            sub_252E37C64();
            (*(v97 + 8))(v43, v75);
            (*(v117 + 8))(v50, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v67 = v49;
            v88 = v74;
LABEL_28:
            v68 = v94;
            goto LABEL_29;
          }
        }

        goto LABEL_24;
      }

      v67 = v49;
      if (v53 != 3)
      {
        v68 = v94;
        if (v53 == 4)
        {
          v126 = 4;
          sub_252BC1AB4();
          v69 = v109;
          v57 = v54;
          v70 = v120;
          sub_252E37B84();
          if (!v70)
          {
            type metadata accessor for CallToActionSnippetModel();
            sub_252BC2C08(&qword_27F543B28, type metadata accessor for CallToActionSnippetModel);
            v71 = v95;
            v72 = v106;
            sub_252E37C64();
            (*(v105 + 8))(v69, v72);
            (*(v117 + 8))(v50, v119);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v88 = v71;
LABEL_29:
            sub_252BC2B10(v88, v68, type metadata accessor for HomeAutomationSnippetModels);
            sub_252BC2B10(v68, v67, type metadata accessor for HomeAutomationSnippetModels);
            return __swift_destroy_boxed_opaque_existential_1(v121);
          }
        }

        else
        {
          v126 = 5;
          sub_252BC1A60();
          v57 = v54;
          v79 = v120;
          sub_252E37B84();
          if (!v79)
          {
            type metadata accessor for TemperatureSnippetModel();
            sub_252BC2C08(&qword_27F542E40, type metadata accessor for TemperatureSnippetModel);
            v80 = v96;
            v81 = v107;
            v82 = v110;
            sub_252E37C64();
            (*(v108 + 8))(v82, v81);
            (*(v117 + 8))(v50, v57);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v88 = v80;
            goto LABEL_29;
          }
        }

LABEL_24:
        (*(v117 + 8))(v50, v57);
        goto LABEL_10;
      }

      v76 = v49;
      v126 = 3;
      sub_252BC1B08();
      v77 = v120;
      sub_252E37B84();
      v68 = v94;
      if (!v77)
      {
        type metadata accessor for AutomationSnippetModel();
        sub_252BC2C08(&qword_27F543960, type metadata accessor for AutomationSnippetModel);
        v83 = v92;
        v84 = v103;
        sub_252E37C64();
        (*(v104 + 8))(v46, v84);
        (*(v117 + 8))(v50, v119);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v88 = v83;
        v67 = v76;
        goto LABEL_29;
      }

      (*(v117 + 8))(v50, v54);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v121);
}