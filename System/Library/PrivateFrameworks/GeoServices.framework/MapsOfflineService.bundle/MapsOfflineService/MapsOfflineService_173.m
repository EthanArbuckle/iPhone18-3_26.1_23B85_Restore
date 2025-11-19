void sub_AA3E30(uint64_t a1, int a2)
{
  sub_7E9A4(v254);
  v4 = *(a1 + 232);
  v231 = *(a1 + 240);
  if (v4 != v231)
  {
    v239 = a2 + 1;
    v232 = a2 + 2;
    v237 = ~a2;
    do
    {
      v234 = v4;
      v247 = *v4;
      v5 = sub_A9C5E0((*(a1 + 32) + 88), v247);
      sub_A74644(&v248, *(a1 + 24), *v5);
      v6 = v249;
      v7 = 16;
      if (v253)
      {
        v7 = 32;
      }

      v8 = v247;
      if (v249 < *(&v248 + v7))
      {
        while (1)
        {
          v12 = __ROR8__(*v6, 32);
          v13 = *(a1 + 32);
          v14 = *(v13 + 56) - 1;
          v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
          v16 = v15 ^ (v15 >> 33);
          v17 = *(v13 + 80);
          v19 = *(v13 + 64);
          v18 = *(v13 + 68);
          v20 = v16 & v14;
          v21 = (v17 + 12 * (v16 & v14));
          v23 = *v21;
          v22 = v21[1];
          if (v18 == v22 && v19 == v23)
          {
LABEL_33:
            v25 = v20;
            goto LABEL_34;
          }

          if (!*(v13 + 40))
          {
            break;
          }

          v25 = -1;
          v26 = 1;
          do
          {
            if (*(v13 + 36) == v22 && *(v13 + 32) == v23)
            {
              if (v25 == -1)
              {
                v25 = v20;
              }
            }

            else if (__PAIR64__(v22, v23) == v12)
            {
              if (v20 != -1)
              {
                goto LABEL_29;
              }

              goto LABEL_68;
            }

            v20 = (v20 + v26) & v14;
            v27 = (v17 + 12 * v20);
            v23 = *v27;
            v22 = v27[1];
            ++v26;
          }

          while (v18 != v22 || v19 != v23);
          if (v25 == -1)
          {
            goto LABEL_33;
          }

LABEL_34:
          if (!sub_A99094(*(a1 + 32), 1))
          {
            v50 = *(v13 + 40);
            v49 = *(v13 + 48);
            if ((v49 - v50) >= 0x1555555555555555)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }

            v51 = *(v13 + 80);
            if (v50 && ((v52 = (v51 + 12 * v25), *(v13 + 36) == v52[1]) ? (v53 = *(v13 + 32) == *v52) : (v53 = 0), v53))
            {
              *(v13 + 40) = v50 - 1;
            }

            else
            {
              *(v13 + 48) = v49 + 1;
            }

            v8 = v247;
            v64 = v51 + 12 * v25;
            *v64 = v12;
            *(v64 + 8) = -1;
            v29 = *(v13 + 80) + 12 * v25;
            v30 = *(v29 + 8);
            if (v30 != -1)
            {
              goto LABEL_91;
            }

LABEL_30:
            v31 = *(v13 + 112);
            *(v13 + 112) = v31 + 1;
            *(v29 + 8) = v31;
            v33 = *(v13 + 96);
            v32 = *(v13 + 104);
            if (v33 >= v32)
            {
              v58 = *(v13 + 88);
              v59 = v33 - v58;
              v60 = (v33 - v58) >> 3;
              v61 = v60 + 1;
              if ((v60 + 1) >> 61)
              {
                sub_1794();
              }

              v62 = v32 - v58;
              if (v62 >> 2 > v61)
              {
                v61 = v62 >> 2;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFF8)
              {
                v63 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v63 = v61;
              }

              if (v63)
              {
                if (!(v63 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v71 = (v33 - v58) >> 3;
              v72 = (8 * v60);
              v73 = (8 * v60 - 8 * v71);
              *v72 = v12;
              v34 = v72 + 1;
              memcpy(v73, v58, v59);
              *(v13 + 88) = v73;
              *(v13 + 96) = v34;
              *(v13 + 104) = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              *v33 = v12;
              v34 = v33 + 8;
            }

            *(v13 + 96) = v34;
            v74 = *(v29 + 8);
            *(a1 + 576) = *(a1 + 576) + 1.0;
            v243 = v74;
            if (v247 != v74)
            {
              goto LABEL_105;
            }

LABEL_295:
            v9 = v250;
            v6 = (v249 + 12);
            v249 = v6;
            if (v6 == v250)
            {
              goto LABEL_311;
            }

LABEL_296:
            v10 = v253;
            goto LABEL_312;
          }

          v35 = *(v13 + 56) - 1;
          v36 = *(v13 + 80);
          v38 = *(v13 + 64);
          v37 = *(v13 + 68);
          v39 = v35 & v16;
          v40 = (v36 + 12 * (v35 & v16));
          v42 = *v40;
          v41 = v40[1];
          v43 = *(v13 + 40);
          if (v37 == v41 && v38 == v42)
          {
            v8 = v247;
LABEL_59:
            v45 = v39;
            v54 = *(v13 + 48);
            if (v54 - v43 >= 0x1555555555555555)
            {
              goto LABEL_341;
            }

            goto LABEL_83;
          }

          if (v43)
          {
            v45 = -1;
            v46 = 1;
            v8 = v247;
            do
            {
              if (*(v13 + 36) == v41 && *(v13 + 32) == v42)
              {
                if (v45 == -1)
                {
                  v45 = v39;
                }
              }

              else if (__PAIR64__(v41, v42) == v12)
              {
                goto LABEL_99;
              }

              v39 = (v39 + v46) & v35;
              v47 = (v36 + 12 * v39);
              v42 = *v47;
              v41 = v47[1];
              ++v46;
            }

            while (v37 != v41 || v38 != v42);
            if (v45 != -1)
            {
              v54 = *(v13 + 48);
              if (v54 - v43 >= 0x1555555555555555)
              {
                goto LABEL_341;
              }

              goto LABEL_83;
            }

            goto LABEL_59;
          }

          v68 = 1;
          v8 = v247;
          while (__PAIR64__(v41, v42) != v12)
          {
            v39 = (v39 + v68) & v35;
            v69 = (v36 + 12 * v39);
            v42 = *v69;
            v41 = v69[1];
            ++v68;
            if (v37 == v41 && v38 == v42)
            {
              v43 = 0;
              v45 = v39;
              v54 = *(v13 + 48);
              if (v54 >= 0x1555555555555555)
              {
                goto LABEL_341;
              }

              goto LABEL_83;
            }
          }

LABEL_99:
          if (v39 == -1)
          {
            v45 = -1;
            v54 = *(v13 + 48);
            if (v54 - v43 >= 0x1555555555555555)
            {
LABEL_341:
              v230 = __cxa_allocate_exception(0x10uLL);
              sub_195A000(v230, "insert overflow");
            }

LABEL_83:
            if (v43 && ((v65 = (v36 + 12 * v45), *(v13 + 36) == v65[1]) ? (v66 = *(v13 + 32) == *v65) : (v66 = 0), v66))
            {
              *(v13 + 40) = v43 - 1;
            }

            else
            {
              *(v13 + 48) = v54 + 1;
            }

            v67 = v36 + 12 * v45;
            *v67 = v12;
            *(v67 + 8) = -1;
            v29 = *(v13 + 80) + 12 * v45;
            v30 = *(v29 + 8);
            if (v30 != -1)
            {
              goto LABEL_91;
            }

            goto LABEL_30;
          }

          v29 = v36 + 12 * v39;
          v30 = *(v29 + 8);
          if (v30 == -1)
          {
            goto LABEL_30;
          }

LABEL_91:
          *(a1 + 576) = *(a1 + 576) + 1.0;
          v243 = v30;
          if (v8 == v30)
          {
            goto LABEL_295;
          }

LABEL_105:
          v75 = *(a1 + 128);
          v76 = *(a1 + 136);
          if (v76 != v75)
          {
            v77 = *(a1 + 152);
            v78 = *v75;
            goto LABEL_117;
          }

          v80 = 1 - ((v76 - v75) >> 3);
          v81 = *(a1 + 144);
          if (v80 > (v81 - v76) >> 3)
          {
            v82 = v81 - v75;
            v83 = v82 >> 2;
            if ((v82 >> 2) <= 1)
            {
              v83 = 1;
            }

            if (v82 >= 0x7FFFFFFFFFFFFFF8)
            {
              v84 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v83;
            }

            if (!(v84 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          bzero(*(a1 + 136), 8 * v80);
          v86 = &v76[2 * v80];
          *(a1 + 136) = v86;
          v75 = *(a1 + 128);
          v77 = *(a1 + 152);
          v78 = *v75;
          if (v75 == v86)
          {
            v79 = *(a1 + 144);
            if (v79 == v86)
            {
              v87 = 1;
              v88 = v79 - v75;
              if ((v88 >> 2) > 1)
              {
                v87 = v88 >> 2;
              }

              if (v88 >= 0x7FFFFFFFFFFFFFF8)
              {
                v89 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v89 = v87;
              }

              if (v89)
              {
                if (!(v89 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *&dword_0 = 0;
              *(a1 + 128) = 0;
              *(a1 + 136) = 8;
              *(a1 + 144) = 0;
              if (v75)
              {
                operator delete(v75);
              }
            }

            else
            {
              *v86 = 0;
              *(a1 + 136) = v86 + 2;
            }

            v75 = *(a1 + 128);
            v85 = *(a1 + 152);
          }

          else
          {
LABEL_117:
            v85 = v77;
          }

          sub_AA6CF0((a1 + 128), 0, (v77 + 52 * v78), (v85 + 52 * v75[1]));
          v90 = (v239 + *(a1 + 120) * (v247 + 1));
          v91 = *(a1 + 128);
          v92 = *(a1 + 136);
          if (v90 < (v92 - v91) >> 3)
          {
            v93 = v91[2 * v90];
            v94 = v91[2 * v90 + 1];
            v95 = v94 - v93;
            if (v94 != v93)
            {
              v96 = 0;
              v97 = 0;
              do
              {
                v98 = *(a1 + 128);
                if (v90 >= (*(a1 + 136) - v98) >> 3 || (v99 = v98[2 * v90], v98[2 * v90 + 1] - v99 <= v97))
                {
                  v223 = __cxa_allocate_exception(0x10uLL);
                  sub_195A2D8(v223, "key does not exist and cannot be added");
                }

                v100 = v99 + v97;
                v101 = *(a1 + 152);
                if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v101) >> 2) <= v100)
                {
                  v225 = __cxa_allocate_exception(0x10uLL);
                  sub_195A2D8(v225, "index out of range");
                }

                v102 = v101 + 52 * v100;
                v103 = *v102;
                v104 = *(v102 + 16);
                v105 = *(v102 + 32);
                v258 = *(v102 + 48);
                v257 = v105;
                v255 = v103;
                v256 = v104;
                v107 = *v98;
                v106 = v98[1];
                if (v106 != *v98)
                {
                  v108 = 0;
                  v110 = v101 + 52 * v106;
                  v111 = v101 + 52 * v107;
                  while (1)
                  {
                    v112 = *(v111 + 28);
                    if (v112 != 0x7FFFFFFF)
                    {
                      if (v112 <= SHIDWORD(v256))
                      {
                        goto LABEL_136;
                      }

                      *(v111 + 28) = 0x7FFFFFFF;
                      v108 = 1;
                    }

                    v111 += 52;
                    if (v111 == v110)
                    {
                      goto LABEL_142;
                    }
                  }
                }

                v108 = 0;
LABEL_142:
                v109 = sub_AA71F8((a1 + 128), 0, &v255);
                *(v109 + 40) = -1;
                *(v109 + 48) = 0x7FFFFFFF;
LABEL_136:
                v96 |= v108;
                ++v97;
              }

              while (v97 != v95);
              v91 = *(a1 + 128);
              v92 = *(a1 + 136);
              if (v96)
              {
                if (v92 != v91)
                {
                  v113 = *(a1 + 152);
                  v114 = *v91;
                  goto LABEL_151;
                }

                sub_30B70(a1 + 128, 1uLL);
                v91 = *(a1 + 128);
                v113 = *(a1 + 152);
                v114 = *v91;
                if (*(a1 + 136) == v91)
                {
                  sub_30B70(a1 + 128, 1uLL);
                  v91 = *(a1 + 128);
                  v115 = *(a1 + 152);
                }

                else
                {
LABEL_151:
                  v115 = v113;
                }

                v116 = (v113 + 52 * v114);
                v117 = (v115 + 52 * v91[1]);
                if (v116 == v117)
                {
                  v116 = v117;
                  if (*(a1 + 136) == v91)
                  {
                    goto LABEL_165;
                  }
                }

                else
                {
                  while (*(v116 + 7) != 0x7FFFFFFF)
                  {
                    v116 = (v116 + 52);
                    if (v116 == v117)
                    {
                      v116 = v117;
                      break;
                    }
                  }

                  if (v117 == v116 || (v118 = (v116 + 52), (v116 + 52) == v117))
                  {
                    if (*(a1 + 136) == v91)
                    {
                      goto LABEL_165;
                    }
                  }

                  else
                  {
                    do
                    {
                      if (*(v118 + 7) != 0x7FFFFFFF)
                      {
                        v119 = *v118;
                        v120 = v118[1];
                        v121 = v118[2];
                        *(v116 + 12) = *(v118 + 12);
                        v116[1] = v120;
                        v116[2] = v121;
                        *v116 = v119;
                        v116 = (v116 + 52);
                      }

                      v118 = (v118 + 52);
                    }

                    while (v118 != v117);
                    v91 = *(a1 + 128);
                    if (*(a1 + 136) == v91)
                    {
LABEL_165:
                      sub_30B70(a1 + 128, 1uLL);
                      v91 = *(a1 + 128);
                    }
                  }
                }

                sub_AA6CF0((a1 + 128), 0, v116, (*(a1 + 152) + 52 * v91[1]));
                v91 = *(a1 + 128);
                v92 = *(a1 + 136);
              }
            }
          }

          if (v92 != v91)
          {
            v122 = *(a1 + 152);
            v123 = *v91;
            goto LABEL_184;
          }

          v125 = 1 - ((v92 - v91) >> 3);
          v126 = *(a1 + 144);
          if (v125 > (v126 - v92) >> 3)
          {
            v127 = v126 - v91;
            v128 = v127 >> 2;
            if ((v127 >> 2) <= 1)
            {
              v128 = 1;
            }

            if (v127 >= 0x7FFFFFFFFFFFFFF8)
            {
              v129 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v129 = v128;
            }

            if (!(v129 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          bzero(v92, 8 * v125);
          v130 = &v92[2 * v125];
          *(a1 + 136) = v130;
          v91 = *(a1 + 128);
          v122 = *(a1 + 152);
          v123 = *v91;
          if (v91 == v130)
          {
            v124 = *(a1 + 144);
            if (v124 == v130)
            {
              v132 = 1;
              v133 = v124 - v91;
              if ((v133 >> 2) > 1)
              {
                v132 = v133 >> 2;
              }

              if (v133 >= 0x7FFFFFFFFFFFFFF8)
              {
                v134 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v134 = v132;
              }

              if (v134)
              {
                if (!(v134 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *&dword_0 = 0;
              *(a1 + 128) = 0;
              *(a1 + 136) = 8;
              *(a1 + 144) = 0;
              if (v91)
              {
                operator delete(v91);
              }
            }

            else
            {
              *v130 = 0;
              *(a1 + 136) = v130 + 2;
            }

            v91 = *(a1 + 128);
            v131 = *(a1 + 152);
          }

          else
          {
LABEL_184:
            v131 = v122;
          }

          v135 = (v122 + 52 * v123);
          v136 = (v131 + 52 * v91[1]);
          if (v135 != v136)
          {
            v137 = v249;
            do
            {
              *v135 = v247;
              v138 = v135[7];
              v135[3] = v138;
              v135[4] = -1;
              v139 = *(v137 + 2);
              v140 = v139 / 10;
              v141 = v139 % 10;
              if (v139 < 0)
              {
                v142 = -5;
              }

              else
              {
                v142 = 5;
              }

              v135[7] = v140 + v138 + (((103 * (v142 + v141)) >> 15) & 1) + ((103 * (v142 + v141)) >> 10);
              v135 += 13;
            }

            while (v135 != v136);
          }

          v143 = *(a1 + 120);
          if (*(a1 + 20) != 1)
          {
            v246 = 0xFFFFFFFFLL;
            v144 = v243;
            v145 = *(a1 + 48);
            if (v145)
            {
              goto LABEL_204;
            }

LABEL_211:
            v149 = 2147483646;
            v150 = *(a1 + 128);
            if (*(a1 + 136) == v150)
            {
              goto LABEL_295;
            }

            goto LABEL_216;
          }

          v246 = (v143 + v143 * *(a1 + 376) + 1);
          v144 = v243;
          v145 = *(a1 + 48);
          if (!v145)
          {
            goto LABEL_211;
          }

LABEL_204:
          if (*v145 <= v144)
          {
            v149 = 0x7FFFFFFF;
            v150 = *(a1 + 128);
            if (*(a1 + 136) == v150)
            {
              goto LABEL_295;
            }
          }

          else
          {
            v244 = *(a1 + 120);
            v146 = 0;
            v147 = *(a1 + 124) + v237;
            v148 = v147;
            do
            {
              if (v146 > v147)
              {
                v149 = 0x7FFFFFFF;
                v143 = v244;
                v150 = *(a1 + 128);
                if (*(a1 + 136) == v150)
                {
                  goto LABEL_295;
                }

                goto LABEL_216;
              }

              v149 = *sub_A9C7DC(v145 + 2, v145[1] * v144 + v148);
              v146 += 2;
              v148 -= 2;
            }

            while (v149 == 0x7FFFFFFF);
            v143 = v244;
            v150 = *(a1 + 128);
            if (*(a1 + 136) == v150)
            {
              goto LABEL_295;
            }
          }

LABEL_216:
          v151 = v150[1];
          v152 = v151 - *v150;
          if (v151 == *v150)
          {
            goto LABEL_295;
          }

          if (v149 == 0x7FFFFFFF)
          {
            v153 = 0;
            do
            {
              if (v150[1] - *v150 <= v153)
              {
                v226 = __cxa_allocate_exception(0x10uLL);
                sub_195A2D8(v226, "key does not exist and cannot be added");
              }

              if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - *(a1 + 152)) >> 2) <= (v153 + *v150))
              {
                v227 = __cxa_allocate_exception(0x10uLL);
                sub_195A2D8(v227, "index out of range");
              }

              ++v153;
            }

            while (v152 != v153);
            goto LABEL_295;
          }

          v238 = v144;
          v245 = 0;
          v154 = 0;
          v233 = v243 + 1;
          *v241 = (v232 + v143 * v233);
          *v242 = (v143 * v233 + 1);
          v240 = (v246 + 1);
          while (2)
          {
            v157 = *(a1 + 128);
            v158 = *(a1 + 136);
            v159 = v158 - v157;
            if (v158 == v157 || v157[1] - *v157 <= v154)
            {
              v224 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v224, "key does not exist and cannot be added");
            }

            v160 = *v157 + v154;
            v161 = *(a1 + 152);
            if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v161) >> 2) <= v160)
            {
              v228 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v228, "index out of range");
            }

            v162 = v161 + 52 * v160;
            v164 = *(v162 + 16);
            v163 = *(v162 + 32);
            v165 = *v162;
            v258 = *(v162 + 48);
            v257 = v163;
            v255 = v165;
            v256 = v164;
            if (SHIDWORD(v164) > v149)
            {
              goto LABEL_226;
            }

            v166 = v246;
            if (v246 != 0xFFFFFFFF)
            {
              v168 = v159 >> 3;
              if (v159 >> 3 <= v246)
              {
                v169 = v240 - v168;
                if (v240 > v168)
                {
                  v170 = *(a1 + 144);
                  if (v169 > (v170 - v158) >> 3)
                  {
                    v171 = v170 - v157;
                    v172 = v171 >> 2;
                    if (v171 >> 2 <= v240)
                    {
                      v172 = (v246 + 1);
                    }

                    if (v171 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v173 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v173 = v172;
                    }

                    if (!(v173 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  bzero(v158, 8 * v169);
                  v158 += 8 * v169;
                  *(a1 + 136) = v158;
                  v157 = *(a1 + 128);
                  v161 = *(a1 + 152);
                  v174 = v157[2 * v246];
                  v175 = (v158 - v157) >> 3;
                  if (v175 <= v246)
                  {
LABEL_250:
                    v177 = v240 - v175;
                    if (v240 <= v175)
                    {
                      if (v240 < v175)
                      {
                        *(a1 + 136) = &v157[2 * v240];
                      }

                      v176 = v161;
                    }

                    else
                    {
                      v178 = *(a1 + 144);
                      if (v177 <= (v178 - v158) >> 3)
                      {
                        bzero(v158, 8 * v177);
                        *(a1 + 136) = &v158[8 * v177];
                      }

                      else
                      {
                        v179 = (v158 - v157) >> 3;
                        v180 = v179 + v177;
                        if ((v179 + v177) >> 61)
                        {
                          sub_1794();
                        }

                        v181 = v178 - v157;
                        if (v181 >> 2 > v180)
                        {
                          v180 = v181 >> 2;
                        }

                        if (v181 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v180 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        if (v180)
                        {
                          if (!(v180 >> 61))
                          {
                            operator new();
                          }

                          sub_1808();
                        }

                        v235 = (v158 - v157) >> 3;
                        v236 = v158 - v157;
                        v182 = (8 * v179);
                        bzero(v182, 8 * v177);
                        v183 = &v182[8 * v177];
                        v184 = &v182[-8 * v235];
                        memcpy(v184, v157, v236);
                        *(a1 + 128) = v184;
                        *(a1 + 136) = v183;
                        *(a1 + 144) = 0;
                        if (v157)
                        {
                          operator delete(v157);
                        }
                      }

                      v157 = *(a1 + 128);
                      v176 = *(a1 + 152);
                    }

LABEL_267:
                    v185 = v161 + 52 * v174;
                    for (i = v176 + 52 * v157[2 * v246 + 1]; v185 != i; v185 += 52)
                    {
                      v187 = *(v185 + 28);
                      if (v187 != 0x7FFFFFFF && v187 <= SHIDWORD(v256))
                      {
                        v155 = 0;
                        v156 = 0;
                        goto LABEL_225;
                      }
                    }

                    v161 = v176;
                    v167 = *v242;
                    if (*v242 < ((*(a1 + 136) - v157) >> 3))
                    {
                      goto LABEL_274;
                    }

                    goto LABEL_275;
                  }

LABEL_248:
                  v176 = v161;
                  goto LABEL_267;
                }

                if (v240 < v168)
                {
                  v158 = &v157[2 * v240];
                  *(a1 + 136) = v158;
                }

                v166 = v246;
              }

              v174 = v157[2 * v166];
              v175 = (v158 - v157) >> 3;
              if (v175 <= v166)
              {
                goto LABEL_250;
              }

              goto LABEL_248;
            }

            v167 = *v242;
            if (*v242 < ((*(a1 + 136) - v157) >> 3))
            {
LABEL_274:
              v190 = v157[2 * v167];
              v189 = v157[2 * v167 + 1];
              if (v189 != v190)
              {
                v156 = 0;
                v197 = v161 + 52 * v189;
                v198 = v161 + 52 * v190;
                while (1)
                {
                  v199 = *(v198 + 28);
                  if (v199 != 0x7FFFFFFF)
                  {
                    if (v199 <= SHIDWORD(v256))
                    {
                      v155 = 0;
                      goto LABEL_225;
                    }

                    *(v198 + 28) = 0x7FFFFFFF;
                    v156 = 1;
                  }

                  v198 += 52;
                  if (v198 == v197)
                  {
                    goto LABEL_276;
                  }
                }
              }
            }

LABEL_275:
            v156 = 0;
LABEL_276:
            v191 = sub_AA71F8((a1 + 128), v167, &v255);
            *(v191 + 40) = -1;
            *(v191 + 48) = 0x7FFFFFFF;
            v192 = *(a1 + 128);
            if (*v241 < ((*(a1 + 136) - v192) >> 3))
            {
              v194 = *(v192 + 8 * *v241);
              v193 = *(v192 + 8 * *v241 + 4);
              if (v193 != v194)
              {
                v200 = *(a1 + 152);
                v201 = v200 + 52 * v193;
                v202 = v200 + 52 * v194;
                do
                {
                  if (*(v202 + 28) != 0x7FFFFFFF)
                  {
                    *(v202 + 28) = 0x7FFFFFFF;
                  }

                  v202 += 52;
                }

                while (v202 != v201);
              }
            }

            v195 = sub_AA71F8((a1 + 128), v241[0], &v255);
            *(v195 + 40) = -1;
            *(v195 + 48) = 0x7FFFFFFF;
            v196 = *(a1 + 200);
            *(a1 + 200) = v196 + 1;
            *(v195 + 24) = v196;
            *(v195 + 20) = DWORD2(v256);
            *(v195 + 40) = -1;
            *(v195 + 48) = 0x7FFFFFFF;
            v155 = 1;
LABEL_225:
            v245 |= v155 | (v156 << 8);
LABEL_226:
            if (++v154 != v152)
            {
              continue;
            }

            break;
          }

          if ((v245 & 0x100) != 0)
          {
            sub_AA75DC((a1 + 128), v241[0]);
            sub_AA75DC((a1 + 128), v242[0]);
          }

          v203 = v238;
          if ((v245 & 1) == 0)
          {
            goto LABEL_295;
          }

          if (*(a1 + 264) <= v238)
          {
            sub_4D9168(a1 + 256, v233, 0);
            v203 = v238;
          }

          v204 = v203 >> 6;
          v205 = 1 << v203;
          if ((*(*(a1 + 256) + 8 * (v203 >> 6)) & (1 << v203)) != 0)
          {
            goto LABEL_295;
          }

          v207 = *(a1 + 288);
          v206 = *(a1 + 296);
          if (v207 >= v206)
          {
            v209 = *(a1 + 280);
            v210 = v207 - v209;
            v211 = (v207 - v209) >> 2;
            v212 = v211 + 1;
            if ((v211 + 1) >> 62)
            {
              sub_1794();
            }

            v213 = v206 - v209;
            if (v213 >> 1 > v212)
            {
              v212 = v213 >> 1;
            }

            if (v213 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v214 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v214 = v212;
            }

            if (v214)
            {
              if (!(v214 >> 62))
              {
                operator new();
              }

              sub_1808();
            }

            v215 = (v207 - v209) >> 2;
            v216 = (4 * v211);
            v217 = (4 * v211 - 4 * v215);
            *v216 = v243;
            v208 = v216 + 1;
            memcpy(v217, v209, v210);
            *(a1 + 280) = v217;
            *(a1 + 288) = v208;
            *(a1 + 296) = 0;
            if (v209)
            {
              operator delete(v209);
            }
          }

          else
          {
            *v207 = v243;
            v208 = v207 + 4;
          }

          *(a1 + 288) = v208;
          *(*(a1 + 256) + 8 * v204) |= v205;
          v9 = v250;
          v6 = (v249 + 12);
          v249 = v6;
          if (v6 != v250)
          {
            goto LABEL_296;
          }

LABEL_311:
          v6 = v251;
          v249 = v251;
          v10 = 1;
          v253 = 1;
LABEL_312:
          v11 = v252;
          if (v10)
          {
            v218 = v252;
          }

          else
          {
            v218 = v9;
          }

          if (*(v248 + 16) == 1 && v6 < v218)
          {
            while (1)
            {
              v220 = __ROR8__(*v6, 32);
              if (HIDWORD(v220) == 1 && (v220 + 3) < 2)
              {
                break;
              }

              if (sub_2D5204(**(v248 + 4120)))
              {
                v6 = v249;
                v9 = v250;
                v10 = v253;
                break;
              }

              v9 = v250;
              v6 = (v249 + 12);
              v249 = v6;
              if (v6 == v250)
              {
                v6 = v251;
                v249 = v251;
                v10 = 1;
                v253 = 1;
                if (v251 >= v252)
                {
                  break;
                }
              }

              else
              {
                v10 = v253;
                v222 = 16;
                if (v253)
                {
                  v222 = 32;
                }

                if (v6 >= *(&v248 + v222))
                {
                  break;
                }
              }
            }

            v11 = v252;
          }

          v8 = v247;
          if (v10)
          {
            v9 = v11;
          }

          if (v6 >= v9)
          {
            goto LABEL_3;
          }
        }

        v55 = 1;
        while (__PAIR64__(v22, v23) != v12)
        {
          v20 = (v20 + v55) & v14;
          v56 = (v17 + 12 * v20);
          v23 = *v56;
          v22 = v56[1];
          ++v55;
          if (v18 == v22 && v19 == v23)
          {
            goto LABEL_33;
          }
        }

        v8 = v247;
        if (v20 != -1)
        {
LABEL_29:
          v29 = v17 + 12 * v20;
          v30 = *(v29 + 8);
          if (v30 == -1)
          {
            goto LABEL_30;
          }

          goto LABEL_91;
        }

LABEL_68:
        v25 = -1;
        goto LABEL_34;
      }

LABEL_3:
      v4 = v234 + 1;
    }

    while (v234 + 1 != v231);
  }

  *(a1 + 520) = sub_7EA60(v254) + *(a1 + 520);
}

void sub_AA56A4(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 360);
  if (v2 != v3)
  {
    v4 = *(a1 + 328);
    v5 = *(a1 + 304);
    v6 = *(a1 + 352);
    do
    {
      v7 = *v6++;
      *(v4 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
      *(v5 + 4 * v7) = -1;
    }

    while (v6 != v3);
  }

  *(a1 + 360) = v2;
  v8 = *(a1 + 280);
  v159 = *(a1 + 288);
  while (v8 != v159)
  {
    v9 = sub_A9C5E0((*(a1 + 32) + 88), *v8);
    sub_A7905C(v163, *(a1 + 24), *v9, 0, 0, 0);
LABEL_8:
    v10 = v166;
LABEL_9:
    v11 = v167;
    while (v10 < v11)
    {
      v12 = __ROR8__(*v10, 32);
      v13 = *(a1 + 40);
      v14 = *(v13 + 56) - 1;
      v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
      v16 = v15 ^ (v15 >> 33);
      v17 = *(v13 + 80);
      v19 = *(v13 + 64);
      v18 = *(v13 + 68);
      v20 = v16 & v14;
      v21 = (v17 + 12 * (v16 & v14));
      v23 = *v21;
      v22 = v21[1];
      if (v18 == v22 && v19 == v23)
      {
        goto LABEL_54;
      }

      if (*(v13 + 40))
      {
        v25 = -1;
        v26 = 1;
        do
        {
          if (*(v13 + 36) == v22 && *(v13 + 32) == v23)
          {
            if (v25 == -1)
            {
              v25 = v20;
            }
          }

          else if (__PAIR64__(v22, v23) == v12)
          {
            goto LABEL_51;
          }

          v20 = (v20 + v26) & v14;
          v27 = (v17 + 12 * v20);
          v23 = *v27;
          v22 = v27[1];
          ++v26;
        }

        while (v18 != v22 || v19 != v23);
        if (v25 == -1)
        {
LABEL_54:
          v25 = v20;
          if (!sub_A99094(*(a1 + 40), 1))
          {
            goto LABEL_55;
          }

          goto LABEL_29;
        }

        if (!sub_A99094(*(a1 + 40), 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v43 = 1;
        while (__PAIR64__(v22, v23) != v12)
        {
          v20 = (v20 + v43) & v14;
          v44 = (v17 + 12 * v20);
          v23 = *v44;
          v22 = v44[1];
          ++v43;
          if (v18 == v22 && v19 == v23)
          {
            goto LABEL_54;
          }
        }

LABEL_51:
        if (v20 != -1)
        {
          v46 = v17 + 12 * v20;
          v47 = *(v46 + 8);
          if (v47 != -1)
          {
            goto LABEL_103;
          }

          goto LABEL_88;
        }

        v25 = -1;
        if (!sub_A99094(*(a1 + 40), 1))
        {
LABEL_55:
          v49 = *(v13 + 40);
          v48 = *(v13 + 48);
          if ((v48 - v49) >= 0x1555555555555555)
          {
            goto LABEL_232;
          }

          v30 = *(v13 + 80);
          if (v49 && ((v50 = (v30 + 12 * v25), *(v13 + 36) == v50[1]) ? (v51 = *(v13 + 32) == *v50) : (v51 = 0), v51))
          {
            *(v13 + 40) = v49 - 1;
          }

          else
          {
            *(v13 + 48) = v48 + 1;
          }

          v52 = 3 * v25;
          goto LABEL_87;
        }
      }

LABEL_29:
      v29 = *(v13 + 56) - 1;
      v30 = *(v13 + 80);
      v32 = *(v13 + 64);
      v31 = *(v13 + 68);
      v33 = v29 & v16;
      v34 = (v30 + 12 * (v29 & v16));
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v13 + 40);
      if (v31 == v35 && v32 == v36)
      {
        goto LABEL_78;
      }

      if (v37)
      {
        v39 = -1;
        v40 = 1;
        do
        {
          if (*(v13 + 36) == v35 && *(v13 + 32) == v36)
          {
            if (v39 == -1)
            {
              v39 = v33;
            }
          }

          else if (__PAIR64__(v35, v36) == v12)
          {
            goto LABEL_72;
          }

          v33 = (v33 + v40) & v29;
          v41 = (v30 + 12 * v33);
          v36 = *v41;
          v35 = v41[1];
          ++v40;
        }

        while (v31 != v35 || v32 != v36);
        if (v39 == -1)
        {
LABEL_78:
          v39 = v33;
        }

        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
          goto LABEL_232;
        }

LABEL_80:
        if (v37 && ((v57 = (v30 + 12 * v39), *(v13 + 36) == v57[1]) ? (v58 = *(v13 + 32) == *v57) : (v58 = 0), v58))
        {
          *(v13 + 40) = v37 - 1;
          v52 = 3 * v39;
        }

        else
        {
          *(v13 + 48) = v56 + 1;
          v52 = 3 * v39;
        }

LABEL_87:
        v59 = 4 * v52;
        v60 = v30 + v59;
        *v60 = v12;
        *(v60 + 8) = -1;
        v46 = *(v13 + 80) + v59;
        v47 = *(v46 + 8);
        if (v47 != -1)
        {
          goto LABEL_103;
        }

        goto LABEL_88;
      }

      v53 = 1;
      while (__PAIR64__(v35, v36) != v12)
      {
        v33 = (v33 + v53) & v29;
        v54 = (v30 + 12 * v33);
        v36 = *v54;
        v35 = v54[1];
        ++v53;
        if (v31 == v35 && v32 == v36)
        {
          v37 = 0;
          goto LABEL_78;
        }
      }

LABEL_72:
      if (v33 == -1)
      {
        v39 = -1;
        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
LABEL_232:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        goto LABEL_80;
      }

      v46 = v30 + 12 * v33;
      v47 = *(v46 + 8);
      if (v47 != -1)
      {
        goto LABEL_103;
      }

LABEL_88:
      v61 = *(v13 + 112);
      *(v13 + 112) = v61 + 1;
      *(v46 + 8) = v61;
      v63 = *(v13 + 96);
      v62 = *(v13 + 104);
      if (v63 >= v62)
      {
        v65 = *(v13 + 88);
        v66 = v63 - v65;
        v67 = (v63 - v65) >> 3;
        v68 = v67 + 1;
        if ((v67 + 1) >> 61)
        {
          sub_1794();
        }

        v69 = v8;
        v70 = v62 - v65;
        if (v70 >> 2 > v68)
        {
          v68 = v70 >> 2;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v71 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v68;
        }

        if (v71)
        {
          if (!(v71 >> 61))
          {
            operator new();
          }

LABEL_231:
          sub_1808();
        }

        v72 = v67;
        v73 = (8 * v67);
        v74 = &v73[-v72];
        *v73 = v12;
        v64 = v73 + 1;
        memcpy(v74, v65, v66);
        *(v13 + 88) = v74;
        *(v13 + 96) = v64;
        *(v13 + 104) = 0;
        if (v65)
        {
          operator delete(v65);
        }

        v8 = v69;
      }

      else
      {
        *v63 = v12;
        v64 = v63 + 8;
      }

      *(v13 + 96) = v64;
      v47 = *(v46 + 8);
LABEL_103:
      v75 = *(v166 + 4);
      v76 = v47 >> 6;
      if (*(a1 + 336) <= v47)
      {
        v80 = *(a1 + 304);
        goto LABEL_122;
      }

      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v79 = 1 << v47;
      v80 = *(a1 + 304);
      if ((v78 & (1 << v47)) == 0)
      {
        goto LABEL_122;
      }

      v81 = *(a1 + 312);
      v82 = &v81[-v80] >> 2;
      if (v82 > v47)
      {
        goto LABEL_120;
      }

      v160 = *(v166 + 4);
      v83 = v8;
      v84 = v47 + 1;
      v85 = v84 - v82;
      if (v84 > v82)
      {
        v86 = *(a1 + 320);
        if (v85 > (v86 - v81) >> 2)
        {
          v87 = v86 - v80;
          v88 = v87 >> 1;
          if (v87 >> 1 <= v84)
          {
            v88 = v47 + 1;
          }

          v89 = v87 >= 0x7FFFFFFFFFFFFFFCLL;
          v90 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v89)
          {
            v90 = v88;
          }

          if (!(v90 >> 62))
          {
            operator new();
          }

          goto LABEL_231;
        }

        v92 = 4 * v85;
        memset(v81, 255, v92);
        v91 = &v81[v92];
        goto LABEL_118;
      }

      if (v84 < v82)
      {
        v91 = (v80 + 4 * v84);
LABEL_118:
        *(a1 + 312) = v91;
      }

      sub_4D9168(a1 + 328, v47 + 1, 0);
      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v8 = v83;
      v75 = v160;
LABEL_120:
      if ((v78 & v79) != 0)
      {
        v80 = *(a1 + 304);
        if (*(v80 + 4 * v47) > v75)
        {
          goto LABEL_122;
        }

LABEL_135:
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 == v167)
        {
          goto LABEL_158;
        }

LABEL_136:
        if (v10 < v11)
        {
          while (1)
          {
LABEL_181:
            if ((v169 & 1) == 0)
            {
              v132 = v163[0];
              v133 = *v10;
              v134 = *(v163[0] + 4136);
              if (sub_68312C(v134 + 3896))
              {
                if (*(v134 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v154 = sub_A57824(-85.0, 0.0);
                    sub_58168(v154 >> 17, v154 >> 49);
                    dword_27339C0 = v155 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                  }

                  v135 = __ROR8__(v133, 32);
                  v136 = *(v132 + 4136);
                  if (dword_27339C0 == HIDWORD(v135))
                  {
                    if (!sub_68312C(v136 + 3896) || !*(v136 + 3944))
                    {
                      v157 = __cxa_allocate_exception(0x40uLL);
                      v158 = sub_2D390(v157, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v139 = *(v136 + 3944);
                    v140 = v139[1];
                    if (v140)
                    {
                      v141 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) >> 33));
                      v142 = v141 ^ (v141 >> 33);
                      v143 = vcnt_s8(v140);
                      v143.i16[0] = vaddlv_u8(v143);
                      if (v143.u32[0] > 1uLL)
                      {
                        v144 = v142;
                        if (v142 >= *&v140)
                        {
                          v144 = v142 % *&v140;
                        }
                      }

                      else
                      {
                        v144 = (*&v140 - 1) & v142;
                      }

                      v145 = *(*v139 + 8 * v144);
                      if (v145)
                      {
                        v146 = *v145;
                        if (v146)
                        {
                          if (v143.u32[0] < 2uLL)
                          {
                            v147 = *&v140 - 1;
                            while (1)
                            {
                              v151 = v146[1];
                              if (v142 == v151)
                              {
                                if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                                {
                                  goto LABEL_179;
                                }
                              }

                              else if ((v151 & v147) != v144)
                              {
                                goto LABEL_221;
                              }

                              v146 = *v146;
                              if (!v146)
                              {
                                goto LABEL_221;
                              }
                            }
                          }

                          do
                          {
                            v149 = v146[1];
                            if (v142 == v149)
                            {
                              if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                              {
                                goto LABEL_179;
                              }
                            }

                            else
                            {
                              if (v149 >= *&v140)
                              {
                                v149 %= *&v140;
                              }

                              if (v149 != v144)
                              {
                                break;
                              }
                            }

                            v146 = *v146;
                          }

                          while (v146);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_221:
            if (v168 == 1)
            {
              goto LABEL_8;
            }

            v152 = sub_C9E544(v163[0] + 3896);
            v10 = v166;
            if (v152 >= *(v166 + 14))
            {
              if (v168)
              {
                goto LABEL_9;
              }

              v153 = sub_585D8((v163[0] + 3896));
              v10 = v166;
              if ((v153 & 1) != 0 || (*(v166 + 15) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

LABEL_179:
            v10 = v166 + 2;
            v166 = v10;
            if (v10 == v167)
            {
              v137 = v164 + 2;
              v164 = v137;
              if (v137 >= v165)
              {
                goto LABEL_9;
              }

              while (1)
              {
                v10 = *v137;
                v138 = v137[1];
                if (*v137 != v138)
                {
                  break;
                }

                v137 += 2;
                v164 = v137;
                if (v137 >= v165)
                {
                  goto LABEL_6;
                }
              }

              v166 = *v137;
              v167 = v138;
              if (v10 >= v138)
              {
                goto LABEL_9;
              }
            }

            else if (v10 >= v167)
            {
              goto LABEL_9;
            }
          }
        }
      }

      else
      {
        *(v77 + 8 * v76) = v78 | v79;
        v103 = *(a1 + 360);
        v102 = *(a1 + 368);
        if (v103 >= v102)
        {
          v121 = *(a1 + 352);
          v122 = v103 - v121;
          v123 = (v103 - v121) >> 2;
          v124 = v123 + 1;
          if ((v123 + 1) >> 62)
          {
LABEL_234:
            sub_1794();
          }

          v125 = v8;
          v126 = v102 - v121;
          if (v126 >> 1 > v124)
          {
            v124 = v126 >> 1;
          }

          if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v127 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v127 = v124;
          }

          v162 = v75;
          if (v127)
          {
            if (!(v127 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          v128 = (v103 - v121) >> 2;
          v129 = (4 * v123);
          v130 = (4 * v123 - 4 * v128);
          *v129 = v47;
          v131 = v129 + 1;
          memcpy(v130, v121, v122);
          *(a1 + 352) = v130;
          *(a1 + 360) = v131;
          *(a1 + 368) = 0;
          if (v121)
          {
            operator delete(v121);
          }

          v8 = v125;
          v75 = v162;
          *(a1 + 360) = v131;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) <= v162)
          {
            goto LABEL_135;
          }
        }

        else
        {
          *v103 = v47;
          *(a1 + 360) = v103 + 4;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) <= v75)
          {
            goto LABEL_135;
          }
        }

LABEL_122:
        v93 = *(a1 + 312);
        v94 = &v93[-v80] >> 2;
        if (v94 > v47)
        {
          goto LABEL_141;
        }

        v161 = v75;
        v95 = v47 + 1;
        v96 = v95 - v94;
        if (v95 > v94)
        {
          v97 = *(a1 + 320);
          if (v96 > (v97 - v93) >> 2)
          {
            v98 = v97 - v80;
            v99 = v98 >> 1;
            if (v98 >> 1 <= v95)
            {
              v99 = v47 + 1;
            }

            v89 = v98 >= 0x7FFFFFFFFFFFFFFCLL;
            v100 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v89)
            {
              v100 = v99;
            }

            if (!(v100 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          memset(v93, 255, 4 * v96);
          v101 = &v93[4 * v96];
          goto LABEL_139;
        }

        if (v95 < v94)
        {
          v101 = (v80 + 4 * v95);
LABEL_139:
          *(a1 + 312) = v101;
        }

        sub_4D9168(a1 + 328, v47 + 1, 0);
        v75 = v161;
LABEL_141:
        v104 = *(a1 + 328);
        v105 = *(v104 + 8 * v76);
        if ((v105 & (1 << v47)) == 0)
        {
          *(v104 + 8 * v76) = v105 | (1 << v47);
          v107 = *(a1 + 360);
          v106 = *(a1 + 368);
          if (v107 >= v106)
          {
            v109 = *(a1 + 352);
            v110 = v107 - v109;
            v111 = (v107 - v109) >> 2;
            v112 = v111 + 1;
            if ((v111 + 1) >> 62)
            {
              goto LABEL_234;
            }

            v113 = v8;
            v114 = v106 - v109;
            if (v114 >> 1 > v112)
            {
              v112 = v114 >> 1;
            }

            if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v115 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v115 = v112;
            }

            if (v115)
            {
              if (!(v115 >> 62))
              {
                operator new();
              }

              goto LABEL_231;
            }

            v116 = v75;
            v117 = (v107 - v109) >> 2;
            v118 = (4 * v111);
            v119 = (4 * v111 - 4 * v117);
            *v118 = v47;
            v108 = v118 + 1;
            memcpy(v119, v109, v110);
            *(a1 + 352) = v119;
            *(a1 + 360) = v108;
            *(a1 + 368) = 0;
            if (v109)
            {
              operator delete(v109);
            }

            v8 = v113;
            v75 = v116;
          }

          else
          {
            *v107 = v47;
            v108 = v107 + 4;
          }

          *(a1 + 360) = v108;
        }

        *(*(a1 + 304) + 4 * v47) = v75;
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 != v167)
        {
          goto LABEL_136;
        }

LABEL_158:
        v120 = v164 + 2;
        v164 = v120;
        if (v120 >= v165)
        {
          break;
        }

        while (1)
        {
          v10 = *v120;
          v11 = v120[1];
          if (*v120 != v11)
          {
            break;
          }

          v120 += 2;
          v164 = v120;
          if (v120 >= v165)
          {
            goto LABEL_6;
          }
        }

        v166 = *v120;
        v167 = v11;
        if (v10 < v11)
        {
          goto LABEL_181;
        }
      }
    }

LABEL_6:
    ++v8;
  }
}

uint64_t sub_AA6420(uint64_t a1)
{
  if (*a1 == -1)
  {
    return 0;
  }

  v36 = *(a1 + 168);
  v37 = *(a1 + 128);
  v33 = *(a1 + 152);
  v34 = *(a1 + 144);
  v2 = *(a1 + 192);
  v3 = *(a1 + 224);
  v31 = *(a1 + 248);
  v32 = *(a1 + 232);
  v4 = *(a1 + 272);
  v35 = *(a1 + 280);
  v5 = *(a1 + 296);
  v29 = *(a1 + 304);
  v30 = *(a1 + 320);
  v28 = *(a1 + 368);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  v8 = sub_C439D4((a1 + 384));
  v9 = *(*(a1 + 32) + 104) - *(*(a1 + 32) + 88) + *(*(a1 + 40) + 104) + 12 * (*(*(a1 + 40) + 56) + *(*(a1 + 32) + 56)) - *(*(a1 + 40) + 88);
  v10 = *(a1 + 48);
  if (v10)
  {
    v9 = v9 + *(v10 + 32) - *(v10 + 16);
  }

  v11 = 8 * (v4 & 0x3FFFFFFFFFFFFFFLL);
  sub_2D577C(**(a1 + 24));
  if (v51 != 1)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v12 = sub_32AD80(&v40) * 1048576.0;
  if (v12 >= 0.0)
  {
    v13 = v12;
    if (v12 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v14 = (v12 + v12) + 1;
  }

  else
  {
    v13 = v12;
    if (v12 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v14 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
  }

  v13 = (v14 >> 1);
LABEL_12:
  if (v13 >= 1.84467441e19)
  {
    v15 = -2;
    goto LABEL_21;
  }

  if (v12 >= 0.0)
  {
    if (v12 < 4.50359963e15)
    {
      v16 = (v12 + v12) + 1;
      goto LABEL_19;
    }
  }

  else if (v12 > -4.50359963e15)
  {
    v16 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
LABEL_19:
    v12 = (v16 >> 1);
  }

  v15 = v12;
LABEL_21:
  v17 = v34 + v36 - (v37 + v33) + 8 * (v2 & 0x3FFFFFFFFFFFFFFLL) + v31 + 8 * (v3 & 0x3FFFFFFFFFFFFFFLL) - v32 + v5 + v11 + v30 - (v35 + v29) + 8 * (v6 & 0x3FFFFFFFFFFFFFFLL) + v28 - v7 + v8 + v15 + v9;
  if (v17 <= *a1)
  {
    return 0;
  }

  v18 = sub_7E7E4(1u);
  result = 1;
  if (!v18)
  {
    return result;
  }

  sub_19594F8(&v40);
  v20 = sub_4A5C(&v40, "Exceeded memory limit of ", 25);
  v21 = sub_71478(v20, *a1);
  v22 = sub_4A5C(v21, " in directional McSPA (", 23);
  v23 = sub_71478(v22, v17);
  v24 = sub_4A5C(v23, ") in round ", 11);
  std::ostream::operator<<();
  sub_4A5C(v24, "; terminating algorithm.", 24);
  if ((v50 & 0x10) != 0)
  {
    v26 = v49;
    if (v49 < v46)
    {
      v49 = v46;
      v26 = v46;
    }

    v27 = v45;
    v25 = v26 - v45;
    if (v26 - v45 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_42:
      sub_3244();
    }

LABEL_31:
    if (v25 >= 0x17)
    {
      operator new();
    }

    v39 = v25;
    if (v25)
    {
      memmove(&__dst, v27, v25);
    }

    goto LABEL_36;
  }

  if ((v50 & 8) != 0)
  {
    v27 = v43;
    v25 = v44 - v43;
    if ((v44 - v43) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }

    goto LABEL_31;
  }

  v25 = 0;
  v39 = 0;
LABEL_36:
  *(&__dst + v25) = 0;
  sub_7E854(&__dst, 1u);
  if (v39 < 0)
  {
    operator delete(__dst);
  }

  if (v48 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v42);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_AA6908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
    sub_1959728(&a27);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a27);
  _Unwind_Resume(a1);
}

void sub_AA6954(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      sub_AA6A84((a1 + 128), 0);
      sub_AA7D5C((a1 + 128), v3 + *(a1 + 120) + *(a1 + 120) * *(a1 + 376) + 2, 0);
      v4 = *(a1 + 128);
      if (*(a1 + 136) != v4)
      {
        break;
      }

      sub_30B70(a1 + 128, 1uLL);
      v4 = *(a1 + 128);
      v5 = *(a1 + 152);
      v6 = *v4;
      if (*(a1 + 136) != v4)
      {
        goto LABEL_6;
      }

      sub_30B70(a1 + 128, 1uLL);
      v7 = v5 + 52 * v6;
      v8 = *(a1 + 152) + 52 * *(*(a1 + 128) + 4);
      if (v7 != v8)
      {
LABEL_10:
        v9 = *(a1 + 544);
        v10 = *(a1 + 536);
        do
        {
          v9 = v9 + 1.0;
          v10 += *(v7 + 28);
          v7 += 52;
        }

        while (v7 != v8);
        *(a1 + 544) = v9;
        *(a1 + 536) = v10;
      }

LABEL_3:
      if (++v3 == v1)
      {
        return;
      }
    }

    v5 = *(a1 + 152);
    v6 = *v4;
LABEL_6:
    v7 = v5 + 52 * v6;
    v8 = v5 + 52 * v4[1];
    if (v7 != v8)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }
}

char *sub_AA6A84(uint64_t *a1, unsigned int a2)
{
  v2 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (v5 <= a2)
  {
    v6 = a2 + 1;
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (v8 != 0 && v7)
    {
      v9 = a1;
      v10 = a2;
      sub_30B70(a1, v8);
      a2 = v10;
      a1 = v9;
      v3 = *v9;
      v4 = v9[1];
    }

    else if (!v7)
    {
      v4 = v3 + 8 * v6;
      a1[1] = v4;
    }
  }

  v11 = a1[3];
  v12 = *(v3 + 8 * v2);
  v13 = (v4 - v3) >> 3;
  if (v13 > v2)
  {
    goto LABEL_8;
  }

  v15 = a2 + 1;
  if (v15 <= v13)
  {
    if (v15 < v13)
    {
      a1[1] = v3 + 8 * v15;
    }

LABEL_8:
    v14 = v11;
    goto LABEL_11;
  }

  v16 = a1;
  sub_30B70(a1, v15 - v13);
  a1 = v16;
  v3 = *v16;
  v14 = v16[3];
LABEL_11:
  v17 = (v14 + 52 * *(v3 + 8 * v2 + 4));

  return sub_AA6CF0(a1, v2, (v11 + 52 * v12), v17);
}

uint64_t sub_AA6B74(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a2 >= ((a1[1] - *a1) >> 3))
  {
    goto LABEL_6;
  }

  v8 = (*a1 + 8 * a2);
  v7 = v8[1];
  v9 = v7 - *v8;
  if (v7 == *v8)
  {
    goto LABEL_6;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v12 = 0;
    do
    {
      sub_AA7990(a1, a2, v12++);
    }

    while (v9 != v12);
LABEL_6:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  v13 = 0;
  v15 = 0;
  do
  {
    v19 = sub_AA7990(a1, a2, v15);
    v21 = *(v19 + 16);
    v20 = *(v19 + 32);
    v22 = *(v19 + 48);
    v24[0] = *v19;
    v24[1] = v21;
    v25 = v22;
    v24[2] = v20;
    if (SHIDWORD(v21) <= a6)
    {
      v23 = sub_AA7A84(a1, v24, a3, a4, a5);
      v13 = v23 | v13 | (v23 | v13) & 0xFF00;
    }

    ++v15;
  }

  while (v9 != v15);
  if ((v13 & 0x100) != 0)
  {
    sub_AA75DC(a1, a3);
    sub_AA75DC(a1, a4);
  }

  return v13 & 1;
}

char *sub_AA6CF0(uint64_t *a1, unsigned int a2, char *__dst, _BYTE *__src)
{
  v8 = a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v10 - *a1) >> 3;
  if (v11 <= a2)
  {
    v12 = a2 + 1;
    if (v12 <= v11)
    {
      if (v12 < v11)
      {
        v10 = v9 + 8 * v12;
        a1[1] = v10;
      }
    }

    else
    {
      sub_30B70(a1, v12 - v11);
      v9 = *a1;
      v10 = a1[1];
    }
  }

  v13 = (v9 + 8 * v8);
  v14 = (v10 - v9) >> 3;
  if (v14 <= v8)
  {
    v15 = a2 + 1;
    if (v15 <= v14)
    {
      if (v15 < v14)
      {
        a1[1] = v9 + 8 * v15;
      }
    }

    else
    {
      sub_30B70(a1, v15 - v14);
      v9 = *a1;
    }
  }

  v16 = a1[3];
  if ((v16 + 52 * *(v9 + 8 * v8 + 4)) == __src)
  {
    v17.i64[0] = __src;
    v17.i64[1] = __dst;
    v18 = vsubq_s64(v17, vdupq_n_s64(v16));
    v19 = vshrq_n_s64(v18, 2uLL);
    v21.i64[0] = 0x4EC4EC4EC4EC4EC5 * v19.i64[0];
    v21.i64[1] = 0x4EC4EC4EC4EC4EC5 * v19.i64[1];
    v20 = v21.i32[2];
    v22 = vbslq_s8(vcgtq_s64(v18, vdupq_n_s64(0xFFFFFFFFFFFFFFCCLL)), vshrq_n_u64(v21, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v21), 6uLL)));
    v23 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
    if (v23 >= 1)
    {
      v24 = (a1[6] + 8 * v22.i64[1]);
      if ((v21.i8[8] & 0x3F) != 0)
      {
        if (64 - (v21.i8[8] & 0x3Fu) >= v23)
        {
          v25 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
        }

        else
        {
          v25 = 64 - (v21.i8[8] & 0x3Fu);
        }

        *v24++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v21.i8[8] & 0x3Fu) - v25)) & (-1 << (v21.i8[8] & 0x3F)));
        v23 -= v25;
      }

      v26 = v23 >> 6;
      if (v23 >= 0x40)
      {
        bzero(v24, 8 * v26);
      }

      if ((v23 & 0x3F) != 0)
      {
        v24[v26] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v23 & 0x3F));
      }
    }

    v13[1] = v20;
  }

  else
  {
    v27 = (a1[1] - v9) >> 3;
    if (v27 <= v8)
    {
      v28 = a2 + 1;
      if (v28 <= v27)
      {
        if (v28 < v27)
        {
          a1[1] = v9 + 8 * v28;
        }
      }

      else
      {
        sub_30B70(a1, v28 - v27);
        v9 = *a1;
        v16 = a1[3];
      }
    }

    if ((v16 + 52 * *(v9 + 8 * v8)) == __dst)
    {
      v29.i64[0] = __src;
      v29.i64[1] = __dst;
      v30 = vsubq_s64(v29, vdupq_n_s64(v16));
      v31 = vshrq_n_s64(v30, 2uLL);
      v33.i64[0] = 0x4EC4EC4EC4EC4EC5 * v31.i64[0];
      v32 = v33.i32[0];
      v33.i64[1] = 0x4EC4EC4EC4EC4EC5 * v31.i64[1];
      v34 = vbslq_s8(vcgtq_s64(v30, vdupq_n_s64(0xFFFFFFFFFFFFFFCCLL)), vshrq_n_u64(v33, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v33), 6uLL)));
      v35 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
      if (v35 >= 1)
      {
        v36 = (a1[6] + 8 * v34.i64[1]);
        if ((v33.i8[8] & 0x3F) != 0)
        {
          if (64 - (v33.i8[8] & 0x3Fu) >= v35)
          {
            v37 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
          }

          else
          {
            v37 = 64 - (v33.i8[8] & 0x3Fu);
          }

          *v36++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v33.i8[8] & 0x3Fu) - v37)) & (-1 << (v33.i8[8] & 0x3F)));
          v35 -= v37;
        }

        v38 = v35 >> 6;
        if (v35 >= 0x40)
        {
          bzero(v36, 8 * v38);
        }

        if ((v35 & 0x3F) != 0)
        {
          v36[v38] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v35 & 0x3F));
        }
      }

      *v13 = v32;
      return __src;
    }

    else
    {
      v39 = (a1[1] - v9) >> 3;
      if (v39 <= v8)
      {
        v40 = a2 + 1;
        if (v40 <= v39)
        {
          if (v40 < v39)
          {
            a1[1] = v9 + 8 * v40;
          }
        }

        else
        {
          sub_30B70(a1, v40 - v39);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v41 = (v16 + 52 * *(v9 + 8 * v8 + 4));
      v42 = v41 - __src;
      if (v41 != __src)
      {
        memmove(__dst, __src, v41 - __src);
        v16 = a1[3];
        v9 = *a1;
      }

      v43 = &__dst[v42];
      v44 = a1[6];
      v45 = 0x4EC4EC4EC4EC4EC5 * (&v43[-v16] >> 2);
      if (&v43[-v16] <= -52)
      {
        v46 = -((63 - v45) >> 6);
      }

      else
      {
        v46 = v45 >> 6;
      }

      v47 = 8 * v46;
      v48 = (a1[1] - v9) >> 3;
      if (v48 <= v8)
      {
        v49 = a2 + 1;
        if (v49 <= v48)
        {
          if (v49 < v48)
          {
            a1[1] = v9 + 8 * v49;
          }
        }

        else
        {
          sub_30B70(a1, v49 - v48);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v50 = *(v9 + 8 * v8 + 4);
      v51 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
      if (v51 >= 1)
      {
        v52 = (v44 + v47);
        if ((v45 & 0x3F) != 0)
        {
          if (64 - (v45 & 0x3F) >= v51)
          {
            v53 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
          }

          else
          {
            v53 = 64 - (v45 & 0x3F);
          }

          *v52++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v45 & 0x3Fu) - v53)) & (-1 << (v45 & 0x3F)));
          v51 -= v53;
        }

        v54 = v51 >> 6;
        if (v51 >= 0x40)
        {
          bzero(v52, 8 * v54);
        }

        if ((v51 & 0x3F) != 0)
        {
          v52[v54] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v51 & 0x3F));
        }
      }

      v13[1] = -991146299 * (&v43[-v16] >> 2);
    }
  }

  return __dst;
}

