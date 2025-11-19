unint64_t ZSTD_compressBlock_doubleFast_extDict(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  if ((*(a1 + 256) - 5) >= 3)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(a1 + 256);
  }

  return ZSTD_compressBlock_doubleFast_extDict_generic(a1, a2, a3, a4, a5, v5);
}

unint64_t ZSTD_compressBlock_doubleFast_extDict_generic(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v7 = a4;
  v8 = &a4[a5];
  v9 = *(a1 + 8);
  v10 = a4 + a5 - v9;
  v11 = 1 << *(a1 + 240);
  v13 = *(a1 + 24);
  v12 = *(a1 + 28);
  v14 = v10 - v12 > v11;
  LODWORD(v15) = v10 - v11;
  if (v14 && *(a1 + 40) == 0)
  {
    v15 = v15;
  }

  else
  {
    v15 = v12;
  }

  if (v13 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  if (v15 >= v13)
  {

    return ZSTD_compressBlock_doubleFast(a1, a2, a3, a4, a5);
  }

  v18 = v8 - 8;
  v19 = *a3;
  v20 = a3[1];
  if (v8 - 8 <= a4)
  {
    goto LABEL_410;
  }

  v228 = a3;
  v233 = (v9 + v17);
  v21 = *(a1 + 16);
  v22 = *(a1 + 96);
  v24 = *(a1 + 244);
  v23 = *(a1 + 248);
  v25 = 64 - v24;
  v26 = *(a1 + 112);
  v231 = 32 - v24;
  v235 = 64 - v23;
  v234 = v17 - 1;
  v27 = v8 - 7;
  v229 = v8 - 1;
  v230 = v8 - 3;
  v232 = 64 - v24;
  do
  {
    v28 = v20;
    v29 = v19;
    if (a6 <= 6)
    {
      if (a6 == 5)
      {
        v30 = *v7;
        v31 = -1157627904;
      }

      else
      {
        if (a6 != 6)
        {
          goto LABEL_20;
        }

        v30 = *v7;
        v31 = -1080360960;
      }

      goto LABEL_23;
    }

    if (a6 == 7)
    {
      v30 = *v7;
      v31 = -1079680256;
LABEL_23:
      v32 = v30 * (v31 | 0xCF1BBCDC00000000);
      goto LABEL_24;
    }

    if (a6 != 8)
    {
LABEL_20:
      v33 = (-1640531535 * *v7) >> v231;
      v30 = *v7;
      goto LABEL_25;
    }

    v30 = *v7;
    v32 = 0xCF1BBCDCB7A56463 * *v7;
LABEL_24:
    v33 = v32 >> v25;
LABEL_25:
    v34 = *(v26 + 4 * v33);
    if (v34 >= v17)
    {
      v35 = v9;
    }

    else
    {
      v35 = v21;
    }

    v36 = (0xCF1BBCDCB7A56463 * v30) >> v235;
    v37 = *(v22 + 4 * v36);
    if (v37 >= v17)
    {
      v38 = v9;
    }

    else
    {
      v38 = v21;
    }

    v39 = v7 - v9;
    v40 = v7 - v9 + 1;
    v41 = (v40 - v29);
    if (v41 >= v17)
    {
      v42 = v9;
    }

    else
    {
      v42 = v21;
    }

    *(v22 + 4 * v36) = v39;
    *(v26 + 4 * v33) = v39;
    if (v29 > v40 - v15 || (v234 - v41) < 3 || (v43 = v42 + v41, v44 = v7 + 1, v25 = v232, *(v42 + v41) != *(v7 + 1)))
    {
      if (v37 > v15)
      {
        v58 = v38 + v37;
        if (*(v38 + v37) == v30)
        {
          v45 = (v21 + v17);
          if (v37 >= v17)
          {
            v59 = v8;
          }

          else
          {
            v59 = (v21 + v17);
          }

          v60 = v21 + v15;
          if (v37 >= v17)
          {
            v60 = v9 + v17;
          }

          v61 = (v7 + 8);
          v62 = (v58 + 8);
          if ((v59 + v7 - v58) >= v8)
          {
            v63 = v8;
          }

          else
          {
            v63 = (v59 + v7 - v58);
          }

          if (v63 - 7 <= v61)
          {
            v65 = (v58 + 8);
            v66 = (v7 + 8);
          }

          else
          {
            if (*v62 != *v61)
            {
              v71 = __clz(__rbit64(*v61 ^ *v62)) >> 3;
              goto LABEL_139;
            }

            v64 = 0;
            v65 = (v38 + v37 + 16);
            v66 = (v7 + 16);
            while (v66 < (v63 - 7))
            {
              v68 = *v65;
              v65 += 4;
              v67 = v68;
              v70 = *v66;
              v66 += 4;
              v69 = v70;
              v64 += 8;
              if (v67 != v70)
              {
                v71 = v64 + (__clz(__rbit64(v69 ^ v67)) >> 3);
                v18 = v8 - 8;
                v45 = (v21 + v17);
                v25 = v232;
                goto LABEL_139;
              }
            }

            v18 = v8 - 8;
            v25 = v232;
          }

          if (v66 < (v63 - 3) && *v65 == *v66)
          {
            v65 += 2;
            v66 += 2;
          }

          if (v66 < (v63 - 1) && *v65 == *v66)
          {
            ++v65;
            ++v66;
          }

          if (v66 < v63 && *v65 == *v66)
          {
            v66 = (v66 + 1);
          }

          v45 = (v21 + v17);
          v71 = v66 - v61;
LABEL_139:
          v104 = (v8 - 32);
          if ((v62 + v71) != v59)
          {
LABEL_250:
            v147 = v71 + 8;
            if (v58 > v60 && v7 > a4)
            {
              v162 = v7 - 1;
              v163 = (v38 + v37 - 1);
              while (*v162 == *v163)
              {
                ++v147;
                v164 = v162 - 1;
                if (v163 > v60)
                {
                  --v163;
                  v14 = v162-- > a4;
                  if (v14)
                  {
                    continue;
                  }
                }

                v7 = v164 + 1;
                goto LABEL_258;
              }

              v7 = v162 + 1;
            }

LABEL_258:
            v44 = v7;
            v148 = v7 - a4;
            v165 = *(a2 + 24);
            if (v7 <= v104)
            {
              *v165 = *a4;
              v169 = *(a2 + 24);
              if (v148 <= 0x10)
              {
                *(a2 + 24) = v169 + v148;
                v145 = *(a2 + 8);
LABEL_272:
                v149 = (v39 - v37);
                goto LABEL_273;
              }

              v170 = (v169 + 16);
              v171 = (a4 + 16);
              do
              {
                v172 = *v171++;
                *v170++ = v172;
              }

              while (v170 < v169 + v148);
            }

            else
            {
              if (a4 <= v104)
              {
                v166 = (v165 + v104 - a4);
                do
                {
                  v167 = *a4;
                  a4 += 16;
                  *v165++ = v167;
                }

                while (v165 < v166);
                a4 = v104;
                v165 = v166;
              }

              while (a4 < v7)
              {
                v168 = *a4++;
                *v165 = v168;
                v165 = (v165 + 1);
              }
            }

            *(a2 + 24) += v148;
            v145 = *(a2 + 8);
            if (v148 >= 0x10000)
            {
              v173 = (v145 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v173;
            }

            goto LABEL_272;
          }

          v114 = &v61[v71];
          if (v27 <= &v61[v71])
          {
            v117 = (v9 + v17);
            v116 = &v61[v71];
          }

          else
          {
            if (*v233 != *v114)
            {
              v122 = __clz(__rbit64(*v114 ^ *v233)) >> 3;
LABEL_249:
              v71 += v122;
              v104 = (v8 - 32);
              goto LABEL_250;
            }

            v115 = 0;
            v116 = &v7[v71 + 16];
            v117 = (v17 + v9 + 8);
            while (v116 < v27)
            {
              v119 = *v117;
              v117 += 4;
              v118 = v119;
              v121 = *v116;
              v116 += 8;
              v120 = v121;
              v115 += 8;
              if (v118 != v121)
              {
                v122 = v115 + (__clz(__rbit64(v120 ^ v118)) >> 3);
                v25 = v232;
                goto LABEL_249;
              }
            }

            v25 = v232;
          }

          if (v116 < v230 && *v117 == *v116)
          {
            v117 += 2;
            v116 += 4;
          }

          if (v116 < v229 && *v117 == *v116)
          {
            ++v117;
            v116 += 2;
          }

          if (v116 < v8 && *v117 == *v116)
          {
            ++v116;
          }

          v122 = v116 - v114;
          goto LABEL_249;
        }
      }

      if (v34 <= v15 || (v72 = v35 + v34, *(v35 + v34) != *v7))
      {
        v7 += ((v7 - a4) >> 8) + 1;
        v20 = v28;
        v19 = v29;
        continue;
      }

      v44 = v7 + 1;
      v73 = *(v7 + 1);
      v74 = (0xCF1BBCDCB7A56463 * v73) >> v235;
      v75 = *(v22 + 4 * v74);
      if (v75 >= v17)
      {
        v76 = v9;
      }

      else
      {
        v76 = v21;
      }

      *(v22 + 4 * v74) = v40;
      if (v75 > v15)
      {
        v77 = v76 + v75;
        if (*(v76 + v75) == v73)
        {
          v227 = v76;
          if (v75 >= v17)
          {
            v78 = v8;
          }

          else
          {
            v78 = (v21 + v17);
          }

          if (v75 >= v17)
          {
            v79 = v9 + v17;
          }

          else
          {
            v79 = v21 + v15;
          }

          v80 = (v7 + 9);
          v81 = (v77 + 8);
          if ((v78 + (v7 + 9) - v77 - 8) >= v8)
          {
            v82 = v8;
          }

          else
          {
            v82 = v78 + (v7 + 9) - v77 - 8;
          }

          if (v82 - 7 <= v80)
          {
            v226 = v76 + v75;
            v84 = (v77 + 8);
            v85 = (v7 + 9);
          }

          else
          {
            if (*v81 != *v80)
            {
              v90 = __clz(__rbit64(*v80 ^ *v81)) >> 3;
              goto LABEL_376;
            }

            v226 = v76 + v75;
            v83 = 0;
            v84 = (v76 + v75 + 16);
            v85 = (v7 + 17);
            while (v85 < v82 - 7)
            {
              v87 = *v84;
              v84 += 4;
              v86 = v87;
              v89 = *v85;
              v85 += 4;
              v88 = v89;
              v83 += 8;
              if (v86 != v89)
              {
                v90 = v83 + (__clz(__rbit64(v88 ^ v86)) >> 3);
                v18 = v8 - 8;
                v25 = v232;
                goto LABEL_375;
              }
            }

            v18 = v8 - 8;
            v25 = v232;
          }

          if (v85 < v82 - 3 && *v84 == *v85)
          {
            v84 += 2;
            v85 += 2;
          }

          if (v85 < v82 - 1 && *v84 == *v85)
          {
            ++v84;
            ++v85;
          }

          if (v85 < v82 && *v84 == *v85)
          {
            v85 = (v85 + 1);
          }

          v90 = v85 - v80;
LABEL_375:
          v77 = v226;
LABEL_376:
          if ((v81 + v90) != v78)
          {
            v45 = (v21 + v17);
LABEL_399:
            v147 = v90 + 8;
            v149 = (v40 - v75);
            if (v77 > v79 && v44 > a4)
            {
              v223 = (v227 + v75 - 1);
              while (*v7 == *v223)
              {
                ++v147;
                v224 = v7 - 1;
                if (v223 > v79)
                {
                  --v223;
                  v14 = v7-- > a4;
                  if (v14)
                  {
                    continue;
                  }
                }

                v44 = v224 + 1;
                goto LABEL_222;
              }

              v44 = v7 + 1;
            }

            goto LABEL_222;
          }

          v213 = &v80[v90];
          v45 = (v21 + v17);
          if (v27 <= v213)
          {
            v214 = v77;
            v217 = (v9 + v17);
            v216 = v213;
          }

          else
          {
            if (*v233 != *v213)
            {
              v222 = __clz(__rbit64(*v213 ^ *v233)) >> 3;
LABEL_398:
              v90 += v222;
              goto LABEL_399;
            }

            v214 = v77;
            v215 = 0;
            v216 = &v7[v90 + 17];
            v217 = (v17 + v9 + 8);
            while (v216 < v27)
            {
              v219 = *v217;
              v217 += 4;
              v218 = v219;
              v221 = *v216;
              v216 += 8;
              v220 = v221;
              v215 += 8;
              if (v218 != v221)
              {
                v222 = v215 + (__clz(__rbit64(v220 ^ v218)) >> 3);
                v25 = v232;
                goto LABEL_397;
              }
            }

            v25 = v232;
          }

          if (v216 < v230 && *v217 == *v216)
          {
            v217 += 2;
            v216 += 4;
          }

          if (v216 < v229 && *v217 == *v216)
          {
            ++v217;
            v216 += 2;
          }

          if (v216 < v8 && *v217 == *v216)
          {
            ++v216;
          }

          v222 = v216 - v213;
LABEL_397:
          v77 = v214;
          goto LABEL_398;
        }
      }

      if (v34 >= v17)
      {
        v91 = v8;
      }

      else
      {
        v91 = (v21 + v17);
      }

      v92 = v21 + v15;
      if (v34 >= v17)
      {
        v92 = v9 + v17;
      }

      v93 = (v7 + 4);
      v94 = (v72 + 4);
      if ((v91 + v7 - v72) >= v8)
      {
        v95 = v8;
      }

      else
      {
        v95 = (v91 + v7 - v72);
      }

      if (v95 - 7 <= v93)
      {
        v97 = (v72 + 4);
        v98 = (v7 + 4);
      }

      else
      {
        if (*v94 != *v93)
        {
          v103 = __clz(__rbit64(*v93 ^ *v94)) >> 3;
          goto LABEL_161;
        }

        v96 = 0;
        v97 = (v35 + v34 + 12);
        v98 = (v7 + 12);
        while (v98 < (v95 - 7))
        {
          v100 = *v97;
          v97 += 4;
          v99 = v100;
          v102 = *v98;
          v98 += 4;
          v101 = v102;
          v96 += 8;
          if (v99 != v102)
          {
            v103 = v96 + (__clz(__rbit64(v101 ^ v99)) >> 3);
            v18 = v8 - 8;
            v25 = v232;
            goto LABEL_161;
          }
        }

        v18 = v8 - 8;
        v25 = v232;
      }

      if (v98 < (v95 - 3) && *v97 == *v98)
      {
        v97 += 2;
        v98 += 2;
      }

      if (v98 < (v95 - 1) && *v97 == *v98)
      {
        ++v97;
        ++v98;
      }

      if (v98 < v95 && *v97 == *v98)
      {
        v98 = (v98 + 1);
      }

      v103 = v98 - v93;
LABEL_161:
      if ((v94 + v103) != v91)
      {
        goto LABEL_214;
      }

      v123 = &v93[v103];
      if (v27 <= v123)
      {
        v126 = (v9 + v17);
        v125 = v123;
      }

      else
      {
        if (*v233 != *v123)
        {
          v131 = __clz(__rbit64(*v123 ^ *v233)) >> 3;
LABEL_213:
          v103 += v131;
LABEL_214:
          v147 = v103 + 4;
          v149 = (v39 - v34);
          if (v72 > v92 && v7 > a4)
          {
            v150 = v7 - 1;
            v151 = (v35 + v34 - 1);
            v45 = (v21 + v17);
            v104 = (v8 - 32);
            while (*v150 == *v151)
            {
              ++v147;
              v152 = v150 - 1;
              if (v151 > v92)
              {
                --v151;
                v14 = v150-- > a4;
                if (v14)
                {
                  continue;
                }
              }

              v44 = v152 + 1;
              goto LABEL_224;
            }

            v44 = v150 + 1;
            goto LABEL_224;
          }

          v44 = v7;
          v45 = (v21 + v17);
LABEL_222:
          v104 = (v8 - 32);
LABEL_224:
          v148 = v44 - a4;
          v153 = *(a2 + 24);
          if (v44 <= v104)
          {
            *v153 = *a4;
            v157 = *(a2 + 24);
            if (v148 <= 0x10)
            {
              *(a2 + 24) = v157 + v148;
              v145 = *(a2 + 8);
              goto LABEL_273;
            }

            v158 = (v157 + 16);
            v159 = (a4 + 16);
            do
            {
              v160 = *v159++;
              *v158++ = v160;
            }

            while (v158 < v157 + v148);
          }

          else
          {
            if (a4 <= v104)
            {
              v154 = (v153 + v104 - a4);
              do
              {
                v155 = *a4;
                a4 += 16;
                *v153++ = v155;
              }

              while (v153 < v154);
              a4 = v104;
              v153 = v154;
            }

            while (a4 < v44)
            {
              v156 = *a4++;
              *v153 = v156;
              v153 = (v153 + 1);
            }
          }

          *(a2 + 24) += v148;
          v145 = *(a2 + 8);
          if (v148 >= 0x10000)
          {
            v161 = (v145 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v161;
          }

LABEL_273:
          *(v145 + 4) = v148;
          *v145 = v149 + 3;
          LOWORD(v148) = v147 - 3;
          v28 = v29;
          v29 = v149;
          if (!((v147 - 3) >> 16))
          {
            goto LABEL_275;
          }

LABEL_274:
          v174 = (v145 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v174;
          v29 = v149;
          goto LABEL_275;
        }

        v124 = 0;
        v125 = &v7[v103 + 12];
        v126 = (v17 + v9 + 8);
        while (v125 < v27)
        {
          v128 = *v126;
          v126 += 4;
          v127 = v128;
          v130 = *v125;
          v125 += 8;
          v129 = v130;
          v124 += 8;
          if (v127 != v130)
          {
            v131 = v124 + (__clz(__rbit64(v129 ^ v127)) >> 3);
            goto LABEL_213;
          }
        }
      }

      if (v125 < v230 && *v126 == *v125)
      {
        v126 += 2;
        v125 += 4;
      }

      if (v125 < v229 && *v126 == *v125)
      {
        ++v126;
        v125 += 2;
      }

      if (v125 < v8 && *v126 == *v125)
      {
        ++v125;
      }

      v131 = v125 - v123;
      goto LABEL_213;
    }

    v45 = (v21 + v17);
    if (v41 >= v17)
    {
      v46 = v8;
    }

    else
    {
      v46 = (v21 + v17);
    }

    v47 = (v7 + 5);
    v48 = (v43 + 4);
    if ((v46 + (v7 + 5) - v43 - 4) >= v8)
    {
      v49 = v8;
    }

    else
    {
      v49 = v46 + (v7 + 5) - v43 - 4;
    }

    if (v49 - 7 <= v47)
    {
      v51 = (v43 + 4);
      v52 = (v7 + 5);
    }

    else
    {
      if (*v48 != *v47)
      {
        v57 = __clz(__rbit64(*v47 ^ *v48)) >> 3;
        goto LABEL_118;
      }

      v50 = 0;
      v51 = (v42 + v41 + 12);
      v52 = (v7 + 13);
      while (v52 < v49 - 7)
      {
        v54 = *v51;
        v51 += 4;
        v53 = v54;
        v56 = *v52;
        v52 += 4;
        v55 = v56;
        v50 += 8;
        if (v53 != v56)
        {
          v57 = v50 + (__clz(__rbit64(v55 ^ v53)) >> 3);
          v45 = (v21 + v17);
          goto LABEL_118;
        }
      }

      v45 = (v21 + v17);
    }

    if (v52 < v49 - 3 && *v51 == *v52)
    {
      v51 += 2;
      v52 += 2;
    }

    if (v52 < v49 - 1 && *v51 == *v52)
    {
      ++v51;
      ++v52;
    }

    if (v52 < v49 && *v51 == *v52)
    {
      v52 = (v52 + 1);
    }

    v57 = v52 - v47;
LABEL_118:
    if ((v48 + v57) != v46)
    {
      v104 = (v8 - 32);
      goto LABEL_191;
    }

    v105 = &v47[v57];
    v104 = (v8 - 32);
    if (v27 <= v105)
    {
      v108 = (v9 + v17);
      v107 = v105;
LABEL_180:
      if (v107 < v230 && *v108 == *v107)
      {
        ++v108;
        v107 += 4;
      }

      if (v107 < v229 && *v108 == *v107)
      {
        v108 = (v108 + 2);
        v107 += 2;
      }

      if (v107 < v8 && *v108 == *v107)
      {
        ++v107;
      }

      v113 = v107 - v105;
      goto LABEL_190;
    }

    if (*v233 == *v105)
    {
      v106 = 0;
      v107 = &v7[v57 + 13];
      v108 = (v17 + v9 + 8);
      while (v107 < v27)
      {
        v110 = *v108;
        v108 += 2;
        v109 = v110;
        v112 = *v107;
        v107 += 8;
        v111 = v112;
        v106 += 8;
        if (v109 != v112)
        {
          v113 = v106 + (__clz(__rbit64(v111 ^ v109)) >> 3);
          v104 = (v8 - 32);
          goto LABEL_190;
        }
      }

      v104 = (v8 - 32);
      goto LABEL_180;
    }

    v113 = __clz(__rbit64(*v105 ^ *v233)) >> 3;
LABEL_190:
    v57 += v113;
LABEL_191:
    v132 = v44 - a4;
    v133 = *(a2 + 24);
    if (v44 <= v104)
    {
      *v133 = *a4;
      v136 = *(a2 + 24);
      if (v132 <= 0x10)
      {
        *(a2 + 24) = v136 + v132;
        v145 = *(a2 + 8);
        goto LABEL_210;
      }

      v137 = (v136 + 16);
      v138 = (a4 + 16);
      do
      {
        v139 = *v138++;
        *v137++ = v139;
      }

      while (v137 < v136 + v132);
    }

    else
    {
      if (a4 <= v104)
      {
        v135 = v133 + v104 - a4;
        v140 = a4;
        do
        {
          v141 = *v140;
          v140 += 16;
          *v133++ = v141;
        }

        while (v133 < v135);
        v134 = v104;
      }

      else
      {
        v134 = a4;
        v135 = *(a2 + 24);
      }

      if (v134 < v44)
      {
        if (a4 <= v104)
        {
          v142 = v104;
        }

        else
        {
          v142 = a4;
        }

        v143 = v7 - v142 + 1;
        do
        {
          v144 = *v134++;
          *v135++ = v144;
          --v143;
        }

        while (v143);
      }
    }

    *(a2 + 24) += v132;
    v145 = *(a2 + 8);
    if (v132 >= 0x10000)
    {
      v146 = (v145 - *a2) >> 3;
      *(a2 + 72) = 1;
      *(a2 + 76) = v146;
    }

LABEL_210:
    v147 = v57 + 4;
    *(v145 + 4) = v132;
    *v145 = 1;
    v148 = v57 + 1;
    v149 = v29;
    if (v148 >> 16)
    {
      goto LABEL_274;
    }

LABEL_275:
    *(v145 + 6) = v148;
    v175 = v145 + 8;
    *(a2 + 8) = v145 + 8;
    a4 = &v44[v147];
    if (&v44[v147] > v18)
    {
      v20 = v28;
      v19 = v29;
      v7 = &v44[v147];
      continue;
    }

    v176 = v39 + 2;
    v177 = *(v9 + (v39 + 2));
    *(v22 + 4 * ((0xCF1BBCDCB7A56463 * v177) >> v235)) = v39 + 2;
    *(v22 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v235)) = a4 - 2 - v9;
    if (a6 > 6)
    {
      if (a6 == 7)
      {
        v178 = -1079680256;
        goto LABEL_287;
      }

      if (a6 == 8)
      {
        *(v26 + 4 * ((0xCF1BBCDCB7A56463 * v177) >> v25)) = v176;
        v179 = a4 - 1;
        v180 = 0xCF1BBCDCB7A56463 * *(a4 - 1);
LABEL_288:
        v181 = v180 >> v25;
        goto LABEL_289;
      }
    }

    else
    {
      if (a6 == 5)
      {
        v178 = -1157627904;
        goto LABEL_287;
      }

      if (a6 == 6)
      {
        v178 = -1080360960;
LABEL_287:
        v182 = v178 | 0xCF1BBCDC00000000;
        *(v26 + 4 * ((v177 * v182) >> v25)) = v176;
        v179 = a4 - 1;
        v180 = *(a4 - 1) * v182;
        goto LABEL_288;
      }
    }

    *(v26 + 4 * ((-1640531535 * *(v9 + v176)) >> v231)) = v176;
    v179 = a4 - 1;
    v181 = (-1640531535 * *(a4 - 1)) >> v231;
LABEL_289:
    *(v26 + 4 * v181) = v179 - v9;
    while (1)
    {
      v19 = v28;
      v28 = v29;
      v183 = a4 - v9;
      v184 = (a4 - v9 - v19);
      v185 = v184 >= v17 ? v9 : v21;
      if (v19 > v183 - v15)
      {
        break;
      }

      if ((v234 - v184) < 3)
      {
        break;
      }

      v186 = v185 + v184;
      if (*(v185 + v184) != *a4)
      {
        break;
      }

      if (v184 >= v17)
      {
        v187 = v8;
      }

      else
      {
        v187 = v45;
      }

      v188 = (a4 + 4);
      v189 = (v186 + 4);
      if ((v187 + a4 - v186) >= v8)
      {
        v190 = v8;
      }

      else
      {
        v190 = v187 + a4 - v186;
      }

      if (v190 - 7 <= v188)
      {
        v192 = v189;
        v193 = a4 + 4;
LABEL_312:
        if (v193 < v190 - 3 && *v192 == *v193)
        {
          ++v192;
          v193 += 4;
        }

        if (v193 < v190 - 1 && *v192 == *v193)
        {
          v192 = (v192 + 2);
          v193 += 2;
        }

        if (v193 < v190 && *v192 == *v193)
        {
          ++v193;
        }

        v198 = v193 - v188;
        goto LABEL_322;
      }

      if (*v189 == *v188)
      {
        v191 = 0;
        v192 = (v185 + v184 + 12);
        v193 = a4 + 12;
        while (v193 < v190 - 7)
        {
          v195 = *v192;
          v192 += 2;
          v194 = v195;
          v197 = *v193;
          v193 += 8;
          v196 = v197;
          v191 += 8;
          if (v194 != v197)
          {
            v198 = v191 + (__clz(__rbit64(v196 ^ v194)) >> 3);
            v25 = v232;
            goto LABEL_310;
          }
        }

        v25 = v232;
        v104 = (v8 - 32);
        goto LABEL_312;
      }

      v198 = __clz(__rbit64(*v188 ^ *v189)) >> 3;
LABEL_310:
      v104 = (v8 - 32);
LABEL_322:
      if ((v189 + v198) != v187)
      {
        goto LABEL_342;
      }

      v199 = &v188[v198];
      if (v27 <= v199)
      {
        v202 = (v9 + v17);
        v201 = v199;
LABEL_330:
        if (v201 < v230 && *v202 == *v201)
        {
          ++v202;
          v201 += 4;
        }

        if (v201 < v229 && *v202 == *v201)
        {
          v202 = (v202 + 2);
          v201 += 2;
        }

        if (v201 < v8 && *v202 == *v201)
        {
          ++v201;
        }

        v207 = v201 - v199;
        goto LABEL_341;
      }

      if (*v233 == *v199)
      {
        v200 = 0;
        v201 = &a4[v198 + 12];
        v202 = (v17 + v9 + 8);
        while (v201 < v27)
        {
          v204 = *v202;
          v202 += 2;
          v203 = v204;
          v206 = *v201;
          v201 += 8;
          v205 = v206;
          v200 += 8;
          if (v203 != v206)
          {
            v207 = v200 + (__clz(__rbit64(v205 ^ v203)) >> 3);
            goto LABEL_341;
          }
        }

        goto LABEL_330;
      }

      v207 = __clz(__rbit64(*v199 ^ *v233)) >> 3;
LABEL_341:
      v198 += v207;
LABEL_342:
      if (a4 <= v104)
      {
        **(a2 + 24) = *a4;
        v175 = *(a2 + 8);
      }

      *(v175 + 4) = 0;
      *v175 = 1;
      if (v198 + 1 >= 0x10000)
      {
        v208 = (v175 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v208;
      }

      *(v175 + 6) = v198 + 1;
      v175 += 8;
      *(a2 + 8) = v175;
      if (a6 > 6)
      {
        if (a6 == 7)
        {
          v209 = *a4;
          v210 = -1079680256;
          goto LABEL_356;
        }

        if (a6 == 8)
        {
          v209 = *a4;
          v211 = 0xCF1BBCDCB7A56463 * *a4;
LABEL_357:
          v212 = v211 >> v25;
          goto LABEL_358;
        }
      }

      else
      {
        if (a6 == 5)
        {
          v209 = *a4;
          v210 = -1157627904;
          goto LABEL_356;
        }

        if (a6 == 6)
        {
          v209 = *a4;
          v210 = -1080360960;
LABEL_356:
          v211 = v209 * (v210 | 0xCF1BBCDC00000000);
          goto LABEL_357;
        }
      }

      v212 = (-1640531535 * *a4) >> v231;
      v209 = *a4;
LABEL_358:
      *(v26 + 4 * v212) = v183;
      *(v22 + 4 * ((0xCF1BBCDCB7A56463 * v209) >> v235)) = v183;
      a4 += v198 + 4;
      v29 = v19;
      v20 = v28;
      v7 = a4;
      if (a4 > v18)
      {
        goto LABEL_361;
      }
    }

    v20 = v19;
    v19 = v29;
    v7 = a4;
LABEL_361:
    ;
  }

  while (v7 < v18);
  v7 = a4;
  a3 = v228;
LABEL_410:
  *a3 = v19;
  a3[1] = v20;
  return v8 - v7;
}

double ZSTD_createDCtx_internal(__int128 *a1)
{
  if ((*a1 == 0) == (*(a1 + 1) == 0))
  {
    v9 = v1;
    v10 = v2;
    v7 = *a1;
    v8 = *(a1 + 2);
    v4 = ZSTD_customMalloc(0x176C8uLL, &v7);
    if (v4)
    {
      v6 = *(a1 + 2);
      *(v4 + 30120) = *a1;
      *(v4 + 3767) = v6;
      *(v4 + 3739) = 0;
      *(v4 + 7547) = 0;
      *(v4 + 7548) = 0;
      *(v4 + 3782) = 0;
      *(v4 + 30292) = 0;
      *(v4 + 11992) = 0;
      *(v4 + 3775) = 0;
      *(v4 + 3762) = 0;
      *(v4 + 3770) = 0;
      result = 0.0;
      *(v4 + 30168) = 0u;
      *(v4 + 30212) = 0u;
      *(v4 + 7557) = 0;
      *(v4 + 3780) = 134217729;
      *(v4 + 7552) = 0;
    }
  }

  return result;
}

uint64_t ZSTD_frameHeaderSize_internal(uint64_t a1, unint64_t a2, int a3)
{
  v3 = 5;
  if (a3)
  {
    v3 = 1;
  }

  if (v3 > a2)
  {
    return -72;
  }

  v5 = *(a1 + v3 - 1);
  v6 = v5 < 0x40;
  v7 = ZSTD_did_fieldSize[v5 & 3];
  v8 = *(&ZSTD_fcs_fieldSize + ((v5 >> 3) & 0x18));
  LODWORD(v5) = v5 & 0x20;
  v9 = v5 == 0;
  v10 = v6 & (v5 >> 5);
  v11 = v7 + v3 + v8;
  if (v9)
  {
    ++v11;
  }

  return v11 + v10;
}

uint64_t ZSTD_getFrameHeader_advanced(uint64_t a1, _DWORD *a2, unint64_t a3, int a4)
{
  if (a4)
  {
    v4 = 1;
  }

  else
  {
    v4 = 5;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v4 <= a3)
  {
    if (a2)
    {
      if (a4 == 1 || *a2 == -47205080)
      {
        v8 = ZSTD_frameHeaderSize_internal(a2, a3, a4);
        if (v8 <= a3)
        {
          *(a1 + 24) = v8;
          v9 = *(a2 + v4 - 1);
          if ((v9 & 8) != 0)
          {
            return -14;
          }

          else
          {
            if ((v9 & 0x20) != 0)
            {
              v11 = 0;
            }

            else
            {
              v10 = *(a2 + v4);
              if (v10 > 0xAF)
              {
                return -16;
              }

              ++v4;
              v11 = (1 << ((v10 >> 3) + 10)) + ((1 << ((v10 >> 3) + 10)) >> 3) * (v10 & 7);
            }

            v12 = v9 & 3;
            v13 = v9 >> 6;
            if (v12 > 1)
            {
              if (v12 == 2)
              {
                v12 = *(a2 + v4);
                v4 += 2;
              }

              else
              {
                v12 = *(a2 + v4);
                v4 += 4;
              }
            }

            else if ((v9 & 3) != 0)
            {
              v12 = *(a2 + v4++);
            }

            v14 = (v9 >> 2) & 1;
            if (v9 >> 6 > 1)
            {
              if (v13 == 2)
              {
                v15 = *(a2 + v4);
              }

              else
              {
                v15 = *(a2 + v4);
              }
            }

            else if (v13)
            {
              v15 = *(a2 + v4) + 256;
            }

            else if ((v9 & 0x20) != 0)
            {
              v15 = *(a2 + v4);
            }

            else
            {
              v15 = -1;
            }

            v4 = 0;
            if ((v9 & 0x20) != 0)
            {
              v16 = v15;
            }

            else
            {
              v16 = v11;
            }

            *a1 = v15;
            *(a1 + 8) = v16;
            if (v16 >= 0x20000)
            {
              LODWORD(v16) = 0x20000;
            }

            *(a1 + 16) = v16;
            *(a1 + 20) = 0;
            *(a1 + 28) = v12;
            *(a1 + 32) = v14;
          }
        }

        else
        {
          return v8;
        }
      }

      else if (*a2 >> 4 == 25481893)
      {
        if (a3 >= 8)
        {
          v4 = 0;
          *a1 = a2[1];
          *(a1 + 20) = 1;
        }

        else
        {
          return 8;
        }
      }

      else
      {
        return -10;
      }
    }

    else
    {
      return -1;
    }
  }

  return v4;
}

unint64_t ZSTD_findFrameSizeInfo(char *a1, unint64_t a2)
{
  if (a2 < 8 || *a1 >> 4 != 25481893)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    result = ZSTD_getFrameHeader_advanced(&v13, a1, a2, 0);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    if (result)
    {
      return -72;
    }

    v7 = &a1[DWORD2(v14)];
    v8 = a2 - DWORD2(v14);
    v12 = 0;
    v11 = 0;
    result = ZSTD_getcBlockSize(v7, v8, &v11);
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    for (i = 1; ; ++i)
    {
      v10 = v8 >= result + 3;
      v8 -= result + 3;
      if (!v10)
      {
        return -72;
      }

      v7 = (v7 + result + 3);
      if (HIDWORD(v11))
      {
        break;
      }

      v12 = 0;
      v11 = 0;
      result = ZSTD_getcBlockSize(v7, v8, &v11);
      if (result >= 0xFFFFFFFFFFFFFF89)
      {
        return result;
      }
    }

    if (v15)
    {
      if (v8 < 4)
      {
        return -72;
      }

      v7 += 2;
    }

    return v7 - a1;
  }

  v4 = *(a1 + 1);
  v5 = v4 + 8;
  if (v4 + 8 > a2)
  {
    v5 = -72;
  }

  if (v4 <= 0xFFFFFFF7)
  {
    return v5;
  }

  else
  {
    return -14;
  }
}

uint64_t ZSTD_decompressMultiFrame(void *a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5, char *a6, unint64_t a7, uint64_t a8)
{
  v15 = a1 + 3584;
  if (a8)
  {
    a6 = ZSTD_DDict_dictContent(a8);
    a7 = ZSTD_DDict_dictSize(a8);
  }

  v16 = 5;
  if (v15[356])
  {
    v16 = 1;
  }

  if (v16 <= a5)
  {
    v48 = a3;
    v20 = 0;
    v17 = a2;
    while (1)
    {
      while (*a4 >> 4 == 25481893)
      {
        if (a5 < 8)
        {
          return -72;
        }

        v21 = *(a4 + 1);
        if (v21 > 0xFFFFFFF7)
        {
          return -14;
        }

        v22 = v21 + 8;
        if (v22 <= a5)
        {
          v18 = v22;
        }

        else
        {
          v18 = -72;
        }

        if (v18 > 0xFFFFFFFFFFFFFF88)
        {
          return v18;
        }

        a4 += v18;
        a5 -= v18;
        if (a5 < v16)
        {
          goto LABEL_7;
        }
      }

      v47 = v20;
      v46 = a7;
      if (a8)
      {
        ZSTD_decompressBegin_usingDDict(a1, a8);
      }

      else
      {
        v23 = ZSTD_decompressBegin_usingDict(a1, a6, a7);
        if (v23 > 0xFFFFFFFFFFFFFF88)
        {
          return v23;
        }
      }

      ZSTD_checkContinuity(a1, v17, v48);
      v24 = v15[356];
      v25 = 9;
      if (v24)
      {
        v25 = 5;
      }

      if (a5 < v25)
      {
LABEL_27:
        v18 = -72;
        goto LABEL_60;
      }

      if (v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = 5;
      }

      v27 = ZSTD_frameHeaderSize_internal(a4, v26, v24);
      v18 = v27;
      if (v27 <= 0xFFFFFFFFFFFFFF88)
      {
        if (a5 < v27 + 3)
        {
          goto LABEL_27;
        }

        v28 = ZSTD_decodeFrameHeader(a1, a4, v27);
        if (v28 > 0xFFFFFFFFFFFFFF88)
        {
          v18 = v28;
        }

        else
        {
          LODWORD(__len) = 0;
          v49 = 0;
          __n = &a4[v18];
          v44 = a5 - v18;
          v29 = ZSTD_getcBlockSize(&a4[v18], a5 - v18, &v49);
          v30 = v29;
          if (v29 <= 0xFFFFFFFFFFFFFF88)
          {
            v40 = v17 + v48;
            __dst = v17;
            while (1)
            {
              v31 = v44 - 3 >= v30;
              v44 = v44 - 3 - v30;
              if (!v31)
              {
                goto LABEL_27;
              }

              v32 = (__n + 3);
              v41 = __n + 3;
              __na = v30;
              if (v49 == 2)
              {
                v33 = ZSTD_decompressBlock_internal(a1, __dst, v40 - __dst, v32, v30, 1, 0);
                v30 = __na;
                v18 = v33;
                if (v33 > 0xFFFFFFFFFFFFFF88)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                if (v49 == 1)
                {
                  v18 = __len;
                  if (v40 - __dst < __len)
                  {
                    goto LABEL_69;
                  }

                  if (__dst)
                  {
                    memset(__dst, *v32, __len);
                    v30 = __na;
                    goto LABEL_53;
                  }

                  if (__len)
                  {
                    goto LABEL_73;
                  }
                }

                else
                {
                  if (v49)
                  {
                    goto LABEL_68;
                  }

                  if (v30 > v40 - __dst)
                  {
LABEL_69:
                    v18 = -70;
                    goto LABEL_60;
                  }

                  if (__dst)
                  {
                    memcpy(__dst, v32, v30);
                    v30 = __na;
                    v18 = __na;
                    goto LABEL_53;
                  }

                  if (v30)
                  {
LABEL_73:
                    v18 = -74;
                    goto LABEL_60;
                  }
                }

                v18 = 0;
              }

LABEL_53:
              v34 = __dst;
              if (v15[358])
              {
                ZSTD_XXH64_update((a1 + 3750), __dst, v18);
                v34 = __dst;
                v30 = __na;
              }

              v35 = &v34[v18];
              v36 = &v41[v30];
              __n = &v41[v30];
              if (HIDWORD(v49))
              {
                v37 = a1[3741];
                v18 = &v35[-v17];
                if (v37 != -1 && v18 != v37)
                {
LABEL_68:
                  v18 = -20;
                  goto LABEL_60;
                }

                if (v15[322])
                {
                  v38 = v44 - 4;
                  if (v44 >= 4 && (v15[357] || (v39 = ZSTD_XXH64_digest(a1 + 3750), v38 = v44 - 4, v36 = __n, *__n == v39)))
                  {
                    a4 = (v36 + 2);
                    a5 = v38;
                  }

                  else
                  {
                    v18 = -22;
                  }
                }

                else
                {
                  a4 = &v41[v30];
                  a5 = v44;
                }

                goto LABEL_60;
              }

              __dst = v35;
              LODWORD(__len) = 0;
              v49 = 0;
              v30 = ZSTD_getcBlockSize(v36, v44, &v49);
              v18 = v30;
              if (v30 >= 0xFFFFFFFFFFFFFF89)
              {
                goto LABEL_60;
              }
            }
          }

          v18 = v29;
        }
      }

LABEL_60:
      if (((ZSTD_getErrorCode(v18) == 10) & v47) != 0)
      {
        return -72;
      }

      if (v18 > 0xFFFFFFFFFFFFFF88)
      {
        return v18;
      }

      v17 += v18;
      v48 -= v18;
      v16 = 5;
      if (v15[356])
      {
        v16 = 1;
      }

      v20 = 1;
      a7 = v46;
      if (a5 < v16)
      {
        goto LABEL_7;
      }
    }
  }

  v17 = a2;
LABEL_7:
  if (a5)
  {
    return -72;
  }

  else
  {
    return v17 - a2;
  }
}

double ZSTD_getDDict(uint64_t a1)
{
  v2 = *(a1 + 30192);
  if (v2 == -1)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    *(a1 + 30192) = 0;
LABEL_4:
    v3 = *(a1 + 30176);
    return result;
  }

  ZSTD_freeDDict(*(a1 + 30168));
  *(a1 + 30192) = 0;
  result = 0.0;
  *(a1 + 30168) = 0u;
  return result;
}

uint64_t ZSTD_nextInputType(uint64_t a1)
{
  v1 = *(a1 + 29988) - 2;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_1C2BF79F8[v1];
  }
}

uint64_t ZSTD_decompressContinue(uint64_t a1, char *a2, unint64_t a3, _DWORD *a4, size_t a5)
{
  v5 = a5;
  v10 = (a1 + 29944);
  if ((*(a1 + 29988) - 3) >= 2)
  {
    v12 = *(a1 + 29920);
  }

  else
  {
    if (*(a1 + 29920) >= a5)
    {
      v11 = a5;
    }

    else
    {
      v11 = *(a1 + 29920);
    }

    if (v11 <= 1)
    {
      v11 = 1;
    }

    if (*(a1 + 29984))
    {
      v12 = *(a1 + 29920);
    }

    else
    {
      v12 = v11;
    }
  }

  if (v12 != a5)
  {
    return -72;
  }

  ZSTD_checkContinuity(a1, a2, a3);
  *(a1 + 29968) += v5;
  v13 = v10[11];
  v14 = -1;
  if (v13 <= 2)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        memcpy((a1 + 95916 + *(a1 + 30088) - v5), a4, v5);
        v21 = ZSTD_decodeFrameHeader(a1, (a1 + 95916), *(a1 + 30088));
        if (v21 > 0xFFFFFFFFFFFFFF88)
        {
          return v21;
        }

        v14 = 0;
        *(a1 + 29920) = 3;
        v19 = 2;
      }

      else
      {
        if (v13 != 2)
        {
          return v14;
        }

        v25 = 0;
        v24 = 0;
        v17 = ZSTD_getcBlockSize(a4, 3uLL, &v24);
        v14 = v17;
        if (v17 > 0xFFFFFFFFFFFFFF88)
        {
          return v14;
        }

        if (v17 > *v10)
        {
          return -20;
        }

        *(a1 + 29920) = v17;
        v18 = HIDWORD(v24);
        v10[10] = v24;
        *(a1 + 30152) = v25;
        if (v17)
        {
          if (v18)
          {
            v19 = 4;
          }

          else
          {
            v19 = 3;
          }
        }

        else if (v18)
        {
          v19 = v10[4];
          if (v19)
          {
            *(a1 + 29920) = 4;
            v19 = 5;
          }

          else
          {
            *(a1 + 29920) = 0;
          }
        }

        else
        {
          *(a1 + 29920) = 3;
          v19 = 2;
        }

        v14 = 0;
      }
    }

    else
    {
      v20 = v10[38];
      if (v20 || *a4 >> 4 != 25481893)
      {
        v14 = ZSTD_frameHeaderSize_internal(a4, v5, v20);
        *(a1 + 30088) = v14;
        if (v14 <= 0xFFFFFFFFFFFFFF88)
        {
          memcpy((a1 + 95916), a4, v5);
          *(a1 + 29920) = v14 - v5;
          v10[11] = 1;
          return 0;
        }

        return v14;
      }

      memcpy((a1 + 95916), a4, v5);
      v14 = 0;
      *(a1 + 29920) = 8 - v5;
      v19 = 6;
    }

    goto LABEL_44;
  }

  if (v13 > 5)
  {
    if (v13 != 6)
    {
      if (v13 != 7)
      {
        return v14;
      }

      goto LABEL_37;
    }

    memcpy((a1 - v5 + 95924), a4, v5);
    v14 = 0;
    *(a1 + 29920) = *(a1 + 95920);
    v19 = 7;
LABEL_44:
    v10[11] = v19;
    return v14;
  }

  if ((v13 - 3) >= 2)
  {
    if (v13 != 5)
    {
      return v14;
    }

    if (v10[40] && *a4 != ZSTD_XXH64_digest((a1 + 30000)))
    {
      return -22;
    }

LABEL_37:
    v14 = 0;
    *(a1 + 29920) = 0;
    v10[11] = 0;
    return v14;
  }

  v15 = v10[10];
  if (v15)
  {
    if (v15 == 1)
    {
      v5 = *(a1 + 30152);
      if (v5 <= a3)
      {
        if (a2)
        {
          memset(a2, *a4, *(a1 + 30152));
        }

        else if (v5)
        {
          v5 = -74;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = -70;
      }

LABEL_61:
      v22 = 0;
      *(a1 + 29920) = 0;
      v14 = v5;
      if (v5 <= 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_62;
      }

      return v14;
    }

    if (v15 == 2)
    {
      v5 = ZSTD_decompressBlock_internal(a1, a2, a3, a4, v5, 1, 1);
      goto LABEL_61;
    }

    return -20;
  }

  if (v5 <= a3)
  {
    if (a2)
    {
      memcpy(a2, a4, v5);
      if (v5 > 0xFFFFFFFFFFFFFF88)
      {
        return v5;
      }
    }

    else if (v5)
    {
      return -74;
    }

    v22 = *(a1 + 29920) - v5;
    *(a1 + 29920) = v22;
LABEL_62:
    if (v5 > *v10)
    {
      return -20;
    }

    *(a1 + 29976) += v5;
    if (v10[40])
    {
      ZSTD_XXH64_update(a1 + 30000, a2, v5);
      v22 = *(a1 + 29920);
    }

    *(a1 + 29888) = &a2[v5];
    if (!v22)
    {
      if (v10[11] == 4)
      {
        v23 = *(a1 + 29928);
        if (v23 != -1 && *(a1 + 29976) != v23)
        {
          return -20;
        }

        if (v10[4])
        {
          *(a1 + 29920) = 4;
          v10[11] = 5;
        }

        else
        {
          *(a1 + 29920) = 0;
          v10[11] = 0;
        }
      }

      else
      {
        v10[11] = 2;
        *(a1 + 29920) = 3;
      }
    }

    return v5;
  }

  return -70;
}

