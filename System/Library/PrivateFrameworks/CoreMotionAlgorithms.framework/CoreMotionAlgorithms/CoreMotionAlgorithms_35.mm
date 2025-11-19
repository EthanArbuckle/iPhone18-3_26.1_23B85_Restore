uint64_t sub_245EC9868(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_446;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 184) |= 4uLL;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 24) = *(*this + v22);
          goto LABEL_171;
        case 2u:
          *(a1 + 184) |= 1uLL;
          v106 = *(this + 1);
          if (v106 > 0xFFFFFFFFFFFFFFF7 || v106 + 8 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 8) = *(*this + v106);
          goto LABEL_171;
        case 3u:
          *(a1 + 184) |= 0x200000uLL;
          v87 = *(this + 1);
          v86 = *(this + 2);
          v88 = *this;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(this + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_411;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_274:
            LODWORD(v91) = 0;
            goto LABEL_411;
          }

          v252 = 0;
          v253 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v254 = v86 - v87;
          if (!v17)
          {
            v254 = 0;
          }

          v255 = (v88 + v87);
          v256 = v87 + 1;
          while (2)
          {
            if (v254)
            {
              v257 = *v255;
              *(this + 1) = v256;
              v91 |= (v257 & 0x7F) << v252;
              if (v257 < 0)
              {
                v252 += 7;
                --v254;
                ++v255;
                ++v256;
                v14 = v253++ > 8;
                if (v14)
                {
                  goto LABEL_274;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_411:
          *(a1 + 104) = v91;
          goto LABEL_374;
        case 4u:
          *(a1 + 184) |= 0x1000000000uLL;
          v104 = *(this + 1);
          if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 164) = *(*this + v104);
          goto LABEL_372;
        case 5u:
          *(a1 + 184) |= 0x100000000000uLL;
          v50 = *(this + 1);
          if (v50 >= *(this + 2))
          {
            v53 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v51 = v50 + 1;
            v52 = *(*this + v50);
            *(this + 1) = v51;
            v53 = v52 != 0;
          }

          *(a1 + 181) = v53;
          goto LABEL_374;
        case 6u:
          *(a1 + 184) |= 0x800uLL;
          v135 = *(this + 1);
          if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 64) = *(*this + v135);
          goto LABEL_372;
        case 7u:
          *(a1 + 184) |= 0x10000000000uLL;
          v154 = *(this + 1);
          if (v154 >= *(this + 2))
          {
            v157 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v155 = v154 + 1;
            v156 = *(*this + v154);
            *(this + 1) = v155;
            v157 = v156 != 0;
          }

          *(a1 + 177) = v157;
          goto LABEL_374;
        case 8u:
          *(a1 + 184) |= 0x2000000uLL;
          v105 = *(this + 1);
          if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 120) = *(*this + v105);
          goto LABEL_372;
        case 9u:
          *(a1 + 184) |= 0x80000000000uLL;
          v169 = *(this + 1);
          if (v169 >= *(this + 2))
          {
            v172 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v170 = v169 + 1;
            v171 = *(*this + v169);
            *(this + 1) = v170;
            v172 = v171 != 0;
          }

          *(a1 + 180) = v172;
          goto LABEL_374;
        case 0xAu:
          *(a1 + 184) |= 0x4000uLL;
          v60 = *(this + 1);
          v59 = *(this + 2);
          v61 = *this;
          if (v60 <= 0xFFFFFFFFFFFFFFF5 && v60 + 10 <= v59)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            do
            {
              *(this + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_402;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
            }

            while (!v14);
LABEL_248:
            LODWORD(v64) = 0;
            goto LABEL_402;
          }

          v234 = 0;
          v235 = 0;
          v64 = 0;
          v17 = v59 >= v60;
          v236 = v59 - v60;
          if (!v17)
          {
            v236 = 0;
          }

          v237 = (v61 + v60);
          v238 = v60 + 1;
          while (2)
          {
            if (v236)
            {
              v239 = *v237;
              *(this + 1) = v238;
              v64 |= (v239 & 0x7F) << v234;
              if (v239 < 0)
              {
                v234 += 7;
                --v236;
                ++v237;
                ++v238;
                v14 = v235++ > 8;
                if (v14)
                {
                  goto LABEL_248;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              LODWORD(v64) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_402:
          *(a1 + 76) = v64;
          goto LABEL_374;
        case 0xBu:
          *(a1 + 184) |= 2uLL;
          v167 = *(this + 1);
          if (v167 > 0xFFFFFFFFFFFFFFF7 || v167 + 8 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 16) = *(*this + v167);
LABEL_171:
          v168 = *(this + 1) + 8;
          goto LABEL_373;
        case 0xCu:
          *(a1 + 184) |= 8uLL;
          v49 = *(this + 1);
          if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 32) = *(*this + v49);
          goto LABEL_372;
        case 0xDu:
          *(a1 + 184) |= 0x8000000000uLL;
          v55 = *(this + 1);
          if (v55 >= *(this + 2))
          {
            v58 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v56 = v55 + 1;
            v57 = *(*this + v55);
            *(this + 1) = v56;
            v58 = v57 != 0;
          }

          *(a1 + 176) = v58;
          goto LABEL_374;
        case 0xEu:
          *(a1 + 184) |= 0x2000uLL;
          v146 = *(this + 1);
          v145 = *(this + 2);
          v147 = *this;
          if (v146 <= 0xFFFFFFFFFFFFFFF5 && v146 + 10 <= v145)
          {
            v148 = 0;
            v149 = 0;
            v150 = 0;
            v151 = (v147 + v146);
            v152 = v146 + 1;
            do
            {
              *(this + 1) = v152;
              v153 = *v151++;
              v150 |= (v153 & 0x7F) << v148;
              if ((v153 & 0x80) == 0)
              {
                goto LABEL_429;
              }

              v148 += 7;
              ++v152;
              v14 = v149++ > 8;
            }

            while (!v14);
LABEL_322:
            LODWORD(v150) = 0;
            goto LABEL_429;
          }

          v288 = 0;
          v289 = 0;
          v150 = 0;
          v17 = v145 >= v146;
          v290 = v145 - v146;
          if (!v17)
          {
            v290 = 0;
          }

          v291 = (v147 + v146);
          v292 = v146 + 1;
          while (2)
          {
            if (v290)
            {
              v293 = *v291;
              *(this + 1) = v292;
              v150 |= (v293 & 0x7F) << v288;
              if (v293 < 0)
              {
                v288 += 7;
                --v290;
                ++v291;
                ++v292;
                v14 = v289++ > 8;
                if (v14)
                {
                  goto LABEL_322;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v150) = 0;
              }
            }

            else
            {
              LODWORD(v150) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_429:
          *(a1 + 72) = v150;
          goto LABEL_374;
        case 0xFu:
          *(a1 + 184) |= 0x200000000uLL;
          v40 = *(this + 1);
          v39 = *(this + 2);
          v41 = *this;
          if (v40 <= 0xFFFFFFFFFFFFFFF5 && v40 + 10 <= v39)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            do
            {
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_399;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_238:
            LODWORD(v44) = 0;
            goto LABEL_399;
          }

          v228 = 0;
          v229 = 0;
          v44 = 0;
          v17 = v39 >= v40;
          v230 = v39 - v40;
          if (!v17)
          {
            v230 = 0;
          }

          v231 = (v41 + v40);
          v232 = v40 + 1;
          while (2)
          {
            if (v230)
            {
              v233 = *v231;
              *(this + 1) = v232;
              v44 |= (v233 & 0x7F) << v228;
              if (v233 < 0)
              {
                v228 += 7;
                --v230;
                ++v231;
                ++v232;
                v14 = v229++ > 8;
                if (v14)
                {
                  goto LABEL_238;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v44) = 0;
              }
            }

            else
            {
              LODWORD(v44) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_399:
          *(a1 + 152) = v44;
          goto LABEL_374;
        case 0x10u:
          *(a1 + 184) |= 0x4000000000uLL;
          v96 = *(this + 1);
          v95 = *(this + 2);
          v97 = *this;
          if (v96 <= 0xFFFFFFFFFFFFFFF5 && v96 + 10 <= v95)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = (v97 + v96);
            v102 = v96 + 1;
            do
            {
              *(this + 1) = v102;
              v103 = *v101++;
              v100 |= (v103 & 0x7F) << v98;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_414;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_282:
            LODWORD(v100) = 0;
            goto LABEL_414;
          }

          v258 = 0;
          v259 = 0;
          v100 = 0;
          v17 = v95 >= v96;
          v260 = v95 - v96;
          if (!v17)
          {
            v260 = 0;
          }

          v261 = (v97 + v96);
          v262 = v96 + 1;
          while (2)
          {
            if (v260)
            {
              v263 = *v261;
              *(this + 1) = v262;
              v100 |= (v263 & 0x7F) << v258;
              if (v263 < 0)
              {
                v258 += 7;
                --v260;
                ++v261;
                ++v262;
                v14 = v259++ > 8;
                if (v14)
                {
                  goto LABEL_282;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v100) = 0;
              }
            }

            else
            {
              LODWORD(v100) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_414:
          *(a1 + 172) = v100;
          goto LABEL_374;
        case 0x11u:
          *(a1 + 184) |= 0x100000uLL;
          v30 = *(this + 1);
          v29 = *(this + 2);
          v31 = *this;
          if (v30 <= 0xFFFFFFFFFFFFFFF5 && v30 + 10 <= v29)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = (v31 + v30);
            v36 = v30 + 1;
            do
            {
              *(this + 1) = v36;
              v37 = *v35++;
              v34 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                goto LABEL_396;
              }

              v32 += 7;
              ++v36;
              v14 = v33++ > 8;
            }

            while (!v14);
LABEL_230:
            LODWORD(v34) = 0;
            goto LABEL_396;
          }

          v222 = 0;
          v223 = 0;
          v34 = 0;
          v17 = v29 >= v30;
          v224 = v29 - v30;
          if (!v17)
          {
            v224 = 0;
          }

          v225 = (v31 + v30);
          v226 = v30 + 1;
          while (2)
          {
            if (v224)
            {
              v227 = *v225;
              *(this + 1) = v226;
              v34 |= (v227 & 0x7F) << v222;
              if (v227 < 0)
              {
                v222 += 7;
                --v224;
                ++v225;
                ++v226;
                v14 = v223++ > 8;
                if (v14)
                {
                  goto LABEL_230;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v34) = 0;
              }
            }

            else
            {
              LODWORD(v34) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_396:
          *(a1 + 100) = v34;
          goto LABEL_374;
        case 0x12u:
          *(a1 + 184) |= 0x20000uLL;
          v117 = *(this + 1);
          v116 = *(this + 2);
          v118 = *this;
          if (v117 <= 0xFFFFFFFFFFFFFFF5 && v117 + 10 <= v116)
          {
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = (v118 + v117);
            v123 = v117 + 1;
            do
            {
              *(this + 1) = v123;
              v124 = *v122++;
              v121 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                goto LABEL_420;
              }

              v119 += 7;
              ++v123;
              v14 = v120++ > 8;
            }

            while (!v14);
LABEL_298:
            LODWORD(v121) = 0;
            goto LABEL_420;
          }

          v270 = 0;
          v271 = 0;
          v121 = 0;
          v17 = v116 >= v117;
          v272 = v116 - v117;
          if (!v17)
          {
            v272 = 0;
          }

          v273 = (v118 + v117);
          v274 = v117 + 1;
          while (2)
          {
            if (v272)
            {
              v275 = *v273;
              *(this + 1) = v274;
              v121 |= (v275 & 0x7F) << v270;
              if (v275 < 0)
              {
                v270 += 7;
                --v272;
                ++v273;
                ++v274;
                v14 = v271++ > 8;
                if (v14)
                {
                  goto LABEL_298;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v121) = 0;
              }
            }

            else
            {
              LODWORD(v121) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_420:
          *(a1 + 88) = v121;
          goto LABEL_374;
        case 0x13u:
          *(a1 + 184) |= 0x10000uLL;
          v159 = *(this + 1);
          v158 = *(this + 2);
          v160 = *this;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(this + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_432;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_330:
            LODWORD(v163) = 0;
            goto LABEL_432;
          }

          v294 = 0;
          v295 = 0;
          v163 = 0;
          v17 = v158 >= v159;
          v296 = v158 - v159;
          if (!v17)
          {
            v296 = 0;
          }

          v297 = (v160 + v159);
          v298 = v159 + 1;
          while (2)
          {
            if (v296)
            {
              v299 = *v297;
              *(this + 1) = v298;
              v163 |= (v299 & 0x7F) << v294;
              if (v299 < 0)
              {
                v294 += 7;
                --v296;
                ++v297;
                ++v298;
                v14 = v295++ > 8;
                if (v14)
                {
                  goto LABEL_330;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v163) = 0;
              }
            }

            else
            {
              LODWORD(v163) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_432:
          *(a1 + 84) = v163;
          goto LABEL_374;
        case 0x14u:
          *(a1 + 184) |= 0x40000uLL;
          v189 = *(this + 1);
          v188 = *(this + 2);
          v190 = *this;
          if (v189 <= 0xFFFFFFFFFFFFFFF5 && v189 + 10 <= v188)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = (v190 + v189);
            v195 = v189 + 1;
            do
            {
              *(this + 1) = v195;
              v196 = *v194++;
              v193 |= (v196 & 0x7F) << v191;
              if ((v196 & 0x80) == 0)
              {
                goto LABEL_438;
              }

              v191 += 7;
              ++v195;
              v14 = v192++ > 8;
            }

            while (!v14);
LABEL_352:
            LODWORD(v193) = 0;
            goto LABEL_438;
          }

          v306 = 0;
          v307 = 0;
          v193 = 0;
          v17 = v188 >= v189;
          v308 = v188 - v189;
          if (!v17)
          {
            v308 = 0;
          }

          v309 = (v190 + v189);
          v310 = v189 + 1;
          while (2)
          {
            if (v308)
            {
              v311 = *v309;
              *(this + 1) = v310;
              v193 |= (v311 & 0x7F) << v306;
              if (v311 < 0)
              {
                v306 += 7;
                --v308;
                ++v309;
                ++v310;
                v14 = v307++ > 8;
                if (v14)
                {
                  goto LABEL_352;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v193) = 0;
              }
            }

            else
            {
              LODWORD(v193) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_438:
          *(a1 + 92) = v193;
          goto LABEL_374;
        case 0x15u:
          *(a1 + 184) |= 0x80000uLL;
          v127 = *(this + 1);
          v126 = *(this + 2);
          v128 = *this;
          if (v127 <= 0xFFFFFFFFFFFFFFF5 && v127 + 10 <= v126)
          {
            v129 = 0;
            v130 = 0;
            v131 = 0;
            v132 = (v128 + v127);
            v133 = v127 + 1;
            do
            {
              *(this + 1) = v133;
              v134 = *v132++;
              v131 |= (v134 & 0x7F) << v129;
              if ((v134 & 0x80) == 0)
              {
                goto LABEL_423;
              }

              v129 += 7;
              ++v133;
              v14 = v130++ > 8;
            }

            while (!v14);
LABEL_306:
            LODWORD(v131) = 0;
            goto LABEL_423;
          }

          v276 = 0;
          v277 = 0;
          v131 = 0;
          v17 = v126 >= v127;
          v278 = v126 - v127;
          if (!v17)
          {
            v278 = 0;
          }

          v279 = (v128 + v127);
          v280 = v127 + 1;
          while (2)
          {
            if (v278)
            {
              v281 = *v279;
              *(this + 1) = v280;
              v131 |= (v281 & 0x7F) << v276;
              if (v281 < 0)
              {
                v276 += 7;
                --v278;
                ++v279;
                ++v280;
                v14 = v277++ > 8;
                if (v14)
                {
                  goto LABEL_306;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v131) = 0;
              }
            }

            else
            {
              LODWORD(v131) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_423:
          *(a1 + 96) = v131;
          goto LABEL_374;
        case 0x16u:
          *(a1 + 184) |= 0x8000uLL;
          v137 = *(this + 1);
          v136 = *(this + 2);
          v138 = *this;
          if (v137 <= 0xFFFFFFFFFFFFFFF5 && v137 + 10 <= v136)
          {
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = (v138 + v137);
            v143 = v137 + 1;
            do
            {
              *(this + 1) = v143;
              v144 = *v142++;
              v141 |= (v144 & 0x7F) << v139;
              if ((v144 & 0x80) == 0)
              {
                goto LABEL_426;
              }

              v139 += 7;
              ++v143;
              v14 = v140++ > 8;
            }

            while (!v14);
LABEL_314:
            LODWORD(v141) = 0;
            goto LABEL_426;
          }

          v282 = 0;
          v283 = 0;
          v141 = 0;
          v17 = v136 >= v137;
          v284 = v136 - v137;
          if (!v17)
          {
            v284 = 0;
          }

          v285 = (v138 + v137);
          v286 = v137 + 1;
          while (2)
          {
            if (v284)
            {
              v287 = *v285;
              *(this + 1) = v286;
              v141 |= (v287 & 0x7F) << v282;
              if (v287 < 0)
              {
                v282 += 7;
                --v284;
                ++v285;
                ++v286;
                v14 = v283++ > 8;
                if (v14)
                {
                  goto LABEL_314;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v141) = 0;
              }
            }

            else
            {
              LODWORD(v141) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_426:
          *(a1 + 80) = v141;
          goto LABEL_374;
        case 0x17u:
          *(a1 + 184) |= 0x400uLL;
          v179 = *(this + 1);
          v178 = *(this + 2);
          v180 = *this;
          if (v179 <= 0xFFFFFFFFFFFFFFF5 && v179 + 10 <= v178)
          {
            v181 = 0;
            v182 = 0;
            v183 = 0;
            v184 = (v180 + v179);
            v185 = v179 + 1;
            do
            {
              *(this + 1) = v185;
              v186 = *v184++;
              v183 |= (v186 & 0x7F) << v181;
              if ((v186 & 0x80) == 0)
              {
                goto LABEL_435;
              }

              v181 += 7;
              ++v185;
              v14 = v182++ > 8;
            }

            while (!v14);
LABEL_344:
            LODWORD(v183) = 0;
            goto LABEL_435;
          }

          v300 = 0;
          v301 = 0;
          v183 = 0;
          v17 = v178 >= v179;
          v302 = v178 - v179;
          if (!v17)
          {
            v302 = 0;
          }

          v303 = (v180 + v179);
          v304 = v179 + 1;
          while (2)
          {
            if (v302)
            {
              v305 = *v303;
              *(this + 1) = v304;
              v183 |= (v305 & 0x7F) << v300;
              if (v305 < 0)
              {
                v300 += 7;
                --v302;
                ++v303;
                ++v304;
                v14 = v301++ > 8;
                if (v14)
                {
                  goto LABEL_344;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v183) = 0;
              }
            }

            else
            {
              LODWORD(v183) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_435:
          *(a1 + 60) = v183;
          goto LABEL_374;
        case 0x18u:
          *(a1 + 184) |= 0x2000000000uLL;
          v199 = *(this + 1);
          v198 = *(this + 2);
          v200 = *this;
          if (v199 <= 0xFFFFFFFFFFFFFFF5 && v199 + 10 <= v198)
          {
            v201 = 0;
            v202 = 0;
            v203 = 0;
            v204 = (v200 + v199);
            v205 = v199 + 1;
            do
            {
              *(this + 1) = v205;
              v206 = *v204++;
              v203 |= (v206 & 0x7F) << v201;
              if ((v206 & 0x80) == 0)
              {
                goto LABEL_441;
              }

              v201 += 7;
              ++v205;
              v14 = v202++ > 8;
            }

            while (!v14);
LABEL_360:
            LODWORD(v203) = 0;
            goto LABEL_441;
          }

          v312 = 0;
          v313 = 0;
          v203 = 0;
          v17 = v198 >= v199;
          v314 = v198 - v199;
          if (!v17)
          {
            v314 = 0;
          }

          v315 = (v200 + v199);
          v316 = v199 + 1;
          while (2)
          {
            if (v314)
            {
              v317 = *v315;
              *(this + 1) = v316;
              v203 |= (v317 & 0x7F) << v312;
              if (v317 < 0)
              {
                v312 += 7;
                --v314;
                ++v315;
                ++v316;
                v14 = v313++ > 8;
                if (v14)
                {
                  goto LABEL_360;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v203) = 0;
              }
            }

            else
            {
              LODWORD(v203) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_441:
          *(a1 + 168) = v203;
          goto LABEL_374;
        case 0x19u:
          *(a1 + 184) |= 0x1000uLL;
          v78 = *(this + 1);
          v77 = *(this + 2);
          v79 = *this;
          if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
          {
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = (v79 + v78);
            v84 = v78 + 1;
            do
            {
              *(this + 1) = v84;
              v85 = *v83++;
              v82 |= (v85 & 0x7F) << v80;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_408;
              }

              v80 += 7;
              ++v84;
              v14 = v81++ > 8;
            }

            while (!v14);
LABEL_266:
            LODWORD(v82) = 0;
            goto LABEL_408;
          }

          v246 = 0;
          v247 = 0;
          v82 = 0;
          v17 = v77 >= v78;
          v248 = v77 - v78;
          if (!v17)
          {
            v248 = 0;
          }

          v249 = (v79 + v78);
          v250 = v78 + 1;
          while (2)
          {
            if (v248)
            {
              v251 = *v249;
              *(this + 1) = v250;
              v82 |= (v251 & 0x7F) << v246;
              if (v251 < 0)
              {
                v246 += 7;
                --v248;
                ++v249;
                ++v250;
                v14 = v247++ > 8;
                if (v14)
                {
                  goto LABEL_266;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v82) = 0;
              }
            }

            else
            {
              LODWORD(v82) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_408:
          *(a1 + 68) = v82;
          goto LABEL_374;
        case 0x1Au:
          *(a1 + 184) |= 0x20000000uLL;
          v69 = *(this + 1);
          v68 = *(this + 2);
          v70 = *this;
          if (v69 <= 0xFFFFFFFFFFFFFFF5 && v69 + 10 <= v68)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            do
            {
              *(this + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                goto LABEL_405;
              }

              v71 += 7;
              ++v75;
              v14 = v72++ > 8;
            }

            while (!v14);
LABEL_258:
            LODWORD(v73) = 0;
            goto LABEL_405;
          }

          v240 = 0;
          v241 = 0;
          v73 = 0;
          v17 = v68 >= v69;
          v242 = v68 - v69;
          if (!v17)
          {
            v242 = 0;
          }

          v243 = (v70 + v69);
          v244 = v69 + 1;
          while (2)
          {
            if (v242)
            {
              v245 = *v243;
              *(this + 1) = v244;
              v73 |= (v245 & 0x7F) << v240;
              if (v245 < 0)
              {
                v240 += 7;
                --v242;
                ++v243;
                ++v244;
                v14 = v241++ > 8;
                if (v14)
                {
                  goto LABEL_258;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              LODWORD(v73) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_405:
          *(a1 + 136) = v73;
          goto LABEL_374;
        case 0x1Bu:
          *(a1 + 184) |= 0x10uLL;
          v214 = *(this + 1);
          v213 = *(this + 2);
          v215 = *this;
          if (v214 <= 0xFFFFFFFFFFFFFFF5 && v214 + 10 <= v213)
          {
            v216 = 0;
            v217 = 0;
            v218 = 0;
            v219 = (v215 + v214);
            v220 = v214 + 1;
            do
            {
              *(this + 1) = v220;
              v221 = *v219++;
              v218 |= (v221 & 0x7F) << v216;
              if ((v221 & 0x80) == 0)
              {
                goto LABEL_444;
              }

              v216 += 7;
              ++v220;
              v14 = v217++ > 8;
            }

            while (!v14);
LABEL_370:
            LODWORD(v218) = 0;
            goto LABEL_444;
          }

          v318 = 0;
          v319 = 0;
          v218 = 0;
          v17 = v213 >= v214;
          v320 = v213 - v214;
          if (!v17)
          {
            v320 = 0;
          }

          v321 = (v215 + v214);
          v322 = v214 + 1;
          while (2)
          {
            if (v320)
            {
              v323 = *v321;
              *(this + 1) = v322;
              v218 |= (v323 & 0x7F) << v318;
              if (v323 < 0)
              {
                v318 += 7;
                --v320;
                ++v321;
                ++v322;
                v14 = v319++ > 8;
                if (v14)
                {
                  goto LABEL_370;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v218) = 0;
              }
            }

            else
            {
              LODWORD(v218) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_444:
          *(a1 + 36) = v218;
          goto LABEL_374;
        case 0x1Cu:
          *(a1 + 184) |= 0x400000000uLL;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 156) = *(*this + v27);
          goto LABEL_372;
        case 0x1Du:
          *(a1 + 184) |= 0x20000000000uLL;
          v207 = *(this + 1);
          if (v207 >= *(this + 2))
          {
            v210 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v208 = v207 + 1;
            v209 = *(*this + v207);
            *(this + 1) = v208;
            v210 = v209 != 0;
          }

          *(a1 + 178) = v210;
          goto LABEL_374;
        case 0x1Eu:
          *(a1 + 184) |= 0x800000000uLL;
          v211 = *(this + 1);
          if (v211 > 0xFFFFFFFFFFFFFFFBLL || v211 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 160) = *(*this + v211);
          goto LABEL_372;
        case 0x1Fu:
          *(a1 + 184) |= 0x40000000000uLL;
          v173 = *(this + 1);
          if (v173 >= *(this + 2))
          {
            v176 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v174 = v173 + 1;
            v175 = *(*this + v173);
            *(this + 1) = v174;
            v176 = v175 != 0;
          }

          *(a1 + 179) = v176;
          goto LABEL_374;
        case 0x20u:
          *(a1 + 184) |= 0x20uLL;
          v108 = *(this + 1);
          v107 = *(this + 2);
          v109 = *this;
          if (v108 <= 0xFFFFFFFFFFFFFFF5 && v108 + 10 <= v107)
          {
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = (v109 + v108);
            v114 = v108 + 1;
            do
            {
              *(this + 1) = v114;
              v115 = *v113++;
              v112 |= (v115 & 0x7F) << v110;
              if ((v115 & 0x80) == 0)
              {
                goto LABEL_417;
              }

              v110 += 7;
              ++v114;
              v14 = v111++ > 8;
            }

            while (!v14);
LABEL_290:
            LODWORD(v112) = 0;
            goto LABEL_417;
          }

          v264 = 0;
          v265 = 0;
          v112 = 0;
          v17 = v107 >= v108;
          v266 = v107 - v108;
          if (!v17)
          {
            v266 = 0;
          }

          v267 = (v109 + v108);
          v268 = v108 + 1;
          break;
        case 0x21u:
          *(a1 + 184) |= 0x80uLL;
          v177 = *(this + 1);
          if (v177 > 0xFFFFFFFFFFFFFFFBLL || v177 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 48) = *(*this + v177);
          goto LABEL_372;
        case 0x22u:
          *(a1 + 184) |= 0x4000000uLL;
          v48 = *(this + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 124) = *(*this + v48);
          goto LABEL_372;
        case 0x23u:
          *(a1 + 184) |= 0x8000000uLL;
          v28 = *(this + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 128) = *(*this + v28);
          goto LABEL_372;
        case 0x24u:
          *(a1 + 184) |= 0x10000000uLL;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 132) = *(*this + v25);
          goto LABEL_372;
        case 0x25u:
          *(a1 + 184) |= 0x40uLL;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 44) = *(*this + v26);
          goto LABEL_372;
        case 0x26u:
          *(a1 + 184) |= 0x100uLL;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 52) = *(*this + v24);
          goto LABEL_372;
        case 0x27u:
          *(a1 + 184) |= 0x200uLL;
          v212 = *(this + 1);
          if (v212 > 0xFFFFFFFFFFFFFFFBLL || v212 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 56) = *(*this + v212);
          goto LABEL_372;
        case 0x28u:
          *(a1 + 184) |= 0x400000uLL;
          v187 = *(this + 1);
          if (v187 > 0xFFFFFFFFFFFFFFFBLL || v187 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 108) = *(*this + v187);
          goto LABEL_372;
        case 0x29u:
          *(a1 + 184) |= 0x800000uLL;
          v54 = *(this + 1);
          if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 112) = *(*this + v54);
          goto LABEL_372;
        case 0x2Au:
          *(a1 + 184) |= 0x1000000uLL;
          v125 = *(this + 1);
          if (v125 > 0xFFFFFFFFFFFFFFFBLL || v125 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 116) = *(*this + v125);
          goto LABEL_372;
        case 0x2Bu:
          *(a1 + 184) |= 0x40000000uLL;
          v197 = *(this + 1);
          if (v197 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 140) = *(*this + v197);
          goto LABEL_372;
        case 0x2Cu:
          *(a1 + 184) |= 0x80000000uLL;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 144) = *(*this + v23);
          goto LABEL_372;
        case 0x2Du:
          *(a1 + 184) |= 0x100000000uLL;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
          {
LABEL_215:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 148) = *(*this + v38);
LABEL_372:
            v168 = *(this + 1) + 4;
LABEL_373:
            *(this + 1) = v168;
          }

          goto LABEL_374;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_374;
          }

          v325 = 0;
          return v325 & 1;
      }

      while (1)
      {
        if (!v266)
        {
          LODWORD(v112) = 0;
          *(this + 24) = 1;
          goto LABEL_417;
        }

        v269 = *v267;
        *(this + 1) = v268;
        v112 |= (v269 & 0x7F) << v264;
        if ((v269 & 0x80) == 0)
        {
          break;
        }

        v264 += 7;
        --v266;
        ++v267;
        ++v268;
        v14 = v265++ > 8;
        if (v14)
        {
          goto LABEL_290;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v112) = 0;
      }

LABEL_417:
      *(a1 + 40) = v112;
LABEL_374:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_446:
  v325 = v4 ^ 1;
  return v325 & 1;
}

uint64_t sub_245ECB178(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 184);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 184);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 184);
  if ((v4 & 0x200000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  v5 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 164));
  v4 = *(v3 + 184);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  v6 = *(v3 + 181);
  result = PB::Writer::write(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 184);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  v7 = *(v3 + 177);
  result = PB::Writer::write(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 184);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  v8 = *(v3 + 180);
  result = PB::Writer::write(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x4000) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  v9 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 184);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 184);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  v10 = *(v3 + 176);
  result = PB::Writer::write(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  v11 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  v12 = *(v3 + 152);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  v13 = *(v3 + 172);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x100000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  v14 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  v15 = *(v3 + 88);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x10000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  v16 = *(v3 + 84);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x40000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  v17 = *(v3 + 92);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x80000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  v18 = *(v3 + 96);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x8000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  v19 = *(v3 + 80);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  v20 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  v21 = *(v3 + 168);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x1000) == 0)
  {
LABEL_26:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  v22 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  v23 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x10) == 0)
  {
LABEL_28:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  v24 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_75;
  }

LABEL_74:
  result = PB::Writer::write(this, *(v3 + 156));
  v4 = *(v3 + 184);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  v25 = *(v3 + 178);
  result = PB::Writer::write(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 184);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_77:
  v26 = *(v3 + 179);
  result = PB::Writer::write(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x20) == 0)
  {
LABEL_33:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v27 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 184);
  if ((v4 & 0x80) == 0)
  {
LABEL_34:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 184);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

LABEL_80:
  result = PB::Writer::write(this, *(v3 + 124));
  v4 = *(v3 + 184);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 184);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = PB::Writer::write(this, *(v3 + 132));
  v4 = *(v3 + 184);
  if ((v4 & 0x40) == 0)
  {
LABEL_38:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 184);
  if ((v4 & 0x100) == 0)
  {
LABEL_39:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 184);
  if ((v4 & 0x200) == 0)
  {
LABEL_40:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 184);
  if ((v4 & 0x400000) == 0)
  {
LABEL_41:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 184);
  if ((v4 & 0x800000) == 0)
  {
LABEL_42:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 184);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 184);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_44:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_90:
    result = PB::Writer::write(this, *(v3 + 144));
    if ((*(v3 + 184) & 0x100000000) == 0)
    {
      return result;
    }

    goto LABEL_91;
  }

LABEL_89:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 184);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_45:
  if ((v4 & 0x100000000) == 0)
  {
    return result;
  }

LABEL_91:
  v28 = *(v3 + 148);

  return PB::Writer::write(this, v28);
}

uint64_t sub_245ECB69C(uint64_t result)
{
  *result = &unk_2858D4BB0;
  *(result + 24) = 0;
  return result;
}

void sub_245ECB6C4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245ECB6FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D4BB0;
  *(a1 + 24) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 16);
    *(a1 + 24) = 2;
    *(a1 + 16) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 8);
    *(a1 + 24) = v2;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_245ECB760(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "endTime", *(a1 + 8));
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ECB7DC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_38;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 24) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_33:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(this))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
LABEL_34:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(a1 + 24) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245ECB9DC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_245ECBA48(uint64_t result)
{
  *result = &unk_2858D4BE8;
  *(result + 40) = 0;
  return result;
}

void sub_245ECBA70(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245ECBAA8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D4BE8;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 40) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x40) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 36);
    v3 |= 0x40u;
    *(a1 + 40) = v3;
    *(a1 + 36) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    LODWORD(v4) = *(a2 + 32);
    v3 |= 0x20u;
    *(a1 + 40) = v3;
    *(a1 + 32) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 40) = v3;
  *(a1 + 24) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 40) = v3;
  *(a1 + 20) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 40) = v3;
  *(a1 + 28) = v4;
  if ((*(a2 + 40) & 2) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 16);
  *(a1 + 40) = v3 | 2;
  *(a1 + 16) = v4;
  return *&v4;
}