uint64_t sub_AA71F8(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v5 = a2;
  v6 = *a1;
  v7 = (a1[1] - *a1) >> 3;
  if (v7 <= a2)
  {
    v8 = a2 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        a1[1] = v6 + 8 * v8;
      }
    }

    else
    {
      sub_30B70(a1, v8 - v7);
      v6 = *a1;
    }
  }

  v9 = (v6 + 8 * v5);
  v10 = *v9;
  if (*v9 && (v11 = v10 - 1, ((*(a1[6] + ((v11 >> 3) & 0x1FFFFFF8)) >> (v10 - 1)) & 1) == 0))
  {
    *v9 = v11;
    v43 = a1[3] + 52 * v11;
    v44 = *a3;
    v45 = a3[1];
    v46 = a3[2];
    *(v43 + 48) = *(a3 + 12);
    *(v43 + 16) = v45;
    *(v43 + 32) = v46;
    *v43 = v44;
    v41 = *v9;
    *(a1[6] + ((v41 >> 3) & 0x1FFFFFF8)) |= 1 << v41;
    v42 = a1[3];
  }

  else
  {
    v12 = v9[1];
    v13 = a1[3];
    v14 = a1[4];
    v15 = a1 + 3;
    v16 = 0x4EC4EC4EC4EC4EC5 * ((v14 - v13) >> 2);
    if (v16 <= (v12 + 1) || ((*(a1[6] + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) != 0)
    {
      v17 = a1[1] - v6;
      v18 = v12 - 991146299 * ((v14 - v13) >> 2) - v10;
      v19 = 2 * (v12 - v10) + 2;
      if (v5 < v17 >> 3)
      {
        v20 = v18;
      }

      else
      {
        v20 = -991146299 * ((v14 - v13) >> 2);
      }

      if (v5 < v17 >> 3)
      {
        v21 = v19;
      }

      else
      {
        v21 = 2;
      }

      if (v16 >= v21 + v16)
      {
        if (v16 > v21 + v16)
        {
          v14 = v13 + 52 * (v21 + v16);
          a1[4] = v14;
        }
      }

      else
      {
        sub_AA7798((a1 + 3), v21);
        v13 = a1[3];
        v14 = a1[4];
      }

      sub_4D9168((a1 + 6), 0x4EC4EC4EC4EC4EC5 * ((v14 - v13) >> 2), 0);
      v22 = *v9;
      v23 = v9[1];
      v24 = v22;
      if (v23 != v22)
      {
        memmove((a1[3] + 52 * v16), (a1[3] + 52 * v22), 52 * (v23 - v22));
        v24 = *v9;
        LODWORD(v22) = v9[1];
      }

      v25 = a1[6];
      v26 = (v24 >> 3) & 0x1FFFFFF8;
      v27 = v24 & 0x3F;
      v28 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
      if (v28 >= 1)
      {
        v29 = (v25 + v26);
        if ((v24 & 0x3F) != 0)
        {
          if ((64 - v27) >= v28)
          {
            v30 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
          }

          else
          {
            v30 = (64 - v27);
          }

          *v29++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v27 - v30)) & (-1 << v27));
          v28 -= v30;
        }

        v31 = v28 >> 6;
        if (v28 >= 0x40)
        {
          bzero(v29, 8 * v31);
        }

        if ((v28 & 0x3F) != 0)
        {
          v29[v31] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v28 & 0x3F));
        }
      }

      v32 = (v16 >> 3) & 0x1FFFFFF8;
      v33 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
      if (v33 >= 1)
      {
        v34 = (v25 + v32);
        if ((v16 & 0x3F) != 0)
        {
          if (64 - (v16 & 0x3F) >= v33)
          {
            v35 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
          }

          else
          {
            v35 = 64 - (v16 & 0x3F);
          }

          *v34++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - (v16 & 0x3Fu) - v35)) & (-1 << (v16 & 0x3F));
          v33 -= v35;
        }

        v36 = v33 >> 6;
        if (v33 >= 0x40)
        {
          memset(v34, 255, 8 * v36);
        }

        if ((v33 & 0x3F) != 0)
        {
          v34[v36] |= 0xFFFFFFFFFFFFFFFFLL >> -(v33 & 0x3F);
        }
      }

      *v9 = v16;
      v9[1] = v20;
      v37 = *v15 + 52 * v20;
      v38 = *a3;
      v39 = a3[1];
      v40 = a3[2];
      *(v37 + 48) = *(a3 + 12);
      *(v37 + 16) = v39;
      *(v37 + 32) = v40;
      *v37 = v38;
      v41 = v9[1];
      *(a1[6] + ((v41 >> 3) & 0x1FFFFFF8)) |= 1 << v41;
      v42 = *v15;
    }

    else
    {
      v48 = v13 + 52 * v12;
      v49 = *a3;
      v50 = a3[1];
      v51 = a3[2];
      *(v48 + 48) = *(a3 + 12);
      *(v48 + 16) = v50;
      *(v48 + 32) = v51;
      *v48 = v49;
      v41 = v9[1];
      *(a1[6] + ((v41 >> 3) & 0x1FFFFFF8)) |= 1 << v41;
      v42 = a1[3];
    }

    v9[1] = v41 + 1;
  }

  return v42 + 52 * v41;
}