unint64_t ZSTD_decodeFrameHeader(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  v5 = (a1 + 28672);
  result = ZSTD_getFrameHeader_advanced(a1 + 29928, a2, a3, *(a1 + 30096));
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (result)
    {
      return -72;
    }

    else
    {
      if (v5[384] == 1 && *(a1 + 30200))
      {
        ZSTD_DCtx_selectFrameDDict(a1);
      }

      v7 = v5[321];
      if (v7 && v5[378] != v7)
      {
        return -32;
      }

      else
      {
        if (v5[322])
        {
          v8 = v5[357];
          v5[358] = v8 == 0;
          if (!v8)
          {
            ZSTD_XXH64_reset(a1 + 30000, 0);
          }
        }

        else
        {
          v5[358] = 0;
        }

        result = 0;
        *(a1 + 29968) += a3;
      }
    }
  }

  return result;
}

uint64_t ZSTD_loadDEntropy(int *a1, uint64_t a2, unint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3 >= 9)
  {
    v6 = a2 + 8;
    DTableX2_wksp = HUF_readDTableX2_wksp(a1 + 2566, (a2 + 8), a3 - 8, a1, 0x2818uLL);
    if (DTableX2_wksp <= 0xFFFFFFFFFFFFFF88)
    {
      v8 = DTableX2_wksp;
      v9 = a2 + a3;
      v10 = v6 + DTableX2_wksp;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0;
      v28 = 31;
      v11 = FSE_readNCount(&v29, &v28, &v27, v10, a2 + a3 - v10);
      if (v11 <= 0xFFFFFFFFFFFFFF88 && v28 <= 0x1F && v27 < 9)
      {
        v12 = v11;
        ZSTD_buildFSETable(a1 + 1026, &v29, v28, &OF_base, &OF_bits, v27, (a1 + 6666));
        v13 = v10 + v12;
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0;
        v28 = 52;
        v14 = FSE_readNCount(&v29, &v28, &v27, v10 + v12, v9 - (v10 + v12));
        if (v14 <= 0xFFFFFFFFFFFFFF88 && v28 <= 0x34 && v27 < 0xA)
        {
          v15 = v14;
          ZSTD_buildFSETable(a1 + 1540, &v29, v28, &ML_base, &ML_bits_0, v27, (a1 + 6666));
          v16 = v13 + v15;
          *&v33 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0;
          v28 = 35;
          v17 = FSE_readNCount(&v29, &v28, &v27, v16, v9 - v16);
          if (v17 <= 0xFFFFFFFFFFFFFF88 && v28 <= 0x23 && v27 < 0xA)
          {
            v18 = v17;
            ZSTD_buildFSETable(a1, &v29, v28, &LL_base, &LL_bits_0, v27, (a1 + 6666));
            v19 = v16 + v18 + 12;
            if (v19 <= v9)
            {
              v22 = 0;
              v23 = v9 - v19;
              v24 = -8 - (v8 + v12 + v15 + v18);
              while (1)
              {
                v25 = *(v8 + v12 + v18 + v15 + a2 + 8 + 4 * v22);
                if (!v25 || v23 < v25)
                {
                  break;
                }

                a1[v22++ + 6663] = v25;
                v24 -= 4;
                if (v22 == 3)
                {
                  result = -v24;
                  goto LABEL_14;
                }
              }
            }
          }
        }
      }
    }
  }

  result = -30;
LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ZSTD_decompressBegin_usingDict(uint64_t a1, char *a2, unint64_t a3)
{
  result = 0;
  v5 = 5;
  if (*(a1 + 30096))
  {
    v5 = 1;
  }

  *(a1 + 29920) = v5;
  *(a1 + 26684) = 0x400000001;
  *(a1 + 26692) = 8;
  *(a1 + 29888) = 0u;
  *(a1 + 29904) = 0u;
  *(a1 + 29968) = 0u;
  *(a1 + 10296) = 201326604;
  *(a1 + 30184) = 0;
  *(a1 + 29984) = xmmword_1C2BF7720;
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 6192;
  *(a1 + 16) = a1 + 4136;
  *(a1 + 24) = a1 + 10296;
  if (a2 && a3)
  {
    if (a3 >= 8 && *a2 == -332356553)
    {
      *(a1 + 30184) = *(a2 + 1);
      DEntropy = ZSTD_loadDEntropy((a1 + 32), a2, a3);
      if (DEntropy > 0xFFFFFFFFFFFFFF88)
      {
        return -30;
      }

      v9 = &a2[DEntropy];
      *(a1 + 29992) = 0x100000001;
      v10 = *(a1 + 29888);
      v11 = *(a1 + 29896);
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v9 = a2;
    }

    result = 0;
    *(a1 + 29912) = v10;
    *(a1 + 29904) = &v9[v11 - v10];
    *(a1 + 29896) = v9;
    *(a1 + 29888) = &a2[a3];
  }

  return result;
}

uint64_t ZSTD_decompressBegin_usingDDict(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 28672);
  if (a2)
  {
    v5 = ZSTD_DDict_dictContent(a2);
    v4[379] = *(a1 + 29912) != v5 + ZSTD_DDict_dictSize(a2);
  }

  v6 = 5;
  if (v4[356])
  {
    v6 = 1;
  }

  *(a1 + 29920) = v6;
  *(a1 + 29888) = 0u;
  *(a1 + 29904) = 0u;
  *(a1 + 29968) = 0u;
  *(a1 + 10296) = 201326604;
  v4[378] = 0;
  *(a1 + 29984) = xmmword_1C2BF7720;
  *(a1 + 26684) = 0x400000001;
  *(a1 + 26692) = 8;
  *a1 = a1 + 32;
  *(a1 + 8) = a1 + 6192;
  *(a1 + 16) = a1 + 4136;
  *(a1 + 24) = a1 + 10296;
  if (a2)
  {
    ZSTD_copyDDictParameters(a1, a2);
  }

  return 0;
}

uint64_t ZSTD_getDictID_fromDict(_DWORD *a1, unint64_t a2)
{
  if (a2 >= 8 && *a1 == -332356553)
  {
    return a1[1];
  }

  else
  {
    return 0;
  }
}

uint64_t ZSTD_DCtx_loadDictionary_advanced(uint64_t a1, const void *a2, size_t a3, int a4, int a5)
{
  v5 = a1 + 28672;
  if (*(a1 + 30212))
  {
    return -60;
  }

  ZSTD_freeDDict(*(a1 + 30168));
  result = 0;
  *(v5 + 1520) = 0;
  *(a1 + 30168) = 0u;
  if (a2 && a3)
  {
    v15 = *(a1 + 30136);
    v14 = *(a1 + 30120);
    v12 = ZSTD_createDDict_advanced(a2, a3, a4, a5, &v14);
    *(a1 + 30168) = v12;
    if (v12)
    {
      v13 = v12;
      result = 0;
      *(a1 + 30176) = v13;
      *(v5 + 1520) = -1;
    }

    else
    {
      return -64;
    }
  }

  return result;
}