uint64_t sub_245ECBB98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "asymmetryProbability", *(a1 + 16));
    v5 = *(a1 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "cycleTime", *(a1 + 20));
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "distance", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "doubleSupportPercentage", *(a1 + 28));
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  v5 = *(a1 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "stepLength", *(a1 + 32));
  if ((*(a1 + 40) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "walkingSpeed", *(a1 + 36));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ECBCBC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_61;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 40) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_53:
              *(this + 24) = 1;
              goto LABEL_57;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_56;
          case 2:
            *(a1 + 40) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_55:
            v2 = *(this + 1) + 4;
LABEL_56:
            *(this + 1) = v2;
            goto LABEL_57;
          case 3:
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_55;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_57:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_61:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245ECC014(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

void *sub_245ECC110(void *result)
{
  *result = &unk_2858D4C20;
  result[1] = 0;
  return result;
}

void sub_245ECC130(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D4C20;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245ECC1B0(PB::Base *a1)
{
  sub_245ECC130(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245ECC1E8(void *result, uint64_t a2)
{
  *result = &unk_2858D4C20;
  result[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245ECC290(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ECC30C(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245ECC528(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245ECC544(uint64_t result)
{
  *result = &unk_2858D4C58;
  *(result + 116) = 0;
  return result;
}

void sub_245ECC56C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245ECC5A4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4C58;
  *(result + 116) = 0;
  v2 = *(a2 + 116);
  if ((v2 & 0x10000) != 0)
  {
    v4 = *(a2 + 92);
    v3 = 0x10000;
    *(result + 116) = 0x10000;
    *(result + 92) = v4;
    v2 = *(a2 + 116);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 64);
    v3 |= 0x200u;
    *(result + 116) = v3;
    *(result + 64) = v5;
    v2 = *(a2 + 116);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 48);
    v3 |= 0x20u;
    *(result + 116) = v3;
    *(result + 48) = v6;
    v2 = *(a2 + 116);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 68);
  v3 |= 0x400u;
  *(result + 116) = v3;
  *(result + 68) = v7;
  v2 = *(a2 + 116);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v8 = *(a2 + 108);
  v3 |= 0x100000u;
  *(result + 116) = v3;
  *(result + 108) = v8;
  v2 = *(a2 + 116);
  if ((v2 & 0x8000) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = *(a2 + 88);
  v3 |= 0x8000u;
  *(result + 116) = v3;
  *(result + 88) = v9;
  v2 = *(a2 + 116);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a2 + 24);
  v3 |= 4u;
  *(result + 116) = v3;
  *(result + 24) = v10;
  v2 = *(a2 + 116);
  if ((v2 & 0x200000) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = *(a2 + 109);
  v3 |= 0x200000u;
  *(result + 116) = v3;
  *(result + 109) = v11;
  v2 = *(a2 + 116);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 116) = v3;
  *(result + 60) = v12;
  v2 = *(a2 + 116);
  if ((v2 & 1) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(a2 + 8);
  v3 |= 1u;
  *(result + 116) = v3;
  *(result + 8) = v13;
  v2 = *(a2 + 116);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(a2 + 16);
  v3 |= 2u;
  *(result + 116) = v3;
  *(result + 16) = v14;
  v2 = *(a2 + 116);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = *(a2 + 76);
  v3 |= 0x1000u;
  *(result + 116) = v3;
  *(result + 76) = v15;
  v2 = *(a2 + 116);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = *(a2 + 72);
  v3 |= 0x800u;
  *(result + 116) = v3;
  *(result + 72) = v16;
  v2 = *(a2 + 116);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  v17 = *(a2 + 113);
  v3 |= 0x2000000u;
  *(result + 116) = v3;
  *(result + 113) = v17;
  v2 = *(a2 + 116);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  v18 = *(a2 + 112);
  v3 |= 0x1000000u;
  *(result + 116) = v3;
  *(result + 112) = v18;
  v2 = *(a2 + 116);
  if ((v2 & 0x400000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = *(a2 + 110);
  v3 |= 0x400000u;
  *(result + 116) = v3;
  *(result + 110) = v19;
  v2 = *(a2 + 116);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = *(a2 + 114);
  v3 |= 0x4000000u;
  *(result + 116) = v3;
  *(result + 114) = v20;
  v2 = *(a2 + 116);
  if ((v2 & 0x800000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = *(a2 + 111);
  v3 |= 0x800000u;
  *(result + 116) = v3;
  *(result + 111) = v21;
  v2 = *(a2 + 116);
  if ((v2 & 0x40000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = *(a2 + 100);
  v3 |= 0x40000u;
  *(result + 116) = v3;
  *(result + 100) = v22;
  v2 = *(a2 + 116);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = *(a2 + 56);
  v3 |= 0x80u;
  *(result + 116) = v3;
  *(result + 56) = v23;
  v2 = *(a2 + 116);
  if ((v2 & 0x40) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = *(a2 + 52);
  v3 |= 0x40u;
  *(result + 116) = v3;
  *(result + 52) = v24;
  v2 = *(a2 + 116);
  if ((v2 & 0x4000) == 0)
  {
LABEL_26:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = *(a2 + 84);
  v3 |= 0x4000u;
  *(result + 116) = v3;
  *(result + 84) = v25;
  v2 = *(a2 + 116);
  if ((v2 & 0x80000) == 0)
  {
LABEL_27:
    if ((v2 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = *(a2 + 104);
  v3 |= 0x80000u;
  *(result + 116) = v3;
  *(result + 104) = v26;
  v2 = *(a2 + 116);
  if ((v2 & 8) == 0)
  {
LABEL_28:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = *(a2 + 32);
  v3 |= 8u;
  *(result + 116) = v3;
  *(result + 32) = v27;
  v2 = *(a2 + 116);
  if ((v2 & 0x10) == 0)
  {
LABEL_29:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 116) = v3;
  *(result + 40) = v28;
  v2 = *(a2 + 116);
  if ((v2 & 0x20000) == 0)
  {
LABEL_30:
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

LABEL_56:
    v30 = *(a2 + 80);
    *(result + 116) = v3 | 0x2000;
    *(result + 80) = v30;
    return result;
  }

LABEL_55:
  v29 = *(a2 + 96);
  v3 |= 0x20000u;
  *(result + 116) = v3;
  *(result + 96) = v29;
  if ((*(a2 + 116) & 0x2000) != 0)
  {
    goto LABEL_56;
  }

  return result;
}

uint64_t sub_245ECC8C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 116);
  if ((v5 & 0x20) != 0)
  {
    v7 = *(a1 + 48);
    PB::TextFormatter::format(this, "confidence");
    v5 = *(a1 + 116);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "drivingArmLikelihoodSum", *(a1 + 52));
  v5 = *(a1 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "drivingStowedLikelihoodSum", *(a1 + 56));
  v5 = *(a1 + 116);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "estExitTime", *(a1 + 8));
  v5 = *(a1 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v8 = *(a1 + 60);
  PB::TextFormatter::format(this, "exitState");
  v5 = *(a1 + 116);
  if ((v5 & 0x100000) == 0)
  {
LABEL_7:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  v9 = *(a1 + 108);
  PB::TextFormatter::format(this, "isStanding");
  v5 = *(a1 + 116);
  if ((v5 & 0x200000) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v10 = *(a1 + 109);
  PB::TextFormatter::format(this, "isVehicleConnected");
  v5 = *(a1 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = *(a1 + 64);
  PB::TextFormatter::format(this, "mountedConfidence");
  v5 = *(a1 + 116);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = *(a1 + 68);
  PB::TextFormatter::format(this, "mountedState");
  v5 = *(a1 + 116);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = *(a1 + 72);
  PB::TextFormatter::format(this, "rawConfidence");
  v5 = *(a1 + 116);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(a1 + 76);
  PB::TextFormatter::format(this, "rawType");
  v5 = *(a1 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = *(a1 + 80);
  PB::TextFormatter::format(this, "source");
  v5 = *(a1 + 116);
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "ssLikelihoodSum", *(a1 + 84));
  v5 = *(a1 + 116);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  v5 = *(a1 + 116);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "tilt", *(a1 + 88));
  v5 = *(a1 + 116);
  if ((v5 & 4) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 24));
  v5 = *(a1 + 116);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = *(a1 + 92);
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 116);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = *(a1 + 96);
  PB::TextFormatter::format(this, "typeYouth");
  v5 = *(a1 + 116);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = *(a1 + 110);
  PB::TextFormatter::format(this, "vehicularBasebandHint");
  v5 = *(a1 + 116);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = *(a1 + 111);
  PB::TextFormatter::format(this, "vehicularBtHint");
  v5 = *(a1 + 116);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = *(a1 + 100);
  PB::TextFormatter::format(this, "vehicularConfidence");
  v5 = *(a1 + 116);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = *(a1 + 112);
  PB::TextFormatter::format(this, "vehicularGpsHint");
  v5 = *(a1 + 116);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v22 = *(a1 + 113);
  PB::TextFormatter::format(this, "vehicularMotionHint");
  v5 = *(a1 + 116);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v5 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v23 = *(a1 + 114);
  PB::TextFormatter::format(this, "vehicularWifiHint");
  v5 = *(a1 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_26:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "workoutDetectionTime", *(a1 + 32));
  v5 = *(a1 + 116);
  if ((v5 & 0x80000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  v24 = *(a1 + 104);
  PB::TextFormatter::format(this, "workoutDetectionType");
  if ((*(a1 + 116) & 0x10) != 0)
  {
LABEL_28:
    v6 = *(a1 + 40);
    PB::TextFormatter::format(this, "workoutEscalationTime");
  }

LABEL_29:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ECCC68(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_313;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 0x10000u;
          v23 = *(this + 1);
          v22 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
          {
            v203 = 0;
            v204 = 0;
            v27 = 0;
            v17 = v22 >= v23;
            v205 = v22 - v23;
            if (!v17)
            {
              v205 = 0;
            }

            v206 = (v24 + v23);
            v207 = v23 + 1;
            do
            {
              if (!v205)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_293;
              }

              v208 = *v206;
              *(this + 1) = v207;
              v27 |= (v208 & 0x7F) << v203;
              if ((v208 & 0x80) == 0)
              {
                if (*(this + 24))
                {
                  LODWORD(v27) = 0;
                }

                goto LABEL_293;
              }

              v203 += 7;
              --v205;
              ++v206;
              ++v207;
              v14 = v204++ > 8;
            }

            while (!v14);
LABEL_211:
            LODWORD(v27) = 0;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              *(this + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                goto LABEL_211;
              }
            }
          }

LABEL_293:
          *(a1 + 92) = v27;
          goto LABEL_309;
        case 2u:
          *(a1 + 116) |= 0x200u;
          v107 = *(this + 1);
          v106 = *(this + 2);
          v108 = *this;
          if (v107 <= 0xFFFFFFFFFFFFFFF5 && v107 + 10 <= v106)
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            do
            {
              *(this + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_296;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
            }

            while (!v14);
LABEL_219:
            LODWORD(v111) = 0;
            goto LABEL_296;
          }

          v209 = 0;
          v210 = 0;
          v111 = 0;
          v17 = v106 >= v107;
          v211 = v106 - v107;
          if (!v17)
          {
            v211 = 0;
          }

          v212 = (v108 + v107);
          v213 = v107 + 1;
          while (2)
          {
            if (v211)
            {
              v214 = *v212;
              *(this + 1) = v213;
              v111 |= (v214 & 0x7F) << v209;
              if (v214 < 0)
              {
                v209 += 7;
                --v211;
                ++v212;
                ++v213;
                v14 = v210++ > 8;
                if (v14)
                {
                  goto LABEL_219;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v111) = 0;
              }
            }

            else
            {
              LODWORD(v111) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_296:
          *(a1 + 64) = v111;
          goto LABEL_309;
        case 3u:
          *(a1 + 116) |= 0x20u;
          v81 = *(this + 1);
          v80 = *(this + 2);
          v82 = *this;
          if (v81 <= 0xFFFFFFFFFFFFFFF5 && v81 + 10 <= v80)
          {
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v86 = (v82 + v81);
            v87 = v81 + 1;
            do
            {
              *(this + 1) = v87;
              v88 = *v86++;
              v85 |= (v88 & 0x7F) << v83;
              if ((v88 & 0x80) == 0)
              {
                goto LABEL_287;
              }

              v83 += 7;
              ++v87;
              v14 = v84++ > 8;
            }

            while (!v14);
LABEL_193:
            LODWORD(v85) = 0;
            goto LABEL_287;
          }

          v191 = 0;
          v192 = 0;
          v85 = 0;
          v17 = v80 >= v81;
          v193 = v80 - v81;
          if (!v17)
          {
            v193 = 0;
          }

          v194 = (v82 + v81);
          v195 = v81 + 1;
          while (2)
          {
            if (v193)
            {
              v196 = *v194;
              *(this + 1) = v195;
              v85 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                --v193;
                ++v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_193;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v85) = 0;
              }
            }

            else
            {
              LODWORD(v85) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_287:
          *(a1 + 48) = v85;
          goto LABEL_309;
        case 4u:
          *(a1 + 116) |= 0x400u;
          v94 = *(this + 1);
          v93 = *(this + 2);
          v95 = *this;
          if (v94 <= 0xFFFFFFFFFFFFFFF5 && v94 + 10 <= v93)
          {
            v96 = 0;
            v97 = 0;
            v98 = 0;
            v99 = (v95 + v94);
            v100 = v94 + 1;
            do
            {
              *(this + 1) = v100;
              v101 = *v99++;
              v98 |= (v101 & 0x7F) << v96;
              if ((v101 & 0x80) == 0)
              {
                goto LABEL_290;
              }

              v96 += 7;
              ++v100;
              v14 = v97++ > 8;
            }

            while (!v14);
LABEL_201:
            LODWORD(v98) = 0;
            goto LABEL_290;
          }

          v197 = 0;
          v198 = 0;
          v98 = 0;
          v17 = v93 >= v94;
          v199 = v93 - v94;
          if (!v17)
          {
            v199 = 0;
          }

          v200 = (v95 + v94);
          v201 = v94 + 1;
          while (2)
          {
            if (v199)
            {
              v202 = *v200;
              *(this + 1) = v201;
              v98 |= (v202 & 0x7F) << v197;
              if (v202 < 0)
              {
                v197 += 7;
                --v199;
                ++v200;
                ++v201;
                v14 = v198++ > 8;
                if (v14)
                {
                  goto LABEL_201;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v98) = 0;
              }
            }

            else
            {
              LODWORD(v98) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_290:
          *(a1 + 68) = v98;
          goto LABEL_309;
        case 5u:
          *(a1 + 116) |= 0x100000u;
          v48 = *(this + 1);
          if (v48 >= *(this + 2))
          {
            v51 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v49 = v48 + 1;
            v50 = *(*this + v48);
            *(this + 1) = v49;
            v51 = v50 != 0;
          }

          *(a1 + 108) = v51;
          goto LABEL_309;
        case 6u:
          *(a1 + 116) |= 0x8000u;
          v120 = *(this + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 88) = *(*this + v120);
          goto LABEL_135;
        case 7u:
          *(a1 + 116) |= 4u;
          v126 = *(this + 1);
          if (v126 > 0xFFFFFFFFFFFFFFF7 || v126 + 8 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 24) = *(*this + v126);
          goto LABEL_259;
        case 8u:
          *(a1 + 116) |= 0x200000u;
          v102 = *(this + 1);
          if (v102 >= *(this + 2))
          {
            v105 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v103 = v102 + 1;
            v104 = *(*this + v102);
            *(this + 1) = v103;
            v105 = v104 != 0;
          }

          *(a1 + 109) = v105;
          goto LABEL_309;
        case 9u:
          *(a1 + 116) |= 0x100u;
          v138 = *(this + 1);
          v137 = *(this + 2);
          v139 = *this;
          if (v138 <= 0xFFFFFFFFFFFFFFF5 && v138 + 10 <= v137)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = (v139 + v138);
            v144 = v138 + 1;
            do
            {
              *(this + 1) = v144;
              v145 = *v143++;
              v142 |= (v145 & 0x7F) << v140;
              if ((v145 & 0x80) == 0)
              {
                goto LABEL_302;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_239:
            LODWORD(v142) = 0;
            goto LABEL_302;
          }

          v221 = 0;
          v222 = 0;
          v142 = 0;
          v17 = v137 >= v138;
          v223 = v137 - v138;
          if (!v17)
          {
            v223 = 0;
          }

          v224 = (v139 + v138);
          v225 = v138 + 1;
          while (2)
          {
            if (v223)
            {
              v226 = *v224;
              *(this + 1) = v225;
              v142 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                --v223;
                ++v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_239;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v142) = 0;
              }
            }

            else
            {
              LODWORD(v142) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_302:
          *(a1 + 60) = v142;
          goto LABEL_309;
        case 0xAu:
          *(a1 + 116) |= 1u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 8) = *(*this + v61);
          goto LABEL_259;
        case 0xBu:
          *(a1 + 116) |= 2u;
          v136 = *(this + 1);
          if (v136 > 0xFFFFFFFFFFFFFFF7 || v136 + 8 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 16) = *(*this + v136);
          goto LABEL_259;
        case 0xCu:
          *(a1 + 116) |= 0x1000u;
          v40 = *(this + 1);
          v39 = *(this + 2);
          v41 = *this;
          if (v40 <= 0xFFFFFFFFFFFFFFF5 && v40 + 10 <= v39)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            do
            {
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_275;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_159:
            LODWORD(v44) = 0;
            goto LABEL_275;
          }

          v167 = 0;
          v168 = 0;
          v44 = 0;
          v17 = v39 >= v40;
          v169 = v39 - v40;
          if (!v17)
          {
            v169 = 0;
          }

          v170 = (v41 + v40);
          v171 = v40 + 1;
          while (2)
          {
            if (v169)
            {
              v172 = *v170;
              *(this + 1) = v171;
              v44 |= (v172 & 0x7F) << v167;
              if (v172 < 0)
              {
                v167 += 7;
                --v169;
                ++v170;
                ++v171;
                v14 = v168++ > 8;
                if (v14)
                {
                  goto LABEL_159;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v44) = 0;
              }
            }

            else
            {
              LODWORD(v44) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_275:
          *(a1 + 76) = v44;
          goto LABEL_309;
        case 0xDu:
          *(a1 + 116) |= 0x800u;
          v53 = *(this + 1);
          v52 = *(this + 2);
          v54 = *this;
          if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = (v54 + v53);
            v59 = v53 + 1;
            do
            {
              *(this + 1) = v59;
              v60 = *v58++;
              v57 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_278;
              }

              v55 += 7;
              ++v59;
              v14 = v56++ > 8;
            }

            while (!v14);
LABEL_167:
            LODWORD(v57) = 0;
            goto LABEL_278;
          }

          v173 = 0;
          v174 = 0;
          v57 = 0;
          v17 = v52 >= v53;
          v175 = v52 - v53;
          if (!v17)
          {
            v175 = 0;
          }

          v176 = (v54 + v53);
          v177 = v53 + 1;
          while (2)
          {
            if (v175)
            {
              v178 = *v176;
              *(this + 1) = v177;
              v57 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                --v175;
                ++v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_167;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v57) = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_278:
          *(a1 + 72) = v57;
          goto LABEL_309;
        case 0xEu:
          *(a1 + 116) |= 0x2000000u;
          v122 = *(this + 1);
          if (v122 >= *(this + 2))
          {
            v125 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v123 = v122 + 1;
            v124 = *(*this + v122);
            *(this + 1) = v123;
            v125 = v124 != 0;
          }

          *(a1 + 113) = v125;
          goto LABEL_309;
        case 0xFu:
          *(a1 + 116) |= 0x1000000u;
          v35 = *(this + 1);
          if (v35 >= *(this + 2))
          {
            v38 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = v35 + 1;
            v37 = *(*this + v35);
            *(this + 1) = v36;
            v38 = v37 != 0;
          }

          *(a1 + 112) = v38;
          goto LABEL_309;
        case 0x10u:
          *(a1 + 116) |= 0x400000u;
          v89 = *(this + 1);
          if (v89 >= *(this + 2))
          {
            v92 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v90 = v89 + 1;
            v91 = *(*this + v89);
            *(this + 1) = v90;
            v92 = v91 != 0;
          }

          *(a1 + 110) = v92;
          goto LABEL_309;
        case 0x11u:
          *(a1 + 116) |= 0x4000000u;
          v31 = *(this + 1);
          if (v31 >= *(this + 2))
          {
            v34 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = v31 + 1;
            v33 = *(*this + v31);
            *(this + 1) = v32;
            v34 = v33 != 0;
          }

          *(a1 + 114) = v34;
          goto LABEL_309;
        case 0x12u:
          *(a1 + 116) |= 0x800000u;
          v115 = *(this + 1);
          if (v115 >= *(this + 2))
          {
            v118 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v116 = v115 + 1;
            v117 = *(*this + v115);
            *(this + 1) = v116;
            v118 = v117 != 0;
          }

          *(a1 + 111) = v118;
          goto LABEL_309;
        case 0x13u:
          *(a1 + 116) |= 0x40000u;
          v128 = *(this + 1);
          v127 = *(this + 2);
          v129 = *this;
          if (v128 <= 0xFFFFFFFFFFFFFFF5 && v128 + 10 <= v127)
          {
            v130 = 0;
            v131 = 0;
            v132 = 0;
            v133 = (v129 + v128);
            v134 = v128 + 1;
            do
            {
              *(this + 1) = v134;
              v135 = *v133++;
              v132 |= (v135 & 0x7F) << v130;
              if ((v135 & 0x80) == 0)
              {
                goto LABEL_299;
              }

              v130 += 7;
              ++v134;
              v14 = v131++ > 8;
            }

            while (!v14);
LABEL_231:
            LODWORD(v132) = 0;
            goto LABEL_299;
          }

          v215 = 0;
          v216 = 0;
          v132 = 0;
          v17 = v127 >= v128;
          v217 = v127 - v128;
          if (!v17)
          {
            v217 = 0;
          }

          v218 = (v129 + v128);
          v219 = v128 + 1;
          while (2)
          {
            if (v217)
            {
              v220 = *v218;
              *(this + 1) = v219;
              v132 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                --v217;
                ++v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_231;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v132) = 0;
              }
            }

            else
            {
              LODWORD(v132) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_299:
          *(a1 + 100) = v132;
          goto LABEL_309;
        case 0x14u:
          *(a1 + 116) |= 0x80u;
          v155 = *(this + 1);
          if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 56) = *(*this + v155);
          goto LABEL_135;
        case 0x15u:
          *(a1 + 116) |= 0x40u;
          v119 = *(this + 1);
          if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 52) = *(*this + v119);
          goto LABEL_135;
        case 0x16u:
          *(a1 + 116) |= 0x4000u;
          v121 = *(this + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 84) = *(*this + v121);
LABEL_135:
          v156 = *(this + 1) + 4;
          goto LABEL_260;
        case 0x17u:
          *(a1 + 116) |= 0x80000u;
          v147 = *(this + 1);
          v146 = *(this + 2);
          v148 = *this;
          if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = (v148 + v147);
            v153 = v147 + 1;
            do
            {
              *(this + 1) = v153;
              v154 = *v152++;
              v151 |= (v154 & 0x7F) << v149;
              if ((v154 & 0x80) == 0)
              {
                goto LABEL_305;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_249:
            LODWORD(v151) = 0;
            goto LABEL_305;
          }

          v227 = 0;
          v228 = 0;
          v151 = 0;
          v17 = v146 >= v147;
          v229 = v146 - v147;
          if (!v17)
          {
            v229 = 0;
          }

          v230 = (v148 + v147);
          v231 = v147 + 1;
          while (2)
          {
            if (v229)
            {
              v232 = *v230;
              *(this + 1) = v231;
              v151 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_249;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v151) = 0;
              }
            }

            else
            {
              LODWORD(v151) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_305:
          *(a1 + 104) = v151;
          goto LABEL_309;
        case 0x18u:
          *(a1 + 116) |= 8u;
          v157 = *(this + 1);
          if (v157 <= 0xFFFFFFFFFFFFFFF7 && v157 + 8 <= *(this + 2))
          {
            *(a1 + 32) = *(*this + v157);
LABEL_259:
            v156 = *(this + 1) + 8;
LABEL_260:
            *(this + 1) = v156;
          }

          else
          {
LABEL_138:
            *(this + 24) = 1;
          }

          goto LABEL_309;
        case 0x19u:
          *(a1 + 116) |= 0x10u;
          v72 = *(this + 1);
          v71 = *(this + 2);
          v73 = *this;
          if (v72 <= 0xFFFFFFFFFFFFFFF5 && v72 + 10 <= v71)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = (v73 + v72);
            v78 = v72 + 1;
            do
            {
              *(this + 1) = v78;
              v79 = *v77++;
              v76 |= (v79 & 0x7F) << v74;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_284;
              }

              v74 += 7;
              ++v78;
              v14 = v75++ > 8;
            }

            while (!v14);
LABEL_185:
            v76 = 0;
            goto LABEL_284;
          }

          v185 = 0;
          v186 = 0;
          v76 = 0;
          v17 = v71 >= v72;
          v187 = v71 - v72;
          if (!v17)
          {
            v187 = 0;
          }

          v188 = (v73 + v72);
          v189 = v72 + 1;
          while (2)
          {
            if (v187)
            {
              v190 = *v188;
              *(this + 1) = v189;
              v76 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                --v187;
                ++v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_185;
                }

                continue;
              }

              if (*(this + 24))
              {
                v76 = 0;
              }
            }

            else
            {
              v76 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_284:
          *(a1 + 40) = v76;
          goto LABEL_309;
        case 0x1Au:
          *(a1 + 116) |= 0x20000u;
          v63 = *(this + 1);
          v62 = *(this + 2);
          v64 = *this;
          if (v63 <= 0xFFFFFFFFFFFFFFF5 && v63 + 10 <= v62)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = (v64 + v63);
            v69 = v63 + 1;
            do
            {
              *(this + 1) = v69;
              v70 = *v68++;
              v67 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                goto LABEL_281;
              }

              v65 += 7;
              ++v69;
              v14 = v66++ > 8;
            }

            while (!v14);
LABEL_177:
            LODWORD(v67) = 0;
            goto LABEL_281;
          }

          v179 = 0;
          v180 = 0;
          v67 = 0;
          v17 = v62 >= v63;
          v181 = v62 - v63;
          if (!v17)
          {
            v181 = 0;
          }

          v182 = (v64 + v63);
          v183 = v63 + 1;
          while (2)
          {
            if (v181)
            {
              v184 = *v182;
              *(this + 1) = v183;
              v67 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                --v181;
                ++v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_177;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v67) = 0;
              }
            }

            else
            {
              LODWORD(v67) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_281:
          *(a1 + 96) = v67;
          goto LABEL_309;
        case 0x1Bu:
          *(a1 + 116) |= 0x2000u;
          v159 = *(this + 1);
          v158 = *(this + 2);
          v160 = *this;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(this + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_308;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_257:
            LODWORD(v163) = 0;
            goto LABEL_308;
          }

          v233 = 0;
          v234 = 0;
          v163 = 0;
          v17 = v158 >= v159;
          v235 = v158 - v159;
          if (!v17)
          {
            v235 = 0;
          }

          v236 = (v160 + v159);
          v237 = v159 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_309;
          }

          v240 = 0;
          return v240 & 1;
      }

      while (1)
      {
        if (!v235)
        {
          LODWORD(v163) = 0;
          *(this + 24) = 1;
          goto LABEL_308;
        }

        v238 = *v236;
        *(this + 1) = v237;
        v163 |= (v238 & 0x7F) << v233;
        if ((v238 & 0x80) == 0)
        {
          break;
        }

        v233 += 7;
        --v235;
        ++v236;
        ++v237;
        v14 = v234++ > 8;
        if (v14)
        {
          goto LABEL_257;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v163) = 0;
      }

LABEL_308:
      *(a1 + 80) = v163;
LABEL_309:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_313:
  v240 = v4 ^ 1;
  return v240 & 1;
}

uint64_t sub_245ECDDA4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 116);
  if ((v4 & 0x10000) != 0)
  {
    v5 = *(result + 92);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  v6 = *(v3 + 64);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  v7 = *(v3 + 48);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  v8 = *(v3 + 68);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  v9 = *(v3 + 108);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(v3 + 109);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = *(v3 + 60);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  v12 = *(v3 + 76);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  v13 = *(v3 + 72);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  v14 = *(v3 + 113);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  v15 = *(v3 + 112);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  v16 = *(v3 + 110);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v17 = *(v3 + 114);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x800000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = *(v3 + 111);
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = *(v3 + 100);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) == 0)
  {
LABEL_23:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_24:
    if ((v4 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  v20 = *(v3 + 104);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_25:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_26:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    v22 = *(v3 + 96);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 116) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_55;
  }

LABEL_53:
  v21 = *(v3 + 40);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v4 & 0x2000) == 0)
  {
    return result;
  }

LABEL_55:
  v23 = *(v3 + 80);

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245ECE0D0(uint64_t result)
{
  *result = &unk_2858D4C90;
  *(result + 36) = 0;
  return result;
}

void sub_245ECE0F8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245ECE130(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4C90;
  *(result + 36) = 0;
  v2 = *(a2 + 36);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 36) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 28);
    v3 |= 0x10u;
    *(result + 36) = v3;
    *(result + 28) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 8u;
    *(result + 36) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 36);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 34);
  v3 |= 0x80u;
  *(result + 36) = v3;
  *(result + 34) = v7;
  v2 = *(a2 + 36);
  if ((v2 & 0x100) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 35);
  v3 |= 0x100u;
  *(result + 36) = v3;
  *(result + 35) = v8;
  v2 = *(a2 + 36);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 32);
  v3 |= 0x20u;
  *(result + 36) = v3;
  *(result + 32) = v9;
  v2 = *(a2 + 36);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 33);
  v3 |= 0x40u;
  *(result + 36) = v3;
  *(result + 33) = v10;
  v2 = *(a2 + 36);
  if ((v2 & 2) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_20:
    v12 = *(a2 + 20);
    *(result + 36) = v3 | 4;
    *(result + 20) = v12;
    return result;
  }

LABEL_19:
  v11 = *(a2 + 16);
  v3 |= 2u;
  *(result + 36) = v3;
  *(result + 16) = v11;
  if ((*(a2 + 36) & 4) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245ECE258(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if (v5)
  {
    PB::TextFormatter::format(this, "iostime", *(a1 + 8));
    v5 = *(a1 + 36);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(a1 + 16);
  PB::TextFormatter::format(this, "outdoorCyclingStateMachineFrom");
  v5 = *(a1 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a1 + 20);
  PB::TextFormatter::format(this, "outdoorCyclingStateMachineTo");
  v5 = *(a1 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a1 + 24);
  PB::TextFormatter::format(this, "workoutLocationType");
  v5 = *(a1 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a1 + 32);
  PB::TextFormatter::format(this, "workoutPause");
  v5 = *(a1 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a1 + 33);
  PB::TextFormatter::format(this, "workoutResume");
  v5 = *(a1 + 36);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = *(a1 + 34);
  PB::TextFormatter::format(this, "workoutStart");
  v5 = *(a1 + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v13 = *(a1 + 35);
  PB::TextFormatter::format(this, "workoutStop");
  if ((*(a1 + 36) & 0x10) != 0)
  {
LABEL_10:
    v6 = *(a1 + 28);
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ECE3BC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_140;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 10)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 36) |= 8u;
            v43 = *(this + 1);
            v2 = *(this + 2);
            v44 = *this;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v70 = 0;
              v71 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(this + 1);
              }

              v72 = v2 - v43;
              v73 = (v44 + v43);
              v74 = v43 + 1;
              while (1)
              {
                if (!v72)
                {
                  LODWORD(v47) = 0;
                  *(this + 24) = 1;
                  goto LABEL_127;
                }

                v75 = v74;
                v76 = *v73;
                *(this + 1) = v75;
                v47 |= (v76 & 0x7F) << v70;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                --v72;
                ++v73;
                v74 = v75 + 1;
                v14 = v71++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  goto LABEL_126;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_126:
              v2 = v75;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = (v44 + v43);
              v49 = v43 + 1;
              while (1)
              {
                v2 = v49;
                *(this + 1) = v49;
                v50 = *v48++;
                v47 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  break;
                }
              }
            }

LABEL_127:
            *(a1 + 24) = v47;
            goto LABEL_136;
          }

          if (v22 == 10)
          {
            *(a1 + 36) |= 0x80u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v40 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v39 = *(*this + v2++);
              *(this + 1) = v2;
              v40 = v39 != 0;
            }

            *(a1 + 34) = v40;
            goto LABEL_136;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 36) |= 1u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
            {
              *(a1 + 8) = *(*this + v2);
              v2 = *(this + 1) + 8;
              *(this + 1) = v2;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_136;
          }

          if (v22 == 2)
          {
            *(a1 + 36) |= 0x10u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v65 = v2 - v31;
              v66 = (v32 + v31);
              v67 = v31 + 1;
              while (1)
              {
                if (!v65)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_123;
                }

                v68 = v67;
                v69 = *v66;
                *(this + 1) = v68;
                v35 |= (v69 & 0x7F) << v63;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                --v65;
                ++v66;
                v67 = v68 + 1;
                v14 = v64++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_122;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_122:
              v2 = v68;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(this + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_123:
            *(a1 + 28) = v35;
            goto LABEL_136;
          }
        }
      }

      else if (v22 <= 12)
      {
        if (v22 == 11)
        {
          *(a1 + 36) |= 0x100u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v54 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v53 = *(*this + v2++);
            *(this + 1) = v2;
            v54 = v53 != 0;
          }

          *(a1 + 35) = v54;
          goto LABEL_136;
        }

        if (v22 == 12)
        {
          *(a1 + 36) |= 0x20u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v42 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v41 = *(*this + v2++);
            *(this + 1) = v2;
            v42 = v41 != 0;
          }

          *(a1 + 32) = v42;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v22)
        {
          case 0xD:
            *(a1 + 36) |= 0x40u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v52 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v51 = *(*this + v2++);
              *(this + 1) = v2;
              v52 = v51 != 0;
            }

            *(a1 + 33) = v52;
            goto LABEL_136;
          case 0x15:
            *(a1 + 36) |= 2u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v84 = 0;
              v85 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v86 = v2 - v55;
              v87 = (v56 + v55);
              v88 = v55 + 1;
              while (1)
              {
                if (!v86)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_135;
                }

                v89 = v88;
                v90 = *v87;
                *(this + 1) = v89;
                v59 |= (v90 & 0x7F) << v84;
                if ((v90 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                --v86;
                ++v87;
                v88 = v89 + 1;
                v14 = v85++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_134;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_134:
              v2 = v89;
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = (v56 + v55);
              v61 = v55 + 1;
              while (1)
              {
                v2 = v61;
                *(this + 1) = v61;
                v62 = *v60++;
                v59 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  break;
                }
              }
            }

LABEL_135:
            *(a1 + 16) = v59;
            goto LABEL_136;
          case 0x16:
            *(a1 + 36) |= 4u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v77 = 0;
              v78 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v79 = v2 - v23;
              v80 = (v24 + v23);
              v81 = v23 + 1;
              while (1)
              {
                if (!v79)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_131;
                }

                v82 = v81;
                v83 = *v80;
                *(this + 1) = v82;
                v27 |= (v83 & 0x7F) << v77;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                --v79;
                ++v80;
                v81 = v82 + 1;
                v14 = v78++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_130;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_130:
              v2 = v82;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(this + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_131:
            *(a1 + 20) = v27;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v91 = 0;
        return v91 & 1;
      }

      v2 = *(this + 1);
LABEL_136:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_140:
  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t sub_245ECEAF4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 36);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(v3 + 28);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = *(v3 + 24);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = *(v3 + 34);
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(v3 + 35);
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(v3 + 32);
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v11 = *(v3 + 16);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  v10 = *(v3 + 33);
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_19:
  v12 = *(v3 + 20);

  return PB::Writer::writeVarInt(this);
}

void *sub_245ECEC28(void *result)
{
  *result = &unk_2858D4CC8;
  result[1] = 0;
  result[3] = 0;
  return result;
}

void sub_245ECEC4C(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D4CC8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245ECECCC(PB::Base *a1)
{
  sub_245ECEC4C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245ECED04(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4CC8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
    v3 = *(a2 + 24);
    *(result + 28) = 2;
    *(result + 24) = v3;
    v2 = 3;
    if ((*(a2 + 28) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 28))
  {
LABEL_5:
    v4 = *(a2 + 16);
    *(result + 28) = v2;
    *(result + 16) = v4;
  }

LABEL_6:
  if (*(a2 + 8))
  {
    operator new();
  }

  return result;
}

uint64_t sub_245ECEDF0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "impulse");
  }

  v6 = *(a1 + 28);
  if ((v6 & 2) != 0)
  {
    v7 = *(a1 + 24);
    PB::TextFormatter::format(this, "state");
    v6 = *(a1 + 28);
  }

  if (v6)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ECEEA4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(a1 + 28) |= 1u;
        v32 = *(this + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v32);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if (v22 == 1)
      {
        *(a1 + 28) |= 2u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v35 = v23 - v24;
          if (!v17)
          {
            v35 = 0;
          }

          v36 = (v25 + v24);
          v37 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v38 = *v36;
            *(this + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            --v35;
            ++v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v28) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_50:
        *(a1 + 24) = v28;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_245ECF234(uint64_t result)
{
  *result = &unk_2858D5438;
  *(result + 20) = 0;
  return result;
}

uint64_t sub_245ECF258(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 2) != 0)
  {
    v5 = *(result + 24);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 28);
  }

  if (v4)
  {
    result = PB::Writer::write(this, *(v3 + 16));
  }

  v6 = *(v3 + 8);
  if (v6)
  {

    return PB::Writer::writeSubmessage(this, v6);
  }

  return result;
}

uint64_t sub_245ECF2D8(uint64_t result)
{
  *result = &unk_2858D4D00;
  *(result + 112) = 0;
  *(result + 180) = 0;
  return result;
}

void sub_245ECF300(PB::Base *this)
{
  *this = &unk_2858D4D00;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245ECF384(PB::Base *a1)
{
  sub_245ECF300(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245ECF3BC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4D00;
  *(result + 112) = 0;
  *(result + 180) = 0;
  v2 = *(a2 + 180);
  if ((v2 & 0x800) != 0)
  {
    v4 = *(a2 + 96);
    v3 = 2048;
    *(result + 180) = 2048;
    *(result + 96) = v4;
    v2 = *(a2 + 180);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_5:
    v5 = *(a2 + 56);
    v3 |= 0x40u;
    *(result + 180) = v3;
    *(result + 56) = v5;
    v2 = *(a2 + 180);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    v10 = *(a2 + 64);
    v3 |= 0x80u;
    *(result + 180) = v3;
    *(result + 64) = v10;
    v2 = *(a2 + 180);
    if ((v2 & 0x200) == 0)
    {
LABEL_8:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 80);
  v3 |= 0x200u;
  *(result + 180) = v3;
  *(result + 80) = v11;
  v2 = *(a2 + 180);
  if ((v2 & 0x400) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = *(a2 + 88);
  v3 |= 0x400u;
  *(result + 180) = v3;
  *(result + 88) = v12;
  v2 = *(a2 + 180);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v13 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 180) = v3;
  *(result + 48) = v13;
  v2 = *(a2 + 180);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v14 = *(a2 + 16);
  v3 |= 2u;
  *(result + 180) = v3;
  *(result + 16) = v14;
  v2 = *(a2 + 180);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v15 = *(a2 + 24);
  v3 |= 4u;
  *(result + 180) = v3;
  *(result + 24) = v15;
  v2 = *(a2 + 180);
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v16 = *(a2 + 8);
  v3 |= 1u;
  *(result + 180) = v3;
  *(result + 8) = v16;
  v2 = *(a2 + 180);
  if ((v2 & 0x2000) == 0)
  {
LABEL_14:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v17 = *(a2 + 120);
  v3 |= 0x2000u;
  *(result + 180) = v3;
  *(result + 120) = v17;
  v2 = *(a2 + 180);
  if ((v2 & 0x800000) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v18 = *(a2 + 164);
  v3 |= 0x800000u;
  *(result + 180) = v3;
  *(result + 164) = v18;
  v2 = *(a2 + 180);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v19 = *(a2 + 104);
  v3 |= 0x1000u;
  *(result + 180) = v3;
  *(result + 104) = v19;
  v2 = *(a2 + 180);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v20 = *(a2 + 168);
  v3 |= 0x1000000u;
  *(result + 180) = v3;
  *(result + 168) = v20;
  v2 = *(a2 + 180);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v21 = *(a2 + 172);
  v3 |= 0x2000000u;
  *(result + 180) = v3;
  *(result + 172) = v21;
  v2 = *(a2 + 180);
  if ((v2 & 0x20000) == 0)
  {
LABEL_19:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v22 = *(a2 + 140);
  v3 |= 0x20000u;
  *(result + 180) = v3;
  *(result + 140) = v22;
  v2 = *(a2 + 180);
  if ((v2 & 0x80000) == 0)
  {
LABEL_20:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v23 = *(a2 + 148);
  v3 |= 0x80000u;
  *(result + 180) = v3;
  *(result + 148) = v23;
  v2 = *(a2 + 180);
  if ((v2 & 0x40000) == 0)
  {
LABEL_21:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v24 = *(a2 + 144);
  v3 |= 0x40000u;
  *(result + 180) = v3;
  *(result + 144) = v24;
  v2 = *(a2 + 180);
  if ((v2 & 0x100) == 0)
  {
LABEL_22:
    if ((v2 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = *(a2 + 72);
  v3 |= 0x100u;
  *(result + 180) = v3;
  *(result + 72) = v25;
  v2 = *(a2 + 180);
  if ((v2 & 8) == 0)
  {
LABEL_23:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 32);
  v3 |= 8u;
  *(result + 180) = v3;
  *(result + 32) = v26;
  v2 = *(a2 + 180);
  if ((v2 & 0x10) == 0)
  {
LABEL_24:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 180) = v3;
  *(result + 40) = v27;
  v2 = *(a2 + 180);
  if ((v2 & 0x200000) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(a2 + 156);
  v3 |= 0x200000u;
  *(result + 180) = v3;
  *(result + 156) = v28;
  v2 = *(a2 + 180);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v3 |= 0x4000000u;
  *(result + 176) = *(a2 + 176);
  *(result + 180) = v3;
  v2 = *(a2 + 180);
  if ((v2 & 0x400000) == 0)
  {
LABEL_27:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v29 = *(a2 + 160);
  v3 |= 0x400000u;
  *(result + 180) = v3;
  *(result + 160) = v29;
  v2 = *(a2 + 180);
  if ((v2 & 0x10000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_58:
  v30 = *(a2 + 136);
  v3 |= 0x10000u;
  *(result + 180) = v3;
  *(result + 136) = v30;
  if ((*(a2 + 180) & 0x100000) != 0)
  {
LABEL_29:
    v6 = *(a2 + 152);
    *(result + 180) = v3 | 0x100000;
    *(result + 152) = v6;
  }

LABEL_30:
  if (*(a2 + 112))
  {
    operator new();
  }

  v7 = *(a2 + 180);
  if ((v7 & 0x8000) != 0)
  {
    v8 = *(a2 + 132);
    *(result + 180) |= 0x8000u;
    *(result + 132) = v8;
    v7 = *(a2 + 180);
  }

  if ((v7 & 0x4000) != 0)
  {
    v9 = *(a2 + 128);
    *(result + 180) |= 0x4000u;
    *(result + 128) = v9;
  }

  return result;
}

uint64_t sub_245ECF760(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 180);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitude", *(a1 + 8));
    v5 = *(a1 + 180);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "course", *(a1 + 16));
  v5 = *(a1 + 180);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "courseAccuracy", *(a1 + 24));
  v5 = *(a1 + 180);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "deltaDistance", *(a1 + 32));
  v5 = *(a1 + 180);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "deltaDistanceAccuracy", *(a1 + 40));
  v5 = *(a1 + 180);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "demConfidence", *(a1 + 128));
  v5 = *(a1 + 180);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = *(a1 + 132);
  PB::TextFormatter::format(this, "demNumContiguousFlatPoints");
  v5 = *(a1 + 180);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = *(a1 + 136);
  PB::TextFormatter::format(this, "gnssModesOfOperation");
  v5 = *(a1 + 180);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 48));
  v5 = *(a1 + 180);
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "horzUncSemiMaj", *(a1 + 140));
  v5 = *(a1 + 180);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "horzUncSemiMajAz", *(a1 + 144));
  v5 = *(a1 + 180);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "horzUncSemiMin", *(a1 + 148));
  v5 = *(a1 + 180);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "latitude", *(a1 + 56));
  v5 = *(a1 + 180);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "longitude", *(a1 + 64));
  v5 = *(a1 + 180);
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v11 = *(a1 + 152);
  PB::TextFormatter::format(this, "notificationType");
  v5 = *(a1 + 180);
  if ((v5 & 0x100) == 0)
  {
LABEL_17:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "odometer", *(a1 + 72));
  v5 = *(a1 + 180);
  if ((v5 & 0x200000) == 0)
  {
LABEL_18:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  v12 = *(a1 + 156);
  PB::TextFormatter::format(this, "originDevice");
  v5 = *(a1 + 180);
  if ((v5 & 0x400000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  v13 = *(a1 + 160);
  PB::TextFormatter::format(this, "roadClass");
  v5 = *(a1 + 180);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "speed", *(a1 + 80));
  v5 = *(a1 + 180);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "speedAccuracy", *(a1 + 88));
  v5 = *(a1 + 180);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_55:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 96));
  if ((*(a1 + 180) & 0x1000) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(this, "timestampGps", *(a1 + 104));
  }

LABEL_24:
  v6 = *(a1 + 112);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "trackRunData");
  }

  v7 = *(a1 + 180);
  if ((v7 & 0x800000) != 0)
  {
    v14 = *(a1 + 164);
    PB::TextFormatter::format(this, "type");
    v7 = *(a1 + 180);
    if ((v7 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v7 & 0x2000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_59;
    }
  }

  else if ((v7 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  PB::TextFormatter::format(this, "undulation", *(a1 + 168));
  v7 = *(a1 + 180);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  v15 = *(a1 + 172);
  PB::TextFormatter::format(this, "undulationModel");
  v7 = *(a1 + 180);
  if ((v7 & 0x2000) == 0)
  {
LABEL_30:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_60:
  PB::TextFormatter::format(this, "verticalAccuracy", *(a1 + 120));
  if ((*(a1 + 180) & 0x4000000) != 0)
  {
LABEL_31:
    v8 = *(a1 + 176);
    PB::TextFormatter::format(this, "wayForm");
  }

LABEL_32:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ECFB3C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_243;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 180) |= 0x800u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 96) = *(*this + v22);
          goto LABEL_205;
        case 2u:
          *(a1 + 180) |= 0x40u;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 56) = *(*this + v44);
          goto LABEL_205;
        case 3u:
          *(a1 + 180) |= 0x80u;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 64) = *(*this + v39);
          goto LABEL_205;
        case 4u:
          *(a1 + 180) |= 0x200u;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 80) = *(*this + v42);
          goto LABEL_205;
        case 5u:
          *(a1 + 180) |= 0x400u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 88) = *(*this + v27);
          goto LABEL_205;
        case 6u:
          *(a1 + 180) |= 0x20u;
          v55 = *(this + 1);
          if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 48) = *(*this + v55);
          goto LABEL_205;
        case 7u:
          *(a1 + 180) |= 2u;
          v74 = *(this + 1);
          if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 16) = *(*this + v74);
          goto LABEL_205;
        case 8u:
          *(a1 + 180) |= 4u;
          v43 = *(this + 1);
          if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 24) = *(*this + v43);
          goto LABEL_205;
        case 9u:
          *(a1 + 180) |= 1u;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 8) = *(*this + v85);
          goto LABEL_205;
        case 0xAu:
          *(a1 + 180) |= 0x2000u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 120) = *(*this + v29);
          goto LABEL_205;
        case 0xBu:
          *(a1 + 180) |= 0x800000u;
          v77 = *(this + 1);
          v76 = *(this + 2);
          v78 = *this;
          if (v77 <= 0xFFFFFFFFFFFFFFF5 && v77 + 10 <= v76)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = (v78 + v77);
            v83 = v77 + 1;
            do
            {
              *(this + 1) = v83;
              v84 = *v82++;
              v81 |= (v84 & 0x7F) << v79;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_232;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_179:
            LODWORD(v81) = 0;
            goto LABEL_232;
          }

          v138 = 0;
          v139 = 0;
          v81 = 0;
          v17 = v76 >= v77;
          v140 = v76 - v77;
          if (!v17)
          {
            v140 = 0;
          }

          v141 = (v78 + v77);
          v142 = v77 + 1;
          while (2)
          {
            if (v140)
            {
              v143 = *v141;
              *(this + 1) = v142;
              v81 |= (v143 & 0x7F) << v138;
              if (v143 < 0)
              {
                v138 += 7;
                --v140;
                ++v141;
                ++v142;
                v14 = v139++ > 8;
                if (v14)
                {
                  goto LABEL_179;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              LODWORD(v81) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_232:
          *(a1 + 164) = v81;
          goto LABEL_207;
        case 0xCu:
          *(a1 + 180) |= 0x1000u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 104) = *(*this + v26);
          goto LABEL_205;
        case 0xDu:
          *(a1 + 180) |= 0x1000000u;
          v28 = *(this + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 168) = *(*this + v28);
          goto LABEL_61;
        case 0xEu:
          *(a1 + 180) |= 0x2000000u;
          v66 = *(this + 1);
          v65 = *(this + 2);
          v67 = *this;
          if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            do
            {
              *(this + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_229;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_171:
            LODWORD(v70) = 0;
            goto LABEL_229;
          }

          v132 = 0;
          v133 = 0;
          v70 = 0;
          v17 = v65 >= v66;
          v134 = v65 - v66;
          if (!v17)
          {
            v134 = 0;
          }

          v135 = (v67 + v66);
          v136 = v66 + 1;
          while (2)
          {
            if (v134)
            {
              v137 = *v135;
              *(this + 1) = v136;
              v70 |= (v137 & 0x7F) << v132;
              if (v137 < 0)
              {
                v132 += 7;
                --v134;
                ++v135;
                ++v136;
                v14 = v133++ > 8;
                if (v14)
                {
                  goto LABEL_171;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v70) = 0;
              }
            }

            else
            {
              LODWORD(v70) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_229:
          *(a1 + 172) = v70;
          goto LABEL_207;
        case 0xFu:
          *(a1 + 180) |= 0x20000u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 140) = *(*this + v25);
          goto LABEL_61;
        case 0x10u:
          *(a1 + 180) |= 0x80000u;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 148) = *(*this + v40);
          goto LABEL_61;
        case 0x11u:
          *(a1 + 180) |= 0x40000u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 144) = *(*this + v24);
          goto LABEL_61;
        case 0x12u:
          *(a1 + 180) |= 0x100u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 72) = *(*this + v45);
          goto LABEL_205;
        case 0x13u:
          *(a1 + 180) |= 8u;
          v75 = *(this + 1);
          if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 32) = *(*this + v75);
          goto LABEL_205;
        case 0x14u:
          *(a1 + 180) |= 0x10u;
          v95 = *(this + 1);
          if (v95 > 0xFFFFFFFFFFFFFFF7 || v95 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 40) = *(*this + v95);
LABEL_205:
          v41 = *(this + 1) + 8;
          goto LABEL_206;
        case 0x15u:
          *(a1 + 180) |= 0x200000u;
          v47 = *(this + 1);
          v46 = *(this + 2);
          v48 = *this;
          if (v47 <= 0xFFFFFFFFFFFFFFF5 && v47 + 10 <= v46)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            do
            {
              *(this + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                goto LABEL_223;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
            }

            while (!v14);
LABEL_155:
            LODWORD(v51) = 0;
            goto LABEL_223;
          }

          v120 = 0;
          v121 = 0;
          v51 = 0;
          v17 = v46 >= v47;
          v122 = v46 - v47;
          if (!v17)
          {
            v122 = 0;
          }

          v123 = (v48 + v47);
          v124 = v47 + 1;
          while (2)
          {
            if (v122)
            {
              v125 = *v123;
              *(this + 1) = v124;
              v51 |= (v125 & 0x7F) << v120;
              if (v125 < 0)
              {
                v120 += 7;
                --v122;
                ++v123;
                ++v124;
                v14 = v121++ > 8;
                if (v14)
                {
                  goto LABEL_155;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }
            }

            else
            {
              LODWORD(v51) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_223:
          *(a1 + 156) = v51;
          goto LABEL_207;
        case 0x16u:
          *(a1 + 180) |= 0x4000000u;
          v57 = *(this + 1);
          v56 = *(this + 2);
          v58 = *this;
          if (v57 <= 0xFFFFFFFFFFFFFFF5 && v57 + 10 <= v56)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = (v58 + v57);
            v63 = v57 + 1;
            do
            {
              *(this + 1) = v63;
              v64 = *v62++;
              v61 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                goto LABEL_226;
              }

              v59 += 7;
              ++v63;
              v14 = v60++ > 8;
            }

            while (!v14);
LABEL_163:
            LODWORD(v61) = 0;
            goto LABEL_226;
          }

          v126 = 0;
          v127 = 0;
          v61 = 0;
          v17 = v56 >= v57;
          v128 = v56 - v57;
          if (!v17)
          {
            v128 = 0;
          }

          v129 = (v58 + v57);
          v130 = v57 + 1;
          while (2)
          {
            if (v128)
            {
              v131 = *v129;
              *(this + 1) = v130;
              v61 |= (v131 & 0x7F) << v126;
              if (v131 < 0)
              {
                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v14 = v127++ > 8;
                if (v14)
                {
                  goto LABEL_163;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v61) = 0;
              }
            }

            else
            {
              LODWORD(v61) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_226:
          *(a1 + 176) = v61;
          goto LABEL_207;
        case 0x17u:
          *(a1 + 180) |= 0x400000u;
          v87 = *(this + 1);
          v86 = *(this + 2);
          v88 = *this;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(this + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_235;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_187:
            LODWORD(v91) = 0;
            goto LABEL_235;
          }

          v144 = 0;
          v145 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v146 = v86 - v87;
          if (!v17)
          {
            v146 = 0;
          }

          v147 = (v88 + v87);
          v148 = v87 + 1;
          while (2)
          {
            if (v146)
            {
              v149 = *v147;
              *(this + 1) = v148;
              v91 |= (v149 & 0x7F) << v144;
              if (v149 < 0)
              {
                v144 += 7;
                --v146;
                ++v147;
                ++v148;
                v14 = v145++ > 8;
                if (v14)
                {
                  goto LABEL_187;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_235:
          *(a1 + 160) = v91;
          goto LABEL_207;
        case 0x18u:
          *(a1 + 180) |= 0x10000u;
          v97 = *(this + 1);
          v96 = *(this + 2);
          v98 = *this;
          if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            do
            {
              *(this + 1) = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_238;
              }

              v99 += 7;
              ++v103;
              v14 = v100++ > 8;
            }

            while (!v14);
LABEL_195:
            LODWORD(v101) = 0;
            goto LABEL_238;
          }

          v150 = 0;
          v151 = 0;
          v101 = 0;
          v17 = v96 >= v97;
          v152 = v96 - v97;
          if (!v17)
          {
            v152 = 0;
          }

          v153 = (v98 + v97);
          v154 = v97 + 1;
          while (2)
          {
            if (v152)
            {
              v155 = *v153;
              *(this + 1) = v154;
              v101 |= (v155 & 0x7F) << v150;
              if (v155 < 0)
              {
                v150 += 7;
                --v152;
                ++v153;
                ++v154;
                v14 = v151++ > 8;
                if (v14)
                {
                  goto LABEL_195;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v101) = 0;
              }
            }

            else
            {
              LODWORD(v101) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_238:
          *(a1 + 136) = v101;
          goto LABEL_207;
        case 0x19u:
          *(a1 + 180) |= 0x100000u;
          v31 = *(this + 1);
          v30 = *(this + 2);
          v32 = *this;
          if (v31 <= 0xFFFFFFFFFFFFFFF5 && v31 + 10 <= v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            do
            {
              *(this + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_220;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
            }

            while (!v14);
LABEL_147:
            LODWORD(v35) = 0;
            goto LABEL_220;
          }

          v114 = 0;
          v115 = 0;
          v35 = 0;
          v17 = v30 >= v31;
          v116 = v30 - v31;
          if (!v17)
          {
            v116 = 0;
          }

          v117 = (v32 + v31);
          v118 = v31 + 1;
          while (2)
          {
            if (v116)
            {
              v119 = *v117;
              *(this + 1) = v118;
              v35 |= (v119 & 0x7F) << v114;
              if (v119 < 0)
              {
                v114 += 7;
                --v116;
                ++v117;
                ++v118;
                v14 = v115++ > 8;
                if (v14)
                {
                  goto LABEL_147;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }
            }

            else
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_220:
          *(a1 + 152) = v35;
          goto LABEL_207;
        case 0x1Au:
          operator new();
        case 0x1Bu:
          *(a1 + 180) |= 0x8000u;
          v106 = *(this + 1);
          v105 = *(this + 2);
          v107 = *this;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(this + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_241;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_203:
            LODWORD(v110) = 0;
            goto LABEL_241;
          }

          v156 = 0;
          v157 = 0;
          v110 = 0;
          v17 = v105 >= v106;
          v158 = v105 - v106;
          if (!v17)
          {
            v158 = 0;
          }

          v159 = (v107 + v106);
          v160 = v106 + 1;
          break;
        case 0x1Cu:
          *(a1 + 180) |= 0x4000u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
LABEL_123:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 128) = *(*this + v23);
LABEL_61:
            v41 = *(this + 1) + 4;
LABEL_206:
            *(this + 1) = v41;
          }

          goto LABEL_207;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_207;
          }

          v163 = 0;
          return v163 & 1;
      }

      while (1)
      {
        if (!v158)
        {
          LODWORD(v110) = 0;
          *(this + 24) = 1;
          goto LABEL_241;
        }

        v161 = *v159;
        *(this + 1) = v160;
        v110 |= (v161 & 0x7F) << v156;
        if ((v161 & 0x80) == 0)
        {
          break;
        }

        v156 += 7;
        --v158;
        ++v159;
        ++v160;
        v14 = v157++ > 8;
        if (v14)
        {
          goto LABEL_203;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v110) = 0;
      }

LABEL_241:
      *(a1 + 132) = v110;
LABEL_207:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_243:
  v163 = v4 ^ 1;
  return v163 & 1;
}

uint64_t sub_245ED09D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 180);
  if ((v4 & 0x800) != 0)
  {
    result = PB::Writer::write(this, *(result + 96));
    v4 = *(v3 + 180);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 180);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 180);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 180);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 180);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 180);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 180);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 180);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 180);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 180);
  if ((v4 & 0x800000) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  v9 = *(v3 + 164);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 180);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 180);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  v10 = *(v3 + 172);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 180);
  if ((v4 & 0x80000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 180);
  if ((v4 & 0x40000) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 180);
  if ((v4 & 0x100) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 180);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 180);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 180);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  v11 = *(v3 + 156);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  v12 = *(v3 + 176);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  v13 = *(v3 + 160);
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x10000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_56:
  v14 = *(v3 + 136);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 180) & 0x100000) != 0)
  {
LABEL_26:
    v5 = *(v3 + 152);
    result = PB::Writer::writeVarInt(this);
  }