char *sub_AA75DC(uint64_t *a1, unsigned int a2)
{
  v4 = a2;
  v5 = *a1;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  if (v7 <= a2)
  {
    v8 = a2 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        v6 = v5 + 8 * v8;
        a1[1] = v6;
      }
    }

    else
    {
      sub_30B70(a1, v8 - v7);
      v5 = *a1;
      v6 = a1[1];
    }
  }

  v9 = a1[3];
  v10 = v9 + 52 * *(v5 + 8 * v4);
  v11 = (v6 - v5) >> 3;
  if (v11 <= v4)
  {
    v12 = a2 + 1;
    if (v12 <= v11)
    {
      if (v12 < v11)
      {
        a1[1] = v5 + 8 * v12;
      }
    }

    else
    {
      sub_30B70(a1, v12 - v11);
      v5 = *a1;
      v9 = a1[3];
    }
  }

  v13 = v9 + 52 * *(v5 + 8 * v4 + 4);
  if (v10 == v13)
  {
    v10 = v9 + 52 * *(v5 + 8 * v4 + 4);
  }

  else
  {
    while (*(v10 + 28) != 0x7FFFFFFF)
    {
      v10 += 52;
      if (v10 == v13)
      {
        v10 = v9 + 52 * *(v5 + 8 * v4 + 4);
        break;
      }
    }

    if (v13 != v10)
    {
      v14 = (v10 + 52);
      if (v10 + 52 != v13)
      {
        do
        {
          if (*(v14 + 7) != 0x7FFFFFFF)
          {
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[2];
            *(v10 + 48) = *(v14 + 12);
            *(v10 + 16) = v16;
            *(v10 + 32) = v17;
            *v10 = v15;
            v10 += 52;
          }

          v14 = (v14 + 52);
        }

        while (v14 != v13);
        v5 = *a1;
      }
    }
  }

  v18 = (a1[1] - v5) >> 3;
  if (v18 <= v4)
  {
    v19 = a2 + 1;
    if (v19 <= v18)
    {
      if (v19 < v18)
      {
        a1[1] = v5 + 8 * v19;
      }
    }

    else
    {
      sub_30B70(a1, v19 - v18);
      v5 = *a1;
    }
  }

  v20 = (a1[3] + 52 * *(v5 + 8 * v4 + 4));

  return sub_AA6CF0(a1, v4, v10, v20);
}

void sub_AA7798(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x4EC4EC4EC4EC4EC5 * ((v4 - v3) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 52 * a2;
      v10 = (v3 + 48);
      v11 = 52 * a2;
      do
      {
        *(v10 - 2) = 0;
        *(v10 - 3) = xmmword_229B660;
        *(v10 - 2) = xmmword_22A7510;
        *(v10 - 1) = -1;
        *v10 = 0x7FFFFFFF;
        v10 += 13;
        v11 -= 52;
      }

      while (v11);
      *(a1 + 8) = v9;
    }

    else
    {
      *(a1 + 8) = v3;
    }
  }

  else
  {
    v5 = 0x4EC4EC4EC4EC4EC5 * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x4EC4EC4EC4EC4ECLL)
    {
      sub_1794();
    }

    v7 = 0x4EC4EC4EC4EC4EC5 * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x276276276276276)
    {
      v8 = 0x4EC4EC4EC4EC4ECLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x4EC4EC4EC4EC4ECLL)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = 52 * v5;
    v13 = 52 * a2;
    v14 = 52 * v5 + 52 * a2;
    v15 = 52 * v5 + 32;
    do
    {
      *v15 = 0;
      *(v15 - 32) = xmmword_229B660;
      *(v15 - 16) = xmmword_22A7510;
      *(v15 + 8) = -1;
      *(v15 + 16) = 0x7FFFFFFF;
      v15 += 52;
      v13 -= 52;
    }

    while (v13);
    v16 = *a1;
    v17 = *(a1 + 8) - *a1;
    v18 = v12 - v17;
    memcpy((v12 - v17), *a1, v17);
    *a1 = v18;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t sub_AA7990(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  if (a2 >= ((a1[1] - *a1) >> 3) || (v4 = *(v3 + 8 * a2), *(v3 + 8 * a2 + 4) - v4 <= a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A2D8(exception, "key does not exist and cannot be added");
    goto LABEL_7;
  }

  v5 = v4 + a3;
  v6 = a1[3];
  if (0x4EC4EC4EC4EC4EC5 * ((a1[4] - v6) >> 2) <= v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A2D8(exception, "index out of range");
LABEL_7:
  }

  return v6 + 52 * v5;
}

unint64_t sub_AA7A84(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a5 == 0xFFFFFFFFLL || (sub_AA7C2C(a1, a2, a5) & 1) == 0)
  {
    v11 = *a1;
    if (a4 < ((*(a1 + 8) - *a1) >> 3))
    {
      v13 = *(v11 + 8 * a4);
      v12 = *(v11 + 8 * a4 + 4);
      if (v12 != v13)
      {
        v10 = 0;
        v21 = *(a1 + 24);
        v22 = v21 + 52 * v12;
        v23 = v21 + 52 * v13;
        while (1)
        {
          v24 = *(v23 + 28);
          if (v24 != 0x7FFFFFFF)
          {
            if (v24 <= *(a2 + 28))
            {
              v9 = 0;
              return v9 & 0xFFFFFFFFFFFF00FFLL | (v10 << 8);
            }

            *(v23 + 28) = 0x7FFFFFFF;
            v10 = 1;
          }

          v23 += 52;
          if (v23 == v22)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v10 = 0;
LABEL_7:
    v14 = sub_AA71F8(a1, a4, a2);
    *(v14 + 40) = -1;
    *(v14 + 48) = 0x7FFFFFFF;
    v15 = *a1;
    if (a3 < ((*(a1 + 8) - *a1) >> 3))
    {
      v17 = *(v15 + 8 * a3);
      v16 = *(v15 + 8 * a3 + 4);
      if (v16 != v17)
      {
        v25 = *(a1 + 24);
        v26 = v25 + 52 * v16;
        v27 = v25 + 52 * v17;
        do
        {
          if (*(v27 + 28) != 0x7FFFFFFF)
          {
            *(v27 + 28) = 0x7FFFFFFF;
          }

          v27 += 52;
        }

        while (v27 != v26);
      }
    }

    v18 = sub_AA71F8(a1, a3, a2);
    *(v18 + 40) = -1;
    *(v18 + 48) = 0x7FFFFFFF;
    v19 = *(a1 + 72);
    *(a1 + 72) = v19 + 1;
    *(v18 + 24) = v19;
    *(v18 + 20) = *(a2 + 24);
    *(v18 + 40) = -1;
    *(v18 + 48) = 0x7FFFFFFF;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v9 & 0xFFFFFFFFFFFF00FFLL | (v10 << 8);
}

uint64_t sub_AA7C2C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = a3;
  v6 = *a1;
  v7 = a1[1];
  v8 = (v7 - *a1) >> 3;
  if (v8 <= a3)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        v7 = v6 + 8 * v9;
        a1[1] = v7;
      }
    }

    else
    {
      v10 = a3;
      sub_30B70(a1, v9 - v8);
      a3 = v10;
      v6 = *a1;
      v7 = a1[1];
    }
  }

  v11 = a1[3];
  v12 = *(v6 + 8 * v5);
  v13 = (v7 - v6) >> 3;
  if (v13 > v5)
  {
    goto LABEL_7;
  }

  v15 = a3 + 1;
  if (v15 <= v13)
  {
    if (v15 < v13)
    {
      a1[1] = v6 + 8 * v15;
    }

LABEL_7:
    v14 = v11;
    goto LABEL_10;
  }

  sub_30B70(a1, v15 - v13);
  v6 = *a1;
  v14 = a1[3];
LABEL_10:
  v16 = v11 + 52 * v12;
  v17 = v14 + 52 * *(v6 + 8 * v5 + 4);
  if (v16 == v17)
  {
    return 0;
  }

  v19 = v16 + 52;
  do
  {
    v20 = *(v19 - 24);
    v21 = v20 != 0x7FFFFFFF && v20 <= *(a2 + 28);
    result = v21;
    if (v21)
    {
      break;
    }

    v22 = v19 == v17;
    v19 += 52;
  }

  while (!v22);
  return result;
}

uint64_t sub_AA7D5C(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= ((a1[1] - *a1) >> 3) || (v5 = (*a1 + 8 * a2), v4 = v5[1], v6 = v4 - *v5, v4 == *v5))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v11 = a3;
    do
    {
      v12 = sub_AA7990(a1, a2, v10);
      v13 = *v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 32);
      v30 = *(v12 + 48);
      v28 = v14;
      v29 = v15;
      v27 = v13;
      v16 = *a1;
      if (v11 < (a1[1] - *a1) >> 3)
      {
        v18 = *(v16 + 8 * v11);
        v17 = *(v16 + 8 * v11 + 4);
        if (v17 != v18)
        {
          v19 = 0;
          v23 = a1[3];
          v24 = v23 + 52 * v17;
          v25 = v23 + 52 * v18;
          while (1)
          {
            v26 = *(v25 + 28);
            if (v26 != 0x7FFFFFFF)
            {
              if (v26 <= SHIDWORD(v28))
              {
                v21 = 0;
                goto LABEL_10;
              }

              *(v25 + 28) = 0x7FFFFFFF;
              v19 = 1;
            }

            v25 += 52;
            if (v25 == v24)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v19 = 0;
LABEL_9:
      v20 = sub_AA71F8(a1, v11, &v27);
      *(v20 + 40) = -1;
      *(v20 + 48) = 0x7FFFFFFF;
      v21 = 1;
LABEL_10:
      v22 = v19 | (v7 >> 8);
      v7 = v7 & 0xFFFF00FF | v21 & 0xFFFF00FF | ((v19 | BYTE1(v7)) << 8);
      ++v10;
    }

    while (v10 != v6);
    if (v22)
    {
      sub_AA75DC(a1, v11);
    }
  }

  return v7 & 1;
}

uint64_t sub_AA7F04(uint64_t a1, int a2, unsigned int a3)
{
  v256 = a3;
  *(a1 + 560) = *(a1 + 560) + 1.0;
  v6 = a3;
  v233 = *sub_A9C5E0((*(a1 + 40) + 88), a3);
  v7 = *(a1 + 304);
  v8 = (*(a1 + 312) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 312) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 304, v9 - v8);
    }

    sub_4D9168(a1 + 328, a3 + 1, 0);
  }

  v10 = *(a1 + 328);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 352, &v256);
    v6 = v256;
  }

  v232 = *(*(a1 + 304) + 4 * v6);
  result = sub_A9D53C(&v254, *(a1 + 24), v233);
  v13 = v254;
  if (v254 >= v255)
  {
    return result;
  }

  v229 = a2 + 2;
  v230 = ~a2;
  v235 = a2 + 1;
  while (2)
  {
    *(a1 + 568) = *(a1 + 568) + 1.0;
    v240 = *v13;
    sub_AA6A84((a1 + 128), 0);
    result = sub_A79708(&v242, *(a1 + 24), v233, v232, 0, 1);
    v14 = v246;
    if (v246 < v245 || v246 >= v247)
    {
      goto LABEL_11;
    }

    do
    {
      v16 = __ROR8__(*v14, 32);
      v17 = *(a1 + 32);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
LABEL_33:
        v29 = v24;
        goto LABEL_34;
      }

      if (*(v17 + 40))
      {
        v29 = -1;
        v30 = 1;
        do
        {
          if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
          {
            if (v29 == -1)
            {
              v29 = v24;
            }
          }

          else if (__PAIR64__(v26, v27) == v16)
          {
            goto LABEL_64;
          }

          v24 = (v24 + v30) & v18;
          v31 = (v21 + 12 * v24);
          v27 = *v31;
          v26 = v31[1];
          ++v30;
        }

        while (v22 != v26 || v23 != v27);
        if (v29 == -1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v51 = 1;
        while (__PAIR64__(v26, v27) != v16)
        {
          v24 = (v24 + v51) & v18;
          v52 = (v21 + 12 * v24);
          v27 = *v52;
          v26 = v52[1];
          ++v51;
          if (v22 == v26 && v23 == v27)
          {
            goto LABEL_33;
          }
        }

LABEL_64:
        if (v24 != -1)
        {
          v54 = v21 + 12 * v24;
          v55 = *(v54 + 8);
          if (v55 != -1)
          {
            goto LABEL_107;
          }

          goto LABEL_93;
        }

        v29 = -1;
      }

LABEL_34:
      if (sub_A99094(*(a1 + 32), 1))
      {
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_82;
        }

        if (!v41)
        {
          v57 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v57) & v33;
            v58 = (v34 + 12 * v37);
            v40 = *v58;
            v39 = v58[1];
            ++v57;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_82;
            }
          }

LABEL_77:
          if (v37 != -1)
          {
            v54 = v34 + 12 * v37;
            v55 = *(v54 + 8);
            if (v55 != -1)
            {
              goto LABEL_107;
            }

            goto LABEL_93;
          }

          v43 = -1;
          v60 = *(v17 + 48);
          if ((v60 - v41) >= 0x1555555555555555)
          {
LABEL_339:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_84;
        }

        v43 = -1;
        v44 = 1;
        do
        {
          if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
          {
            if (v43 == -1)
            {
              v43 = v37;
            }
          }

          else if (__PAIR64__(v39, v40) == v16)
          {
            goto LABEL_77;
          }

          v37 = (v37 + v44) & v33;
          v45 = (v34 + 12 * v37);
          v40 = *v45;
          v39 = v45[1];
          ++v44;
        }

        while (v35 != v39 || v36 != v40);
        if (v43 == -1)
        {
LABEL_82:
          v43 = v37;
        }

        v60 = *(v17 + 48);
        if ((v60 - v41) >= 0x1555555555555555)
        {
          goto LABEL_339;
        }

LABEL_84:
        if (v41 && ((v61 = (v34 + 12 * v43), *(v17 + 36) == v61[1]) ? (v62 = *(v17 + 32) == *v61) : (v62 = 0), v62))
        {
          *(v17 + 40) = v41 - 1;
        }

        else
        {
          *(v17 + 48) = v60 + 1;
        }

        v56 = 3 * v43;
        goto LABEL_92;
      }

      v48 = *(v17 + 40);
      v47 = *(v17 + 48);
      if ((v47 - v48) >= 0x1555555555555555)
      {
        v223 = __cxa_allocate_exception(0x10uLL);
        sub_195A000(v223, "insert overflow");
      }

      v34 = *(v17 + 80);
      if (v48 && ((v49 = (v34 + 12 * v29), *(v17 + 36) == v49[1]) ? (v50 = *(v17 + 32) == *v49) : (v50 = 0), v50))
      {
        *(v17 + 40) = v48 - 1;
      }

      else
      {
        *(v17 + 48) = v47 + 1;
      }

      v56 = 3 * v29;