unint64_t ZSTD_initDStream(uint64_t a1)
{
  v1 = a1 + 28672;
  *(a1 + 30212) = 0;
  *(a1 + 30292) = 0;
  result = ZSTD_DCtx_refDDict(a1, 0);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (*(v1 + 1424))
    {
      return 1;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

unint64_t ZSTD_DCtx_refDDict(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 28672;
  if (*(a1 + 30212))
  {
    return -60;
  }

  ZSTD_freeDDict(*(a1 + 30168));
  *(v2 + 1520) = 0;
  *(a1 + 30168) = 0u;
  if (!a2)
  {
    return 0;
  }

  *(a1 + 30176) = a2;
  *(v2 + 1520) = -1;
  if (*(v2 + 1536) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 30200);
  if (!v6)
  {
    v17 = *(a1 + 30136);
    v15 = *(a1 + 30120);
    v18 = v15;
    v19 = *(a1 + 30136);
    v12 = ZSTD_customMalloc(0x18uLL, &v18);
    if (v12)
    {
      v6 = v12;
      v18 = v15;
      v19 = v17;
      v13 = ZSTD_customCalloc(0x200uLL, &v18);
      *v6 = v13;
      if (v13)
      {
        *(v6 + 1) = xmmword_1C2BF7730;
        *(a1 + 30200) = v6;
LABEL_17:
        result = ZSTD_DDictHashSet_emplaceDDict(v6, a2);
        if (result > 0xFFFFFFFFFFFFFF88)
        {
          return result;
        }

        return 0;
      }

      v18 = v15;
      v19 = v17;
      ZSTD_customFree(v6, &v18);
    }

    *(a1 + 30200) = 0;
    return -64;
  }

  v7 = v6[1];
  if (v7 > 4 * v6[2])
  {
    goto LABEL_17;
  }

  v16 = *(a1 + 30136);
  v14 = *(a1 + 30120);
  v18 = v14;
  v19 = *(a1 + 30136);
  v8 = ZSTD_customCalloc(16 * v7, &v18);
  if (!v8)
  {
    return -64;
  }

  v9 = *v6;
  v10 = v6[1];
  *v6 = v8;
  v6[1] = 2 * v7;
  v6[2] = 0;
  if (!v10)
  {
LABEL_13:
    v18 = v14;
    v19 = v16;
    ZSTD_customFree(v9, &v18);
    goto LABEL_17;
  }

  v11 = v9;
  while (!*v11 || ZSTD_DDictHashSet_emplaceDDict(v6, *v11) <= 0xFFFFFFFFFFFFFF88)
  {
    ++v11;
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  return -1;
}

uint64_t ZSTD_decompressStream(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v3 = a3[2];
  v5 = *a3;
  v7 = a2[1];
  v6 = a2[2];
  v8 = *a2;
  v9 = (*a2 + v6);
  v89 = v9;
  if (v4 < v3)
  {
    return -72;
  }

  if (v6 > v7)
  {
    return -70;
  }

  v76 = v4 - v3;
  v78 = v9;
  v79 = v6;
  v82 = v3;
  v83 = v7;
  v81 = v4;
  v14 = (a1 + 29944);
  if (*(a1 + 30296) == 1)
  {
    if (*(a1 + 30212))
    {
      FrameHeader_advanced = -104;
      if (*(a1 + 30304) != v8 || *(a1 + 30320) != v6 || *(a1 + 30312) != v7)
      {
        return FrameHeader_advanced;
      }
    }
  }

  v84 = a1 + 95916;
  v85 = (v5 + v4);
  v86 = (v5 + v3);
  v15 = v8 + v7;
  v80 = a1 + 30304;
  v16 = (a1 + 30264);
  v75 = a1 + 30120;
  v77 = (v5 + v3);
LABEL_11:
  v17 = v89;
  while (1)
  {
    v18 = v14[67];
    if (v18 != 4)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v89 = v17;
LABEL_76:
          v52 = v85 - v86;
          v28 = v14[11];
          if (v28 - 3 >= 2)
          {
            v27 = *(a1 + 29920);
          }

          else
          {
            v27 = *(a1 + 29920);
            if (!v14[10])
            {
              if (v27 >= v52)
              {
                v53 = v85 - v86;
              }

              else
              {
                v53 = *(a1 + 29920);
              }

              if (v53 <= 1)
              {
                v54 = 1;
              }

              else
              {
                v54 = v53;
              }

              goto LABEL_86;
            }
          }

          v54 = v27;
          if (v27)
          {
LABEL_86:
            if (v52 >= v54)
            {
              v59 = ZSTD_decompressContinueStream(a1, &v89, v15, v86, v54);
              FrameHeader_advanced = v59;
              v86 += v54;
LABEL_102:
              if (v59 < 0xFFFFFFFFFFFFFF89)
              {
                goto LABEL_11;
              }

              return FrameHeader_advanced;
            }

            if (v86 == v85)
            {
              v61 = v85;
              v60 = v77;
              goto LABEL_107;
            }

            v14[67] = 3;
LABEL_89:
            v55 = *(a1 + 30232);
            v56 = v27 - v55;
            if (v28 == 7)
            {
              v57 = v86;
              if (v56 >= v85 - v86)
              {
                v58 = v85 - v86;
              }

              else
              {
                v58 = v27 - v55;
              }
            }

            else
            {
              if (v56 > *(a1 + 30224) - v55)
              {
                return -20;
              }

              v57 = v86;
              if (v56 >= v85 - v86)
              {
                v58 = v85 - v86;
              }

              else
              {
                v58 = v27 - v55;
              }

              if (v58)
              {
                memcpy((*(a1 + 30216) + v55), v86, v58);
                v55 = *(a1 + 30232);
              }
            }

            v86 = v57 + v58;
            *(a1 + 30232) = v55 + v58;
            if (v58 < v56)
            {
              goto LABEL_106;
            }

            *(a1 + 30232) = 0;
            v59 = ZSTD_decompressContinueStream(a1, &v89, v15, *(a1 + 30216), v27);
            FrameHeader_advanced = v59;
            goto LABEL_102;
          }

          v60 = v77;
          v61 = v86;
LABEL_128:
          v14[67] = 0;
          goto LABEL_107;
        }

        if (v18 == 3)
        {
          v89 = v17;
          v27 = *(a1 + 29920);
          v28 = v14[11];
          goto LABEL_89;
        }
      }

      else
      {
        if (!v18)
        {
          v26 = 0;
          v89 = v17;
          v14[67] = 1;
          *(a1 + 30232) = 0;
          *(a1 + 30272) = 0;
          *(a1 + 30280) = 0;
          *v16 = 0;
          *(a1 + 30288) = 0;
          v29 = *a2;
          *(v80 + 16) = a2[2];
          *v80 = v29;
          goto LABEL_30;
        }

        if (v18 == 1)
        {
          v89 = v17;
          v26 = *(a1 + 30280);
LABEL_30:
          FrameHeader_advanced = ZSTD_getFrameHeader_advanced(a1 + 29928, v84, v26, v14[38]);
          if (v14[66] && *(a1 + 30200))
          {
            ZSTD_DCtx_selectFrameDDict(a1);
          }

          if (FrameHeader_advanced > 0xFFFFFFFFFFFFFF88)
          {
            return FrameHeader_advanced;
          }

          if (FrameHeader_advanced)
          {
            v30 = *(a1 + 30280);
            v31 = FrameHeader_advanced - v30;
            if (FrameHeader_advanced - v30 <= v85 - v86)
            {
              memcpy((v84 + v30), v86, FrameHeader_advanced - v30);
              *(a1 + 30280) = FrameHeader_advanced;
              v86 += v31;
              goto LABEL_11;
            }

            if (v85 != v86)
            {
              memcpy((v84 + v30), v86, v85 - v86);
              v30 = *(a1 + 30280) + v85 - v86;
              *(a1 + 30280) = v30;
            }

            a3[2] = a3[1];
            v71 = 2;
            if (!v14[38])
            {
              v71 = 6;
            }

            if (v71 <= FrameHeader_advanced)
            {
              v71 = FrameHeader_advanced;
            }

            return v71 - v30 + 3;
          }

          v32 = *(a1 + 29928);
          if (v32 != -1 && v14[1] != 1)
          {
            v33 = v89;
            if (v15 - v89 >= v32)
            {
              FrameSizeInfo = ZSTD_findFrameSizeInfo(v77, v76);
              if (FrameSizeInfo <= v76)
              {
                v72 = FrameSizeInfo;
                ZSTD_getDDict(a1);
                v60 = v77;
                v74 = ZSTD_decompressMultiFrame(a1, v33, v15 - v33, v77, v72, 0, 0, v73);
                FrameHeader_advanced = v74;
                if (v74 > 0xFFFFFFFFFFFFFF88)
                {
                  return FrameHeader_advanced;
                }

                v61 = &v77[v72];
                v89 = &v33[v74];
                *(a1 + 29920) = 0;
                goto LABEL_128;
              }
            }
          }

          if (v14[88] == 1 && v14[1] != 1)
          {
            v35 = *(a1 + 29928);
            if (v35 != -1 && v15 - v89 < v35)
            {
              return -70;
            }
          }

          ZSTD_getDDict(a1);
          ZSTD_decompressBegin_usingDDict(a1, v36);
          if (*v84 >> 4 == 25481893)
          {
            v37 = *(v84 + 4);
            v38 = 7;
          }

          else
          {
            v39 = ZSTD_decodeFrameHeader(a1, v84, *(a1 + 30280));
            if (v39 > 0xFFFFFFFFFFFFFF88)
            {
              return v39;
            }

            v38 = 2;
            v37 = 3;
          }

          *(a1 + 29920) = v37;
          v14[11] = v38;
          v40 = *(a1 + 29936);
          if (v40 <= 0x400)
          {
            v40 = 1024;
          }

          *(a1 + 29936) = v40;
          if (v40 > *(a1 + 30240))
          {
            return -16;
          }

          if (*v14 <= 4)
          {
            v41 = 4;
          }

          else
          {
            v41 = *v14;
          }

          if (v14[88])
          {
            v42 = 0;
          }

          else
          {
            v43 = 0x20000;
            if (v40 < 0x20000)
            {
              v43 = v40;
            }

            v44 = v40 + 131136 + v43;
            if (v44 >= *(a1 + 29928))
            {
              v42 = *(a1 + 29928);
            }

            else
            {
              v42 = v44;
            }
          }

          v45 = *(a1 + 30224);
          v46 = *(a1 + 30256);
          if (v46 + v45 >= 3 * (v42 + v41))
          {
            v48 = v84;
            v47 = *(v84 + 20) + 1;
          }

          else
          {
            v47 = 0;
            v48 = v84;
          }

          *(v48 + 20) = v47;
          if (v45 >= v41 && v46 >= v42 && v47 < 0x80)
          {
            goto LABEL_75;
          }

          v49 = *(a1 + 30160);
          if (v49)
          {
            if (v42 + v41 <= v49 - 95944)
            {
              v50 = *(a1 + 30216);
LABEL_74:
              *(a1 + 30224) = v41;
              *(a1 + 30248) = &v50[v41];
              *(a1 + 30256) = v42;
LABEL_75:
              v14[67] = 2;
              goto LABEL_76;
            }
          }

          else
          {
            v51 = *(a1 + 30216);
            v87 = *v75;
            v88 = *(v75 + 16);
            ZSTD_customFree(v51, &v87);
            *(a1 + 30224) = 0;
            *(a1 + 30256) = 0;
            v87 = *v75;
            v88 = *(v75 + 16);
            v50 = ZSTD_customMalloc(v42 + v41, &v87);
            *(a1 + 30216) = v50;
            if (v50)
            {
              goto LABEL_74;
            }
          }

          return -64;
        }
      }

      v89 = v17;
      return -1;
    }

    v19 = *(a1 + 30272);
    v20 = *(a1 + 30264);
    v21 = v19 - v20;
    v22 = v15 - v17;
    if (v15 - v17 >= (v19 - v20))
    {
      v23 = v19 - v20;
    }

    else
    {
      v23 = v15 - v17;
    }

    if (v23)
    {
      memcpy(v17, (*(a1 + 30248) + v20), v23);
      v20 = *(a1 + 30264);
    }

    v17 += v23;
    v24 = v20 + v23;
    *v16 = v24;
    if (v21 > v22)
    {
      break;
    }

    v14[67] = 2;
    v25 = *(a1 + 30256);
    if (v25 < *(a1 + 29928) && v24 + *v14 > v25)
    {
      *v16 = 0;
      *(a1 + 30272) = 0;
    }
  }

  v89 = v17;
LABEL_106:
  v60 = v77;
  v61 = v86;
LABEL_107:
  a3[2] = &v61[-*a3];
  v62 = v89;
  v63 = &v89[-*a2];
  a2[2] = v63;
  *v80 = *a2;
  *(v80 + 16) = v63;
  if (v61 != v60 || v62 != v78)
  {
    v14[87] = 0;
LABEL_114:
    v65 = *(a1 + 29920);
    if (v65)
    {
      InputType = ZSTD_nextInputType(a1);
      v67 = 3;
      if (InputType != 2)
      {
        v67 = 0;
      }

      return v65 - *(a1 + 30232) + v67;
    }

    else
    {
      v69 = v14[86];
      if (*(a1 + 30272) == *(a1 + 30264))
      {
        if (v69)
        {
          v70 = a3[2];
          if (v70 >= a3[1])
          {
            v14[67] = 2;
            return 1;
          }

          else
          {
            FrameHeader_advanced = 0;
            a3[2] = v70 + 1;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        FrameHeader_advanced = 1;
        if (!v69)
        {
          --a3[2];
          v14[86] = 1;
        }
      }
    }

    return FrameHeader_advanced;
  }

  v64 = v14[87];
  v14[87] = v64 + 1;
  if (v64 < 15)
  {
    goto LABEL_114;
  }

  if (v79 == v83)
  {
    return -70;
  }

  if (v81 != v82)
  {
    goto LABEL_114;
  }

  return -72;
}

uint64_t ZSTD_DCtx_selectFrameDDict(uint64_t result)
{
  if (*(result + 30176))
  {
    v1 = result;
    v2 = (result + 28672);
    v3 = *(result + 30200);
    v4 = *(result + 29956);
    LODWORD(v11) = v4;
    v5 = ZSTD_XXH64(&v11, 4uLL, 0);
    v6 = v3[1] - 1;
    v7 = v6 & v5;
    do
    {
      v8 = v7;
      result = ZSTD_getDictID_fromDDict(*(*v3 + 8 * v7));
      v7 = (v8 & v6) + 1;
    }

    while (result != v4 && result != 0);
    v10 = *(*v3 + 8 * v8);
    if (v10)
    {
      result = ZSTD_freeDDict(*(v1 + 30168));
      *(v1 + 30168) = 0;
      v2[378] = v2[321];
      *(v1 + 30176) = v10;
      v2[380] = -1;
    }
  }

  return result;
}

unint64_t ZSTD_decompressContinueStream(uint64_t a1, char **a2, uint64_t a3, _DWORD *a4, size_t a5)
{
  v6 = a1 + 28672;
  v7 = *(a1 + 29988);
  if (*(a1 + 30296))
  {
    v9 = *a2;
    if (v7 == 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = a3 - v9;
    }

    result = ZSTD_decompressContinue(a1, v9, v10, a4, a5);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      *a2 += result;
      goto LABEL_16;
    }
  }

  else
  {
    if (v7 == 7)
    {
      v12 = 0;
      v13 = *(a1 + 30264);
    }

    else
    {
      v13 = *(a1 + 30264);
      v12 = *(a1 + 30256) - v13;
    }

    result = ZSTD_decompressContinue(a1, (*(a1 + 30248) + v13), v12, a4, a5);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      if (v7 == 7 || result != 0)
      {
        *(a1 + 30272) = *(a1 + 30264) + result;
        v15 = 4;
LABEL_17:
        result = 0;
        *(v6 + 1540) = v15;
        return result;
      }

LABEL_16:
      v15 = 2;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t ZSTD_DDictHashSet_emplaceDDict(uint64_t *a1, uint64_t a2)
{
  DictID_fromDDict = ZSTD_getDictID_fromDDict(a2);
  LODWORD(v13) = DictID_fromDDict;
  v5 = ZSTD_XXH64(&v13, 4uLL, 0);
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    return -1;
  }

  v9 = v6 - 1;
  v10 = (v6 - 1) & v5;
  v11 = *a1;
  v12 = *(*a1 + 8 * v10);
  if (v12)
  {
    while (ZSTD_getDictID_fromDDict(v12) != DictID_fromDDict)
    {
      v10 = (v10 & v9) + 1;
      v11 = *a1;
      v12 = *(*a1 + 8 * v10);
      if (!v12)
      {
        v7 = a1[2];
        goto LABEL_7;
      }
    }

    result = 0;
    *(*a1 + 8 * v10) = a2;
  }

  else
  {
LABEL_7:
    result = 0;
    *(v11 + 8 * v10) = a2;
    a1[2] = v7 + 1;
  }

  return result;
}

uint64_t ZSTD_fillHashTable(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(result + 44);
  v5 = (v3 + v4);
  v6 = v3 + v4 + 3;
  if (v6 < a2 - 6)
  {
    v7 = *(result + 96);
    v8 = *(result + 256);
    v9 = *(result + 248);
    result = (64 - v9);
    v10 = 32 - v9;
    v11 = v4 + 1;
    do
    {
      if (v8 > 6)
      {
        if (v8 == 7)
        {
          v12 = 0xCF1BBCDCBFA56300 * *v5;
        }

        else
        {
          if (v8 != 8)
          {
LABEL_10:
            v13 = (-1640531535 * *v5) >> v10;
            goto LABEL_14;
          }

          v12 = 0xCF1BBCDCB7A56463 * *v5;
        }
      }

      else if (v8 == 5)
      {
        v12 = 0xCF1BBCDCBB000000 * *v5;
      }

      else
      {
        if (v8 != 6)
        {
          goto LABEL_10;
        }

        v12 = 0xCF1BBCDCBF9B0000 * *v5;
      }

      v13 = v12 >> result;
LABEL_14:
      *(v7 + 4 * v13) = v5 - v3;
      if (a3)
      {
        v14 = v11;
        for (i = 1; i != 3; ++i)
        {
          if (v8 > 6)
          {
            if (v8 == 7)
            {
              v16 = 0xCF1BBCDCBFA56300 * *(v5 + i);
              goto LABEL_26;
            }

            if (v8 == 8)
            {
              v16 = 0xCF1BBCDCB7A56463 * *(v5 + i);
              goto LABEL_26;
            }
          }

          else
          {
            if (v8 == 5)
            {
              v16 = 0xCF1BBCDCBB000000 * *(v5 + i);
              goto LABEL_26;
            }

            if (v8 == 6)
            {
              v16 = 0xCF1BBCDCBF9B0000 * *(v5 + i);
LABEL_26:
              v17 = v16 >> result;
              goto LABEL_27;
            }
          }

          v17 = (-1640531535 * *(v5 + i)) >> v10;
LABEL_27:
          if (!*(v7 + 4 * v17))
          {
            *(v7 + 4 * v17) = v14;
          }

          ++v14;
        }
      }

      v6 += 3;
      v11 += 3;
      v5 = (v5 + 3);
    }

    while (v6 < a2 - 6);
  }

  return result;
}

uint64_t ZSTD_compressBlock_fast(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = *(a1 + 256);
  v6 = *(a1 + 260);
  v7 = *(a1 + 96);
  if (v6 < 2)
  {
    v97 = *(a1 + 8);
    v10 = &a4[a5];
    v98 = a4 + a5 - v97;
    v99 = 1 << *(a1 + 240);
    v100 = *(a1 + 24);
    v101 = v98 - v100 > v99;
    v102 = v98 - v99;
    v103 = *(a1 + 40) == 0;
    if (v103 && v101)
    {
      v104 = v102;
    }

    else
    {
      v104 = v100;
    }

    v105 = v97 + v104;
    v106 = (v10 - 4);
    v107 = *a3;
    v108 = a3[1];
    if ((v97 + v104) == a4)
    {
      v109 = a4 + 1;
    }

    else
    {
      v109 = a4;
    }

    v110 = v109 - v97 - v100 > v99;
    v111 = v109 - v97 - v99;
    if (!v103 || !v110)
    {
      v111 = *(a1 + 24);
    }

    v112 = v109 - v97 - v111;
    if (v108 <= v112)
    {
      v113 = v108;
    }

    else
    {
      v113 = 0;
    }

    if (v107 <= v112)
    {
      v114 = v107;
    }

    else
    {
      v114 = 0;
    }

    v115 = v109 + 3;
    v577 = *a3;
    if (v5 != 5)
    {
      if (v5 != 6)
      {
        if (v5 == 7)
        {
          if (v115 < v106)
          {
            v116 = 64 - *(a1 + 248);
            v117 = v10 - 7;
            v118 = (v10 - 16);
            v567 = v10 - 1;
            while (1)
            {
              v119 = (v109 + 2);
              v121 = v109 + 1;
              v120 = *(v109 + 1);
              v122 = v109 + 128;
              v123 = (0xCF1BBCDCBFA56300 * *v109) >> v116;
              v124 = *(v7 + 4 * v123);
              v125 = 2;
              while (1)
              {
                v126 = v119;
                _X5 = v115;
                v128 = (0xCF1BBCDCBFA56300 * v120) >> v116;
                v129 = *&v119[-v114];
                v130 = v109 - v97;
                *(v7 + 4 * v123) = v109 - v97;
                if (v114 && *v126 == v129)
                {
                  v135 = 0;
                  v136 = *(v126 - 1) == v126[-v114 - 1];
                  if (*(v126 - 1) == v126[-v114 - 1])
                  {
                    v137 = 5;
                  }

                  else
                  {
                    v137 = 4;
                  }

                  v109 = &v126[-v136];
                  v138 = &v126[-v114 - v136];
                  v126 = v121;
                  v139 = v114;
                  v114 = v113;
                  goto LABEL_163;
                }

                if (v124 >= v104 && *v109 == *(v97 + v124))
                {
                  v131 = v124;
                  v126 = v121;
                  goto LABEL_154;
                }

                v131 = *(v7 + 4 * v128);
                v123 = (0xCF1BBCDCBFA56300 * *v126) >> v116;
                v130 = v121 - v97;
                *(v7 + 4 * v128) = v121 - v97;
                if (v131 >= v104 && *v121 == *(v97 + v131))
                {
                  break;
                }

                v124 = *(v7 + 4 * v123);
                v120 = *_X5;
                v119 = &v126[v125];
                if (&v126[v125] >= v122)
                {
                  v132 = v125 + 1;
                  __asm
                  {
                    PRFM            #0, [X5,#0x40]
                    PRFM            #0, [X5,#0x80]
                  }

                  v122 += 128;
                }

                else
                {
                  v132 = v125;
                }

                v115 = &_X5[v125];
                v125 = v132;
                v121 = _X5;
                v109 = v126;
                if (v115 >= v106)
                {
                  goto LABEL_825;
                }
              }

              v109 = v121;
              v128 = v123;
              v124 = v131;
LABEL_154:
              v138 = (v97 + v131);
              v139 = (v109 - (v97 + v131));
              v135 = v139 + 2;
              if (v124 <= v104 || v109 <= a4)
              {
                v137 = 4;
              }

              else
              {
                v140 = v109 - 1;
                v141 = (v97 - 1 + v131);
                v137 = 4;
                while (*v140 == *v141)
                {
                  ++v137;
                  v142 = v140 - 1;
                  v143 = v141 - 1;
                  if (v140 > a4)
                  {
                    --v140;
                    v60 = v141-- > v105;
                    if (v60)
                    {
                      continue;
                    }
                  }

                  v109 = v142 + 1;
                  v138 = v143 + 1;
                  goto LABEL_163;
                }

                v109 = v140 + 1;
                v138 = v141 + 1;
              }

LABEL_163:
              v144 = &v109[v137];
              v145 = &v138[v137];
              if (v117 <= &v109[v137])
              {
                v147 = &v109[v137];
LABEL_170:
                v153 = v10 - 3;
                if (v147 < (v10 - 3) && *v145 == *v147)
                {
                  v145 += 4;
                  v147 += 2;
                }

                if (v147 < v567 && *v145 == *v147)
                {
                  v145 += 2;
                  ++v147;
                }

                if (v147 < v10 && *v145 == *v147)
                {
                  v147 = (v147 + 1);
                }

                v152 = v147 - v144;
              }

              else
              {
                if (*v145 == *v144)
                {
                  v146 = 0;
                  v145 = &v138[v137 + 8];
                  v147 = &v109[v137 + 8];
                  do
                  {
                    if (v147 >= v117)
                    {
                      goto LABEL_170;
                    }

                    v149 = *v145;
                    v145 += 8;
                    v148 = v149;
                    v151 = *v147;
                    v147 += 4;
                    v150 = v151;
                    v146 += 8;
                  }

                  while (v148 == v151);
                  v152 = v146 + (__clz(__rbit64(v150 ^ v148)) >> 3);
                }

                else
                {
                  v152 = __clz(__rbit64(*v144 ^ *v145)) >> 3;
                }

                v153 = v10 - 3;
              }

              v154 = v109 - a4;
              v155 = *(a2 + 24);
              if (v109 > v118)
              {
                break;
              }

              *v155 = *a4;
              v159 = *(a2 + 24);
              if (v154 > 0x10)
              {
                v160 = (v159 + 16);
                v161 = v159 + v154;
                v162 = (a4 + 16);
                do
                {
                  v163 = *v162++;
                  *v160++ = v163;
                }

                while (v160 < v161);
LABEL_193:
                *(a2 + 24) += v154;
                v164 = *(a2 + 8);
                if (v154 >= 0x10000)
                {
                  v165 = (v164 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v165;
                }

                goto LABEL_196;
              }

              *(a2 + 24) = v159 + v154;
              v164 = *(a2 + 8);
LABEL_196:
              *(v164 + 4) = v154;
              *v164 = v135 + 1;
              v166 = v152 + v137 - 3;
              if (v166 >= 0x10000)
              {
                v167 = (v164 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v167;
              }

              *(v164 + 6) = v166;
              v168 = v164 + 8;
              *(a2 + 8) = v168;
              a4 = &v109[v152 + v137];
              if (v126 < a4)
              {
                *(v7 + 4 * v128) = v126 - v97;
              }

              if (a4 <= v106)
              {
                *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *(v97 + 2 + v130)) >> v116)) = v130 + 2;
                *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 2)) >> v116)) = a4 - 2 - v97;
                if (v114)
                {
                  v169 = v139;
                  while (1)
                  {
                    v113 = v169;
                    v169 = v114;
                    if (*a4 != *&a4[-v114])
                    {
                      break;
                    }

                    v170 = (a4 + 4);
                    v171 = &a4[-v169 + 4];
                    if (v117 <= (a4 + 4))
                    {
                      v173 = (a4 + 4);
LABEL_212:
                      if (v173 < v153 && *v171 == *v173)
                      {
                        v171 += 4;
                        v173 += 2;
                      }

                      if (v173 < v567 && *v171 == *v173)
                      {
                        v171 += 2;
                        ++v173;
                      }

                      if (v173 < v10 && *v171 == *v173)
                      {
                        v173 = (v173 + 1);
                      }

                      v178 = v173 - v170;
                    }

                    else if (*v171 == *v170)
                    {
                      v172 = 0;
                      v173 = (a4 + 12);
                      v171 = &a4[-v169 + 12];
                      do
                      {
                        if (v173 >= v117)
                        {
                          goto LABEL_212;
                        }

                        v175 = *v171;
                        v171 += 8;
                        v174 = v175;
                        v177 = *v173;
                        v173 += 4;
                        v176 = v177;
                        v172 += 8;
                      }

                      while (v174 == v177);
                      v178 = v172 + (__clz(__rbit64(v176 ^ v174)) >> 3);
                    }

                    else
                    {
                      v178 = __clz(__rbit64(*v170 ^ *v171)) >> 3;
                    }

                    *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v116)) = a4 - v97;
                    if (a4 <= v118)
                    {
                      **(a2 + 24) = *a4;
                      v168 = *(a2 + 8);
                    }

                    *(v168 + 4) = 0;
                    *v168 = 1;
                    if (v178 + 1 >= 0x10000)
                    {
                      v179 = (v168 - *a2) >> 3;
                      *(a2 + 72) = 2;
                      *(a2 + 76) = v179;
                    }

                    a4 += v178 + 4;
                    *(v168 + 6) = v178 + 1;
                    v168 += 8;
                    *(a2 + 8) = v168;
                    v114 = v113;
                    v139 = v169;
                    if (a4 > v106)
                    {
                      goto LABEL_231;
                    }
                  }

                  v139 = v113;
                  v113 = v114;
                }

                else
                {
                  v113 = 0;
                }
              }

              else
              {
                v113 = v114;
              }

LABEL_231:
              v115 = a4 + 3;
              v109 = a4;
              v114 = v139;
              if ((a4 + 3) >= v106)
              {
                goto LABEL_826;
              }
            }

            if (a4 <= v118)
            {
              v156 = (v155 + v118 - a4);
              do
              {
                v157 = *a4;
                a4 += 16;
                *v155++ = v157;
              }

              while (v155 < v156);
              a4 = (v10 - 16);
              v155 = v156;
            }

            while (a4 < v109)
            {
              v158 = *a4++;
              *v155 = v158;
              v155 = (v155 + 1);
            }

            goto LABEL_193;
          }