LABEL_27:
  v6 = *(v3 + 112);
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 180);
  if ((v7 & 0x8000) != 0)
  {
    v8 = *(v3 + 132);
    result = PB::Writer::writeVarInt(this);
    v7 = *(v3 + 180);
  }

  if ((v7 & 0x4000) != 0)
  {
    v15 = *(v3 + 128);

    return PB::Writer::write(this, v15);
  }

  return result;
}

uint64_t sub_245ED0D0C(uint64_t result)
{
  *result = &unk_2858D4D38;
  *(result + 24) = 0;
  return result;
}

void sub_245ED0D34(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245ED0D6C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4D38;
  *(result + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 24) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 24) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    *(result + 24) = v3 | 4;
    *(result + 20) = v6;
  }

  return result;
}

uint64_t sub_245ED0DEC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 2) != 0)
  {
    v7 = *(a1 + 16);
    PB::TextFormatter::format(this, "event");
    v5 = *(a1 + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 24) & 4) != 0)
  {
LABEL_4:
    v6 = *(a1 + 20);
    PB::TextFormatter::format(this, "value");
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245ED0E90(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_75;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 4u;
        v31 = *(this + 1);
        v2 = *(this + 2);
        v32 = *this;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(this + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_70;
            }

            v51 = v50;
            v52 = *v49;
            *(this + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_69;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_69:
          v2 = v51;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(this + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_70:
        *(a1 + 20) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(this + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_66;
            }

            v44 = v43;
            v45 = *v42;
            *(this + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_65:
          v2 = v44;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_66:
        *(a1 + 16) = v27;
      }

      else if (v22 == 1)
      {
        *(a1 + 24) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}