LABEL_92:
      v63 = 4 * v56;
      v64 = v34 + v63;
      *v64 = v16;
      *(v64 + 8) = -1;
      v54 = *(v17 + 80) + v63;
      v55 = *(v54 + 8);
      if (v55 != -1)
      {
        goto LABEL_107;
      }

LABEL_93:
      v65 = *(v17 + 112);
      *(v17 + 112) = v65 + 1;
      *(v54 + 8) = v65;
      v67 = *(v17 + 96);
      v66 = *(v17 + 104);
      if (v67 >= v66)
      {
        v69 = *(v17 + 88);
        v70 = v67 - v69;
        v71 = (v67 - v69) >> 3;
        v72 = v71 + 1;
        if ((v71 + 1) >> 61)
        {
          sub_1794();
        }

        v73 = v66 - v69;
        if (v73 >> 2 > v72)
        {
          v72 = v73 >> 2;
        }

        if (v73 >= 0x7FFFFFFFFFFFFFF8)
        {
          v74 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v72;
        }

        if (v74)
        {
          if (!(v74 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v75 = (v67 - v69) >> 3;
        v76 = (8 * v71);
        v77 = (8 * v71 - 8 * v75);
        *v76 = v16;
        v68 = v76 + 1;
        memcpy(v77, v69, v70);
        *(v17 + 88) = v77;
        *(v17 + 96) = v68;
        *(v17 + 104) = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v67 = v16;
        v68 = v67 + 1;
      }

      *(v17 + 96) = v68;
      v55 = *(v54 + 8);
LABEL_107:
      v241 = v55;
      result = sub_C435EC((a1 + 384), v55, v16);
      if ((result & 1) == 0)
      {
        if (*(a1 + 21))
        {
          goto LABEL_270;
        }

        v91 = *(a1 + 128);
        v92 = *(a1 + 136);
        if (v92 == v91)
        {
          v96 = 1 - ((v92 - v91) >> 3);
          v97 = *(a1 + 144);
          if (v96 > (v97 - v92) >> 3)
          {
            v98 = v97 - v91;
            v99 = v98 >> 2;
            if ((v98 >> 2) <= 1)
            {
              v99 = 1;
            }

            if (v98 >= 0x7FFFFFFFFFFFFFF8)
            {
              v100 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v100 = v99;
            }

            if (!(v100 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          bzero(*(a1 + 136), 8 * v96);
          v102 = &v92[2 * v96];
          *(a1 + 136) = v102;
          v91 = *(a1 + 128);
          v93 = *(a1 + 152);
          v94 = *v91;
          if (v91 == v102)
          {
            v95 = *(a1 + 144);
            if (v95 == v102)
            {
              v103 = 1;
              v104 = v95 - v91;
              if ((v104 >> 2) > 1)
              {
                v103 = v104 >> 2;
              }

              if (v104 >= 0x7FFFFFFFFFFFFFF8)
              {
                v105 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v105 = v103;
              }

              if (v105)
              {
                if (!(v105 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *&dword_0 = 0;
              *(a1 + 128) = 0;
              *(a1 + 136) = 8;
              *(a1 + 144) = 0;
              if (v91)
              {
                operator delete(v91);
              }
            }

            else
            {
              *v102 = 0;
              *(a1 + 136) = v102 + 2;
            }

            v91 = *(a1 + 128);
            v101 = *(a1 + 152);
            goto LABEL_156;
          }
        }

        else
        {
          v93 = *(a1 + 152);
          v94 = *v91;
        }

        v101 = v93;
LABEL_156:
        result = sub_AA6CF0((a1 + 128), 0, (v93 + 52 * v94), (v101 + 52 * v91[1]));
        goto LABEL_270;
      }

      v78 = *(a1 + 128);
      if (*(a1 + 136) == v78)
      {
        goto LABEL_263;
      }

      v80 = *v78;
      v79 = *(*(a1 + 128) + 4);
      if (v79 == v80)
      {
        goto LABEL_263;
      }

      v81 = *(a1 + 152);
      v82 = (v81 + 52 * v79);
      v83 = (v81 + 52 * v80);
      v84 = v251;
      v85 = v249;
      v86 = v244;
      v87 = (v246 - v245) >> 4;
      do
      {
        v90 = (v85 + 12 * v83[10]);
        if (v84)
        {
          v252 = v83[11];
          v88 = v83[12];
          v253 = v88;
        }

        else
        {
          v88 = *v90;
        }

        v89 = (v86 + *(v86 - *v86 + 6));
        v83[7] = *(&v89[2 * (v90[1] + v87) + 1] + *v89) + v88;
        v83 += 13;
      }

      while (v83 != v82);
      v250 = v90;
      sub_AA9698((a1 + 128), 0);
      if ((*(v246 + 15) & 1) == 0 || v248 && (*(v248 + 4 * ((v246 - v245) >> 4)) & v240) != 0)
      {
        goto LABEL_230;
      }

      v106 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v107 = v106 + v106 * *(a1 + 376);
        v108 = v241;
        v109 = *(a1 + 48);
        v237 = v107;
        if (v109)
        {
          goto LABEL_147;
        }
      }

      else
      {
        v107 = -1;
        v108 = v241;
        v109 = *(a1 + 48);
        v237 = 0xFFFFFFFFLL;
        if (v109)
        {
LABEL_147:
          if (*v109 <= v108)
          {
            v113 = 0x7FFFFFFF;
            v114 = *(a1 + 128);
            if (*(a1 + 136) == v114)
            {
              goto LABEL_230;
            }
          }

          else
          {
            v238 = *(a1 + 120);
            v110 = 0;
            v111 = *(a1 + 124) + v230;
            v112 = v111;
            do
            {
              if (v110 > v111)
              {
                v113 = 0x7FFFFFFF;
                v107 = v237;
                v106 = v238;
                v114 = *(a1 + 128);
                if (*(a1 + 136) == v114)
                {
                  goto LABEL_230;
                }

                goto LABEL_163;
              }

              v113 = *sub_A9C7DC(v109 + 2, v109[1] * v108 + v112);
              v110 += 2;
              v112 -= 2;
            }

            while (v113 == 0x7FFFFFFF);
            v107 = v237;
            v106 = v238;
            v114 = *(a1 + 128);
            if (*(a1 + 136) == v114)
            {
              goto LABEL_230;
            }
          }

          goto LABEL_163;
        }
      }

      v113 = 2147483646;
      v114 = *(a1 + 128);
      if (*(a1 + 136) == v114)
      {
        goto LABEL_230;
      }

LABEL_163:
      v115 = v114[1];
      v116 = v115 - *v114;
      if (v115 == *v114)
      {
        goto LABEL_230;
      }

      if (v113 == 0x7FFFFFFF)
      {
        v117 = 0;
        do
        {
          if (v114[1] - *v114 <= v117)
          {
            v226 = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(v226, "key does not exist and cannot be added");
          }

          if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - *(a1 + 152)) >> 2) <= (v117 + *v114))
          {
            v227 = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(v227, "index out of range");
          }

          ++v117;
        }

        while (v116 != v117);
        goto LABEL_230;
      }

      v236 = 0;
      v118 = 0;
      v119 = (v106 + v106 * v108);
      *v239 = (v229 + v119);
      v231 = v107 + 1;
      v234 = (v119 + 1);
      do
      {
        v122 = *(a1 + 128);
        v123 = *(a1 + 136);
        if (v123 == v122 || *(v122 + 1) - *v122 <= v118)
        {
          v225 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v225, "key does not exist and cannot be added");
        }

        v124 = *v122 + v118;
        v125 = *(a1 + 152);
        if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v125) >> 2) <= v124)
        {
          v228 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v228, "index out of range");
        }

        v126 = v125 + 52 * v124;
        v128 = *(v126 + 16);
        v127 = *(v126 + 32);
        v129 = *v126;
        v260 = *(v126 + 48);
        v258 = v128;
        v259 = v127;
        v257 = v129;
        if (SHIDWORD(v128) <= v113)
        {
          if (v237 == 0xFFFFFFFF)
          {
            goto LABEL_196;
          }

          v130 = (v123 - v122) >> 3;
          if (v130 <= v237)
          {
            if (v231 <= v130)
            {
              if (v231 < v130)
              {
                v123 = &v122[8 * v231];
                *(a1 + 136) = v123;
              }
            }

            else
            {
              sub_30B70(a1 + 128, v231 - v130);
              v122 = *(a1 + 128);
              v123 = *(a1 + 136);
              v125 = *(a1 + 152);
            }
          }

          v131 = *&v122[8 * v237];
          v132 = (v123 - v122) >> 3;
          if (v132 <= v237)
          {
            if (v231 > v132)
            {
              sub_30B70(a1 + 128, v231 - v132);
              v122 = *(a1 + 128);
              v133 = *(a1 + 152);
              goto LABEL_189;
            }

            if (v231 < v132)
            {
              *(a1 + 136) = &v122[8 * v231];
            }
          }

          v133 = v125;
LABEL_189:
          v134 = v125 + 52 * v131;
          for (i = v133 + 52 * *&v122[8 * v237 + 4]; v134 != i; v134 += 52)
          {
            v136 = *(v134 + 28);
            if (v136 != 0x7FFFFFFF && v136 <= SHIDWORD(v258))
            {
              goto LABEL_171;
            }
          }

          v125 = v133;
LABEL_196:
          v138 = *(a1 + 136);
          v139 = (v138 - v122) >> 3;
          if (v139 <= v119)
          {
            if (v234 <= v139)
            {
              if (v234 < v139)
              {
                v138 = &v122[8 * v234];
                *(a1 + 136) = v138;
              }
            }

            else
            {
              sub_30B70(a1 + 128, v234 - v139);
              v122 = *(a1 + 128);
              v138 = *(a1 + 136);
              v125 = *(a1 + 152);
            }
          }

          v140 = *&v122[8 * v119];
          v141 = (v138 - v122) >> 3;
          if (v141 <= v119)
          {
            if (v234 > v141)
            {
              sub_30B70(a1 + 128, v234 - v141);
              v122 = *(a1 + 128);
              v142 = *(a1 + 152);
              goto LABEL_205;
            }

            if (v234 < v141)
            {
              *(a1 + 136) = &v122[8 * v234];
            }
          }

          v142 = v125;
LABEL_205:
          v143 = v125 + 52 * v140;
          v144 = v142 + 52 * *&v122[8 * v119 + 4];
          if (v143 == v144)
          {
LABEL_211:
            v147 = v229 + v119;
            if (*v239 < ((*(a1 + 136) - v122) >> 3))
            {
              v149 = *&v122[8 * *v239];
              v148 = *&v122[8 * *v239 + 4];
              if (v148 != v149)
              {
                v120 = 0;
                v152 = v142 + 52 * v148;
                v153 = v142 + 52 * v149;
                v147 = v229 + v119;
                while (1)
                {
                  v154 = *(v153 + 28);
                  if (v154 != 0x7FFFFFFF)
                  {
                    if (v154 <= SHIDWORD(v258))
                    {
                      goto LABEL_172;
                    }

                    *(v153 + 28) = 0x7FFFFFFF;
                    v120 = 1;
                    v147 = v229 + v119;
                  }

                  v153 += 52;
                  if (v153 == v152)
                  {
                    goto LABEL_214;
                  }
                }
              }
            }

            v120 = 0;
LABEL_214:
            v150 = sub_AA71F8((a1 + 128), v147, &v257);
            *(v150 + 40) = -1;
            *(v150 + 48) = 0x7FFFFFFF;
            v151 = *(a1 + 200);
            *(a1 + 200) = v151 + 1;
            *(v150 + 24) = v151;
            *(v150 + 20) = DWORD2(v258);
            *(v150 + 40) = -1;
            *(v150 + 48) = 0x7FFFFFFF;
            v121 = 1;
            goto LABEL_173;
          }

          while (1)
          {
            v145 = *(v143 + 28);
            if (v145 != 0x7FFFFFFF && v145 <= SHIDWORD(v258))
            {
              break;
            }

            v143 += 52;
            if (v143 == v144)
            {
              goto LABEL_211;
            }
          }

LABEL_171:
          v120 = 0;
LABEL_172:
          v121 = 0;
LABEL_173:
          v236 |= v121 | (v120 << 8);
        }

        ++v118;
      }

      while (v118 != v116);
      if ((v236 & 0x100) != 0)
      {
        sub_AA75DC((a1 + 128), v239[0]);
      }

      if ((v236 & 1) == 0)
      {
        goto LABEL_230;
      }

      v155 = v241;
      if (*(a1 + 216) <= v241)
      {
        sub_4D9168(a1 + 208, v241 + 1, 0);
        v155 = v241;
      }

      if ((*(*(a1 + 208) + ((v155 >> 3) & 0x1FFFFFF8)) >> v155))
      {
LABEL_230:
        v156 = *(a1 + 128);
        v157 = *(a1 + 136);
        v158 = v157 - v156;
        if (v157 != v156)
        {
          goto LABEL_231;
        }

LABEL_247:
        v167 = 1 - (v158 >> 3);
        v168 = *(a1 + 144);
        if (v167 > (v168 - v157) >> 3)
        {
          v169 = v168 - v156;
          v170 = v169 >> 2;
          if ((v169 >> 2) <= 1)
          {
            v170 = 1;
          }

          if (v169 >= 0x7FFFFFFFFFFFFFF8)
          {
            v171 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v171 = v170;
          }

          if (!(v171 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        bzero(v157, 8 * v167);
        v157 += 2 * v167;
        *(a1 + 136) = v157;
        v156 = *(a1 + 128);
        v159 = *(a1 + 152);
        v160 = *v156;
        if (v156 != v157)
        {
          goto LABEL_255;
        }

LABEL_232:
        v161 = *(a1 + 144);
        if (v161 == v157)
        {
          v162 = 1;
          v163 = v161 - v156;
          if ((v163 >> 2) > 1)
          {
            v162 = v163 >> 2;
          }

          if (v163 >= 0x7FFFFFFFFFFFFFF8)
          {
            v164 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v164 = v162;
          }

          if (v164)
          {
            if (!(v164 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          *&dword_0 = 0;
          *(a1 + 128) = 0;
          *(a1 + 136) = 8;
          *(a1 + 144) = 0;
          if (v156)
          {
            operator delete(v156);
          }
        }

        else
        {
          *v157 = 0;
          *(a1 + 136) = v157 + 2;
        }

        v165 = (v159 + 52 * v160);
        v166 = *(a1 + 152) + 52 * *(*(a1 + 128) + 4);
        if (v165 == v166)
        {
          goto LABEL_262;
        }

LABEL_256:
        v172 = v251;
        v173 = v249;
        v174 = v244;
        v175 = (v246 - v245) >> 4;
        do
        {
          v178 = (v173 + 12 * v165[10]);
          if (v172)
          {
            v252 = v165[11];
            v176 = v165[12];
            v253 = v176;
          }

          else
          {
            v176 = *v178;
          }

          v177 = (v174 + *(v174 - *v174 + 6));
          v165[7] = *(&v177[2 * (v178[1] + v175) + 2] + *v177) + v176;
          v165 += 13;
        }

        while (v165 != v166);
        v250 = v178;
        goto LABEL_262;
      }

      sub_DD38(a1 + 232, &v241);
      *(*(a1 + 208) + ((v241 >> 3) & 0x1FFFFFF8)) |= 1 << v241;
      v156 = *(a1 + 128);
      v157 = *(a1 + 136);
      v158 = v157 - v156;
      if (v157 == v156)
      {
        goto LABEL_247;
      }

LABEL_231:
      v159 = *(a1 + 152);
      v160 = *v156;
      if (v156 == v157)
      {
        goto LABEL_232;
      }

LABEL_255:
      v165 = (v159 + 52 * v160);
      v166 = v159 + 52 * v156[1];
      if (v165 != v166)
      {
        goto LABEL_256;
      }

LABEL_262:
      result = sub_AA9698((a1 + 128), 0);
LABEL_263:
      if ((*(v246 + 15) & 2) == 0)
      {
        goto LABEL_270;
      }

      if (!v248)
      {
        if (!v240)
        {
          goto LABEL_268;
        }

        goto LABEL_270;
      }

      if (*(v248 + 4 * ((v246 - v245) >> 4)) != v240)
      {
        goto LABEL_270;
      }

LABEL_268:
      v179 = v235 + *(a1 + 120) + *(a1 + 120) * v241;
      v180 = *(a1 + 128);
      if (v179 < (*(a1 + 136) - v180) >> 3)
      {
        v182 = (v180 + 8 * v179);
        v181 = v182[1];
        v183 = v181 - *v182;
        if (v181 != *v182)
        {
          for (j = 0; j != v183; ++j)
          {
            v189 = *(a1 + 128);
            if (v179 >= (*(a1 + 136) - v189) >> 3 || (v191 = (v189 + 8 * v179), v190 = *v191, v191[1] - *v191 <= j))
            {
              v221 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v221, "key does not exist and cannot be added");
            }

            v192 = v190 + j;
            v193 = *(a1 + 152);
            if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v193) >> 2) <= v192)
            {
              v222 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v222, "index out of range");
            }

            v194 = v193 + 52 * v192;
            if (v251 == 1)
            {
              result = sub_A7A1E8(*(a1 + 24), &v242, *(v246 + 2) + *(v194 + 28), 1u);
              if ((result & 1) == 0)
              {
                continue;
              }
            }

            else
            {
              result = sub_A7A710(&v242, *(v246 + 2) + *(v194 + 28), 1);
              if (!result)
              {
                continue;
              }
            }

            v195 = *(v194 + 20);
            v196 = *(v194 + 32);
            v197 = v253;
            v198 = 0xFFFFFFFF00000000;
            if (v251)
            {
              v198 = v252 << 32;
            }

            v199 = (-1431655765 * ((v250 - v249) >> 2)) | v198;
            if (!v251)
            {
              v197 = 0x7FFFFFFF;
            }

            v200 = (v244 + *(v244 - *v244 + 6));
            v201 = v200 + *v200;
            v202 = &v253;
            if (!v251)
            {
              v202 = v250;
            }

            v203 = *&v201[8 * v250[1] + 8 + 8 * ((v246 - v245) >> 4)] + *v202;
            *(&v257 + 4) = v199;
            LODWORD(v257) = (v246 - v245) >> 4;
            HIDWORD(v257) = v197;
            LODWORD(v258) = v256;
            *(&v258 + 4) = v195;
            HIDWORD(v258) = v203;
            *&v259 = v196;
            *(&v259 + 1) = v199;
            v260 = v197;
            v204 = *(a1 + 128);
            if (*(a1 + 136) != v204)
            {
              v206 = *v204;
              v205 = *(*(a1 + 128) + 4);
              if (v205 != v206)
              {
                v207 = 0;
                v208 = *(a1 + 152);
                v209 = v208 + 52 * v205;
                v210 = v208 + 52 * v206;
                do
                {
                  v211 = *(v210 + 28);
                  if (v211 != 0x7FFFFFFF)
                  {
                    if (v211 <= SHIDWORD(v258))
                    {
                      goto LABEL_313;
                    }

                    *(v210 + 28) = 0x7FFFFFFF;
                    v207 = 1;
                  }

                  v210 += 52;
                }

                while (v210 != v209);
                result = sub_AA71F8((a1 + 128), 0, &v257);
LABEL_313:
                if ((v207 & 1) == 0)
                {
                  continue;
                }

                v212 = *(a1 + 128);
                if (*(a1 + 136) != v212)
                {
                  v213 = *(a1 + 152);
                  v214 = *v212;
LABEL_316:
                  v215 = v213 + 52 * v214;
                  v216 = v213 + 52 * v212[1];
                  if (v215 != v216)
                  {
                    goto LABEL_321;
                  }

                  goto LABEL_317;
                }

                sub_30B70(a1 + 128, 1uLL);
                v212 = *(a1 + 128);
                v213 = *(a1 + 152);
                v214 = *v212;
                if (*(a1 + 136) != v212)
                {
                  goto LABEL_316;
                }

                sub_30B70(a1 + 128, 1uLL);
                v212 = *(a1 + 128);
                v215 = v213 + 52 * v214;
                v216 = *(a1 + 152) + 52 * v212[1];
                if (v215 == v216)
                {
LABEL_317:
                  v215 = v216;
                  if (*(a1 + 136) != v212)
                  {
                    goto LABEL_332;
                  }
                }

                else
                {
LABEL_321:
                  while (*(v215 + 28) != 0x7FFFFFFF)
                  {
                    v215 += 52;
                    if (v215 == v216)
                    {
                      v215 = v216;
                      break;
                    }
                  }

                  if (v216 == v215 || (v217 = v215 + 52, v215 + 52 == v216))
                  {
                    if (*(a1 + 136) == v212)
                    {
                      goto LABEL_327;
                    }

LABEL_332:
                    result = sub_AA6CF0((a1 + 128), 0, v215, (*(a1 + 152) + 52 * v212[1]));
                    continue;
                  }

                  do
                  {
                    if (*(v217 + 28) != 0x7FFFFFFF)
                    {
                      v218 = *v217;
                      v219 = *(v217 + 16);
                      v220 = *(v217 + 32);
                      *(v215 + 48) = *(v217 + 48);
                      *(v215 + 16) = v219;
                      *(v215 + 32) = v220;
                      *v215 = v218;
                      v215 += 52;
                    }

                    v217 += 52;
                  }

                  while (v217 != v216);
                  v212 = *(a1 + 128);
                  if (*(a1 + 136) != v212)
                  {
                    goto LABEL_332;
                  }
                }

LABEL_327:
                sub_30B70(a1 + 128, 1uLL);
                v212 = *(a1 + 128);
                goto LABEL_332;
              }
            }

            result = sub_AA71F8((a1 + 128), 0, &v257);
          }
        }
      }

LABEL_270:
      v184 = v245;
      v14 = v246 + 2;
      v246 += 2;
      if (*(v242 + 16) == 1 && (v243 & 1) == 0 && v14 >= v245 && v14 < v247)
      {
        do
        {
          v185 = __ROR8__(*v14, 32);
          if (HIDWORD(v185) == 1 && (v185 + 3) < 2)
          {
            break;
          }

          result = sub_2D5204(**(v242 + 4120));
          v184 = v245;
          v14 = v246;
          if (result)
          {
            break;
          }

          v14 = v246 + 2;
          v246 = v14;
        }

        while (v14 >= v245 && v14 < v247);
      }
    }

    while (v14 >= v184 && v14 < v247);
LABEL_11:
    v13 = v254 + 4;
    v254 = v13;
    if (v13 < v255)
    {
      continue;
    }

    return result;
  }
}

char *sub_AA9698(char *result, unsigned int a2)
{
  v2 = result;
  v3 = a2;
  if (a2 < ((*(result + 1) - *result) >> 3))
  {
    v4 = *(*result + 8 * a2 + 4) - *(*result + 8 * a2);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      do
      {
        if (v4 <= v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v4;
        }

        result = sub_AA7990(v2, v3, v6++);
        if (*(result + 7) != 0x7FFFFFFF && v6 < v4)
        {
          if (v3 >= (v2[1] - *v2) >> 3)
          {
LABEL_28:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "key does not exist and cannot be added");
          }

          else
          {
            v10 = (*v2 + 8 * v3);
            v11 = v6;
            while (1)
            {
              if (v10[1] - *v10 <= v11)
              {
                goto LABEL_28;
              }

              v12 = v11 + *v10;
              v13 = v2[3];
              if (0x4EC4EC4EC4EC4EC5 * ((v2[4] - v13) >> 2) <= v12)
              {
                break;
              }

              v14 = v13 + 52 * v12;
              v17 = *(v14 + 28);
              v15 = (v14 + 28);
              v16 = v17;
              if (v17 != 0x7FFFFFFF)
              {
                if (*(result + 7) > v16)
                {
                  *(result + 7) = 0x7FFFFFFF;
                  v5 = 1;
                  goto LABEL_7;
                }

                *v15 = 0x7FFFFFFF;
                v5 = 1;
              }

              if (v8 == ++v11)
              {
                goto LABEL_7;
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "index out of range");
          }
        }

LABEL_7:
        ++v7;
      }

      while (v6 != v4);
      if (v5)
      {

        return sub_AA75DC(v2, v3);
      }
    }
  }

  return result;
}