LABEL_825:
          LODWORD(v139) = v114;
LABEL_826:
          if (v108 <= v112)
          {
            v559 = 0;
          }

          else
          {
            v559 = v108;
          }

          if (v577 > v112)
          {
            v559 = v577;
          }

          if (v139)
          {
            v560 = v139;
          }

          else
          {
            v560 = v559;
          }

          if (v113)
          {
            v559 = v113;
          }

          goto LABEL_850;
        }

        if (v115 >= v106)
        {
          goto LABEL_825;
        }

        v495 = 32 - *(a1 + 248);
        v496 = v10 - 7;
        v497 = (v10 - 16);
        v573 = v10 - 1;
        while (1)
        {
          v498 = (v109 + 2);
          v499 = v109 + 1;
          v500 = *(v109 + 1);
          v501 = v109 + 128;
          v502 = (-1640531535 * *v109) >> v495;
          v503 = *(v7 + 4 * v502);
          v504 = 2;
          while (1)
          {
            v505 = v498;
            _X26 = v115;
            v507 = (-1640531535 * v500) >> v495;
            v508 = *&v498[-v114];
            v509 = v109 - v97;
            *(v7 + 4 * v502) = v109 - v97;
            v510 = *v505;
            if (v114 && v510 == v508)
            {
              v515 = 0;
              v516 = *(v505 - 1) == v505[-v114 - 1];
              if (*(v505 - 1) == v505[-v114 - 1])
              {
                v517 = 5;
              }

              else
              {
                v517 = 4;
              }

              v109 = &v505[-v516];
              v518 = &v505[-v114 - v516];
              v505 = v499;
              v139 = v114;
              v114 = v113;
              goto LABEL_755;
            }

            if (v503 >= v104 && *v109 == *(v97 + v503))
            {
              v511 = v503;
              v505 = v499;
              goto LABEL_746;
            }

            v511 = *(v7 + 4 * v507);
            v502 = (-1640531535 * v510) >> v495;
            v509 = v499 - v97;
            *(v7 + 4 * v507) = v499 - v97;
            if (v511 >= v104 && *v499 == *(v97 + v511))
            {
              break;
            }

            v503 = *(v7 + 4 * v502);
            v500 = *_X26;
            v498 = &v505[v504];
            if (&v505[v504] >= v501)
            {
              v512 = v504 + 1;
              __asm
              {
                PRFM            #0, [X26,#0x40]
                PRFM            #0, [X26,#0x80]
              }

              v501 += 128;
            }

            else
            {
              v512 = v504;
            }

            v115 = &_X26[v504];
            v504 = v512;
            v499 = _X26;
            v109 = v505;
            if (v115 >= v106)
            {
              goto LABEL_825;
            }
          }

          v109 = v499;
          v507 = v502;
          v503 = v511;
LABEL_746:
          v518 = (v97 + v511);
          v139 = (v109 - (v97 + v511));
          v515 = v139 + 2;
          if (v503 <= v104 || v109 <= a4)
          {
            v517 = 4;
          }

          else
          {
            v519 = v109 - 1;
            v520 = (v97 - 1 + v511);
            v517 = 4;
            while (*v519 == *v520)
            {
              ++v517;
              v521 = v519 - 1;
              v522 = v520 - 1;
              if (v519 > a4)
              {
                --v519;
                v60 = v520-- > v97 + v104;
                if (v60)
                {
                  continue;
                }
              }

              v109 = v521 + 1;
              v518 = v522 + 1;
              goto LABEL_755;
            }

            v109 = v519 + 1;
            v518 = v520 + 1;
          }

LABEL_755:
          v523 = &v109[v517];
          v524 = &v518[v517];
          if (v496 <= &v109[v517])
          {
            v526 = &v109[v517];
LABEL_762:
            v532 = v10 - 3;
            if (v526 < (v10 - 3) && *v524 == *v526)
            {
              v524 += 4;
              v526 += 2;
            }

            if (v526 < v573 && *v524 == *v526)
            {
              v524 += 2;
              ++v526;
            }

            if (v526 < v10 && *v524 == *v526)
            {
              v526 = (v526 + 1);
            }

            v531 = v526 - v523;
          }

          else
          {
            if (*v524 == *v523)
            {
              v525 = 0;
              v524 = &v518[v517 + 8];
              v526 = &v109[v517 + 8];
              do
              {
                if (v526 >= v496)
                {
                  goto LABEL_762;
                }

                v528 = *v524;
                v524 += 8;
                v527 = v528;
                v530 = *v526;
                v526 += 4;
                v529 = v530;
                v525 += 8;
              }

              while (v527 == v530);
              v531 = v525 + (__clz(__rbit64(v529 ^ v527)) >> 3);
            }

            else
            {
              v531 = __clz(__rbit64(*v523 ^ *v524)) >> 3;
            }

            v532 = v10 - 3;
          }

          v533 = v109 - a4;
          v534 = *(a2 + 24);
          if (v109 > v497)
          {
            break;
          }

          *v534 = *a4;
          v538 = *(a2 + 24);
          if (v533 > 0x10)
          {
            v539 = (v538 + 16);
            v540 = v538 + v533;
            v541 = (a4 + 16);
            do
            {
              v542 = *v541++;
              *v539++ = v542;
            }

            while (v539 < v540);
LABEL_785:
            *(a2 + 24) += v533;
            v543 = *(a2 + 8);
            if (v533 >= 0x10000)
            {
              v544 = (v543 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v544;
            }

            goto LABEL_788;
          }

          *(a2 + 24) = v538 + v533;
          v543 = *(a2 + 8);
LABEL_788:
          *(v543 + 4) = v533;
          *v543 = v515 + 1;
          v545 = v531 + v517 - 3;
          if (v545 >= 0x10000)
          {
            v546 = (v543 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v546;
          }

          *(v543 + 6) = v545;
          v547 = v543 + 8;
          *(a2 + 8) = v547;
          a4 = &v109[v531 + v517];
          if (v505 < a4)
          {
            *(v7 + 4 * v507) = v505 - v97;
          }

          if (a4 <= v106)
          {
            *(v7 + 4 * ((-1640531535 * *(v97 + 2 + v509)) >> v495)) = v509 + 2;
            *(v7 + 4 * ((-1640531535 * *(a4 - 2)) >> v495)) = a4 - 2 - v97;
            if (v114)
            {
              v548 = v139;
              while (1)
              {
                v113 = v548;
                v548 = v114;
                if (*a4 != *&a4[-v114])
                {
                  break;
                }

                v549 = (a4 + 4);
                v550 = &a4[-v114 + 4];
                if (v496 <= (a4 + 4))
                {
                  v552 = (a4 + 4);
LABEL_804:
                  if (v552 < v532 && *v550 == *v552)
                  {
                    v550 += 4;
                    v552 += 2;
                  }

                  if (v552 < v573 && *v550 == *v552)
                  {
                    v550 += 2;
                    ++v552;
                  }

                  if (v552 < v10 && *v550 == *v552)
                  {
                    v552 = (v552 + 1);
                  }

                  v557 = v552 - v549;
                }

                else if (*v550 == *v549)
                {
                  v551 = 0;
                  v552 = (a4 + 12);
                  v550 = &a4[-v114 + 12];
                  do
                  {
                    if (v552 >= v496)
                    {
                      goto LABEL_804;
                    }

                    v554 = *v550;
                    v550 += 8;
                    v553 = v554;
                    v556 = *v552;
                    v552 += 4;
                    v555 = v556;
                    v551 += 8;
                  }

                  while (v553 == v556);
                  v557 = v551 + (__clz(__rbit64(v555 ^ v553)) >> 3);
                }

                else
                {
                  v557 = __clz(__rbit64(*v549 ^ *v550)) >> 3;
                }

                *(v7 + 4 * ((-1640531535 * *a4) >> v495)) = a4 - v97;
                if (a4 <= v497)
                {
                  **(a2 + 24) = *a4;
                  v547 = *(a2 + 8);
                }

                *(v547 + 4) = 0;
                *v547 = 1;
                if (v557 + 1 >= 0x10000)
                {
                  v558 = (v547 - *a2) >> 3;
                  *(a2 + 72) = 2;
                  *(a2 + 76) = v558;
                }

                a4 += v557 + 4;
                *(v547 + 6) = v557 + 1;
                v547 += 8;
                *(a2 + 8) = v547;
                v114 = v113;
                v139 = v548;
                if (a4 > v106)
                {
                  goto LABEL_823;
                }
              }

              v139 = v113;
              v113 = v114;
            }

            else
            {
              v113 = 0;
            }
          }

          else
          {
            v113 = v114;
          }

LABEL_823:
          v115 = a4 + 3;
          v109 = a4;
          v114 = v139;
          if ((a4 + 3) >= v106)
          {
            goto LABEL_826;
          }
        }

        if (a4 <= v497)
        {
          v535 = (v534 + v497 - a4);
          do
          {
            v536 = *a4;
            a4 += 16;
            *v534++ = v536;
          }

          while (v534 < v535);
          a4 = (v10 - 16);
          v534 = v535;
        }

        while (a4 < v109)
        {
          v537 = *a4++;
          *v534 = v537;
          v534 = (v534 + 1);
        }

        goto LABEL_785;
      }

      if (v115 >= v106)
      {
        goto LABEL_825;
      }

      v242 = 64 - *(a1 + 248);
      v243 = v10 - 7;
      v244 = (v10 - 16);
      v569 = v10 - 1;
      while (1)
      {
        v245 = (v109 + 2);
        v247 = v109 + 1;
        v246 = *(v109 + 1);
        v248 = v109 + 128;
        v249 = (0xCF1BBCDCBF9B0000 * *v109) >> v242;
        v250 = *(v7 + 4 * v249);
        v251 = 2;
        while (1)
        {
          v252 = v245;
          _X5 = v115;
          v254 = (0xCF1BBCDCBF9B0000 * v246) >> v242;
          v255 = *&v245[-v114];
          v256 = v109 - v97;
          *(v7 + 4 * v249) = v109 - v97;
          if (v114 && *v252 == v255)
          {
            v261 = 0;
            v262 = *(v252 - 1) == v252[-v114 - 1];
            if (*(v252 - 1) == v252[-v114 - 1])
            {
              v263 = 5;
            }

            else
            {
              v263 = 4;
            }

            v109 = &v252[-v262];
            v264 = &v252[-v114 - v262];
            v252 = v247;
            v139 = v114;
            v114 = v113;
            goto LABEL_360;
          }

          if (v250 >= v104 && *v109 == *(v97 + v250))
          {
            v257 = v250;
            v252 = v247;
            goto LABEL_351;
          }

          v257 = *(v7 + 4 * v254);
          v249 = (0xCF1BBCDCBF9B0000 * *v252) >> v242;
          v256 = v247 - v97;
          *(v7 + 4 * v254) = v247 - v97;
          if (v257 >= v104 && *v247 == *(v97 + v257))
          {
            break;
          }

          v250 = *(v7 + 4 * v249);
          v246 = *_X5;
          v245 = &v252[v251];
          if (&v252[v251] >= v248)
          {
            v258 = v251 + 1;
            __asm
            {
              PRFM            #0, [X5,#0x40]
              PRFM            #0, [X5,#0x80]
            }

            v248 += 128;
          }

          else
          {
            v258 = v251;
          }

          v115 = &_X5[v251];
          v251 = v258;
          v247 = _X5;
          v109 = v252;
          if (v115 >= v106)
          {
            goto LABEL_825;
          }
        }

        v109 = v247;
        v254 = v249;
        v250 = v257;
LABEL_351:
        v264 = (v97 + v257);
        v139 = (v109 - (v97 + v257));
        v261 = v139 + 2;
        if (v250 <= v104 || v109 <= a4)
        {
          v263 = 4;
        }

        else
        {
          v265 = v109 - 1;
          v266 = (v97 - 1 + v257);
          v263 = 4;
          while (*v265 == *v266)
          {
            ++v263;
            v267 = v265 - 1;
            v268 = v266 - 1;
            if (v265 > a4)
            {
              --v265;
              v60 = v266-- > v105;
              if (v60)
              {
                continue;
              }
            }

            v109 = v267 + 1;
            v264 = v268 + 1;
            goto LABEL_360;
          }

          v109 = v265 + 1;
          v264 = v266 + 1;
        }

LABEL_360:
        v269 = &v109[v263];
        v270 = &v264[v263];
        if (v243 <= &v109[v263])
        {
          v272 = &v109[v263];
LABEL_367:
          v278 = v10 - 3;
          if (v272 < (v10 - 3) && *v270 == *v272)
          {
            v270 += 4;
            v272 += 2;
          }

          if (v272 < v569 && *v270 == *v272)
          {
            v270 += 2;
            ++v272;
          }

          if (v272 < v10 && *v270 == *v272)
          {
            v272 = (v272 + 1);
          }

          v277 = v272 - v269;
        }

        else
        {
          if (*v270 == *v269)
          {
            v271 = 0;
            v270 = &v264[v263 + 8];
            v272 = &v109[v263 + 8];
            do
            {
              if (v272 >= v243)
              {
                goto LABEL_367;
              }

              v274 = *v270;
              v270 += 8;
              v273 = v274;
              v276 = *v272;
              v272 += 4;
              v275 = v276;
              v271 += 8;
            }

            while (v273 == v276);
            v277 = v271 + (__clz(__rbit64(v275 ^ v273)) >> 3);
          }

          else
          {
            v277 = __clz(__rbit64(*v269 ^ *v270)) >> 3;
          }

          v278 = v10 - 3;
        }

        v279 = v109 - a4;
        v280 = *(a2 + 24);
        if (v109 > v244)
        {
          break;
        }

        *v280 = *a4;
        v284 = *(a2 + 24);
        if (v279 > 0x10)
        {
          v285 = (v284 + 16);
          v286 = v284 + v279;
          v287 = (a4 + 16);
          do
          {
            v288 = *v287++;
            *v285++ = v288;
          }

          while (v285 < v286);
LABEL_390:
          *(a2 + 24) += v279;
          v289 = *(a2 + 8);
          if (v279 >= 0x10000)
          {
            v290 = (v289 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v290;
          }

          goto LABEL_393;
        }

        *(a2 + 24) = v284 + v279;
        v289 = *(a2 + 8);
LABEL_393:
        *(v289 + 4) = v279;
        *v289 = v261 + 1;
        v291 = v277 + v263 - 3;
        if (v291 >= 0x10000)
        {
          v292 = (v289 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v292;
        }

        *(v289 + 6) = v291;
        v293 = v289 + 8;
        *(a2 + 8) = v293;
        a4 = &v109[v277 + v263];
        if (v252 < a4)
        {
          *(v7 + 4 * v254) = v252 - v97;
        }

        if (a4 <= v106)
        {
          *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *(v97 + 2 + v256)) >> v242)) = v256 + 2;
          *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 2)) >> v242)) = a4 - 2 - v97;
          if (v114)
          {
            v294 = v139;
            while (1)
            {
              v113 = v294;
              v294 = v114;
              if (*a4 != *&a4[-v114])
              {
                break;
              }

              v295 = (a4 + 4);
              v296 = &a4[-v294 + 4];
              if (v243 <= (a4 + 4))
              {
                v298 = (a4 + 4);
LABEL_409:
                if (v298 < v278 && *v296 == *v298)
                {
                  v296 += 4;
                  v298 += 2;
                }

                if (v298 < v569 && *v296 == *v298)
                {
                  v296 += 2;
                  ++v298;
                }

                if (v298 < v10 && *v296 == *v298)
                {
                  v298 = (v298 + 1);
                }

                v303 = v298 - v295;
              }

              else if (*v296 == *v295)
              {
                v297 = 0;
                v298 = (a4 + 12);
                v296 = &a4[-v294 + 12];
                do
                {
                  if (v298 >= v243)
                  {
                    goto LABEL_409;
                  }

                  v300 = *v296;
                  v296 += 8;
                  v299 = v300;
                  v302 = *v298;
                  v298 += 4;
                  v301 = v302;
                  v297 += 8;
                }

                while (v299 == v302);
                v303 = v297 + (__clz(__rbit64(v301 ^ v299)) >> 3);
              }

              else
              {
                v303 = __clz(__rbit64(*v295 ^ *v296)) >> 3;
              }

              *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v242)) = a4 - v97;
              if (a4 <= v244)
              {
                **(a2 + 24) = *a4;
                v293 = *(a2 + 8);
              }

              *(v293 + 4) = 0;
              *v293 = 1;
              if (v303 + 1 >= 0x10000)
              {
                v304 = (v293 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v304;
              }

              a4 += v303 + 4;
              *(v293 + 6) = v303 + 1;
              v293 += 8;
              *(a2 + 8) = v293;
              v114 = v113;
              v139 = v294;
              if (a4 > v106)
              {
                goto LABEL_428;
              }
            }

            v139 = v113;
            v113 = v114;
          }

          else
          {
            v113 = 0;
          }
        }

        else
        {
          v113 = v114;
        }

LABEL_428:
        v115 = a4 + 3;
        v109 = a4;
        v114 = v139;
        if ((a4 + 3) >= v106)
        {
          goto LABEL_826;
        }
      }

      if (a4 <= v244)
      {
        v281 = (v280 + v244 - a4);
        do
        {
          v282 = *a4;
          a4 += 16;
          *v280++ = v282;
        }

        while (v280 < v281);
        a4 = (v10 - 16);
        v280 = v281;
      }

      while (a4 < v109)
      {
        v283 = *a4++;
        *v280 = v283;
        v280 = (v280 + 1);
      }

      goto LABEL_390;
    }

    if (v115 >= v106)
    {
      goto LABEL_825;
    }

    v367 = 64 - *(a1 + 248);
    v368 = v10 - 7;
    v369 = (v10 - 16);
    v571 = v10 - 1;
    while (1)
    {
      v370 = (v109 + 2);
      v372 = v109 + 1;
      v371 = *(v109 + 1);
      v373 = v109 + 128;
      v374 = (0xCF1BBCDCBB000000 * *v109) >> v367;
      v375 = *(v7 + 4 * v374);
      v376 = 2;
      while (1)
      {
        v377 = v370;
        _X5 = v115;
        v379 = (0xCF1BBCDCBB000000 * v371) >> v367;
        v380 = *&v370[-v114];
        v381 = v109 - v97;
        *(v7 + 4 * v374) = v109 - v97;
        if (v114 && *v377 == v380)
        {
          v386 = 0;
          v387 = *(v377 - 1) == v377[-v114 - 1];
          if (*(v377 - 1) == v377[-v114 - 1])
          {
            v388 = 5;
          }

          else
          {
            v388 = 4;
          }

          v109 = &v377[-v387];
          v389 = &v377[-v114 - v387];
          v377 = v372;
          v139 = v114;
          v114 = v113;
          goto LABEL_557;
        }

        if (v375 >= v104 && *v109 == *(v97 + v375))
        {
          v382 = v375;
          v377 = v372;
          goto LABEL_548;
        }

        v382 = *(v7 + 4 * v379);
        v374 = (0xCF1BBCDCBB000000 * *v377) >> v367;
        v381 = v372 - v97;
        *(v7 + 4 * v379) = v372 - v97;
        if (v382 >= v104 && *v372 == *(v97 + v382))
        {
          break;
        }

        v375 = *(v7 + 4 * v374);
        v371 = *_X5;
        v370 = &v377[v376];
        if (&v377[v376] >= v373)
        {
          v383 = v376 + 1;
          __asm
          {
            PRFM            #0, [X5,#0x40]
            PRFM            #0, [X5,#0x80]
          }

          v373 += 128;
        }

        else
        {
          v383 = v376;
        }

        v115 = &_X5[v376];
        v376 = v383;
        v372 = _X5;
        v109 = v377;
        if (v115 >= v106)
        {
          goto LABEL_825;
        }
      }

      v109 = v372;
      v379 = v374;
      v375 = v382;
LABEL_548:
      v389 = (v97 + v382);
      v139 = (v109 - (v97 + v382));
      v386 = v139 + 2;
      if (v375 <= v104 || v109 <= a4)
      {
        v388 = 4;
      }

      else
      {
        v390 = v109 - 1;
        v391 = (v97 - 1 + v382);
        v388 = 4;
        while (*v390 == *v391)
        {
          ++v388;
          v392 = v390 - 1;
          v393 = v391 - 1;
          if (v390 > a4)
          {
            --v390;
            v60 = v391-- > v105;
            if (v60)
            {
              continue;
            }
          }

          v109 = v392 + 1;
          v389 = v393 + 1;
          goto LABEL_557;
        }

        v109 = v390 + 1;
        v389 = v391 + 1;
      }

LABEL_557:
      v394 = &v109[v388];
      v395 = &v389[v388];
      if (v368 <= &v109[v388])
      {
        v397 = &v109[v388];
LABEL_564:
        v403 = v10 - 3;
        if (v397 < (v10 - 3) && *v395 == *v397)
        {
          v395 += 4;
          v397 += 2;
        }

        if (v397 < v571 && *v395 == *v397)
        {
          v395 += 2;
          ++v397;
        }

        if (v397 < v10 && *v395 == *v397)
        {
          v397 = (v397 + 1);
        }

        v402 = v397 - v394;
      }

      else
      {
        if (*v395 == *v394)
        {
          v396 = 0;
          v395 = &v389[v388 + 8];
          v397 = &v109[v388 + 8];
          do
          {
            if (v397 >= v368)
            {
              goto LABEL_564;
            }

            v399 = *v395;
            v395 += 8;
            v398 = v399;
            v401 = *v397;
            v397 += 4;
            v400 = v401;
            v396 += 8;
          }

          while (v398 == v401);
          v402 = v396 + (__clz(__rbit64(v400 ^ v398)) >> 3);
        }

        else
        {
          v402 = __clz(__rbit64(*v394 ^ *v395)) >> 3;
        }

        v403 = v10 - 3;
      }

      v404 = v109 - a4;
      v405 = *(a2 + 24);
      if (v109 > v369)
      {
        break;
      }

      *v405 = *a4;
      v409 = *(a2 + 24);
      if (v404 > 0x10)
      {
        v410 = (v409 + 16);
        v411 = v409 + v404;
        v412 = (a4 + 16);
        do
        {
          v413 = *v412++;
          *v410++ = v413;
        }

        while (v410 < v411);
LABEL_587:
        *(a2 + 24) += v404;
        v414 = *(a2 + 8);
        if (v404 >= 0x10000)
        {
          v415 = (v414 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v415;
        }

        goto LABEL_590;
      }

      *(a2 + 24) = v409 + v404;
      v414 = *(a2 + 8);
LABEL_590:
      *(v414 + 4) = v404;
      *v414 = v386 + 1;
      v416 = v402 + v388 - 3;
      if (v416 >= 0x10000)
      {
        v417 = (v414 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v417;
      }

      *(v414 + 6) = v416;
      v418 = v414 + 8;
      *(a2 + 8) = v418;
      a4 = &v109[v402 + v388];
      if (v377 < a4)
      {
        *(v7 + 4 * v379) = v377 - v97;
      }

      if (a4 <= v106)
      {
        *(v7 + 4 * ((0xCF1BBCDCBB000000 * *(v97 + 2 + v381)) >> v367)) = v381 + 2;
        *(v7 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 2)) >> v367)) = a4 - 2 - v97;
        if (v114)
        {
          v419 = v139;
          while (1)
          {
            v113 = v419;
            v419 = v114;
            if (*a4 != *&a4[-v114])
            {
              break;
            }

            v420 = (a4 + 4);
            v421 = &a4[-v419 + 4];
            if (v368 <= (a4 + 4))
            {
              v423 = (a4 + 4);
LABEL_606:
              if (v423 < v403 && *v421 == *v423)
              {
                v421 += 4;
                v423 += 2;
              }

              if (v423 < v571 && *v421 == *v423)
              {
                v421 += 2;
                ++v423;
              }

              if (v423 < v10 && *v421 == *v423)
              {
                v423 = (v423 + 1);
              }

              v428 = v423 - v420;
            }

            else if (*v421 == *v420)
            {
              v422 = 0;
              v423 = (a4 + 12);
              v421 = &a4[-v419 + 12];
              do
              {
                if (v423 >= v368)
                {
                  goto LABEL_606;
                }

                v425 = *v421;
                v421 += 8;
                v424 = v425;
                v427 = *v423;
                v423 += 4;
                v426 = v427;
                v422 += 8;
              }

              while (v424 == v427);
              v428 = v422 + (__clz(__rbit64(v426 ^ v424)) >> 3);
            }

            else
            {
              v428 = __clz(__rbit64(*v420 ^ *v421)) >> 3;
            }

            *(v7 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v367)) = a4 - v97;
            if (a4 <= v369)
            {
              **(a2 + 24) = *a4;
              v418 = *(a2 + 8);
            }

            *(v418 + 4) = 0;
            *v418 = 1;
            if (v428 + 1 >= 0x10000)
            {
              v429 = (v418 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v429;
            }

            a4 += v428 + 4;
            *(v418 + 6) = v428 + 1;
            v418 += 8;
            *(a2 + 8) = v418;
            v114 = v113;
            v139 = v419;
            if (a4 > v106)
            {
              goto LABEL_625;
            }
          }

          v139 = v113;
          v113 = v114;
        }

        else
        {
          v113 = 0;
        }
      }

      else
      {
        v113 = v114;
      }

LABEL_625:
      v115 = a4 + 3;
      v109 = a4;
      v114 = v139;
      if ((a4 + 3) >= v106)
      {
        goto LABEL_826;
      }
    }

    if (a4 <= v369)
    {
      v406 = (v405 + v369 - a4);
      do
      {
        v407 = *a4;
        a4 += 16;
        *v405++ = v407;
      }

      while (v405 < v406);
      a4 = (v10 - 16);
      v405 = v406;
    }

    while (a4 < v109)
    {
      v408 = *a4++;
      *v405 = v408;
      v405 = (v405 + 1);
    }

    goto LABEL_587;
  }

  v8 = v6 + 1;
  v9 = *(a1 + 8);
  v10 = &a4[a5];
  v11 = a4 + a5 - v9;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 24);
  v14 = v11 - v13 > v12;
  v15 = v11 - v12;
  v16 = *(a1 + 40) == 0;
  if (v16 && v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  v574 = v9 + v17;
  v18 = (v10 - 4);
  v19 = *a3;
  v20 = a3[1];
  if ((v9 + v17) == a4)
  {
    v21 = a4 + 1;
  }

  else
  {
    v21 = a4;
  }

  v22 = v21 - v9 - v13 > v12;
  v23 = v21 - v9 - v12;
  if (!v16 || !v22)
  {
    v23 = *(a1 + 24);
  }

  v24 = v21 - v9 - v23;
  if (v20 <= v24)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  if (v19 <= v24)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  v27 = &v21[v8];
  v28 = &v21[v8 + 1];
  v575 = v8;
  v576 = *a3;
  if (v5 == 5)
  {
    if (v28 >= v18)
    {
LABEL_839:
      LODWORD(v55) = v26;
      goto LABEL_840;
    }

    v305 = 64 - *(a1 + 248);
    v306 = v10 - 7;
    v307 = (v10 - 16);
    v564 = v10 - 1;
    v570 = v10 - 3;
    while (1)
    {
      v309 = v21 + 1;
      v308 = *(v21 + 1);
      v310 = v21 + 128;
      v311 = (0xCF1BBCDCBB000000 * *v21) >> v305;
      v312 = *(v7 + 4 * v311);
      v313 = v8;
      while (1)
      {
        v314 = v27;
        _X2 = v28;
        v316 = (0xCF1BBCDCBB000000 * v308) >> v305;
        v317 = *&v314[-v26];
        v318 = v21 - v9;
        *(v7 + 4 * v311) = v21 - v9;
        if (v26 && *v314 == v317)
        {
          v323 = 0;
          v324 = *(v314 - 1) == v314[-v26 - 1];
          if (*(v314 - 1) == v314[-v26 - 1])
          {
            v325 = 5;
          }

          else
          {
            v325 = 4;
          }

          v21 = &v314[-v324];
          v326 = &v314[-v26 - v324];
          v314 = v309;
          v55 = v26;
          v26 = v25;
          goto LABEL_459;
        }

        if (v312 >= v17 && *v21 == *(v9 + v312))
        {
          v319 = v312;
          v314 = v309;
          goto LABEL_450;
        }

        v319 = *(v7 + 4 * v316);
        v311 = (0xCF1BBCDCBB000000 * *v314) >> v305;
        v318 = v309 - v9;
        *(v7 + 4 * v316) = v309 - v9;
        if (v319 >= v17 && *v309 == *(v9 + v319))
        {
          break;
        }

        v312 = *(v7 + 4 * v311);
        v308 = *_X2;
        v27 = &v314[v313];
        if (&v314[v313] >= v310)
        {
          v320 = v313 + 1;
          __asm
          {
            PRFM            #0, [X2,#0x40]
            PRFM            #0, [X2,#0x80]
          }

          v310 += 128;
        }

        else
        {
          v320 = v313;
        }

        v28 = &_X2[v313];
        v313 = v320;
        v309 = _X2;
        v21 = v314;
        if (v28 >= v18)
        {
          goto LABEL_839;
        }
      }

      v21 = v309;
      v316 = v311;
      v312 = v319;
LABEL_450:
      v326 = (v9 + v319);
      v55 = (v21 - (v9 + v319));
      v323 = v55 + 2;
      if (v312 <= v17 || v21 <= a4)
      {
        v325 = 4;
      }

      else
      {
        v327 = v21 - 1;
        v328 = (v9 - 1 + v319);
        v325 = 4;
        while (*v327 == *v328)
        {
          ++v325;
          v329 = v327 - 1;
          v330 = v328 - 1;
          if (v327 > a4)
          {
            --v327;
            v60 = v328-- > v574;
            if (v60)
            {
              continue;
            }
          }

          v21 = v329 + 1;
          v326 = v330 + 1;
          goto LABEL_459;
        }

        v21 = v327 + 1;
        v326 = v328 + 1;
      }

LABEL_459:
      v331 = &v21[v325];
      v332 = &v326[v325];
      if (v306 <= &v21[v325])
      {
        v334 = &v21[v325];
LABEL_466:
        if (v334 < v570 && *v332 == *v334)
        {
          v332 += 4;
          v334 += 2;
        }

        if (v334 < v564 && *v332 == *v334)
        {
          v332 += 2;
          ++v334;
        }

        if (v334 < v10 && *v332 == *v334)
        {
          v334 = (v334 + 1);
        }

        v339 = v334 - v331;
      }

      else if (*v332 == *v331)
      {
        v333 = 0;
        v332 = &v326[v325 + 8];
        v334 = &v21[v325 + 8];
        do
        {
          if (v334 >= v306)
          {
            goto LABEL_466;
          }

          v336 = *v332;
          v332 += 8;
          v335 = v336;
          v338 = *v334;
          v334 += 4;
          v337 = v338;
          v333 += 8;
        }

        while (v335 == v338);
        v339 = v333 + (__clz(__rbit64(v337 ^ v335)) >> 3);
      }

      else
      {
        v339 = __clz(__rbit64(*v331 ^ *v332)) >> 3;
      }

      v340 = v21 - a4;
      v341 = *(a2 + 24);
      if (v21 <= v307)
      {
        *v341 = *a4;
        v345 = *(a2 + 24);
        if (v340 <= 0x10)
        {
          *(a2 + 24) = v345 + v340;
          v350 = *(a2 + 8);
          goto LABEL_491;
        }

        v346 = (v345 + 16);
        v347 = v345 + v340;
        v348 = (a4 + 16);
        do
        {
          v349 = *v348++;
          *v346++ = v349;
        }

        while (v346 < v347);
      }

      else
      {
        if (a4 <= v307)
        {
          v342 = (v341 + v307 - a4);
          do
          {
            v343 = *a4;
            a4 += 16;
            *v341++ = v343;
          }

          while (v341 < v342);
          a4 = (v10 - 16);
          v341 = v342;
        }

        while (a4 < v21)
        {
          v344 = *a4++;
          *v341 = v344;
          v341 = (v341 + 1);
        }
      }

      *(a2 + 24) += v340;
      v350 = *(a2 + 8);
      if (v340 >= 0x10000)
      {
        v351 = (v350 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v351;
      }

LABEL_491:
      v352 = v339 + v325;
      *(v350 + 4) = v340;
      *v350 = v323 + 1;
      v353 = v339 + v325 - 3;
      if (v353 >= 0x10000)
      {
        v354 = (v350 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v354;
      }

      *(v350 + 6) = v353;
      v355 = v350 + 8;
      *(a2 + 8) = v350 + 8;
      a4 = &v21[v352];
      if (v314 < &v21[v352])
      {
        *(v7 + 4 * v316) = v314 - v9;
      }

      if (a4 <= v18)
      {
        *(v7 + 4 * ((0xCF1BBCDCBB000000 * *(v9 + 2 + v318)) >> v305)) = v318 + 2;
        *(v7 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 2)) >> v305)) = a4 - 2 - v9;
        v8 = v575;
        if (v26)
        {
          v356 = v55;
          while (1)
          {
            v25 = v356;
            v356 = v26;
            if (*a4 != *&a4[-v26])
            {
              break;
            }

            v357 = (a4 + 4);
            v358 = &a4[-v356 + 4];
            if (v306 <= (a4 + 4))
            {
              v360 = (a4 + 4);
LABEL_507:
              if (v360 < v570 && *v358 == *v360)
              {
                v358 += 4;
                v360 += 2;
              }

              if (v360 < v564 && *v358 == *v360)
              {
                v358 += 2;
                ++v360;
              }

              if (v360 < v10 && *v358 == *v360)
              {
                v360 = (v360 + 1);
              }

              v365 = v360 - v357;
            }

            else if (*v358 == *v357)
            {
              v359 = 0;
              v360 = (a4 + 12);
              v358 = &a4[-v356 + 12];
              do
              {
                if (v360 >= v306)
                {
                  goto LABEL_507;
                }

                v362 = *v358;
                v358 += 8;
                v361 = v362;
                v364 = *v360;
                v360 += 4;
                v363 = v364;
                v359 += 8;
              }

              while (v361 == v364);
              v365 = v359 + (__clz(__rbit64(v363 ^ v361)) >> 3);
            }

            else
            {
              v365 = __clz(__rbit64(*v357 ^ *v358)) >> 3;
            }

            *(v7 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v305)) = a4 - v9;
            if (a4 <= v307)
            {
              **(a2 + 24) = *a4;
              v355 = *(a2 + 8);
            }

            *(v355 + 4) = 0;
            *v355 = 1;
            if (v365 + 1 >= 0x10000)
            {
              v366 = (v355 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v366;
            }

            a4 += v365 + 4;
            *(v355 + 6) = v365 + 1;
            v355 += 8;
            *(a2 + 8) = v355;
            v26 = v25;
            v55 = v356;
            if (a4 > v18)
            {
              goto LABEL_526;
            }
          }

          v55 = v25;
          v25 = v26;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = v26;
        v8 = v575;
      }

LABEL_526:
      v27 = &a4[v575];
      v28 = &a4[v575 + 1];
      v21 = a4;
      v26 = v55;
      if (v28 >= v18)
      {
        goto LABEL_840;
      }
    }
  }

  if (v5 != 6)
  {
    if (v5 == 7)
    {
      if (v28 < v18)
      {
        v29 = 64 - *(a1 + 248);
        v30 = v10 - 7;
        v31 = (v10 - 16);
        v562 = v10 - 1;
        v566 = v10 - 3;
LABEL_21:
        v33 = v21 + 1;
        v32 = *(v21 + 1);
        v34 = v21 + 128;
        v35 = (0xCF1BBCDCBFA56300 * *v21) >> v29;
        v36 = *(v7 + 4 * v35);
        v37 = v8;
        while (1)
        {
          v38 = v27;
          _X2 = v28;
          v40 = (0xCF1BBCDCBFA56300 * v32) >> v29;
          v41 = *&v38[-v26];
          v42 = v21 - v9;
          *(v7 + 4 * v35) = v21 - v9;
          if (v26 && *v38 == v41)
          {
            v51 = 0;
            v52 = *(v38 - 1) == v38[-v26 - 1];
            if (*(v38 - 1) == v38[-v26 - 1])
            {
              v53 = 5;
            }

            else
            {
              v53 = 4;
            }

            v21 = &v38[-v52];
            v54 = &v38[-v26 - v52];
            v38 = v33;
            v55 = v26;
            v26 = v25;
            goto LABEL_48;
          }

          if (v36 >= v17 && *v21 == *(v9 + v36))
          {
            v43 = v36;
            v38 = v33;
            goto LABEL_39;
          }

          v43 = *(v7 + 4 * v40);
          v35 = (0xCF1BBCDCBFA56300 * *v38) >> v29;
          v42 = v33 - v9;
          *(v7 + 4 * v40) = v33 - v9;
          if (v43 >= v17 && *v33 == *(v9 + v43))
          {
            break;
          }

          v36 = *(v7 + 4 * v35);
          v32 = *_X2;
          v27 = &v38[v37];
          if (&v38[v37] >= v34)
          {
            v44 = v37 + 1;
            __asm
            {
              PRFM            #0, [X2,#0x40]
              PRFM            #0, [X2,#0x80]
            }

            v34 += 128;
          }

          else
          {
            v44 = v37;
          }

          v28 = &_X2[v37];
          v37 = v44;
          v33 = _X2;
          v21 = v38;
          if (v28 >= v18)
          {
            goto LABEL_725;
          }
        }

        v21 = v33;
        v40 = v35;
        v36 = v43;
LABEL_39:
        v54 = (v9 + v43);
        v55 = (v21 - (v9 + v43));
        v51 = v55 + 2;
        if (v36 <= v17 || v21 <= a4)
        {
          v53 = 4;
        }

        else
        {
          v56 = v21 - 1;
          v57 = (v9 - 1 + v43);
          v53 = 4;
          while (*v56 == *v57)
          {
            ++v53;
            v58 = v56 - 1;
            v59 = v57 - 1;
            if (v56 > a4)
            {
              --v56;
              v60 = v57-- > v574;
              if (v60)
              {
                continue;
              }
            }

            v21 = v58 + 1;
            v54 = v59 + 1;
            goto LABEL_48;
          }

          v21 = v56 + 1;
          v54 = v57 + 1;
        }

LABEL_48:
        v61 = &v21[v53];
        v62 = &v54[v53];
        if (v30 <= &v21[v53])
        {
          v64 = &v21[v53];
LABEL_55:
          if (v64 < v566 && *v62 == *v64)
          {
            v62 += 4;
            v64 += 2;
          }

          if (v64 < v562 && *v62 == *v64)
          {
            v62 += 2;
            ++v64;
          }

          if (v64 < v10 && *v62 == *v64)
          {
            v64 = (v64 + 1);
          }

          v69 = v64 - v61;
        }

        else if (*v62 == *v61)
        {
          v63 = 0;
          v62 = &v54[v53 + 8];
          v64 = &v21[v53 + 8];
          do
          {
            if (v64 >= v30)
            {
              goto LABEL_55;
            }

            v66 = *v62;
            v62 += 8;
            v65 = v66;
            v68 = *v64;
            v64 += 4;
            v67 = v68;
            v63 += 8;
          }

          while (v65 == v68);
          v69 = v63 + (__clz(__rbit64(v67 ^ v65)) >> 3);
        }

        else
        {
          v69 = __clz(__rbit64(*v61 ^ *v62)) >> 3;
        }

        v70 = v21 - a4;
        v71 = *(a2 + 24);
        if (v21 <= v31)
        {
          *v71 = *a4;
          v75 = *(a2 + 24);
          if (v70 <= 0x10)
          {
            *(a2 + 24) = v75 + v70;
            v80 = *(a2 + 8);
LABEL_80:
            v82 = v69 + v53;
            *(v80 + 4) = v70;
            *v80 = v51 + 1;
            v83 = v69 + v53 - 3;
            if (v83 >= 0x10000)
            {
              v84 = (v80 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v84;
            }

            *(v80 + 6) = v83;
            v85 = v80 + 8;
            *(a2 + 8) = v80 + 8;
            a4 = &v21[v82];
            if (v38 < &v21[v82])
            {
              *(v7 + 4 * v40) = v38 - v9;
            }

            if (a4 > v18)
            {
              v25 = v26;
              v8 = v575;
              goto LABEL_115;
            }

            *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *(v9 + 2 + v42)) >> v29)) = v42 + 2;
            *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 2)) >> v29)) = a4 - 2 - v9;
            v8 = v575;
            if (!v26)
            {
              v25 = 0;
              goto LABEL_115;
            }

            v86 = v55;
            while (1)
            {
              v25 = v86;
              v86 = v26;
              if (*a4 != *&a4[-v26])
              {
                v55 = v25;
                v25 = v26;
LABEL_115:
                v27 = &a4[v575];
                v28 = &a4[v575 + 1];
                v21 = a4;
                v26 = v55;
                if (v28 >= v18)
                {
LABEL_840:
                  if (v20 <= v24)
                  {
                    v559 = 0;
                  }

                  else
                  {
                    v559 = v20;
                  }

                  goto LABEL_843;
                }

                goto LABEL_21;
              }

              v87 = (a4 + 4);
              v88 = &a4[-v86 + 4];
              if (v30 <= (a4 + 4))
              {
                break;
              }

              if (*v88 == *v87)
              {
                v89 = 0;
                v90 = (a4 + 12);
                v88 = &a4[-v86 + 12];
                while (v90 < v30)
                {
                  v92 = *v88;
                  v88 += 8;
                  v91 = v92;
                  v94 = *v90;
                  v90 += 4;
                  v93 = v94;
                  v89 += 8;
                  if (v91 != v94)
                  {
                    v95 = v89 + (__clz(__rbit64(v93 ^ v91)) >> 3);
                    goto LABEL_107;
                  }
                }

                goto LABEL_96;
              }

              v95 = __clz(__rbit64(*v87 ^ *v88)) >> 3;
LABEL_107:
              *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v29)) = a4 - v9;
              if (a4 <= v31)
              {
                **(a2 + 24) = *a4;
                v85 = *(a2 + 8);
              }

              *(v85 + 4) = 0;
              *v85 = 1;
              if (v95 + 1 >= 0x10000)
              {
                v96 = (v85 - *a2) >> 3;
                *(a2 + 72) = 2;
                *(a2 + 76) = v96;
              }

              a4 += v95 + 4;
              *(v85 + 6) = v95 + 1;
              v85 += 8;
              *(a2 + 8) = v85;
              v26 = v25;
              v55 = v86;
              if (a4 > v18)
              {
                goto LABEL_115;
              }
            }

            v90 = (a4 + 4);
LABEL_96:
            if (v90 < v566 && *v88 == *v90)
            {
              v88 += 4;
              v90 += 2;
            }

            if (v90 < v562 && *v88 == *v90)
            {
              v88 += 2;
              ++v90;
            }

            if (v90 < v10 && *v88 == *v90)
            {
              v90 = (v90 + 1);
            }

            v95 = v90 - v87;
            goto LABEL_107;
          }

          v76 = (v75 + 16);
          v77 = v75 + v70;
          v78 = (a4 + 16);
          do
          {
            v79 = *v78++;
            *v76++ = v79;
          }

          while (v76 < v77);
        }

        else
        {
          if (a4 <= v31)
          {
            v72 = (v71 + v31 - a4);
            do
            {
              v73 = *a4;
              a4 += 16;
              *v71++ = v73;
            }

            while (v71 < v72);
            a4 = (v10 - 16);
            v71 = v72;
          }

          while (a4 < v21)
          {
            v74 = *a4++;
            *v71 = v74;
            v71 = (v71 + 1);
          }
        }

        *(a2 + 24) += v70;
        v80 = *(a2 + 8);
        if (v70 >= 0x10000)
        {
          v81 = (v80 - *a2) >> 3;
          *(a2 + 72) = 1;
          *(a2 + 76) = v81;
        }

        goto LABEL_80;
      }