uint64_t sub_AA98A0(uint64_t result, void *a2, uint64_t a3)
{
  v5 = result;
  v6 = (*(result + 32) + 16);
  *(result + 32) = v6;
  if (*(*result + 16) == 1 && (*(result + 8) & 1) == 0)
  {
    while (v6 >= v5[3] && v6 < v5[5])
    {
      v21 = __ROR8__(*v6, 32);
      if (HIDWORD(v21) == 1 && (v21 + 3) < 2)
      {
        break;
      }

      result = sub_2D5204(**(*v5 + 4120));
      v6 = v5[4];
      if (result)
      {
        break;
      }

      v6 += 2;
      v5[4] = v6;
    }
  }

  v7 = v5[3];
  v8 = v5[5];
  if (v6 >= v7 && v6 < v8)
  {
    v10 = -1;
    v11 = 0x7FFFFFFF;
    while (1)
    {
      if (__ROR8__(*v6, 32) == *a2 && (*(v6 + 15) & 1) != 0)
      {
        v12 = v5[6];
        if (v12)
        {
          v12 = *(v12 + 4 * ((v6 - v7) >> 4));
        }

        if ((v12 & a3) == 0)
        {
          break;
        }
      }

      v6 += 2;
      v5[4] = v6;
      if (*(*v5 + 16) == 1)
      {
        goto LABEL_14;
      }

LABEL_28:
      if (v6 < v7 || v6 >= v8)
      {
        if (v10 != -1)
        {
          v5[4] = v7 + 16 * v10;
        }

        return result;
      }
    }

    if (*(v5 + 96))
    {
      v16 = v5 + 13;
    }

    else
    {
      v16 = v5[8];
    }

    v17 = (v5[2] + *(v5[2] - *v5[2] + 6));
    v18 = *(&v17[2 * *(v5[8] + 4) + 1 + 2 * ((v6 - v7) >> 4)] + *v17) + *v16;
    if (v11 == 0x7FFFFFFF || v18 < v11)
    {
      v11 = v18;
      v10 = (v6 - v7) >> 4;
    }

    v6 += 2;
    v5[4] = v6;
    if (*(*v5 + 16) != 1)
    {
      goto LABEL_28;
    }

LABEL_14:
    if ((v5[1] & 1) == 0)
    {
      if (v6 < v5[5])
      {
        do
        {
          v13 = __ROR8__(*v6, 32);
          if (HIDWORD(v13) == 1 && (v13 + 3) < 2)
          {
            break;
          }

          result = sub_2D5204(**(*v5 + 4120));
          v7 = v5[3];
          v6 = v5[4];
          if (result)
          {
            break;
          }

          v6 += 2;
          v5[4] = v6;
        }

        while (v6 >= v7 && v6 < v5[5]);
      }

      v8 = v5[5];
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_AA9AE0(unsigned int **a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v4 = 0x186186186186186;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = 0;
  *(v5 + 160) = -1;
  v6 = *(a2 + 160);
  if (v6 != -1)
  {
    v17 = v5;
    (off_2670F18[v6])(&v17, a2);
    *(v5 + 160) = v6;
  }

  v7 = v5 + 168;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = (v5 + v10);
  if (*a1 != v9)
  {
    v12 = v5 + v10;
    v13 = *a1;
    do
    {
      *v12 = 0;
      *(v12 + 160) = -1;
      v14 = v13[40];
      if (v14 != -1)
      {
        v17 = v12;
        (off_2670F78[v14])(&v17, v13);
        *(v12 + 160) = v14;
      }

      v13 += 42;
      v12 += 168;
    }

    while (v13 != v9);
    do
    {
      v15 = v8[40];
      if (v15 != -1)
      {
        (off_2670F08[v15])(&v17, v8);
      }

      v8[40] = -1;
      v8 += 42;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_AA9CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A3238C(v3);
  sub_AA9D1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_AA9D1C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 168;
      *(a1 + 16) = v3 - 168;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_2670F08[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_AA9DBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    v5 = (i - 72);
    *(a1 + 16) = i - 72;
    v6 = *(i - 40);
    if (v6)
    {
      *(i - 32) = v6;
      operator delete(v6);
    }

    v7 = *v5;
    if (*v5)
    {
      v8 = *(i - 64);
      v4 = *v5;
      if (v8 != v7)
      {
        do
        {
          v9 = v8 - 168;
          v10 = *(v8 - 2);
          if (v10 != -1)
          {
            (off_2670F08[v10])(&v11, v8 - 168);
          }

          *(v8 - 2) = -1;
          v8 -= 168;
        }

        while (v9 != v7);
        v4 = *v5;
      }

      *(i - 64) = v7;
      operator delete(v4);
    }
  }
}

uint64_t sub_AA9EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = *(a3 + 8);
    v7 = (a1 + 144);
    do
    {
      while (1)
      {
        v9 = v7 - 9;
        if (v6 < *(a3 + 16))
        {
          break;
        }

        sub_A7C8B8(a3, v9);
        *(a3 + 8) = v6;
        v8 = v7 + 152;
        v7 = (v7 + 296);
        if (v8 == a2)
        {
          return a2;
        }
      }

      v10 = *v9;
      v11 = *(v7 - 7);
      *(v6 + 16) = *(v7 - 8);
      *(v6 + 32) = v11;
      *v6 = v10;
      v12 = *(v7 - 6);
      v13 = *(v7 - 5);
      v14 = *(v7 - 4);
      *(v6 + 96) = *(v7 - 6);
      *(v6 + 64) = v13;
      *(v6 + 80) = v14;
      *(v6 + 48) = v12;
      *(v6 + 104) = *(v7 - 10);
      v15 = *(v7 - 2);
      *(v6 + 128) = *(v7 - 2);
      *(v6 + 112) = v15;
      *(v7 - 3) = 0;
      *(v7 - 2) = 0;
      *(v7 - 4) = 0;
      *(v6 + 136) = *(v7 - 2);
      v16 = *v7;
      v17 = v7[2];
      *(v6 + 160) = v7[1];
      *(v6 + 176) = v17;
      *(v6 + 144) = v16;
      *(v6 + 192) = *(v7 + 6);
      *(v6 + 208) = 0;
      *(v6 + 216) = 0;
      *(v6 + 200) = 0;
      *(v6 + 200) = *(v7 + 56);
      *(v6 + 216) = *(v7 + 9);
      *(v7 + 7) = 0;
      *(v7 + 8) = 0;
      *(v7 + 9) = 0;
      *(v6 + 224) = 0;
      *(v6 + 232) = 0;
      *(v6 + 240) = 0;
      *(v6 + 224) = v7[5];
      *(v6 + 240) = *(v7 + 12);
      *(v7 + 10) = 0;
      *(v7 + 11) = 0;
      *(v7 + 12) = 0;
      *(v6 + 248) = 0;
      *(v6 + 256) = 0;
      *(v6 + 264) = 0;
      *(v6 + 248) = *(v7 + 104);
      *(v6 + 264) = *(v7 + 15);
      *(v7 + 13) = 0;
      *(v7 + 14) = 0;
      *(v7 + 15) = 0;
      *(v6 + 272) = 0;
      *(v6 + 280) = 0;
      *(v6 + 288) = 0;
      *(v6 + 272) = v7[8];
      *(v6 + 288) = *(v7 + 18);
      *(v7 + 16) = 0;
      *(v7 + 17) = 0;
      *(v7 + 18) = 0;
      v6 += 296;
      *(a3 + 8) = v6;
      v18 = v7 + 152;
      v7 = (v7 + 296);
    }

    while (v18 != a2);
  }

  return a2;
}

void sub_AAA01C(uint64_t a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v26 = 0;
  LOBYTE(v25) = 0;
  sub_CC9264(v10, &v25);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  BYTE8(v19) = 0;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_A98AD4(a1 + 152, v8);
  *&v25 = &v23;
  sub_A31F30(&v25);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    sub_A95778(&v8[1]);
    operator delete(v8[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  sub_A98CD4(a1 + 416);
  sub_A98CD4(a1 + 536);
  *(a1 + 2072) = 0;
  *(a1 + 2056) = 0u;
  v2 = *(a1 + 24);
  *(a1 + 1440) = v2;
  *(a1 + 1444) = *(a1 + 28);
  v3 = *(a1 + 72);
  *(a1 + 1445) = v3;
  *(a1 + 688) = v2;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v3;
  v8[0] = 0x1FFFFFFFELL;
  v4 = sub_A98E8C(a1 + 416, v8);
  v5 = *(v4 + 8);
  if (v5 == -1)
  {
    v6 = *(a1 + 528);
    *(a1 + 528) = v6 + 1;
    *(v4 + 8) = v6;
    v7 = v4;
    sub_2512DC(a1 + 504, v8);
    *(a1 + 656) = *(v7 + 8);
  }

  else
  {
    *(a1 + 656) = v5;
  }
}

void sub_AAA1C8(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_AAA1EC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_A96160(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
  v3 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 16);
  v36 = *(a1 + 8);
  v38 = v6;
  v37 = *(a1 + 24);
  v39 = *(a1 + 28);
  v41 = *(a1 + 72);
  v40 = *(a1 + 144);
  sub_A9DD88(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2056);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2056);
  }

  *(a1 + 2056) = v8 + v7;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "Primary SPA scanned ", 20);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " stop patterns and obtained ", 28);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " journeys in ", 13);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, " ms using ", 10);
    v13 = sub_71478(v12, v42[18]);
    sub_4A5C(v13, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v15 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v15 = v27;
      }

      v16 = v26;
      v14 = v15 - v26;
      if (v15 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_26:
        *(&v18 + v14) = 0;
        sub_7E854(&v18, 2u);
        if (v20 < 0)
        {
          operator delete(v18);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_A40284(&v36);
      }

      v16 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&v18, v16, v14);
    }

    goto LABEL_26;
  }

  return sub_A40284(&v36);
}

void sub_AAA61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A40284(&a69);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A40284(&a69);
  _Unwind_Resume(a1);
}

uint64_t sub_AAA6BC(uint64_t a1, int a2)
{
  v132 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v130[0] = *(a1 + 88);
  v130[1] = v3;
  v130[2] = *(a1 + 120);
  v131 = *(a1 + 136);
  LOBYTE(v130[0]) = 0;
  v129[0] = v130;
  v129[1] = a1;
  v129[2] = &v132;
  v4 = *(a1 + 664);
  v5 = *(a1 + 656);
  if (*v4 <= v5)
  {
    *v4 = v5 + 1;
    v6 = v4[2];
    v7 = v4[1] * (v5 + 1);
    v8 = (v4[3] - v6) >> 2;
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v10 != 0 && v9)
    {
      v11 = a2;
      sub_617214((v4 + 2), v10);
      a2 = v11;
    }

    else if (!v9)
    {
      v4[3] = v6 + 4 * v7;
    }
  }

  v12 = *(v4[2] + 4 * v4[1] * v5 + 4 * ((2 * a2) | 1u));
  v14 = (a1 + 92);
  v13 = *(a1 + 92);
  v133 = v13;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_124;
  }

  v15 = v13 - v12;
  if ((10 * (v13 - v12)) >= *(a1 + 52))
  {
    v16 = sub_AAC614(v129, v12);
    LODWORD(v114) = v16;
    v13 = v133;
    if (v16 == 0x7FFFFFFF || v16 >= v133)
    {
LABEL_34:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_33:
      v13 = v114;
      v133 = v114;
      goto LABEL_34;
    }

    sub_19594F8(&v118);
    sub_4A5C(&v118, "[", 1);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v20 = sub_258D4(v19);
    v21 = sub_4A5C(v20, " to ", 4);
    sub_258D4(v21);
    if ((v128 & 0x10) != 0)
    {
      v23 = v127;
      if (v127 < v124)
      {
        v127 = v124;
        v23 = v124;
      }

      v24 = &v123;
    }

    else
    {
      if ((v128 & 8) == 0)
      {
        v22 = 0;
        v117 = 0;
LABEL_28:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 2u);
        if (v117 < 0)
        {
          operator delete(__dst);
        }

        if (v126 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v120);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v24 = v121;
      v23 = v122;
    }

    v25 = *v24;
    v22 = v23 - *v24;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v117 = v23 - *v24;
    if (v22)
    {
      memmove(&__dst, v25, v22);
    }

    goto LABEL_28;
  }

LABEL_35:
  if ((10 * v15) < *(a1 + 52))
  {
    goto LABEL_124;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_53;
  }

  sub_19594F8(&v118);
  sub_4A5C(&v118, "[", 1);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, "] Journey duration (", 20);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v128 & 0x10) != 0)
  {
    v29 = v127;
    if (v127 < v124)
    {
      v127 = v124;
      v29 = v124;
    }

    v30 = v123;
    v28 = v29 - v123;
    if (v29 - v123 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_92:
      sub_3244();
    }

LABEL_43:
    if (v28 >= 0x17)
    {
      operator new();
    }

    v115 = v28;
    if (v28)
    {
      memmove(&v114, v30, v28);
    }

    goto LABEL_48;
  }

  if ((v128 & 8) != 0)
  {
    v30 = v121[0];
    v28 = v122 - v121[0];
    if (v122 - v121[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_92;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v115 = 0;
LABEL_48:
  *(&v114 + v28) = 0;
  sub_7E854(&v114, 2u);
  if (v115 < 0)
  {
    operator delete(v114);
  }

  if (v126 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v120);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_53:
  v31 = *(a1 + 60);
  if (v31 > *(a1 + 56))
  {
    v32 = v12;
    goto LABEL_123;
  }

  v113 = v12;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v35 = v31 % 10;
      goto LABEL_77;
    }

    sub_19594F8(&v118);
    sub_4A5C(&v118, "[", 1);
    v34 = std::ostream::operator<<();
    sub_4A5C(v34, "] Examining time shift of ", 26);
    v35 = v31 % 10;
    v36 = std::ostream::operator<<();
    sub_4A5C(v36, " sec (exponential search)", 25);
    if ((v128 & 0x10) != 0)
    {
      v38 = v127;
      v39 = &v123;
      if (v127 < v124)
      {
        v127 = v124;
        v38 = v124;
        v39 = &v123;
      }

      goto LABEL_66;
    }

    if ((v128 & 8) != 0)
    {
      v38 = v122;
      v39 = v121;
LABEL_66:
      v40 = *v39;
      v37 = v38 - *v39;
      if (v37 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v37 >= 0x17)
      {
        operator new();
      }

      v115 = v38 - *v39;
      if (v37)
      {
        memmove(&v114, v40, v37);
      }

      goto LABEL_72;
    }

    v37 = 0;
    v115 = 0;
LABEL_72:
    *(&v114 + v37) = 0;
    sub_7E854(&v114, 2u);
    if (v115 < 0)
    {
      operator delete(v114);
    }

    v118 = v112;
    *(&v118 + *(v112 - 3)) = v111;
    if (v126 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v120);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_77:
    v41 = v31 / -10;
    v42 = v31 < 0 ? -5 : 5;
    v43 = (((-103 * (v42 + v35)) >> 15) & 1) + ((-103 * (v42 + v35)) >> 10);
    v44 = v41 + v12 + v43;
    v45 = sub_AAC614(v129, v44);
    if (*(a1 + 64) * fabs((10 * (v45 - v133))) >= fabs((10 * (v43 + v41))))
    {
      break;
    }

    v33 = v31 + v31;
    if (v33 >= 0.0)
    {
      if (v33 >= 4.50359963e15)
      {
        goto LABEL_57;
      }

      v46 = (v33 + v33) + 1;
    }

    else
    {
      if (v33 <= -4.50359963e15)
      {
        goto LABEL_57;
      }

      v46 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
    }

    v33 = (v46 >> 1);
LABEL_57:
    v31 = v33;
    if (*(a1 + 56) < v33)
    {
      v32 = v12;
      goto LABEL_123;
    }
  }

  v47 = v45;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v118);
    sub_4A5C(&v118, "[", 1);
    v48 = std::ostream::operator<<();
    sub_4A5C(v48, "] Journey duration improved from ", 33);
    v49 = std::ostream::operator<<();
    sub_4A5C(v49, " to ", 4);
    v50 = std::ostream::operator<<();
    sub_4A5C(v50, " sec for time shift of ", 23);
    v51 = std::ostream::operator<<();
    sub_4A5C(v51, " sec", 4);
    if ((v128 & 0x10) != 0)
    {
      v53 = v127;
      if (v127 < v124)
      {
        v127 = v124;
        v53 = v124;
      }

      v54 = &v123;
    }

    else
    {
      if ((v128 & 8) == 0)
      {
        v52 = 0;
        v115 = 0;
        goto LABEL_103;
      }

      v54 = v121;
      v53 = v122;
    }

    v55 = *v54;
    v52 = v53 - *v54;
    if (v52 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v52 >= 0x17)
    {
      operator new();
    }

    v115 = v53 - *v54;
    if (v52)
    {
      memmove(&v114, v55, v52);
    }

LABEL_103:
    *(&v114 + v52) = 0;
    sub_7E854(&v114, 2u);
    if (v115 < 0)
    {
      operator delete(v114);
    }

    v118 = v112;
    *(&v118 + *(v112 - 3)) = v111;
    if (v126 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v120);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  v133 = v47;
  v32 = v12;
  if (v44 != v12)
  {
    v56 = vcvtd_n_f64_s32(v31, 1uLL);
    if (v56 >= 0.0)
    {
      if (v56 < 4.50359963e15)
      {
        v57 = (v56 + v56) + 1;
LABEL_114:
        v56 = (v57 >> 1);
      }
    }

    else if (v56 > -4.50359963e15)
    {
      v57 = (v56 + v56) - 1 + (((v56 + v56) - 1) >> 63);
      goto LABEL_114;
    }

    v58 = v31 * 0.25;
    if (v58 >= 0.0)
    {
      if (v58 < 4.50359963e15)
      {
        v59 = (v58 + v58) + 1;
LABEL_120:
        v58 = (v59 >> 1);
      }
    }

    else if (v58 > -4.50359963e15)
    {
      v59 = (v58 + v58) - 1 + (((v58 + v58) - 1) >> 63);
      goto LABEL_120;
    }

    v60 = v58;
    if (*(a1 + 60) > v58)
    {
      v32 = v44;
      goto LABEL_123;
    }

    v86 = v56;
    v32 = v44;
    while (2)
    {
      *(a1 + 296) = *(a1 + 296) + 1.0;
      v88 = v60 + v86;
      if (sub_7E7E4(2u))
      {
        sub_19594F8(&v118);
        sub_4A5C(&v118, "[", 1);
        v89 = std::ostream::operator<<();
        sub_4A5C(v89, "] Examining time shift of ", 26);
        v90 = v88 % 10;
        v91 = std::ostream::operator<<();
        sub_4A5C(v91, " sec (binary refinement search)", 31);
        if ((v128 & 0x10) != 0)
        {
          v93 = v86;
          v94 = v127;
          v95 = &v123;
          if (v127 < v124)
          {
            v127 = v124;
            v94 = v124;
            v95 = &v123;
          }
        }

        else
        {
          if ((v128 & 8) == 0)
          {
            v92 = 0;
            v115 = 0;
            goto LABEL_182;
          }

          v93 = v86;
          v94 = v122;
          v95 = v121;
        }

        v96 = *v95;
        v92 = v94 - *v95;
        if (v92 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v92 >= 0x17)
        {
          operator new();
        }

        v115 = v94 - *v95;
        if (v92)
        {
          memmove(&v114, v96, v92);
        }

        v86 = v93;
LABEL_182:
        *(&v114 + v92) = 0;
        sub_7E854(&v114, 2u);
        if (v115 < 0)
        {
          operator delete(v114);
        }

        v118 = v112;
        *(&v118 + *(v112 - 3)) = v111;
        if (v126 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v120);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      else
      {
        v90 = v88 % 10;
      }

      if (v88 < 0)
      {
        v97 = -5;
      }

      else
      {
        v97 = 5;
      }

      v98 = v88 / -10 + v113 + (((-103 * (v97 + v90)) >> 15) & 1) + ((-103 * (v97 + v90)) >> 10);
      v99 = sub_AAC614(v129, v98);
      if (*(a1 + 64) * fabs((10 * (v133 - v99))) >= fabs((10 * (v32 - v98))))
      {
        v86 = v88;
        v87 = vcvtd_n_f64_s32(v60, 1uLL);
        if (v87 >= 0.0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v100 = v99;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v118);
          sub_4A5C(&v118, "[", 1);
          v101 = std::ostream::operator<<();
          sub_4A5C(v101, "] Journey duration improved from ", 33);
          v102 = std::ostream::operator<<();
          sub_4A5C(v102, " to ", 4);
          v103 = std::ostream::operator<<();
          sub_4A5C(v103, " sec for time shift of ", 23);
          v104 = std::ostream::operator<<();
          sub_4A5C(v104, " sec", 4);
          if ((v128 & 0x10) != 0)
          {
            v105 = v86;
            v108 = v127;
            v109 = &v123;
            if (v127 < v124)
            {
              v127 = v124;
              v108 = v124;
              v109 = &v123;
            }
          }

          else
          {
            v105 = v86;
            if ((v128 & 8) == 0)
            {
              v106 = 0;
              v115 = 0;
              goto LABEL_207;
            }

            v108 = v122;
            v109 = v121;
          }

          v110 = *v109;
          v106 = v108 - *v109;
          if (v106 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v106 >= 0x17)
          {
            operator new();
          }

          v115 = v108 - *v109;
          if (v106)
          {
            memmove(&v114, v110, v106);
          }

LABEL_207:
          *(&v114 + v106) = 0;
          sub_7E854(&v114, 2u);
          v86 = v105;
          if (v115 < 0)
          {
            operator delete(v114);
          }

          v118 = v112;
          *(&v118 + *(v112 - 3)) = v111;
          if (v126 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v120);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v133 = v100;
        v32 = v98;
        v87 = vcvtd_n_f64_s32(v60, 1uLL);
        if (v87 >= 0.0)
        {
LABEL_213:
          if (v87 < 4.50359963e15)
          {
            v107 = (v87 + v87) + 1;
LABEL_165:
            v87 = (v107 >> 1);
          }

          goto LABEL_166;
        }
      }

      if (v87 > -4.50359963e15)
      {
        v107 = (v87 + v87) - 1 + (((v87 + v87) - 1) >> 63);
        goto LABEL_165;
      }

LABEL_166:
      v60 = v87;
      if (*(a1 + 60) > v87)
      {
        break;
      }

      continue;
    }
  }

LABEL_123:
  *(a1 + 232) = sub_7EA60(&__dst);
  v13 = v133;
  v12 = v32;
  v14 = (a1 + 92);
LABEL_124:
  if (v13 != *v14)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v118);
      sub_4A5C(&v118, "[", 1);
      v61 = std::ostream::operator<<();
      v62 = sub_4A5C(v61, "] Shifting ", 11);
      v63 = sub_4A5C(v62, "arrival", 7);
      v64 = sub_4A5C(v63, " time from ", 11);
      v65 = sub_258D4(v64);
      v66 = sub_4A5C(v65, " to ", 4);
      sub_258D4(v66);
      if ((v128 & 0x10) != 0)
      {
        v68 = v127;
        if (v127 < v124)
        {
          v127 = v124;
          v68 = v124;
        }

        v69 = v123;
        v67 = v68 - v123;
        if (v68 - v123 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_163;
        }
      }

      else
      {
        if ((v128 & 8) == 0)
        {
          v67 = 0;
          v117 = 0;
          goto LABEL_137;
        }

        v69 = v121[0];
        v67 = v122 - v121[0];
        if (v122 - v121[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_163:
          sub_3244();
        }
      }

      if (v67 >= 0x17)
      {
        operator new();
      }

      v117 = v67;
      if (v67)
      {
        memmove(&__dst, v69, v67);
      }

LABEL_137:
      *(&__dst + v67) = 0;
      sub_7E854(&__dst, 2u);
      if (v117 < 0)
      {
        operator delete(__dst);
      }

      if (v126 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v120);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v70 = v132;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_155;
  }

  v71 = v132 + 1;
  v72 = *(a1 + 24);
  if (v132 + 1 <= (v72 + 1))
  {
    v71 = v72 + 1;
  }

  if (v132 + 1 < (v72 + 1))
  {
    v73 = v71 - 1;
    v74 = 2 * v132 + 3;
    v75 = v132;
    while (1)
    {
      v76 = *(a1 + 664);
      v77 = *(a1 + 656);
      if (*v76 <= v77)
      {
        *v76 = v77 + 1;
        v78 = v76[2];
        v79 = v76[1] * (v77 + 1);
        v80 = (v76[3] - v78) >> 2;
        if (v79 <= v80)
        {
          if (v79 < v80)
          {
            v76[3] = v78 + 4 * v79;
          }
        }

        else
        {
          sub_617214((v76 + 2), v79 - v80);
        }
      }

      if (*(v76[2] + 4 * v76[1] * v77 + 4 * v74) != 0x7FFFFFFF)
      {
        break;
      }

      ++v75;
      v74 += 2;
      if (v73 == v75)
      {
        goto LABEL_155;
      }
    }
  }

  else
  {
LABEL_155:
    if (*(a1 + 24) >= (*(a1 + 148) + v70))
    {
      v75 = *(a1 + 148) + v70;
    }

    else
    {
      v75 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v75;
  v81 = *(a1 + 144);
  v82 = v81 / -10;
  v83 = v81 % 10;
  if (v81 < 0)
  {
    v84 = -5;
  }

  else
  {
    v84 = 5;
  }

  sub_AAC614(v129, v82 + v12 + (((-103 * (v84 + v83)) >> 15) & 1) + ((-103 * (v84 + v83)) >> 10));
  return v133;
}

void sub_AABF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a22 < 0)
  {
    operator delete(__p);
    sub_1959728(&a29);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a29);
  _Unwind_Resume(a1);
}

void sub_AAC108(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 48) != 1)
  {
    goto LABEL_13;
  }

  v6 = a2 + 1;
  v7 = *(a1 + 24);
  if (a2 + 1 <= (v7 + 1))
  {
    v6 = v7 + 1;
  }

  if (a2 + 1 < (v7 + 1))
  {
    v8 = v6 - 1;
    v9 = 2 * a2 + 3;
    v10 = a2;
    while (1)
    {
      v11 = *(a1 + 664);
      v12 = *(a1 + 656);
      if (*v11 <= v12)
      {
        *v11 = v12 + 1;
        v13 = v11[2];
        v14 = v11[1] * (v12 + 1);
        v15 = (v11[3] - v13) >> 2;
        if (v14 <= v15)
        {
          if (v14 < v15)
          {
            v11[3] = v13 + 4 * v14;
          }
        }

        else
        {
          sub_617214((v11 + 2), v14 - v15);
        }
      }

      if (*(v11[2] + 4 * v11[1] * v12 + 4 * v9) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (*(a1 + 24) >= (*(a1 + 148) + a2))
    {
      v10 = *(a1 + 148) + a2;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v16 = *(a1 + 104);
  v51[0] = *(a1 + 88);
  v51[1] = v16;
  v51[2] = *(a1 + 120);
  v52 = *(a1 + 136);
  DWORD1(v51[0]) = a3;
  *(a1 + 1440) = v10;
  sub_AAC9B4(a1 + 1424, v51);
  sub_AACCA0((a1 + 1424), a2, v43);
  sub_CC92D8(a1 + 184, a1 + 1904, &__p);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v17 = *(a1 + 2048);
  *(a1 + 328) -= v17;
  v18 = *(a1 + 2072);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  *(a1 + 2072) = v18;
  sub_AA9EA4(v44[0], v44[1], a1 + 160);
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v30);
    sub_4A5C(&v30, "[", 1);
    v19 = std::ostream::operator<<();
    sub_4A5C(v19, "] McSPA scanned ", 16);
    v20 = std::ostream::operator<<();
    sub_4A5C(v20, " stop patterns and obtained ", 28);
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, " journeys in ", 13);
    v22 = std::ostream::operator<<();
    v23 = sub_4A5C(v22, " ms using ", 10);
    v24 = sub_71478(v23, *(a1 + 2048));
    sub_4A5C(v24, " of memory", 10);
    if ((v40 & 0x10) != 0)
    {
      v26 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v26 = v36;
      }

      v27 = v35;
      v25 = v26 - v35;
      if (v26 - v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v25 = 0;
        v29 = 0;
LABEL_32:
        *(&v28 + v25) = 0;
        sub_7E854(&v28, 2u);
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v27 = v33;
      v25 = v34 - v33;
      if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_47:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v29 = v25;
    if (v25)
    {
      memmove(&v28, v27, v25);
    }

    goto LABEL_32;
  }

LABEL_37:
  v30 = &v50;
  sub_A31F30(&v30);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[3]);
  }

  if (v44[0])
  {
    sub_A95778(v44);
    operator delete(v44[0]);
  }
}

void sub_AAC598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A300F8(&a67);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A300F8(&a67);
  _Unwind_Resume(a1);
}

uint64_t sub_AAC614(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(v2 + 4) = a2;
  sub_A99960(v3 + 680, v2);
  sub_CC92D8(v3 + 184, v3 + 1272, &v32);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  v4 = *(v3 + 1416);
  *(v3 + 328) -= v4;
  v5 = *(v3 + 2064);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 2064) = v5;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "[", 1);
    v6 = std::ostream::operator<<();
    sub_4A5C(v6, "] Secondary SPA scanned ", 24);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " stop patterns and obtained ", 28);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, " journeys in ", 13);
    v9 = std::ostream::operator<<();
    v10 = sub_4A5C(v9, " ms using ", 10);
    v11 = sub_71478(v10, *(v3 + 1416));
    sub_4A5C(v11, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v13 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v13 = v27;
      }

      v14 = v26;
      v12 = v13 - v26;
      if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v12 = 0;
        v20 = 0;