LABEL_725:
      LODWORD(v55) = v26;
      goto LABEL_840;
    }

    if (v28 >= v18)
    {
      goto LABEL_725;
    }

    v430 = 32 - *(a1 + 248);
    v431 = v10 - 7;
    v432 = (v10 - 16);
    v565 = v10 - 1;
    v572 = v10 - 3;
    while (1)
    {
      v434 = v21 + 1;
      v433 = *(v21 + 1);
      v435 = v21 + 128;
      v436 = (-1640531535 * *v21) >> v430;
      v437 = *(v7 + 4 * v436);
      v438 = v8;
      while (1)
      {
        v439 = v27;
        _X23 = v28;
        v441 = (-1640531535 * v433) >> v430;
        v442 = *&v439[-v26];
        v443 = v21 - v9;
        *(v7 + 4 * v436) = v21 - v9;
        v444 = *v439;
        if (v26 && v444 == v442)
        {
          v449 = 0;
          v450 = *(v439 - 1) == v439[-v26 - 1];
          if (*(v439 - 1) == v439[-v26 - 1])
          {
            v451 = 5;
          }

          else
          {
            v451 = 4;
          }

          v21 = &v439[-v450];
          v452 = &v439[-v26 - v450];
          v439 = v434;
          v55 = v26;
          v26 = v25;
          goto LABEL_656;
        }

        if (v437 >= v17 && *v21 == *(v9 + v437))
        {
          v445 = v437;
          v439 = v434;
          goto LABEL_647;
        }

        v445 = *(v7 + 4 * v441);
        v436 = (-1640531535 * v444) >> v430;
        v443 = v434 - v9;
        *(v7 + 4 * v441) = v434 - v9;
        if (v445 >= v17 && *v434 == *(v9 + v445))
        {
          break;
        }

        v437 = *(v7 + 4 * v436);
        v433 = *_X23;
        v27 = &v439[v438];
        if (&v439[v438] >= v435)
        {
          v446 = v438 + 1;
          __asm
          {
            PRFM            #0, [X23,#0x40]
            PRFM            #0, [X23,#0x80]
          }

          v435 += 128;
        }

        else
        {
          v446 = v438;
        }

        v28 = &_X23[v438];
        v438 = v446;
        v434 = _X23;
        v21 = v439;
        if (v28 >= v18)
        {
          goto LABEL_725;
        }
      }

      v21 = v434;
      v441 = v436;
      v437 = v445;
LABEL_647:
      v452 = (v9 + v445);
      v55 = (v21 - (v9 + v445));
      v449 = v55 + 2;
      if (v437 <= v17 || v21 <= a4)
      {
        v451 = 4;
      }

      else
      {
        v453 = v21 - 1;
        v454 = (v9 - 1 + v445);
        v451 = 4;
        while (*v453 == *v454)
        {
          ++v451;
          v455 = v453 - 1;
          v456 = v454 - 1;
          if (v453 > a4)
          {
            --v453;
            v60 = v454-- > v574;
            if (v60)
            {
              continue;
            }
          }

          v21 = v455 + 1;
          v452 = v456 + 1;
          goto LABEL_656;
        }

        v21 = v453 + 1;
        v452 = v454 + 1;
      }

LABEL_656:
      v457 = &v21[v451];
      v458 = &v452[v451];
      if (v431 <= &v21[v451])
      {
        v461 = &v21[v451];
LABEL_663:
        if (v461 < v572 && *v458 == *v461)
        {
          v458 += 4;
          v461 += 2;
        }

        if (v461 < v565 && *v458 == *v461)
        {
          v458 += 2;
          ++v461;
        }

        if (v461 < v10 && *v458 == *v461)
        {
          v461 = (v461 + 1);
        }

        v466 = v461 - v457;
      }

      else
      {
        v459 = *v458;
        if (v459 == *v457)
        {
          v460 = 0;
          v458 = &v452[v451 + 8];
          v461 = &v21[v451 + 8];
          do
          {
            if (v461 >= v431)
            {
              goto LABEL_663;
            }

            v463 = *v458;
            v458 += 8;
            v462 = v463;
            v465 = *v461;
            v461 += 4;
            v464 = v465;
            v460 += 8;
          }

          while (v462 == v465);
          v466 = v460 + (__clz(__rbit64(v464 ^ v462)) >> 3);
        }

        else
        {
          v466 = __clz(__rbit64(*v457 ^ v459)) >> 3;
        }
      }

      v467 = v21 - a4;
      v468 = *(a2 + 24);
      if (v21 <= v432)
      {
        *v468 = *a4;
        v472 = *(a2 + 24);
        if (v467 <= 0x10)
        {
          *(a2 + 24) = v472 + v467;
          v477 = *(a2 + 8);
          goto LABEL_688;
        }

        v473 = (v472 + 16);
        v474 = v472 + v467;
        v475 = (a4 + 16);
        do
        {
          v476 = *v475++;
          *v473++ = v476;
        }

        while (v473 < v474);
      }

      else
      {
        if (a4 <= v432)
        {
          v469 = (v468 + v432 - a4);
          do
          {
            v470 = *a4;
            a4 += 16;
            *v468++ = v470;
          }

          while (v468 < v469);
          a4 = (v10 - 16);
          v468 = v469;
        }

        while (a4 < v21)
        {
          v471 = *a4++;
          *v468 = v471;
          v468 = (v468 + 1);
        }
      }

      *(a2 + 24) += v467;
      v477 = *(a2 + 8);
      if (v467 >= 0x10000)
      {
        v478 = (v477 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v478;
      }

LABEL_688:
      v479 = v466 + v451;
      *(v477 + 4) = v467;
      *v477 = v449 + 1;
      v480 = v466 + v451 - 3;
      if (v480 >= 0x10000)
      {
        v481 = (v477 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v481;
      }

      *(v477 + 6) = v480;
      v482 = v477 + 8;
      *(a2 + 8) = v477 + 8;
      a4 = &v21[v479];
      if (v439 < &v21[v479])
      {
        *(v7 + 4 * v441) = v439 - v9;
      }

      if (a4 <= v18)
      {
        *(v7 + 4 * ((-1640531535 * *(v9 + 2 + v443)) >> v430)) = v443 + 2;
        *(v7 + 4 * ((-1640531535 * *(a4 - 2)) >> v430)) = a4 - 2 - v9;
        v8 = v575;
        if (v26)
        {
          v483 = v55;
          while (1)
          {
            v25 = v483;
            v483 = v26;
            if (*a4 != *&a4[-v26])
            {
              break;
            }

            v484 = (a4 + 4);
            v485 = &a4[-v26 + 4];
            if (v431 <= (a4 + 4))
            {
              v488 = (a4 + 4);
LABEL_704:
              if (v488 < v572 && *v485 == *v488)
              {
                v485 += 4;
                v488 += 2;
              }

              if (v488 < v565 && *v485 == *v488)
              {
                v485 += 2;
                ++v488;
              }

              if (v488 < v10 && *v485 == *v488)
              {
                v488 = (v488 + 1);
              }

              v493 = v488 - v484;
            }

            else
            {
              v486 = *v485;
              if (v486 == *v484)
              {
                v487 = 0;
                v488 = (a4 + 12);
                v485 = &a4[-v26 + 12];
                do
                {
                  if (v488 >= v431)
                  {
                    goto LABEL_704;
                  }

                  v490 = *v485;
                  v485 += 8;
                  v489 = v490;
                  v492 = *v488;
                  v488 += 4;
                  v491 = v492;
                  v487 += 8;
                }

                while (v489 == v492);
                v493 = v487 + (__clz(__rbit64(v491 ^ v489)) >> 3);
              }

              else
              {
                v493 = __clz(__rbit64(*v484 ^ v486)) >> 3;
              }
            }

            *(v7 + 4 * ((-1640531535 * *a4) >> v430)) = a4 - v9;
            if (a4 <= v432)
            {
              **(a2 + 24) = *a4;
              v482 = *(a2 + 8);
            }

            *(v482 + 4) = 0;
            *v482 = 1;
            if (v493 + 1 >= 0x10000)
            {
              v494 = (v482 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v494;
            }

            a4 += v493 + 4;
            *(v482 + 6) = v493 + 1;
            v482 += 8;
            *(a2 + 8) = v482;
            v26 = v25;
            v55 = v483;
            if (a4 > v18)
            {
              goto LABEL_723;
            }
          }

          v55 = v25;
          v25 = v26;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = v26;
        v8 = v575;
      }

LABEL_723:
      v27 = &a4[v575];
      v28 = &a4[v575 + 1];
      v21 = a4;
      v26 = v55;
      if (v28 >= v18)
      {
        goto LABEL_840;
      }
    }
  }

  if (v28 >= v18)
  {
LABEL_836:
    LODWORD(v55) = v26;
    goto LABEL_837;
  }

  v180 = 64 - *(a1 + 248);
  v181 = v10 - 7;
  v182 = (v10 - 16);
  v563 = v10 - 1;
  v568 = v10 - 3;
  do
  {
    v184 = v21 + 1;
    v183 = *(v21 + 1);
    v185 = v21 + 128;
    v186 = (0xCF1BBCDCBF9B0000 * *v21) >> v180;
    v187 = *(v7 + 4 * v186);
    v188 = v8;
    while (1)
    {
      v189 = v27;
      _X2 = v28;
      v191 = (0xCF1BBCDCBF9B0000 * v183) >> v180;
      v192 = *&v189[-v26];
      v193 = v21 - v9;
      *(v7 + 4 * v186) = v21 - v9;
      if (v26 && *v189 == v192)
      {
        v198 = 0;
        v199 = *(v189 - 1) == v189[-v26 - 1];
        if (*(v189 - 1) == v189[-v26 - 1])
        {
          v200 = 5;
        }

        else
        {
          v200 = 4;
        }

        v21 = &v189[-v199];
        v201 = &v189[-v26 - v199];
        v189 = v184;
        v55 = v26;
        v26 = v25;
        goto LABEL_262;
      }

      if (v187 >= v17 && *v21 == *(v9 + v187))
      {
        v194 = v187;
        v189 = v184;
        goto LABEL_253;
      }

      v194 = *(v7 + 4 * v191);
      v186 = (0xCF1BBCDCBF9B0000 * *v189) >> v180;
      v193 = v184 - v9;
      *(v7 + 4 * v191) = v184 - v9;
      if (v194 >= v17 && *v184 == *(v9 + v194))
      {
        break;
      }

      v187 = *(v7 + 4 * v186);
      v183 = *_X2;
      v27 = &v189[v188];
      if (&v189[v188] >= v185)
      {
        v195 = v188 + 1;
        __asm
        {
          PRFM            #0, [X2,#0x40]
          PRFM            #0, [X2,#0x80]
        }

        v185 += 128;
      }

      else
      {
        v195 = v188;
      }

      v28 = &_X2[v188];
      v188 = v195;
      v184 = _X2;
      v21 = v189;
      if (v28 >= v18)
      {
        goto LABEL_836;
      }
    }

    v21 = v184;
    v191 = v186;
    v187 = v194;
LABEL_253:
    v201 = (v9 + v194);
    v55 = (v21 - (v9 + v194));
    v198 = v55 + 2;
    if (v187 <= v17 || v21 <= a4)
    {
      v200 = 4;
    }

    else
    {
      v202 = v21 - 1;
      v203 = (v9 - 1 + v194);
      v200 = 4;
      while (*v202 == *v203)
      {
        ++v200;
        v204 = v202 - 1;
        v205 = v203 - 1;
        if (v202 > a4)
        {
          --v202;
          v60 = v203-- > v574;
          if (v60)
          {
            continue;
          }
        }

        v21 = v204 + 1;
        v201 = v205 + 1;
        goto LABEL_262;
      }

      v21 = v202 + 1;
      v201 = v203 + 1;
    }

LABEL_262:
    v206 = &v21[v200];
    v207 = &v201[v200];
    if (v181 <= &v21[v200])
    {
      v209 = &v21[v200];
    }

    else
    {
      if (*v207 != *v206)
      {
        v214 = __clz(__rbit64(*v206 ^ *v207)) >> 3;
        goto LABEL_280;
      }

      v208 = 0;
      v207 = &v201[v200 + 8];
      v209 = &v21[v200 + 8];
      while (v209 < v181)
      {
        v211 = *v207;
        v207 += 8;
        v210 = v211;
        v213 = *v209;
        v209 += 4;
        v212 = v213;
        v208 += 8;
        if (v210 != v213)
        {
          v214 = v208 + (__clz(__rbit64(v212 ^ v210)) >> 3);
          goto LABEL_280;
        }
      }
    }

    if (v209 < v568 && *v207 == *v209)
    {
      v207 += 4;
      v209 += 2;
    }

    if (v209 < v563 && *v207 == *v209)
    {
      v207 += 2;
      ++v209;
    }

    if (v209 < v10 && *v207 == *v209)
    {
      v209 = (v209 + 1);
    }

    v214 = v209 - v206;
LABEL_280:
    v215 = v21 - a4;
    v216 = *(a2 + 24);
    if (v21 > v182)
    {
      if (a4 <= v182)
      {
        v217 = (v216 + v182 - a4);
        do
        {
          v218 = *a4;
          a4 += 16;
          *v216++ = v218;
        }

        while (v216 < v217);
        a4 = (v10 - 16);
        v216 = v217;
      }

      while (a4 < v21)
      {
        v219 = *a4++;
        *v216 = v219;
        v216 = (v216 + 1);
      }

      goto LABEL_291;
    }

    *v216 = *a4;
    v220 = *(a2 + 24);
    if (v215 > 0x10)
    {
      v221 = (v220 + 16);
      v222 = v220 + v215;
      v223 = (a4 + 16);
      do
      {
        v224 = *v223++;
        *v221++ = v224;
      }

      while (v221 < v222);
LABEL_291:
      *(a2 + 24) += v215;
      v225 = *(a2 + 8);
      if (v215 >= 0x10000)
      {
        v226 = (v225 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v226;
      }

      goto LABEL_294;
    }

    *(a2 + 24) = v220 + v215;
    v225 = *(a2 + 8);
LABEL_294:
    v227 = v214 + v200;
    *(v225 + 4) = v215;
    *v225 = v198 + 1;
    v228 = v214 + v200 - 3;
    if (v228 >= 0x10000)
    {
      v229 = (v225 - *a2) >> 3;
      *(a2 + 72) = 2;
      *(a2 + 76) = v229;
    }

    *(v225 + 6) = v228;
    v230 = v225 + 8;
    *(a2 + 8) = v225 + 8;
    a4 = &v21[v227];
    if (v189 < &v21[v227])
    {
      *(v7 + 4 * v191) = v189 - v9;
    }

    if (a4 > v18)
    {
      v25 = v26;
      v8 = v575;
      goto LABEL_329;
    }

    *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *(v9 + 2 + v193)) >> v180)) = v193 + 2;
    *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 2)) >> v180)) = a4 - 2 - v9;
    v8 = v575;
    if (!v26)
    {
      v25 = 0;
      goto LABEL_329;
    }

    v231 = v55;
    while (1)
    {
      v25 = v231;
      v231 = v26;
      if (*a4 != *&a4[-v26])
      {
        break;
      }

      v232 = (a4 + 4);
      v233 = &a4[-v231 + 4];
      if (v181 <= (a4 + 4))
      {
        v235 = (a4 + 4);
LABEL_310:
        if (v235 < v568 && *v233 == *v235)
        {
          v233 += 4;
          v235 += 2;
        }

        if (v235 < v563 && *v233 == *v235)
        {
          v233 += 2;
          ++v235;
        }

        if (v235 < v10 && *v233 == *v235)
        {
          v235 = (v235 + 1);
        }

        v240 = v235 - v232;
        goto LABEL_321;
      }

      if (*v233 == *v232)
      {
        v234 = 0;
        v235 = (a4 + 12);
        v233 = &a4[-v231 + 12];
        while (v235 < v181)
        {
          v237 = *v233;
          v233 += 8;
          v236 = v237;
          v239 = *v235;
          v235 += 4;
          v238 = v239;
          v234 += 8;
          if (v236 != v239)
          {
            v240 = v234 + (__clz(__rbit64(v238 ^ v236)) >> 3);
            goto LABEL_321;
          }
        }

        goto LABEL_310;
      }

      v240 = __clz(__rbit64(*v232 ^ *v233)) >> 3;
LABEL_321:
      *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v180)) = a4 - v9;
      if (a4 <= v182)
      {
        **(a2 + 24) = *a4;
        v230 = *(a2 + 8);
      }

      *(v230 + 4) = 0;
      *v230 = 1;
      if (v240 + 1 >= 0x10000)
      {
        v241 = (v230 - *a2) >> 3;
        *(a2 + 72) = 2;
        *(a2 + 76) = v241;
      }

      a4 += v240 + 4;
      *(v230 + 6) = v240 + 1;
      v230 += 8;
      *(a2 + 8) = v230;
      v26 = v25;
      v55 = v231;
      if (a4 > v18)
      {
        goto LABEL_329;
      }
    }

    v55 = v25;
    v25 = v26;
LABEL_329:
    v27 = &a4[v575];
    v28 = &a4[v575 + 1];
    v21 = a4;
    v26 = v55;
  }

  while (v28 < v18);
LABEL_837:
  v559 = v20;
  if (v20 <= v24)
  {
    v559 = 0;
  }

LABEL_843:
  if (v576 > v24)
  {
    v559 = v576;
  }

  if (v55)
  {
    v560 = v55;
  }

  else
  {
    v560 = v559;
  }

  if (v25)
  {
    v559 = v25;
  }

LABEL_850:
  *a3 = v560;
  a3[1] = v559;
  return v10 - a4;
}