LABEL_17:
        *(&__dst + v12) = 0;
        sub_7E854(&__dst, 2u);
        if (v20 < 0)
        {
          operator delete(__dst);
        }

        if (v29 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v14 = v24;
      v12 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_26:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__dst, v14, v12);
    }

    goto LABEL_17;
  }

LABEL_22:
  v15 = *(v3 + 1136);
  v16 = *(v3 + 896);
  v17 = (*(v3 + 904) - v16) >> 2;
  if (v17 <= v15)
  {
    sub_617214(v3 + 896, v15 - v17 + 1);
    v16 = *(v3 + 896);
  }

  return *(v16 + 4 * v15);
}

void sub_AAC968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_AAC9B4(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v42);
  v4 = *(a2 + 16);
  *(a1 + 64) = *a2;
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 40);
  sub_AAEF2C(a1);
  v5 = *(a1 + 32);
  v43[0] = 0x1FFFFFFFELL;
  v6 = sub_A98E8C(v5, v43);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(v5 + 112);
    *(v5 + 112) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(v5 + 88, v43);
    v7 = *(v9 + 8);
  }

  *(a1 + 376) = v7;
  sub_AAF100(a1);
  v10 = 1.0;
  if (*(a1 + 124) >= 2u)
  {
    v11 = 1;
    while (1)
    {
      if (v11)
      {
        v22 = *(a1 + 280);
        v23 = *(a1 + 288);
        if (v22 != v23)
        {
          v24 = *(a1 + 256);
          v25 = *(a1 + 280);
          do
          {
            v26 = *v25++;
            *(v24 + ((v26 >> 3) & 0x1FFFFFF8)) &= ~(1 << v26);
          }

          while (v25 != v23);
        }

        *(a1 + 288) = v22;
        sub_AAF354(a1, v11);
        sub_AAF720(a1, v11);
        v21 = *(a1 + 280);
        if (v21 == *(a1 + 288))
        {
LABEL_22:
          v10 = v11;
          break;
        }

        v20 = *(a1 + 232);
      }

      else
      {
        v12 = *(a1 + 232);
        v13 = *(a1 + 240);
        if (v12 != v13)
        {
          v14 = *(a1 + 208);
          v15 = *(a1 + 232);
          do
          {
            v16 = *v15++;
            *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
          }

          while (v15 != v13);
        }

        *(a1 + 240) = v12;
        sub_AB0FAC(a1);
        sub_7E9A4(v43);
        v17 = *(a1 + 352);
        v18 = *(a1 + 360);
        while (v17 != v18)
        {
          v19 = *v17++;
          sub_AB2454(a1, v11, v19);
        }

        *(a1 + 512) = sub_7EA60(v43) + *(a1 + 512);
        v20 = *(a1 + 232);
        if (v20 == *(a1 + 240))
        {
          goto LABEL_22;
        }

        v21 = *(a1 + 280);
      }

      v40 = *(a1 + 168);
      v41 = *(a1 + 128);
      v38 = *(a1 + 152);
      v39 = *(a1 + 144);
      v36 = 8 * (*(a1 + 224) & 0x3FFFFFFFFFFFFFFLL);
      v37 = 8 * (*(a1 + 192) & 0x3FFFFFFFFFFFFFFLL);
      v27 = *(a1 + 248);
      v34 = *(a1 + 320);
      v35 = 8 * (*(a1 + 272) & 0x3FFFFFFFFFFFFFFLL);
      v28 = *(a1 + 296);
      v29 = *(a1 + 304);
      v33 = *(a1 + 352);
      v30 = 8 * (*(a1 + 344) & 0x3FFFFFFFFFFFFFFLL);
      v31 = *(a1 + 368);
      v32 = v39 + v40 - (v41 + v38) + v37 + v27 + v36 - v20 + v28 + v35 + v34 - (v21 + v29) + v30 + v31 - v33 + sub_C439D4((a1 + 384)) + 632;
      if (*(a1 + 624) > v32)
      {
        v32 = *(a1 + 624);
      }

      *(a1 + 624) = v32;
      if ((sub_AA6420(a1) & 1) == 0 && ++v11 < *(a1 + 124))
      {
        continue;
      }

      goto LABEL_22;
    }
  }

  sub_AB1D28(a1);
  *(a1 + 552) = v10;
  *(a1 + 504) = sub_7EA60(v42);
}

__n128 sub_AACCA0@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v262 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  HIBYTE(v295) = 0;
  LOBYTE(__p) = 0;
  v258 = (a3 + 32);
  sub_CC9264(a3 + 32, &__p);
  if (SHIBYTE(v295) < 0)
  {
    operator delete(__p);
  }

  *(a3 + 192) = 0u;
  *(a3 + 256) = 0;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 184) = *(a1 + 64);
  v5 = (2 * a2) | 1;
  v6 = *(a1 + 31);
  if (v5 > v6)
  {
    v7 = 2 * a2 + 1;
  }

  else
  {
    v7 = *(a1 + 31);
  }

  v259 = v7;
  v260 = (2 * a2) | 1;
  if (v5 < v6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v261 = _Q0;
    v269 = a1;
    while (1)
    {
      sub_AA6A84(a1 + 16, 0);
      sub_AB22AC(a1 + 16, v260 + *(a1 + 30) + *(a1 + 30) * *(a1 + 94) + 2, 0);
      v11 = a1[16];
      if (a1[17] != v11)
      {
        break;
      }

      sub_30B70((a1 + 16), 1uLL);
      v11 = a1[16];
      v12 = a1[19];
      v13 = *v11;
      if (a1[17] != v11)
      {
        goto LABEL_11;
      }

      sub_30B70((a1 + 16), 1uLL);
      v11 = a1[16];
      v14 = a1[19];
LABEL_14:
      v265 = (v12 + 52 * v13);
      v263 = (v14 + 52 * v11[1]);
      if (v265 != v263)
      {
        while (1)
        {
          LOWORD(__p) = 0;
          BYTE2(__p) = 0;
          *(&__p + 4) = 0;
          HIDWORD(__p) = 0;
          v295 = -NAN;
          v296 = 0x7FFFFFFF;
          v297 = 0;
          v298 = 0x8000000080000000;
          v299 = 0;
          v300 = 0x8000000080000000;
          v301 = 0x7FFFFFFF;
          v302 = 0;
          v303 = 0x8000000080000000;
          v304 = 0;
          v305 = 0x8000000080000000;
          v306 = 0;
          v307 = 0xFFFFFFFF00000000;
          v308 = -1;
          v309 = 0;
          v311 = 0;
          v312 = 0;
          v313 = 0;
          v310 = 0x7FFFFFFF;
          v314 = 100;
          v315 = -1;
          v316 = v261;
          v317 = v261;
          v318 = v261;
          v319 = 0u;
          v320 = 0u;
          v321 = 0u;
          v322 = 0u;
          v323 = 0u;
          v324 = 0u;
          v15 = a1[3];
          if (sub_68312C(v15 + 3896) && *(v15 + 3944))
          {
            v16 = 1;
          }

          else
          {
            v17 = a1[3];
            v16 = sub_4C2B90(v17 + 3896) && *(v17 + 3960) != 0;
          }

          BYTE1(__p) = v16;
          v18 = a1[3];
          if (sub_4C2B90(v18 + 3896))
          {
            DWORD2(__p) = 2 * (*(v18 + 3960) != 0);
            DWORD1(__p) = DWORD2(__p);
            if (*v265 != -1)
            {
              break;
            }

            goto LABEL_328;
          }

          *(&__p + 4) = 0;
          if (*v265 != -1)
          {
            break;
          }

LABEL_328:
          sub_A83920(&__p);
          v228 = *(a3 + 16);
          v227 = *(a3 + 24);
          if (v228 >= v227)
          {
            v231 = 0x14C1BACF914C1BADLL * ((v228 - *v262) >> 3);
            v232 = v231 + 1;
            if ((v231 + 1) > 0xDD67C8A60DD67CLL)
            {
              sub_1794();
            }

            v233 = 0x14C1BACF914C1BADLL * ((v227 - *v262) >> 3);
            if (2 * v233 > v232)
            {
              v232 = 2 * v233;
            }

            if (v233 >= 0x6EB3E45306EB3ELL)
            {
              v234 = 0xDD67C8A60DD67CLL;
            }

            else
            {
              v234 = v232;
            }

            *v282 = v262;
            if (v234)
            {
              if (v234 <= 0xDD67C8A60DD67CLL)
              {
                operator new();
              }

              sub_1808();
            }

            *v281 = 0;
            *&v281[8] = 296 * v231;
            *&v281[16] = (296 * v231);
            v230 = a3;
            sub_A32C84(296 * v231, &__p);
            *&v281[16] += 296;
            v229 = *&v281[16];
            v235 = *(a3 + 8);
            v236 = *(a3 + 16);
            v237 = *&v281[8] + v235 - v236;
            sub_A7CAB8(v262, v235, v236, v237);
            v238 = *(a3 + 8);
            *(a3 + 8) = v237;
            *(a3 + 16) = v229;
            *(a3 + 24) = *&v281[24];
            if (v238)
            {
              operator delete(v238);
            }
          }

          else
          {
            sub_A32C84(*(a3 + 16), &__p);
            v229 = v228 + 296;
            v230 = a3;
          }

          *(v230 + 16) = v229;
          if (*(&v323 + 1))
          {
            *&v324 = *(&v323 + 1);
            operator delete(*(&v323 + 1));
          }

          if (v322)
          {
            *(&v322 + 1) = v322;
            operator delete(v322);
          }

          if (*(&v320 + 1))
          {
            *&v321 = *(&v320 + 1);
            operator delete(*(&v320 + 1));
          }

          v239 = v319;
          if (v319)
          {
            v240 = *(&v319 + 1);
            v241 = v319;
            if (*(&v319 + 1) != v319)
            {
              do
              {
                v243 = *(v240 - 40);
                if (v243)
                {
                  *(v240 - 32) = v243;
                  operator delete(v243);
                }

                v244 = (v240 - 72);
                v245 = *(v240 - 72);
                if (v245)
                {
                  v246 = *(v240 - 64);
                  v242 = *(v240 - 72);
                  if (v246 != v245)
                  {
                    do
                    {
                      v247 = v246 - 168;
                      v248 = *(v246 - 8);
                      if (v248 != -1)
                      {
                        (off_2670F08[v248])(v281, v246 - 168);
                      }

                      *(v246 - 8) = -1;
                      v246 -= 168;
                    }

                    while (v247 != v245);
                    v242 = *v244;
                  }

                  *(v240 - 64) = v245;
                  operator delete(v242);
                  a1 = v269;
                }

                v240 -= 72;
              }

              while (v244 != v239);
              v241 = v319;
            }

            *(&v319 + 1) = v239;
            operator delete(v241);
          }

          if (SHIBYTE(v313) < 0)
          {
            operator delete(v311);
          }

          v265 += 13;
          if (v265 == v263)
          {
            goto LABEL_8;
          }
        }

        v19 = v265;
        v267 = v260;
        v268 = *(a1 + 94);
        while (2)
        {
          v288 = 0;
          *v287 = 0u;
          v289 = 1;
          v291 = 0;
          v292 = 0;
          v290 = 0;
          v293[0] = 1;
          *&v293[4] = 0x8000000080000000;
          *&v293[12] = 0;
          v293[14] = 0;
          *v281 = 0;
          *&v281[16] = 0u;
          *&v282[16] = 0u;
          v285[0] = 0x7FFFFFFFuLL;
          *&v281[4] = 0x8000000080000000;
          *&v281[12] = 0x7FFFFFFF;
          *&v281[20] = 0x8000000080000000;
          *&v282[8] = xmmword_2266560;
          *v282 = 0xFFFFFFFFLL;
          *&v282[24] = -1;
          *__dst = 0u;
          memset(v284, 0, sizeof(v284));
          v285[1] = 0uLL;
          *v286 = 1;
          *&v286[4] = xmmword_22A7500;
          if (v19[4] == -1)
          {
            goto LABEL_213;
          }

          v270 = xmmword_2297BF0;
          LOWORD(v271) = 0;
          *(&v271 + 4) = 0x8000000080000000;
          WORD6(v271) = 0;
          *v272 = xmmword_22A7450;
          *&v272[16] = -COERCE_DOUBLE(0x8000000080000000);
          v273 = 0uLL;
          v274 = 0uLL;
          v275 = 0uLL;
          *&v272[24] = -1;
          v276 = 0x7FFFFFFF;
          v278 = 0;
          v279 = 0;
          v277 = 0;
          LOBYTE(v280) = 1;
          *(&v280 + 4) = 0x8000000080000000;
          HIDWORD(v280) = 0;
          v289 = 0;
          v21 = *sub_A9C5E0((a1[5] + 88), v19[4]);
          *v272 = v21;
          v22 = *(v19 + 1);
          *&v272[16] = v19[3];
          *&v272[8] = v22;
          *&v272[24] = *v19;
          v23 = *&v272[24];
          v24 = a1[3];
          v325 = *sub_A9C5E0((a1[4] + 88), v268);
          sub_A79708(&v326, v24, v21, v23, 0, 0);
          v333 = (v332 + 12 * *&v272[8]);
          if (v336[0] == 1)
          {
            *&v336[4] = *&v272[12];
          }

          if (v331)
          {
            v25 = *(v331 + 4 * ((v329 - v328) >> 4));
          }

          else
          {
            v25 = 0;
          }

          sub_AB3DEC(&v326, &v325, v25);
          _CF = v329 < v330 && v329 >= v328;
          v27 = (v329 - v328) >> 4;
          if (!_CF)
          {
            LODWORD(v27) = -1;
          }

          *&v272[20] = v27;
          v28 = a1[4];
          v29 = *&v272[24];
          v30 = sub_A57920((a1[3] + 4136), *v272);
          v31 = (v30 - *v30);
          if (*v31 >= 9u && (v32 = v31[4]) != 0)
          {
            v33 = (v30 + v32 + *(v30 + v32));
          }

          else
          {
            v33 = 0;
          }

          v34 = __ROR8__(*sub_A571D4(v33, v29), 32);
          v35 = *(v28 + 56) - 1;
          v36 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v34 ^ (v34 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v34 ^ (v34 >> 33))) >> 33));
          v37 = v36 ^ (v36 >> 33);
          v38 = *(v28 + 80);
          v40 = *(v28 + 64);
          v39 = *(v28 + 68);
          v41 = v37 & v35;
          v42 = (v38 + 12 * (v37 & v35));
          v44 = *v42;
          v43 = v42[1];
          if (v39 == v43 && v40 == v44)
          {
            goto LABEL_48;
          }

          if (*(v28 + 40))
          {
            v45 = -1;
            v60 = 1;
            do
            {
              if (*(v28 + 36) == v43 && *(v28 + 32) == v44)
              {
                if (v45 == -1)
                {
                  v45 = v41;
                }
              }

              else if (__PAIR64__(v43, v44) == v34)
              {
                goto LABEL_93;
              }

              v41 = (v41 + v60) & v35;
              v61 = (v38 + 12 * v41);
              v44 = *v61;
              v43 = v61[1];
              ++v60;
            }

            while (v39 != v43 || v40 != v44);
            if (v45 == -1)
            {
LABEL_48:
              v45 = v41;
            }

LABEL_49:
            if (!sub_A99094(v28, 1))
            {
              v64 = *(v28 + 40);
              v63 = *(v28 + 48);
              if ((v63 - v64) >= 0x1555555555555555)
              {
                goto LABEL_384;
              }

              v47 = *(v28 + 80);
              if (v64 && ((v65 = (v47 + 12 * v45), *(v28 + 36) == v65[1]) ? (v66 = *(v28 + 32) == *v65) : (v66 = 0), v66))
              {
                *(v28 + 40) = v64 - 1;
              }

              else
              {
                *(v28 + 48) = v63 + 1;
              }

              v71 = 3 * v45;
              goto LABEL_121;
            }

            v46 = *(v28 + 56) - 1;
            v47 = *(v28 + 80);
            v49 = *(v28 + 64);
            v48 = *(v28 + 68);
            v50 = v46 & v37;
            v51 = (v47 + 12 * (v46 & v37));
            v53 = *v51;
            v52 = v51[1];
            v54 = *(v28 + 40);
            if (v48 == v52 && v49 == v53)
            {
              goto LABEL_111;
            }

            if (v54)
            {
              v56 = -1;
              v57 = 1;
              do
              {
                if (*(v28 + 36) == v52 && *(v28 + 32) == v53)
                {
                  if (v56 == -1)
                  {
                    v56 = v50;
                  }
                }

                else if (__PAIR64__(v52, v53) == v34)
                {
                  goto LABEL_106;
                }

                v50 = (v50 + v57) & v46;
                v58 = (v47 + 12 * v50);
                v53 = *v58;
                v52 = v58[1];
                ++v57;
              }

              while (v48 != v52 || v49 != v53);
              if (v56 == -1)
              {
LABEL_111:
                v56 = v50;
              }

              v75 = *(v28 + 48);
              if ((v75 - v54) >= 0x1555555555555555)
              {
                goto LABEL_384;
              }

LABEL_113:
              if (v54 && ((v76 = (v47 + 12 * v56), *(v28 + 36) == v76[1]) ? (v77 = *(v28 + 32) == *v76) : (v77 = 0), v77))
              {
                *(v28 + 40) = v54 - 1;
              }

              else
              {
                *(v28 + 48) = v75 + 1;
              }

              v71 = 3 * v56;
LABEL_121:
              v78 = 4 * v71;
              v79 = v47 + v78;
              *v79 = v34;
              *(v79 + 8) = -1;
              v70 = *(v28 + 80) + v78;
              v268 = *(v70 + 8);
              if (v268 == -1)
              {
LABEL_122:
                v80 = *(v28 + 112);
                *(v28 + 112) = v80 + 1;
                *(v70 + 8) = v80;
                v82 = *(v28 + 96);
                v81 = *(v28 + 104);
                if (v82 >= v81)
                {
                  v84 = *(v28 + 88);
                  v85 = v82 - v84;
                  v86 = (v82 - v84) >> 3;
                  v87 = v86 + 1;
                  if ((v86 + 1) >> 61)
                  {
                    sub_1794();
                  }

                  v88 = v81 - v84;
                  if (v88 >> 2 > v87)
                  {
                    v87 = v88 >> 2;
                  }

                  if (v88 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v89 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v89 = v87;
                  }

                  if (v89)
                  {
                    if (!(v89 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v90 = (v82 - v84) >> 3;
                  v91 = (8 * v86);
                  v92 = (8 * v86 - 8 * v90);
                  *v91 = v34;
                  v83 = v91 + 1;
                  memcpy(v92, v84, v85);
                  *(v28 + 88) = v92;
                  *(v28 + 96) = v83;
                  *(v28 + 104) = 0;
                  if (v84)
                  {
                    operator delete(v84);
                  }
                }

                else
                {
                  *v82 = v34;
                  v83 = v82 + 8;
                }

                *(v28 + 96) = v83;
                v268 = *(v70 + 8);
                a1 = v269;
              }
            }

            else
            {
              v72 = 1;
              while (__PAIR64__(v52, v53) != v34)
              {
                v50 = (v50 + v72) & v46;
                v73 = (v47 + 12 * v50);
                v53 = *v73;
                v52 = v73[1];
                ++v72;
                if (v48 == v52 && v49 == v53)
                {
                  v54 = 0;
                  goto LABEL_111;
                }
              }

LABEL_106:
              if (v50 == -1)
              {
                v56 = -1;
                v75 = *(v28 + 48);
                if ((v75 - v54) >= 0x1555555555555555)
                {
LABEL_384:
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "insert overflow");
                }

                goto LABEL_113;
              }

              v70 = v47 + 12 * v50;
              v268 = *(v70 + 8);
              if (v268 == -1)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v67 = 1;
            while (__PAIR64__(v43, v44) != v34)
            {
              v41 = (v41 + v67) & v35;
              v68 = (v38 + 12 * v41);
              v44 = *v68;
              v43 = v68[1];
              ++v67;
              if (v39 == v43 && v40 == v44)
              {
                goto LABEL_48;
              }
            }

LABEL_93:
            if (v41 == -1)
            {
              v45 = -1;
              goto LABEL_49;
            }

            v70 = v38 + 12 * v41;
            v268 = *(v70 + 8);
            if (v268 == -1)
            {
              goto LABEL_122;
            }
          }

          v93 = *&v272[20];
          v94 = sub_A57920((a1[3] + 4136), *v272);
          v95 = (v94 - *v94);
          if (*v95 >= 9u && (v96 = v95[4]) != 0)
          {
            v97 = (v94 + v96 + *(v94 + v96));
          }

          else
          {
            v97 = 0;
          }

          DWORD1(v270) = 10 * *(sub_A571D4(v97, v93) + 8);
          v98 = a1[3];
          v99 = *v272;
          v100 = *&v272[20];
          v101 = *&v272[8];
          v102 = sub_A5706C((v98 + 4136), *v272);
          v103 = v102;
          v104 = &v102[-*v102];
          if (*v104 < 5u)
          {
            v105 = 0;
          }

          else
          {
            v105 = *(v104 + 2);
            if (v105)
            {
              v105 += &v102[*&v102[v105]];
            }
          }

          v106 = (v105 + 4 * v99 + 4 + *(v105 + 4 * v99 + 4));
          v107 = (v106 - *v106);
          if (*v107 >= 9u && (v108 = v107[4]) != 0)
          {
            v109 = (v106 + v108 + *(v106 + v108));
          }

          else
          {
            v109 = 0;
          }

          v110 = sub_A571D4(v109, v100);
          v111 = (v103 - *v103);
          if (*v111 < 0xBu)
          {
            v112 = 0;
            v113 = (v106 - *v106);
            if (*v113 >= 0x11u)
            {
              goto LABEL_152;
            }
          }

          else
          {
            v112 = v111[5];
            if (v112)
            {
              v112 = (v112 + v103 + *(v112 + v103));
            }

            v113 = (v106 - *v106);
            if (*v113 >= 0x11u)
            {
LABEL_152:
              v114 = v113[8];
              if (v113[8])
              {
                LODWORD(v114) = *(v106 + v114);
              }

LABEL_156:
              v115 = sub_A57320(v112, v114 + *(v106 + v113[2] + *(v106 + v113[2])) * v101 + *(v110 + 14));
              if (v115)
              {
                v116 = __ROR8__(*v115, 32);
                v117 = *(v115 + 8);
              }

              else
              {
                v117 = 0;
                v116 = 0xFFFFFFFFLL;
              }

              *&v326 = v116;
              DWORD2(v326) = v117;
              v118 = sub_A57920((v98 + 4136), v99);
              v119 = (v118 - *v118);
              if (*v119 >= 9u && (v120 = v119[4]) != 0)
              {
                v121 = (v118 + v120 + *(v118 + v120));
              }

              else
              {
                v121 = 0;
              }

              v122 = *(sub_A571D4(v121, v100) + 12);
              if (*&v272[12] == -1)
              {
                v123 = 0x7FFFFFFF;
              }

              else
              {
                v123 = *&v272[16];
              }

              *(&v270 + 1) = sub_A56700((v98 + 4184), &v326, v122, v123);
              LOWORD(v271) = v124;
              v125 = v269[3];
              v126 = *v272;
              v127 = *&v272[24];
              v128 = *&v272[8];
              v129 = sub_A5706C((v125 + 4136), *v272);
              v130 = v129;
              v131 = &v129[-*v129];
              if (*v131 < 5u)
              {
                v132 = 0;
              }

              else
              {
                v132 = *(v131 + 2);
                if (v132)
                {
                  v132 += &v129[*&v129[v132]];
                }
              }

              v133 = (v132 + 4 * v126 + 4 + *(v132 + 4 * v126 + 4));
              v134 = (v133 - *v133);
              if (*v134 >= 9u && (v135 = v134[4]) != 0)
              {
                v136 = (v133 + v135 + *(v133 + v135));
              }

              else
              {
                v136 = 0;
              }

              v137 = sub_A571D4(v136, v127);
              v138 = (v130 - *v130);
              if (*v138 < 0xBu)
              {
                v139 = 0;
                v140 = (v133 - *v133);
                if (*v140 >= 0x11u)
                {
                  goto LABEL_178;
                }
              }

              else
              {
                v139 = v138[5];
                if (v139)
                {
                  v139 = (v139 + v130 + *(v139 + v130));
                }

                v140 = (v133 - *v133);
                if (*v140 >= 0x11u)
                {
LABEL_178:
                  v141 = v140[8];
                  if (v140[8])
                  {
                    LODWORD(v141) = *(v133 + v141);
                  }

LABEL_182:
                  v142 = sub_A57320(v139, v141 + *(v133 + v140[2] + *(v133 + v140[2])) * v128 + *(v137 + 14));
                  if (v142)
                  {
                    v143 = __ROR8__(*v142, 32);
                    v144 = *(v142 + 8);
                  }

                  else
                  {
                    v144 = 0;
                    v143 = 0xFFFFFFFFLL;
                  }

                  *&v326 = v143;
                  DWORD2(v326) = v144;
                  v145 = sub_A57920((v125 + 4136), v126);
                  v146 = (v145 - *v145);
                  if (*v146 >= 9u && (v147 = v146[4]) != 0)
                  {
                    v148 = (v145 + v147 + *(v145 + v147));
                  }

                  else
                  {
                    v148 = 0;
                  }

                  v149 = *(sub_A571D4(v148, v127) + 12);
                  if (*&v272[12] == -1)
                  {
                    v150 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v150 = *&v272[16];
                  }

                  *(&v271 + 4) = sub_A56A5C((v125 + 4184), &v326, v149, v150);
                  WORD6(v271) = v151;
                  if (*&v286[16])
                  {
                    sub_A332F8(&v326, &v270);
                    a1 = v269;
                    sub_A34B68(v281, &v326);
                    if (v337)
                    {
                      v338 = v337;
                      operator delete(v337);
                    }

                    if (v335)
                    {
                      *v336 = v335;
                      operator delete(v335);
                    }

                    if (v333)
                    {
                      v334 = v333;
                      operator delete(v333);
                    }

                    v152 = v277;
                    if (v277)
                    {
                      goto LABEL_200;
                    }
                  }

                  else
                  {
                    *v281 = v270;
                    *&v281[16] = v271;
                    *v282 = *v272;
                    *&v282[12] = *&v272[12];
                    v166 = v273;
                    v167 = *(&v273 + 1) - v273;
                    v168 = *&v284[0];
                    v169 = __dst[0];
                    a1 = v269;
                    if (*&v284[0] - __dst[0] < *(&v273 + 1) - v273)
                    {
                      if (__dst[0])
                      {
                        __dst[1] = __dst[0];
                        operator delete(__dst[0]);
                        v168 = 0;
                        __dst[0] = 0;
                        __dst[1] = 0;
                        *&v284[0] = 0;
                      }

                      v170 = 0xEEEEEEEEEEEEEEEFLL * (v167 >> 2);
                      if (v170 <= 0x444444444444444)
                      {
                        v171 = 0xEEEEEEEEEEEEEEEFLL * (v168 >> 2);
                        if (2 * v171 > v170)
                        {
                          v170 = 2 * v171;
                        }

                        if (v171 >= 0x222222222222222)
                        {
                          v172 = 0x444444444444444;
                        }

                        else
                        {
                          v172 = v170;
                        }

                        if (v172 <= 0x444444444444444)
                        {
                          operator new();
                        }
                      }

                      sub_1794();
                    }

                    v215 = __dst[1];
                    v216 = __dst[1] - __dst[0];
                    if ((__dst[1] - __dst[0]) >= v167)
                    {
                      if (*(&v273 + 1) != v273)
                      {
                        v219 = __dst[0];
                        memmove(__dst[0], v273, v167 - 3);
                        v169 = v219;
                      }

                      v218 = &v169[v167];
                    }

                    else
                    {
                      if (__dst[1] != __dst[0])
                      {
                        memmove(__dst[0], v273, v216 - 3);
                        v215 = __dst[1];
                      }

                      v217 = *(&v166 + 1) - (v166 + v216);
                      if (v217)
                      {
                        memmove(v215, (v166 + v216), v217 - 3);
                      }

                      v218 = &v215[v217];
                    }

                    __dst[1] = v218;
                    sub_A349D4(v284 + 1, *(&v274 + 1), v275, 0xEEEEEEEEEEEEEEEFLL * ((v275 - *(&v274 + 1)) >> 2));
                    LODWORD(v285[0]) = v276;
                    sub_956400(v285 + 1, v277, v278, 0xCCCCCCCCCCCCCCCDLL * ((v278 - v277) >> 3));
                    *v286 = v280;
                    v152 = v277;
                    if (v277)
                    {
LABEL_200:
                      v278 = v152;
                      operator delete(v152);
                    }
                  }

                  if (*(&v274 + 1))
                  {
                    *&v275 = *(&v274 + 1);
                    operator delete(*(&v274 + 1));
                  }

                  if (v273)
                  {
                    *(&v273 + 1) = v273;
                    operator delete(v273);
                  }

                  if (v19[4] != -1)
                  {
                    v153 = v287[1];
                    if (v287[1] < v288)
                    {
                      goto LABEL_207;
                    }

LABEL_234:
                    v155 = sub_AA9AE0(v287, v281);
                    v287[1] = v155;
                    v156 = *(&v319 + 1);
                    v157 = v320;
                    if (*(&v319 + 1) >= v320)
                    {
LABEL_235:
                      v173 = 0x8E38E38E38E38E39 * ((v156 - v319) >> 3);
                      v174 = v173 + 1;
                      if (v173 + 1 > 0x38E38E38E38E38ELL)
                      {
                        sub_1794();
                      }

                      v175 = 0x8E38E38E38E38E39 * ((v157 - v319) >> 3);
                      if (2 * v175 > v174)
                      {
                        v174 = 2 * v175;
                      }

                      if (v175 >= 0x1C71C71C71C71C7)
                      {
                        v176 = 0x38E38E38E38E38ELL;
                      }

                      else
                      {
                        v176 = v174;
                      }

                      v329 = &v319;
                      if (v176)
                      {
                        if (v176 <= 0x38E38E38E38E38ELL)
                        {
                          operator new();
                        }

                        sub_1808();
                      }

                      v177 = (8 * ((v156 - v319) >> 3));
                      *&v326 = 0;
                      *(&v326 + 1) = v177;
                      v327 = 72 * v173;
                      v328 = 0;
                      v177[1] = 0;
                      v177[2] = 0;
                      *v177 = 0;
                      if (v155 != v287[0])
                      {
                        if (0xCF3CF3CF3CF3CF3DLL * ((v155 - v287[0]) >> 3) <= 0x186186186186186)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      v178 = v289;
                      *(&stru_20.cmd + 9 * v173) = 0;
                      LOBYTE(dword_18[18 * v173]) = v178;
                      *&stru_20.segname[72 * v173] = 0;
                      *&stru_20.segname[72 * v173 + 8] = 0;
                      if (v291 != v290)
                      {
                        if (0xCCCCCCCCCCCCCCCDLL * ((v291 - v290) >> 3) <= 0x666666666666666)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      *&stru_20.segname[72 * v173 + 16] = *v293;
                      *&stru_20.segname[72 * v173 + 23] = *&v293[7];
                      v165 = v327 + 72;
                      v327 += 72;
                      v179 = *(&v319 + 1);
                      v180 = v319;
                      v181 = *(&v326 + 1) + v319 - *(&v319 + 1);
                      if (v319 != *(&v319 + 1))
                      {
                        v182 = v319;
                        v183 = *(&v326 + 1) + v319 - *(&v319 + 1);
                        do
                        {
                          *v183 = 0;
                          *(v183 + 8) = 0;
                          *(v183 + 16) = 0;
                          *v183 = *v182;
                          *(v183 + 16) = *(v182 + 16);
                          *(v182 + 8) = 0;
                          *(v182 + 16) = 0;
                          *v182 = 0;
                          *(v183 + 24) = *(v182 + 24);
                          *(v183 + 40) = 0;
                          *(v183 + 48) = 0;
                          *(v183 + 32) = 0;
                          *(v183 + 32) = *(v182 + 32);
                          *(v183 + 48) = *(v182 + 48);
                          *(v182 + 32) = 0;
                          *(v182 + 40) = 0;
                          *(v182 + 48) = 0;
                          v184 = *(v182 + 56);
                          *(v183 + 63) = *(v182 + 63);
                          *(v183 + 56) = v184;
                          v182 += 72;
                          v183 += 72;
                        }

                        while (v182 != v179);
                        do
                        {
                          v186 = v180[4];
                          if (v186)
                          {
                            v180[5] = v186;
                            operator delete(v186);
                          }

                          v187 = *v180;
                          if (*v180)
                          {
                            v188 = v180[1];
                            v185 = *v180;
                            if (v188 != v187)
                            {
                              do
                              {
                                v189 = v188 - 168;
                                v190 = *(v188 - 2);
                                if (v190 != -1)
                                {
                                  (off_2670F08[v190])(&v270, v188 - 168);
                                }

                                *(v188 - 2) = -1;
                                v188 -= 168;
                              }

                              while (v189 != v187);
                              v185 = *v180;
                            }

                            v180[1] = v187;
                            operator delete(v185);
                          }

                          v180 += 9;
                        }

                        while (v180 != v179);
                      }

                      v191 = v319;
                      *&v319 = v181;
                      *(&v319 + 1) = v165;
                      *&v320 = v328;
                      if (v191)
                      {
                        operator delete(v191);
                      }

                      v163 = v269;
LABEL_268:
                      *(&v319 + 1) = v165;
                      v192 = v267 + *(v163 + 30) + *(v163 + 30) * v268 + 1;
                      v193 = v163;
                      v194 = v19[5];
                      v196 = v193[16];
                      v195 = v193[17];
                      v197 = (v195 - v196) >> 3;
                      if (v197 <= v192)
                      {
                        v203 = (v192 + 1);
                        v204 = v203 - v197;
                        if (v203 <= v197)
                        {
                          if (v203 >= v197)
                          {
                            goto LABEL_269;
                          }

                          v195 = &v196[8 * v203];
                          v198 = v269;
                          v269[17] = v195;
                        }

                        else
                        {
                          v198 = v269;
                          v205 = v269[18];
                          if (v204 > (v205 - v195) >> 3)
                          {
                            v206 = v205 - v196;
                            if (v206 >> 2 > v203)
                            {
                              v203 = v206 >> 2;
                            }

                            if (v206 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v207 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v207 = v203;
                            }

                            if (!(v207 >> 61))
                            {
                              operator new();
                            }

LABEL_386:
                            sub_1808();
                          }

                          bzero(v195, 8 * v204);
                          v195 += 8 * v204;
                          v269[17] = v195;
                          v196 = v269[16];
                        }
                      }

                      else
                      {
LABEL_269:
                        v198 = v269;
                      }

                      v199 = v198[19];
                      v200 = *&v196[8 * v192];
                      v201 = (v195 - v196) >> 3;
                      if (v201 <= v192)
                      {
                        v208 = (v192 + 1);
                        v209 = v208 - v201;
                        if (v208 <= v201)
                        {
                          if (v208 < v201)
                          {
                            v269[17] = &v196[8 * v208];
                          }

                          goto LABEL_271;
                        }

                        v210 = v269;
                        v211 = v269[18];
                        if (v209 <= (v211 - v195) >> 3)
                        {
                          bzero(v195, 8 * v209);
                          v269[17] = &v195[8 * v209];
                        }

                        else
                        {
                          __n = *&v196[8 * v192];
                          v212 = v195 - v196;
                          v213 = (v212 >> 3) + v209;
                          if (v213 >> 61)
                          {
                            sub_1794();
                          }

                          v214 = v211 - v196;
                          if (v214 >> 2 > v213)
                          {
                            v213 = v214 >> 2;
                          }

                          if (v214 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v213 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          if (v213)
                          {
                            if (!(v213 >> 61))
                            {
                              operator new();
                            }

                            goto LABEL_386;
                          }

                          v210 = v269;
                          v220 = (8 * (v212 >> 3));
                          v221 = 8 * v209;
                          bzero(v220, v221);
                          memcpy(0, v196, v212);
                          v269[16] = 0;
                          v269[17] = &v220[v221];
                          v269[18] = 0;
                          v200 = __n;
                          if (v196)
                          {
                            operator delete(v196);
                          }
                        }

                        v196 = v210[16];
                        v202 = v210[19];
                      }

                      else
                      {
LABEL_271:
                        v202 = v199;
                      }

                      v19 = (v199 + 52 * v200);
                      v222 = (v202 + 52 * *&v196[8 * v192 + 4]);
                      if (v19 == v222)
                      {
                        v19 = 0;
                      }

                      else
                      {
                        while (v19[6] != v194)
                        {
                          v19 += 13;
                          if (v19 == v222)
                          {
                            v19 = 0;
                            break;
                          }
                        }
                      }

                      a1 = v269;
                      if (*&v286[16] != -1)
                      {
                        (off_2670F08[*&v286[16]])(&v326, v281);
                      }

                      if (v290)
                      {
                        v291 = v290;
                        operator delete(v290);
                      }

                      v223 = v287[0];
                      if (v287[0])
                      {
                        v224 = v287[1];
                        v20 = v287[0];
                        if (v287[1] != v287[0])
                        {
                          do
                          {
                            v225 = v224 - 168;
                            v226 = *(v224 - 2);
                            if (v226 != -1)
                            {
                              (off_2670F08[v226])(v281, v224 - 168);
                            }

                            *(v224 - 2) = -1;
                            v224 -= 168;
                          }

                          while (v225 != v223);
                          v20 = v287[0];
                        }

                        v287[1] = v223;
                        operator delete(v20);
                      }

                      --v267;
                      if (*v19 == -1)
                      {
                        goto LABEL_328;
                      }

                      continue;
                    }

LABEL_210:
                    *v156 = 0;
                    *(v156 + 8) = 0;
                    *(v156 + 16) = 0;
                    if (v287[1] != v287[0])
                    {
                      if (0xCF3CF3CF3CF3CF3DLL * ((v287[1] - v287[0]) >> 3) <= 0x186186186186186)
                      {
                        operator new();
                      }

                      sub_1794();
                    }

                    v162 = v289;
                    *(v156 + 32) = 0;
                    *(v156 + 24) = v162;
                    *(v156 + 40) = 0;
                    *(v156 + 48) = 0;
                    v163 = v269;
                    if (v291 != v290)
                    {
                      if (0xCCCCCCCCCCCCCCCDLL * ((v291 - v290) >> 3) <= 0x666666666666666)
                      {
                        operator new();
                      }

                      sub_1794();
                    }

                    v164 = *v293;
                    *(v156 + 63) = *&v293[7];
                    *(v156 + 56) = v164;
                    v165 = v156 + 72;
                    goto LABEL_268;
                  }

LABEL_213:
                  v289 = 1;
                  v158 = v19[7];
                  v159 = v19[3];
                  v160 = *sub_A9C5E0((a1[4] + 88), v268);
                  v161 = *sub_A9C5E0((a1[4] + 88), *v19);
                  if (*&v286[16] != -1)
                  {
                    if (*&v286[16] == 1)
                    {
                      *v281 = 0;
                      *&v281[4] = v158;
                      *&v281[8] = v159;
                      *&v281[12] = v160;
                      *&v281[20] = v161;
                      v268 = *v19;
                      v153 = v287[1];
                      if (v287[1] >= v288)
                      {
                        goto LABEL_234;
                      }

LABEL_207:
                      *v153 = 0;
                      v153[40] = -1;
                      v154 = *&v286[16];
                      if (*&v286[16] != -1)
                      {
                        *&v326 = v153;
                        (off_2670F18[*&v286[16]])(&v326, v281);
                        v153[40] = v154;
                      }

                      v155 = v153 + 42;
                      v287[1] = v153 + 42;
                      v156 = *(&v319 + 1);
                      v157 = v320;
                      if (*(&v319 + 1) >= v320)
                      {
                        goto LABEL_235;
                      }

                      goto LABEL_210;
                    }

                    (off_2670F08[*&v286[16]])(&v326, v281);
                  }

                  *v281 = 0;
                  *&v281[4] = v158;
                  *&v281[12] = v160;
                  *&v281[20] = v161;
                  *&v281[8] = v159;
                  *&v286[16] = 1;
                  v268 = *v19;
                  v153 = v287[1];
                  if (v287[1] >= v288)
                  {
                    goto LABEL_234;
                  }

                  goto LABEL_207;
                }
              }

              LODWORD(v141) = 0;
              goto LABEL_182;
            }
          }

          break;
        }

        LODWORD(v114) = 0;
        goto LABEL_156;
      }

LABEL_8:
      if (++v260 == v259)
      {
        goto LABEL_365;
      }
    }

    v12 = a1[19];
    v13 = *v11;
LABEL_11:
    v14 = v12;
    goto LABEL_14;
  }

LABEL_365:
  if (v258 != a1 + 60)
  {
    v249 = *(a1 + 503);
    if (*(a3 + 55) < 0)
    {
      if (v249 >= 0)
      {
        v250 = a1 + 60;
      }

      else
      {
        v250 = a1[60];
      }

      if (v249 >= 0)
      {
        v251 = *(a1 + 503);
      }

      else
      {
        v251 = a1[61];
      }

      sub_13B38(v258, v250, v251);
    }

    else if ((*(a1 + 503) & 0x80) != 0)
    {
      sub_13A68(v258, a1[60], a1[61]);
    }

    else
    {
      *v258 = *(a1 + 30);
      v258[2] = a1[62];
    }
  }

  v252 = *(a1 + 73);
  *(a3 + 120) = *(a1 + 71);
  *(a3 + 136) = v252;
  v253 = *(a1 + 77);
  *(a3 + 152) = *(a1 + 75);
  *(a3 + 168) = v253;
  v254 = *(a1 + 65);
  *(a3 + 56) = *(a1 + 63);
  *(a3 + 72) = v254;
  result = *(a1 + 67);
  v256 = *(a1 + 69);
  *(a3 + 88) = result;
  *(a3 + 104) = v256;
  return result;
}

void sub_AAE9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  STACK[0x268] = v17 + 240;
  sub_A31F30(&STACK[0x268]);
  v19 = *(v17 + 216);
  if (v19)
  {
    *(v17 + 224) = v19;
    operator delete(v19);
    v20 = *a10;
    if (*a10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *a10;
    if (*a10)
    {
LABEL_3:
      *(v17 + 200) = v20;
      operator delete(v20);
      if ((*(v17 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  if ((*(v17 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    v21 = a17;
    if (!*a17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a11);
  v21 = a17;
  if (!*a17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_A95778(v21);
  operator delete(*v21);
  _Unwind_Resume(a1);
}

double sub_AAEF2C(uint64_t a1)
{
  *(a1 + 200) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 184) = 0;
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  if (v2 != v3)
  {
    v4 = *(a1 + 208);
    v5 = *(a1 + 232);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 240) = v2;
  v7 = *(a1 + 280);
  v8 = *(a1 + 288);
  if (v7 != v8)
  {
    v9 = *(a1 + 256);
    v10 = *(a1 + 280);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 288) = v7;
  v12 = *(a1 + 352);
  v13 = *(a1 + 360);
  if (v12 != v13)
  {
    v14 = *(a1 + 328);
    v15 = *(a1 + 304);
    v16 = *(a1 + 352);
    do
    {
      v17 = *v16++;
      *(v14 + ((v17 >> 3) & 0x1FFFFFF8)) &= ~(1 << v17);
      *(v15 + 4 * v17) = -1;
    }

    while (v16 != v13);
  }

  *(a1 + 360) = v12;
  sub_C4306C((a1 + 384));
  v25 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v26, &__p);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  *(a1 + 480) = v26;
  *(a1 + 496) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  v18 = v33;
  *(a1 + 568) = v32;
  *(a1 + 584) = v18;
  v19 = v35;
  *(a1 + 600) = v34;
  *(a1 + 616) = v19;
  v20 = v29;
  *(a1 + 504) = v28;
  *(a1 + 520) = v20;
  v21 = v31;
  *(a1 + 536) = v30;
  *(a1 + 552) = v21;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v22 = COERCE_DOUBLE(vadd_s32(vdup_n_s32(2 * *(a1 + 16)), 0x200000004));
  *(a1 + 120) = v22;
  return sub_C430C8((a1 + 384), *(a1 + 8), v22);
}

void sub_AAF0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_AAF100(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 200);
    *(a1 + 200) = v3 + 1;
    v4 = *(a1 + 32);
    *&v21 = 0x1FFFFFFFDLL;
    v5 = sub_A98E8C(v4, &v21);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = (v5 + 8);
      sub_2512DC(v4 + 88, &v21);
      v6 = *v8;
    }

    v20 = v6;
    sub_AA6A84((a1 + 128), 0);
    v21 = xmmword_229B660;
    v22 = -1;
    v23 = v3;
    v24 = v2;
    v25 = -1;
    v26 = 0x7FFFFFFF;
    v9 = *(a1 + 128);
    if (*(a1 + 136) == v9 || (v11 = *v9, v10 = *(*(a1 + 128) + 4), v10 == v11))
    {
      sub_AA71F8((a1 + 128), 0, &v21);
    }

    else
    {
      v14 = 0;
      v15 = *(a1 + 152);
      v16 = v15 + 52 * v10;
      v17 = v15 + 52 * v11;
      do
      {
        v18 = *(v17 + 28);
        if (v18 != 0x7FFFFFFF)
        {
          if (v18 >= v24)
          {
            goto LABEL_22;
          }

          *(v17 + 28) = 0x7FFFFFFF;
          v14 = 1;
        }

        v17 += 52;
      }

      while (v17 != v16);
      v19 = sub_AA71F8((a1 + 128), 0, &v21);
      *(v19 + 40) = -1;
      *(v19 + 48) = 0x7FFFFFFF;
LABEL_22:
      if (v14)
      {
        sub_AA75DC((a1 + 128), 0);
      }
    }

    v12 = *(a1 + 120);
    if (*(a1 + 20) == 1)
    {
      v13 = v12 + v12 * *(a1 + 376);
    }

    else
    {
      v13 = -1;
    }

    if (sub_AB1E58((a1 + 128), 0, v12 * (v6 + 1) + 2, v12 * (v6 + 1), v13, 0x80000000))
    {
      if (*(a1 + 216) <= v6)
      {
        sub_4D9168(a1 + 208, v6 + 1, 0);
      }

      if (((*(*(a1 + 208) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
      {
        sub_DD38(a1 + 232, &v20);
        *(*(a1 + 208) + ((v20 >> 3) & 0x1FFFFFF8)) |= 1 << v20;
      }
    }
  }
}

double sub_AAF354(uint64_t a1, int a2)
{
  sub_7E9A4(v40);
  v4 = *(a1 + 232);
  v38 = *(a1 + 240);
  if (v4 != v38)
  {
    while (1)
    {
      v39 = *v4;
      v5 = *sub_A9C5E0((*(a1 + 32) + 88), v39);
      if (HIDWORD(v5) == 1 && (v5 + 3) < 2)
      {
LABEL_12:
        v11 = 0;
        goto LABEL_17;
      }

      v7 = *(*(a1 + 24) + 4120);
      if (*(v7 + 17) == 1)
      {
        break;
      }

      v8 = sub_502FF8(v7 + 24, __ROR8__(v5, 32), 0, "stop");
      v12 = (v8 - *v8);
      if (*v12 >= 0x15u)
      {
        v10 = v12[10];
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v11 = -30;
LABEL_17:
      sub_AA6A84((a1 + 128), 0);
      sub_AB22AC((a1 + 128), a2 + 1 + *(a1 + 120) + *(a1 + 120) * v39, 0);
      v13 = *(a1 + 128);
      if (*(a1 + 136) != v13)
      {
        v14 = *(a1 + 152);
        v15 = *v13;
LABEL_19:
        v16 = v14;
        goto LABEL_22;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v14 = *(a1 + 152);
      v15 = *v13;
      if (*(a1 + 136) != v13)
      {
        goto LABEL_19;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v16 = *(a1 + 152);
LABEL_22:
      v17 = (v14 + 52 * v15);
      v18 = (v16 + 52 * v13[1]);
      if (v17 == v18)
      {
        goto LABEL_29;
      }

      v19 = v39;
      v20 = v18 - v17 - 52;
      if (v20 <= 0x33)
      {
        v21 = (v14 + 52 * v15);
        do
        {
LABEL_28:
          *v21 = v19;
          v27 = *(v21 + 7);
          *(v21 + 3) = v27;
          *(v21 + 4) = -1;
          *(v21 + 7) = v27 + v11;
          v21 += 52;
        }

        while (v21 != v18);
        goto LABEL_29;
      }

      v22 = v20 / 0x34 + 1;
      v21 = &v17[52 * (v22 & 0xFFFFFFFFFFFFFFELL)];
      v23 = (v17 + 80);
      v24 = v22 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v23 - 20) = v19;
        *(v23 - 7) = v19;
        v25 = *(v23 - 13);
        v26 = *v23;
        *(v23 - 17) = v25;
        *(v23 - 16) = -1;
        *(v23 - 4) = v26;
        *(v23 - 3) = -1;
        *(v23 - 13) = v25 + v11;
        *v23 = v26 + v11;
        v23 += 26;
        v24 -= 2;
      }

      while (v24);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_28;
      }

LABEL_29:
      v28 = v39;
      v29 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v30 = v29 + v29 * *(a1 + 376) + 1;
        v31 = *(a1 + 48);
        if (v31)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v30 = -1;
        v31 = *(a1 + 48);
        if (v31)
        {
LABEL_31:
          if (*v31 > v39)
          {
            v32 = 0;
            v33 = *(a1 + 124) + ~a2;
            v34 = v33;
            while (v32 <= v33)
            {
              v35 = *sub_A9C7DC(v31 + 2, v31[1] * v28 + v34);
              v32 += 2;
              v34 -= 2;
              if (v35 != 0x7FFFFFFF)
              {
                goto LABEL_39;
              }
            }
          }

          v35 = 0x7FFFFFFF;
          goto LABEL_39;
        }
      }

      v35 = 0x80000000;
LABEL_39:
      if (sub_AB1E58((a1 + 128), 0, a2 + 2 + v29 + v29 * v28, v29 + v29 * v28 + 1, v30, v35))
      {
        v36 = v39;
        if (*(a1 + 264) <= v39)
        {
          sub_4D9168(a1 + 256, v39 + 1, 0);
          v36 = v39;
        }

        if (((*(*(a1 + 256) + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
        {
          sub_DD38(a1 + 280, &v39);
          *(*(a1 + 256) + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
        }
      }

      if (++v4 == v38)
      {
        goto LABEL_44;
      }
    }

    v8 = sub_A74944(v7 + 24, v5, 0, "transfers at stop");
    v9 = (v8 - *v8);
    if (*v9 < 5u)
    {
      goto LABEL_12;
    }

    v10 = v9[2];
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = -*(v8 + v10);
    goto LABEL_17;
  }

LABEL_44:
  result = sub_7EA60(v40) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

void sub_AAF720(uint64_t a1, int a2)
{
  sub_7E9A4(v254);
  v4 = *(a1 + 232);
  v231 = *(a1 + 240);
  if (v4 != v231)
  {
    v239 = a2 + 1;
    v232 = a2 + 2;
    v237 = ~a2;
    do
    {
      v234 = v4;
      v247 = *v4;
      v5 = sub_A9C5E0((*(a1 + 32) + 88), v247);
      sub_A82C20(&v248, *(a1 + 24), *v5);
      v6 = v249;
      v7 = 16;
      if (v253)
      {
        v7 = 32;
      }

      v8 = v247;
      if (v249 < *(&v248 + v7))
      {
        while (1)
        {
          v12 = __ROR8__(*v6, 32);
          v13 = *(a1 + 32);
          v14 = *(v13 + 56) - 1;
          v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
          v16 = v15 ^ (v15 >> 33);
          v17 = *(v13 + 80);
          v19 = *(v13 + 64);
          v18 = *(v13 + 68);
          v20 = v16 & v14;
          v21 = (v17 + 12 * (v16 & v14));
          v23 = *v21;
          v22 = v21[1];
          if (v18 == v22 && v19 == v23)
          {
LABEL_33:
            v25 = v20;
            goto LABEL_34;
          }

          if (!*(v13 + 40))
          {
            break;
          }

          v25 = -1;
          v26 = 1;
          do
          {
            if (*(v13 + 36) == v22 && *(v13 + 32) == v23)
            {
              if (v25 == -1)
              {
                v25 = v20;
              }
            }

            else if (__PAIR64__(v22, v23) == v12)
            {
              if (v20 != -1)
              {
                goto LABEL_29;
              }

              goto LABEL_68;
            }

            v20 = (v20 + v26) & v14;
            v27 = (v17 + 12 * v20);
            v23 = *v27;
            v22 = v27[1];
            ++v26;
          }

          while (v18 != v22 || v19 != v23);
          if (v25 == -1)
          {
            goto LABEL_33;
          }

LABEL_34:
          if (!sub_A99094(*(a1 + 32), 1))
          {
            v50 = *(v13 + 40);
            v49 = *(v13 + 48);
            if ((v49 - v50) >= 0x1555555555555555)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }

            v51 = *(v13 + 80);
            if (v50 && ((v52 = (v51 + 12 * v25), *(v13 + 36) == v52[1]) ? (v53 = *(v13 + 32) == *v52) : (v53 = 0), v53))
            {
              *(v13 + 40) = v50 - 1;
            }

            else
            {
              *(v13 + 48) = v49 + 1;
            }

            v8 = v247;
            v64 = v51 + 12 * v25;
            *v64 = v12;
            *(v64 + 8) = -1;
            v29 = *(v13 + 80) + 12 * v25;
            v30 = *(v29 + 8);
            if (v30 != -1)
            {
              goto LABEL_91;
            }

LABEL_30:
            v31 = *(v13 + 112);
            *(v13 + 112) = v31 + 1;
            *(v29 + 8) = v31;
            v33 = *(v13 + 96);
            v32 = *(v13 + 104);
            if (v33 >= v32)
            {
              v58 = *(v13 + 88);
              v59 = v33 - v58;
              v60 = (v33 - v58) >> 3;
              v61 = v60 + 1;
              if ((v60 + 1) >> 61)
              {
                sub_1794();
              }

              v62 = v32 - v58;
              if (v62 >> 2 > v61)
              {
                v61 = v62 >> 2;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFF8)
              {
                v63 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v63 = v61;
              }

              if (v63)
              {
                if (!(v63 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v71 = (v33 - v58) >> 3;
              v72 = (8 * v60);
              v73 = (8 * v60 - 8 * v71);
              *v72 = v12;
              v34 = v72 + 1;
              memcpy(v73, v58, v59);
              *(v13 + 88) = v73;
              *(v13 + 96) = v34;
              *(v13 + 104) = 0;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              *v33 = v12;
              v34 = v33 + 8;
            }

            *(v13 + 96) = v34;
            v74 = *(v29 + 8);
            *(a1 + 576) = *(a1 + 576) + 1.0;
            v243 = v74;
            if (v247 != v74)
            {
              goto LABEL_105;
            }

LABEL_295:
            v9 = v250;
            v6 = (v249 + 12);
            v249 = v6;
            if (v6 == v250)
            {
              goto LABEL_311;
            }

LABEL_296:
            v10 = v253;
            goto LABEL_312;
          }

          v35 = *(v13 + 56) - 1;
          v36 = *(v13 + 80);
          v38 = *(v13 + 64);
          v37 = *(v13 + 68);
          v39 = v35 & v16;
          v40 = (v36 + 12 * (v35 & v16));
          v42 = *v40;
          v41 = v40[1];
          v43 = *(v13 + 40);
          if (v37 == v41 && v38 == v42)
          {
            v8 = v247;
LABEL_59:
            v45 = v39;
            v54 = *(v13 + 48);
            if (v54 - v43 >= 0x1555555555555555)
            {
              goto LABEL_341;
            }

            goto LABEL_83;
          }

          if (v43)
          {
            v45 = -1;
            v46 = 1;
            v8 = v247;
            do
            {
              if (*(v13 + 36) == v41 && *(v13 + 32) == v42)
              {
                if (v45 == -1)
                {
                  v45 = v39;
                }
              }

              else if (__PAIR64__(v41, v42) == v12)
              {
                goto LABEL_99;
              }

              v39 = (v39 + v46) & v35;
              v47 = (v36 + 12 * v39);
              v42 = *v47;
              v41 = v47[1];
              ++v46;
            }

            while (v37 != v41 || v38 != v42);
            if (v45 != -1)
            {
              v54 = *(v13 + 48);
              if (v54 - v43 >= 0x1555555555555555)
              {
                goto LABEL_341;
              }

              goto LABEL_83;
            }

            goto LABEL_59;
          }

          v68 = 1;
          v8 = v247;
          while (__PAIR64__(v41, v42) != v12)
          {
            v39 = (v39 + v68) & v35;
            v69 = (v36 + 12 * v39);
            v42 = *v69;
            v41 = v69[1];
            ++v68;
            if (v37 == v41 && v38 == v42)
            {
              v43 = 0;
              v45 = v39;
              v54 = *(v13 + 48);
              if (v54 >= 0x1555555555555555)
              {
                goto LABEL_341;
              }

              goto LABEL_83;
            }
          }

LABEL_99:
          if (v39 == -1)
          {
            v45 = -1;
            v54 = *(v13 + 48);
            if (v54 - v43 >= 0x1555555555555555)
            {
LABEL_341:
              v230 = __cxa_allocate_exception(0x10uLL);
              sub_195A000(v230, "insert overflow");
            }

LABEL_83:
            if (v43 && ((v65 = (v36 + 12 * v45), *(v13 + 36) == v65[1]) ? (v66 = *(v13 + 32) == *v65) : (v66 = 0), v66))
            {
              *(v13 + 40) = v43 - 1;
            }

            else
            {
              *(v13 + 48) = v54 + 1;
            }

            v67 = v36 + 12 * v45;
            *v67 = v12;
            *(v67 + 8) = -1;
            v29 = *(v13 + 80) + 12 * v45;
            v30 = *(v29 + 8);
            if (v30 != -1)
            {
              goto LABEL_91;
            }

            goto LABEL_30;
          }

          v29 = v36 + 12 * v39;
          v30 = *(v29 + 8);
          if (v30 == -1)
          {
            goto LABEL_30;
          }

LABEL_91:
          *(a1 + 576) = *(a1 + 576) + 1.0;
          v243 = v30;
          if (v8 == v30)
          {
            goto LABEL_295;
          }

LABEL_105:
          v75 = *(a1 + 128);
          v76 = *(a1 + 136);
          if (v76 != v75)
          {
            v77 = *(a1 + 152);
            v78 = *v75;
            goto LABEL_117;
          }

          v80 = 1 - ((v76 - v75) >> 3);
          v81 = *(a1 + 144);
          if (v80 > (v81 - v76) >> 3)
          {
            v82 = v81 - v75;
            v83 = v82 >> 2;
            if ((v82 >> 2) <= 1)
            {
              v83 = 1;
            }

            if (v82 >= 0x7FFFFFFFFFFFFFF8)
            {
              v84 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v84 = v83;
            }

            if (!(v84 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          bzero(*(a1 + 136), 8 * v80);
          v86 = &v76[2 * v80];
          *(a1 + 136) = v86;
          v75 = *(a1 + 128);
          v77 = *(a1 + 152);
          v78 = *v75;
          if (v75 == v86)
          {
            v79 = *(a1 + 144);
            if (v79 == v86)
            {
              v87 = 1;
              v88 = v79 - v75;
              if ((v88 >> 2) > 1)
              {
                v87 = v88 >> 2;
              }

              if (v88 >= 0x7FFFFFFFFFFFFFF8)
              {
                v89 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v89 = v87;
              }

              if (v89)
              {
                if (!(v89 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *&dword_0 = 0;
              *(a1 + 128) = 0;
              *(a1 + 136) = 8;
              *(a1 + 144) = 0;
              if (v75)
              {
                operator delete(v75);
              }
            }

            else
            {
              *v86 = 0;
              *(a1 + 136) = v86 + 2;
            }

            v75 = *(a1 + 128);
            v85 = *(a1 + 152);
          }

          else
          {
LABEL_117:
            v85 = v77;
          }

          sub_AA6CF0((a1 + 128), 0, (v77 + 52 * v78), (v85 + 52 * v75[1]));
          v90 = (v239 + *(a1 + 120) * (v247 + 1));
          v91 = *(a1 + 128);
          v92 = *(a1 + 136);
          if (v90 < (v92 - v91) >> 3)
          {
            v93 = v91[2 * v90];
            v94 = v91[2 * v90 + 1];
            v95 = v94 - v93;
            if (v94 != v93)
            {
              v96 = 0;
              v97 = 0;
              do
              {
                v98 = *(a1 + 128);
                if (v90 >= (*(a1 + 136) - v98) >> 3 || (v99 = v98[2 * v90], v98[2 * v90 + 1] - v99 <= v97))
                {
                  v223 = __cxa_allocate_exception(0x10uLL);
                  sub_195A2D8(v223, "key does not exist and cannot be added");
                }

                v100 = v99 + v97;
                v101 = *(a1 + 152);
                if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v101) >> 2) <= v100)
                {
                  v225 = __cxa_allocate_exception(0x10uLL);
                  sub_195A2D8(v225, "index out of range");
                }

                v102 = v101 + 52 * v100;
                v103 = *v102;
                v104 = *(v102 + 16);
                v105 = *(v102 + 32);
                v258 = *(v102 + 48);
                v257 = v105;
                v255 = v103;
                v256 = v104;
                v107 = *v98;
                v106 = v98[1];
                if (v106 != *v98)
                {
                  v108 = 0;
                  v110 = v101 + 52 * v106;
                  v111 = v101 + 52 * v107;
                  while (1)
                  {
                    v112 = *(v111 + 28);
                    if (v112 != 0x7FFFFFFF)
                    {
                      if (v112 >= SHIDWORD(v256))
                      {
                        goto LABEL_136;
                      }

                      *(v111 + 28) = 0x7FFFFFFF;
                      v108 = 1;
                    }

                    v111 += 52;
                    if (v111 == v110)
                    {
                      goto LABEL_142;
                    }
                  }
                }

                v108 = 0;
LABEL_142:
                v109 = sub_AA71F8((a1 + 128), 0, &v255);
                *(v109 + 40) = -1;
                *(v109 + 48) = 0x7FFFFFFF;
LABEL_136:
                v96 |= v108;
                ++v97;
              }

              while (v97 != v95);
              v91 = *(a1 + 128);
              v92 = *(a1 + 136);
              if (v96)
              {
                if (v92 != v91)
                {
                  v113 = *(a1 + 152);
                  v114 = *v91;
                  goto LABEL_151;
                }

                sub_30B70(a1 + 128, 1uLL);
                v91 = *(a1 + 128);
                v113 = *(a1 + 152);
                v114 = *v91;
                if (*(a1 + 136) == v91)
                {
                  sub_30B70(a1 + 128, 1uLL);
                  v91 = *(a1 + 128);
                  v115 = *(a1 + 152);
                }

                else
                {
LABEL_151:
                  v115 = v113;
                }

                v116 = (v113 + 52 * v114);
                v117 = (v115 + 52 * v91[1]);
                if (v116 == v117)
                {
                  v116 = v117;
                  if (*(a1 + 136) == v91)
                  {
                    goto LABEL_165;
                  }
                }

                else
                {
                  while (*(v116 + 7) != 0x7FFFFFFF)
                  {
                    v116 = (v116 + 52);
                    if (v116 == v117)
                    {
                      v116 = v117;
                      break;
                    }
                  }

                  if (v117 == v116 || (v118 = (v116 + 52), (v116 + 52) == v117))
                  {
                    if (*(a1 + 136) == v91)
                    {
                      goto LABEL_165;
                    }
                  }

                  else
                  {
                    do
                    {
                      if (*(v118 + 7) != 0x7FFFFFFF)
                      {
                        v119 = *v118;
                        v120 = v118[1];
                        v121 = v118[2];
                        *(v116 + 12) = *(v118 + 12);
                        v116[1] = v120;
                        v116[2] = v121;
                        *v116 = v119;
                        v116 = (v116 + 52);
                      }

                      v118 = (v118 + 52);
                    }

                    while (v118 != v117);
                    v91 = *(a1 + 128);
                    if (*(a1 + 136) == v91)
                    {
LABEL_165:
                      sub_30B70(a1 + 128, 1uLL);
                      v91 = *(a1 + 128);
                    }
                  }
                }

                sub_AA6CF0((a1 + 128), 0, v116, (*(a1 + 152) + 52 * v91[1]));
                v91 = *(a1 + 128);
                v92 = *(a1 + 136);
              }
            }
          }

          if (v92 != v91)
          {
            v122 = *(a1 + 152);
            v123 = *v91;
            goto LABEL_184;
          }

          v125 = 1 - ((v92 - v91) >> 3);
          v126 = *(a1 + 144);
          if (v125 > (v126 - v92) >> 3)
          {
            v127 = v126 - v91;
            v128 = v127 >> 2;
            if ((v127 >> 2) <= 1)
            {
              v128 = 1;
            }

            if (v127 >= 0x7FFFFFFFFFFFFFF8)
            {
              v129 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v129 = v128;
            }

            if (!(v129 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          bzero(v92, 8 * v125);
          v130 = &v92[2 * v125];
          *(a1 + 136) = v130;
          v91 = *(a1 + 128);
          v122 = *(a1 + 152);
          v123 = *v91;
          if (v91 == v130)
          {
            v124 = *(a1 + 144);
            if (v124 == v130)
            {
              v132 = 1;
              v133 = v124 - v91;
              if ((v133 >> 2) > 1)
              {
                v132 = v133 >> 2;
              }

              if (v133 >= 0x7FFFFFFFFFFFFFF8)
              {
                v134 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v134 = v132;
              }

              if (v134)
              {
                if (!(v134 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              *&dword_0 = 0;
              *(a1 + 128) = 0;
              *(a1 + 136) = 8;
              *(a1 + 144) = 0;
              if (v91)
              {
                operator delete(v91);
              }
            }

            else
            {
              *v130 = 0;
              *(a1 + 136) = v130 + 2;
            }

            v91 = *(a1 + 128);
            v131 = *(a1 + 152);
          }

          else
          {
LABEL_184:
            v131 = v122;
          }

          v135 = (v122 + 52 * v123);
          v136 = (v131 + 52 * v91[1]);
          if (v135 != v136)
          {
            v137 = v249;
            do
            {
              *v135 = v247;
              v138 = v135[7];
              v135[3] = v138;
              v135[4] = -1;
              v139 = *(v137 + 2);
              v140 = v139 / -10;
              v141 = v139 % 10;
              if (v139 < 0)
              {
                v142 = -5;
              }

              else
              {
                v142 = 5;
              }

              v135[7] = v140 + v138 + (((-103 * (v142 + v141)) >> 15) & 1) + ((-103 * (v142 + v141)) >> 10);
              v135 += 13;
            }

            while (v135 != v136);
          }

          v143 = *(a1 + 120);
          if (*(a1 + 20) != 1)
          {
            v246 = 0xFFFFFFFFLL;
            v144 = v243;
            v145 = *(a1 + 48);
            if (v145)
            {
              goto LABEL_204;
            }

LABEL_211:
            v149 = 0x80000000;
            v150 = *(a1 + 128);
            if (*(a1 + 136) == v150)
            {
              goto LABEL_295;
            }

            goto LABEL_216;
          }

          v246 = (v143 + v143 * *(a1 + 376) + 1);
          v144 = v243;
          v145 = *(a1 + 48);
          if (!v145)
          {
            goto LABEL_211;
          }

LABEL_204:
          if (*v145 <= v144)
          {
            v149 = 0x7FFFFFFF;
            v150 = *(a1 + 128);
            if (*(a1 + 136) == v150)
            {
              goto LABEL_295;
            }
          }

          else
          {
            v244 = *(a1 + 120);
            v146 = 0;
            v147 = *(a1 + 124) + v237;
            v148 = v147;
            do
            {
              if (v146 > v147)
              {
                v149 = 0x7FFFFFFF;
                v143 = v244;
                v150 = *(a1 + 128);
                if (*(a1 + 136) == v150)
                {
                  goto LABEL_295;
                }

                goto LABEL_216;
              }

              v149 = *sub_A9C7DC(v145 + 2, v145[1] * v144 + v148);
              v146 += 2;
              v148 -= 2;
            }

            while (v149 == 0x7FFFFFFF);
            v143 = v244;
            v150 = *(a1 + 128);
            if (*(a1 + 136) == v150)
            {
              goto LABEL_295;
            }
          }

LABEL_216:
          v151 = v150[1];
          v152 = v151 - *v150;
          if (v151 == *v150)
          {
            goto LABEL_295;
          }

          if (v149 == 0x7FFFFFFF)
          {
            v153 = 0;
            do
            {
              if (v150[1] - *v150 <= v153)
              {
                v226 = __cxa_allocate_exception(0x10uLL);
                sub_195A2D8(v226, "key does not exist and cannot be added");
              }

              if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - *(a1 + 152)) >> 2) <= (v153 + *v150))
              {
                v227 = __cxa_allocate_exception(0x10uLL);
                sub_195A2D8(v227, "index out of range");
              }

              ++v153;
            }

            while (v152 != v153);
            goto LABEL_295;
          }

          v238 = v144;
          v245 = 0;
          v154 = 0;
          v233 = v243 + 1;
          *v241 = (v232 + v143 * v233);
          *v242 = (v143 * v233 + 1);
          v240 = (v246 + 1);
          while (2)
          {
            v157 = *(a1 + 128);
            v158 = *(a1 + 136);
            v159 = v158 - v157;
            if (v158 == v157 || v157[1] - *v157 <= v154)
            {
              v224 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v224, "key does not exist and cannot be added");
            }

            v160 = *v157 + v154;
            v161 = *(a1 + 152);
            if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v161) >> 2) <= v160)
            {
              v228 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v228, "index out of range");
            }

            v162 = v161 + 52 * v160;
            v164 = *(v162 + 16);
            v163 = *(v162 + 32);
            v165 = *v162;
            v258 = *(v162 + 48);
            v257 = v163;
            v255 = v165;
            v256 = v164;
            if (SHIDWORD(v164) < v149)
            {
              goto LABEL_225;
            }

            v166 = v246;
            if (v246 != 0xFFFFFFFF)
            {
              v168 = v159 >> 3;
              if (v159 >> 3 <= v246)
              {
                v169 = v240 - v168;
                if (v240 > v168)
                {
                  v170 = *(a1 + 144);
                  if (v169 > (v170 - v158) >> 3)
                  {
                    v171 = v170 - v157;
                    v172 = v171 >> 2;
                    if (v171 >> 2 <= v240)
                    {
                      v172 = (v246 + 1);
                    }

                    if (v171 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v173 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v173 = v172;
                    }

                    if (!(v173 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  bzero(v158, 8 * v169);
                  v158 += 8 * v169;
                  *(a1 + 136) = v158;
                  v157 = *(a1 + 128);
                  v161 = *(a1 + 152);
                  v174 = v157[2 * v246];
                  v175 = (v158 - v157) >> 3;
                  if (v175 <= v246)
                  {
LABEL_249:
                    v177 = v240 - v175;
                    if (v240 <= v175)
                    {
                      if (v240 < v175)
                      {
                        *(a1 + 136) = &v157[2 * v240];
                      }

                      v176 = v161;
                    }

                    else
                    {
                      v178 = *(a1 + 144);
                      if (v177 <= (v178 - v158) >> 3)
                      {
                        bzero(v158, 8 * v177);
                        *(a1 + 136) = &v158[8 * v177];
                      }

                      else
                      {
                        v179 = (v158 - v157) >> 3;
                        v180 = v179 + v177;
                        if ((v179 + v177) >> 61)
                        {
                          sub_1794();
                        }

                        v181 = v178 - v157;
                        if (v181 >> 2 > v180)
                        {
                          v180 = v181 >> 2;
                        }

                        if (v181 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v180 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        if (v180)
                        {
                          if (!(v180 >> 61))
                          {
                            operator new();
                          }

                          sub_1808();
                        }

                        v235 = (v158 - v157) >> 3;
                        v236 = v158 - v157;
                        v182 = (8 * v179);
                        bzero(v182, 8 * v177);
                        v183 = &v182[8 * v177];
                        v184 = &v182[-8 * v235];
                        memcpy(v184, v157, v236);
                        *(a1 + 128) = v184;
                        *(a1 + 136) = v183;
                        *(a1 + 144) = 0;
                        if (v157)
                        {
                          operator delete(v157);
                        }
                      }

                      v157 = *(a1 + 128);
                      v176 = *(a1 + 152);
                    }

LABEL_266:
                    v185 = v161 + 52 * v174;
                    for (i = v176 + 52 * v157[2 * v246 + 1]; v185 != i; v185 += 52)
                    {
                      v187 = *(v185 + 28);
                      if (v187 != 0x7FFFFFFF && v187 >= SHIDWORD(v256))
                      {
                        v155 = 0;
                        v156 = 0;
                        goto LABEL_224;
                      }
                    }

                    v161 = v176;
                    v167 = *v242;
                    if (*v242 < ((*(a1 + 136) - v157) >> 3))
                    {
                      goto LABEL_274;
                    }

                    goto LABEL_275;
                  }

LABEL_247:
                  v176 = v161;
                  goto LABEL_266;
                }

                if (v240 < v168)
                {
                  v158 = &v157[2 * v240];
                  *(a1 + 136) = v158;
                }

                v166 = v246;
              }

              v174 = v157[2 * v166];
              v175 = (v158 - v157) >> 3;
              if (v175 <= v166)
              {
                goto LABEL_249;
              }

              goto LABEL_247;
            }

            v167 = *v242;
            if (*v242 < ((*(a1 + 136) - v157) >> 3))
            {
LABEL_274:
              v190 = v157[2 * v167];
              v189 = v157[2 * v167 + 1];
              if (v189 != v190)
              {
                v156 = 0;
                v197 = v161 + 52 * v189;
                v198 = v161 + 52 * v190;
                while (1)
                {
                  v199 = *(v198 + 28);
                  if (v199 != 0x7FFFFFFF)
                  {
                    if (v199 >= SHIDWORD(v256))
                    {
                      v155 = 0;
                      goto LABEL_224;
                    }

                    *(v198 + 28) = 0x7FFFFFFF;
                    v156 = 1;
                  }

                  v198 += 52;
                  if (v198 == v197)
                  {
                    goto LABEL_276;
                  }
                }
              }
            }

LABEL_275:
            v156 = 0;
LABEL_276:
            v191 = sub_AA71F8((a1 + 128), v167, &v255);
            *(v191 + 40) = -1;
            *(v191 + 48) = 0x7FFFFFFF;
            v192 = *(a1 + 128);
            if (*v241 < ((*(a1 + 136) - v192) >> 3))
            {
              v194 = *(v192 + 8 * *v241);
              v193 = *(v192 + 8 * *v241 + 4);
              if (v193 != v194)
              {
                v200 = *(a1 + 152);
                v201 = v200 + 52 * v193;
                v202 = v200 + 52 * v194;
                do
                {
                  if (*(v202 + 28) != 0x7FFFFFFF)
                  {
                    *(v202 + 28) = 0x7FFFFFFF;
                  }

                  v202 += 52;
                }

                while (v202 != v201);
              }
            }

            v195 = sub_AA71F8((a1 + 128), v241[0], &v255);
            *(v195 + 40) = -1;
            *(v195 + 48) = 0x7FFFFFFF;
            v196 = *(a1 + 200);
            *(a1 + 200) = v196 + 1;
            *(v195 + 24) = v196;
            *(v195 + 20) = DWORD2(v256);
            *(v195 + 40) = -1;
            *(v195 + 48) = 0x7FFFFFFF;
            v155 = 1;
LABEL_224:
            v245 |= v155 | (v156 << 8);
LABEL_225:
            if (++v154 != v152)
            {
              continue;
            }

            break;
          }

          if ((v245 & 0x100) != 0)
          {
            sub_AA75DC((a1 + 128), v241[0]);
            sub_AA75DC((a1 + 128), v242[0]);
          }

          v203 = v238;
          if ((v245 & 1) == 0)
          {
            goto LABEL_295;
          }

          if (*(a1 + 264) <= v238)
          {
            sub_4D9168(a1 + 256, v233, 0);
            v203 = v238;
          }

          v204 = v203 >> 6;
          v205 = 1 << v203;
          if ((*(*(a1 + 256) + 8 * (v203 >> 6)) & (1 << v203)) != 0)
          {
            goto LABEL_295;
          }

          v207 = *(a1 + 288);
          v206 = *(a1 + 296);
          if (v207 >= v206)
          {
            v209 = *(a1 + 280);
            v210 = v207 - v209;
            v211 = (v207 - v209) >> 2;
            v212 = v211 + 1;
            if ((v211 + 1) >> 62)
            {
              sub_1794();
            }

            v213 = v206 - v209;
            if (v213 >> 1 > v212)
            {
              v212 = v213 >> 1;
            }

            if (v213 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v214 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v214 = v212;
            }

            if (v214)
            {
              if (!(v214 >> 62))
              {
                operator new();
              }

              sub_1808();
            }

            v215 = (v207 - v209) >> 2;
            v216 = (4 * v211);
            v217 = (4 * v211 - 4 * v215);
            *v216 = v243;
            v208 = v216 + 1;
            memcpy(v217, v209, v210);
            *(a1 + 280) = v217;
            *(a1 + 288) = v208;
            *(a1 + 296) = 0;
            if (v209)
            {
              operator delete(v209);
            }
          }

          else
          {
            *v207 = v243;
            v208 = v207 + 4;
          }

          *(a1 + 288) = v208;
          *(*(a1 + 256) + 8 * v204) |= v205;
          v9 = v250;
          v6 = (v249 + 12);
          v249 = v6;
          if (v6 != v250)
          {
            goto LABEL_296;
          }

LABEL_311:
          v6 = v251;
          v249 = v251;
          v10 = 1;
          v253 = 1;
LABEL_312:
          v11 = v252;
          if (v10)
          {
            v218 = v252;
          }

          else
          {
            v218 = v9;
          }

          if (*(v248 + 16) == 1 && v6 < v218)
          {
            while (1)
            {
              v220 = __ROR8__(*v6, 32);
              if (HIDWORD(v220) == 1 && (v220 + 3) < 2)
              {
                break;
              }

              if (sub_2D5204(**(v248 + 4120)))
              {
                v6 = v249;
                v9 = v250;
                v10 = v253;
                break;
              }

              v9 = v250;
              v6 = (v249 + 12);
              v249 = v6;
              if (v6 == v250)
              {
                v6 = v251;
                v249 = v251;
                v10 = 1;
                v253 = 1;
                if (v251 >= v252)
                {
                  break;
                }
              }

              else
              {
                v10 = v253;
                v222 = 16;
                if (v253)
                {
                  v222 = 32;
                }

                if (v6 >= *(&v248 + v222))
                {
                  break;
                }
              }
            }

            v11 = v252;
          }

          v8 = v247;
          if (v10)
          {
            v9 = v11;
          }

          if (v6 >= v9)
          {
            goto LABEL_3;
          }
        }

        v55 = 1;
        while (__PAIR64__(v22, v23) != v12)
        {
          v20 = (v20 + v55) & v14;
          v56 = (v17 + 12 * v20);
          v23 = *v56;
          v22 = v56[1];
          ++v55;
          if (v18 == v22 && v19 == v23)
          {
            goto LABEL_33;
          }
        }

        v8 = v247;
        if (v20 != -1)
        {
LABEL_29:
          v29 = v17 + 12 * v20;
          v30 = *(v29 + 8);
          if (v30 == -1)
          {
            goto LABEL_30;
          }

          goto LABEL_91;
        }

LABEL_68:
        v25 = -1;
        goto LABEL_34;
      }

LABEL_3:
      v4 = v234 + 1;
    }

    while (v234 + 1 != v231);
  }

  *(a1 + 520) = sub_7EA60(v254) + *(a1 + 520);
}