unint64_t ZSTD_compressBlock_fast_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = *(a1 + 256);
  v6 = *(a1 + 96);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = (v7 + v8);
  v10 = &a4[a5];
  v11 = &a4[a5 - 8];
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a1 + 232);
  v15 = *(v14 + 96);
  v16 = *(v14 + 24);
  v17 = *(v14 + 8);
  v631 = v8 + v17 - *v14;
  v632 = *v14;
  v613 = v17 + v16;
  if (*v14 + a4 - (v7 + v8) == v17 + v16)
  {
    v18 = a4 + 1;
  }

  else
  {
    v18 = a4;
  }

  v626 = v7 + 2;
  if (v5 == 5)
  {
    if (v18 >= v11)
    {
      goto LABEL_992;
    }

    v604 = a3;
    LODWORD(v310) = *(a1 + 260);
    if (v310 <= 1)
    {
      v310 = 1;
    }

    else
    {
      v310 = v310;
    }

    v616 = v310;
    v311 = 64 - *(a1 + 248);
    v312 = v8 - 1;
    v612 = 64 - *(v14 + 248);
    v313 = v10 - 7;
    v620 = v10 - 1;
    v624 = v10 - 3;
    v314 = v10 - 32;
    v629 = v17 - v631;
    v607 = *(v14 + 8);
    v603 = v17 - 1;
    v598 = v17 + 12;
    while (1)
    {
      v315 = 0xCF1BBCDCBB000000 * *v18;
      v316 = *(v6 + 4 * (v315 >> v311));
      v317 = v18 - v7;
      v318 = (v18 - v7 - v12 + 1);
      v319 = (v17 + v318 - v631);
      if (v318 >= v8)
      {
        v319 = (v7 + v318);
      }

      *(v6 + 4 * (v315 >> v311)) = v317;
      if ((v312 - v318) < 3 || (v320 = v18 + 1, *v319 != *(v18 + 1)))
      {
        if (v316 > v8)
        {
          v338 = v7 + v316;
          if (*(v7 + v316) != *v18)
          {
            goto LABEL_538;
          }

          v339 = (v18 + 4);
          v340 = (v338 + 4);
          if (v313 <= (v18 + 4))
          {
            v342 = v18 + 4;
LABEL_541:
            if (v342 < v624 && *v340 == *v342)
            {
              ++v340;
              ++v342;
            }

            if (v342 < v620 && *v340 == *v342)
            {
              v340 = (v340 + 2);
              v342 = (v342 + 2);
            }

            if (v342 < v10 && *v340 == *v342)
            {
              v342 = (v342 + 1);
            }

            v347 = v342 - v339;
          }

          else if (*v340 == *v339)
          {
            v341 = 0;
            v340 = (v7 + 12 + v316);
            v342 = v18 + 12;
            do
            {
              if (v342 >= v313)
              {
                goto LABEL_541;
              }

              v344 = *v340;
              v340 += 2;
              v343 = v344;
              v346 = *v342;
              v342 += 2;
              v345 = v346;
              v341 += 8;
            }

            while (v343 == v346);
            v347 = v341 + (__clz(__rbit64(v345 ^ v343)) >> 3);
          }

          else
          {
            v347 = __clz(__rbit64(*v339 ^ *v340)) >> 3;
          }

          v361 = v347 + 4;
          if (v18 <= a4)
          {
            v320 = v18;
          }

          else
          {
            v362 = v18 - 1;
            v363 = (v7 - 1 + v316);
            while (*v362 == *v363)
            {
              ++v361;
              v364 = v362 - 1;
              if (v362 > a4)
              {
                --v362;
                v74 = v363-- > v9;
                if (v74)
                {
                  continue;
                }
              }

              v320 = v364 + 1;
              goto LABEL_561;
            }

            v320 = v362 + 1;
          }

LABEL_561:
          v365 = v320 - a4;
          v366 = *(a2 + 24);
          if (v320 <= v314)
          {
            *v366 = *a4;
            v370 = *(a2 + 24);
            if (v365 > 0x10)
            {
              v371 = (v370 + 16);
              v372 = (a4 + 16);
              do
              {
                v373 = *v372++;
                *v371++ = v373;
              }

              while (v371 < v370 + v365);
              goto LABEL_572;
            }

            *(a2 + 24) = v370 + v365;
            v374 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v314)
            {
              v367 = (v366 + v314 - a4);
              do
              {
                v368 = *a4;
                a4 += 16;
                *v366++ = v368;
              }

              while (v366 < v367);
              a4 = (v10 - 32);
              v366 = v367;
            }

            while (a4 < v320)
            {
              v369 = *a4++;
              *v366 = v369;
              v366 = (v366 + 1);
            }

LABEL_572:
            *(a2 + 24) += v365;
            v374 = *(a2 + 8);
            if (v365 >= 0x10000)
            {
              v375 = (v374 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v375;
            }
          }

          v376 = (v18 - v338);
          *(v374 + 4) = v365;
          *v374 = v376 + 3;
          v377 = v361 - 3;
          v13 = v12;
          v12 = v376;
          if (v361 - 3 < 0x10000)
          {
            goto LABEL_631;
          }

LABEL_630:
          v403 = (v374 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v403;
          v12 = v376;
          goto LABEL_631;
        }

        v348 = *(v15 + 4 * (v315 >> v612));
        if (v348 <= v16 || (v349 = v17 + v348, *(v17 + v348) != *v18))
        {
LABEL_538:
          v18 += v616 + ((v18 - a4) >> 8);
          goto LABEL_690;
        }

        v350 = (v18 + 4);
        v351 = (v349 + 4);
        v352 = &v632[v18 - v349];
        if (v352 >= v10)
        {
          v352 = v10;
        }

        if (v352 - 7 <= v350)
        {
          v354 = v351;
          v355 = v18 + 4;
LABEL_692:
          if (v355 < v352 - 3 && *v354 == *v355)
          {
            ++v354;
            ++v355;
          }

          if (v355 < v352 - 1 && *v354 == *v355)
          {
            v354 = (v354 + 2);
            v355 = (v355 + 2);
          }

          if (v355 < v352 && *v354 == *v355)
          {
            v355 = (v355 + 1);
          }

          v360 = v355 - v350;
        }

        else if (*v351 == *v350)
        {
          v353 = 0;
          v354 = (v598 + v348);
          v355 = v18 + 12;
          do
          {
            if (v355 >= v352 - 7)
            {
              goto LABEL_692;
            }

            v357 = *v354;
            v354 += 2;
            v356 = v357;
            v359 = *v355;
            v355 += 2;
            v358 = v359;
            v353 += 8;
          }

          while (v356 == v359);
          v360 = v353 + (__clz(__rbit64(v358 ^ v356)) >> 3);
        }

        else
        {
          v360 = __clz(__rbit64(*v350 ^ *v351)) >> 3;
        }

        if (v351 + v360 == v632)
        {
          v433 = &v350[v360];
          if (v313 <= v433)
          {
            v436 = v9;
            v435 = v433;
LABEL_710:
            if (v435 < v624 && *v436 == *v435)
            {
              v436 += 4;
              v435 += 4;
            }

            if (v435 < v620 && *v436 == *v435)
            {
              v436 += 2;
              v435 += 2;
            }

            if (v435 < v10 && *v436 == *v435)
            {
              ++v435;
            }

            v441 = v435 - v433;
          }

          else if (*v9 == *v433)
          {
            v434 = 0;
            v435 = &v18[v360 + 12];
            v436 = (v8 + v7 + 8);
            do
            {
              if (v435 >= v313)
              {
                goto LABEL_710;
              }

              v438 = *v436;
              v436 += 8;
              v437 = v438;
              v440 = *v435;
              v435 += 8;
              v439 = v440;
              v434 += 8;
            }

            while (v437 == v440);
            v441 = v434 + (__clz(__rbit64(v439 ^ v437)) >> 3);
          }

          else
          {
            v441 = __clz(__rbit64(*v433 ^ *v9)) >> 3;
          }

          v360 += v441;
        }

        v361 = v360 + 4;
        if (v18 <= a4)
        {
          goto LABEL_729;
        }

        v442 = v18 - 1;
        v443 = (v603 + v348);
        while (*v442 == *v443)
        {
          ++v361;
          v444 = v442 - 1;
          if (v442 > a4)
          {
            --v442;
            v74 = v443-- > v613;
            if (v74)
            {
              continue;
            }
          }

          v18 = v444 + 1;
          goto LABEL_729;
        }

        v18 = v442 + 1;
LABEL_729:
        v320 = v18;
        v445 = v18 - a4;
        v446 = *(a2 + 24);
        if (v18 <= v314)
        {
          *v446 = *a4;
          v450 = *(a2 + 24);
          if (v445 > 0x10)
          {
            v451 = (v450 + 16);
            v452 = (a4 + 16);
            do
            {
              v453 = *v452++;
              *v451++ = v453;
            }

            while (v451 < v450 + v445);
            goto LABEL_740;
          }

          *(a2 + 24) = v450 + v445;
          v374 = *(a2 + 8);
        }

        else
        {
          if (a4 <= v314)
          {
            v447 = (v446 + v314 - a4);
            do
            {
              v448 = *a4;
              a4 += 16;
              *v446++ = v448;
            }

            while (v446 < v447);
            a4 = (v10 - 32);
            v446 = v447;
          }

          while (a4 < v18)
          {
            v449 = *a4++;
            *v446 = v449;
            v446 = (v446 + 1);
          }

LABEL_740:
          *(a2 + 24) += v445;
          v374 = *(a2 + 8);
          if (v445 >= 0x10000)
          {
            v454 = (v374 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v454;
          }
        }

        v376 = v317 - v631 - v348;
        *(v374 + 4) = v445;
        *v374 = v376 + 3;
        v377 = v361 - 3;
        v13 = v12;
        v12 = v376;
        if (!((v361 - 3) >> 16))
        {
          goto LABEL_631;
        }

        goto LABEL_630;
      }

      if (v318 >= v8)
      {
        v321 = v10;
      }

      else
      {
        v321 = v632;
      }

      v322 = (v18 + 5);
      v323 = v319 + 1;
      if (&v18[v321 - (v319 + 1) + 5] >= v10)
      {
        v324 = v10;
      }

      else
      {
        v324 = &v18[v321 - (v319 + 1) + 5];
      }

      if (v324 - 7 <= v322)
      {
        v330 = (v319 + 1);
        v331 = (v18 + 5);
      }

      else
      {
        if (*v323 != *v322)
        {
          v336 = __clz(__rbit64(*v322 ^ *v323)) >> 3;
          goto LABEL_589;
        }

        v325 = v15;
        v326 = v16;
        v327 = v9;
        v328 = v325;
        v329 = 0;
        v330 = (v319 + 3);
        v331 = (v18 + 13);
        while (v331 < v324 - 7)
        {
          v333 = *v330;
          v330 += 4;
          v332 = v333;
          v335 = *v331;
          v331 += 4;
          v334 = v335;
          v329 += 8;
          if (v332 != v335)
          {
            v336 = v329 + (__clz(__rbit64(v334 ^ v332)) >> 3);
            v337 = v328;
            v9 = v327;
            v16 = v326;
            v15 = v337;
            v17 = v607;
            goto LABEL_589;
          }
        }

        v378 = v328;
        v9 = v327;
        v16 = v326;
        v15 = v378;
        v17 = v607;
      }

      if (v331 < v324 - 3 && *v330 == *v331)
      {
        v330 += 2;
        v331 += 2;
      }

      if (v331 < v324 - 1 && *v330 == *v331)
      {
        ++v330;
        ++v331;
      }

      if (v331 < v324 && *v330 == *v331)
      {
        v331 = (v331 + 1);
      }

      v336 = v331 - v322;
LABEL_589:
      if (v323 + v336 == v321)
      {
        v379 = &v322[v336];
        if (v313 <= &v322[v336])
        {
          v382 = v9;
          v381 = &v322[v336];
LABEL_597:
          if (v381 < v624 && *v382 == *v381)
          {
            v382 += 4;
            v381 += 4;
          }

          if (v381 < v620 && *v382 == *v381)
          {
            v382 += 2;
            v381 += 2;
          }

          if (v381 < v10 && *v382 == *v381)
          {
            ++v381;
          }

          v387 = v381 - v379;
        }

        else if (*v9 == *v379)
        {
          v380 = 0;
          v381 = &v18[v336 + 13];
          v382 = (v8 + v7 + 8);
          do
          {
            if (v381 >= v313)
            {
              goto LABEL_597;
            }

            v384 = *v382;
            v382 += 8;
            v383 = v384;
            v386 = *v381;
            v381 += 8;
            v385 = v386;
            v380 += 8;
          }

          while (v383 == v386);
          v387 = v380 + (__clz(__rbit64(v385 ^ v383)) >> 3);
        }

        else
        {
          v387 = __clz(__rbit64(*v379 ^ *v9)) >> 3;
        }

        v336 += v387;
      }

      v388 = v320 - a4;
      v389 = *(a2 + 24);
      if (v320 <= v314)
      {
        *v389 = *a4;
        v392 = *(a2 + 24);
        if (v388 <= 0x10)
        {
          *(a2 + 24) = v392 + v388;
          v374 = *(a2 + 8);
          goto LABEL_629;
        }

        v393 = (v392 + 16);
        v394 = v392 + v388;
        v395 = (a4 + 16);
        do
        {
          v396 = *v395++;
          *v393++ = v396;
        }

        while (v393 < v394);
      }

      else
      {
        if (a4 <= v314)
        {
          v391 = v389 + v314 - a4;
          v397 = a4;
          do
          {
            v398 = *v397;
            v397 += 16;
            *v389++ = v398;
          }

          while (v389 < v391);
          v390 = (v10 - 32);
        }

        else
        {
          v390 = a4;
          v391 = *(a2 + 24);
        }

        if (v390 < v320)
        {
          if (a4 <= v314)
          {
            v399 = (v10 - 32);
          }

          else
          {
            v399 = a4;
          }

          v400 = v18 - v399 + 1;
          do
          {
            v401 = *v390++;
            *v391++ = v401;
            --v400;
          }

          while (v400);
        }
      }

      *(a2 + 24) += v388;
      v374 = *(a2 + 8);
      if (v388 >= 0x10000)
      {
        v402 = (v374 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v402;
      }

LABEL_629:
      v361 = v336 + 4;
      *(v374 + 4) = v388;
      *v374 = 1;
      v377 = v336 + 1;
      v376 = v12;
      if ((v336 + 1) >> 16)
      {
        goto LABEL_630;
      }

LABEL_631:
      *(v374 + 6) = v377;
      v404 = v374 + 8;
      *(a2 + 8) = v374 + 8;
      a4 = &v320[v361];
      if (&v320[v361] <= v11)
      {
        *(v6 + 4 * ((0xCF1BBCDCBB000000 * *(v626 + v317)) >> v311)) = v317 + 2;
        *(v6 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 2)) >> v311)) = a4 - 2 - v7;
        v405 = v12;
        v406 = v13;
        while (1)
        {
          v12 = v406;
          v406 = v405;
          v407 = (a4 - v7 - v12);
          v408 = v407 >= v8 ? v7 : v629;
          if ((v312 - v407) < 3)
          {
            break;
          }

          v409 = v408 + v407;
          if (*(v408 + v407) != *a4)
          {
            break;
          }

          if (v407 >= v8)
          {
            v410 = v10;
          }

          else
          {
            v410 = v632;
          }

          v411 = (a4 + 4);
          v412 = (v409 + 4);
          v413 = v410 + a4 - v409;
          if (v413 >= v10)
          {
            v414 = v10;
          }

          else
          {
            v414 = v413;
          }

          if (v414 - 7 <= v411)
          {
            v416 = v412;
            v417 = a4 + 4;
LABEL_651:
            if (v417 < v414 - 3 && *v416 == *v417)
            {
              ++v416;
              ++v417;
            }

            if (v417 < v414 - 1 && *v416 == *v417)
            {
              v416 = (v416 + 2);
              v417 = (v417 + 2);
            }

            if (v417 < v414 && *v416 == *v417)
            {
              v417 = (v417 + 1);
            }

            v422 = v417 - v411;
          }

          else if (*v412 == *v411)
          {
            v415 = 0;
            v416 = (v408 + v407 + 12);
            v417 = a4 + 12;
            do
            {
              if (v417 >= v414 - 7)
              {
                goto LABEL_651;
              }

              v419 = *v416;
              v416 += 2;
              v418 = v419;
              v421 = *v417;
              v417 += 2;
              v420 = v421;
              v415 += 8;
            }

            while (v418 == v421);
            v422 = v415 + (__clz(__rbit64(v420 ^ v418)) >> 3);
          }

          else
          {
            v422 = __clz(__rbit64(*v411 ^ *v412)) >> 3;
          }

          if ((v412 + v422) == v410)
          {
            v423 = &v411[v422];
            if (v313 <= &v411[v422])
            {
              v426 = v9;
              v425 = &v411[v422];
LABEL_670:
              if (v425 < v624 && *v426 == *v425)
              {
                v426 += 4;
                v425 += 4;
              }

              if (v425 < v620 && *v426 == *v425)
              {
                v426 += 2;
                v425 += 2;
              }

              if (v425 < v10 && *v426 == *v425)
              {
                ++v425;
              }

              v431 = v425 - v423;
            }

            else if (*v9 == *v423)
            {
              v424 = 0;
              v425 = &a4[v422 + 12];
              v426 = (v8 + v7 + 8);
              do
              {
                if (v425 >= v313)
                {
                  goto LABEL_670;
                }

                v428 = *v426;
                v426 += 8;
                v427 = v428;
                v430 = *v425;
                v425 += 8;
                v429 = v430;
                v424 += 8;
              }

              while (v427 == v430);
              v431 = v424 + (__clz(__rbit64(v429 ^ v427)) >> 3);
            }

            else
            {
              v431 = __clz(__rbit64(*v423 ^ *v9)) >> 3;
            }

            v422 += v431;
          }

          if (a4 <= v314)
          {
            **(a2 + 24) = *a4;
            v404 = *(a2 + 8);
          }

          *(v404 + 4) = 0;
          *v404 = 1;
          if (v422 + 1 >= 0x10000)
          {
            v432 = (v404 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v432;
          }

          *(v404 + 6) = v422 + 1;
          v404 += 8;
          *(v6 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v311)) = a4 - v7;
          a4 += v422 + 4;
          *(a2 + 8) = v404;
          v405 = v12;
          v13 = v406;
          v18 = a4;
          if (a4 > v11)
          {
            goto LABEL_690;
          }
        }

        v13 = v12;
        v12 = v405;
      }

      v18 = a4;
LABEL_690:
      if (v18 >= v11)
      {
        goto LABEL_991;
      }
    }
  }

  if (v5 == 6)
  {
    if (v18 >= v11)
    {
      goto LABEL_992;
    }

    v604 = a3;
    LODWORD(v165) = *(a1 + 260);
    if (v165 <= 1)
    {
      v165 = 1;
    }

    else
    {
      v165 = v165;
    }

    v615 = v165;
    v166 = 64 - *(a1 + 248);
    v167 = v8 - 1;
    v611 = 64 - *(v14 + 248);
    v168 = v10 - 7;
    v619 = v10 - 1;
    v623 = v10 - 3;
    v169 = v10 - 32;
    v628 = v17 - v631;
    v606 = *(v14 + 8);
    v602 = v17 - 1;
    v597 = v17 + 12;
    while (1)
    {
      v170 = 0xCF1BBCDCBF9B0000 * *v18;
      v171 = *(v6 + 4 * (v170 >> v166));
      v172 = v18 - v7;
      v173 = (v18 - v7 - v12 + 1);
      v174 = (v17 + v173 - v631);
      if (v173 >= v8)
      {
        v174 = (v7 + v173);
      }

      *(v6 + 4 * (v170 >> v166)) = v172;
      if ((v167 - v173) < 3 || (v175 = v18 + 1, *v174 != *(v18 + 1)))
      {
        if (v171 > v8)
        {
          v193 = v7 + v171;
          if (*(v7 + v171) != *v18)
          {
            goto LABEL_292;
          }

          v194 = (v18 + 4);
          v195 = (v193 + 4);
          if (v168 <= (v18 + 4))
          {
            v197 = v18 + 4;
LABEL_295:
            if (v197 < v623 && *v195 == *v197)
            {
              ++v195;
              ++v197;
            }

            if (v197 < v619 && *v195 == *v197)
            {
              v195 = (v195 + 2);
              v197 = (v197 + 2);
            }

            if (v197 < v10 && *v195 == *v197)
            {
              v197 = (v197 + 1);
            }

            v202 = v197 - v194;
          }

          else if (*v195 == *v194)
          {
            v196 = 0;
            v195 = (v7 + 12 + v171);
            v197 = v18 + 12;
            do
            {
              if (v197 >= v168)
              {
                goto LABEL_295;
              }

              v199 = *v195;
              v195 += 2;
              v198 = v199;
              v201 = *v197;
              v197 += 2;
              v200 = v201;
              v196 += 8;
            }

            while (v198 == v201);
            v202 = v196 + (__clz(__rbit64(v200 ^ v198)) >> 3);
          }

          else
          {
            v202 = __clz(__rbit64(*v194 ^ *v195)) >> 3;
          }

          v216 = v202 + 4;
          if (v18 <= a4)
          {
            v175 = v18;
          }

          else
          {
            v217 = v18 - 1;
            v218 = (v7 - 1 + v171);
            while (*v217 == *v218)
            {
              ++v216;
              v219 = v217 - 1;
              if (v217 > a4)
              {
                --v217;
                v74 = v218-- > v9;
                if (v74)
                {
                  continue;
                }
              }

              v175 = v219 + 1;
              goto LABEL_315;
            }

            v175 = v217 + 1;
          }

LABEL_315:
          v220 = v175 - a4;
          v221 = *(a2 + 24);
          if (v175 <= v169)
          {
            *v221 = *a4;
            v225 = *(a2 + 24);
            if (v220 > 0x10)
            {
              v226 = (v225 + 16);
              v227 = (a4 + 16);
              do
              {
                v228 = *v227++;
                *v226++ = v228;
              }

              while (v226 < v225 + v220);
              goto LABEL_326;
            }

            *(a2 + 24) = v225 + v220;
            v229 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v169)
            {
              v222 = (v221 + v169 - a4);
              do
              {
                v223 = *a4;
                a4 += 16;
                *v221++ = v223;
              }

              while (v221 < v222);
              a4 = (v10 - 32);
              v221 = v222;
            }

            while (a4 < v175)
            {
              v224 = *a4++;
              *v221 = v224;
              v221 = (v221 + 1);
            }

LABEL_326:
            *(a2 + 24) += v220;
            v229 = *(a2 + 8);
            if (v220 >= 0x10000)
            {
              v230 = (v229 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v230;
            }
          }

          v231 = (v18 - v193);
          *(v229 + 4) = v220;
          *v229 = v231 + 3;
          v232 = v216 - 3;
          v13 = v12;
          v12 = v231;
          if (v216 - 3 < 0x10000)
          {
            goto LABEL_402;
          }

LABEL_401:
          v267 = (v229 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v267;
          v12 = v231;
          goto LABEL_402;
        }

        v203 = *(v15 + 4 * (v170 >> v611));
        if (v203 <= v16 || (v204 = v17 + v203, *(v17 + v203) != *v18))
        {
LABEL_292:
          v18 += v615 + ((v18 - a4) >> 8);
          goto LABEL_461;
        }

        v205 = (v18 + 4);
        v206 = (v204 + 4);
        v207 = &v632[v18 - v204];
        if (v207 >= v10)
        {
          v207 = v10;
        }

        if (v207 - 7 <= v205)
        {
          v209 = v206;
          v210 = v18 + 4;
LABEL_329:
          if (v210 < v207 - 3 && *v209 == *v210)
          {
            ++v209;
            ++v210;
          }

          if (v210 < v207 - 1 && *v209 == *v210)
          {
            v209 = (v209 + 2);
            v210 = (v210 + 2);
          }

          if (v210 < v207 && *v209 == *v210)
          {
            v210 = (v210 + 1);
          }

          v215 = v210 - v205;
        }

        else if (*v206 == *v205)
        {
          v208 = 0;
          v209 = (v597 + v203);
          v210 = v18 + 12;
          do
          {
            if (v210 >= v207 - 7)
            {
              goto LABEL_329;
            }

            v212 = *v209;
            v209 += 2;
            v211 = v212;
            v214 = *v210;
            v210 += 2;
            v213 = v214;
            v208 += 8;
          }

          while (v211 == v214);
          v215 = v208 + (__clz(__rbit64(v213 ^ v211)) >> 3);
        }

        else
        {
          v215 = __clz(__rbit64(*v205 ^ *v206)) >> 3;
        }

        if (v206 + v215 == v632)
        {
          v243 = &v205[v215];
          if (v168 <= v243)
          {
            v246 = v9;
            v245 = v243;
LABEL_464:
            if (v245 < v623 && *v246 == *v245)
            {
              v246 += 4;
              v245 += 4;
            }

            if (v245 < v619 && *v246 == *v245)
            {
              v246 += 2;
              v245 += 2;
            }

            if (v245 < v10 && *v246 == *v245)
            {
              ++v245;
            }

            v251 = v245 - v243;
          }

          else if (*v9 == *v243)
          {
            v244 = 0;
            v245 = &v18[v215 + 12];
            v246 = (v8 + v7 + 8);
            do
            {
              if (v245 >= v168)
              {
                goto LABEL_464;
              }

              v248 = *v246;
              v246 += 8;
              v247 = v248;
              v250 = *v245;
              v245 += 8;
              v249 = v250;
              v244 += 8;
            }

            while (v247 == v250);
            v251 = v244 + (__clz(__rbit64(v249 ^ v247)) >> 3);
          }

          else
          {
            v251 = __clz(__rbit64(*v243 ^ *v9)) >> 3;
          }

          v215 += v251;
        }

        v216 = v215 + 4;
        if (v18 <= a4)
        {
          goto LABEL_483;
        }

        v297 = v18 - 1;
        v298 = (v602 + v203);
        while (*v297 == *v298)
        {
          ++v216;
          v299 = v297 - 1;
          if (v297 > a4)
          {
            --v297;
            v74 = v298-- > v613;
            if (v74)
            {
              continue;
            }
          }

          v18 = v299 + 1;
          goto LABEL_483;
        }

        v18 = v297 + 1;
LABEL_483:
        v175 = v18;
        v300 = v18 - a4;
        v301 = *(a2 + 24);
        if (v18 <= v169)
        {
          *v301 = *a4;
          v305 = *(a2 + 24);
          if (v300 > 0x10)
          {
            v306 = (v305 + 16);
            v307 = (a4 + 16);
            do
            {
              v308 = *v307++;
              *v306++ = v308;
            }

            while (v306 < v305 + v300);
            goto LABEL_494;
          }

          *(a2 + 24) = v305 + v300;
          v229 = *(a2 + 8);
        }

        else
        {
          if (a4 <= v169)
          {
            v302 = (v301 + v169 - a4);
            do
            {
              v303 = *a4;
              a4 += 16;
              *v301++ = v303;
            }

            while (v301 < v302);
            a4 = (v10 - 32);
            v301 = v302;
          }

          while (a4 < v18)
          {
            v304 = *a4++;
            *v301 = v304;
            v301 = (v301 + 1);
          }

LABEL_494:
          *(a2 + 24) += v300;
          v229 = *(a2 + 8);
          if (v300 >= 0x10000)
          {
            v309 = (v229 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v309;
          }
        }

        v231 = v172 - v631 - v203;
        *(v229 + 4) = v300;
        *v229 = v231 + 3;
        v232 = v216 - 3;
        v13 = v12;
        v12 = v231;
        if (!((v216 - 3) >> 16))
        {
          goto LABEL_402;
        }

        goto LABEL_401;
      }

      if (v173 >= v8)
      {
        v176 = v10;
      }

      else
      {
        v176 = v632;
      }

      v177 = (v18 + 5);
      v178 = v174 + 1;
      if (&v18[v176 - (v174 + 1) + 5] >= v10)
      {
        v179 = v10;
      }

      else
      {
        v179 = &v18[v176 - (v174 + 1) + 5];
      }

      if (v179 - 7 <= v177)
      {
        v185 = (v174 + 1);
        v186 = (v18 + 5);
      }

      else
      {
        if (*v178 != *v177)
        {
          v191 = __clz(__rbit64(*v177 ^ *v178)) >> 3;
          goto LABEL_353;
        }

        v180 = v15;
        v181 = v16;
        v182 = v9;
        v183 = v180;
        v184 = 0;
        v185 = (v174 + 3);
        v186 = (v18 + 13);
        while (v186 < v179 - 7)
        {
          v188 = *v185;
          v185 += 4;
          v187 = v188;
          v190 = *v186;
          v186 += 4;
          v189 = v190;
          v184 += 8;
          if (v187 != v190)
          {
            v191 = v184 + (__clz(__rbit64(v189 ^ v187)) >> 3);
            v192 = v183;
            v9 = v182;
            v16 = v181;
            v15 = v192;
            v17 = v606;
            goto LABEL_353;
          }
        }

        v233 = v183;
        v9 = v182;
        v16 = v181;
        v15 = v233;
        v17 = v606;
      }

      if (v186 < v179 - 3 && *v185 == *v186)
      {
        v185 += 2;
        v186 += 2;
      }

      if (v186 < v179 - 1 && *v185 == *v186)
      {
        ++v185;
        ++v186;
      }

      if (v186 < v179 && *v185 == *v186)
      {
        v186 = (v186 + 1);
      }

      v191 = v186 - v177;
LABEL_353:
      if (v178 + v191 == v176)
      {
        v234 = &v177[v191];
        if (v168 <= &v177[v191])
        {
          v237 = v9;
          v236 = &v177[v191];
LABEL_361:
          if (v236 < v623 && *v237 == *v236)
          {
            v237 += 4;
            v236 += 4;
          }

          if (v236 < v619 && *v237 == *v236)
          {
            v237 += 2;
            v236 += 2;
          }

          if (v236 < v10 && *v237 == *v236)
          {
            ++v236;
          }

          v242 = v236 - v234;
        }

        else if (*v9 == *v234)
        {
          v235 = 0;
          v236 = &v18[v191 + 13];
          v237 = (v8 + v7 + 8);
          do
          {
            if (v236 >= v168)
            {
              goto LABEL_361;
            }

            v239 = *v237;
            v237 += 8;
            v238 = v239;
            v241 = *v236;
            v236 += 8;
            v240 = v241;
            v235 += 8;
          }

          while (v238 == v241);
          v242 = v235 + (__clz(__rbit64(v240 ^ v238)) >> 3);
        }

        else
        {
          v242 = __clz(__rbit64(*v234 ^ *v9)) >> 3;
        }

        v191 += v242;
      }

      v252 = v175 - a4;
      v253 = *(a2 + 24);
      if (v175 <= v169)
      {
        *v253 = *a4;
        v256 = *(a2 + 24);
        if (v252 <= 0x10)
        {
          *(a2 + 24) = v256 + v252;
          v229 = *(a2 + 8);
          goto LABEL_400;
        }

        v257 = (v256 + 16);
        v258 = v256 + v252;
        v259 = (a4 + 16);
        do
        {
          v260 = *v259++;
          *v257++ = v260;
        }

        while (v257 < v258);
      }

      else
      {
        if (a4 <= v169)
        {
          v255 = v253 + v169 - a4;
          v261 = a4;
          do
          {
            v262 = *v261;
            v261 += 16;
            *v253++ = v262;
          }

          while (v253 < v255);
          v254 = (v10 - 32);
        }

        else
        {
          v254 = a4;
          v255 = *(a2 + 24);
        }

        if (v254 < v175)
        {
          if (a4 <= v169)
          {
            v263 = (v10 - 32);
          }

          else
          {
            v263 = a4;
          }

          v264 = v18 - v263 + 1;
          do
          {
            v265 = *v254++;
            *v255++ = v265;
            --v264;
          }

          while (v264);
        }
      }

      *(a2 + 24) += v252;
      v229 = *(a2 + 8);
      if (v252 >= 0x10000)
      {
        v266 = (v229 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v266;
      }

LABEL_400:
      v216 = v191 + 4;
      *(v229 + 4) = v252;
      *v229 = 1;
      v232 = v191 + 1;
      v231 = v12;
      if ((v191 + 1) >> 16)
      {
        goto LABEL_401;
      }

LABEL_402:
      *(v229 + 6) = v232;
      v268 = v229 + 8;
      *(a2 + 8) = v229 + 8;
      a4 = &v175[v216];
      if (&v175[v216] <= v11)
      {
        *(v6 + 4 * ((0xCF1BBCDCBF9B0000 * *(v626 + v172)) >> v166)) = v172 + 2;
        *(v6 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 2)) >> v166)) = a4 - 2 - v7;
        v269 = v12;
        v270 = v13;
        while (1)
        {
          v12 = v270;
          v270 = v269;
          v271 = (a4 - v7 - v12);
          v272 = v271 >= v8 ? v7 : v628;
          if ((v167 - v271) < 3)
          {
            break;
          }

          v273 = v272 + v271;
          if (*(v272 + v271) != *a4)
          {
            break;
          }

          if (v271 >= v8)
          {
            v274 = v10;
          }

          else
          {
            v274 = v632;
          }

          v275 = (a4 + 4);
          v276 = (v273 + 4);
          v277 = v274 + a4 - v273;
          if (v277 >= v10)
          {
            v278 = v10;
          }

          else
          {
            v278 = v277;
          }

          if (v278 - 7 <= v275)
          {
            v280 = v276;
            v281 = a4 + 4;
LABEL_422:
            if (v281 < v278 - 3 && *v280 == *v281)
            {
              ++v280;
              ++v281;
            }

            if (v281 < v278 - 1 && *v280 == *v281)
            {
              v280 = (v280 + 2);
              v281 = (v281 + 2);
            }

            if (v281 < v278 && *v280 == *v281)
            {
              v281 = (v281 + 1);
            }

            v286 = v281 - v275;
          }

          else if (*v276 == *v275)
          {
            v279 = 0;
            v280 = (v272 + v271 + 12);
            v281 = a4 + 12;
            do
            {
              if (v281 >= v278 - 7)
              {
                goto LABEL_422;
              }

              v283 = *v280;
              v280 += 2;
              v282 = v283;
              v285 = *v281;
              v281 += 2;
              v284 = v285;
              v279 += 8;
            }

            while (v282 == v285);
            v286 = v279 + (__clz(__rbit64(v284 ^ v282)) >> 3);
          }

          else
          {
            v286 = __clz(__rbit64(*v275 ^ *v276)) >> 3;
          }

          if ((v276 + v286) == v274)
          {
            v287 = &v275[v286];
            if (v168 <= &v275[v286])
            {
              v290 = v9;
              v289 = &v275[v286];
LABEL_441:
              if (v289 < v623 && *v290 == *v289)
              {
                v290 += 4;
                v289 += 4;
              }

              if (v289 < v619 && *v290 == *v289)
              {
                v290 += 2;
                v289 += 2;
              }

              if (v289 < v10 && *v290 == *v289)
              {
                ++v289;
              }

              v295 = v289 - v287;
            }

            else if (*v9 == *v287)
            {
              v288 = 0;
              v289 = &a4[v286 + 12];
              v290 = (v8 + v7 + 8);
              do
              {
                if (v289 >= v168)
                {
                  goto LABEL_441;
                }

                v292 = *v290;
                v290 += 8;
                v291 = v292;
                v294 = *v289;
                v289 += 8;
                v293 = v294;
                v288 += 8;
              }

              while (v291 == v294);
              v295 = v288 + (__clz(__rbit64(v293 ^ v291)) >> 3);
            }

            else
            {
              v295 = __clz(__rbit64(*v287 ^ *v9)) >> 3;
            }

            v286 += v295;
          }

          if (a4 <= v169)
          {
            **(a2 + 24) = *a4;
            v268 = *(a2 + 8);
          }

          *(v268 + 4) = 0;
          *v268 = 1;
          if (v286 + 1 >= 0x10000)
          {
            v296 = (v268 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v296;
          }

          *(v268 + 6) = v286 + 1;
          v268 += 8;
          *(v6 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v166)) = a4 - v7;
          a4 += v286 + 4;
          *(a2 + 8) = v268;
          v269 = v12;
          v13 = v270;
          v18 = a4;
          if (a4 > v11)
          {
            goto LABEL_461;
          }
        }

        v13 = v12;
        v12 = v269;
      }

      v18 = a4;
LABEL_461:
      if (v18 >= v11)
      {
        goto LABEL_991;
      }
    }
  }

  if (v5 != 7)
  {
    if (v18 >= v11)
    {
      goto LABEL_992;
    }

    v604 = a3;
    LODWORD(v455) = *(a1 + 260);
    if (v455 <= 1)
    {
      v455 = 1;
    }

    else
    {
      v455 = v455;
    }

    v617 = v455;
    v456 = 32 - *(a1 + 248);
    v457 = v8 - 1;
    v609 = 32 - *(v14 + 248);
    v458 = v10 - 7;
    v621 = v10 - 1;
    v625 = v10 - 3;
    v459 = v10 - 32;
    v630 = v17 - v631;
    v608 = *(v14 + 8);
    v599 = v17 - 1;
    v600 = *(v14 + 24);
    v595 = v17 + 12;
    while (1)
    {
      v460 = (-1640531535 * *v18) >> v456;
      v461 = *(v6 + 4 * v460);
      v462 = v18 - v7;
      v463 = (v18 - v7 - v12 + 1);
      v464 = (v17 + v463 - v631);
      if (v463 >= v8)
      {
        v464 = (v7 + v463);
      }

      *(v6 + 4 * v460) = v462;
      if ((v457 - v463) < 3 || (v465 = v18 + 1, *v464 != *(v18 + 1)))
      {
        if (v461 > v8)
        {
          v478 = v7 + v461;
          if (*(v7 + v461) != *v18)
          {
            goto LABEL_784;
          }

          v479 = (v18 + 4);
          v480 = (v478 + 4);
          if (v458 <= (v18 + 4))
          {
            v482 = v18 + 4;
LABEL_787:
            if (v482 < v625 && *v480 == *v482)
            {
              ++v480;
              ++v482;
            }

            if (v482 < v621 && *v480 == *v482)
            {
              v480 = (v480 + 2);
              v482 = (v482 + 2);
            }

            if (v482 < v10 && *v480 == *v482)
            {
              v482 = (v482 + 1);
            }

            v487 = v482 - v479;
          }

          else if (*v480 == *v479)
          {
            v481 = 0;
            v480 = (v7 + 12 + v461);
            v482 = v18 + 12;
            do
            {
              if (v482 >= v458)
              {
                goto LABEL_787;
              }

              v484 = *v480;
              v480 += 2;
              v483 = v484;
              v486 = *v482;
              v482 += 2;
              v485 = v486;
              v481 += 8;
            }

            while (v483 == v486);
            v487 = v481 + (__clz(__rbit64(v485 ^ v483)) >> 3);
          }

          else
          {
            v487 = __clz(__rbit64(*v479 ^ *v480)) >> 3;
          }

          v501 = v487 + 4;
          if (v18 <= a4)
          {
            v465 = v18;
          }

          else
          {
            v502 = v18 - 1;
            v503 = (v7 - 1 + v461);
            while (*v502 == *v503)
            {
              ++v501;
              v504 = v502 - 1;
              if (v502 > a4)
              {
                --v502;
                v74 = v503-- > v9;
                if (v74)
                {
                  continue;
                }
              }

              v465 = v504 + 1;
              goto LABEL_807;
            }

            v465 = v502 + 1;
          }

LABEL_807:
          v505 = v465 - a4;
          v506 = *(a2 + 24);
          if (v465 <= v459)
          {
            *v506 = *a4;
            v510 = *(a2 + 24);
            if (v505 > 0x10)
            {
              v511 = (v510 + 16);
              v512 = (a4 + 16);
              do
              {
                v513 = *v512++;
                *v511++ = v513;
              }

              while (v511 < v510 + v505);
              goto LABEL_818;
            }

            *(a2 + 24) = v510 + v505;
            v514 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v459)
            {
              v507 = (v506 + v459 - a4);
              do
              {
                v508 = *a4;
                a4 += 16;
                *v506++ = v508;
              }

              while (v506 < v507);
              a4 = (v10 - 32);
              v506 = v507;
            }

            while (a4 < v465)
            {
              v509 = *a4++;
              *v506 = v509;
              v506 = (v506 + 1);
            }

LABEL_818:
            *(a2 + 24) += v505;
            v514 = *(a2 + 8);
            if (v505 >= 0x10000)
            {
              v515 = (v514 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v515;
            }
          }

          v516 = (v18 - v478);
          *(v514 + 4) = v505;
          *v514 = v516 + 3;
          v517 = v501 - 3;
          v13 = v12;
          v12 = v516;
          if (v501 - 3 < 0x10000)
          {
            goto LABEL_877;
          }

LABEL_876:
          v542 = (v514 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v542;
          v12 = v516;
          goto LABEL_877;
        }

        v488 = *(v15 + 4 * ((-1640531535 * *v18) >> v609));
        if (v488 <= v16 || (v489 = v17 + v488, *(v17 + v488) != *v18))
        {
LABEL_784:
          v18 += v617 + ((v18 - a4) >> 8);
          goto LABEL_936;
        }

        v490 = (v18 + 4);
        v491 = (v489 + 4);
        v492 = &v632[v18 - v489];
        if (v492 >= v10)
        {
          v492 = v10;
        }

        if (v492 - 7 <= v490)
        {
          v494 = (v489 + 4);
          v495 = v18 + 4;
LABEL_938:
          if (v495 < v492 - 3 && *v494 == *v495)
          {
            ++v494;
            ++v495;
          }

          if (v495 < v492 - 1 && *v494 == *v495)
          {
            v494 = (v494 + 2);
            v495 = (v495 + 2);
          }

          if (v495 < v492 && *v494 == *v495)
          {
            v495 = (v495 + 1);
          }

          v500 = v495 - v490;
        }

        else if (*v491 == *v490)
        {
          v493 = 0;
          v494 = (v595 + v488);
          v495 = v18 + 12;
          do
          {
            if (v495 >= v492 - 7)
            {
              goto LABEL_938;
            }

            v497 = *v494;
            v494 += 2;
            v496 = v497;
            v499 = *v495;
            v495 += 2;
            v498 = v499;
            v493 += 8;
          }

          while (v496 == v499);
          v500 = v493 + (__clz(__rbit64(v498 ^ v496)) >> 3);
        }

        else
        {
          v500 = __clz(__rbit64(*v490 ^ *v491)) >> 3;
        }

        if (v491 + v500 == v632)
        {
          v572 = &v490[v500];
          if (v458 <= v572)
          {
            v575 = (v7 + v8);
            v574 = v572;
LABEL_956:
            if (v574 < v625 && *v575 == *v574)
            {
              ++v575;
              v574 += 4;
            }

            if (v574 < v621 && *v575 == *v574)
            {
              v575 = (v575 + 2);
              v574 += 2;
            }

            if (v574 < v10 && *v575 == *v574)
            {
              ++v574;
            }

            v580 = v574 - v572;
          }

          else if (*v9 == *v572)
          {
            v573 = 0;
            v574 = &v18[v500 + 12];
            v575 = (v8 + v7 + 8);
            do
            {
              if (v574 >= v458)
              {
                goto LABEL_956;
              }

              v577 = *v575;
              v575 += 2;
              v576 = v577;
              v579 = *v574;
              v574 += 8;
              v578 = v579;
              v573 += 8;
            }

            while (v576 == v579);
            v580 = v573 + (__clz(__rbit64(v578 ^ v576)) >> 3);
          }

          else
          {
            v580 = __clz(__rbit64(*v572 ^ *v9)) >> 3;
          }

          v500 += v580;
        }

        v501 = v500 + 4;
        if (v18 <= a4)
        {
          goto LABEL_975;
        }

        v581 = v18 - 1;
        v582 = (v599 + v488);
        while (*v581 == *v582)
        {
          ++v501;
          v583 = v581 - 1;
          if (v581 > a4)
          {
            --v581;
            v74 = v582-- > v613;
            if (v74)
            {
              continue;
            }
          }

          v18 = v583 + 1;
          goto LABEL_975;
        }

        v18 = v581 + 1;
LABEL_975:
        v465 = v18;
        v584 = v18 - a4;
        v585 = *(a2 + 24);
        if (v18 <= v459)
        {
          *v585 = *a4;
          v589 = *(a2 + 24);
          if (v584 > 0x10)
          {
            v590 = (v589 + 16);
            v591 = (a4 + 16);
            do
            {
              v592 = *v591++;
              *v590++ = v592;
            }

            while (v590 < v589 + v584);
            goto LABEL_986;
          }

          *(a2 + 24) = v589 + v584;
          v514 = *(a2 + 8);
        }

        else
        {
          if (a4 <= v459)
          {
            v586 = (v585 + v459 - a4);
            do
            {
              v587 = *a4;
              a4 += 16;
              *v585++ = v587;
            }

            while (v585 < v586);
            a4 = (v10 - 32);
            v585 = v586;
          }

          while (a4 < v18)
          {
            v588 = *a4++;
            *v585 = v588;
            v585 = (v585 + 1);
          }

LABEL_986:
          *(a2 + 24) += v584;
          v514 = *(a2 + 8);
          if (v584 >= 0x10000)
          {
            v593 = (v514 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v593;
          }
        }

        v516 = v462 - v631 - v488;
        *(v514 + 4) = v584;
        *v514 = v516 + 3;
        v517 = v501 - 3;
        v13 = v12;
        v12 = v516;
        if (!((v501 - 3) >> 16))
        {
          goto LABEL_877;
        }

        goto LABEL_876;
      }

      if (v463 >= v8)
      {
        v466 = v10;
      }

      else
      {
        v466 = v632;
      }

      v467 = (v18 + 5);
      v468 = v464 + 1;
      if (&v18[v466 - (v464 + 1) + 5] >= v10)
      {
        v469 = v10;
      }

      else
      {
        v469 = &v18[v466 - (v464 + 1) + 5];
      }

      if (v469 - 7 <= v467)
      {
        v471 = (v464 + 1);
        v472 = (v18 + 5);
      }

      else
      {
        if (*v468 != *v467)
        {
          v477 = __clz(__rbit64(*v467 ^ *v468)) >> 3;
          goto LABEL_835;
        }

        v470 = 0;
        v471 = (v464 + 3);
        v472 = (v18 + 13);
        while (v472 < v469 - 7)
        {
          v474 = *v471;
          v471 += 4;
          v473 = v474;
          v476 = *v472;
          v472 += 4;
          v475 = v476;
          v470 += 8;
          if (v473 != v476)
          {
            v477 = v470 + (__clz(__rbit64(v475 ^ v473)) >> 3);
            LODWORD(v16) = v600;
            v17 = v608;
            goto LABEL_835;
          }
        }

        LODWORD(v16) = v600;
        v17 = v608;
      }

      if (v472 < v469 - 3 && *v471 == *v472)
      {
        v471 += 2;
        v472 += 2;
      }

      if (v472 < v469 - 1 && *v471 == *v472)
      {
        ++v471;
        ++v472;
      }

      if (v472 < v469 && *v471 == *v472)
      {
        v472 = (v472 + 1);
      }

      v477 = v472 - v467;
LABEL_835:
      if (v468 + v477 == v466)
      {
        v518 = &v467[v477];
        if (v458 <= &v467[v477])
        {
          v521 = (v7 + v8);
          v520 = &v467[v477];
LABEL_843:
          if (v520 < v625 && *v521 == *v520)
          {
            ++v521;
            v520 += 4;
          }

          if (v520 < v621 && *v521 == *v520)
          {
            v521 = (v521 + 2);
            v520 += 2;
          }

          if (v520 < v10 && *v521 == *v520)
          {
            ++v520;
          }

          v526 = v520 - v518;
        }

        else if (*v9 == *v518)
        {
          v519 = 0;
          v520 = &v18[v477 + 13];
          v521 = (v8 + v7 + 8);
          do
          {
            if (v520 >= v458)
            {
              goto LABEL_843;
            }

            v523 = *v521;
            v521 += 2;
            v522 = v523;
            v525 = *v520;
            v520 += 8;
            v524 = v525;
            v519 += 8;
          }

          while (v522 == v525);
          v526 = v519 + (__clz(__rbit64(v524 ^ v522)) >> 3);
        }

        else
        {
          v526 = __clz(__rbit64(*v518 ^ *v9)) >> 3;
        }

        v477 += v526;
      }

      v527 = v465 - a4;
      v528 = *(a2 + 24);
      if (v465 <= v459)
      {
        *v528 = *a4;
        v531 = *(a2 + 24);
        if (v527 <= 0x10)
        {
          *(a2 + 24) = v531 + v527;
          v514 = *(a2 + 8);
          goto LABEL_875;
        }

        v532 = (v531 + 16);
        v533 = v531 + v527;
        v534 = (a4 + 16);
        do
        {
          v535 = *v534++;
          *v532++ = v535;
        }

        while (v532 < v533);
      }

      else
      {
        if (a4 <= v459)
        {
          v530 = v528 + v459 - a4;
          v536 = a4;
          do
          {
            v537 = *v536;
            v536 += 16;
            *v528++ = v537;
          }

          while (v528 < v530);
          v529 = (v10 - 32);
        }

        else
        {
          v529 = a4;
          v530 = *(a2 + 24);
        }

        if (v529 < v465)
        {
          if (a4 <= v459)
          {
            v538 = (v10 - 32);
          }

          else
          {
            v538 = a4;
          }

          v539 = v18 - v538 + 1;
          do
          {
            v540 = *v529++;
            *v530++ = v540;
            --v539;
          }

          while (v539);
        }
      }

      *(a2 + 24) += v527;
      v514 = *(a2 + 8);
      if (v527 >= 0x10000)
      {
        v541 = (v514 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v541;
      }

LABEL_875:
      v501 = v477 + 4;
      *(v514 + 4) = v527;
      *v514 = 1;
      v517 = v477 + 1;
      v516 = v12;
      if ((v477 + 1) >> 16)
      {
        goto LABEL_876;
      }

LABEL_877:
      *(v514 + 6) = v517;
      v543 = v514 + 8;
      *(a2 + 8) = v514 + 8;
      a4 = &v465[v501];
      if (&v465[v501] <= v11)
      {
        *(v6 + 4 * ((-1640531535 * *(v626 + v462)) >> v456)) = v462 + 2;
        *(v6 + 4 * ((-1640531535 * *(a4 - 2)) >> v456)) = a4 - 2 - v7;
        v544 = v12;
        v545 = v13;
        while (1)
        {
          v12 = v545;
          v545 = v544;
          v546 = (a4 - v7 - v12);
          v547 = v546 >= v8 ? v7 : v630;
          if ((v457 - v546) < 3)
          {
            break;
          }

          v548 = v547 + v546;
          if (*(v547 + v546) != *a4)
          {
            break;
          }

          if (v546 >= v8)
          {
            v549 = v10;
          }

          else
          {
            v549 = v632;
          }

          v550 = (a4 + 4);
          v551 = (v548 + 4);
          v552 = v549 + a4 - v548;
          if (v552 >= v10)
          {
            v553 = v10;
          }

          else
          {
            v553 = v552;
          }

          if (v553 - 7 <= v550)
          {
            v555 = v551;
            v556 = a4 + 4;
LABEL_897:
            if (v556 < v553 - 3 && *v555 == *v556)
            {
              ++v555;
              ++v556;
            }

            if (v556 < v553 - 1 && *v555 == *v556)
            {
              v555 = (v555 + 2);
              v556 = (v556 + 2);
            }

            if (v556 < v553 && *v555 == *v556)
            {
              v556 = (v556 + 1);
            }

            v561 = v556 - v550;
          }

          else if (*v551 == *v550)
          {
            v554 = 0;
            v555 = (v547 + v546 + 12);
            v556 = a4 + 12;
            do
            {
              if (v556 >= v553 - 7)
              {
                goto LABEL_897;
              }

              v558 = *v555;
              v555 += 2;
              v557 = v558;
              v560 = *v556;
              v556 += 2;
              v559 = v560;
              v554 += 8;
            }

            while (v557 == v560);
            v561 = v554 + (__clz(__rbit64(v559 ^ v557)) >> 3);
          }

          else
          {
            v561 = __clz(__rbit64(*v550 ^ *v551)) >> 3;
          }

          if ((v551 + v561) == v549)
          {
            v562 = &v550[v561];
            if (v458 <= &v550[v561])
            {
              v565 = (v7 + v8);
              v564 = &v550[v561];
LABEL_916:
              if (v564 < v625 && *v565 == *v564)
              {
                ++v565;
                v564 += 4;
              }

              if (v564 < v621 && *v565 == *v564)
              {
                v565 = (v565 + 2);
                v564 += 2;
              }

              if (v564 < v10 && *v565 == *v564)
              {
                ++v564;
              }

              v570 = v564 - v562;
            }

            else if (*v9 == *v562)
            {
              v563 = 0;
              v564 = &a4[v561 + 12];
              v565 = (v8 + v7 + 8);
              do
              {
                if (v564 >= v458)
                {
                  goto LABEL_916;
                }

                v567 = *v565;
                v565 += 2;
                v566 = v567;
                v569 = *v564;
                v564 += 8;
                v568 = v569;
                v563 += 8;
              }

              while (v566 == v569);
              v570 = v563 + (__clz(__rbit64(v568 ^ v566)) >> 3);
            }

            else
            {
              v570 = __clz(__rbit64(*v562 ^ *v9)) >> 3;
            }

            v561 += v570;
          }

          if (a4 <= v459)
          {
            **(a2 + 24) = *a4;
            v543 = *(a2 + 8);
          }

          *(v543 + 4) = 0;
          *v543 = 1;
          if (v561 + 1 >= 0x10000)
          {
            v571 = (v543 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v571;
          }

          *(v543 + 6) = v561 + 1;
          v543 += 8;
          *(v6 + 4 * ((-1640531535 * *a4) >> v456)) = a4 - v7;
          a4 += v561 + 4;
          *(a2 + 8) = v543;
          v544 = v12;
          v13 = v545;
          v18 = a4;
          if (a4 > v11)
          {
            goto LABEL_936;
          }
        }

        v13 = v12;
        v12 = v544;
      }

      v18 = a4;
LABEL_936:
      if (v18 >= v11)
      {
        goto LABEL_991;
      }
    }
  }

  if (v18 < v11)
  {
    v604 = a3;
    LODWORD(v19) = *(a1 + 260);
    if (v19 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v19;
    }

    v614 = v19;
    v20 = 64 - *(a1 + 248);
    v21 = v8 - 1;
    v610 = 64 - *(v14 + 248);
    v22 = v10 - 7;
    v618 = v10 - 1;
    v622 = v10 - 3;
    v23 = v10 - 32;
    v627 = v17 - v631;
    v605 = *(v14 + 8);
    v601 = v17 - 1;
    v596 = v17 + 12;
    while (1)
    {
      v24 = 0xCF1BBCDCBFA56300 * *v18;
      v25 = *(v6 + 4 * (v24 >> v20));
      v26 = v18 - v7;
      v27 = (v18 - v7 - v12 + 1);
      v28 = (v17 + v27 - v631);
      if (v27 >= v8)
      {
        v28 = (v7 + v27);
      }

      *(v6 + 4 * (v24 >> v20)) = v26;
      if ((v21 - v27) < 3 || (v29 = v18 + 1, *v28 != *(v18 + 1)))
      {
        if (v25 > v8)
        {
          v47 = v7 + v25;
          if (*(v7 + v25) != *v18)
          {
            goto LABEL_46;
          }

          v48 = (v18 + 4);
          v49 = (v47 + 4);
          if (v22 <= (v18 + 4))
          {
            v51 = v18 + 4;
LABEL_49:
            if (v51 < v622 && *v49 == *v51)
            {
              ++v49;
              ++v51;
            }

            if (v51 < v618 && *v49 == *v51)
            {
              v49 = (v49 + 2);
              v51 = (v51 + 2);
            }

            if (v51 < v10 && *v49 == *v51)
            {
              v51 = (v51 + 1);
            }

            v56 = v51 - v48;
          }

          else if (*v49 == *v48)
          {
            v50 = 0;
            v49 = (v7 + 12 + v25);
            v51 = v18 + 12;
            do
            {
              if (v51 >= v22)
              {
                goto LABEL_49;
              }

              v53 = *v49;
              v49 += 2;
              v52 = v53;
              v55 = *v51;
              v51 += 2;
              v54 = v55;
              v50 += 8;
            }

            while (v52 == v55);
            v56 = v50 + (__clz(__rbit64(v54 ^ v52)) >> 3);
          }

          else
          {
            v56 = __clz(__rbit64(*v48 ^ *v49)) >> 3;
          }

          v70 = v56 + 4;
          if (v18 <= a4)
          {
            v29 = v18;
          }

          else
          {
            v71 = v18 - 1;
            v72 = (v7 - 1 + v25);
            while (*v71 == *v72)
            {
              ++v70;
              v73 = v71 - 1;
              if (v71 > a4)
              {
                --v71;
                v74 = v72-- > v9;
                if (v74)
                {
                  continue;
                }
              }

              v29 = v73 + 1;
              goto LABEL_69;
            }

            v29 = v71 + 1;
          }

LABEL_69:
          v75 = v29 - a4;
          v76 = *(a2 + 24);
          if (v29 <= v23)
          {
            *v76 = *a4;
            v80 = *(a2 + 24);
            if (v75 > 0x10)
            {
              v81 = (v80 + 16);
              v82 = (a4 + 16);
              do
              {
                v83 = *v82++;
                *v81++ = v83;
              }

              while (v81 < v80 + v75);
              goto LABEL_80;
            }

            *(a2 + 24) = v80 + v75;
            v84 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v23)
            {
              v77 = (v76 + v23 - a4);
              do
              {
                v78 = *a4;
                a4 += 16;
                *v76++ = v78;
              }

              while (v76 < v77);
              a4 = (v10 - 32);
              v76 = v77;
            }

            while (a4 < v29)
            {
              v79 = *a4++;
              *v76 = v79;
              v76 = (v76 + 1);
            }

LABEL_80:
            *(a2 + 24) += v75;
            v84 = *(a2 + 8);
            if (v75 >= 0x10000)
            {
              v85 = (v84 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v85;
            }
          }

          v86 = (v18 - v47);
          *(v84 + 4) = v75;
          *v84 = v86 + 3;
          v87 = v70 - 3;
          v13 = v12;
          v12 = v86;
          if (v70 - 3 < 0x10000)
          {
            goto LABEL_139;
          }

LABEL_138:
          v113 = (v84 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v113;
          v12 = v86;
          goto LABEL_139;
        }

        v57 = *(v15 + 4 * (v24 >> v610));
        if (v57 <= v16 || (v58 = v17 + v57, *(v17 + v57) != *v18))
        {
LABEL_46:
          v18 += v614 + ((v18 - a4) >> 8);
          goto LABEL_198;
        }

        v59 = (v18 + 4);
        v60 = (v58 + 4);
        v61 = &v632[v18 - v58];
        if (v61 >= v10)
        {
          v61 = v10;
        }

        if (v61 - 7 <= v59)
        {
          v63 = v60;
          v64 = v18 + 4;
LABEL_200:
          if (v64 < v61 - 3 && *v63 == *v64)
          {
            ++v63;
            ++v64;
          }

          if (v64 < v61 - 1 && *v63 == *v64)
          {
            v63 = (v63 + 2);
            v64 = (v64 + 2);
          }

          if (v64 < v61 && *v63 == *v64)
          {
            v64 = (v64 + 1);
          }

          v69 = v64 - v59;
        }

        else if (*v60 == *v59)
        {
          v62 = 0;
          v63 = (v596 + v57);
          v64 = v18 + 12;
          do
          {
            if (v64 >= v61 - 7)
            {
              goto LABEL_200;
            }

            v66 = *v63;
            v63 += 2;
            v65 = v66;
            v68 = *v64;
            v64 += 2;
            v67 = v68;
            v62 += 8;
          }

          while (v65 == v68);
          v69 = v62 + (__clz(__rbit64(v67 ^ v65)) >> 3);
        }

        else
        {
          v69 = __clz(__rbit64(*v59 ^ *v60)) >> 3;
        }

        if (v60 + v69 == v632)
        {
          v143 = &v59[v69];
          if (v22 <= v143)
          {
            v146 = v9;
            v145 = v143;
LABEL_218:
            if (v145 < v622 && *v146 == *v145)
            {
              v146 += 4;
              v145 += 4;
            }

            if (v145 < v618 && *v146 == *v145)
            {
              v146 += 2;
              v145 += 2;
            }

            if (v145 < v10 && *v146 == *v145)
            {
              ++v145;
            }

            v151 = v145 - v143;
          }

          else if (*v9 == *v143)
          {
            v144 = 0;
            v145 = &v18[v69 + 12];
            v146 = (v8 + v7 + 8);
            do
            {
              if (v145 >= v22)
              {
                goto LABEL_218;
              }

              v148 = *v146;
              v146 += 8;
              v147 = v148;
              v150 = *v145;
              v145 += 8;
              v149 = v150;
              v144 += 8;
            }

            while (v147 == v150);
            v151 = v144 + (__clz(__rbit64(v149 ^ v147)) >> 3);
          }

          else
          {
            v151 = __clz(__rbit64(*v143 ^ *v9)) >> 3;
          }

          v69 += v151;
        }

        v70 = v69 + 4;
        if (v18 <= a4)
        {
          goto LABEL_237;
        }

        v152 = v18 - 1;
        v153 = (v601 + v57);
        while (*v152 == *v153)
        {
          ++v70;
          v154 = v152 - 1;
          if (v152 > a4)
          {
            --v152;
            v74 = v153-- > v613;
            if (v74)
            {
              continue;
            }
          }

          v18 = v154 + 1;
          goto LABEL_237;
        }

        v18 = v152 + 1;
LABEL_237:
        v29 = v18;
        v155 = v18 - a4;
        v156 = *(a2 + 24);
        if (v18 <= v23)
        {
          *v156 = *a4;
          v160 = *(a2 + 24);
          if (v155 > 0x10)
          {
            v161 = (v160 + 16);
            v162 = (a4 + 16);
            do
            {
              v163 = *v162++;
              *v161++ = v163;
            }

            while (v161 < v160 + v155);
            goto LABEL_248;
          }

          *(a2 + 24) = v160 + v155;
          v84 = *(a2 + 8);
        }

        else
        {
          if (a4 <= v23)
          {
            v157 = (v156 + v23 - a4);
            do
            {
              v158 = *a4;
              a4 += 16;
              *v156++ = v158;
            }

            while (v156 < v157);
            a4 = (v10 - 32);
            v156 = v157;
          }

          while (a4 < v18)
          {
            v159 = *a4++;
            *v156 = v159;
            v156 = (v156 + 1);
          }

LABEL_248:
          *(a2 + 24) += v155;
          v84 = *(a2 + 8);
          if (v155 >= 0x10000)
          {
            v164 = (v84 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v164;
          }
        }

        v86 = v26 - v631 - v57;
        *(v84 + 4) = v155;
        *v84 = v86 + 3;
        v87 = v70 - 3;
        v13 = v12;
        v12 = v86;
        if (!((v70 - 3) >> 16))
        {
          goto LABEL_139;
        }

        goto LABEL_138;
      }

      if (v27 >= v8)
      {
        v30 = v10;
      }

      else
      {
        v30 = v632;
      }

      v31 = (v18 + 5);
      v32 = v28 + 1;
      if (&v18[v30 - (v28 + 1) + 5] >= v10)
      {
        v33 = v10;
      }

      else
      {
        v33 = &v18[v30 - (v28 + 1) + 5];
      }

      if (v33 - 7 <= v31)
      {
        v39 = (v28 + 1);
        v40 = (v18 + 5);
      }

      else
      {
        if (*v32 != *v31)
        {
          v45 = __clz(__rbit64(*v31 ^ *v32)) >> 3;
          goto LABEL_97;
        }

        v34 = v15;
        v35 = v16;
        v36 = v9;
        v37 = v34;
        v38 = 0;
        v39 = (v28 + 3);
        v40 = (v18 + 13);
        while (v40 < v33 - 7)
        {
          v42 = *v39;
          v39 += 4;
          v41 = v42;
          v44 = *v40;
          v40 += 4;
          v43 = v44;
          v38 += 8;
          if (v41 != v44)
          {
            v45 = v38 + (__clz(__rbit64(v43 ^ v41)) >> 3);
            v46 = v37;
            v9 = v36;
            v16 = v35;
            v15 = v46;
            v17 = v605;
            goto LABEL_97;
          }
        }

        v88 = v37;
        v9 = v36;
        v16 = v35;
        v15 = v88;
        v17 = v605;
      }

      if (v40 < v33 - 3 && *v39 == *v40)
      {
        v39 += 2;
        v40 += 2;
      }

      if (v40 < v33 - 1 && *v39 == *v40)
      {
        ++v39;
        ++v40;
      }

      if (v40 < v33 && *v39 == *v40)
      {
        v40 = (v40 + 1);
      }

      v45 = v40 - v31;
LABEL_97:
      if (v32 + v45 == v30)
      {
        v89 = &v31[v45];
        if (v22 <= &v31[v45])
        {
          v92 = v9;
          v91 = &v31[v45];
LABEL_105:
          if (v91 < v622 && *v92 == *v91)
          {
            v92 += 4;
            v91 += 4;
          }

          if (v91 < v618 && *v92 == *v91)
          {
            v92 += 2;
            v91 += 2;
          }

          if (v91 < v10 && *v92 == *v91)
          {
            ++v91;
          }

          v97 = v91 - v89;
        }

        else if (*v9 == *v89)
        {
          v90 = 0;
          v91 = &v18[v45 + 13];
          v92 = (v8 + v7 + 8);
          do
          {
            if (v91 >= v22)
            {
              goto LABEL_105;
            }

            v94 = *v92;
            v92 += 8;
            v93 = v94;
            v96 = *v91;
            v91 += 8;
            v95 = v96;
            v90 += 8;
          }

          while (v93 == v96);
          v97 = v90 + (__clz(__rbit64(v95 ^ v93)) >> 3);
        }

        else
        {
          v97 = __clz(__rbit64(*v89 ^ *v9)) >> 3;
        }

        v45 += v97;
      }

      v98 = v29 - a4;
      v99 = *(a2 + 24);
      if (v29 <= v23)
      {
        *v99 = *a4;
        v102 = *(a2 + 24);
        if (v98 <= 0x10)
        {
          *(a2 + 24) = v102 + v98;
          v84 = *(a2 + 8);
          goto LABEL_137;
        }

        v103 = (v102 + 16);
        v104 = v102 + v98;
        v105 = (a4 + 16);
        do
        {
          v106 = *v105++;
          *v103++ = v106;
        }

        while (v103 < v104);
      }

      else
      {
        if (a4 <= v23)
        {
          v101 = v99 + v23 - a4;
          v107 = a4;
          do
          {
            v108 = *v107;
            v107 += 16;
            *v99++ = v108;
          }

          while (v99 < v101);
          v100 = (v10 - 32);
        }

        else
        {
          v100 = a4;
          v101 = *(a2 + 24);
        }

        if (v100 < v29)
        {
          if (a4 <= v23)
          {
            v109 = (v10 - 32);
          }

          else
          {
            v109 = a4;
          }

          v110 = v18 - v109 + 1;
          do
          {
            v111 = *v100++;
            *v101++ = v111;
            --v110;
          }

          while (v110);
        }
      }

      *(a2 + 24) += v98;
      v84 = *(a2 + 8);
      if (v98 >= 0x10000)
      {
        v112 = (v84 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v112;
      }

LABEL_137:
      v70 = v45 + 4;
      *(v84 + 4) = v98;
      *v84 = 1;
      v87 = v45 + 1;
      v86 = v12;
      if ((v45 + 1) >> 16)
      {
        goto LABEL_138;
      }

LABEL_139:
      *(v84 + 6) = v87;
      v114 = v84 + 8;
      *(a2 + 8) = v84 + 8;
      a4 = &v29[v70];
      if (&v29[v70] > v11)
      {
        goto LABEL_197;
      }

      *(v6 + 4 * ((0xCF1BBCDCBFA56300 * *(v626 + v26)) >> v20)) = v26 + 2;
      *(v6 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 2)) >> v20)) = a4 - 2 - v7;
      v115 = v12;
      v116 = v13;
      while (1)
      {
        v12 = v116;
        v116 = v115;
        v117 = (a4 - v7 - v12);
        v118 = v117 >= v8 ? v7 : v627;
        if ((v21 - v117) < 3)
        {
          break;
        }

        v119 = v118 + v117;
        if (*(v118 + v117) != *a4)
        {
          break;
        }

        if (v117 >= v8)
        {
          v120 = v10;
        }

        else
        {
          v120 = v632;
        }

        v121 = (a4 + 4);
        v122 = (v119 + 4);
        v123 = v120 + a4 - v119;
        if (v123 >= v10)
        {
          v124 = v10;
        }

        else
        {
          v124 = v123;
        }

        if (v124 - 7 <= v121)
        {
          v126 = v122;
          v127 = (a4 + 4);
        }

        else
        {
          if (*v122 != *v121)
          {
            v132 = __clz(__rbit64(*v121 ^ *v122)) >> 3;
            goto LABEL_170;
          }

          v125 = 0;
          v126 = (v118 + v117 + 12);
          v127 = (a4 + 12);
          while (v127 < v124 - 7)
          {
            v129 = *v126;
            v126 += 4;
            v128 = v129;
            v131 = *v127;
            v127 += 4;
            v130 = v131;
            v125 += 8;
            if (v128 != v131)
            {
              v132 = v125 + (__clz(__rbit64(v130 ^ v128)) >> 3);
              goto LABEL_170;
            }
          }
        }

        if (v127 < v124 - 3 && *v126 == *v127)
        {
          v126 += 2;
          v127 += 2;
        }

        if (v127 < v124 - 1 && *v126 == *v127)
        {
          ++v126;
          ++v127;
        }

        if (v127 < v124 && *v126 == *v127)
        {
          v127 = (v127 + 1);
        }

        v132 = v127 - v121;
LABEL_170:
        if ((v122 + v132) == v120)
        {
          v133 = &v121[v132];
          if (v22 > &v121[v132])
          {
            if (*v9 == *v133)
            {
              v134 = 0;
              v135 = &a4[v132 + 12];
              v136 = (v8 + v7 + 8);
              while (v135 < v22)
              {
                v138 = *v136;
                v136 += 8;
                v137 = v138;
                v140 = *v135;
                v135 += 8;
                v139 = v140;
                v134 += 8;
                if (v137 != v140)
                {
                  v141 = v134 + (__clz(__rbit64(v139 ^ v137)) >> 3);
                  goto LABEL_189;
                }
              }

LABEL_178:
              if (v135 < v622 && *v136 == *v135)
              {
                v136 += 4;
                v135 += 4;
              }

              if (v135 < v618 && *v136 == *v135)
              {
                v136 += 2;
                v135 += 2;
              }

              if (v135 < v10 && *v136 == *v135)
              {
                ++v135;
              }

              v141 = v135 - v133;
            }

            else
            {
              v141 = __clz(__rbit64(*v133 ^ *v9)) >> 3;
            }

LABEL_189:
            v132 += v141;
            goto LABEL_190;
          }

          v136 = v9;
          v135 = &v121[v132];
          goto LABEL_178;
        }

LABEL_190:
        if (a4 <= v23)
        {
          **(a2 + 24) = *a4;
          v114 = *(a2 + 8);
        }

        *(v114 + 4) = 0;
        *v114 = 1;
        if (v132 + 1 >= 0x10000)
        {
          v142 = (v114 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v142;
        }

        *(v114 + 6) = v132 + 1;
        v114 += 8;
        *(v6 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v20)) = a4 - v7;
        a4 += v132 + 4;
        *(a2 + 8) = v114;
        v115 = v12;
        v13 = v116;
        v18 = a4;
        if (a4 > v11)
        {
          goto LABEL_198;
        }
      }

      v13 = v12;
      v12 = v115;
LABEL_197:
      v18 = a4;
LABEL_198:
      if (v18 >= v11)
      {
LABEL_991:
        a3 = v604;
        break;
      }
    }
  }

LABEL_992:
  *a3 = v12;
  a3[1] = v13;
  return v10 - a4;
}